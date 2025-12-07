void rawimg_free_chunks(void *a1)
{
  if (a1[270])
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = a1[268] + v2;
      free(*(v4 + 80));
      *(v4 + 80) = 0;
      *(v4 + 56) = 0;
      *(v4 + 104) &= ~4uLL;
      ++v3;
      v2 += 129;
    }

    while (v3 < a1[270]);
  }

  a1[266] &= ~8uLL;
}

uint64_t rawimg_digest_worker(void *a1)
{
  v2 = a1[1];
  memset(&v16, 0, sizeof(v16));
  v3 = malloc(0x10000uLL);
  if (!v3)
  {
    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_digest_worker", 551, 138, v14, "aaMalloc", *v16.count, *&v16.hash[2], *&v16.hash[6], *&v16.wbuf[2], *&v16.wbuf[6], *&v16.wbuf[10], *&v16.wbuf[14]);
LABEL_21:
    v13 = 0xFFFFFFFFLL;
    goto LABEL_22;
  }

  CC_SHA256_Init(&v16);
  v4 = *(v2 + 40);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = v4 - v5 >= 0x10000 ? 0x10000 : v4 - v5;
      v7 = *a1;
      if (!*(*a1 + 32))
      {
        break;
      }

      if (v4 == v5)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        v9 = *(v2 + 32) + v5;
        v10 = v3;
        v11 = v6;
        while (1)
        {
          v12 = (*(v7 + 32))(*v7, v10, v11, v9);
          if (v12 < 0)
          {
            break;
          }

          if (v12)
          {
            v10 += v12;
            v8 += v12;
            v9 += v12;
            v11 -= v12;
            if (v11)
            {
              continue;
            }
          }

          goto LABEL_16;
        }

        v8 = v12;
      }

LABEL_16:
      if (v6 != v8)
      {
        break;
      }

      CC_SHA256_Update(&v16, v3, v6);
      v5 += 0x10000;
      v4 = *(v2 + 40);
      if (v5 >= v4)
      {
        goto LABEL_18;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_digest_worker", 558, 138, 0, "aaByteStreamPReadExpected", *v16.count, *&v16.hash[2], *&v16.hash[6], *&v16.wbuf[2], *&v16.wbuf[6], *&v16.wbuf[10], *&v16.wbuf[14]);
    goto LABEL_21;
  }

LABEL_18:
  CC_SHA256_Final(v2, &v16);
  v13 = 0;
LABEL_22:
  free(v3);
  return v13;
}

uint64_t compare_digest_tasks(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  v4 = v2 >= v3;
  if (v2 == v3)
  {
    v4 = *(a1 + 32) >= *(a2 + 32);
  }

  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t rawimg_set_fork_types(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x21)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_set_fork_types", 772, 138, 0, "too many variants");
    v2 = 0;
    goto LABEL_32;
  }

  if (a2 != 1)
  {
    v2 = pc_array_init(16);
    if (v2)
    {
      if (!a2)
      {
LABEL_18:
        pc_array_sort(v2, compare_copy_fork_5);
        pc_array_aggregate(v2, compare_copy_fork_4, aggregate_copy_fork);
        v13 = *(v2 - 8);
        if (v13)
        {
          v14 = v2 + 1;
          v15 = v2 + 1;
          do
          {
            v16 = *v15;
            v15 += 16;
            if ((v16 & 1) == 0)
            {
              *(*(v14 - 1) + 104) |= 1uLL;
            }

            v14 = v15;
            --v13;
          }

          while (v13);
        }

        pc_array_aggregate(v2, compare_copy_fork_3, aggregate_copy_fork);
        v17 = *(v2 - 8);
        if (v17)
        {
          v18 = 0;
          v19 = 0;
          v20 = v2 + 1;
          v21 = v2 + 1;
          do
          {
            v22 = *v21;
            v21 += 4;
            if ((v22 ^ (-1 << a2)) == 0xFFFFFFFF)
            {
              *&v2[2 * v19++] = *(v20 - 1);
              v17 = *(v2 - 8);
            }

            ++v18;
            v20 = v21;
          }

          while (v18 < v17);
        }

        else
        {
          v19 = 0;
        }

        *(v2 - 8) = v19;
        if (a2)
        {
          v24 = 0;
          do
          {
            v25 = *(a1 + 8 * v24);
            if (*(v25 + 2160))
            {
              v26 = 0;
              v27 = 104;
              do
              {
                v28 = *(v25 + 2144);
                v32 = v28 + v27 - 104;
                v33 = 0;
                v29 = bsearch(&v32, v2, *(v2 - 8), 0x10uLL, compare_copy_fork_3);
                if (v29)
                {
                  v30 = 1;
                }

                else
                {
                  v30 = v24 == 0;
                }

                if (v30)
                {
                  if (v29)
                  {
                    v31 = 2;
                  }

                  else
                  {
                    v31 = 1;
                  }

                  *(v28 + v27) |= v31;
                }

                ++v26;
                v27 += 129;
              }

              while (v26 < *(v25 + 2160));
            }

            ++v24;
          }

          while (v24 != a2);
        }

        v7 = 0;
        goto LABEL_33;
      }

      v8 = 0;
      while (1)
      {
        v9 = *(a1 + 8 * v8);
        if ((*(v9 + 2128) & 0x10) == 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_set_fork_types", 799, 138, 0, "no digests found", v32, v33);
          goto LABEL_32;
        }

        if (*(v9 + 2160))
        {
          break;
        }

LABEL_17:
        if (++v8 == a2)
        {
          goto LABEL_18;
        }
      }

      v10 = 0;
      v11 = 104;
      while (1)
      {
        v12 = (*(v9 + 2144) + v11);
        v32 = (v12 - 104);
        v33 = (1 << v8);
        if ((*v12 & 3) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_set_fork_types", 810, 138, 0, "bad flags", v32, v33);
          goto LABEL_32;
        }

        v2 = pc_array_append(v2, &v32);
        if (!v2)
        {
          break;
        }

        ++v10;
        v11 += 129;
        if (v10 >= *(v9 + 2160))
        {
          goto LABEL_17;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_set_fork_types", 814, 138, 0, "pc_array_append", v32, v33);
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_set_fork_types", 792, 138, 0, "pc_array_init", v32, v33);
    }

LABEL_32:
    v7 = 0xFFFFFFFFLL;
LABEL_33:
    pc_array_free(v2);
    return v7;
  }

  v5 = *(*a1 + 2160);
  if (v5)
  {
    v6 = (*(*a1 + 2144) + 104);
    do
    {
      *v6 = *v6 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v6 = (v6 + 129);
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t compare_copy_fork_5(unint64_t **a1, unint64_t **a2)
{
  result = compare_copy_fork_3(a1, a2);
  if (!result)
  {
    v5 = *(a1 + 2);
    v6 = *(a2 + 2);
    result = (v5 - v6);
    if (v5 == v6)
    {
      if ((*a1)[14] < (*a2)[14])
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t compare_copy_fork_4(uint64_t a1, uint64_t a2)
{
  result = compare_copy_fork_3(a1, a2);
  if (!result)
  {
    return (*(a1 + 8) - *(a2 + 8));
  }

  return result;
}

uint64_t compare_copy_fork_3(unint64_t **a1, unint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = bswap64(**a1);
  v5 = bswap64(**a2);
  if (v4 == v5 && (v4 = bswap64(v2[1]), v5 = bswap64(v3[1]), v4 == v5) && (v4 = bswap64(v2[2]), v5 = bswap64(v3[2]), v4 == v5) && (v4 = bswap64(v2[3]), v5 = bswap64(v3[3]), v4 == v5))
  {
    v7 = v2[12] - v3[12];
    if (v7)
    {
      if (v7 < 0)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return *(v2 + 128) - *(v3 + 128);
    }
  }

  else if (v4 < v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t rawimg_save_to_stream(void *a1, uint64_t a2, int a3)
{
  v46 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 2128);
  if ((v3 & 0x10) != 0)
  {
    if ((v3 & 8) != 0)
    {
      v7 = *(a2 + 2104);
      v42[0] = *(a2 + 2088);
      v42[1] = v7;
      v8 = 24;
      if (!a3)
      {
        v8 = 16;
      }

      v43 = *(a2 + 2120);
      v44 = v8;
      v45 = *(a2 + 2152);
      if (a1[3])
      {
        v9 = 0;
        v10 = v42;
        v11 = 64;
        while (1)
        {
          v12 = (a1[3])(*a1, v10, v11);
          if (v12 < 1)
          {
            break;
          }

          v10 = (v10 + v12);
          v9 += v12;
          v11 -= v12;
          if (!v11)
          {
            if (v9 != 64)
            {
              break;
            }

            if (!a1[3])
            {
              goto LABEL_57;
            }

            v13 = 16 * v45;
            if (16 * v45)
            {
              v14 = 0;
              v15 = *(a2 + 2136);
              v16 = 16 * v45;
              while (1)
              {
                v17 = (a1[3])(*a1, v15, v16);
                if (v17 < 1)
                {
                  break;
                }

                v15 += v17;
                v14 += v17;
                v16 -= v17;
                if (!v16)
                {
                  goto LABEL_21;
                }
              }

              v14 = v17;
LABEL_21:
              if (v13 != v14)
              {
LABEL_57:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", 914, 138, 0, "aaByteStreamWriteExpected", *&v40);
                return 0xFFFFFFFFLL;
              }
            }

            if (!*(&v45 + 1))
            {
              return 0;
            }

            v19 = 0;
            v20 = 0uLL;
LABEL_24:
            v21 = *(a2 + 2144) + 129 * v19;
            *(v41 + 9) = v20;
            v40 = v20;
            v41[0] = v20;
            v40 = *(v21 + 88);
            v22 = *(v21 + 104);
            v41[0] = v22;
            *&v41[1] = *(v21 + 120);
            BYTE8(v41[1]) = *(v21 + 128);
            if ((v22 & 1) == 0)
            {
              *&v41[0] = v22 & 0xFFFFFFFFFFFFFFFALL;
            }

            if (a1[3])
            {
              v23 = 0;
              v24 = &v40;
              v25 = 41;
              while (1)
              {
                v26 = (a1[3])(*a1, v24, v25);
                if (v26 < 1)
                {
                  break;
                }

                v24 = (v24 + v26);
                v23 += v26;
                v25 -= v26;
                if (!v25)
                {
                  if (v23 != 41)
                  {
                    break;
                  }

                  v20 = 0uLL;
                  if (a3 && (v41[0] & 1) != 0)
                  {
                    if (!a1[3])
                    {
                      goto LABEL_61;
                    }

                    v27 = 12 * *(v21 + 56);
                    if (v27)
                    {
                      v28 = 0;
                      v29 = *(v21 + 80);
                      v30 = 12 * *(v21 + 56);
                      while (1)
                      {
                        v31 = (a1[3])(*a1, v29, v30, v20);
                        if (v31 < 1)
                        {
                          break;
                        }

                        v29 += v31;
                        v28 += v31;
                        v30 -= v31;
                        if (!v30)
                        {
                          goto LABEL_40;
                        }
                      }

                      v28 = v31;
LABEL_40:
                      v20 = 0uLL;
                      if (v27 != v28)
                      {
LABEL_61:
                        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", 946, 138, 0, "aaByteStreamWriteExpected", *&v40);
                        return 0xFFFFFFFFLL;
                      }
                    }

                    if ((v41[0] & 4) != 0)
                    {
                      v32 = *(v21 + 64);
                      if (v32 && *(v21 + 72))
                      {
                        if (a1[3])
                        {
                          v33 = 0;
                          v34 = 264;
                          while (1)
                          {
                            v35 = (a1[3])(*a1, v32, v34, v20);
                            if (v35 < 1)
                            {
                              break;
                            }

                            v32 += v35;
                            v33 += v35;
                            v34 -= v35;
                            if (!v34)
                            {
                              if (v33 != 264)
                              {
                                break;
                              }

                              if (a1[3])
                              {
                                v36 = 0;
                                v37 = *(v21 + 72);
                                v38 = 50;
                                while (1)
                                {
                                  v39 = (a1[3])(*a1, v37, v38);
                                  v20 = 0uLL;
                                  if (v39 < 1)
                                  {
                                    break;
                                  }

                                  v37 += v39;
                                  v36 += v39;
                                  v38 -= v39;
                                  if (!v38)
                                  {
                                    if (v36 == 50)
                                    {
                                      goto LABEL_42;
                                    }

                                    break;
                                  }
                                }
                              }

                              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", 958, 138, 0, "aaByteStreamWriteExpected", *&v40);
                              return 0xFFFFFFFFLL;
                            }
                          }
                        }

                        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", 956, 138, 0, "aaByteStreamWriteExpected", *&v40);
                      }

                      else
                      {
                        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", 952, 138, 0, "Fork missing header/footer", *&v40);
                      }

                      return 0xFFFFFFFFLL;
                    }
                  }

LABEL_42:
                  result = 0;
                  if (++v19 < *(&v45 + 1))
                  {
                    goto LABEL_24;
                  }

                  return result;
                }
              }
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", 938, 138, 0, "aaByteStreamWriteExpected", *&v40);
            return 0xFFFFFFFFLL;
          }
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", 909, 138, 0, "aaByteStreamWriteExpected", *&v40);
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", 898, 138, 0, "no chunk info", *&v40);
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", 897, 138, 0, "no digest info", *&v40);
  }

  return 0xFFFFFFFFLL;
}

char *rawimg_create_with_stream(void *a1, int a2)
{
  v55 = *MEMORY[0x29EDCA608];
  v4 = calloc(1uLL, 0x878uLL);
  v5 = v4;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  if (!v4)
  {
    v22 = *__error();
    v20 = "aaCalloc";
    v21 = 977;
    goto LABEL_20;
  }

  if (!a1[2])
  {
    goto LABEL_17;
  }

  v6 = 0;
  v7 = v4 + 2120;
  v8 = &v51;
  v9 = 64;
  do
  {
    v10 = (a1[2])(*a1, v8, v9);
    if (v10 < 0)
    {
      goto LABEL_17;
    }

    if (!v10)
    {
      break;
    }

    v8 = (v8 + v10);
    v6 += v10;
    v9 -= v10;
  }

  while (v9);
  if (v6 == 64)
  {
    v11 = v52;
    *(v5 + 2088) = v51;
    *(v5 + 2104) = v11;
    v12 = v54;
    *v7 = v53;
    *(v5 + 2152) = v12;
    *(v5 + 267) = pc_array_init(16, v12);
    v13 = pc_array_init(129, *(v5 + 270));
    *(v5 + 268) = v13;
    v14 = *(v5 + 267);
    if (v14 && v13)
    {
      v15 = *(v5 + 269);
      *(v14 - 64) = v15;
      *(v13 - 8) = *(v5 + 270);
      if (!a1[2])
      {
        goto LABEL_63;
      }

      v16 = 16 * v15;
      if (!(16 * v15))
      {
        goto LABEL_25;
      }

      v17 = 0;
      v18 = 16 * v15;
      while (1)
      {
        v19 = (a1[2])(*a1, v14, v18);
        if (v19 < 0)
        {
          break;
        }

        if (v19)
        {
          v14 += v19;
          v17 += v19;
          v18 -= v19;
          if (v18)
          {
            continue;
          }
        }

        goto LABEL_24;
      }

      v17 = v19;
LABEL_24:
      if (v16 == v17)
      {
LABEL_25:
        if (!*(&v54 + 1))
        {
LABEL_61:
          if ((rawimg_verify(v5) & 0x80000000) == 0)
          {
            return v5;
          }

          v20 = "rawimg_verify";
          v21 = 1050;
          goto LABEL_18;
        }

        v24 = 0;
        v25 = 0uLL;
        while (2)
        {
          v26 = *(v5 + 268);
          *&v50[9] = v25;
          v49 = v25;
          *v50 = v25;
          if (a1[2])
          {
            v27 = 0;
            v28 = v26 + 129 * v24;
            v29 = &v49;
            v30 = 41;
            do
            {
              v31 = (a1[2])(*a1, v29, v30);
              if (v31 < 0)
              {
                goto LABEL_64;
              }

              if (!v31)
              {
                break;
              }

              v29 = (v29 + v31);
              v27 += v31;
              v30 -= v31;
            }

            while (v30);
            if (v27 != 41)
            {
              break;
            }

            *v28 = 0u;
            *(v28 + 16) = 0u;
            *(v28 + 96) = 0u;
            *(v28 + 112) = 0u;
            *(v28 + 64) = 0u;
            *(v28 + 80) = 0u;
            *(v28 + 32) = 0u;
            *(v28 + 48) = 0u;
            v32 = v49;
            *(v28 + 88) = v49;
            v33 = v50[0];
            *(v28 + 104) = *v50;
            *(v28 + 120) = *&v50[16];
            *(v28 + 128) = v50[24];
            if (a2 && (v33 & 1) != 0)
            {
              v34 = (v32 + 0xFFFF) >> 16;
              *(v28 + 56) = v34;
              if ((v32 + 0xFFFF) >= 0x2AAAAAAAB0000)
              {
                *__error() = 12;
                *(v28 + 80) = 0;
              }

              else
              {
                v35 = calloc(v34, 0xCuLL);
                *(v28 + 80) = v35;
                if (v35)
                {
                  if (!a1[2])
                  {
                    goto LABEL_67;
                  }

                  v36 = 12 * *(v28 + 56);
                  if (v36)
                  {
                    v37 = v35;
                    v38 = 0;
                    v39 = 12 * *(v28 + 56);
                    while (1)
                    {
                      v40 = (a1[2])(*a1, v37, v39);
                      if (v40 < 0)
                      {
                        break;
                      }

                      if (v40)
                      {
                        v37 += v40;
                        v38 += v40;
                        v39 -= v40;
                        if (v39)
                        {
                          continue;
                        }
                      }

                      goto LABEL_45;
                    }

                    v38 = v40;
LABEL_45:
                    if (v36 != v38)
                    {
LABEL_67:
                      v20 = "aaByteStreamReadExpected";
                      v21 = 1032;
                      goto LABEL_18;
                    }
                  }

                  if ((*(v28 + 104) & 4) != 0)
                  {
                    if ((rawimg_allocate_header_and_footer(v28) & 0x80000000) != 0)
                    {
                      v20 = "Can't allocate header/footer";
                      v21 = 1038;
                    }

                    else
                    {
                      if (a1[2])
                      {
                        v41 = 0;
                        v42 = *(v28 + 64);
                        v43 = 264;
                        while (1)
                        {
                          v44 = (a1[2])(*a1, v42, v43);
                          if (v44 < 0)
                          {
                            break;
                          }

                          if (v44)
                          {
                            v42 += v44;
                            v41 += v44;
                            v43 -= v44;
                            if (v43)
                            {
                              continue;
                            }
                          }

                          if (v41 != 264)
                          {
                            break;
                          }

                          if (a1[2])
                          {
                            v45 = 0;
                            v46 = *(v28 + 72);
                            v47 = 50;
                            while (1)
                            {
                              v48 = (a1[2])(*a1, v46, v47);
                              if (v48 < 0)
                              {
                                break;
                              }

                              if (v48)
                              {
                                v46 += v48;
                                v45 += v48;
                                v47 -= v48;
                                if (v47)
                                {
                                  continue;
                                }
                              }

                              if (v45 != 50)
                              {
                                break;
                              }

                              goto LABEL_60;
                            }
                          }

                          v20 = "aaByteStreamReadExpected";
                          v21 = 1044;
                          goto LABEL_18;
                        }
                      }

                      v20 = "aaByteStreamReadExpected";
                      v21 = 1042;
                    }

                    goto LABEL_18;
                  }

                  goto LABEL_60;
                }
              }

              v22 = *__error();
              v20 = "aaCalloc";
              v21 = 1027;
              goto LABEL_20;
            }

LABEL_60:
            ++v24;
            v25 = 0uLL;
            if (v24 < *(&v54 + 1))
            {
              continue;
            }

            goto LABEL_61;
          }

          break;
        }

LABEL_64:
        v20 = "aaByteStreamReadExpected";
        v21 = 1010;
      }

      else
      {
LABEL_63:
        v20 = "aaByteStreamReadExpected";
        v21 = 1000;
      }
    }

    else
    {
      v20 = "pc_array_init";
      v21 = 993;
    }
  }

  else
  {
LABEL_17:
    v20 = "aaByteStreamReadExpected";
    v21 = 981;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_create_with_stream", v21, 138, v22, v20, v49, *v50, *&v50[8], *&v50[24]);
  rawimg_destroy(v5);
  return 0;
}

uint64_t rawimg_allocate_header_and_footer(uint64_t a1)
{
  if ((*(a1 + 64) || (v2 = malloc(0x108uLL), (*(a1 + 64) = v2) != 0)) && (*(a1 + 72) || (v3 = malloc(0x32uLL), (*(a1 + 72) = v3) != 0)))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t compare_forks_by_extent(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v3 = *(a2 + 112);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t aggregate_identical_forks(const void *a1, const void *a2)
{
  if (!memcmp(a1, a2, 0x81uLL))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t compare_forks_by_position(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 2136) + 16 * *(a2 + 112)) < *(*(a1 + 2136) + 16 * *(a3 + 112)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t BXPatchFile(const char *a1, const char *a2, void *a3, unint64_t a4, uint64_t a5, _DWORD *a6, int a7)
{
  v42 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext();
  v34 = 0;
  v35 = 0;
  if (a6)
  {
    v13 = *a6 != 0;
    v14 = a6[1] != 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  memset(&v37, 0, sizeof(v37));
  memset(&v36, 0, sizeof(v36));
  if (a4 <= 7)
  {
    v15 = "Invalid patch";
    v16 = 25;
LABEL_6:
    v17 = 0;
LABEL_17:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatchFile.c", "BXPatchFile", v16, 48, v17, v15, v33);
    v21 = 0;
LABEL_18:
    v22 = 0;
    goto LABEL_19;
  }

  if (*a3 == 0x3034464649445342 || *a3 == 0x3034464649445842 || *a3 == 0x3134464649445842)
  {
    v18 = 0;
    v19 = a3[3];
    if (v19 >= 0)
    {
      v20 = a3[3];
    }

    else
    {
      v20 = 0x8000000000000000 - v19;
    }
  }

  else
  {
    if (*a3 != 0x3035464649445842)
    {
      v15 = "Unsupported patch format";
      v16 = 36;
      goto LABEL_6;
    }

    v20 = a3[2];
    v18 = 1;
  }

  if (lstat(a1, &v37))
  {
    v17 = *__error();
    v33 = a1;
    v15 = "%s";
    v16 = 39;
    goto LABEL_17;
  }

  v39.tv_sec = v37.st_atimespec.tv_sec;
  v39.tv_usec = 0;
  tv_sec = v37.st_mtimespec.tv_sec;
  v41 = 0;
  if (loadFileContents(a1, &v35, &v34, 0))
  {
    v33 = a1;
    v15 = "opening input file: %s";
    v16 = 53;
    goto LABEL_6;
  }

  if (!strcmp(a1, a2))
  {
    unlink(a1);
  }

  bzero(v38, 0x400uLL);
  v25 = strlen(a2);
  __memcpy_chk();
  makePath(v38, v25);
  if (v20)
  {
    if (statIsCompressed(v37.st_flags) != 0 || v14)
    {
      v26 = 4;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  if (v13)
  {
    v27 = v26 | 0x2B;
  }

  else
  {
    v27 = v26;
  }

  v21 = OArchiveFileStreamCreate(a2, v20, v27, -1, 0);
  if (!v21)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatchFile.c", "BXPatchFile", 81, 48, 0, "OArchiveFileStreamCreate: %s");
    goto LABEL_18;
  }

  if (v18)
  {
    if (BXPatch5(v35, v34, a3, a4, OArchiveFileStreamWrite, v21, a7))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatchFile.c", "BXPatchFile", 91, 48, 0, "Patch application");
      goto LABEL_18;
    }
  }

  else if (BXPatch4(v35, v34, a3, a4, OArchiveFileStreamWrite, v21))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatchFile.c", "BXPatchFile", 87, 48, 0, "Patch application");
    goto LABEL_18;
  }

  OArchiveFileStreamDestroy(v21);
  if (lstat(a2, &v36))
  {
    v17 = *__error();
    v33 = a2;
    v15 = "%s";
    v16 = 101;
    goto LABEL_17;
  }

  if (v36.st_uid == v37.st_uid)
  {
    st_gid = v37.st_gid;
    if (v36.st_gid == v37.st_gid)
    {
      goto LABEL_53;
    }
  }

  else
  {
    st_gid = v37.st_gid;
  }

  if (!chown(a2, v37.st_uid, st_gid))
  {
LABEL_53:
    v22 = 1;
    goto LABEL_54;
  }

  v29 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatchFile.c", "BXPatchFile", 106, 48, *v29, "%s", a2);
  v22 = 0;
LABEL_54:
  if (v36.st_mode != v37.st_mode && chmod(a2, v37.st_mode & 0xFFF))
  {
    v30 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatchFile.c", "BXPatchFile", 110, 48, *v30, "%s", a2);
    v22 = 0;
  }

  v31 = v37.st_flags & 0xFFFFFFDF | (32 * ((v36.st_flags >> 5) & 1));
  if (v36.st_flags != v31 && chflags(a2, v31))
  {
    v32 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatchFile.c", "BXPatchFile", 117, 48, *v32, "%s", a2);
    v22 = 0;
  }

  if (utimes(a2, &v39))
  {
    v17 = *__error();
    v33 = a2;
    v15 = "%s";
    v16 = 120;
    goto LABEL_17;
  }

  v21 = 0;
LABEL_19:
  OArchiveFileStreamDestroy(v21);
  free(v35);
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (v22)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  if (result >= 0)
  {
    return v24;
  }

  else
  {
    return result;
  }
}

uint64_t BXPatch4(const void *a1, int64_t a2, uint64_t a3, unint64_t a4, void **a5, void **a6)
{
  v72 = *MEMORY[0x29EDCA608];
  if (a4 <= 0x1F)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", 129, 51, 0, "Invalid patch length");
    return 0xFFFFFFFFLL;
  }

  if (*a3 != 0x3034464649445342 && *a3 != 0x3034464649445842 && *a3 != 0x3134464649445842)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", 130, 51, 0, "Invalid patch header");
    return 0xFFFFFFFFLL;
  }

  if (*a3 == 0x3134464649445842)
  {
    v11 = 20;
  }

  else
  {
    v11 = 0;
  }

  v12 = vbslq_s8(vcltzq_s64(*(a3 + 8)), vsubq_s64(vnegq_f64(0), *(a3 + 8)), *(a3 + 8));
  v13 = vaddvq_s64(v12);
  if (v13 + v11 + 32 > a4)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", 144, 51, 0, "Invalid patch header contents");
    return 0xFFFFFFFFLL;
  }

  v41 = v12;
  v15 = (a3 + 32);
  if (*a3 == 0x3134464649445842)
  {
    v16 = -20;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a3 + 24);
  if (v17 < 0)
  {
    v17 = 0x8000000000000000 - v17;
  }

  v42 = v17;
  if (*a3 == 0x3134464649445842)
  {
    memset(&c, 0, sizeof(c));
    CC_SHA1_Deprecated_Init(&c);
    CC_SHA1_Deprecated_Update(&c, a1, a2);
    CC_SHA1_Deprecated_Final(md, &c);
    v19 = *md == *v15 && *&md[8] == *(a3 + 40);
    if (!v19 || v63 != *(a3 + 48))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", 164, 51, 0, "Input file digest and patch digest do not match", v41.i64[0]);
      return 0xFFFFFFFFLL;
    }
  }

  enterThreadErrorContext();
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  memset(&c, 0, sizeof(c));
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  *md = 0u;
  v63 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = *a3 == 0x3034464649445842 || *a3 == 0x3134464649445842;
  v21 = malloc(0x20000uLL);
  if (v21)
  {
    v22 = v15 + v11;
    v57 = 0u;
    v58 = 0u;
    v23 = a4 + v16 - v13;
    v24 = v15 + v11 + v41.i64[0];
    v25 = v23 - 32;
    v55 = 0u;
    v56 = 0u;
    memset(&c, 0, sizeof(c));
    *md = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v26 = BufferDecoderInit(&c, v18, v22, v41.i64[0]);
    v27 = BufferDecoderInit(md, v18, v24, v41.i64[1]);
    if (!BufferDecoderInit(&v44, v18, v24 + v41.i64[1], v25) && !v27 && !v26)
    {
      v28 = OBufferedStreamCreate(a5, 0, a6, 0x20000uLL);
      if (v28)
      {
        v29 = BufferDecoderRead(&c, &v59, 24);
        if (v29 < 0)
        {
LABEL_69:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", 196, 51, 0, "BufferDecoderRead", v41.i64[0]);
        }

        else
        {
          v30 = 0;
          v31 = 0;
          while (v29 == 24)
          {
            if (v59 >= 0)
            {
              v32 = v59;
            }

            else
            {
              v32 = 0x8000000000000000 - v59;
            }

            if (v60 >= 0)
            {
              v33 = v60;
            }

            else
            {
              v33 = 0x8000000000000000 - v60;
            }

            v34 = v61;
            if (v61 < 0)
            {
              v34 = 0x8000000000000000 - v61;
            }

            v41.i64[0] = v34;
            if (v32)
            {
              while (1)
              {
                if (v32 >= 0x20000)
                {
                  v35 = 0x20000;
                }

                else
                {
                  v35 = v32;
                }

                if (BufferDecoderRead(md, v21, v35) != v35)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", 208, 51, 0, "Truncated add stream", v41.i64[0]);
                  goto LABEL_74;
                }

                if (v30 < 0)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", 209, 51, 0, "invalid patch, input before buffer", v41.i64[0]);
                  goto LABEL_74;
                }

                if ((v30 + v35) > a2)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", 210, 51, 0, "invalid patch, input after buffer", v41.i64[0]);
                  goto LABEL_74;
                }

                v31 += v35;
                if (v31 > v42)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", 211, 51, 0, "invalid patch, output after buffer", v41.i64[0]);
                  goto LABEL_74;
                }

                v36 = 0;
                v37 = v35 <= 1 ? 1 : v35;
                do
                {
                  v21[v36] += *(a1 + v30 + v36);
                  ++v36;
                }

                while (v37 != v36);
                if (OBufferedStreamWrite(v28, v21, v35) != v35)
                {
                  break;
                }

                v30 += v35;
                v32 -= v35;
                if (!v32)
                {
                  goto LABEL_60;
                }
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", 213, 51, 0, "Write", v41.i64[0]);
              goto LABEL_74;
            }

LABEL_60:
            if (v33)
            {
              while (1)
              {
                if (v33 >= 0x20000)
                {
                  v38 = 0x20000;
                }

                else
                {
                  v38 = v33;
                }

                if (BufferDecoderRead(&v44, v21, v38) != v38)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", 223, 51, 0, "Truncated lit stream", v41.i64[0]);
                  goto LABEL_74;
                }

                v31 += v38;
                if (v31 > v42)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", 224, 51, 0, "invalid patch, output after buffer", v41.i64[0]);
                  goto LABEL_74;
                }

                if (OBufferedStreamWrite(v28, v21, v38) != v38)
                {
                  break;
                }

                v33 -= v38;
                if (!v33)
                {
                  goto LABEL_68;
                }
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", 225, 51, 0, "Write", v41.i64[0]);
              goto LABEL_74;
            }

LABEL_68:
            v30 += v41.i64[0];
            v29 = BufferDecoderRead(&c, &v59, 24);
            if (v29 < 0)
            {
              goto LABEL_69;
            }
          }

          if (v29)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", 198, 51, 0, "Truncated control stream", v41.i64[0]);
          }

          else
          {
            if (v31 == v42)
            {
              v40 = 0;
              goto LABEL_75;
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", 235, 51, 0, "Number of written bytes and expected output size do not match", v41.i64[0]);
          }
        }
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", 189, 51, 0, "OBufferedStream creation", v41.i64[0]);
      }

      goto LABEL_74;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", 186, 51, 0, "BufferDecoderInit", v41.i64[0]);
  }

  else
  {
    v39 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BXPatch4", 177, 51, v39, "malloc", v41.i64[0]);
  }

  v28 = 0;
LABEL_74:
  v40 = -1;
LABEL_75:
  free(v21);
  BufferDecoderDestroy(&c);
  BufferDecoderDestroy(md);
  BufferDecoderDestroy(&v44);
  OBufferedStreamDestroy(v28);
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (result >= 0)
  {
    return v40;
  }

  else
  {
    return result;
  }
}

uint64_t BufferDecoderInit(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  if (a2)
  {
    if (lzma_auto_decoder())
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (BZ2_bzDecompressInit((a1 + 24), 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t BufferDecoderRead(int *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    return 0;
  }

  v6 = *a1;
  *(a1 + 6) = a2;
  if (v6)
  {
    *(a1 + 7) = a3;
    *(a1 + 3) = *(a1 + 1);
    *(a1 + 4) = v3;
    v7 = lzma_code();
    v8 = v7;
    v9 = *(a1 + 4);
    *(a1 + 1) = *(a1 + 3);
    *(a1 + 2) = v9;
    if (v7 <= 0xA && ((1 << v7) & 0x403) != 0)
    {
      result = *(a1 + 6) - a2;
    }

    else
    {
      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BufferDecoderRead", 106, 51, 0, "lzma_code error %d\n", v7);
    }

    if (v8 > 0xA || ((1 << v8) & 0x403) == 0)
    {
      return -1;
    }
  }

  else
  {
    a1[14] = a3;
    *(a1 + 3) = *(a1 + 1);
    a1[8] = v3;
    v11 = BZ2_bzDecompress((a1 + 6));
    v12 = a1[8];
    *(a1 + 1) = *(a1 + 3);
    *(a1 + 2) = v12;
    if ((v11 & 0xFFFFFFFB) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch4.c", "BufferDecoderRead", 118, 51, 0, "BZ2_bzDecompress error %d\n", v11);
      return -1;
    }

    return *(a1 + 6) - a2;
  }

  return result;
}

uint64_t BufferDecoderDestroy(_DWORD *a1)
{
  v2 = *a1;
  v1 = (a1 + 6);
  if (v2)
  {
    return lzma_end();
  }

  else
  {
    return BZ2_bzDecompressEnd(v1);
  }
}

uint64_t transcodeIThreadProc()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v22 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 16);
  v2 = *v0;
  v3 = ArchiveTreeSize(v1);
  v4 = *(v2 + 16);
  v5 = MemBufferCreate(0x10000uLL);
  if (!v5)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeIThreadProc", 47, 65, 0, "creating mem buffer");
    v6 = 0;
    goto LABEL_35;
  }

  if (!v3)
  {
    v15 = 0;
    v6 = 0;
LABEL_25:
    SharedBufferWrite(*(v0 + 24), 0, 0);
    if (*v2 >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "%12u archive stream switches\n", v15);
    }

    goto LABEL_36;
  }

  v6 = 0;
  v15 = 0;
  v7 = 0;
  v8 = -1;
  while (1)
  {
    v16 = 0;
    v17 = 0;
    v9 = ArchiveTreeNodeArchiveID(v1, v7);
    if (v9 >= v4)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeIThreadProc", 54, 65, 0, "invalid archive ID");
      goto LABEL_35;
    }

    v10 = v9;
    if ((ArchiveTreeNodeSegment(v1, v7, &v17, &v16) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeIThreadProc", 55, 65, 0, "get entry segment");
      goto LABEL_35;
    }

    v11 = v17;
    if (v17 != -1 && v16 != -1)
    {
      break;
    }

    if (ArchiveTreeNodeEntryType(v1, v7) != 68)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeIThreadProc", 60, 65, 0, "non-directory entry not found in any archive");
      goto LABEL_35;
    }

    bzero(v21, 0x800uLL);
    bzero(v19, 0x888uLL);
    v18 = 0x4400008011;
    v19[3] = 493;
    if ((ArchiveTreeNodePath(v1, v7, &v20, 0x400uLL) & 0x8000000000000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeIThreadProc", 71, 65, 0, "getting entry path");
      goto LABEL_35;
    }

    v13 = yaa_encodeHeader(v21, 0x800uLL, &v18, 0, 0);
    if ((v13 & 0x8000000000000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeIThreadProc", 73, 65, 0, "encoding directory entry");
      goto LABEL_35;
    }

    if (SharedBufferWrite(*(v0 + 24), v21, v13) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeIThreadProc", 77, 65, 0, "writing dir entry");
      goto LABEL_35;
    }

LABEL_21:
    if (v3 == ++v7)
    {
      goto LABEL_25;
    }
  }

  if (v10 == v8)
  {
LABEL_19:
    if ((ParallelCompressionFileSeek(v6, v11, 0) & 0x8000000000000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeIThreadProc", 93, 65, 0, "seeking compressed stream");
      goto LABEL_35;
    }

    if ((MemBufferTransmit(v5, v16, pcFileRead, v6, SharedBufferWrite, *(v0 + 24)) & 0x8000000000000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeIThreadProc", 94, 65, 0, "transmitting entry payload");
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  ParallelCompressionFileClose(v6);
  v6 = ParallelCompressionFileOpen(*(*(v2 + 24) + 24 * v10), "r,c=2");
  if (v6)
  {
    ++v15;
    v11 = v17;
    v8 = v10;
    goto LABEL_19;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeIThreadProc", 88, 65, 0, "creating compressed stream");
LABEL_35:
  *(v0 + 36) = 0;
  SharedBufferAbort(*(v0 + 24));
LABEL_36:
  MemBufferDestroy(v5);
  ParallelCompressionFileClose(v6);
  return v0;
}

uint64_t transcodeOThreadBeginProc(uint64_t a1, const void *a2, uint64_t a3, unint64_t a4)
{
  v11 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 32);
  if (v8 >= ArchiveTreeSize(*(a1 + 16)))
  {
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeOThreadBeginProc", 119, 65, 0, "invalid entry index");
  }

  else
  {
    memcpy(__dst, a2, sizeof(__dst));
    if ((__dst[1] & 0x80) != 0 && (ArchiveTreeNodePath(*(a1 + 16), *(a1 + 32), &__dst[144], 0x400uLL) & 0x8000000000000000) != 0)
    {
      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeOThreadBeginProc", 128, 65, 0, "getting new entry path");
    }

    else
    {
      result = ParallelArchiveWriteEntryHeader(*(a1 + 8), __dst, a3, a4);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeOThreadBeginProc", 133, 65, 0, "writing entry header");
    }
  }

  *(a1 + 36) = 0;
  return result;
}

uint64_t transcodeOThreadPayloadProc(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = ParallelArchiveWriteEntryData(*(a1 + 8), a2, a3);
  if ((result & 0x80000000) != 0)
  {
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeOThreadPayloadProc", 146, 65, 0, "writing entry data");
    *(a1 + 36) = 0;
  }

  return result;
}

uint64_t transcodeOThreadProc(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  v7 = 0;
  v8 = a1;
  *(a1 + 32) = 0;
  v4[0] = 0x100000000;
  v2 = *(a1 + 24);
  v4[1] = SharedBufferRead;
  v4[2] = SharedBufferAbort;
  v4[3] = v2;
  v4[4] = transcodeOThreadBeginProc;
  *(&v6 + 1) = transcodeOThreadEndProc;
  *(&v5 + 1) = transcodeOThreadPayloadProc;
  if ((ParallelArchiveRead(v4) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "transcodeOThreadProc", 169, 65, 0, "reading aggregated entries");
    *(a1 + 36) = 0;
    SharedBufferAbort(*(a1 + 24));
  }

  return a1;
}

uint64_t ParallelArchiveCombine()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v3 = v0;
  v93 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext();
  v4 = *(v2 + 2);
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v5 = ArchiveTreeCreateWithRootEntry();
  v6 = v5;
  if (!v5)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 198, 65, 0, "empty tree creation");
    goto LABEL_35;
  }

  v43 = v3;
  v44 = v4;
  if (!v4)
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_43;
  }

  v7 = 0;
  v8 = 0;
  v52 = 0;
  v9 = 0;
  v45 = v4;
  v10 = MEMORY[0x29EDCA600];
  v46 = v2;
  v47 = v5;
  do
  {
    v11 = *(v2 + 3) + 24 * v7;
    bzero(__s, 0x800uLL);
    v12 = IFileStreamCreateWithFilename(*v11, 0, -1);
    if (!v12)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 207, 65, 0, "opening archive file: %s");
      goto LABEL_35;
    }

    v13 = v12;
    v14 = ArchiveTreeCreateFromArchive(IFileStreamRead, v12, v2[1]);
    v15 = v13;
    v16 = v14;
    IFileStreamDestroy(v15);
    if (!v16)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 211, 65, 0, "reading archive tree: %s");
LABEL_35:
      v28 = 0;
      goto LABEL_36;
    }

    if ((ArchiveTreePrune(v16, *(v11 + 8)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 214, 65, 0, "pruning entries: %s (%d)");
      goto LABEL_35;
    }

    if ((ArchiveTreeInsert(v16, *(v11 + 16)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 215, 65, 0, "inserting path to entries: %s (%s)");
      goto LABEL_35;
    }

    v17 = ArchiveTreeSize(v16);
    ArchiveTreeYAF(v16, __s, 0x800uLL);
    if (!v52)
    {
      v52 = (strlen(__s) >> 1) + 1;
      v18 = calloc(v52, 8uLL);
      if (!v18)
      {
        v40 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 226, 65, *v40, "malloc");
        v6 = v47;
        goto LABEL_35;
      }

      v9 = v18;
      v8 = 0;
    }

    v48 = v17;
    v49 = v16;
    v50 = v11;
    v51 = v9;
    v19 = 0;
    v20 = v9 + 4;
    do
    {
      v21 = 3;
      for (i = v19; ; ++i)
      {
        v23 = __s[i];
        if ((v23 & 0x80000000) != 0)
        {
          break;
        }

        if ((*(v10 + 4 * v23 + 60) & 0x100) == 0)
        {
          goto LABEL_18;
        }

LABEL_17:
        --v21;
      }

      if (__maskrune(__s[i], 0x100uLL))
      {
        goto LABEL_17;
      }

LABEL_18:
      if (v7)
      {
        if (v8)
        {
          v24 = v8;
          v25 = v20;
          while (((*&__s[v19] ^ *(v25 - 1)) & 0xDFDFDF) != 0)
          {
            v25 += 2;
            if (!--v24)
            {
              goto LABEL_28;
            }
          }

          ++*v25;
        }
      }

      else if (v8 < v52 && !v21)
      {
        v26 = *&__s[v19];
        v27 = &v51[8 * v8];
        v27[2] = __s[v19 + 2];
        *v27 = v26;
        *(v27 + 1) = 1;
        ++v8;
      }

LABEL_28:
      v19 = i + 1;
    }

    while (v23);
    v2 = v46;
    if (*v46 >= 1)
    {
      fprintf(*MEMORY[0x29EDCA610], "%12u entries merged from %s\n", v48, *v50);
    }

    v6 = v47;
    if ((ArchiveTreeMergeAndDestroy(v47, v49, v7) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 265, 65, 0, "merging archive tree: %s");
      goto LABEL_35;
    }

    ++v7;
    v9 = v51;
  }

  while (v7 != v45);
LABEL_43:
  v31 = ArchiveTreeSize(v6);
  if (*v2 >= 1)
  {
    v32 = v31;
    v33 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12u input archives\n", v44);
    fprintf(*v33, "%12u unique entries\n", v32);
  }

  bzero(v92, 0x800uLL);
  bzero(v91, 0x800uLL);
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  *__s = 0u;
  memset(v58, 0, 512);
  for (j = 0; v8; --v8)
  {
    if ((*v9 & 0xDFDFDF) == 0x505954 || *(v9 + 1) == v44)
    {
      if (j - 2045 <= 0xFFFFFFFFFFFFF7FELL)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 290, 65, 0, "too many YAF fields", v41, v42);
        goto LABEL_35;
      }

      if (j)
      {
        v35 = j + 1;
        v92[j] = 44;
      }

      else
      {
        v35 = 0;
      }

      v36 = &v92[v35];
      v37 = *v9;
      v36[2] = v9[2];
      *v36 = v37;
      j = v35 + 3;
      v92[v35 + 3] = 0;
    }

    v9 += 8;
  }

  bzero(&__s[8], 0x888uLL);
  *__s = 0x4D00000001;
  bzero(v58 + 3, 0x405uLL);
  qmemcpy(v58, "YAF", 3);
  DWORD1(v58[0]) = 2;
  *(&v58[0] + 1) = j;
  v38 = yaa_encodeHeader(v91, 0x800uLL, __s, v58, 1uLL);
  if (v38 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 306, 65, 0, "encoding metadata entry", v41, v42);
    goto LABEL_35;
  }

  v39 = v38;
  if (2048 - v38 < j)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 309, 65, 0, "encoding metadata entry", v41, v42);
    goto LABEL_35;
  }

  memcpy(&v91[v38], v92, j);
  if (*v2 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "Output fields: %s\n", v92);
  }

  if ((yaa_writeRawEntryHeader(v43, v91, v39 + j, 0) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 317, 65, 0, "writing metadata entry", v41, v42);
    goto LABEL_35;
  }

  *(&v54 + 1) = SharedBufferCreate(0x10000uLL);
  if (!*(&v54 + 1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 322, 65, 0, "allocating shared buffer", v41, v42);
    goto LABEL_35;
  }

  *&v53 = v2;
  *(&v53 + 1) = v43;
  *&v54 = v6;
  v28 = 1;
  HIDWORD(v55) = 1;
  if ((createThread(&v57, transcodeIThreadProc, &v53, 0) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 329, 65, 0, "running transcoder I thread");
    v28 = 0;
  }

  if ((createThread(&v56, transcodeOThreadProc, &v53, 0) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 330, 65, 0, "running transcoder O thread");
    v28 = 0;
  }

  if ((joinThread(v56) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 331, 65, 0, "waiting for O thread");
    v28 = 0;
  }

  if ((joinThread(v57) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 332, 65, 0, "waiting for I thread");
    v28 = 0;
  }

  if (!HIDWORD(v55))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Combine.c", "ParallelArchiveCombine", 333, 65, 0, "transcoding", v41, v42);
    goto LABEL_35;
  }

LABEL_36:
  ArchiveTreeDestroy(v6);
  SharedBufferDestroy(*(&v54 + 1));
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (v28)
  {
    v30 = 0;
  }

  else
  {
    v30 = -1;
  }

  if (result >= 0)
  {
    return v30;
  }

  else
  {
    return result;
  }
}

uint64_t MemGateReserve(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (pthread_mutex_lock(a1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateReserve", 95, 18, 0, "MutexLock");
    goto LABEL_24;
  }

  v5 = *(a1 + 212);
  if (v5)
  {
    goto LABEL_6;
  }

  v12 = *(a1 + 184);
  v13 = *(a1 + 192);
  v14 = v12 < a2;
  v15 = v12 - a2;
  if (!v14)
  {
    v16 = v13 + 1;
LABEL_17:
    v10 = 0;
    *(a1 + 184) = v15;
    *(a1 + 192) = v16;
    goto LABEL_18;
  }

  if (!v13)
  {
    v16 = 1;
    goto LABEL_17;
  }

LABEL_6:
  v6 = *(a1 + 208);
  if (v5 == v6 || ((*(a1 + 212) = v5 + 1, v7 = *(a1 + 200), v8 = *(a1 + 220), v8 + 1 != v6) ? (v9 = v8 + 1) : (v9 = 0), *(a1 + 220) = v9, !v7))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateReserve", 114, 18, 0, "MemGateAllocateRequest");
    v10 = 0;
    v11 = 0;
    goto LABEL_19;
  }

  v10 = v7 + (v8 << 7);
  *(v10 + 120) = a2;
LABEL_18:
  v11 = 1;
LABEL_19:
  if (pthread_mutex_unlock(a1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateReserve", 123, 18, 0, "MutexUnlock");
  }

  else
  {
    if (!v10)
    {
      goto LABEL_25;
    }

    if (pthread_mutex_lock((v10 + 8)))
    {
      goto LABEL_23;
    }

    while (*v10 <= 0)
    {
      if (pthread_cond_wait((v10 + 72), (v10 + 8)))
      {
        goto LABEL_23;
      }
    }

    --*v10;
    if (pthread_mutex_unlock((v10 + 8)))
    {
LABEL_23:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateReserve", 129, 18, 0, "SemAcquire");
    }

    else
    {
      if (!pthread_mutex_lock((a1 + 72)))
      {
        v17 = *(a1 + 64);
        *(a1 + 64) = v17 + 1;
        if ((v17 || !pthread_cond_broadcast((a1 + 136))) && !pthread_mutex_unlock((a1 + 72)))
        {
          goto LABEL_25;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateReserve", 136, 18, 0, "SemRelease");
    }
  }

LABEL_24:
  v11 = 0;
LABEL_25:
  if (v11)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t MemGateFree(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (pthread_mutex_lock(a1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateFree", 154, 18, 0, "MutexLock");
  }

  else
  {
    *(a1 + 184) += a2;
    --*(a1 + 192);
    if (*(a1 + 212))
    {
      while (1)
      {
        v5 = *(a1 + 200);
        if (!v5)
        {
          goto LABEL_26;
        }

        v6 = v5 + (*(a1 + 216) << 7);
        v7 = *(a1 + 184);
        v8 = *(v6 + 120);
        v9 = *(a1 + 192);
        v10 = v7 < v8;
        v11 = v7 - v8;
        if (v10 && v9 != 0)
        {
          goto LABEL_26;
        }

        *(a1 + 184) = v11;
        *(a1 + 192) = v9 + 1;
        if (pthread_mutex_lock((v6 + 8)))
        {
          break;
        }

        if (!(*v6)++)
        {
          if (pthread_cond_broadcast((v6 + 72)))
          {
            break;
          }
        }

        if (pthread_mutex_unlock((v6 + 8)))
        {
          break;
        }

        if (pthread_mutex_lock((a1 + 72)))
        {
          goto LABEL_27;
        }

        while (1)
        {
          v14 = *(a1 + 64);
          if (v14 > 0)
          {
            break;
          }

          if (pthread_cond_wait((a1 + 136), (a1 + 72)))
          {
            goto LABEL_27;
          }
        }

        *(a1 + 64) = v14 - 1;
        if (pthread_mutex_unlock((a1 + 72)))
        {
LABEL_27:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateFree", 177, 18, 0, "SemAcquire");
LABEL_28:
          v19 = 0;
          goto LABEL_29;
        }

        v15 = *(a1 + 212);
        if (v15)
        {
          v16 = v15 - 1;
          v17 = *(a1 + 216);
          v18 = v17 + 1 == *(a1 + 208) ? 0 : v17 + 1;
          *(a1 + 212) = v16;
          *(a1 + 216) = v18;
          if (v16)
          {
            continue;
          }
        }

        goto LABEL_26;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateFree", 176, 18, 0, "SemRelease");
      goto LABEL_28;
    }

LABEL_26:
    v19 = 1;
LABEL_29:
    if (!pthread_mutex_unlock(a1))
    {
      goto LABEL_32;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateFree", 188, 18, 0, "MutexUnlock");
  }

  v19 = 0;
LABEL_32:
  if (v19)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t MemGateDestroy(pthread_mutex_t *a1)
{
  v2 = *a1[3].__opaque;
  if (v2)
  {
    if (*&a1[3].__opaque[8] < 1)
    {
      v4 = 1;
    }

    else
    {
      v3 = 0;
      v4 = 1;
      v5 = 72;
      do
      {
        v6 = (*a1[3].__opaque + v5);
        if (pthread_mutex_destroy(&v6[-2].__opaque[24]) || pthread_cond_destroy(v6))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateDestroy", 205, 18, 0, "SemDestroy");
          v4 = 0;
        }

        ++v3;
        v5 += 128;
      }

      while (v3 < *&a1[3].__opaque[8]);
      v2 = *a1[3].__opaque;
    }

    free(v2);
    *a1[3].__opaque = 0;
  }

  else
  {
    v4 = 1;
  }

  if (*&a1[3].__opaque[8] >= 1)
  {
    if (LODWORD(a1[3].__sig))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateDestroy", 216, 18, 0, "memory leak");
      v4 = 0;
    }

    if (*&a1[3].__opaque[12])
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateDestroy", 217, 18, 0, "pending requests");
      v4 = 0;
    }

    if (pthread_mutex_destroy(a1))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateDestroy", 218, 18, 0, "MutexDestroy");
      v4 = 0;
    }

    if (pthread_mutex_destroy((a1 + 72)) || pthread_cond_destroy(a1[2].__opaque))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateDestroy", 219, 18, 0, "SemDestroy");
      v4 = 0;
    }
  }

  *&a1[3].__sig = 0u;
  *&a1[3].__opaque[8] = 0u;
  *&a1[2].__opaque[24] = 0u;
  *&a1[2].__opaque[40] = 0u;
  *&a1[2].__sig = 0u;
  *&a1[2].__opaque[8] = 0u;
  *&a1[1].__opaque[24] = 0u;
  *&a1[1].__opaque[40] = 0u;
  *&a1[1].__sig = 0u;
  *&a1[1].__opaque[8] = 0u;
  *&a1->__opaque[24] = 0u;
  *&a1->__opaque[40] = 0u;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *&a1->__sig = 0uLL;
  *&a1->__opaque[8] = 0uLL;
  return result;
}

uint64_t MemGateInit(pthread_mutex_t *a1, uint64_t a2, unsigned int a3)
{
  *&a1[3].__sig = 0u;
  *&a1[3].__opaque[8] = 0u;
  *&a1[2].__opaque[24] = 0u;
  *&a1[2].__opaque[40] = 0u;
  *&a1[2].__sig = 0u;
  *&a1[2].__opaque[8] = 0u;
  *&a1[1].__opaque[24] = 0u;
  *&a1[1].__opaque[40] = 0u;
  *&a1[1].__sig = 0u;
  *&a1[1].__opaque[8] = 0u;
  *&a1->__opaque[24] = 0u;
  *&a1->__opaque[40] = 0u;
  *&a1->__sig = 0u;
  *&a1->__opaque[8] = 0u;
  if (a3 <= 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateInit", 236, 18, 0, "bad # of allocation requests");
  }

  else if (pthread_mutex_init(a1, 0))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateInit", 239, 18, 0, "MutexInit");
  }

  else
  {
    LODWORD(a1[1].__sig) = 0;
    if (pthread_mutex_init((a1 + 72), 0) || pthread_cond_init(a1[2].__opaque, 0))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateInit", 240, 18, 0, "SemInit");
    }

    else
    {
      *&a1[2].__opaque[48] = a2;
      LODWORD(a1[3].__sig) = 0;
      *&a1[3].__opaque[8] = a3;
      *&a1[3].__opaque[12] = 0;
      *&a1[3].__opaque[16] = 0;
      v7 = calloc(a3, 0x80uLL);
      *a1[3].__opaque = v7;
      if (v7)
      {
        v8 = 0;
        v9 = a3 << 7;
        while (1)
        {
          v10 = *a1[3].__opaque;
          *(v10 + v8) = 0;
          if (pthread_mutex_init((v10 + v8 + 8), 0))
          {
            break;
          }

          result = pthread_cond_init((v10 + v8 + 72), 0);
          if (result)
          {
            break;
          }

          *(v10 + v8 + 120) = 0;
          v8 += 128;
          if (v9 == v8)
          {
            return result;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateInit", 257, 18, 0, "SemInit");
      }

      else
      {
        v11 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "MemGateInit", 250, 18, v11, "calloc");
      }
    }
  }

  MemGateDestroy(a1);
  return 0xFFFFFFFFLL;
}

uint64_t loadDirectoryThreadProc(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 >= v1[1])
  {
    return 0;
  }

  while (1)
  {
    if ((concatPath(v10, 0x400uLL, *a1, (v1[5] + *(v1[2] + 184 * v2))) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectoryThreadProc", 1064, 18, 0, "getting full path: %s");
      return 0xFFFFFFFFLL;
    }

    v1 = *(a1 + 8);
    if ((*(v1[2] + 184 * v2 + 56) - 1) > 2)
    {
      goto LABEL_12;
    }

    v4 = *(a1 + 32);
    FileDiskUsage = getFileDiskUsage(v10);
    v6 = FileDiskUsage >= 0 ? (FileDiskUsage + (v4 - 1)) & -v4 : FileDiskUsage;
    v1 = *(a1 + 8);
    v7 = v1[2];
    if ((v6 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*(v7 + 184 * v2 + 56) == 1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectoryThreadProc", 1078, 18, 0, "getting disk usage: %s");
      return 0xFFFFFFFFLL;
    }

LABEL_12:
    v2 += *(a1 + 24);
    if (v2 >= v1[1])
    {
      return 0;
    }
  }

  v8 = v7 + 184 * v2;
  *(v8 + 152) = v6;
  if (*(v8 + 56) != 1)
  {
    goto LABEL_12;
  }

  if ((getFileSHA1Digest(v10, v7 + 184 * v2 + 128) & 0x80000000) == 0)
  {
    v1 = *(a1 + 8);
    goto LABEL_12;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectoryThreadProc", 1085, 18, 0, "getting SHA1 digest: %s");
  return 0xFFFFFFFFLL;
}

uint64_t InoTableEntryCmpProc(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 < *a1)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v4 < v3;
  }
}

uint64_t loadDirectory(char *a1, unsigned int DefaultNThreads, size_t a3)
{
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  for (i = strlen(a1); i; --i)
  {
    if (a1[i - 1] != 47)
    {
      break;
    }
  }

  v50[0] = i;
  v50[1] = a3;
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  if ((loadDirectoryProc(v50, a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectory", 1132, 18, 0, "inserting root dir");
LABEL_27:
    v7 = 0;
LABEL_28:
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_29;
  }

  v49[1] = 0;
  v49[2] = 0;
  v49[0] = v50;
  v49[3] = loadDirectoryProc;
  if ((enumerateTree(v49, a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectory", 1139, 18, 0, "enumerateTree %s");
    goto LABEL_27;
  }

  qsort_r(*(a3 + 16), *(a3 + 8), 0xB8uLL, a3, DirectoryEntryPathCompareProc);
  v7 = 0;
  v8 = 1;
  while (2)
  {
    v9 = *(a3 + 8);
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = -v9;
      v13 = *(a3 + 16) + 56;
      while (2)
      {
        v14 = v13 + 184 * v11++;
        while (*v14 == 1)
        {
          v15 = v11 - 1;
          if ((v8 & 1) == 0)
          {
            if (*(v14 - 32) >= 2)
            {
              v16 = &v7[16 * v10];
              *v16 = *(v14 - 40);
              *(v16 + 1) = v15;
LABEL_19:
              ++v10;
            }

            break;
          }

          *(v14 + 16) = v15;
          *(v14 + 24) = -1;
          *(v14 + 32) = -1;
          if (*(v14 - 32) >= 2)
          {
            goto LABEL_19;
          }

          ++v11;
          v14 += 184;
          if (v12 + v11 == 1)
          {
            goto LABEL_22;
          }
        }

        if (v12 + v11)
        {
          continue;
        }

        break;
      }

      if (v8)
      {
LABEL_22:
        if (!v10)
        {
          break;
        }

        v7 = calloc(v10, 0x10uLL);
        v8 = 0;
        if (!v7)
        {
          v17 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectory", 1171, 18, v17, "inoTable allocation");
          goto LABEL_28;
        }

        continue;
      }

      if (!v10)
      {
        break;
      }

      qsort(v7, v10, 0x10uLL, InoTableEntryCmpProc);
      v26 = 0;
      v27 = 0;
      v28 = *(a3 + 8);
      v29 = -1;
      v30 = v7;
      v31 = -1;
      while (1)
      {
        v32 = v30[1];
        if (!v26 || *(v30 - 2) != *v30)
        {
          v27 = 0;
          ++v29;
          v31 = v30[1];
        }

        if (v31 >= v28 || v32 >= v28)
        {
          break;
        }

        v30 += 2;
        v33 = (*(a3 + 16) + 184 * v32);
        v33[9] = v31;
        v33[10] = v29;
        v33[11] = v27++;
        if (v10 == ++v26)
        {
          goto LABEL_44;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectory", 1187, 18, 0, "Invalid index in ino table");
      goto LABEL_28;
    }

    break;
  }

LABEL_44:
  v34 = DefaultNThreads;
  v21 = calloc(DefaultNThreads, 0x28uLL);
  v35 = malloc(8 * DefaultNThreads);
  v20 = v35;
  if (v21 && v35)
  {
    if (DefaultNThreads < 1)
    {
      v48 = ThreadPoolCreate(DefaultNThreads, v35, loadDirectoryThreadProc);
      if (v48)
      {
        v19 = v48;
        v22 = 0;
        v18 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      v36 = DefaultNThreads;
      v37 = (DefaultNThreads + 1) & 0xFFFFFFFE;
      v38 = vdupq_n_s64(DefaultNThreads - 1);
      v39 = xmmword_2980690E0;
      v40 = v35 + 1;
      v41 = vdupq_n_s64(2uLL);
      v42 = v21;
      do
      {
        v43 = vmovn_s64(vcgeq_u64(v38, v39));
        if (v43.i8[0])
        {
          *(v40 - 1) = v42;
        }

        if (v43.i8[4])
        {
          *v40 = v42 + 40;
        }

        v39 = vaddq_s64(v39, v41);
        v40 += 2;
        v42 += 80;
        v37 -= 2;
      }

      while (v37);
      v44 = ThreadPoolCreate(DefaultNThreads, v35, loadDirectoryThreadProc);
      if (v44)
      {
        v19 = v44;
        v45 = 0;
        while (1)
        {
          Worker = ThreadPoolGetWorker(v19);
          v18 = Worker;
          if (!Worker)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectory", 1208, 18, 0, "ThreadPoolGetWorker");
            goto LABEL_29;
          }

          *Worker = a1;
          *(Worker + 8) = a3;
          *(Worker + 16) = v45;
          *(Worker + 24) = v34;
          *(Worker + 32) = getFilesystemBlockSize(a1);
          if ((ThreadPoolRunWorker(v19) & 0x80000000) != 0)
          {
            break;
          }

          ++v45;
          v18 = 1;
          if (v36 == v45)
          {
            v22 = 0;
            goto LABEL_30;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectory", 1214, 18, 0, "ThreadPoolRunWorker");
        v18 = 0;
        goto LABEL_29;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectory", 1201, 18, 0, "ThreadPoolCreate");
  }

  else
  {
    v47 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectory", 1198, 18, v47, "malloc");
  }

  v18 = 0;
  v19 = 0;
LABEL_29:
  v22 = 1;
LABEL_30:
  v23 = ThreadPoolDestroy(v19);
  v24 = v18 & ~(v23 >> 31);
  if ((v22 & 1) == 0 && (v23 & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectory", 1219, 18, 0, "A LoadDirectory thread reported an error");
    v24 = 0;
  }

  free(v21);
  free(v20);
  free(v7);
  if (v24)
  {
    return 0;
  }

  free(*(a3 + 16));
  BlobBufferFree(a3 + 24);
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return 0xFFFFFFFFLL;
}

uint64_t loadDirectoryProc(size_t *a1, char *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  if (*(v4 + 8) >= *v4)
  {
    v5 = *v4 + 0x4000;
    *v4 = v5;
    v6 = reallocf(*(v4 + 16), 184 * v5);
    *(v4 + 16) = v6;
    if (!v6)
    {
      v7 = *__error();
      v8 = "reallocf";
      v9 = 992;
      goto LABEL_23;
    }
  }

  memset(&v24, 0, sizeof(v24));
  if (lstat(a2, &v24))
  {
    v7 = *__error();
    v22 = a2;
    v8 = "%s";
    v9 = 998;
LABEL_23:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadDirectoryProc", v9, 18, v7, v8, v22, v23);
    return 0xFFFFFFFFLL;
  }

  v10 = v24.st_mode & 0xF000;
  switch(v10)
  {
    case 16384:
      v13 = 0;
      v11 = 0;
      v12 = 2;
      break;
    case 32768:
      v13 = 0;
      v11 = 1;
      v12 = 1;
      break;
    case 40960:
      v11 = 0;
      v12 = 3;
      v13 = 1;
      break;
    default:
      v22 = (v24.st_mode & 0xF000);
      v23 = a2;
      v8 = "Unsupported file type: %07o (%s)";
      v9 = 1006;
      goto LABEL_22;
  }

  v14 = *(v4 + 8);
  v15 = *(v4 + 16) + 184 * v14;
  *(v4 + 8) = v14 + 1;
  *(v15 + 176) = 0;
  *(v15 + 144) = 0u;
  *(v15 + 160) = 0u;
  *(v15 + 112) = 0u;
  *(v15 + 128) = 0u;
  *(v15 + 80) = 0u;
  *(v15 + 96) = 0u;
  *(v15 + 48) = 0u;
  *(v15 + 64) = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *v15 = 0u;
  if (strlen(a2) > *a1)
  {
    v16 = &a2[*a1 + 1];
  }

  else
  {
    v16 = "";
  }

  v17 = strlen(v16);
  if (BlobBufferStore(v4 + 24, v16, v17 + 1, v15))
  {
    v8 = "Storing entry path";
    v9 = 1018;
LABEL_22:
    v7 = 0;
    goto LABEL_23;
  }

  if (v13)
  {
    bzero(v25, 0x400uLL);
    v18 = readlink(a2, v25, 0x3FFuLL);
    if (v18 < 0)
    {
      v7 = *__error();
      v22 = a2;
      v8 = "%s";
      v9 = 1024;
      goto LABEL_23;
    }

    v25[v18] = 0;
    if (BlobBufferStore(v4 + 24, v25, v18 + 1, (v15 + 96)))
    {
      v8 = "Storing symlink path";
      v9 = 1026;
      goto LABEL_22;
    }
  }

  *(v15 + 56) = v12;
  *(v15 + 72) = -1;
  *(v15 + 112) = *&v24.st_uid;
  v20 = v24.st_mode & 0xFFF;
  *(v15 + 160) = 0x7FFFFFFFLL;
  st_flags = v24.st_flags;
  *(v15 + 120) = v20;
  *(v15 + 124) = st_flags;
  *(v15 + 48) = -1;
  *(v15 + 16) = v24.st_ino;
  *(v15 + 24) = v24.st_nlink;
  result = 0;
  if (v11)
  {
    *(v15 + 64) = v24.st_size;
  }

  return result;
}

uint64_t loadManifest(const char *a1, uint64_t a2)
{
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v45[0] = 0;
  *__ptr = 0u;
  v47 = 0;
  v45[1] = a2;
  v3 = IFileStreamCreateWithFilename(a1, 0, -1);
  v4 = v3;
  if (!v3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadManifest", 1429, 18, 0, "IFileStreamCreateWithFilename");
    goto LABEL_7;
  }

  *&v49 = 0;
  *(&v50 + 1) = 0;
  v51 = 0u;
  v52 = 0u;
  *&v48 = 0;
  *(&v48 + 1) = IFileStreamRead;
  *(&v49 + 1) = v3;
  *&v50 = loadManifestProc;
  v53 = v45;
  if (ParallelArchiveRead(&v48))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadManifest", 1442, 18, 0, "ParallelArchiveRead");
LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  if (v45[0])
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadManifest", 1445, 18, 0, "errors during manifest scan");
    goto LABEL_7;
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = 0;
    v9 = *(a2 + 16);
    v10 = (v9 + 72);
    do
    {
      if (*(v10 - 4) == 1)
      {
        *v10 = v8;
        if (*(v10 - 4))
        {
          v11 = lookupEntry(a2, (*(a2 + 40) + *(v10 - 5)));
          if ((v11 & 0x8000000000000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadManifest", 1464, 18, 0, "resolving hard link %s -> %s");
            goto LABEL_7;
          }

          if (v11 >= v8)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadManifest", 1465, 18, 0, "hard link resolved to a larger index: %s -> %s");
            goto LABEL_7;
          }

          *v10 = v11;
        }
      }

      ++v8;
      v10 += 23;
    }

    while (v7 != v8);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *(a2 + 16);
    v16 = (v15 + 80);
    do
    {
      if (*(v16 - 6) == 1)
      {
        v17 = *(v16 - 1);
        if (v14 != v17)
        {
          if (*v16 == -1)
          {
            ++v13;
          }

          else
          {
            ++v12;
          }

          if (*v16 != *(v15 + 184 * v17 + 80))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadManifest", 1482, 18, 0, "Inconsistent HLC fields in manifest");
            goto LABEL_7;
          }
        }
      }

      ++v14;
      v16 += 23;
    }

    while (v7 != v14);
    if (v12 && v13)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadManifest", 1484, 18, 0, "Missing some HLC fields in manifest");
      goto LABEL_7;
    }

    if (!v12)
    {
      v27 = 0;
      v28 = *(a2 + 16);
      v29 = (v28 + 80);
      do
      {
        if (*(v29 - 6) == 1)
        {
          v30 = *(v29 - 1);
          if (v27 != v30)
          {
            v31 = v28 + 184 * v30;
            v34 = *(v31 + 80);
            v33 = (v31 + 80);
            v32 = v34;
            if (v34 == -1)
            {
              *v33 = v12;
              v32 = v12++;
            }

            *v29 = v32;
          }
        }

        ++v27;
        v29 += 23;
      }

      while (v7 != v27);
    }

    v18 = 0;
    v35 = 0;
    v19 = 0;
    v36 = (*(a2 + 16) + 88);
    do
    {
      if (*(v36 - 8) == 1)
      {
        v37 = *(v36 - 1);
        if (v37 != -1)
        {
          if (v37 > v19)
          {
            v19 = *(v36 - 1);
          }

          if (*v36 == -1)
          {
            ++v35;
          }

          else
          {
            ++v18;
          }
        }
      }

      v36 += 23;
      --v7;
    }

    while (v7);
    if (v18 && v35)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadManifest", 1516, 18, 0, "Missing some HLO fields in manifest");
      goto LABEL_7;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  if (__ptr[0] <= v19)
  {
    __ptr[0] = (v19 + 1);
    __ptr[1] = reallocf(__ptr[1], 8 * (v19 + 1));
    if (!__ptr[1])
    {
      v44 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadManifest", 1523, 18, v44, "malloc");
      goto LABEL_7;
    }
  }

  if (v18)
  {
    if (__ptr[0])
    {
      memset(__ptr[1], 255, 8 * __ptr[0]);
    }

    v20 = *(a2 + 8);
    if (v20)
    {
      v21 = 0;
      v22 = __ptr[1];
      v23 = (*(a2 + 16) + 88);
      do
      {
        if (*(v23 - 8) == 1)
        {
          v24 = *(v23 - 1);
          if (v24 != -1)
          {
            if (*v23)
            {
              if (*v23 == -1)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadManifest", 1552, 18, 0, "Missing HLO field");
                goto LABEL_7;
              }
            }

            else
            {
              if (v22[v24] != -1)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadManifest", 1555, 18, 0, "Multiple HLO = 0 entries for same cluster");
                goto LABEL_7;
              }

              v22[v24] = v21;
            }
          }
        }

        ++v21;
        v23 += 23;
      }

      while (v20 != v21);
      v25 = __ptr[1];
      v26 = (*(a2 + 16) + 80);
      do
      {
        if (*(v26 - 6) == 1 && *v26 != -1)
        {
          *(v26 - 1) = v25[*v26];
        }

        v26 += 23;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    if (__ptr[0])
    {
      memset_pattern16(__ptr[1], &unk_298069840, 8 * __ptr[0]);
    }

    v38 = *(a2 + 8);
    if (v38)
    {
      v39 = 0;
      v40 = __ptr[1];
      v41 = (*(a2 + 16) + 88);
      do
      {
        if (*(v41 - 8) == 1)
        {
          v42 = *(v41 - 1);
          if (v42 != -1)
          {
            if (v39 == *(v41 - 2))
            {
              v43 = 0;
            }

            else
            {
              v43 = v40[v42];
              v40[v42] = v43 + 1;
            }

            *v41 = v43;
          }
        }

        ++v39;
        v41 += 23;
      }

      while (v38 != v39);
    }
  }

  v5 = 0;
  *(a2 + 48) = v47;
LABEL_8:
  IFileStreamDestroy(v4);
  free(__ptr[1]);
  if (v5)
  {
    free(*(a2 + 16));
    BlobBufferFree(a2 + 24);
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return (v5 << 31 >> 31);
}

uint64_t loadManifestProc(uint64_t result, int *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  v51 = *MEMORY[0x29EDCA608];
  v8 = *(result + 8);
  v9 = a2[1];
  if (v9 <= 71)
  {
    if (v9 == 68)
    {
      v11 = 2;
LABEL_21:
      v13 = *v8;
      v12 = v8[1];
      if (v12 >= *v8)
      {
        *v8 = v13 + 0x4000;
        v14 = reallocf(v8[2], 184 * (v13 + 0x4000));
        v8[2] = v14;
        if (!v14)
        {
          v20 = *__error();
          v17 = "reallocf";
          v18 = 1280;
LABEL_116:
          result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "loadManifestProc", v18, 18, v20, v17, v46, v47);
          ++*v7;
          return result;
        }

        v12 = v8[1];
      }

      else
      {
        v14 = v8[2];
      }

      v8[1] = v12 + 1;
      v15 = &v14[184 * v12];
      *(v15 + 22) = 0;
      *(v15 + 9) = 0u;
      *(v15 + 10) = 0u;
      *(v15 + 7) = 0u;
      *(v15 + 8) = 0u;
      *(v15 + 5) = 0u;
      *(v15 + 6) = 0u;
      *(v15 + 3) = 0u;
      *(v15 + 4) = 0u;
      *(v15 + 1) = 0u;
      *(v15 + 2) = 0u;
      *v15 = 0u;
      v16 = strlen(a2 + 144);
      result = BlobBufferStore((v8 + 3), a2 + 36, v16 + 1, v15);
      if (result)
      {
        v17 = "Storing path";
        v18 = 1287;
LABEL_115:
        v20 = 0;
        goto LABEL_116;
      }

      v19 = *a2;
      if ((*a2 & 2) == 0)
      {
        v46 = (a2 + 36);
        v17 = "manifest doesn't provide UID for entry %s";
        v18 = 1288;
        goto LABEL_115;
      }

      if ((v19 & 4) == 0)
      {
        v46 = (a2 + 36);
        v17 = "manifest doesn't provide GID for entry %s";
        v18 = 1289;
        goto LABEL_115;
      }

      if ((v19 & 0x10) == 0)
      {
        v46 = (a2 + 36);
        v17 = "manifest doesn't provide MOD for entry %s";
        v18 = 1290;
        goto LABEL_115;
      }

      if ((v19 & 8) == 0)
      {
        v46 = (a2 + 36);
        v17 = "manifest doesn't provide FLG for entry %s";
        v18 = 1291;
        goto LABEL_115;
      }

      *(v15 + 14) = *(a2 + 1);
      v21 = a2[4];
      *(v15 + 30) = a2[5] & 0xFFF;
      *(v15 + 31) = v21;
      *(v15 + 14) = v11;
      *(v15 + 9) = -1;
      *(v15 + 20) = 0x7FFFFFFFLL;
      *(v15 + 6) = -1;
      v22 = a2[1];
      if (v22 == 72)
      {
        v23 = strlen(a2 + 1168);
        result = BlobBufferStore((v8 + 3), a2 + 292, v23 + 1, v15 + 4);
        if (result)
        {
          v17 = "Storing link path";
          v18 = 1304;
          goto LABEL_115;
        }

        v22 = a2[1];
      }

      if (v22 == 76)
      {
        v24 = strlen(a2 + 1168);
        result = BlobBufferStore((v8 + 3), a2 + 292, v24 + 1, v15 + 12);
        if (result)
        {
          v17 = "Storing link path";
          v18 = 1309;
          goto LABEL_115;
        }
      }

      if (v4)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = (a3 + 8);
        v30 = v4;
        do
        {
          v31 = *(v29 - 1) & 0xDFDFDF;
          if (v31 == 5196872)
          {
            if (*(v29 - 1) == 1)
            {
              v28 = *v29;
              v26 = 1;
            }
          }

          else if (v31 == 4410440 && *(v29 - 1) == 1)
          {
            v27 = *v29;
            v25 = 1;
          }

          v29 += 129;
          --v30;
        }

        while (v30);
        if (v26 && !v25)
        {
          v17 = "Invalid manifest, HLO without HLC";
          v18 = 1323;
          goto LABEL_115;
        }

        if (v25)
        {
          v33 = *(v7 + 16);
          if (v27 < v33)
          {
            goto LABEL_73;
          }

          v34 = *(v7 + 16);
          do
          {
            if (v34)
            {
              v34 += v34 >> 1;
            }

            else
            {
              v34 = 16;
            }
          }

          while (v27 >= v34);
          if (v34 <= v33)
          {
LABEL_73:
            result = *(v7 + 24);
          }

          else
          {
            v49 = v26;
            result = reallocf(*(v7 + 24), 8 * v34);
            *(v7 + 24) = result;
            if (!result)
            {
              v20 = *__error();
              v17 = "malloc";
              v18 = 1333;
              goto LABEL_116;
            }

            v35 = *(v7 + 16);
            if (v35 < v34)
            {
              v48 = result;
              memset((result + 8 * v35), 255, 8 * v34 - 8 * v35);
              result = v48;
            }

            *(v7 + 16) = v34;
            v26 = v49;
          }

          v36 = *(result + 8 * v27);
          if (v36 != -1)
          {
            if (v36 >= v8[1])
            {
              v17 = "invalid hard link index";
              v18 = 1352;
              goto LABEL_115;
            }

            v37 = v26;
            if (__strlcpy_chk() >= 0x400)
            {
              v17 = "path too long";
              v18 = 1349;
              goto LABEL_115;
            }

            v45 = strlen(__s);
            result = BlobBufferStore((v8 + 3), __s, v45 + 1, v15 + 4);
            if (result)
            {
              v17 = "Storing link path";
              v18 = 1350;
              goto LABEL_115;
            }

            *(v15 + 10) = v27;
            if (!v37)
            {
              goto LABEL_57;
            }

LABEL_58:
            *(v15 + 11) = v28;
            v32 = a2[1];
            if (v32 == 70)
            {
              if ((*a2 & 0x80) == 0)
              {
                v46 = (a2 + 36);
                v17 = "manifest doesn't provide SIZ for entry %s";
                v18 = 1361;
                goto LABEL_115;
              }

              *(v15 + 8) = *(a2 + 5);
              if ((*(a2 + 1) & 0x20) == 0)
              {
                v46 = (a2 + 36);
                v17 = "manifest doesn't provide SH1 for entry %s";
                v18 = 1365;
                goto LABEL_115;
              }

              v38 = *(a2 + 23);
              *(v15 + 36) = a2[27];
              *(v15 + 8) = v38;
              v32 = a2[1];
              if (v32 == 70)
              {
                if ((v15[124] & 0x20) == 0)
                {
                  *(v15 + 20) = 0xFFFFFFFFLL;
                }

                v32 = 70;
              }
            }

            if ((*a2 & 0x400) != 0)
            {
              *(v15 + 44) = 1;
              if ((*a2 & 0x800) == 0)
              {
LABEL_88:
                if (v4)
                {
                  goto LABEL_89;
                }

                goto LABEL_102;
              }
            }

            else if ((*a2 & 0x800) == 0)
            {
              goto LABEL_88;
            }

            *(v15 + 45) = 1;
            if (v4)
            {
LABEL_89:
              v39 = 0;
              v40 = (a3 + 8);
              do
              {
                v41 = *(v40 - 2);
                if ((v41 & 0xDFDFDF) == 0x5A5544)
                {
                  *(v15 + 19) = *v40;
                  v41 = *(v40 - 2);
                  v39 = 1;
                }

                if ((v41 & 0xDFDFDF) == 0x544641)
                {
                  *(v15 + 40) = *v40;
                  v41 = *(v40 - 2);
                }

                if ((v41 & 0xDFDFDF) == 0x524641)
                {
                  *(v15 + 41) = *v40;
                  v41 = *(v40 - 2);
                }

                if ((v41 & 0xDFDFDF) == 0x494C46)
                {
                  *(v15 + 21) = *v40;
                }

                v40 += 129;
                --v4;
              }

              while (v4);
              v42 = v39 != 0;
LABEL_103:
              if (v32 != 70 || v42)
              {
                if (v32 != 72)
                {
                  return result;
                }

                result = lookupEntry(v8, a2 + 1168);
                if ((result & 0x8000000000000000) == 0)
                {
                  v43 = v8[2] + 184 * result;
                  *(v15 + 8) = *(v43 + 64);
                  *(v15 + 19) = *(v43 + 152);
                  v44 = *(v43 + 128);
                  *(v15 + 36) = *(v43 + 144);
                  *(v15 + 8) = v44;
                  return result;
                }

                v46 = (a2 + 36);
                v47 = a2 + 292;
                v17 = "link path not found: %s -> %s";
                v18 = 1403;
              }

              else
              {
                v46 = (a2 + 36);
                v17 = "manifest doesn't provide DUZ for regular file %s";
                v18 = 1396;
              }

              goto LABEL_115;
            }

LABEL_102:
            v42 = 0;
            goto LABEL_103;
          }

          *(result + 8 * v27) = 0xD37A6F4DE9BD37A7 * (&v15[-v8[2]] >> 3);
          *(v15 + 10) = v27;
          if (v26)
          {
            goto LABEL_58;
          }
        }

        else
        {
          *(v15 + 10) = -1;
          if (v26)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        *(v15 + 10) = -1;
      }

LABEL_57:
      v28 = -1;
      goto LABEL_58;
    }

    if (v9 != 70)
    {
      goto LABEL_29;
    }

LABEL_18:
    v11 = 1;
    goto LABEL_21;
  }

  if (v9 == 72)
  {
    goto LABEL_18;
  }

  if (v9 == 76)
  {
    v11 = 3;
    goto LABEL_21;
  }

  if (v9 != 77)
  {
LABEL_29:
    v46 = a2[1];
    v17 = "Unsupported file type: %d";
    v18 = 1273;
    goto LABEL_115;
  }

  if (a4)
  {
    v10 = (a3 + 8);
    do
    {
      if ((*(v10 - 2) & 0xDFDFDF) == 0x464159 && *(v10 - 1) == 7)
      {
        result = strstr(v10, "XAT");
        if (result)
        {
          result = strstr(v10, "ACL");
          if (result)
          {
            result = strstr(v10, "AFT");
            if (result)
            {
              result = strstr(v10, "AFR");
              if (result)
              {
                *(v7 + 32) = 1;
              }
            }
          }
        }
      }

      v10 += 1032;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t lookupEntry(void *a1, char *__s1)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = a1[2];
    v5 = a1[5];
    v6 = strcmp(__s1, (v5 + *v4));
    if ((v6 & 0x80000000) == 0)
    {
      if (!v6)
      {
        return 0;
      }

      v7 = v2 - 1;
      v8 = strcmp(__s1, (v5 + v4[23 * v2 - 23]));
      if (v8 <= 0)
      {
        if (!v8)
        {
          return v2 - 1;
        }

        v11 = 0;
        while (v11 + 1 < v7)
        {
          v9 = (v7 + v11) >> 1;
          v12 = strcmp(__s1, (v5 + v4[23 * v9]));
          if (v12 < 0)
          {
            v7 = (v7 + v11) >> 1;
          }

          else
          {
            v11 = (v7 + v11) >> 1;
          }

          if (!v12)
          {
            return v9;
          }
        }
      }
    }
  }

  return -1;
}

size_t mergeContents(size_t result, uint64_t a2, void *a3)
{
  *a3 = result;
  if (result)
  {
    v4 = result;
    result = 0;
    v5 = (a2 + 8);
    v6 = v4;
    do
    {
      v7 = *v5;
      v5 += 7;
      result += v7;
      --v6;
    }

    while (v6);
    if (result)
    {
      v8 = calloc(result, 8uLL);
      v9 = v8;
      if (v8)
      {
        v10 = 0;
        for (i = 0; i != v4; ++i)
        {
          v12 = (a2 + 56 * i);
          v13 = v12[1];
          if (v13)
          {
            v14 = 0;
            v15 = v10;
            do
            {
              v10 = v15 + 1;
              v8[v15] = (v12[5] + *(v12[2] + v14));
              v14 += 184;
              ++v15;
              --v13;
            }

            while (v13);
          }
        }

        qsort(v8, v10, 8uLL, stringCompareProc);
        v16 = 0;
        if (v10)
        {
          v17 = v9;
          do
          {
            if (v16)
            {
              v18 = *v17;
              if (!strcmp(v9[v16 - 1], *v17))
              {
                goto LABEL_18;
              }
            }

            else
            {
              v18 = *v17;
            }

            v9[v16++] = v18;
LABEL_18:
            ++v17;
            --v10;
          }

          while (v10);
        }

        *(a3 + 1) = v16;
        v19 = calloc(v16, 0x4B8uLL);
        *(a3 + 4) = v19;
        if (v19)
        {
          if (v16)
          {
            v20 = 1200;
            v21 = v9;
            v22 = v16;
            while (1)
            {
              v23 = (*(a3 + 4) + v20);
              v24 = v23 - 300;
              *v23 = -1;
              v25 = strlen(*v21);
              if (BlobBufferStore(a3 + 40, *v21, v25 + 1, v24))
              {
                break;
              }

              ++v21;
              v20 += 1208;
              if (!--v22)
              {
                goto LABEL_24;
              }
            }

            v49 = "Storing entry path";
            v50 = 1640;
          }

          else
          {
LABEL_24:
            v26 = 0;
            while (1)
            {
              v27 = a2 + 56 * v26;
              if (*(v27 + 8))
              {
                break;
              }

LABEL_38:
              *(a3 + v26++ + 153232) = *(v27 + 48);
              if (v26 == v4)
              {
                free(v9);
                return 0;
              }
            }

            v28 = 0;
            v29 = 0;
            v51 = v26;
            v52 = a2 + 56 * v26;
            while (1)
            {
              v30 = *(v27 + 16) + 184 * v28;
              v53 = v28;
              if (v29 < v16)
              {
                v31 = *(v27 + 40);
                v32 = *v30;
                v33 = *(a3 + 7);
                v34 = (*(a3 + 4) + 1208 * v29);
                while (strcmp((v31 + v32), (v33 + *v34)))
                {
                  v34 += 151;
                  if (v16 == ++v29)
                  {
                    goto LABEL_42;
                  }
                }
              }

              if (v29 == v16)
              {
LABEL_42:
                v49 = "unable to locate path in merged array";
                v50 = 1654;
                goto LABEL_44;
              }

              *(v30 + 48) = v29;
              v26 = v51;
              v35 = *(a3 + 4) + 1208 * v29 + (v51 << 7);
              v36 = *(v30 + 72);
              v37 = *(v30 + 56);
              v38 = *(v30 + 104);
              *(v35 + 48) = *(v30 + 88);
              *(v35 + 64) = v38;
              v39 = *(v30 + 168);
              v40 = *(v30 + 152);
              v41 = *(v30 + 136);
              *(v35 + 80) = *(v30 + 120);
              *(v35 + 96) = v41;
              *(v35 + 112) = v40;
              *(v35 + 128) = v39;
              *(v35 + 16) = v37;
              *(v35 + 32) = v36;
              v42 = *(v30 + 72);
              v27 = v52;
              if (v42 != -1)
              {
                v42 = *(*(v52 + 16) + 184 * v42 + 48);
              }

              *(v35 + 56) = 0;
              v43 = (v35 + 56);
              *(v35 + 32) = v42;
              *(v35 + 64) = 0;
              if (*(v30 + 104))
              {
                v44 = *(v52 + 40);
                v45 = *(v30 + 96);
                v46 = strlen((v44 + v45));
                v47 = BlobBufferStore(a3 + 40, (v44 + v45), v46 + 1, v43);
                v27 = v52;
                if (v47)
                {
                  break;
                }
              }

              v28 = v53 + 1;
              if ((v53 + 1) >= *(v27 + 8))
              {
                goto LABEL_38;
              }
            }

            v49 = "Storing slink path";
            v50 = 1678;
          }

LABEL_44:
          v48 = 0;
        }

        else
        {
          v48 = *__error();
          v49 = "malloc";
          v50 = 1633;
        }
      }

      else
      {
        v48 = *__error();
        v49 = "malloc";
        v50 = 1610;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "mergeContents", v50, 18, v48, v49);
      free(v9);
      free(*(a3 + 4));
      BlobBufferFree(a3 + 40);
      bzero(a3, 0x989F0uLL);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t applyRules(const __CFArray *a1, const __CFArray *a2, const __CFArray *a3, const __CFArray *a4, const __CFArray *a5, const __CFArray *a6, const __CFArray *a7, const __CFArray *a8, uint64_t *a9, int a10)
{
  v17 = *a9;
  v53 = a9[1];
  if ((markFilesMatchingPrefixArray(a9, a1, 1, a10) & 0x80000000) != 0 || (markFilesMatchingPrefixArray(a9, a2, 2, a10) & 0x80000000) != 0 || (markFilesMatchingPrefixArray(a9, a3, 4, a10) & 0x80000000) != 0 || (markFilesMatchingPrefixArray(a9, a4, 16, a10) & 0x80000000) != 0 || (markFilesMatchingPrefixArray(a9, a5, 32, a10) & 0x80000000) != 0 || (markFilesMatchingPrefixArray(a9, a6, 64, a10) & 0x80000000) != 0 || (markFilesMatchingPrefixArray(a9, a7, 512, a10) & 0x80000000) != 0 || (markFilesMatchingPrefixArray(a9, a8, 1024, a10) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!v53)
  {
    return 0;
  }

  v18 = 0;
  for (i = 0; i != v53; ++i)
  {
    v20 = a9[4];
    v21 = v20 + v18;
    v22 = *(v20 + v18 + 1172);
    if ((v22 & 2) != 0 && !*(v20 + (v17 << 7) - 112 + v18))
    {
      *(v21 + 1172) = v22 & 0xFFFFFFFD;
      if (a10 >= 2)
      {
        v23 = "???";
        if ((v22 & 4) != 0)
        {
          v23 = "Remove";
        }

        v24 = "Include";
        if (v22)
        {
          v24 = "Exclude";
          v23 = "Exclude";
        }

        if ((v22 & 5) != 0)
        {
          v25 = v23;
        }

        else
        {
          v25 = "None";
        }

        if (a9[1] <= i)
        {
          v26 = 0;
        }

        else
        {
          v26 = (a9[7] + *v21);
        }

        fprintf(*MEMORY[0x29EDCA610], "Rules from %s to %s (include not in output): %s\n", v24, v25, v26);
      }
    }

    v18 += 1208;
  }

  v27 = 0;
  for (j = 0; j != v53; ++j)
  {
    v29 = a9[4];
    v30 = v29 + v27;
    v31 = *(v29 + v27 + 1172);
    if (v31)
    {
      v32 = v31 & 0xFFFFFFEE;
      if ((v31 & 0x10) == 0)
      {
        v32 = *(v29 + v27 + 1172);
      }

      v33 = v32 & 0x20;
      if ((v32 & 0x20) != 0)
      {
        v32 &= 0xFFFFFFDD;
      }

      v34 = *(v29 + v27 + 1172) & 0x10 | v33;
      v35 = v32 & 0x40;
      if ((v32 & 0x40) != 0)
      {
        v32 &= 0xFFFFFFBB;
      }

      if (v34 | v35)
      {
        *(v30 + 1172) = v32;
      }

      if (a10 >= 2)
      {
        if (v32 != v31)
        {
          v36 = "Remove";
          if ((v31 & 4) == 0)
          {
            v36 = "???";
          }

          if ((v31 & 2) != 0)
          {
            v36 = "Include";
          }

          if (v31)
          {
            v36 = "Exclude";
          }

          if ((v31 & 7) != 0)
          {
            v37 = v36;
          }

          else
          {
            v37 = "None";
          }

          if ((v32 & 7) != 0)
          {
            v38 = "Exclude";
            if ((v32 & 1) == 0)
            {
              v38 = "Remove";
              if ((v32 & 4) == 0)
              {
                v38 = "???";
              }

              if ((v32 & 2) != 0)
              {
                v38 = "Include";
              }
            }
          }

          else
          {
            v38 = "None";
          }

          if (a9[1] <= j)
          {
            v39 = 0;
          }

          else
          {
            v39 = (a9[7] + *(v29 + v27));
          }

          fprintf(*MEMORY[0x29EDCA610], "Rules from %s to %s (no-xxx): %s\n", v37, v38, v39);
          v31 = *(v30 + 1172);
        }
      }

      else
      {
        v31 = v32;
      }

      v40 = v31 & 0xFFFFFFFA;
      if ((v31 & 2) == 0)
      {
        v40 = v31;
      }

      v41 = v40 & 1;
      if (v40)
      {
        v40 &= ~4u;
      }

      if (v31 & 2 | v41)
      {
        *(v30 + 1172) = v40;
      }

      if (a10 >= 2 && v40 != v31)
      {
        v42 = "Include";
        if (v31)
        {
          v42 = "Exclude";
        }

        v43 = "Remove";
        if ((v31 & 4) == 0)
        {
          v43 = "???";
        }

        if ((v31 & 3) != 0)
        {
          v44 = v42;
        }

        else
        {
          v44 = v43;
        }

        if ((v31 & 7) != 0)
        {
          v45 = v44;
        }

        else
        {
          v45 = "None";
        }

        if ((v40 & 7) != 0)
        {
          v46 = "Exclude";
          if ((v40 & 1) == 0)
          {
            v46 = "Include";
            if ((v40 & 2) == 0)
            {
              v46 = "???";
              if ((v40 & 4) != 0)
              {
                v46 = "Remove";
              }
            }
          }
        }

        else
        {
          v46 = "None";
        }

        if (a9[1] <= j)
        {
          v47 = 0;
        }

        else
        {
          v47 = (a9[7] + *(a9[4] + v27));
        }

        fprintf(*MEMORY[0x29EDCA610], "Rules from %s to %s (priority): %s\n", v45, v46, v47);
      }
    }

    v27 += 1208;
  }

  v48 = 0;
  v49 = 1172;
  do
  {
    v50 = a9[4];
    v51 = *(v50 + v49);
    if ((v51 & 0x200) != 0)
    {
      *(v50 + v49) = v51 & 0xFFFFFAFF;
      if (a10 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Label PREPARE: %s\n");
      }
    }

    else if ((v51 & 0x400) != 0)
    {
      *(v50 + v49) = v51 & 0xFFFFFCFF;
      if (a10 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Label DATA: %s\n");
      }
    }

    else
    {
      *(v50 + v49) = v51 | 0x100;
      if (a10 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Label MAIN: %s\n");
      }
    }

    result = 0;
    ++v48;
    v49 += 1208;
  }

  while (v53 != v48);
  return result;
}

CFIndex markFilesMatchingPrefixArray(void *a1, CFArrayRef theArray, int a3, int a4)
{
  v41 = *MEMORY[0x29EDCA608];
  if (!theArray)
  {
    return 0;
  }

  v6 = theArray;
  result = CFArrayGetCount(theArray);
  if (!result)
  {
    return result;
  }

  v9 = result;
  if (result < 1)
  {
LABEL_61:
    v30 = a1[1];
    if (v30)
    {
      v31 = 0;
      v32 = (a1[4] + 1172);
      do
      {
        if ((*v32 & a3) != 0)
        {
          ++v31;
        }

        v32 += 302;
        --v30;
      }

      while (v30);
    }

    else
    {
      v31 = 0;
    }

    if (a4 > 1)
    {
      if (a3)
      {
        if (a3)
        {
          v33 = "Exclude";
        }

        else if ((a3 & 2) != 0)
        {
          v33 = "Include";
        }

        else if ((a3 & 4) != 0)
        {
          v33 = "Remove";
        }

        else if ((a3 & 0x10) != 0)
        {
          v33 = "NoExclude";
        }

        else if ((a3 & 0x20) != 0)
        {
          v33 = "NoInclude";
        }

        else if ((a3 & 0x40) != 0)
        {
          v33 = "NoRemove";
        }

        else if ((a3 & 0x100) != 0)
        {
          v33 = "Main";
        }

        else if ((a3 & 0x200) != 0)
        {
          v33 = "Prepare";
        }

        else
        {
          v33 = "Data";
          if ((a3 & 0x400) == 0)
          {
            v33 = "???";
          }
        }
      }

      else
      {
        v33 = "None";
      }

      fprintf(*MEMORY[0x29EDCA610], "%s rules: %zu total entries match\n", v33, v31);
    }

    return 0;
  }

  v10 = 0;
  v11 = "Data";
  if ((a3 & 0x400) == 0)
  {
    v11 = "???";
  }

  v12 = "Include";
  if (a3)
  {
    v12 = "Exclude";
  }

  if ((a3 & 3) == 0)
  {
    v12 = "Remove";
  }

  if ((a3 & 7) == 0)
  {
    v12 = "NoExclude";
  }

  if ((a3 & 0x17) == 0)
  {
    v12 = "NoInclude";
  }

  if ((a3 & 0x37) == 0)
  {
    v12 = "NoRemove";
  }

  if ((a3 & 0x77) == 0)
  {
    v12 = "Main";
  }

  if ((a3 & 0x200) != 0)
  {
    v11 = "Prepare";
  }

  if ((a3 & 0x177) != 0)
  {
    v11 = v12;
  }

  if (!a3)
  {
    v11 = "None";
  }

  v36 = result;
  v37 = v11;
  v35 = v6;
  while (2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
    if (!ValueAtIndex)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "markFilesMatchingPrefixArray", 2053, 18, 0, "CFArrayGetValueAtIndex(%ld) returned 0");
      return 0xFFFFFFFFLL;
    }

    v14 = ValueAtIndex;
    bzero(buffer, 0x400uLL);
    CFStringGetCString(v14, buffer, 1024, 0x8000100u);
    v15 = strlen(buffer);
    if (!v15)
    {
      goto LABEL_60;
    }

    if (buffer[v15 - 1] == 47)
    {
      buffer[v15 - 1] = 0;
      if (v15 == 1)
      {
        goto LABEL_60;
      }
    }

    v16 = a1[1];
    if (!v16)
    {
      goto LABEL_60;
    }

    bzero(__s2, 0x400uLL);
    v17 = strlen(buffer);
    if (v17 - 1024 <= 0xFFFFFFFFFFFFFC00)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "markFilesMatchingPrefix", 1986, 18, 0, "invalid prefix length");
      break;
    }

    v18 = v17;
    __memcpy_chk();
    v38 = __s2[v18 - 1];
    if (v38 == 36)
    {
      __s2[--v18] = 0;
    }

    v19 = a1[4];
    v20 = a1[7];
    if (strcmp((v20 + *v19), __s2) < 0)
    {
      if (v16 == 1)
      {
        v21 = 1;
      }

      else
      {
        v34 = a4;
        v22 = 0;
        v23 = v16;
        v24 = v16;
        do
        {
          v25 = v22 + (v23 >> 1);
          if (strcmp((v20 + v19[151 * v25]), __s2) >= 0)
          {
            v24 = v25;
          }

          else
          {
            v22 = v25;
          }

          v23 = v24 - v22;
        }

        while (v24 - v22 > 1);
        v21 = v22 + 1;
        a4 = v34;
        v6 = v35;
      }
    }

    else
    {
      v21 = 0;
    }

    if (v21 >= v16)
    {
      v9 = v36;
      goto LABEL_60;
    }

    v26 = 0;
    v27 = 1208 * v21 + 1172;
    do
    {
      if (a1[1] <= v21)
      {
        v28 = 0;
        if (strncmp(0, __s2, v18))
        {
          break;
        }
      }

      else
      {
        v28 = (a1[7] + *(a1[4] + v27 - 1172));
        if (strncmp(v28, __s2, v18))
        {
          break;
        }
      }

      if (!v28[v18])
      {
        *(a1[4] + v27) |= a3;
        ++v26;
        v29 = "%s rule [%s] exact match: %s\n";
        if (a4 <= 1)
        {
          goto LABEL_56;
        }

LABEL_55:
        fprintf(*MEMORY[0x29EDCA610], v29, v37, __s2, v28);
        goto LABEL_56;
      }

      if (v38 != 36 && v28[v18] == 47)
      {
        *(a1[4] + v27) |= a3;
        ++v26;
        v29 = "%s rule [%s] prefix match: %s\n";
        if (a4 >= 2)
        {
          goto LABEL_55;
        }
      }

LABEL_56:
      ++v21;
      v27 += 1208;
    }

    while (v16 != v21);
    v6 = v35;
    v9 = v36;
    if ((v26 & 0x80000000) == 0)
    {
LABEL_60:
      if (++v10 == v9)
      {
        goto LABEL_61;
      }

      continue;
    }

    break;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "markFilesMatchingPrefixArray", 2061, 18, 0, "markFilesMatchingPrefix failed");
  return 0xFFFFFFFFLL;
}

uint64_t fixOpsForHardLinkClusters(uint64_t *a1, int a2)
{
  v61 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v4 = a1[1];
  v5 = *a1 - 1;
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  if (v4)
  {
    v6 = 0;
    v7 = a1[4];
    v8 = (v7 + 40);
    do
    {
      v9 = v7 + 1208 * v6;
      if (*(v9 + (v5 << 7) + 16) == 1)
      {
        v10 = (*(v9 + 1168) & 0x14) == 0 || v5 == 0;
        if (!v10)
        {
          v11 = v59;
          v12 = v8;
          v13 = v5;
          do
          {
            v14 = *v12;
            if (*(v12 - 6) == 1 && v14 != -1)
            {
              if (v14 <= *v11)
              {
                v14 = *v11;
              }

              *v11 = v14;
            }

            v12 += 16;
            ++v11;
            --v13;
          }

          while (v13);
        }
      }

      ++v6;
      v8 += 151;
    }

    while (v6 != v4);
  }

  if (!v5)
  {
LABEL_26:
    if (v4)
    {
      v19 = 0;
      v20 = a1[4];
      v21 = (v20 + 40);
      do
      {
        v22 = v20 + 1208 * v19;
        if (*(v22 + (v5 << 7) + 16) == 1 && (*(v22 + 1168) & 0x14) != 0 && v5 != 0)
        {
          v24 = v57;
          v25 = v21;
          v26 = v5;
          do
          {
            v27 = *v25;
            if (*(v25 - 6) == 1 && v27 != -1)
            {
              ++*(*v24 + 4 * v27);
            }

            v25 += 16;
            ++v24;
            --v26;
          }

          while (v26);
        }

        ++v19;
        v21 += 151;
      }

      while (v19 != v4);
    }

    v29 = 0;
    v55 = v3 - 2;
    v30 = 1;
    while (1)
    {
      v54 = v30;
      if (v4)
      {
        break;
      }

LABEL_71:
      v30 = 0;
      v29 = 1;
      if ((v54 & 1) == 0)
      {
        v18 = 0;
        if (!v5)
        {
          return v18;
        }

        goto LABEL_76;
      }
    }

    v31 = 0;
    v32 = 16;
    v33 = 40;
    while (1)
    {
      v34 = a1[4];
      v35 = v34 + 1208 * v31;
      if (*(v35 + (v5 << 7) + 16) == 1)
      {
        v36 = *(v35 + 1168);
        if (v29)
        {
          if ((v36 & 0x10) != 0)
          {
            goto LABEL_49;
          }
        }

        else if ((v36 & 4) != 0)
        {
LABEL_49:
          if (v5)
          {
            v37 = 0;
            v38 = v34 + v33;
            v39 = v34 + v32;
            v40 = 1;
LABEL_51:
            v41 = (v38 + (v37 << 7));
            v42 = (v39 + (v37 << 7));
            do
            {
              v44 = *v41;
              v41 += 16;
              v43 = v44;
              LODWORD(v44) = *v42;
              v42 += 32;
              if (v44 == 1 && v43 != -1)
              {
                v46 = *(v57 + v37);
                v47 = *(v46 + 4 * v43);
                v48 = __OFSUB__(v47, 1);
                v49 = v47 - 1;
                if (!((v49 < 0) ^ v48 | (v49 == 0)))
                {
                  v40 = 0;
                  *(v46 + 4 * v43) = v49;
                  v10 = v55 == v37++;
                  if (!v10)
                  {
                    goto LABEL_51;
                  }

                  goto LABEL_64;
                }
              }

              ++v37;
            }

            while (v5 != v37);
            if (v40)
            {
              goto LABEL_70;
            }

LABEL_64:
            if (a2 >= 2)
            {
              if (a1[1] <= v31)
              {
                v50 = 0;
              }

              else
              {
                v50 = (a1[7] + *v35);
              }

              fprintf(*MEMORY[0x29EDCA610], "ARCHIVE entry with invalid cluster mapping: %s\n", v50);
            }

            *(v35 + 1168) = *(v35 + 1168) & 0xFFFFFFEA | 1;
          }
        }
      }

LABEL_70:
      ++v31;
      v33 += 1208;
      v32 += 1208;
      if (v31 == v4)
      {
        goto LABEL_71;
      }
    }
  }

  *&v57[0] = calloc(*&v59[0] + 1, 4uLL);
  if (*&v57[0])
  {
    v16 = 0;
    do
    {
      if (v3 - 2 == v16)
      {
        goto LABEL_26;
      }

      v17 = calloc(*(v59 + v16 + 1) + 1, 4uLL);
      *(v57 + ++v16) = v17;
    }

    while (v17);
    if (v16 >= v5)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v18 = 0xFFFFFFFFLL;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "fixOpsForHardLinkClusters", 2318, 18, 0, "calloc");
LABEL_76:
  v51 = v57;
  do
  {
    v52 = *v51++;
    free(v52);
    --v5;
  }

  while (v5);
  return v18;
}

uint64_t initOps(unint64_t a1, unint64_t a2, unint64_t a3, int a4, uint64_t *a5, int a6)
{
  v6 = a5[1];
  v67 = *a5;
  if (v6)
  {
    v7 = 0;
    v8 = v67 - 1;
    v52 = a1 >> 2;
    v9 = 16;
    v10 = 88;
    v11 = 56;
    v12 = 140;
    v13 = 24;
    v66 = a6;
    v64 = a5[1];
    v65 = a5;
    do
    {
      v14 = a5[4];
      v15 = v14 + 1208 * v7;
      if (a5[1] <= v7)
      {
        v16 = 0;
      }

      else
      {
        v16 = (a5[7] + *v15);
      }

      v17 = v15 + (v8 << 7);
      v20 = *(v17 + 16);
      v19 = v17 + 16;
      v18 = v20;
      if ((v20 | 2) != 3)
      {
        goto LABEL_22;
      }

      v21 = *(v15 + 1172);
      if (v21)
      {
        *(v15 + 1168) |= 0x20u;
        if (a6 >= 2)
        {
          fprintf(*MEMORY[0x29EDCA610], "IGNORE excluded entry present in output: %s\n");
          goto LABEL_21;
        }
      }

      else if (v18 == 1 && *(v19 + 16) != v7)
      {
        *(v15 + 1168) |= 8u;
        if (a6 >= 2)
        {
          fprintf(*MEMORY[0x29EDCA610], "LINK: %s\n");
          goto LABEL_21;
        }
      }

      else if (v67 == 1)
      {
        *(v15 + 1168) |= 1u;
        if (a6 >= 2)
        {
          fprintf(*MEMORY[0x29EDCA610], "ARCHIVE full replacement: %s\n");
          goto LABEL_21;
        }
      }

      else
      {
        if (!*(v19 + 124) && !*(v19 + 120))
        {
          if ((v21 & 2) != 0)
          {
            *(v15 + 1168) |= 1u;
            if (a6 < 2)
            {
              goto LABEL_22;
            }

            fprintf(*MEMORY[0x29EDCA610], "ARCHIVE include: %s\n");
          }

          else
          {
            v22 = (v14 + v9);
            v23 = v8;
            do
            {
              v24 = *v22;
              v22 += 32;
              if (v24 != v18)
              {
                *(v15 + 1168) |= 1u;
                if (a6 < 2)
                {
                  goto LABEL_22;
                }

                fprintf(*MEMORY[0x29EDCA610], "ARCHIVE differing types: %s\n");
                goto LABEL_21;
              }

              --v23;
            }

            while (v23);
            if (v18 == 3)
            {
              v51 = v16;
              v53 = *(v19 + 40);
              v54 = a5[7];
              v25 = (v14 + v11);
              while (1)
              {
                v58 = v8;
                v60 = v25 + 16;
                if (strcmp((v54 + v53), (v54 + *v25)))
                {
                  goto LABEL_42;
                }

                v25 = v60;
                v8 = v58 - 1;
                if (v58 == 1)
                {
                  goto LABEL_41;
                }
              }
            }

            if (v18 == 1)
            {
              v51 = v16;
              v26 = v14 + v10;
              while (1)
              {
                v59 = v8;
                v61 = v26;
                if (sha1cmp(v19 + 72, v26))
                {
                  break;
                }

                v26 = v61 + 128;
                v8 = v59 - 1;
                if (v59 == 1)
                {
LABEL_41:
                  v27 = 0;
                  v28 = 1;
                  a6 = v66;
                  v6 = v64;
                  a5 = v65;
                  v8 = v67 - 1;
                  v16 = v51;
                  goto LABEL_43;
                }
              }

LABEL_42:
              v28 = 0;
              v27 = 1;
              a6 = v66;
              v6 = v64;
              a5 = v65;
              v8 = v67 - 1;
              v16 = v51;
LABEL_43:
              v29 = 0;
              v30 = (v14 + v12);
              v31 = v8;
              while (1)
              {
                if (((*(v19 + 112) == *(v30 - 3)) & vminv_u16(vmovn_s32(vceqq_s32(*(v19 + 56), *(v30 - 17))))) == 0)
                {
                  v29 = 1;
                }

                if (*v30 || *(v30 - 1))
                {
                  break;
                }

                v30 += 32;
                if (!--v31)
                {
                  v32 = 0;
                  goto LABEL_51;
                }
              }

              v32 = 1;
LABEL_51:
              v33 = v29 != 0;
            }

            else
            {
              v27 = 0;
              v28 = 1;
              if (v8)
              {
                goto LABEL_43;
              }

              v32 = 0;
              v33 = 0;
            }

            if (a4)
            {
              v34 = v18 == 1;
            }

            else
            {
              v34 = 0;
            }

            v35 = !v34;
            if ((v33 & v35) != 0)
            {
              v36 = 1;
            }

            else
            {
              v36 = v32;
            }

            if (!(v36 | v27))
            {
              *(v15 + 1168) |= 0x10u;
              if (a6 >= 2)
              {
                v39 = *MEMORY[0x29EDCA610];
                if (v33)
                {
                  fprintf(v39, "KEEP WITH FIXUP: %s\n");
                }

                else
                {
                  fprintf(v39, "KEEP: %s\n");
                }

                a6 = v66;
                v6 = v64;
                a5 = v65;
                v8 = v67 - 1;
              }

              goto LABEL_22;
            }

            if (v18 == 3)
            {
              v37 = *(v15 + 1168);
              *(v15 + 1168) = v37 | 1;
              if (a6 < 2)
              {
                if (v28)
                {
                  *(v15 + 1168) = v37 | 0x101;
                }

                goto LABEL_22;
              }

              v38 = v28;
              fprintf(*MEMORY[0x29EDCA610], "ARCHIVE differing symlink: %s\n", v16);
              v8 = v67 - 1;
              v6 = v64;
              a5 = v65;
              a6 = v66;
              if ((v38 & 1) == 0)
              {
                goto LABEL_22;
              }

              *(v15 + 1168) |= 0x100u;
              fprintf(*MEMORY[0x29EDCA610], "ARCHIVE_NOREMOVE symlink attribute changes only: %s\n");
            }

            else
            {
              v40 = *a5;
              if (*a5)
              {
                v41 = 0;
                v42 = (v14 + v13);
                do
                {
                  v44 = *v42;
                  v42 += 16;
                  v43 = v44;
                  if (v41 <= v44)
                  {
                    v41 = v43;
                  }

                  --v40;
                }

                while (v40);
              }

              else
              {
                v41 = 0;
              }

              if (*(v19 + 8) < a1 || v41 >= a2)
              {
                *(v15 + 1168) |= 1u;
                if (a6 < 2)
                {
                  goto LABEL_22;
                }

                fprintf(*MEMORY[0x29EDCA610], "ARCHIVE different files, not in patch range: %s\n");
              }

              else if (v41 >= a3 && (v62 = v36, IsCompressed = statIsCompressed(*(v19 + 68)), v36 = v62, v8 = v67 - 1, v6 = v64, a5 = v65, a6 = v66, IsCompressed))
              {
                *(v15 + 1168) |= 1u;
                if (v66 < 2)
                {
                  goto LABEL_22;
                }

                fprintf(*MEMORY[0x29EDCA610], "ARCHIVE different files, not in patch range for AFSC-compressed files: %s\n");
              }

              else if (v36)
              {
                *(v15 + 1168) |= 1u;
                if (a6 < 2)
                {
                  goto LABEL_22;
                }

                fprintf(*MEMORY[0x29EDCA610], "ARCHIVE different files, attributes differ: %s\n");
              }

              else
              {
                v47 = *(v19 + 8);
                if (v52 <= v47 >> 3)
                {
                  v48 = v47 >> 3;
                }

                else
                {
                  v48 = v52;
                }

                v49 = v8;
                if (v8)
                {
                  while (*(v14 + v13) >= v48)
                  {
                    v14 += 128;
                    if (!--v49)
                    {
                      goto LABEL_102;
                    }
                  }

                  *(v15 + 1168) |= 1u;
                  if (a6 >= 2)
                  {
                    fprintf(*MEMORY[0x29EDCA610], "ARCHIVE one input is too small: %s\n");
                    goto LABEL_21;
                  }

                  goto LABEL_22;
                }

LABEL_102:
                *(v15 + 1168) |= 4u;
                if (a6 < 2)
                {
                  goto LABEL_22;
                }

                fprintf(*MEMORY[0x29EDCA610], "PATCH different files: %s\n");
              }
            }
          }

LABEL_21:
          v8 = v67 - 1;
          v6 = v64;
          a5 = v65;
          a6 = v66;
          goto LABEL_22;
        }

        *(v15 + 1168) |= 1u;
        if (a6 >= 2)
        {
          fprintf(*MEMORY[0x29EDCA610], "ARCHIVE entry with XAT/ACL: %s\n");
          goto LABEL_21;
        }
      }

LABEL_22:
      ++v7;
      v9 += 1208;
      v10 += 1208;
      v11 += 1208;
      v12 += 1208;
      v13 += 1208;
    }

    while (v7 != v6);
  }

  if (v67 == 1 || (fixOpsForHardLinkClusters(a5, a6) & 0x80000000) == 0)
  {
    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "initOps", 2611, 18, 0, "fixOpsForInPlace");
  return 0xFFFFFFFFLL;
}

uint64_t updateOps(void *a1, int a2, int a3)
{
  v3 = a1[1];
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v68 = *a1 - 1;
    v7 = *a1 << 7;
    while (1)
    {
      v8 = a1[4];
      if (a1[1] <= v6)
      {
        v9 = 0;
      }

      else
      {
        v9 = a1[7] + *(v8 + v5);
      }

      v10 = *(v8 + v7 - 112 + v5);
      if (v10 == 2)
      {
        goto LABEL_25;
      }

      v11 = *(v8 + v5 + 1172);
      if (v10 || (*(v8 + v5 + 1172) & 1) == 0)
      {
        break;
      }

      *(v8 + v5 + 1168) |= 0x20u;
      v18 = "IGNORE excluded entry not present in output: %s\n";
      if (a3 > 1)
      {
        goto LABEL_24;
      }

LABEL_25:
      ++v6;
      v5 += 1208;
      if (v3 == v6)
      {
        v19 = 0;
        v20 = 0;
        v65 = v7 - 1320;
        v21 = -1;
        v22 = 16;
        v23 = 140;
        v81 = 1208;
        v76 = v3;
        v24 = v68;
        while (1)
        {
          v79 = v23;
          v75 = a1[4];
          v25 = v75 + 1208 * v20;
          v26 = a1[1];
          v78 = v21;
          if (v26 <= v20)
          {
            v27 = 0;
          }

          else
          {
            v27 = (a1[7] + *v25);
          }

          v28 = v25 + (v24 << 7);
          v80 = *(v28 + 16);
          v73 = v28 + 16;
          v29 = strlen(v27);
          v77 = v22;
          if (!v29)
          {
            *(v25 + 1168) |= 1u;
            if (a3 >= 2)
            {
              fwrite("ARCHIVE root directory: .\n", 0x1AuLL, 1uLL, *MEMORY[0x29EDCA610]);
            }

            goto LABEL_94;
          }

          v30 = v29;
          v72 = v75 + 1208 * v20;
          __s2 = v27;
          if (v24)
          {
            v31 = 0;
            v32 = 0;
            v33 = (v75 + v22);
            v34 = 1;
            v35 = v24;
            do
            {
              v37 = *v33;
              v33 += 32;
              v36 = v37;
              v38 = v37 == 2;
              if (v37 == 2)
              {
                v39 = v34;
              }

              else
              {
                v39 = 0;
              }

              if (v38)
              {
                v40 = 1;
              }

              else
              {
                v40 = v31;
              }

              if (v36)
              {
                v32 = 1;
                v34 = v39;
                v31 = v40;
              }

              --v35;
            }

            while (v35);
            v41 = v31 != 0;
            v42 = v34 == 0;
            v43 = v32 == 0;
          }

          else
          {
            v42 = 0;
            v41 = 0;
            v43 = 1;
          }

          if (v80 == 2 || v41)
          {
            v69 = v42;
            v67 = v43;
            v71 = v19;
            v44 = v20 + 1;
            v45 = 0;
            if (v20 + 1 < v3)
            {
              v46 = v75 + v81;
              while (1)
              {
                v47 = v26 <= v44 ? 0 : (a1[7] + *v46);
                if (strlen(v47) <= v30 || v47[v30] != 47)
                {
                  break;
                }

                if (*(v46 + 1168))
                {
                  v45 = 1;
                }

                ++v44;
                v46 += 1208;
                v3 = v76;
                if (v76 == v44)
                {
                  v44 = v76;
                  goto LABEL_60;
                }
              }

              v3 = v76;
LABEL_60:
              v24 = v68;
            }

            if (v80 != 2 && v41 || v69)
            {
              v48 = v71;
              v49 = v20;
              if (v20 < v44)
              {
                do
                {
                  v50 = a1[4];
                  v51 = v50 + v48;
                  v52 = *(v50 + v48 + 1168);
                  if ((v52 & 2) == 0)
                  {
                    v53 = a1[1] <= v49 ? 0 : (a1[7] + *v51);
                    if ((*(v50 + v48 + 1172) & 3) == 0)
                    {
                      *(v51 + 1168) = v52 | 2;
                      if (a3 >= 2)
                      {
                        fprintf(*MEMORY[0x29EDCA610], "REMOVE contents of removed directory: %s\n", v53);
                      }
                    }
                  }

                  ++v49;
                  v48 += 1208;
                }

                while (v44 != v49);
              }

              v24 = v68;
              v19 = v71;
              if (v80 == 2)
              {
                if (*(v72 + 1172))
                {
                  *(v72 + 1168) |= 0x20u;
                  if (a3 >= 2)
                  {
                    fprintf(*MEMORY[0x29EDCA610], "IGNORE excluded directory with type change: %s\n");
                  }
                }

                else if (!v45 || *(v72 + 1172) & 2 | a2)
                {
                  *(v72 + 1168) |= 1u;
                  if (a3 >= 2)
                  {
                    fprintf(*MEMORY[0x29EDCA610], "ARCHIVE differing types directory: %s\n");
                  }
                }
              }
            }

            else
            {
              v54 = *(v72 + 1172);
              if (v54)
              {
                *(v72 + 1168) |= 0x20u;
                v19 = v71;
                if (a3 >= 2)
                {
                  fprintf(*MEMORY[0x29EDCA610], "IGNORE excluded directory: %s\n");
                }

                goto LABEL_94;
              }

              v55 = v73;
              v56 = *(v73 + 68);
              if ((v56 & 0x800000) != 0)
              {
                v3 = v76;
                if (v44 != v20 + 1)
                {
                  fprintf(*MEMORY[0x29EDCA610], "WARNING: firmlink directory is not empty: %s\n", __s2);
                }

                v19 = v71;
                *(v72 + 1168) |= 0x200u;
                if (a3 >= 2)
                {
                  fprintf(*MEMORY[0x29EDCA610], "FIRMLINK directory: %s\n");
                }

                goto LABEL_94;
              }

              if ((v54 & 2) != 0)
              {
                v19 = v71;
                *(v72 + 1168) |= 1u;
                v3 = v76;
                if (a3 >= 2)
                {
                  fprintf(*MEMORY[0x29EDCA610], "ARCHIVE included directory: %s\n");
                }

                goto LABEL_94;
              }

              v19 = v71;
              if (*(v73 + 124) || *(v73 + 120))
              {
                *(v72 + 1168) |= 1u;
                v3 = v76;
                if (a3 >= 2)
                {
                  fprintf(*MEMORY[0x29EDCA610], "ARCHIVE directory with XAT/ACL: %s\n");
                }
              }

              else
              {
                if (v67)
                {
                  while (__s2[v30] != 47)
                  {
                    if (!--v30)
                    {
                      goto LABEL_123;
                    }
                  }

                  if (!v20)
                  {
LABEL_123:
                    v62 = -1;
                    goto LABEL_128;
                  }

                  v59 = v75 + v71;
                  v60 = v78;
                  while (1)
                  {
                    if (*(v59 + v65) == 2)
                    {
                      v61 = v26 <= v60 ? 0 : (a1[7] + *(v59 - 1208));
                      if (strlen(v61) == v30 && !memcmp(v61, __s2, v30))
                      {
                        break;
                      }
                    }

                    v59 -= 1208;
                    if (--v60 == -1)
                    {
                      v62 = -1;
                      goto LABEL_127;
                    }
                  }

                  v62 = *(v59 + v65 + 60);
LABEL_127:
                  v24 = v68;
                  v19 = v71;
                  v55 = v73;
LABEL_128:
                  v63 = *(v72 + 1168);
                  if (a2 || !v45 || v56 || v55[14] || v55[15] != v62 || v55[16] != 493)
                  {
                    *(v72 + 1168) = v63 | 1;
                    v3 = v76;
                    if (a3 >= 2)
                    {
                      fprintf(*MEMORY[0x29EDCA610], "ARCHIVE new directory uid=%u gid=%u mode=0%04o flags=0x%08x parent_gid=%u: %s\n");
                    }
                  }

                  else
                  {
                    *(v72 + 1168) = v63 | 0x40;
                    v3 = v76;
                    if (a3 >= 2)
                    {
                      fprintf(*MEMORY[0x29EDCA610], "AUTO MKDIR new directory uid=%u gid=%u mode=0%04o parent_gid=%u: %s\n");
                    }
                  }

                  goto LABEL_94;
                }

                if (v24)
                {
                  v57 = (v75 + v79);
                  v58 = v24;
                  while (*(v57 - 17) == *(v73 + 56) && *(v57 - 16) == *(v73 + 60) && *(v57 - 15) == *(v73 + 64) && *(v57 - 14) == v56 && *(v57 - 3) == *(v73 + 112) && !*v57 && !*(v57 - 1))
                  {
                    v57 += 32;
                    if (!--v58)
                    {
                      goto LABEL_110;
                    }
                  }
                }

                else
                {
LABEL_110:
                  if (!a2)
                  {
                    *(v72 + 1168) |= 0x10u;
                    v3 = v76;
                    if (a3 >= 2)
                    {
                      fprintf(*MEMORY[0x29EDCA610], "KEEP dir: %s\n");
                    }

                    goto LABEL_94;
                  }
                }

                *(v72 + 1168) |= 1u;
                v3 = v76;
                if (a3 >= 2)
                {
                  fprintf(*MEMORY[0x29EDCA610], "ARCHIVE directory with different attributes: %s\n");
                }
              }
            }
          }

LABEL_94:
          ++v20;
          v22 = v77 + 1208;
          v81 += 1208;
          v23 = v79 + 1208;
          v19 += 1208;
          v21 = v78 + 1;
          if (v20 == v3)
          {
            return 0;
          }
        }
      }
    }

    if ((v11 & 3) != 0)
    {
      goto LABEL_25;
    }

    v13 = v8 + v5;
    v14 = *(v13 + 1168);
    if ((v14 & 0x100) != 0)
    {
      goto LABEL_25;
    }

    v15 = v11 & 4;
    v16 = (v14 & 0x209) != 0 || v10 == 0;
    if (!v16 && v15 == 0)
    {
      goto LABEL_25;
    }

    *(v13 + 1168) = v14 | 2;
    v18 = "REMOVE archive, links, firmlinks, remove rule: %s\n";
    if (a3 < 2)
    {
      goto LABEL_25;
    }

LABEL_24:
    fprintf(*MEMORY[0x29EDCA610], v18, v9);
    goto LABEL_25;
  }

  return 0;
}

uint64_t checkOps(void *a1)
{
  v1 = a1[1];
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  v6 = MEMORY[0x29EDCA610];
  do
  {
    v7 = a1[4] + v3;
    v8 = *(v7 + 1168);
    if (!v8)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "checkOps", 2876, 18, 0, "entry is not labelled: %s");
      goto LABEL_20;
    }

    if ((~v8 & 5) == 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "checkOps", 2883, 18, 0, "entry is labelled PATCH + ARCHIVE: %s");
LABEL_20:
      dumpContentsEntries(*v6, a1, v4);
      v5 = 0;
      goto LABEL_21;
    }

    if ((~v8 & 6) == 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "checkOps", 2890, 18, 0, "entry is labelled PATCH + REMOVE: %s");
      goto LABEL_20;
    }

    if ((~v8 & 0x12) == 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "checkOps", 2897, 18, 0, "entry is labelled KEEP + REMOVE: %s");
      goto LABEL_20;
    }

    v9 = *(v7 + 1172);
    if ((v8 & 2) != 0 && (v9 & 2) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "checkOps", 2904, 18, 0, "entry is labelled REMOVE and matches INCLUDE rule: %s");
      goto LABEL_20;
    }

    if (v8 & 2) != 0 && (v9)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "checkOps", 2911, 18, 0, "entry is labelled REMOVE and matches EXCLUDE rule: %s");
      goto LABEL_20;
    }

    if ((v8 & 2) == 0 && (v9 & 4) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "checkOps", 2918, 18, 0, "entry is not labelled REMOVE and matches REMOVE rule: %s");
      goto LABEL_20;
    }

LABEL_21:
    ++v4;
    v3 += 1208;
  }

  while (v1 != v4);
  if (v5)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

FILE *dumpContentsEntries(FILE *result, void *a2, unint64_t a3)
{
  v3 = a2;
  v4 = result;
  v5 = *a2;
  if (a3 == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  if (a3 == -1)
  {
    v33 = a2[1];
    if (!v33)
    {
      return result;
    }
  }

  else
  {
    v33 = a3 + 1;
  }

  v7 = 1208 * v6 + 72;
  do
  {
    v34 = v3[4];
    v8 = v34 + 1208 * v6;
    fprintf(v4, "index=%zu", v6);
    v9 = *(v8 + 1168);
    fwrite(" ops=", 5uLL, 1uLL, v4);
    if (v9)
    {
      v10 = 65;
    }

    else
    {
      v10 = 45;
    }

    fputc(v10, v4);
    if ((v9 & 2) != 0)
    {
      v11 = 82;
    }

    else
    {
      v11 = 45;
    }

    fputc(v11, v4);
    if ((v9 & 8) != 0)
    {
      v12 = 76;
    }

    else
    {
      v12 = 45;
    }

    fputc(v12, v4);
    if ((v9 & 4) != 0)
    {
      v13 = 80;
    }

    else
    {
      v13 = 45;
    }

    fputc(v13, v4);
    if ((v9 & 0x10) != 0)
    {
      v14 = 75;
    }

    else
    {
      v14 = 45;
    }

    fputc(v14, v4);
    if ((v9 & 0x40) != 0)
    {
      v15 = 77;
    }

    else
    {
      v15 = 45;
    }

    fputc(v15, v4);
    if ((v9 & 0x20) != 0)
    {
      v16 = 73;
    }

    else
    {
      v16 = 45;
    }

    fputc(v16, v4);
    v17 = *(v8 + 1172);
    fwrite(" rules=", 7uLL, 1uLL, v4);
    if (v17)
    {
      v18 = 69;
    }

    else
    {
      v18 = 45;
    }

    fputc(v18, v4);
    if ((v17 & 2) != 0)
    {
      v19 = 73;
    }

    else
    {
      v19 = 45;
    }

    fputc(v19, v4);
    if ((v17 & 4) != 0)
    {
      v20 = 82;
    }

    else
    {
      v20 = 45;
    }

    fputc(v20, v4);
    if ((v17 & 0x10) != 0)
    {
      v21 = 101;
    }

    else
    {
      v21 = 45;
    }

    fputc(v21, v4);
    if ((v17 & 0x20) != 0)
    {
      v22 = 105;
    }

    else
    {
      v22 = 45;
    }

    fputc(v22, v4);
    if ((v17 & 0x40) != 0)
    {
      v23 = 114;
    }

    else
    {
      v23 = 45;
    }

    fputc(v23, v4);
    fwrite(" labels=", 8uLL, 1uLL, v4);
    if ((v17 & 0x100) != 0)
    {
      v24 = 77;
    }

    else
    {
      v24 = 45;
    }

    fputc(v24, v4);
    if ((v17 & 0x400) != 0)
    {
      v25 = 68;
    }

    else
    {
      v25 = 45;
    }

    fputc(v25, v4);
    if ((v17 & 0x200) != 0)
    {
      v26 = 80;
    }

    else
    {
      v26 = 45;
    }

    fputc(v26, v4);
    if (v5)
    {
      v27 = 0;
      v28 = v34 + v7;
      do
      {
        fprintf(v4, " V%zu[", v27);
        v29 = *(v28 - 56);
        if (v29 > 3)
        {
          v30 = 63;
        }

        else
        {
          v30 = dword_298069850[v29];
        }

        fprintf(v4, "type=%c", v30);
        fprintf(v4, " uid=%u gid=%u mode=0%04o flags=0x%02x duz=%llu size=%llu link=%zu", *v28, *(v28 + 4), *(v28 + 8), *(v28 + 12), *(v28 + 40), *(v28 - 48), *(v28 - 40));
        fputc(93, v4);
        ++v27;
        v28 += 128;
      }

      while (v5 != v27);
    }

    v3 = a2;
    if (a2[1] <= v6)
    {
      v31 = 0;
    }

    else
    {
      v31 = (a2[7] + *(a2[4] + 1208 * v6));
    }

    result = fprintf(v4, " path=%s\n", v31);
    ++v6;
    v7 += 1208;
  }

  while (v6 != v33);
  return result;
}

uint64_t processPatchThreadProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = *MEMORY[0x29EDCA608];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(a1 + 8);
  if (!v10)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v11 = patchCacheOpenFromURL(v10, 0);
  if (v11)
  {
LABEL_5:
    v12 = 1;
    goto LABEL_6;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "processPatchThreadProc", 3093, 18, 0, "patchCacheOpenFromURL: %s (continue without cache)", *(a1 + 8));
  v12 = 0;
LABEL_6:
  while (2)
  {
    v13 = v12;
    do
    {
      add = atomic_fetch_add(*a1, 1u);
      if ((add & 0x80000000) != 0 || v9 <= add)
      {
        goto LABEL_61;
      }

      v15 = *(a1 + 48);
      v16 = *(v15 + 32);
    }

    while ((*(v16 + 1208 * add + 1168) & 4) == 0);
    if (*(a1 + 56))
    {
      v17 = *v15 - 2;
      if (*v15 >= 2uLL)
      {
        v19 = v12;
        v20 = v11;
        v21 = 0;
        v22 = *v15 - 1;
        v23 = *(v16 + 1208 * add + (v22 << 7) + 24);
        v24 = (v16 + 1208 * add + 24);
        v25 = v23;
        do
        {
          v27 = *v24;
          v24 += 16;
          v26 = v27;
          v25 += v27;
          if (v21 <= v27)
          {
            v21 = v26;
          }

          --v22;
        }

        while (v22);
        v28 = *(a1 + 44);
        if (v21 >> 28)
        {
          v29 = v23 >> 28 == 0;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          BXDiffMaxMemoryUsage = GetBXDiffMaxMemoryUsage(v21, v23, v28, *(a1 + 36));
        }

        else
        {
          BXDiffMaxMemoryUsage = GetLargeFileMaxMemoryUsage(v21, v23, v28);
        }

        v18 = (((2 * ((3 * v17 * v23) & 0x1FFFFFFFFFFFFFFFLL) * 0x28F5C28F5C28F5C3uLL) >> 64) >> 2) + 50 * v17 * v23 / 0x64 + v25 + BXDiffMaxMemoryUsage;
        v11 = v20;
        v13 = v19;
      }

      else
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "getPatchMaxMemory", 3039, 18, "too little variants");
        v18 = 0;
      }

      v56 = v18;
      if ((MemGateReserve(*(a1 + 56), v18) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "processPatchThreadProc", 3111, 18, 0, "MemGateReserve");
LABEL_67:
        v51 = 0xFFFFFFFFLL;
        goto LABEL_64;
      }

      v15 = *(a1 + 48);
      v16 = *(v15 + 32);
    }

    else
    {
      v56 = 0;
    }

    v57 = v9;
    v58 = v11;
    v59 = v13;
    v55 = v16 + 1208 * add;
    if (*(v15 + 8) <= add)
    {
      v31 = 0;
    }

    else
    {
      v31 = (*(v15 + 56) + *(v16 + 1208 * add));
    }

    v32 = *v15;
    v53 = *(a1 + 40);
    v54 = *(a1 + 16);
    v64 = 0;
    memset(v63, 0, sizeof(v63));
    bzero(__s, 0x400uLL);
    v61 = 0;
    memset(v60, 0, sizeof(v60));
    if (v32)
    {
      v33 = (v15 + 64);
      v34 = v16 + 1208 * add + 88;
      v35 = v60;
      v36 = v63;
      v37 = v32;
      while (1)
      {
        v38 = malloc(0x400uLL);
        if (!v38)
        {
          v45 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "createPatch", 2962, 18, v45, "malloc");
          goto LABEL_47;
        }

        *v36 = v38;
        if ((concatPath(v38, 0x400uLL, v33, v31) & 0x80000000) != 0)
        {
          break;
        }

        v39 = *v34;
        v40 = *(v34 + 16);
        v34 += 128;
        *(v35 + 4) = v40;
        *v35 = v39;
        v35 = (v35 + 20);
        v33 += 1024;
        ++v36;
        if (!--v37)
        {
          goto LABEL_35;
        }
      }

      v44 = 2964;
    }

    else
    {
LABEL_35:
      if ((concatPath(__s, 0x400uLL, (v15 + 611392), v31) & 0x80000000) == 0)
      {
        v41 = strlen(__s);
        makePath(__s, v41);
        v11 = v58;
        v42 = BXDiffWithCache(v32, v63, v60, __s, v58, v54, a1 + 36, (v55 + 1184), (v55 + 1192), (v15 + 625056));
        if (v42 < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "createPatch", 2983, 18, 0, "computing patch: %s", __s);
          v43 = 1;
        }

        else
        {
          if (!v42 || *(v55 + 1184) >= *(v55 + 1192))
          {
            if (v53 >= 2)
            {
              fprintf(*MEMORY[0x29EDCA610], "ARCHIVE patch is larger: %s\n", v31);
            }

            *(v55 + 1168) = *(v55 + 1168) & 0xFFFFFFFA | 1;
            unlink(__s);
          }

          v43 = 0;
        }

        goto LABEL_48;
      }

      v44 = 2968;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "createPatch", v44, 18, 0, "concatPath failed: %s");
LABEL_47:
    v43 = 1;
    v11 = v58;
LABEL_48:
    v9 = v57;
    if (v32)
    {
      v46 = v63;
      do
      {
        v47 = *v46++;
        free(v47);
        --v32;
      }

      while (v32);
    }

    if (v43)
    {
      v48 = *(a1 + 48);
      if (v48[1] <= add)
      {
        v49 = 0;
      }

      else
      {
        v49 = (v48[7] + *(v48[4] + 1208 * add));
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "processPatchThreadProc", 3116, 18, 0, "Patching failed %s", v49);
      v59 = 0;
    }

    v50 = *(a1 + 56);
    if (v50 && (MemGateFree(v50, v56) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "processPatchThreadProc", 3119, 18, 0, "MemGateFree");
      goto LABEL_67;
    }

    v12 = v59;
    if (v59)
    {
      continue;
    }

    break;
  }

LABEL_61:
  if (v12)
  {
    v51 = 0;
  }

  else
  {
    v51 = 0xFFFFFFFFLL;
  }

LABEL_64:
  patchCacheClose(v11, a2, a3, a4, a5, a6, a7, a8);
  return v51;
}

uint64_t computePatches(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v36 = a2;
  v54 = *MEMORY[0x29EDCA608];
  v37 = 0;
  v13 = *(a4 + 1);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  memset(&v43, 0, sizeof(v43));
  if (a6)
  {
    if (a6 <= 0x64)
    {
      v8 = getInstalledMemorySize() / 0x64uLL * a6;
    }

    if (v8 <= 0x40000000)
    {
      v8 = 0x40000000;
    }

    if ((MemGateInit(&v43, v8, v9) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "computePatches", 3152, 18, 0, "MemGateInit");
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v8 = 1;
      goto LABEL_41;
    }
  }

  if (v13 >= 1)
  {
    v14 = *(a3 + 8);
    if (v14)
    {
      v15 = 0;
      v16 = (*(a3 + 32) + 1168);
      do
      {
        v15 += (*v16 >> 2) & 1;
        v16 += 302;
        --v14;
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    *__str = 0u;
    if (v8)
    {
      snprintf(__str, 0x50uLL, "(memoryLimit %llu MB)", v8 >> 20);
    }

    pc_info("Generating patches for %zu entries on %d threads %s\n", a2, a3, a4, a5, a6, a7, a8, v15, v9, __str);
  }

  v19 = calloc(v9, 0x40uLL);
  v21 = malloc(8 * v9);
  v18 = v21;
  if (!v19 || !v21)
  {
    v33 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "computePatches", 3171, 18, v33, "malloc");
LABEL_39:
    v17 = 0;
LABEL_40:
    v20 = 0;
    goto LABEL_41;
  }

  if (v9 >= 1)
  {
    v22 = (v9 + 1) & 0xFFFFFFFE;
    v23 = vdupq_n_s64(v9 - 1);
    v24 = xmmword_2980690E0;
    v25 = v21 + 1;
    v26 = vdupq_n_s64(2uLL);
    v27 = v19;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v23, v24));
      if (v28.i8[0])
      {
        *(v25 - 1) = v27;
      }

      if (v28.i8[4])
      {
        *v25 = v27 + 64;
      }

      v24 = vaddq_s64(v24, v26);
      v25 += 2;
      v27 += 128;
      v22 -= 2;
    }

    while (v22);
    v29 = ThreadPoolCreate(v9, v21, processPatchThreadProc);
    if (v29)
    {
      v17 = v29;
      if (v8)
      {
        v30 = &v43;
      }

      else
      {
        v30 = 0;
      }

      while (1)
      {
        Worker = ThreadPoolGetWorker(v17);
        if (!Worker)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "computePatches", 3180, 18, 0, "ThreadPoolGetWorker");
          goto LABEL_40;
        }

        *(Worker + 48) = a3;
        *Worker = &v37;
        *(Worker + 8) = a1;
        *(Worker + 16) = v36;
        v32 = *a4;
        *(Worker + 44) = *(a4 + 2);
        *(Worker + 36) = v32;
        *(Worker + 56) = v30;
        if ((ThreadPoolRunWorker(v17) & 0x80000000) != 0)
        {
          break;
        }

        LODWORD(v9) = v9 - 1;
        if (!v9)
        {
          goto LABEL_37;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "computePatches", 3187, 18, 0, "ThreadPoolRunWorker");
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v34 = ThreadPoolCreate(v9, v21, processPatchThreadProc);
  if (!v34)
  {
LABEL_38:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "computePatches", 3174, 18, 0, "ThreadPoolCreate");
    goto LABEL_39;
  }

  v17 = v34;
LABEL_37:
  v20 = 1;
LABEL_41:
  if ((ThreadPoolDestroy(v17) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "computePatches", 3192, 18, 0, "ThreadPoolDestroy");
    v20 = 0;
  }

  free(v19);
  free(v18);
  if (v8 && (MemGateDestroy(&v43) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "computePatches", 3195, 18, 0, "MemGateDestroy");
    v20 = 0;
  }

  if (v20)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t DirectoryDiff(uint64_t *a1)
{
  v1 = a1;
  v184 = *MEMORY[0x29EDCA608];
  DefaultNThreads = *(a1 + 21);
  v2 = *(a1 + 22);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v179 = *v1;
  if (*v1 >= 9)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "DirectoryDiff", 5575, 18, 0, "n > %d not supported", 8);
    return 0xFFFFFFFFLL;
  }

  memset(&v181, 0, sizeof(v181));
  v5 = *(v1 + 23);
  enterThreadErrorContext();
  v6 = malloc(0x989F0uLL);
  v7 = v6;
  if (!v6)
  {
    v40 = *__error();
    v41 = "malloc";
    v42 = 5590;
    goto LABEL_57;
  }

  v174 = DefaultNThreads;
  v183 = 0;
  v176 = v5;
  v172 = (v5 >> 1) & 1;
  v173 = v2;
  v171 = (v6 + 625024);
  v8 = v6 + 9280;
  memset(v182, 0, sizeof(v182));
  bzero(v6, 0x989F0uLL);
  v16 = 0;
  v17 = 0;
  *(v7 + 24) = 1;
  v18 = (v1 + 3);
  v175 = v7;
  v19 = (v7 + 64);
  v178 = v1;
  v20 = (v1 + 4);
  v21 = (v7 + 9280);
  v22 = v19;
  while (1)
  {
    v23 = v18;
    if (v17 < v179)
    {
      v23 = (v178[1] + v16);
    }

    v24 = *v23;
    if (*v23)
    {
      v25 = 1;
    }

    else
    {
      v25 = (v176 & 1) == 0;
    }

    if (v25)
    {
      if (!realpath_DARWIN_EXTSN(*v23, v22))
      {
        v46 = *__error();
        v170 = v24;
        v44 = "%s";
        v45 = 5603;
        goto LABEL_63;
      }

      if (stat(v22, &v181) || (v181.st_mode & 0xF000) != 0x4000)
      {
        v170 = v24;
        v44 = "Not a directory: %s";
        v45 = 5604;
        goto LABEL_60;
      }
    }

    v26 = v20;
    if (v17 >= v179)
    {
      break;
    }

    v27 = v178[2];
    if (v27)
    {
      v26 = (v27 + v16);
      break;
    }

LABEL_24:
    ++v17;
    v16 += 8;
    v22 += 1024;
    v21 += 1024;
    if (v179 + 1 == v17)
    {
      v1 = v178;
      if (!v178[5])
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "DirectoryDiff", 5616, 18, 0, "Missing patchFilename");
LABEL_96:
        v43 = -1;
        goto LABEL_64;
      }

      v29 = v2;
      if (v2 >= 1)
      {
        pc_info("DirectoryDiff:\n", v9, v10, v11, v12, v13, v14, v15);
        if (v179)
        {
          v30 = 0;
          if (v179 <= 1)
          {
            v31 = 1;
          }

          else
          {
            v31 = v179;
          }

          v32 = MEMORY[0x29EDCA610];
          do
          {
            if (v19[1024 * v30])
            {
              fprintf(*v32, "  input directory %d: %s\n", v30 + 1, &v19[1024 * v30]);
            }

            v33 = &v8[1024 * v30++];
            if (*v33)
            {
              fprintf(*v32, "  input manifest %d: %s\n", v30, v33);
            }
          }

          while (v30 != v31);
        }

        if (v19[1024 * v179])
        {
          fprintf(*MEMORY[0x29EDCA610], "  output directory: %s\n", &v19[1024 * v179]);
        }

        if (v8[1024 * v179])
        {
          fprintf(*MEMORY[0x29EDCA610], "  output manifest: %s\n", &v8[1024 * v179]);
        }

        v34 = MEMORY[0x29EDCA610];
        v35 = "patch file";
        if (v176)
        {
          v35 = "diff list file";
        }

        fprintf(*MEMORY[0x29EDCA610], "  %s: %s\n", v35, v178[5]);
        if (v178[6])
        {
          fprintf(*v34, "  cache URL: %s\n", v178[6]);
          if (*(v178 + 14))
          {
            v36 = "yes";
          }

          else
          {
            v36 = "no";
          }

          fprintf(*v34, "  update cache: %s\n", v36);
        }

        v37 = v178[12];
        if (v37)
        {
          if (v37 <= 0x64)
          {
            v37 *= getInstalledMemorySize() / 0x64uLL;
          }

          v38 = 0x40000000;
          if (v37 > 0x40000000)
          {
            v38 = v37;
          }

          fprintf(*v34, "  soft memory limit: %llu MB\n", v38 >> 20);
        }

        v39 = *v34;
        if (*(v178 + 20))
        {
          fprintf(v39, "  diff level: %d\n");
        }

        else
        {
          fprintf(v39, "  diff level: default (%d)\n");
        }

        fprintf(*v34, "  worker threads: %d\n", v174);
        fprintf(*v34, "  patch threads: %d\n", v174);
        fprintf(*v34, "  min patch size: %llu B\n", v178[8]);
        fprintf(*v34, "  archive block size: %zu B\n", v178[9]);
        dumpStringArray("excludeList", v178[13]);
        dumpStringArray("includeList", v178[14]);
        dumpStringArray("noExcludeList", v178[15]);
        dumpStringArray("noIncludeList", v178[16]);
      }

      if ((v176 & 1) == 0)
      {
        snprintf(v175 + 611392, 0x400uLL, "%s_tmp_XXXXXX", v178[5]);
        v49 = strlen(v175 + 611392);
        makePath(v175 + 611392, v49);
        if (!mkdtemp(v175 + 611392))
        {
          v77 = __error();
          v7 = v175;
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "DirectoryDiff", 5663, 18, *v77, v175 + 611392);
          v43 = -1;
          goto LABEL_65;
        }
      }

      v50 = v179 + 1;
      v51 = v182;
      while (1)
      {
        RealTime = getRealTime();
        if (*v8)
        {
          if ((loadManifest(v8, v51) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "DirectoryDiff", 5672, 18, 0, "loading manifest %s");
            goto LABEL_96;
          }

          v60 = getRealTime();
          if (v173 >= 1)
          {
            pc_info("Loaded manifest:  %s (%.1fs)\n", v53, v54, v55, v56, v57, v58, v59, v8, v60 - RealTime);
LABEL_87:
            dumpContentsStats(v51);
          }
        }

        else
        {
          if ((loadDirectory(v19, v174, v51) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "DirectoryDiff", 5678, 18, 0, "loading directory %s");
            goto LABEL_96;
          }

          v68 = getRealTime();
          if (v173 >= 1)
          {
            pc_info("Loaded directory: %s (%.1fs)\n", v61, v62, v63, v64, v65, v66, v67, v19, v68 - RealTime);
            goto LABEL_87;
          }
        }

        v51 = (v51 + 56);
        v19 += 1024;
        v8 += 1024;
        if (!--v50)
        {
          v7 = v175;
          if ((mergeContents(v179 + 1, v182, v175) & 0x80000000) != 0)
          {
            v41 = "merging contents";
            v42 = 5686;
            goto LABEL_160;
          }

          if (v173 < 1 || (pc_info("Merged %zu inputs and 1 output\n", v69, v70, v71, v72, v73, v74, v75, *v175 - 1), v173 == 1))
          {
            v76 = 0;
            goto LABEL_120;
          }

          v78 = *(v175 + 1);
          if (v78)
          {
            v79 = 0;
            v80 = 0;
            v81 = 0;
            v82 = 0;
            v83 = 0;
            v84 = *(v175 + 4);
            v85 = *v175 - 1;
            v86 = (v84 + 144);
            while (1)
            {
              if (*(v84 + 1208 * v82 + (v85 << 7) + 16))
              {
                if (*v175 == 1)
                {
                  goto LABEL_114;
                }

                if (*(v84 + 1208 * v82 + 16))
                {
                  v87 = -1;
                  v88 = *v175 - 2;
                  v89 = v86;
                  do
                  {
                    v90 = v87;
                    if (!v88)
                    {
                      break;
                    }

                    v91 = *v89;
                    v89 += 32;
                    --v87;
                    --v88;
                  }

                  while (v91);
                  if (-v90 >= v85)
                  {
LABEL_114:
                    ++v83;
                    goto LABEL_116;
                  }
                }

                else
                {
                  v92 = 0;
                  v93 = -1;
                  v94 = *v175 - 2;
                  do
                  {
                    v95 = v93;
                    if (!v94)
                    {
                      break;
                    }

                    v96 = v86[v92];
                    --v93;
                    v92 += 32;
                    --v94;
                  }

                  while (!v96);
                  if (-v95 >= v85)
                  {
                    ++v80;
                    goto LABEL_116;
                  }
                }

                ++v81;
              }

              else
              {
                ++v79;
              }

LABEL_116:
              ++v82;
              v86 += 302;
              if (v82 == v78)
              {
                goto LABEL_119;
              }
            }
          }

          v83 = 0;
          v81 = 0;
          v80 = 0;
          v79 = 0;
LABEL_119:
          v97 = MEMORY[0x29EDCA610];
          fprintf(*MEMORY[0x29EDCA610], "%12zu not in the output\n", v79);
          fprintf(*v97, "%12zu in the output, and in all inputs\n", v83);
          fprintf(*v97, "%12zu in the output, and in some but not all inputs\n", v81);
          fprintf(*v97, "%12zu in the output, and not in any inputs\n", v80);
          v76 = 1;
          v7 = v175;
LABEL_120:
          if ((applyRules(v178[13], v178[14], 0, v178[15], v178[16], 0, 0, 0, v7, v173) & 0x80000000) != 0)
          {
            v41 = "applyRules";
            v42 = 5720;
            goto LABEL_160;
          }

          if ((initOps(v178[8], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, v172, v7, v173) & 0x80000000) != 0)
          {
            v41 = "initOps";
            v42 = 5723;
            goto LABEL_160;
          }

          if (v76)
          {
            pc_info("Initial labels (regular files / symbolic links)\n", v98, v99, v100, v101, v102, v103, v104);
            dumpContentsStats(v7);
          }

          v105 = *(v7 + 8);
          if (v105)
          {
            v106 = 0;
            v107 = (*(v7 + 32) + 1168);
            do
            {
              v106 += (*v107 >> 2) & 1;
              v107 += 302;
              --v105;
            }

            while (v105);
            if ((v176 & 1) == 0)
            {
              if (!v106)
              {
                goto LABEL_150;
              }

              v180.st_dev = *(v178 + 20);
              *&v180.st_mode = v173;
              LODWORD(v180.st_ino) = v174;
              v108 = getRealTime();
              if ((computePatches(v178[6], *(v178 + 14), v7, &v180.st_dev, v174, v178[12], v109, v110) & 0x80000000) != 0)
              {
                v41 = "computePatches";
                v42 = 5755;
              }

              else
              {
                if (v173 >= 1)
                {
                  v118 = v171;
                  v119 = &v171[2];
                  v120 = &v171[2].u64[1];
                  v121 = atomic_load(&v171[2].u64[1]);
                  v177 = v121;
                  v122 = atomic_load(v118 + 8);
                  v123 = atomic_load(v119);
                  v124 = atomic_load(v118 + 7);
                  v125 = v124 + v123;
                  v126 = getRealTime();
                  pc_info("Generated patches (%.1f s)\n", v127, v128, v129, v130, v131, v132, v133, v126 - v108);
                  v134 = MEMORY[0x29EDCA610];
                  v135 = *MEMORY[0x29EDCA610];
                  v136 = atomic_load(v119);
                  v7 = v175;
                  fprintf(v135, "%12lld 1:1 patches cache lookups\n", v136);
                  v137 = *v134;
                  v138 = atomic_load(v120);
                  fprintf(v137, "%12lld 1:1 patches cache hits\n", v138);
                  v139 = *v134;
                  v140 = atomic_load(v118 + 6);
                  fprintf(v139, "%12lld 1:1 patches cache updates\n", v140);
                  v141 = *v134;
                  v142 = atomic_load(v118 + 10);
                  fprintf(v141, "%12lld 1:1 patches created\n", v142);
                  v143 = *v134;
                  v144 = atomic_load(v118 + 7);
                  v1 = v178;
                  fprintf(v143, "%12lld combo patches cache lookups\n", v144);
                  v145 = *v134;
                  v146 = atomic_load(v118 + 8);
                  fprintf(v145, "%12lld combo patches cache hits\n", v146);
                  v147 = *v134;
                  v148 = atomic_load(v118 + 9);
                  fprintf(v147, "%12lld combo patches cache updates\n", v148);
                  v149 = *v134;
                  v150 = atomic_load(v118 + 11);
                  fprintf(v149, "%12lld combo patches created\n", v150);
                  v151 = *v134;
                  v152 = atomic_load(v118 + 12);
                  fprintf(v151, "%12lld cache lookups FAILED\n", v152);
                  v153 = *v134;
                  v154 = atomic_load(v118 + 13);
                  fprintf(v153, "%12lld cache updates FAILED\n", v154);
                  if (v125 >= 1)
                  {
                    fprintf(*v134, "%11.0f%% cache hits\n", (v122 + v177) * 100.0 / v125);
                  }
                }

                if (v76)
                {
                  pc_info("Updated labels after patch generation\n", v111, v112, v113, v114, v115, v116, v117);
                  dumpContentsStats(v7);
                }

                v29 = v173;
LABEL_150:
                updateOps(v7, 0, v29);
                if (v29 >= 1)
                {
                  pc_info("Final labels (all entries)\n", v161, v162, v163, v164, v165, v166, v167);
                  dumpContentsStats(v7);
                }

                if ((checkOps(v7) & 0x80000000) != 0)
                {
                  v41 = "checkOps";
                  v42 = 5794;
                }

                else
                {
                  if ((generatePatch() & 0x80000000) == 0)
                  {
                    v168 = v1[17];
                    if (v168)
                    {
                      v43 = 0;
                      *v168 = *v171;
                      *(v168 + 16) = vextq_s8(v171[1], v171[1], 8uLL);
                      goto LABEL_65;
                    }

                    goto LABEL_149;
                  }

                  v41 = "generatePatch";
                  v42 = 5797;
                }
              }

LABEL_160:
              v40 = 0;
LABEL_57:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "DirectoryDiff", v42, 18, v40, v41, v169);
              v43 = -1;
              goto LABEL_65;
            }
          }

          else
          {
            if ((v176 & 1) == 0)
            {
              goto LABEL_150;
            }

            v106 = 0;
          }

          if (v173 >= 1)
          {
            pc_info("Generating diff list, %zu entries\n", v98, v99, v100, v101, v102, v103, v104, v106);
          }

          v155 = fopen(v178[5], "w");
          if (v155)
          {
            v156 = v155;
            v157 = *(v7 + 8);
            if (v157)
            {
              v158 = 0;
              v159 = 1168;
              do
              {
                v160 = *(v7 + 32);
                if ((*(v160 + v159) & 4) != 0)
                {
                  fprintf(v156, "%s\n", (*(v7 + 56) + *(v160 + v159 - 1168)));
                  v157 = *(v7 + 8);
                }

                ++v158;
                v159 += 1208;
              }

              while (v158 < v157);
            }

            fclose(v156);
LABEL_149:
            v43 = 0;
            goto LABEL_65;
          }

          v40 = *__error();
          v169 = v178[5];
          v41 = "%s";
          v42 = 5740;
          goto LABEL_57;
        }
      }
    }
  }

  v28 = *v26;
  if (!*v26)
  {
    goto LABEL_24;
  }

  if (!realpath_DARWIN_EXTSN(*v26, v21))
  {
    v46 = *__error();
    v170 = v28;
    v44 = "%s";
    v45 = 5612;
    goto LABEL_63;
  }

  if (!stat(v21, &v181) && (v181.st_mode & 0xF000) == 0x8000)
  {
    goto LABEL_24;
  }

  v170 = v28;
  v44 = "Not a regular file: %s";
  v45 = 5613;
LABEL_60:
  v46 = 0;
LABEL_63:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "DirectoryDiff", v45, 18, v46, v44, v170);
  v43 = -1;
  v1 = v178;
LABEL_64:
  v7 = v175;
LABEL_65:
  memset(&v180, 0, sizeof(v180));
  if (*(v7 + 611392) && !stat((v7 + 611392), &v180) && (v180.st_mode & 0xF000) == 0x4000)
  {
    removeTree((v7 + 611392));
  }

  v47 = v179 + 1;
  v48 = &v182[1] + 1;
  do
  {
    free(*(v48 - 1));
    BlobBufferFree(v48);
    v48 += 7;
    --v47;
  }

  while (v47);
  free(*(v7 + 32));
  BlobBufferFree(v7 + 40);
  free(v7);
  LODWORD(result) = leaveThreadErrorContext(v1[18], 0, 0);
  if (result >= 0)
  {
    return v43;
  }

  else
  {
    return result;
  }
}

uint64_t generatePatch()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v8 = v4;
  v60 = v3;
  v9 = v2;
  v59 = v1;
  v10 = v0;
  v79[3] = *MEMORY[0x29EDCA608];
  v11 = *v2;
  v12 = v2[1];
  v13 = v2 + 77824;
  v66 = 0;
  v67 = 0;
  if (v4 >= 1)
  {
    v14 = "combo delta";
    if (v11 == 2)
    {
      v14 = "delta";
    }

    if (v11 == 1)
    {
      v14 = "full replacement";
    }

    pc_info("Generating %s directory patch\n", v1, v2, v3, v4, v5, v6, v7, v14);
  }

  v64 = 0u;
  v65 = 0u;
  __buf = 0;
  memset(v79, 0, 20);
  *(v13 + 153) = 0u;
  v15 = 0;
  if (v12)
  {
    v16 = *(v9 + 4);
    v17 = v12;
    do
    {
      if (*(v16 + (v11 << 7) - 112) == 1)
      {
        v15 += *(v16 + 1168) & 1;
      }

      v16 += 1208;
      --v17;
    }

    while (v17);
  }

  v18 = OFileStreamCreateWithFilename(v10, -1);
  v63 = v18;
  if (!v18)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4502, 18, 0, "creating output file: %s");
LABEL_44:
    v30 = 0;
    v31 = 0;
LABEL_45:
    v32 = 0;
    v33 = 0;
LABEL_46:
    v34 = 0xFFFFFFFFLL;
    goto LABEL_47;
  }

  v19 = v18;
  memset(v79, 0, 20);
  __buf = 0x3031464649444944;
  if (OFileStreamWrite(v18, &__buf, 0x1CuLL) != 28)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4508, 18, 0, "write DIDIFF10 header", v52);
    goto LABEL_44;
  }

  Pos = OFileStreamGetPos(v19);
  *&v65 = 0;
  *(&v65 + 1) = v19;
  *(&v64 + 1) = OFileStreamWrite;
  *&v64 = v8;
  v62 = ParallelArchiveWriterCreateLegacy(&v64);
  if (!v62)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4519, 18, 0, "creating YAA writer", v52);
    goto LABEL_44;
  }

  v55 = v13;
  v56 = v11;
  v53 = Pos;
  v54 = v8;
  if (v12)
  {
    v21 = 0;
    v61 = 0;
    v22 = 0;
    v57 = v13 + 306;
    v23 = v56 << 7;
    while (1)
    {
      v24 = *(v9 + 4);
      if (*(v9 + 1) <= v22)
      {
        v25 = 0;
      }

      else
      {
        v25 = (*(v9 + 7) + *(v24 + v21));
      }

      v26 = *(v24 + v23 + v21 - 112);
      if (!v26 || v26 == 1 && (*(v24 + v21 + 1168) & 9) == 1)
      {
        goto LABEL_39;
      }

      bzero(&v72, 0x890uLL);
      bzero(v69, 0x408uLL);
      LODWORD(v72) = 1;
      if (v26 != 1)
      {
        break;
      }

      if ((*(v24 + v21 + 1168) & 8) != 0)
      {
        v72 = 0x4800010001;
LABEL_31:
        __strlcpy_chk();
        goto LABEL_32;
      }

      v72 = 0x4600002001;
      v27 = v24 + v23 + v21;
      v28 = *(v27 - 40);
      v77 = *(v27 - 24);
      v76 = v28;
      LODWORD(v72) = 8321;
      v74 = *(v27 - 104);
LABEL_32:
      LODWORD(v72) = v72 | 0x8000;
      __strlcpy_chk();
      LODWORD(v72) = v72 | 0x1E;
      v29 = vrev64q_s32(*(v24 + v21 + v23 - 56));
      v29.i64[0] = *(v24 + v21 + v23 - 56);
      v73[0] = v29;
      if ((*(v24 + v21 + 1168) & 4) != 0)
      {
        bzero(v68, 0x400uLL);
        concatPath(v68, 0x400uLL, v9 + 611392, v25);
        *v57 += *(v24 + v23 + v21 - 16);
        if (loadFileContents(v68, &v67, &v66, 0))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4597, 18, 0, "load patch: %s");
          goto LABEL_85;
        }

        qmemcpy(v69, "BXP", 3);
        v70 = 2;
        v71 = v66;
        if (ParallelArchiveWriteEntryHeader(v62, &v72, v69, 1uLL))
        {
LABEL_74:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4605, 18, 0, "write entry header: %s");
LABEL_85:
          v30 = 0;
          v31 = 0;
          v33 = 0;
          goto LABEL_86;
        }

        if (ParallelArchiveWriteEntryData(v62, v67, v66))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4608, 18, 0, "write entry data: %s");
          goto LABEL_85;
        }
      }

      else if (ParallelArchiveWriteEntryHeader(v62, &v72, v69, 0))
      {
        goto LABEL_74;
      }

      ++v61;
      free(v67);
      v67 = 0;
LABEL_39:
      ++v22;
      v21 += 1208;
      if (v12 == v22)
      {
        goto LABEL_49;
      }
    }

    if (v26 != 3)
    {
      if (v26 != 2)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4574, 18, 0, "invalid entry type: %s");
        goto LABEL_85;
      }

      HIDWORD(v72) = 68;
      goto LABEL_32;
    }

    v72 = 0x4C00010001;
    goto LABEL_31;
  }

  v61 = 0;
LABEL_49:
  ParallelArchiveWriterDestroy(v62);
  v36 = v63;
  v37 = OFileStreamGetPos(v63);
  if (!v15)
  {
    v31 = 0;
LABEL_68:
    v48 = OFileStreamGetPos(v36);
    if (OFileStreamSetPos(v36, 0) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4700, 18, 0, "seek to patch beginning");
    }

    else
    {
      v49 = v37 - v53;
      *(v79 + 4) = v37 - v53;
      v50 = v48 - v37;
      *(&v79[1] + 4) = v50;
      if (OFileStreamWrite(v36, &__buf, 0x1CuLL) == 28)
      {
        v55[304] = v48;
        v55[305] = v50;
        if (v54 >= 1)
        {
          v51 = MEMORY[0x29EDCA610];
          fprintf(*MEMORY[0x29EDCA610], "%12lld header size\n", v53);
          fprintf(*v51, "%12zu entries in diff payload\n", v61);
          fprintf(*v51, "%12lld diff payload size\n", v49);
          fprintf(*v51, "%12zu entries in archive payload\n", v15);
          fprintf(*v51, "%12llu archive payload size\n", v55[305]);
          fprintf(*v51, "%12llu patch size\n", v55[304]);
          fprintf(*v51, "%12llu patched files disk usage\n", v55[306]);
          fprintf(*v51, "%12llu archived files disk usage\n", v55[307]);
        }

        v30 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        goto LABEL_47;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4703, 18, 0, "update DIDIFF10 header");
    }

    v30 = 0;
    goto LABEL_45;
  }

  v38 = OEncoderStreamCreate(OFileStreamWrite, OFileStreamAbort, v63, v59, 1, v59, v60);
  v33 = v38;
  if (!v38)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4624, 18, 0, "create archive encoder");
LABEL_79:
    v30 = 0;
    v31 = 0;
    v32 = 0;
    goto LABEL_46;
  }

  *&v65 = 0;
  *(&v65 + 1) = v38;
  *(&v64 + 1) = OEncoderStreamWrite;
  *&v64 = v54;
  v62 = ParallelArchiveWriterCreateLegacy(&v64);
  if (!v62)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4632, 18, 0, "create YAA writer");
    goto LABEL_79;
  }

  v31 = MemBufferCreate(0x100000uLL);
  if (v31)
  {
    v58 = v37;
    if (v12)
    {
      v39 = 0;
      v40 = 0;
      v41 = v56 << 7;
      do
      {
        v42 = *(v9 + 4);
        if (*(v9 + 1) <= v40)
        {
          v43 = 0;
        }

        else
        {
          v43 = (*(v9 + 7) + *(v42 + v39));
        }

        bzero(v69, 0x400uLL);
        if (*(v42 + v41 + v39 - 112) == 1 && (*(v42 + v39 + 1168) & 9) == 1)
        {
          concatPath(v69, 0x400uLL, &v9[1024 * v56 - 960], v43);
          v44 = v42 + v41 + v39;
          v55[307] += *(v44 - 16);
          bzero(v73, 0x888uLL);
          v72 = 0x4600002001;
          v45 = *(v44 - 40);
          v77 = *(v44 - 24);
          v76 = v45;
          LODWORD(v72) = 8705;
          v75 = *(v44 - 104);
          LODWORD(v72) = 41473;
          __strlcpy_chk();
          LODWORD(v72) = v72 | 0x1E;
          v46 = vrev64q_s32(*(v44 - 56));
          v46.i64[0] = *(v44 - 56);
          v73[0] = v46;
          if (ParallelArchiveWriteEntryHeader(v62, &v72, 0, 0))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4679, 18, 0, "write entry header: %s");
            goto LABEL_83;
          }

          v30 = IFileStreamCreateWithFilename(v69, 0, -1);
          if (!v30)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4683, 18, 0, "open archived file: %s");
            goto LABEL_86;
          }

          v47 = MemBufferTransmit(v31, 0xFFFFFFFFFFFFFFFFLL, IFileStreamRead, v30, parallelArchiveWrite, v62);
          if ((v47 & 0x8000000000000000) != 0 || v47 != *(v44 - 104))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4686, 18, 0, "write DAT blob: %s");
            goto LABEL_86;
          }

          IFileStreamDestroy(v30);
          v41 = v56 << 7;
        }

        ++v40;
        v39 += 1208;
      }

      while (v12 != v40);
    }

    ParallelArchiveWriterDestroy(v62);
    OEncoderStreamDestroy(v33);
    v36 = v63;
    v37 = v58;
    goto LABEL_68;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "generatePatch", 4636, 18, 0, "create DAT buffer");
LABEL_83:
  v30 = 0;
LABEL_86:
  v34 = 0xFFFFFFFFLL;
  v32 = v62;
LABEL_47:
  ParallelArchiveWriterDestroy(v32);
  OEncoderStreamDestroy(v33);
  OFileStreamDestroy(v63);
  IFileStreamDestroy(v30);
  MemBufferDestroy(v31);
  free(v67);
  return v34;
}

uint64_t parallelArchiveWrite(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (ParallelArchiveWriteEntryData(a1, a2, a3))
  {
    return -1;
  }

  else
  {
    return a3;
  }
}

uint64_t dumpStringArray(uint64_t result, CFArrayRef theArray)
{
  if (theArray)
  {
    v3 = result;
    result = CFArrayGetCount(theArray);
    if (result)
    {
      v4 = result;
      v5 = MEMORY[0x29EDCA610];
      result = fprintf(*MEMORY[0x29EDCA610], "  %s:\n", v3);
      if (v4 >= 1)
      {
        v6 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
          if (!ValueAtIndex)
          {
            return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "dumpStringArray", 884, 18, 0, "CFArrayGetValueAtIndex(%ld) returned 0", v6);
          }

          CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
          if (!CStringPtr)
          {
            break;
          }

          result = fprintf(*v5, "  - %s\n", CStringPtr);
          if (v4 == ++v6)
          {
            return result;
          }
        }

        return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/DirectoryDiff.c", "dumpStringArray", 886, 18, 0, "CFStringGetCStringPtr returned 0");
      }
    }
  }

  return result;
}

uint64_t dumpContentsStats(uint64_t a1)
{
  v2 = MEMORY[0x29EDCA610];
  fprintf(*MEMORY[0x29EDCA610], "%12zu entries\n", *(a1 + 8));
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = (*(a1 + 16) + 72);
    do
    {
      v11 = *(v10 - 4);
      switch(v11)
      {
        case 3:
          ++v8;
          break;
        case 2:
          ++v9;
          break;
        case 1:
          if (v5 == *v10)
          {
            ++v4;
          }

          else
          {
            ++v7;
          }

          break;
        default:
          ++v6;
          break;
      }

      ++v5;
      v10 += 23;
    }

    while (v3 != v5);
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v4 = 0;
  }

  fprintf(*v2, "%12zu regular files\n", v4);
  fprintf(*v2, "%12zu directories\n", v9);
  fprintf(*v2, "%12zu symbolic links\n", v8);
  result = fprintf(*v2, "%12zu hard links\n", v7);
  if (v6)
  {
    return fprintf(*v2, "%12zu invalid entries\n", v6);
  }

  return result;
}

{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = (*(a1 + 32) + 1168);
    v13 = *(a1 + 8);
    do
    {
      v14 = *v12;
      if (*v12)
      {
        ++v9;
      }

      else
      {
        ++v7;
      }

      v3 += v14 & 1;
      v2 += (v14 >> 2) & 1;
      v11 += (v14 >> 3) & 1;
      v4 += (v14 >> 9) & 1;
      v10 += (v14 >> 4) & 1;
      v8 += (v14 >> 1) & 1;
      v6 += (v14 >> 6) & 1;
      v5 += (v14 >> 5) & 1;
      v12 += 302;
      --v13;
    }

    while (v13);
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
    v2 = 0;
  }

  fprintf(*MEMORY[0x29EDCA610], "%12zu entries\n", v1);
  fprintf(*MEMORY[0x29EDCA610], "%12zu resolved entries\n", v9);
  v15 = MEMORY[0x29EDCA610];
  fprintf(*MEMORY[0x29EDCA610], "%12zu non resolved entries\n", v7);
  fprintf(*v15, "%12zu ARCHIVE\n", v3);
  fprintf(*v15, "%12zu PATCH\n", v2);
  fprintf(*v15, "%12zu LINK\n", v11);
  fprintf(*v15, "%12zu FIRMLINK\n", v4);
  fprintf(*v15, "%12zu KEEP\n", v10);
  fprintf(*v15, "%12zu REMOVE\n", v8);
  fprintf(*v15, "%12zu AUTO MKDIR\n", v6);
  return fprintf(*v15, "%12zu IGNORE\n", v5);
}

size_t PCompressLZFSEEncode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZFSE);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZFSEDecode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZFSE);
  if (!result)
  {
    return -1;
  }

  return result;
}

void pc_log_error_cold_1(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2[0] = 67109378;
  v2[1] = a2;
  v3 = 2082;
  v4 = a1;
  _os_log_error_impl(&dword_298004000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "[0x%08x] %{public}s", v2, 0x12u);
}

void joinThread_cold_1()
{
  v0 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "joinThread", 623, 5, *v0, "pthread_join");
  __break(1u);
}

void getBXDiffControls_cold_1()
{
  v0 = __error();
  v1 = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffBase.c", "bxdiffControlsWithMatches", 255, 24, *v0, "malloc");
  __break(1u);
  BZ2_bzDecompress(v1);
}