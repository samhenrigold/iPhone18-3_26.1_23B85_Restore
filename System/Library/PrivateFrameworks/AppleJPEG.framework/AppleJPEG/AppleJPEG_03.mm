uint64_t aj_get_texture_size(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, void *a5, uint64_t a6, void *a7)
{
  v7 = *(a2 + 76);
  v9 = a1[2];
  v8 = a1[3];
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
    v12 = *(a2 + 20);
    v11 = *(a2 + 12);
    if (v12 == -1)
    {
      if (v11 == -1)
      {
        v12 = -1;
        if (*(a2 + 16) == -1)
        {
          v16 = 0;
          v11 = 0;
          v13 = -1;
          v14 = a1[2];
          v15 = a1[3];
          goto LABEL_9;
        }

        v11 = -1;
      }

      else
      {
        v12 = -1;
      }
    }
  }

  else
  {
    v11 = *(a2 + 12);
    v12 = *(a2 + 20);
  }

  v13 = v12;
  v12 = *(a2 + 16);
  v14 = v13;
  v15 = *(a2 + 24);
  v16 = v12;
LABEL_9:
  v17 = a1[4];
  v18 = 8 * v17;
  v19 = a1[8];
  v20 = 8 * v19;
  v21 = v11 / (8 * v17);
  v22 = (v14 + v11 - 1) / (8 * v17);
  v23 = v16 / (8 * v19);
  v24 = v22 - v21 + 1;
  v25 = (v15 + v16 - 1) / (8 * v19) - v23 + 1;
  if (v7 != 8 && *a1 != 1)
  {
    v17 = 2;
    v19 = 2;
  }

  v26 = v24 * v18 / v7;
  v27 = v25 * v20 / v7;
  *a3 = v26;
  *(a3 + 8) = v27;
  if (a4)
  {
    v26 = (v26 + 8 * v17 - 1) & (-8 * v17);
    v27 = (v27 + 8 * v19 - 1) & (-8 * v19);
    *a3 = v26;
    *(a3 + 8) = v27;
  }

  v28 = v26 / v17;
  v29 = v27 / v19;
  *(a3 + 32) = v28;
  *(a3 + 40) = v29;
  if (v10 != -1)
  {
    v30 = *(a2 + 12);
LABEL_16:
    v31 = (v30 - v21 * v18) / v7;
    v32 = (v12 - v23 * v20) / v7;
    *(a3 + 16) = v31;
    *(a3 + 20) = v32;
    *(a3 + 48) = v31 / v17;
    *(a3 + 52) = v32 / v19;
    v33 = v13 / v7;
    *(a3 + 56) = v13 / v7 / v17;
    v34 = v10 / v7;
    *(a3 + 24) = v33;
    *(a3 + 28) = v34;
    v35 = v34 / v19;
    goto LABEL_17;
  }

  v30 = *(a2 + 12);
  if (v13 != -1 || v30 != -1)
  {
    goto LABEL_16;
  }

  if (v12 != -1)
  {
    v30 = -1;
    goto LABEL_16;
  }

  *(a3 + 16) = 0;
  v45 = v9 / v7;
  v35 = v8 / v7;
  *(a3 + 24) = v45;
  *(a3 + 28) = v35;
  *(a3 + 48) = 0;
  if (v17 == 2)
  {
    v45 = (v45 + 1) / 2;
  }

  *(a3 + 56) = v45;
  if (v19 == 2)
  {
    v35 = (v35 + 1) / 2;
  }

LABEL_17:
  *(a3 + 60) = v35;
  v36 = *(a2 + 40);
  if (v36)
  {
    v37 = v36 >= v26;
    v26 = *(a2 + 40);
    if (!v37)
    {
      return 5;
    }
  }

  v38 = *(a2 + 48);
  v39 = v28;
  if (v38)
  {
    v39 = *(a2 + 48);
    if (v38 < v28)
    {
      return 5;
    }
  }

  v40 = *(a2 + 56);
  if (v40)
  {
    v37 = v40 >= v28;
    v28 = *(a2 + 56);
    if (!v37)
    {
      return 5;
    }
  }

  v42 = v26 * v27;
  v43 = v39 * v29;
  v44 = v28 * v29;
  if (a6)
  {
    *a6 = v42;
    *(a6 + 8) = v43;
    *(a6 + 16) = v44;
    *(a6 + 32) = 3;
  }

  if (a5)
  {
    *a5 = v43 + v42 + v44;
  }

  result = 0;
  if (a7)
  {
    *a7 = 8 * (v39 + v26 * v19 + v28);
  }

  return result;
}

uint64_t aj_init_bitmapinfo(uint64_t a1, _DWORD *a2, uint64_t a3, int a4)
{
  v14 = 0;
  result = aj_calculate_dimensions(a3, a2, &v14 + 1, &v14, 0, 0, 0, 0, 0);
  if (result)
  {
    goto LABEL_2;
  }

  v9 = *(a3 + 80);
  if (v9 == 270 || v9 == 90)
  {
    v10 = HIDWORD(v14);
    *a1 = v14;
    *(a1 + 4) = v10;
    v11 = *(a3 + 8);
    v12 = v11 - 8;
    if (v11 - 8) < 6 && ((0x33u >> v12))
    {
      *(a1 + 8) = dword_240AB57D0[v12];
      goto LABEL_12;
    }

    *(a1 + 8) = v11;
  }

  else
  {
    v11 = *(a3 + 8);
    v13 = v14;
    *a1 = HIDWORD(v14);
    *(a1 + 4) = v13;
    *(a1 + 8) = v11;
  }

  if (v11 == 14)
  {
    result = aj_get_texture_size(a2, a3, a1 + 16, a4, 0, 0, 0);
    if (result)
    {
LABEL_2:
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      return result;
    }
  }

LABEL_12:
  *(a1 + 80) = *(a3 + 40);
  *(a1 + 88) = *(a3 + 48);
  *(a1 + 96) = *(a3 + 56);
  return result;
}

unsigned int **aj_reset_texture_buffer_ptrs(unsigned int **result, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *result;
  v4 = *(result + 43);
  v15[0] = v4;
  if (*(result + 1721))
  {
    v5 = 8 / *(result + 42);
  }

  else
  {
    v5 = v4 / 2;
  }

  v15[1] = v5;
  v15[2] = v5;
  v6 = *v3;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = (a2 + 8);
    do
    {
      v9 = *(a3 + 8 * v7);
      *(a2 + (v7 << 7)) = v9;
      v10 = v15[v7];
      if (v10 >= 2)
      {
        v11 = result[v7 + 12];
        v12 = v11 + v9;
        v13 = v10 - 1;
        v14 = v8;
        do
        {
          *v14++ = v12;
          v12 = v11 + v12;
          --v13;
        }

        while (v13);
      }

      ++v7;
      v8 += 16;
    }

    while (v7 != v6);
  }

  return result;
}

uint64_t aj_get_rowptrs(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 6464);
  if (v4 < 1)
  {
LABEL_9:
    result = 0;
    *(a2 + 560) = 1;
  }

  else
  {
    v7 = 0;
    v8 = a1 + 6704;
    v9 = a1 + 6684;
    while (1)
    {
      v10 = *(v9 + 4 * v7);
      if (v10)
      {
        break;
      }

LABEL_8:
      ++v7;
      a3 += 16;
      if (v7 >= v4)
      {
        goto LABEL_9;
      }
    }

    v11 = *(v8 + 16 * v7 + 8);
    v12 = a3;
    while (1)
    {
      buffer = aj_rowbuffer_get_buffer((a2 + 152), v11);
      *v12 = buffer;
      if (!buffer)
      {
        return 1;
      }

      ++v12;
      if (!--v10)
      {
        v4 = *(a1 + 6464);
        goto LABEL_8;
      }
    }
  }

  return result;
}

void aj_return_rowptrs(uint64_t result, uint64_t a2, unint64_t *a3)
{
  v4 = *(result + 6464);
  if (v4 >= 1)
  {
    v7 = 0;
    v8 = result + 6684;
    do
    {
      v9 = *(v8 + 4 * v7);
      v10 = a3;
      if (v9)
      {
        do
        {
          v11 = *v10++;
          aj_rowbuffer_return_buffer((a2 + 152), v11);
          --v9;
        }

        while (v9);
        v4 = *(result + 6464);
      }

      ++v7;
      a3 += 16;
    }

    while (v7 < v4);
  }

  *(a2 + 560) = 0;
}

uint64_t aj_get_jpeg_format_from_subsampling(unint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return 4;
  }

  v3 = HIDWORD(a1);
  if (a1 == 1 && v3 == 1)
  {
    return 0;
  }

  if (a1 == 2 && v3 == 1)
  {
    return 1;
  }

  if (a1 == 1 && v3 == 2)
  {
    return 2;
  }

  if (v3 == 2 && a1 == 2)
  {
    return 3;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t aj_get_subsampling_from_jpeg_format(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_240AB5810[a1] | qword_240AB57E8[a1];
  }
}

uint64_t aj_get_format_description(int a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  *a2 = 0x100000003;
  *(a2 + 16) = 0;
  *(a2 + 24) = xmmword_240AB57A0;
  switch(a1)
  {
    case 0:
    case 6:
      result = 0;
      v5 = 3;
      goto LABEL_19;
    case 1:
    case 2:
      goto LABEL_13;
    case 3:
    case 4:
    case 15:
      result = 0;
      v4 = 4;
      goto LABEL_16;
    case 5:
      result = 0;
      v4 = 1;
LABEL_16:
      *a2 = v4;
      goto LABEL_17;
    case 7:
      result = 0;
      v4 = 2;
      *(a2 + 24) = 2;
      goto LABEL_17;
    case 8:
      goto LABEL_11;
    case 9:
      *(a2 + 32) = 0x100000002;
LABEL_11:
      result = 0;
      *(a2 + 24) = 0x100000002;
      goto LABEL_26;
    case 10:
      goto LABEL_24;
    case 11:
      *(a2 + 32) = 0x100000002;
LABEL_24:
      result = 0;
      v8 = 0x200000002;
      goto LABEL_25;
    case 12:
      goto LABEL_22;
    case 13:
      *(a2 + 32) = 0x100000002;
LABEL_22:
      result = 0;
      v8 = 0x200000001;
LABEL_25:
      *(a2 + 24) = v8;
      goto LABEL_26;
    case 14:
    case 25:
      result = 0;
      v6 = xmmword_240AB57B0;
      goto LABEL_29;
    case 16:
    case 17:
    case 21:
      result = 0;
      *a2 = 4;
      v4 = 8;
      goto LABEL_17;
    case 18:
      *a2 = 1;
LABEL_13:
      result = 0;
      v5 = 2;
      goto LABEL_19;
    case 19:
      result = 0;
      *(a2 + 24) = 0x200000002;
      *(a2 + 4) = 0x200000002;
      v7 = 4;
      goto LABEL_27;
    case 20:
      result = 0;
      v5 = 6;
LABEL_19:
      *(a2 + 8) = v5;
      break;
    case 22:
    case 23:
      result = 0;
      *a2 = 2;
      if (a1 == 22)
      {
        v4 = 2;
      }

      else
      {
        v4 = 4;
      }

LABEL_17:
      *(a2 + 8) = v4;
      break;
    case 24:
      result = 0;
      *(a2 + 28) = 1;
LABEL_26:
      *(a2 + 4) = 0x100000002;
      v7 = 2;
LABEL_27:
      *(a2 + 12) = v7;
      break;
    case 26:
      result = 0;
      v6 = xmmword_240AB57C0;
LABEL_29:
      *(a2 + 4) = v6;
      break;
    default:
      result = 1;
      break;
  }

  return result;
}

uint64_t aj_transforms_from_orientation(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      result = 0;
      if (a1 == 1)
      {
        return result;
      }

      if (a1 == 2)
      {
        result = 0;
LABEL_15:
        *a3 = 1;
        return result;
      }

      goto LABEL_20;
    }

    if (a1 != 3)
    {
      result = 0;
LABEL_19:
      *a4 = 1;
      return result;
    }

    result = 0;
LABEL_17:
    *a3 = 1;
    goto LABEL_19;
  }

  if (a1 <= 6)
  {
    if (a1 != 5)
    {
      result = 0;
      *a2 = 90;
      return result;
    }

    result = 0;
    *a2 = 90;
    goto LABEL_15;
  }

  if (a1 == 7)
  {
    result = 0;
    *a2 = 90;
    goto LABEL_19;
  }

  if (a1 == 8)
  {
    result = 0;
    *a2 = 90;
    goto LABEL_17;
  }

LABEL_20:
  aj_log_error("Utils", "Illegal display orientation option: %d", a1);
  return 5;
}

uint64_t aj_huffman_encode_val_lkup(uint64_t a1, int a2, int a3, int32x2_t *a4)
{
  if (a3)
  {
    if (a3 >= 0)
    {
      v4 = a3;
    }

    else
    {
      v4 = -a3;
    }

    v5 = HIWORD(v4);
    if (!HIWORD(v4))
    {
      v5 = v4;
    }

    if (v5 <= 0xFF)
    {
      v6 = 16 * (HIWORD(v4) != 0);
    }

    else
    {
      v6 = (16 * (HIWORD(v4) != 0)) | 8;
    }

    if (v5 > 0xFF)
    {
      v5 >>= 8;
    }

    if (v5 > 0xF)
    {
      v6 |= 4u;
      v5 >>= 4;
    }

    if (v5 > 3)
    {
      v6 |= 2u;
      v5 >>= 2;
    }

    v7 = v6 | (v5 > 1);
    v8 = v7 + 1;
    v9 = (-2 << v7) | v4;
    if (a3 < 0)
    {
      v4 = ~v9;
    }
  }

  else
  {
    v4 = 0;
    v8 = 0;
  }

  v10 = v8 + HIWORD(*(a1 + 4 * (v8 + 16 * a2)));
  v11 = (*(a1 + 4 * (v8 + 16 * a2)) << v8) + v4;
  if (a4[2].i32[1] >= 9 && (v12 = a4->i32[1] + v10, v12 < 33))
  {
    v14 = a4->i32[0] | (v11 << -v12);
    a4->i32[0] = v14;
    a4->i32[1] = v12;
    if (v12 >= 8)
    {
      do
      {
        v15 = HIBYTE(v14);
        v16 = a4[1];
        a4[1] = (v16 + 1);
        *v16 = v15;
        a4[2] = vadd_s32(a4[2], 0xFFFFFFFF00000001);
        if (v15 == 255)
        {
          v17 = a4[1];
          a4[1] = (v17 + 1);
          *v17 = 0;
          a4[2] = vadd_s32(a4[2], 0xFFFFFFFF00000001);
        }

        v18 = a4->i32[1];
        v14 = a4->i32[0] << 8;
        a4->i32[0] = v14;
        a4->i32[1] = v18 - 8;
      }

      while (v18 > 15);
    }
  }

  else
  {
    result = aj_ostream_write(a4, v11, v10);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t aj_huffman_encode_sym_lkup(uint64_t a1, int a2, int32x2_t *a3)
{
  v3 = HIWORD(*(a1 + 4 * a2));
  v4 = *(a1 + 4 * a2);
  if (a3[2].i32[1] >= 9 && (v5 = a3->i32[1] + v3, v5 < 33))
  {
    v7 = a3->i32[0] | (v4 << -v5);
    a3->i32[0] = v7;
    a3->i32[1] = v5;
    if (v5 >= 8)
    {
      do
      {
        v8 = HIBYTE(v7);
        v9 = a3[1];
        a3[1] = (v9 + 1);
        *v9 = v8;
        a3[2] = vadd_s32(a3[2], 0xFFFFFFFF00000001);
        if (v8 == 255)
        {
          v10 = a3[1];
          a3[1] = (v10 + 1);
          *v10 = 0;
          a3[2] = vadd_s32(a3[2], 0xFFFFFFFF00000001);
        }

        v11 = a3->i32[1];
        v7 = a3->i32[0] << 8;
        a3->i32[0] = v7;
        a3->i32[1] = v11 - 8;
      }

      while (v11 > 15);
    }
  }

  else
  {
    result = aj_ostream_write(a3, v4, v3);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void aj_huffman_encode_init_lookups(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x277D85DE8];
  bzero(v35, 0x400uLL);
  bzero(v34, 0x400uLL);
  v8 = 0;
  v9 = a1 - 1;
  for (i = 1; i != 17; ++i)
  {
    v11 = *(v9 + i);
    if (*(v9 + i) && v8 <= 255)
    {
      v12 = v8;
      do
      {
        v8 = v12 + 1;
        v35[v12] = i;
        if (v11 < 2)
        {
          break;
        }

        --v11;
      }

      while (v12++ < 255);
    }
  }

  v14 = 0;
  LODWORD(v15) = 0;
  v16 = v35[0];
  while (v35[v15])
  {
    v15 = v15;
    v17 = 2 * v14;
    while (v35[v15] == v16)
    {
      v34[v15] = v14++;
      v17 += 2;
      if (++v15 == 256)
      {
        goto LABEL_17;
      }
    }

    ++v16;
    v14 = v17;
    if (v15 >= 256)
    {
      goto LABEL_17;
    }
  }

  if (v15 < 1)
  {
    goto LABEL_19;
  }

LABEL_17:
  v15 = v15;
  v18 = v34;
  v19 = v35;
  do
  {
    v21 = *v19++;
    v20 = v21;
    v22 = *v18++;
    v23 = v22 | (v20 << 16);
    v24 = *a2++;
    *(a3 + 4 * v24) = v23;
    --v15;
  }

  while (v15);
LABEL_19:
  if (a4)
  {
    for (j = 0; j != 8; ++j)
    {
      for (k = 0; k != 32; ++k)
      {
        v27 = k - 16;
        if (k == 16)
        {
          v28 = 0;
        }

        else
        {
          v29 = 16 - k;
          if (k - 16 >= 0)
          {
            v29 = k - 16;
          }

          v30 = HIWORD(v29);
          if (!HIWORD(v29))
          {
            v30 = v29;
          }

          if (v30 <= 0xFF)
          {
            v31 = 16 * (HIWORD(v29) != 0);
          }

          else
          {
            v31 = (16 * (HIWORD(v29) != 0)) | 8;
          }

          if (v30 > 0xFF)
          {
            v30 >>= 8;
          }

          if (v30 > 0xF)
          {
            v31 |= 4u;
            v30 >>= 4;
          }

          if (v30 > 3)
          {
            v31 |= 2u;
            v30 >>= 2;
          }

          v32 = v31 | (v30 > 1);
          v28 = v32 + 1;
          v33 = (-2 << v32) | v29;
          if (v27 < 0)
          {
            LODWORD(v27) = ~v33;
          }

          else
          {
            LODWORD(v27) = v29;
          }
        }

        *(a4 + 4 * k) = ((*(a3 + (j << 6) + 4 * v28) << v28) + v27) | ((v28 + HIWORD(*(a3 + (j << 6) + 4 * v28))) << 24);
      }

      a4 += 128;
    }
  }
}

uint64_t aj_lossless_decode_all(int **a1, uint64_t a2)
{
  v4 = 0;
  v115 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 112);
  v6 = *a1;
  v7 = **a1;
  v8 = *(a1 + 1645);
  v9 = 4;
  v10 = 1;
  if (v8 <= 15)
  {
    v11 = 0;
    v12 = 0;
    if ((v8 - 3) < 2)
    {
      goto LABEL_16;
    }

    if (v8)
    {
      if (v8 == 5)
      {
LABEL_5:
        v4 = 0;
        v12 = 0;
        v11 = 1;
        v9 = 1;
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_10:
    v4 = 0;
    v11 = 0;
    v12 = 0;
    v9 = 3;
    goto LABEL_16;
  }

  if (v8 <= 0x1A)
  {
    if (((1 << v8) & 0x6100000) != 0)
    {
      goto LABEL_10;
    }

    if (((1 << v8) & 0xC00000) != 0)
    {
      v4 = 0;
      v11 = 0;
      v9 = 2;
      v12 = 1;
      goto LABEL_16;
    }

    if (v8 == 21)
    {
      v11 = 0;
      v12 = 0;
      goto LABEL_16;
    }
  }

  v11 = 0;
  v12 = 0;
  if ((v8 - 16) < 2)
  {
    goto LABEL_16;
  }

  if (v8 == 18)
  {
    goto LABEL_5;
  }

LABEL_15:
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v9 = 0;
  v4 = 1;
LABEL_16:
  if (v8 > 0x1A)
  {
    goto LABEL_22;
  }

  v13 = 1;
  if (((1 << v8) & 0x4B70000) != 0)
  {
    v13 = 2;
    v14 = 1;
    if (!v4)
    {
      goto LABEL_23;
    }

LABEL_22:
    aj_log_error(0, "Unsupported output format for lossless JPEG");
    return 5;
  }

  if (((1 << v8) & 0x2400039) == 0)
  {
    goto LABEL_22;
  }

  v14 = 0;
  if (v4)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (v7 > 1)
  {
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  if (v15 == 1)
  {
    aj_log_error(0, "Decoding lossless RGB JPEG to grayscale not supported");
    return 5;
  }

  if (v7 == 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  if (v16 == 1)
  {
    aj_log_error(0, "Only two-component JPEGs can be decoded to two-component format");
    return 5;
  }

  if (a1[1][23] >= 7)
  {
    aj_log_error(0, "Max 6 blocks per MCU supported");
    return 3;
  }

  if (v6[8] >= 3)
  {
    aj_log_error(0, "Vertical subsampling > 2 not yet supported");
    return 3;
  }

  if (v6[4] >= 3)
  {
    aj_log_error(0, "Horizontal subsampling > 2 not yet supported");
    return 3;
  }

  if (v7 == 3)
  {
    v18 = v6 + 9;
    v19 = 2;
    while (*v18 == 1 && *(v18 - 4) == 1)
    {
      ++v18;
      if (!--v19)
      {
        goto LABEL_46;
      }
    }

    aj_log_error(0, "Subsampling not yet supported");
    return 3;
  }

LABEL_46:
  result = aj_istream_move_to_position(v5, v6[855]);
  if (result)
  {
    return result;
  }

  v20 = *(a1 + 1645);
  memset(&v114[1], 0, 32);
  v22 = v20 == 17 || v20 == 4;
  v113 = 0uLL;
  v114[0] = 0uLL;
  if (v14)
  {
    v23 = -1;
  }

  else
  {
    v23 = 255;
  }

  memset(v112, 0, sizeof(v112));
  memset(v111, 0, sizeof(v111));
  v109 = 0uLL;
  v110 = 0uLL;
  memset(v108, 0, sizeof(v108));
  if ((v20 - 25) >= 2)
  {
    v24 = *a1;
    v105 = v9;
    if (v10)
    {
      v47 = 0;
      v48 = a1[12];
      v49 = a1[8];
      if (v9 <= 1)
      {
        v50 = 1;
      }

      else
      {
        v50 = v9;
      }

      v51 = &v109 + 4;
      v52 = 2;
      do
      {
        if (v22 && v47 < 3)
        {
          v53 = v52;
        }

        else
        {
          v53 = v47;
        }

        *(v51 - 1) = v13 * v9;
        *v51 = v9;
        *(v51 + 1) = v53 * v13;
        *(v51 + 2) = v48;
        *(v51 + 2) = 0x100000000;
        *(v51 + 6) = 2;
        *(v51 + 7) = v24[847];
        if (v47 >= v7)
        {
          v51[32] = 1;
        }

        else
        {
          *(v51 - 12) = *&a1[1][4 * v24[v47 + 839] + 2];
        }

        *(v114 + v47) = v49;
        v112[v47++] = v48;
        --v52;
        v51 += 72;
      }

      while (v50 != v47);
    }
  }

  else
  {
    v24 = *a1;
    v25 = a1[1];
    v26 = v25[23];
    v105 = v26;
    v27 = (*a1)[8];
    if (v27 >= 1)
    {
      v28 = 0;
      v29 = 0;
      v30 = v24[4];
      while (1)
      {
        if (v30 < 1)
        {
          goto LABEL_76;
        }

        v31 = 0;
        v32 = 0;
        v33 = a1[12];
        v34 = *(a1 + 6904);
        v35 = a1[8] + v33 * v29;
        do
        {
          v36 = v28 * v30;
          v37 = v32 + v29 * v30;
          v38 = v108 + 72 * v37;
          *(v38 + 10) = v31;
          *(v38 + 8) = v24[4] * v13;
          *(v38 + 9) = 1;
          *(v38 + 11) = v33;
          if (v36 == v32 && v34 != 0)
          {
            *(v38 + 11) = v24[8] * v33;
          }

          *(v114 + v37) = v35;
          v112[v37] = v33 * v24[8];
          *(v38 + 52) = 0x100000000;
          *(v38 + 15) = 2;
          v40 = v24[847];
          *(v38 + 16) = v40;
          if (v29 && v32)
          {
            *(v38 + 13) = v40;
            v41 = v24[847];
            *(v38 + 14) = v41;
LABEL_69:
            *(v38 + 15) = v41;
            goto LABEL_72;
          }

          if (v29)
          {
            *(v38 + 13) = 2;
            *(v38 + 14) = v24[847];
          }

          else if (v32)
          {
            *(v38 + 13) = 1;
            v41 = v24[847];
            goto LABEL_69;
          }

LABEL_72:
          *(v38 + 3) = *&v25[4 * v24[839] + 2];
          v30 = v24[4];
          ++v32;
          v31 += v13;
        }

        while (v32 < v30);
        v27 = v24[8];
LABEL_76:
        ++v29;
        --v28;
        if (v29 >= v27)
        {
          v26 = v25[23];
          break;
        }
      }
    }

    v42 = v25[22];
    if (v42 < v26)
    {
      v43 = v111 + 18 * v42;
      v44 = v42 + 1;
      do
      {
        v45 = v44 - v25[22];
        v46 = a1[v45 + 12];
        *(v114 + v42) = a1[v45 + 8];
        v112[v42] = v46;
        *(v43 - 5) = v46;
        *(v43 - 8) = v13;
        *(v43 - 7) = 1;
        *(v43 - 3) = 0x100000000;
        *(v43 - 1) = 2;
        *v43 = v24[847];
        *(v43 - 5) = *&v25[4 * v24[v45 + 839] + 2];
        v43 += 18;
        ++v44;
        ++v42;
      }

      while (v42 < v25[23]);
    }
  }

  v54 = a1[1];
  v98 = v54[21];
  if (v98 < 1)
  {
    return 0;
  }

  v55 = 0;
  v104 = 0;
  v56 = 0;
  v57 = v24[851];
  v58 = v54[20];
  v59 = 7;
  v106 = v23;
  v99 = v54[20];
  v100 = v57;
  while (1)
  {
    if (v105)
    {
      v60 = 60;
      if (!v104)
      {
        v60 = 52;
      }

      v61 = *(a1 + 1650);
      v62 = v108;
      v63 = v114;
      v64 = v112;
      v65 = v105;
      do
      {
        v66 = *v64++;
        v67 = *v63 + v66 * v55 + v61 + *(v62 + 10);
        v68 = v67 - *(v62 + 11);
        *v62 = v67;
        *(v62 + 1) = v68;
        *(v62 + 2) = v67;
        if (!*(v62 + 68))
        {
          *(v62 + 12) = *(v62 + v60);
        }

        v62 = (v62 + 72);
        ++v63;
        --v65;
      }

      while (v65);
    }

    if (v58 >= 1)
    {
      break;
    }

LABEL_176:
    ++*(a2 + 36);
    ++v55;
    ++v104;
    if (v55 == v98)
    {
      return 0;
    }
  }

  v69 = 0;
  v70 = 0;
  while (1)
  {
    if (!*(v5 + 16) && *(v5 + 24) <= 6)
    {
      v71 = v56;
      result = aj_istream_fill_buf(v5, 4294967287);
      v58 = v99;
      v57 = v100;
      v56 = v71;
      v23 = v106;
      if (result)
      {
        return result;
      }
    }

    if (v57 < 1 || v56 != v57)
    {
      if (!v105)
      {
        goto LABEL_175;
      }

LABEL_122:
      v101 = v69;
      v102 = v56;
      v103 = v59;
      if (v104)
      {
        v77 = 64;
      }

      else
      {
        v77 = 56;
      }

      v78 = v108;
      v79 = v105;
      while (1)
      {
        v80 = v23;
        if (*(v78 + 68))
        {
          if (!v14)
          {
            goto LABEL_169;
          }

          goto LABEL_128;
        }

        v82 = -*(v78 + 9);
        v83 = *(v78 + 1);
        v84 = *(v78 + 2);
        v85 = *(v78 + 12);
        LOWORD(v86) = 0;
        if (v14)
        {
          if (v85 > 3)
          {
            if (v85 <= 5)
            {
              if (v85 != 4)
              {
                v87 = *(v84 + 2 * v82);
                v88 = *v83;
                v89 = v83[v82];
LABEL_146:
                v86 = v87 + ((v88 - v89) >> 1);
                goto LABEL_167;
              }

              v92 = *v83 + *(v84 + 2 * v82);
              v93 = v83[v82];
LABEL_161:
              LOWORD(v86) = v92 - v93;
              goto LABEL_167;
            }

            if (v85 != 6)
            {
              if (v85 != 7)
              {
                goto LABEL_167;
              }

              v90 = *(v84 + 2 * v82);
              v91 = *v83;
LABEL_157:
              v86 = (v91 + v90) >> 1;
              goto LABEL_167;
            }

            v94 = *v83;
            v95 = *(v84 + 2 * v82);
            v96 = v83[v82];
LABEL_166:
            v86 = v94 + ((v95 - v96) >> 1);
            goto LABEL_167;
          }

          if (v85 > 1)
          {
            if (v85 == 2)
            {
              LOWORD(v86) = *v83;
            }

            else
            {
              LOWORD(v86) = v83[v82];
            }
          }

          else
          {
            if (!v85)
            {
              goto LABEL_158;
            }

            if (v85 == 1)
            {
              LOWORD(v86) = *(v84 - 2 * *(v78 + 9));
            }
          }
        }

        else
        {
          if (v85 > 3)
          {
            if (v85 <= 5)
            {
              if (v85 != 4)
              {
                v87 = *(v84 - *(v78 + 9));
                v88 = *v83;
                v89 = *(v83 - *(v78 + 9));
                goto LABEL_146;
              }

              v92 = *v83 + *(v84 - *(v78 + 9));
              v93 = *(v83 - *(v78 + 9));
              goto LABEL_161;
            }

            if (v85 != 6)
            {
              if (v85 != 7)
              {
                goto LABEL_167;
              }

              v90 = *(v84 - *(v78 + 9));
              v91 = *v83;
              goto LABEL_157;
            }

            v94 = *v83;
            v95 = *(v84 - *(v78 + 9));
            v96 = *(v83 - *(v78 + 9));
            goto LABEL_166;
          }

          if (v85 > 1)
          {
            if (v85 == 2)
            {
              LOWORD(v86) = *v83;
            }

            else
            {
              LOWORD(v86) = *(v83 - *(v78 + 9));
            }
          }

          else
          {
            if (!v85)
            {
LABEL_158:
              v86 = 1 << (*(*a1 + 4) - 1);
              goto LABEL_167;
            }

            if (v85 == 1)
            {
              LOWORD(v86) = *(v84 - *(v78 + 9));
            }
          }
        }

LABEL_167:
        v107 = 0;
        result = aj_huffman_decode_val(*(v78 + 3), v5, 1, &v107);
        if (result)
        {
          return result;
        }

        v80 = HIWORD(v107) + v86;
        v23 = v106;
        if (!v14)
        {
LABEL_169:
          **(v78 + 2) = v80;
          v81 = *(v78 + 2);
          goto LABEL_170;
        }

LABEL_128:
        v81 = *(v78 + 2);
        *v81 = v80;
LABEL_170:
        v97 = *(v78 + 8);
        *(v78 + 1) += v97;
        *(v78 + 2) = v81 + v97;
        if (!v70)
        {
          *(v78 + 12) = *(v78 + v77);
        }

        v78 = (v78 + 72);
        if (!--v79)
        {
          v58 = v99;
          v57 = v100;
          v56 = v102;
          v59 = v103;
          v69 = v101;
          goto LABEL_175;
        }
      }
    }

    v72 = *(v5 + 16);
    if (!v72)
    {
      break;
    }

    v59 = (v59 + 1) & 7;
    v73 = *v72;
    if ((v59 | 0xD0) != v73)
    {
      aj_log_error(0, "Bitstream corrupt: Wrong marker (%02X) found.", v73);
      return 7;
    }

    v74 = v58;
    *v5 = 0;
    *(v5 + 24) = -9;
    *(v5 + 16) = 0;
    result = aj_istream_fill_buf(v5, 4294967287);
    if (result)
    {
      return result;
    }

    if (v105)
    {
      v75 = v105;
      v76 = &v110;
      v23 = v106;
      do
      {
        if (!*(v76 + 20))
        {
          *v76 = *(v76 + 1);
        }

        v76 = (v76 + 72);
        --v75;
      }

      while (v75);
      v70 = 0;
      v104 = 0;
      v56 = 0;
      goto LABEL_122;
    }

    v70 = 0;
    v104 = 0;
    v56 = 0;
    v23 = v106;
    v58 = v74;
LABEL_175:
    ++v69;
    ++v56;
    ++v70;
    if (v69 == v58)
    {
      goto LABEL_176;
    }
  }

  if (*(v5 + 32) > 1)
  {
    return 7;
  }

  result = 7;
  if (*(v5 + 112))
  {
    if (*(v5 + 56) == 1)
    {
      return 4294967294;
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t aj_dct_prescale_qtable(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 64; ++i)
  {
    *(a2 + 2 * i) = dword_240AB5840[8 * (i >> 3) + (i & 7)] / *(result + 4 * i);
  }

  return result;
}

uint64_t aj_get_qtable_for_quality(uint64_t result, int a2, int a3, int a4)
{
  v4 = 0;
  v5 = &base_qtable_luma;
  if (!a3)
  {
    v5 = &base_qtable_chroma;
  }

  v6 = 5000 / a2;
  if (a2 >= 51)
  {
    v6 = 200 - 2 * a2;
  }

  if (a2 > 99)
  {
    v6 = 0;
  }

  do
  {
    if (a4)
    {
      v7 = aj_glob_zigzag[v4];
    }

    else
    {
      v7 = v4;
    }

    v8 = 1374389535 * (v5[v7] * v6 + 50);
    v9 = (v8 >> 37) + (v8 >> 63);
    if (v9 <= 1)
    {
      v9 = 1;
    }

    if (v9 >= 255)
    {
      v9 = 255;
    }

    *(result + 4 * v4++) = v9;
  }

  while (v4 != 64);
  return result;
}

uint64_t aj_bufferproc_resize_get_blendrows(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v5 = *(a1 + 32);
  if (*(v5 + 1106))
  {
    *a4 = 0;
    *a5 = 0;
  }

  return get_startposition_for_thread(v5, 0, *(v5 + 4) + *(v5 + 1108), a4, a5);
}

uint64_t get_startposition_for_thread(uint64_t a1, unsigned int a2, int a3, _DWORD *a4, _DWORD *a5)
{
  if (!a3)
  {
    return 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v7 = *(a1 + 8 * a2 + 168);
  v8 = (a3 - 1);
  v9 = (v8 << 32) - 0x110000001;
  if ((v8 << 32) < 0x110000001)
  {
    v9 = 0;
  }

  v10 = v9 / v7 + 1;
  v11 = v7 * v10;
  v12 = (v11 + 0x10000000) >> 32;
  if (a3 + 2 > v12)
  {
    v13 = v7 * v10;
    do
    {
      if (a5)
      {
        ++*a5;
      }

      v13 += v7;
      ++v10;
      if (v8 > v12)
      {
        v11 = v13;
      }

      v12 = (v13 + 0x10000000) >> 32;
    }

    while (a3 + 2 > v12);
    if (a2)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  v13 = v7 * v10;
  if (!a2)
  {
LABEL_17:
    if (*(a1 + 68))
    {
      if (*(a1 + 176))
      {
        v14 = (get_startposition_for_thread(a1, 1u, (a3 + 1) >> 1, 0, 0) / *(a1 + 176)) << *(a1 + 68);
        v15 = __OFSUB__(v14, v10);
        v16 = v14 - v10;
        if (!((v16 < 0) ^ v15 | (v16 == 0)))
        {
          do
          {
            if (a5)
            {
              ++*a5;
            }

            v13 += v7;
            --v16;
          }

          while (v16);
        }
      }
    }
  }

LABEL_23:
  if (a4)
  {
    *a4 = ((v13 - v11) >> 32) + 3;
  }

  return v13;
}

_BYTE *aj_bufferproc_resize(_BYTE *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = a2;
  v91 = *MEMORY[0x277D85DE8];
  v68 = result;
  v6 = *(result + 4);
  if (*(a3 + 1082))
  {
    v6[16].i8[8] = 0;
  }

  v83 = v6;
  v7 = a5 + a4 < v6->i32[1] || v6[69].i8[2] == 0;
  v81 = v7;
  v88[0] = 0;
  v88[1] = 0;
  v87[0] = 0;
  v87[1] = 0;
  v8 = *(a2 + 6464);
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = a4;
      if (v9)
      {
        v10 = (v6[4].i32[1] + a4) >> v6[4].i32[1];
      }

      *(v87 + v9) = v10;
      v9 += 4;
    }

    while (4 * v8 != v9);
    v11 = v6 + 61;
    v12 = v6 + 60;
    v65 = a3 + 568;
    v13 = v6 + 62;
    v82 = v6 + 17;
    while (1)
    {
      if (!LODWORD(v87[0]))
      {
        v14 = 1;
        do
        {
          v15 = v14;
          if (v8 == v14)
          {
            break;
          }
        }

        while (!*(v87 + v14++));
        if (v15 >= v8)
        {
          return result;
        }
      }

      v17 = 0;
      v86[0] = 0;
      v86[1] = 0;
      v85 = 0uLL;
      v85 = vsubq_s32(*v11, *v12);
      if (v8 <= 1)
      {
        LODWORD(v8) = 1;
      }

      v18 = 4 * v8;
      do
      {
        v19 = *(v87 + v17);
        if (v19 >= v85.i32[v17 / 4])
        {
          v19 = v85.i32[v17 / 4];
        }

        *(v86 + v17) = v19;
        v17 += 4;
      }

      while (v18 != v17);
      if (*(v5 + 6577))
      {
        v20 = 0;
        *&src.data = xmmword_240AB5B48;
        *&dest.data = xmmword_240AB5B48;
        v21 = v65;
        do
        {
          src.width = v83->i32[2 * v20];
          src.rowBytes = src.width;
          dest.width = v83[2].i32[2 * v20];
          dest.rowBytes = dest.width;
          v22 = *(v86 + v20);
          if (v22 >= 1)
          {
            v23 = 0;
            v24 = v21 + 8 * *(v88 + v20);
            do
            {
              src.data = *(v24 + 8 * v23);
              dest.data = v82->i64[21 * v20 + (v23 + v12->i32[v20] + v13->i32[v20]) % v11->i32[v20]];
              v25 = vImageHorizontalShear_Planar8(&src, &dest, 0, 0, 0.0, 0.0, v83[69].i64[1], 0, 8u);
              if (v25)
              {
                aj_log_error(0, "vImage returned error: %ld\n", v25);
              }

              ++v23;
            }

            while (v22 != v23);
          }

          v12->i32[v20++] += v22;
          v5 = a2;
          v8 = *(a2 + 6464);
          v21 += 128;
        }

        while (v20 < v8);
      }

      else
      {
        v26 = 0;
        v79 = v65;
        do
        {
          v27 = *(v86 + v26);
          if (v27 >= 1)
          {
            v28 = 0;
            v29 = v79 + 8 * *(v88 + v26);
            do
            {
              memcpy(v82->i64[21 * v26 + (v28 + v12->i32[v26] + v13->i32[v26]) % v11->i32[v26]], *(v29 + 8 * v28), v83->i32[2 * v26]);
              ++v28;
            }

            while (v27 != v28);
          }

          v12->i32[v26++] += v27;
          v5 = a2;
          v8 = *(a2 + 6464);
          v79 += 128;
        }

        while (v26 < v8);
      }

      v30 = *(v68 + 32);
      v90 = 0;
      memset(&src, 0, sizeof(src));
      result = (v30 + 1072);
      v80 = v30;
      if (!*(v30 + 264))
      {
        break;
      }

LABEL_70:
      if (!v81)
      {
        if (v8 <= 0)
        {
          return result;
        }

        if (*result)
        {
LABEL_73:
          if (!*(v80 + 264))
          {
            result = outbuffer_drain(v68, v5, a3);
            LODWORD(v8) = *(v5 + 6464);
          }
        }

        else
        {
          v61 = 0;
          while (v8 - 1 != v61)
          {
            if (*(v80 + 1076 + 4 * v61++))
            {
              if (v61 < v8)
              {
                goto LABEL_73;
              }

              break;
            }
          }
        }
      }

      if (v8 < 1)
      {
        return result;
      }

      v63 = 0;
      do
      {
        v64 = *(v86 + v63);
        *(v88 + v63) += v64;
        *(v87 + v63++) -= v64;
      }

      while (v63 < v8);
    }

    v31 = (v30 + 1088);
    v32 = v30 + 200;
    v33 = v30 + 944;
    v34 = v30 + 960;
    v35 = v30 + 992;
    v36 = v30 + 976;
    v37 = v30 + 272;
    v72 = v30 + 32;
    v73 = v30 + 88;
    v71 = v30 + 1008;
    v69 = v30 + 168;
    v66 = (v30 + 1092);
    v77 = v30 + 200;
    v78 = (v30 + 1072);
    v75 = v30 + 960;
    v76 = v30 + 944;
    v74 = v30 + 976;
    while (1)
    {
      LODWORD(v8) = *(v5 + 6464);
      if (v8 < 1)
      {
        goto LABEL_70;
      }

      v38 = 0;
      v39 = 0;
      do
      {
        v40 = *&result[4 * v38];
        if (v40 < v31[v38])
        {
          v41 = *(v32 + 8 * v38) + 0x10000000;
          v42 = *(v33 + 4 * v38);
          v43 = *(v34 + 4 * v38);
          v44 = HIDWORD(v41);
          v45 = HIDWORD(v41) + 2;
          if (!v81)
          {
            v45 = (*(v32 + 8 * v38) + 0x10000000) >> 32;
          }

          if (v43 + v42 > v45)
          {
            v46 = 0;
            v47 = v43;
            v48 = HIDWORD(v41) - v42 - 2;
            v49 = v43 - 1;
            v50 = v48;
            v51 = *(v36 + 4 * v38);
            do
            {
              if (v50 < 0)
              {
                v54 = *(v35 + 4 * v38);
              }

              else
              {
                v52 = *(v35 + 4 * v38);
                v53 = v50 + v52;
                v54 = v49 + v52;
                if (v50 < v47)
                {
                  v54 = v53;
                }
              }

              *(&src.data + v46) = *(v37 + 168 * v38 + 8 * (v54 % v51));
              v46 += 8;
              ++v50;
            }

            while (v46 != 40);
            (*(v80 + 80))(&src, v73 + 10 * (v41 >> 29), *(v72 + 8 * v38), *(v71 + 16 * v38 + 8 * v40));
            v32 = v77;
            result = v78;
            ++*&v78[4 * v38];
            v55 = *(v77 + 8 * v38);
            if (*(v80 + 8 * v38 + 4) > 1)
            {
              v55 += *(v69 + 8 * v38);
              *(v77 + 8 * v38) = v55;
            }

            v44 = (v55 + 0x10000000) >> 32;
            v34 = v75;
            v33 = v76;
            v42 = *(v76 + 4 * v38);
            v43 = *(v75 + 4 * v38);
            v39 = 1;
            v36 = v74;
          }

          v56 = v44 - v42 - 2;
          if (v56 >= v43)
          {
            v56 = v43;
          }

          if (v56 >= 1)
          {
            *(v35 + 4 * v38) = (*(v35 + 4 * v38) + v56) % *(v36 + 4 * v38);
            *(v34 + 4 * v38) = v43 - v56;
            *(v33 + 4 * v38) = v56 + v42;
          }
        }

        ++v38;
        v8 = *(v5 + 6464);
      }

      while (v38 < v8);
      if (!v39)
      {
        goto LABEL_70;
      }

      if (v8 < 1)
      {
        goto LABEL_67;
      }

      if (*result >= *v31)
      {
        break;
      }

LABEL_68:
      if (*(v80 + 264))
      {
        LODWORD(v8) = *(v5 + 6464);
        goto LABEL_70;
      }
    }

    v57 = 0;
    v58 = v66;
    while (1 - v8 != v57)
    {
      v59 = *(v58 - 4);
      v60 = *v58++;
      --v57;
      if (v59 < v60)
      {
        if (-v57 < v8)
        {
          goto LABEL_68;
        }

        break;
      }
    }

LABEL_67:
    outbuffer_drain(v68, v5, a3);
    v34 = v75;
    v33 = v76;
    v32 = v77;
    result = v78;
    goto LABEL_68;
  }

  return result;
}

uint64_t aj_bufferproc_resize_maxout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = ((a4 << 32) + 0x300000000) / *(*(a1 + 32) + 168) + *(a1 + 44);
  v5 = *(a1 + 80);
  if (v5)
  {
    return (*(v5 + 8))(v5, a2, a3, (v4 + 1));
  }

  else
  {
    return (v4 + 1);
  }
}

uint64_t aj_bufferproc_resize_init(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v81[40] = *MEMORY[0x277D85DE8];
  v8 = malloc_type_calloc(1uLL, 0x460uLL, 0x1090040FCE13DA8uLL);
  if (!v8)
  {
    return 6;
  }

  v9 = v8;
  v10 = *(a1 + 40);
  *(a1 + 32) = v9;
  *(v9 + 64) = aj_highest_set_bit(v10) - 1;
  v73 = (a1 + 40);
  *(v9 + 68) = aj_highest_set_bit(*(a1 + 44)) - 1;
  *(v9 + 72) = 0;
  v11 = *(a2 + 6836);
  v12 = a3[6];
  *(v9 + 1106) = a3[7] == *(a2 + 6840);
  v14 = v12 - v11;
  v13 = v14 == 0;
  *(v9 + 1105) = v14 == 0;
  v15 = *(a2 + 172) * v14;
  *(v9 + 1108) = v15;
  if (!v13)
  {
    *(v9 + 1108) = v15 - *(a2 + 6856);
  }

  v74 = a4;
  v16 = *(a2 + 6504) / *(a2 + 6620);
  v17 = 0.5;
  if (v16 >= 0.5)
  {
    v17 = *(a2 + 6504) / *(a2 + 6620);
    if (v16 > 1.0)
    {
      v17 = 1.0;
    }
  }

  v18 = 0;
  v19 = v81;
  do
  {
    v20 = 0;
    v21 = 0.0;
    v22 = -2;
    do
    {
      v23 = v17 * (v22 + -v18 * 0.125);
      v24 = 0.0;
      if (fabs(v23) < 2.0)
      {
        v24 = 1.0;
        if (v23 != 0.0)
        {
          v25 = sin(v23 * 3.14159265);
          v24 = v25 / (v23 * 3.14159265) * (sin(v23 * 0.5 * 3.14159265) / (v23 * 0.5 * 3.14159265));
        }
      }

      *&v19[v20] = v24;
      v21 = v21 + v24;
      ++v20;
      ++v22;
    }

    while (v20 != 5);
    v80[v18++] = v21;
    v19 += 5;
  }

  while (v18 != 8);
  v26 = 0;
  for (i = 0; i != 8; ++i)
  {
    v28 = 0;
    v29 = v80[i];
    v30 = v26;
    v31 = 5;
    do
    {
      v32 = *&v81[v30] / v29;
      *&v81[v30] = v32;
      v33 = llround(v32 * 16384.0);
      *(v9 + 2 * v30 + 88) = v33;
      v28 += v33;
      ++v30;
      --v31;
    }

    while (v31);
    *(v9 + 88 + 10 * i + 4) = *(v9 + 88 + 10 * i + 4) - v28 + 0x4000;
    v26 += 5;
  }

  v34 = aj_resize_vertically;
  if (!*(a2 + 6576))
  {
    v34 = aj_memcpy_wrapper;
  }

  *(v9 + 80) = v34;
  v35 = *(a2 + 6464);
  if (v35 < 1)
  {
LABEL_60:
    v64 = 1;
    *(v9 + 1104) = 1;
    v65 = vImageNewResamplingFilter(*(a2 + 6500) / *(a2 + 6616), 0);
    *(v9 + 1112) = v65;
    if (v65)
    {
      v66 = *v73;
      v67 = v73[1];
      *(v74 + 32) = *(v73 + 4);
      *v74 = v66;
      *(v74 + 16) = v67;
      if (*(a2 + 6464) >= 1)
      {
        v68 = 0;
        v69 = (v74 + 24);
        v70 = (v9 + 36);
        do
        {
          *v69 = *v70;
          *(v69 - 4) = *(v70 - 1);
          ++v68;
          ++v69;
          v70 += 2;
        }

        while (v68 < *(a2 + 6464));
      }

      return 0;
    }
  }

  else
  {
    v78 = v9 + 168;
    v76 = a1 + 64;
    v77 = a1 + 48;
    v36 = v9 + 976;
    v79 = v9 + 1088;
    v37 = v9 + 168 * v35 + 104;
    v72 = a1;
    v38 = v9 + 992 + 16 * v35;
    while (1)
    {
      v75 = v35--;
      if (v35)
      {
        v39 = *(v9 + 64);
        v40 = *(v9 + 68);
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }

      v41 = (*(a2 + 6620) + v40) >> v40;
      v42 = (*(a2 + 6504) + v40) >> v40;
      if (v41 <= 2)
      {
        v41 = 2;
      }

      v43 = (v41 - 1) << 32;
      if (v42 <= 2)
      {
        v44 = 2;
      }

      else
      {
        v44 = (*(a2 + 6504) + v40) >> v40;
      }

      v45 = v43 / (v44 - 1);
      if (v42 == 1)
      {
        ++v45;
      }

      *(v78 + 8 * v35) = v45;
      v46 = ((*(v9 + 1108) + v40) >> v40);
      if (v35 || (v57 = *(v9 + 68)) == 0 || *(a2 + 6464) < 2)
      {
        startposition_for_thread = get_startposition_for_thread(v9, v35, v46, 0, 0);
        *(v9 + 232 + 8 * v35) = startposition_for_thread;
      }

      else
      {
        startposition_for_thread = *(v9 + 168) * ((*(v9 + 240) / *(v9 + 176)) << v57);
        *(v9 + 232) = startposition_for_thread;
      }

      v48 = startposition_for_thread - (v46 << 32);
      *(v9 + 200 + 8 * v35) = v48;
      v49 = (v9 + 8 * v35);
      *v49 = *(v77 + 4 * v35);
      v50 = *(v76 + 4 * v35);
      v49[1] = v50;
      LODWORD(v49) = (*(a2 + 6500) + v39) >> v39;
      v51 = (v9 + 32 + 8 * v35);
      *v51 = v49;
      if (v50 == 1)
      {
        v52 = (*(a2 + 6504) + v40) >> v40;
      }

      else
      {
        v53 = (v50 << 32) - 0x100000000;
        v54 = v53 - 0x110000001;
        if (v53 < 0x110000001)
        {
          v54 = 0;
        }

        if (!*(v9 + 1106))
        {
          v53 = v54;
        }

        v52 = (v53 - v48) / *(v78 + 8 * v35) + 1;
      }

      v51[1] = v52;
      v55 = ((*(a2 + 172) + v40) >> v40) + 5;
      *(v36 + 4 * v35) = v55;
      v56 = v35 ? 1 : *(v72 + 44);
      *(v79 + 4 * v35) = v56;
      v58 = *(a2 + 24) == 2 && *(a2 + 48) > 1;
      v59 = aj_rowbuffer_add_block(a3 + 38, *v51, v56 + v55 + v58, 0x10uLL);
      if (v59)
      {
        return v59;
      }

      if (*(v36 + 4 * v35) >= 1)
      {
        v60 = 0;
        do
        {
          buffer = aj_rowbuffer_get_buffer(a3 + 38, *v51);
          *(v37 + 8 * v60) = buffer;
          if (!buffer)
          {
            return 1;
          }
        }

        while (++v60 < *(v36 + 4 * v35));
      }

      if (*(v79 + 4 * v35) >= 1)
      {
        v62 = 0;
        do
        {
          v63 = aj_rowbuffer_get_buffer(a3 + 38, *v51);
          *(v38 + 8 * v62) = v63;
          if (!v63)
          {
            return 1;
          }
        }

        while (++v62 < *(v79 + 4 * v35));
      }

      *(v9 + 944 + 4 * v35) = 0;
      *(v9 + 960 + 4 * v35) = 0;
      v37 -= 168;
      v38 -= 16;
      *(v9 + 992 + 4 * v35) = 0;
      if (v75 <= 1)
      {
        goto LABEL_60;
      }
    }
  }

  return v64;
}

void aj_bufferproc_resize_terminate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v6 = *(v3 + 1112);
    if (v6)
    {
      vImageDestroyResamplingFilter(v6);
    }

    if (*(v3 + 1104) && *(a2 + 6464) >= 1)
    {
      v7 = 0;
      v8 = v3 + 976;
      v9 = v3 + 272;
      v10 = v3 + 1088;
      v11 = v3 + 1008;
      do
      {
        if (*(v8 + 4 * v7) >= 1)
        {
          v12 = 0;
          do
          {
            aj_rowbuffer_return_buffer((a3 + 152), *(v9 + 8 * v12));
            *(v9 + 8 * v12++) = 0;
          }

          while (v12 < *(v8 + 4 * v7));
        }

        if (*(v10 + 4 * v7) >= 1)
        {
          v13 = 0;
          do
          {
            aj_rowbuffer_return_buffer((a3 + 152), *(v11 + 8 * v13));
            *(v11 + 8 * v13++) = 0;
          }

          while (v13 < *(v10 + 4 * v7));
        }

        ++v7;
        v9 += 168;
        v11 += 16;
      }

      while (v7 < *(a2 + 6464));
    }

    free(v3);
  }
}

_BYTE *outbuffer_drain(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = *(a1 + 80);
  v7 = *(a2 + 6464);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = (a3 + 568);
    v10 = (v5 + 1008);
    v11 = v26;
    do
    {
      v12 = *(v5 + 1072 + 4 * v8);
      v13 = v10;
      v14 = v11;
      v15 = v9;
      if (v12 >= 1)
      {
        do
        {
          *v14++ = *v15;
          v16 = *v13++;
          *v15++ = v16;
          --v12;
        }

        while (v12);
      }

      ++v8;
      v9 += 16;
      v11 += 16;
      v10 += 2;
    }

    while (v8 != v7);
  }

  result = (*v6)(v6, a2, a3, *(v5 + 1072), *(v5 + 72));
  v18 = *(v5 + 72) + *(v5 + 1072);
  *(v5 + 72) = v18;
  if (v18 >= *(v5 + 36) && !*(a3 + 1082))
  {
    *(v5 + 264) = 1;
  }

  if (*(a2 + 6464) >= 1)
  {
    v19 = 0;
    v20 = v5 + 1072;
    v21 = v5 + 32;
    v22 = a3 + 568;
    v23 = v5 + 1008;
    v24 = v26;
    do
    {
      if (*(v20 + 4 * v19) >= 1)
      {
        v25 = 0;
        do
        {
          aj_rowbuffer_return_buffer((a3 + 152), *(v22 + 8 * v25));
          *(v22 + 8 * v25) = *&v24[8 * v25];
          result = aj_rowbuffer_get_buffer((a3 + 152), *(v21 + 8 * v19));
          *(v23 + 8 * v25++) = result;
        }

        while (v25 < *(v20 + 4 * v19));
      }

      *(v20 + 4 * v19++) = 0;
      v22 += 128;
      v24 += 16;
      v23 += 16;
    }

    while (v19 < *(a2 + 6464));
  }

  return result;
}

uint64_t aj_reduce_init_unpack(uint64_t a1, unint64_t a2, void *a3, unsigned int **a4, void *a5, unsigned int *a6, uint64_t a7, uint64_t a8)
{
  *a4 = a6;
  result = aj_imageinfo_init(a6, a4);
  if (!result)
  {
    aj_reset_mcustate(a5, a7);
    result = aj_init_huffman(a6, a4);
    if (!result)
    {
      result = init_reduce(a2, a4, a3, a1, a8);
      if (!result)
      {
        v17 = 0;
        v18 = a4 + 1;
        v19 = a2 + 135592;
        v20 = 1;
        do
        {
          v21 = v20;
          v22 = &v18[2 * v17];
          if (*v22)
          {
            aj_huffman_encode_init_lookups(*v22, (*v22 + 16), v19 + (v17 << 11), 0);
          }

          v23 = v22[1];
          if (v23)
          {
            aj_huffman_encode_init_lookups(v23, (v23 + 16), v19 + (v17 << 11) + 1024, a2 + 139688 + (v17 << 10));
          }

          v20 = 0;
          v17 = 1;
        }

        while ((v21 & 1) != 0);
        return 0;
      }
    }
  }

  return result;
}

uint64_t init_reduce(unint64_t a1, unsigned int **a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 20) * *(a2 + 23);
  *(a1 + 141744) = a2;
  v11 = *(a4 + 8);
  if (v11)
  {
    free(v11);
  }

  v12 = malloc_type_calloc(1uLL, 132 * v10, 0x1000040417DB209uLL);
  *(a4 + 8) = v12;
  *a1 = v12;
  if (!v12)
  {
    aj_log_error(0, "Could not allocate memory for block buffers.");
    return 6;
  }

  v85 = (a1 + 89604);
  v13 = *(a2 + 20);
  v14 = v13 * *(a2 + 22);
  v15 = &v12[66 * v14];
  v13 *= 33;
  *(a1 + 8) = v15;
  *(a1 + 16) = &v15[2 * v13];
  v16 = &v12[66 * v10];
  v17 = &v16[66 * v14];
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 40) = &v17[2 * v13];
  *(a1 + 134848) = vextq_s8(*(a1 + 134872), *(a1 + 134872), 8uLL);
  v83 = (a1 + 44676);
  determine_max_bits(&(*a2)[64 * (*a2)[12] + 22], (a1 + 44688));
  v18 = *a2;
  if (**a2 >= 2)
  {
    v19 = v18[13];
    if (v19 == v18[14])
    {
      determine_max_bits(&v18[64 * v19 + 22], (a1 + 89616));
      v20 = *(a1 + 89824);
      *(a1 + 134736) = *(a1 + 89808);
      *(a1 + 134752) = v20;
      v21 = *(a1 + 89856);
      *(a1 + 134768) = *(a1 + 89840);
      *(a1 + 134784) = v21;
      v22 = *(a1 + 89760);
      *(a1 + 134672) = *(a1 + 89744);
      *(a1 + 134688) = v22;
      v23 = *(a1 + 89792);
      *(a1 + 134704) = *(a1 + 89776);
      *(a1 + 134720) = v23;
      v24 = *(a1 + 89696);
      *(a1 + 134608) = *(a1 + 89680);
      *(a1 + 134624) = v24;
      v25 = *(a1 + 89728);
      *(a1 + 134640) = *(a1 + 89712);
      *(a1 + 134656) = v25;
      v26 = *(a1 + 89632);
      *(a1 + 134544) = *(a1 + 89616);
      *(a1 + 134560) = v26;
      v27 = *(a1 + 89664);
      *(a1 + 134576) = *(a1 + 89648);
      *(a1 + 134592) = v27;
    }

    else
    {
      *(a1 + 89616) = 11;
      *(a1 + 134544) = 11;
      memset_pattern16((a1 + 89620), &unk_240AB5B80, 0xFCuLL);
      memset_pattern16((a1 + 134548), &unk_240AB5B80, 0xFCuLL);
    }
  }

  v28 = 12 * (*a5)(38);
  v29 = v28 + 16 * (*a5)(9);
  v30 = v29 + 5544 * (*a5)(15);
  if (**a2 >= 2)
  {
    v31 = v30 + 12 * (*a5)(23);
    v32 = v31 + 16 * (*a5)(9);
    v30 = v32 + 5544 * (*a5)(15);
  }

  v33 = *(a4 + 16);
  if (v33)
  {
    free(v33);
  }

  v34 = malloc_type_calloc(1uLL, v30, 0xFA774A5FuLL);
  *(a4 + 16) = v34;
  if (!v34)
  {
    aj_log_error(0, "Could not allocate memory for contexts.");
    return 6;
  }

  v35 = v34;
  v79 = a3;
  v80 = a2;
  v36 = **a2;
  if (v36 >= 1)
  {
    v37 = 0;
    v38 = (a1 + 44680);
    do
    {
      if (v37)
      {
        v39 = 4;
      }

      else
      {
        v39 = 5;
      }

      *(v38 - 2) = 1 << v39;
      *(v38 - 1) = v39;
      *v38 = 0x300000008;
      ++v37;
      v38 += 5616;
    }

    while (v36 != v37);
  }

  for (i = 96; i != 192; i += 8)
  {
    v41 = 1 << *v83;
    v42 = *(a1 + 44688) - *(a1 + 44676);
    *(a1 + i) = v35;
    (*(a5 + 24))(a1 + 134832, v35, (v42 + v41), 1);
    v35 += (*a5)((v42 + v41));
  }

  v82 = a1 + 44688;
  do
  {
    *(a1 + i) = v35;
    (*(a5 + 24))(a1 + 134832, v35, 9, 1);
    v35 += (*a5)(9);
    i += 8;
  }

  while (i != 320);
  v84 = a1 + 134832;
  v43 = 0;
  v81 = a1;
  v44 = a1 + 320;
  do
  {
    v45 = 0;
    ++v43;
    do
    {
      v46 = v83[2];
      v47 = 1 << v46;
      v48 = *(v82 + 4 * v43) - v46;
      *(v44 + v45) = v35;
      (*(a5 + 24))(v84, v35, (v48 + (1 << v46)), 1);
      v35 += (*a5)((v48 + v47));
      v45 += 8;
    }

    while (v45 != 704);
    v44 += 704;
  }

  while (v43 != 63);
  v49 = v80;
  v50 = *v80;
  v51 = **v80;
  if (v51 <= 1)
  {
    v65 = v81;
    v66 = v84;
  }

  else
  {
    v52 = 0;
    v53 = v85;
    do
    {
      v54 = 1 << *v85;
      v55 = v85[3] - *v85;
      *(v81 + 45024 + v52) = v35;
      *(v81 + 89952 + v52) = v35;
      (*(a5 + 24))(v84, v35, (v55 + v54), 1);
      v35 += (*a5)((v55 + v54));
      v52 += 8;
    }

    while (v52 != 96);
    for (j = 0; j != 128; j += 8)
    {
      *(v81 + 45120 + j) = v35;
      *(v81 + 90048 + j) = v35;
      (*(a5 + 24))(v84, v35, 9, 1);
      v35 += (*a5)(9);
    }

    v57 = 0;
    v58 = v81 + 45248;
    v59 = v81 + 90176;
    do
    {
      v60 = 0;
      ++v57;
      do
      {
        v61 = v53[2];
        v62 = 1 << v61;
        v63 = v85[v57 + 3] - v61;
        *(v58 + v60) = v35;
        *(v59 + v60) = v35;
        (*(a5 + 24))(v84, v35, (v63 + (1 << v61)), 1);
        v64 = (v63 + v62);
        v53 = v85;
        v35 += (*a5)(v64);
        v60 += 8;
      }

      while (v60 != 704);
      v58 += 704;
      v59 += 704;
    }

    while (v57 != 63);
    v49 = v80;
    v65 = v81;
    v50 = *v80;
    v51 = **v80;
    v66 = v84;
  }

  v68 = v79;
  if (v51 >= 1)
  {
    v69 = 0;
    v70 = v50 + 843;
    v71 = v49 + 1;
    v72 = v65 + 135592;
    v73 = vaddq_s64(vdupq_n_s64(v65), xmmword_240AB5B70);
    v74 = 44928 * v51;
    do
    {
      v75 = *(v70 - 4);
      v76 = *v70;
      v77 = (v65 + 44968 + v69);
      *v77 = v68;
      v68[4] = v71[2 * v75];
      v68[5] = v71[2 * v76 + 1];
      v68[84] = v72 + (v75 << 11);
      v68[85] = v72 + (v76 << 11) + 1024;
      v68[86] = v65 + 139688 + (v76 << 10);
      v78 = (v65 + v69);
      v78[5].i64[0] = v66;
      v78[5].i64[1] = a5;
      v78[2809] = v73;
      *(v77 - 1) = v65 + 135464;
      v69 += 44928;
      ++v70;
      v68 += 196;
    }

    while (v74 != v69);
  }

  return 0;
}

double aj_reduce_init_pack(uint64_t a1, unint64_t a2, uint64_t *a3, unsigned int **a4, uint64_t a5, unsigned int *a6, uint64_t a7, uint64_t a8)
{
  v50 = *MEMORY[0x277D85DE8];
  *a3 = a6;
  *a4 = a6;
  aj_reset_mcustate((a5 + 112), a7);
  v16 = *a3;
  *a5 = 0;
  if (!*(v16 + 84))
  {
    *(a3 + 6892) = 0x100000001;
    *(a3 + 6804) = 0;
    *(a3 + 42) = 1;
    *(a3 + 1653) = 0;
    v18 = *(v16 + 8);
    v17 = *(v16 + 12);
    *(a3 + 1621) = v18;
    *(a3 + 1622) = v17;
    *(a3 + 1645) = 0;
    *(a3 + 1706) = 0;
    a3[852] = 0;
    *(a3 + 1707) = v18;
    *(a3 + 1708) = v17;
    *(a3 + 1721) = 1;
    if (!aj_compute_helpers(a3))
    {
      v19 = (a3 + 24);
      if (!init_reduce(a2, a3[1], a3 + 24, a1, a8) && !aj_init_huffman(a6, a4))
      {
        if (*a6 >= 1)
        {
          v20 = 0;
          do
          {
            aj_init_component(a3, v19, v20++, 1, 0);
            v19 += 1568;
          }

          while (v20 < *a6);
        }

        *(a3 + 1737) = 1;
        if (!aj_init_decode_jobs(a3, a5, 0, 0, 1))
        {
          v21 = 0;
          v22 = 88;
          do
          {
            v23 = 0;
            v24 = *a3 + 88;
            v25 = *a3 + v22;
            do
            {
              *(v35 + aj_glob_zigzag[v23]) = *(v25 + v23 * 4);
              ++v23;
            }

            while (v23 != 64);
            v26 = v47;
            v27 = (v24 + (v21 << 8));
            v27[12] = v46;
            v27[13] = v26;
            v28 = v49;
            v27[14] = v48;
            v27[15] = v28;
            v29 = v43;
            v27[8] = v42;
            v27[9] = v29;
            v30 = v45;
            v27[10] = v44;
            v27[11] = v30;
            v31 = v39;
            v27[4] = v38;
            v27[5] = v31;
            v32 = v41;
            v27[6] = v40;
            v27[7] = v32;
            v33 = v35[1];
            *v27 = v35[0];
            v27[1] = v33;
            result = *&v36;
            v34 = v37;
            v27[2] = v36;
            v27[3] = v34;
            ++v21;
            v22 += 256;
          }

          while (v21 != 4);
        }
      }
    }
  }

  return result;
}

int *determine_max_bits(int *result, int *a2)
{
  if (*result >= 2)
  {
    v3 = 0;
    do
    {
      v4 = v3 + 1;
      if (v3 > 0x1F)
      {
        break;
      }

      v5 = 1 << v3++;
    }

    while (v5 <= *result);
    v2 = 13 - v4;
  }

  else
  {
    v2 = 11;
  }

  *a2 = v2;
  for (i = 1; i != 64; ++i)
  {
    v7 = result[i];
    if (v7 >= 2)
    {
      v9 = 0;
      do
      {
        v10 = v9 + 1;
        if (v9 > 0x1F)
        {
          break;
        }

        v11 = 1 << v9++;
      }

      while (v11 <= v7);
      v8 = 12 - v10;
    }

    else
    {
      v8 = 10;
    }

    a2[i] = v8;
  }

  return result;
}

char **recode_open(uint64_t a1, uint64_t *a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (a1)
    {
      aj_log_error("Recode", "applejpeg_memory argument provided. This is deprecated and will be ignored.");
    }

    if (a2 && a3)
    {
      aj_log_error("Recode", "Cannot have both file input AND memory input");
LABEL_26:
      v11 = 8;
LABEL_27:
      v8 = 0;
      *a4 = v11;
      return v8;
    }

    if (!(a2 | a3))
    {
      aj_log_error("Recode", "Input cannot be NULL");
      goto LABEL_26;
    }

    if (a3)
    {
      if (!*a3 || !*(a3 + 16))
      {
        aj_log_error("Recode", "Read/Skip callback is missing");
        goto LABEL_26;
      }

      v9 = *(a3 + 40);
      if (v9)
      {
        if (v9 <= 0x3FF)
        {
          aj_log_error("Recode", "Read buff must be at least %d bytes");
          goto LABEL_26;
        }

        if (v9 >> 31)
        {
          aj_log_error("Recode", "Read buff can't be larger than %d");
          goto LABEL_26;
        }
      }

      if (*(a3 + 48) >> 31)
      {
        aj_log_error("Recode", "The file size can't be larger than %d");
        goto LABEL_26;
      }
    }

    else
    {
      if (!*a2 || (v10 = a2[1]) == 0)
      {
        aj_log_error("Recode", "NULL fields in the memory input struct not allowed");
        goto LABEL_26;
      }

      if (v10 >> 31)
      {
        aj_log_error("Recode", "Memory input buffer size may not be larger than %d");
        goto LABEL_26;
      }
    }

    v13 = malloc_type_calloc(1uLL, 0x5B0uLL, 0x10B004061459EB2uLL);
    if (!v13)
    {
      aj_log_error("Recode", "Could not allocate memory for session object");
      v11 = 6;
      goto LABEL_27;
    }

    v8 = v13;
    applejpeg_recode_clear_options(v13);
    v14 = applejpeg_decode_create(a1);
    *v8 = v14;
    if (v14)
    {
      if (a3)
      {
        v16 = applejpeg_decode_open_file(v14, a3, 0);
      }

      else
      {
        v16 = applejpeg_decode_open_mem(v14, a2);
      }

      v11 = v16;
      *a4 = v16;
      if (*v8)
      {
        if (!v16)
        {
          image_info = applejpeg_decode_get_image_info(*v8, (v8 + 2));
          if (image_info)
          {
            v11 = image_info;
            aj_log_error("Recode", "Could not extract image information");
          }

          else
          {
            if (*(v8 + 8) == 2)
            {
              aj_log_error("Recode", "Recode does not support lossless jpegs");
            }

            else
            {
              if (applejpeg_decode_get_precision(*v8) == 8)
              {
                *a4 = 0;
                return v8;
              }

              aj_log_error("Recode", "Recode only supports 8-bit jpegs");
            }

            v11 = 3;
          }
        }

        goto LABEL_42;
      }
    }

    else
    {
      v11 = *a4;
    }

    if (!v11)
    {
      v11 = 6;
      *a4 = 6;
    }

LABEL_42:
    applejpeg_decode_destroy(*v8, v15);
    *v8 = 0;
    v18 = 140;
    do
    {
      v19 = v8[v18];
      if (v19)
      {
        free(v19);
        v8[v18] = 0;
      }

      v20 = v18 * 8 - 1112;
      ++v18;
    }

    while (v20 < 0x48);
    free(v8);
    goto LABEL_27;
  }

  aj_log_error("Recode", "Error pointer cannot be NULL", a3);
  return 0;
}

uint64_t applejpeg_recode_set_option_outsize(uint64_t a1, int a2, int a3, int a4)
{
  if (a1)
  {
    if (a4 | a3 | a2)
    {
      if (a2 && a4 | a3)
      {
        aj_log_error("Recode", "Can not set both output scale and width/height");
      }

      else
      {
        if ((a3 == 0) == (a4 == 0))
        {
          v4 = 0;
          *(a1 + 204) = a2;
          *(a1 + 192) = a3;
          *(a1 + 196) = a4;
          *(a1 + 1104) = 0;
          return v4;
        }

        aj_log_error("Recode", "Can not set only one output dimension");
      }
    }

    else
    {
      aj_log_error("Recode", "Must set either output scale or width/height");
    }
  }

  return 5;
}

uint64_t applejpeg_recode_set_option_aspect(uint64_t a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    return 5;
  }

  if (a2 >= 4)
  {
    aj_log_error("Recode", "Unknown aspect option: %d", a2);
    return 5;
  }

  else
  {
    result = 0;
    *(a1 + 200) = a2;
    *(a1 + 208) = a3;
    *(a1 + 1104) = 0;
  }

  return result;
}

uint64_t applejpeg_recode_set_option_orientation(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 5;
  }

  if ((a2 - 9) > 0xFFFFFFF7)
  {
    result = 0;
    *(a1 + 384) = a2;
    *(a1 + 1104) = 0;
  }

  else
  {
    aj_log_error("Recode", "Orientation out of bounds: %u", a2);
    return 5;
  }

  return result;
}

uint64_t applejpeg_recode_set_option_crop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 5;
  }

  if ((a2 & 0x8000000080000000) != 0 || a3 < 1 || a3 <= 0)
  {
    aj_log_error("Recode", "Invalid cropregion: (%d,%d) %dx%d", a2, HIDWORD(a2), a3, HIDWORD(a3));
    return 5;
  }

  else
  {
    v3 = 0;
    *(a1 + 212) = a2;
    *(a1 + 220) = a3;
    *(a1 + 1104) = 0;
  }

  return v3;
}

uint64_t applejpeg_recode_set_option_skip_app0(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 5;
  }

  result = 0;
  *(a1 + 312) = a2;
  *(a1 + 1104) = 0;
  return result;
}

uint64_t applejpeg_recode_set_option_jpeg_quality(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 5;
  }

  if ((a2 - 101) > 0xFFFFFF9B)
  {
    result = 0;
    *(a1 + 248) = a2;
    *(a1 + 228) = 1;
    *(a1 + 1104) = 0;
  }

  else
  {
    aj_log_error("Recode", "Quality out of bounds: %d", a2);
    return 5;
  }

  return result;
}

uint64_t applejpeg_recode_set_option_quantization_tables(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 5;
  }

  for (i = 0; i != 32; i += 8)
  {
    *(a1 + 256 + i) = *(a2 + i);
  }

  v3 = 0;
  *(a1 + 248) = 0;
  *(a1 + 228) = 1;
  *(a1 + 1104) = 0;
  return v3;
}

uint64_t applejpeg_recode_set_option_jpeg_format(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 5;
  }

  if (a2 >= 5)
  {
    aj_log_error("Recode", "Unknown JPEG format: %d", a2);
    return 5;
  }

  else
  {
    result = 0;
    *(a1 + 288) = a2;
    *(a1 + 229) = 1;
    *(a1 + 1104) = 0;
  }

  return result;
}

uint64_t applejpeg_recode_set_option_jpeg_type(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 5;
  }

  if (a2 < 2)
  {
    result = 0;
    *(a1 + 292) = a2;
    *(a1 + 1104) = 0;
  }

  else
  {
    aj_log_error("Recode", "Unknown JPEG type: %d", a2);
    return 5;
  }

  return result;
}

uint64_t applejpeg_recode_set_option_accelerated_resize(_BYTE *a1, char a2)
{
  if (!a1)
  {
    return 5;
  }

  result = 0;
  a1[388] = a2;
  a1[389] = a2;
  a1[1104] = 0;
  return result;
}

uint64_t applejpeg_recode_set_option_hw_accelerated_resize(_BYTE *a1, int a2, int a3)
{
  if (!a1)
  {
    return 5;
  }

  result = 0;
  a1[388] = a2;
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  a1[389] = v6;
  a1[1104] = 0;
  return result;
}

uint64_t applejpeg_recode_set_option_converter(uint64_t a1, __int128 *a2)
{
  result = 5;
  if (a1 && a2)
  {
    if (*a2 == 1)
    {
      result = 0;
      *(a1 + 390) = 1;
      v4 = *a2;
      *(a1 + 408) = *(a2 + 2);
      *(a1 + 392) = v4;
      *(a1 + 1104) = 0;
    }

    else
    {
      aj_log_error("Recode", "Unknown converter version: %d", *a2);
      return 5;
    }
  }

  return result;
}

void applejpeg_recode_clear_options(uint64_t result)
{
  if (result)
  {
    *(result + 192) = xmmword_240AB5B90;
    *(result + 212) = -1;
    *(result + 220) = -1;
    *(result + 208) = 0;
    *(result + 344) = 0;
    *(result + 352) = 0u;
    *(result + 368) = 0u;
    applejpeg_encode_options_init(result + 232);
    *(result + 384) = 1;
    *(result + 388) = 0;
    *(result + 390) = 0;
    *(result + 1104) = 0;
    *(result + 228) = 0;
  }
}

uint64_t applejpeg_recode_get_image_info(uint64_t *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v4 = *a1;

    return applejpeg_decode_get_image_info(v4, a2);
  }

  else
  {
    aj_log_error("Recode", "Cannot take NULL arguments", v2, v3);
    return 8;
  }
}

uint64_t applejpeg_resize_plugin_set_preferred_format(uint64_t result, unsigned int a2)
{
  if (a2 <= 0xA && ((1 << a2) & 0x518) != 0)
  {
    *(result + 904) = a2;
    *(result + 908) = 1;
  }

  return result;
}

uint64_t applejpeg_recode_all_file(_DWORD **a1, uint64_t a2, void *a3)
{
  if (!a1 || !a2)
  {
    aj_log_error("Recode", "Cannot take NULL arguments");
    return 8;
  }

  if (*(a2 + 40))
  {
    aj_log_error("Recode", "File write buffer size may not be larger than %d", a2, a3);
    return 8;
  }

  return recode_all(a1, 0, a2, a3);
}

uint64_t recode_all(_DWORD **a1, uint64_t a2, __int128 *a3, void *a4)
{
  v93 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  (*a1)[1019] = 1;
  if (!*(a1 + 1104))
  {
    if ((*(a1 + 96) - 9) <= 0xFFFFFFF7)
    {
      aj_log_error("Recode", "Orientation must be [1..8]. Got %d");
      return 5;
    }

    v13 = *(a1 + 51);
    v14 = *(a1 + 49);
    if (v13)
    {
      if (v14 || *(a1 + 48))
      {
        aj_log_error("Recode", "Set scale OR width and height");
        return 5;
      }

      if ((v13 - 65) > 0xFFFFFFBF)
      {
        goto LABEL_128;
      }
    }

    else
    {
      v66 = *(a1 + 48);
      if (a1[24])
      {
        if (v66 < 1 || (v14 - 0x10000) < 0xFFFF0001 || v66 >= 0x10000)
        {
          aj_log_error("Recode", "Illegal dimensions (%dx%d). Dimensions must be 0 < x <= 65535.");
          return 5;
        }

LABEL_128:
        if (*(a1 + 50) >= 4u)
        {
          aj_log_error("Recode", "Illegal preserve aspect ratio option");
          return 5;
        }

        if (*(a1 + 344) && (!a1[45] || !a1[46]))
        {
          aj_log_error("Recode", "A resize plugin must implement create and resize");
          return 5;
        }

        if (*(a1 + 390))
        {
          if ((*(a1 + 9) - 3) <= 2)
          {
            aj_log_error("Recode", "Converter requires BGRA data, but the JPEG is CMYK or YCCK. Unable to convert");
            return 3;
          }

          if (*(a1 + 98) == 1 && !a1[51])
          {
            aj_log_error("Recode", "The converter callback is NULL");
            return 5;
          }
        }

        init_decopt(a1, (a1 + 24), (a1 + 7));
        if (!*(a1 + 228))
        {
          v89[0] = 0;
          v89[1] = 0;
          v87[0] = 0;
          v90.n128_u64[0] = (a1 + 150);
          v90.n128_u64[1] = (a1 + 158);
          *&v91 = a1 + 166;
          *(&v91 + 1) = a1 + 174;
          qtables = applejpeg_decode_get_qtables(*a1, &v90, v87, v89);
          if (qtables)
          {
            return qtables;
          }

          for (i = 0; i != 4; ++i)
          {
            a1[i + 32] = v90.n128_u64[*(v89 + i)];
          }

          *(a1 + 62) = 0;
        }

        if (!*(a1 + 229))
        {
          *(a1 + 72) = applejpeg_decode_get_chroma_subsampling(*a1);
        }

        *(a1 + 1104) = 1;
        if (*(a1 + 49))
        {
          goto LABEL_156;
        }

        v76 = *(a1 + 48);
        if (v76)
        {
          goto LABEL_156;
        }

        v79 = *(a1 + 51);
        if (v79 > 8 || ((1 << v79) & 0x116) == 0)
        {
          goto LABEL_157;
        }

        if (*(a1 + 229))
        {
          if (v79 != 8)
          {
            goto LABEL_169;
          }

          v80 = *(a1 + 72);
          if (v80 != applejpeg_decode_get_chroma_subsampling(*a1))
          {
            goto LABEL_156;
          }

          if (*(a1 + 51) != 8)
          {
LABEL_169:
            if (*(a1 + 72) != 3)
            {
              goto LABEL_156;
            }
          }
        }

        LOBYTE(v76) = 0;
        v81 = *(a1 + 5);
        if (v81 == 1 || v81 > 3)
        {
          goto LABEL_157;
        }

        if (*(a1 + 56) == -1)
        {
          LOBYTE(v76) = *(a1 + 55) == -1 && *(a1 + 53) == -1 && *(a1 + 54) == -1 && *(a1 + 96) == 1 && *(a1 + 390) == 0;
          goto LABEL_157;
        }

LABEL_156:
        LOBYTE(v76) = 0;
LABEL_157:
        *(a1 + 1105) = v76;
        goto LABEL_2;
      }
    }

    aj_log_error("Recode", "Unsupported scale. Scale: %d.");
    return 5;
  }

LABEL_2:
  v8 = *(a1 + 344) == 0;
  if (*(a1 + 388))
  {
    if (*(a1 + 344) && a1[45] && a1[46])
    {
      v8 = 0;
    }

    else
    {
      v9 = plugin_vimage_destroy;
      v10 = plugin_vimage_resize;
      v11 = plugin_vimage_create;
      if (*(a1 + 389))
      {
        v12 = 4;
        v9 = plugin_iosaccelerator_destroy;
        v10 = plugin_iosaccelerator_resize;
        v11 = plugin_iosaccelerator_create;
        if (*(a1 + 96) <= 1u)
        {
          if (*(a1 + 34))
          {
            v12 = 4;
          }

          else
          {
            v12 = 8;
          }

          v9 = plugin_iosaccelerator_destroy;
          v10 = plugin_iosaccelerator_resize;
          v11 = plugin_iosaccelerator_create;
        }
      }

      else
      {
        v12 = 4;
      }

      v8 = 0;
      *(a1 + 344) = 1;
      a1[44] = 0;
      a1[45] = v11;
      a1[46] = v10;
      a1[47] = v9;
      *(a1 + 226) = v12;
      *(a1 + 227) = 1;
    }
  }

  v88 = 0;
  LODWORD(v89[0]) = 0;
  v86 = 0;
  v87[0] = 0;
  v84 = 0;
  v90 = 0uLL;
  if (v8)
  {
    goto LABEL_38;
  }

  v15 = *(a1 + 33);
  v85 = v15;
  if ((!*(a1 + 21) || !*(a1 + 22)) && v15 <= 8 && ((1 << v15) & 0x116) != 0)
  {
    goto LABEL_38;
  }

  if (aj_calculate_dimensions(a1 + 14, (*a1 + 30), v89, v87, &v88, &v86, &v90, &v85, &v84))
  {
    goto LABEL_38;
  }

  v16 = v85;
  if (v85 >= 2)
  {
    v16 = v85 >> ((*a1)[33] / v85 < *(a1 + 22));
  }

  v17 = v90.n128_u32[2] / v16;
  if (v90.n128_u32[2] / v16 == v88 && v90.n128_u32[3] / v16 == v86)
  {
    goto LABEL_38;
  }

  if (*(a1 + 21) && *(a1 + 22) && *(a1 + 23) == 1)
  {
    if (v88 != LODWORD(v89[0]))
    {
      goto LABEL_38;
    }

    v18 = v86;
    if (v86 != v87[0] || v17 > 4 * v88)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (v17 > 4 * v88)
    {
      goto LABEL_38;
    }

    v18 = v86;
  }

  v67 = v90.n128_u32[3] / v16;
  if (v67 > 4 * v18 || v17 < 16 || v88 < 16 || v18 < 16 || v67 <= 15 || a1[30])
  {
    goto LABEL_38;
  }

  v19 = do_recode_plugin(a1, a2, a3, a4);
  if (v19 != 3)
  {
LABEL_181:
    init_decopt(a1, (a1 + 24), (a1 + 7));
    if (!v19)
    {
      goto LABEL_102;
    }

    goto LABEL_38;
  }

  if (a1[45] == plugin_iosaccelerator_create && a1[46] == plugin_iosaccelerator_resize && a1[47] == plugin_iosaccelerator_destroy)
  {
    init_decopt(a1, (a1 + 24), (a1 + 7));
    *(a1 + 344) = 1;
    a1[44] = 0;
    a1[45] = plugin_vimage_create;
    a1[46] = plugin_vimage_resize;
    a1[47] = plugin_vimage_destroy;
    a1[113] = 0x100000004;
    v19 = do_recode_plugin(a1, a2, a3, a4);
    goto LABEL_181;
  }

  init_decopt(a1, (a1 + 24), (a1 + 7));
LABEL_38:
  if (!a1[30] && *(a1 + 96) == 1)
  {
    memset(v92, 0, sizeof(v92));
    v90 = 0u;
    v91 = 0u;
    if (*(a1 + 1105))
    {
      *(a1 + 16) = 14;
    }

    v89[0] = 0;
    *v87 = 0;
    v19 = applejpeg_decode_set_options(*a1, (a1 + 7), v87, 0, v89, &v92[8], &v92[12]);
    if (v19)
    {
      goto LABEL_102;
    }

    v83 = *&v92[12];
    v20 = v89[0];
    a1[53] = v89[0];
    v21 = a1[141];
    if (v21)
    {
      free(v21);
      v20 = a1[53];
    }

    v22 = malloc_type_calloc(1uLL, v20, 0x9EB1FEDFuLL);
    a1[141] = v22;
    a1[52] = v22;
    if (v22)
    {
      if (!*(a1 + 390))
      {
        goto LABEL_50;
      }

      v23 = a1[148];
      if (v23)
      {
        free(v23);
      }

      v24 = malloc_type_calloc(1uLL, a1[53], 0x4EAB80D9uLL);
      a1[148] = v24;
      a1[119] = v24;
      if (v24)
      {
LABEL_50:
        v82 = a3;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *&v92[16] = *(a1 + 16);
        v88 = 1;
        while (1)
        {
          v28 = *a1;
          v29 = (a1 + 52);
          if (*(a1 + 1105))
          {
            v30 = applejpeg_decode_image_row_texture(v28, v29, &v92[8], &v88);
          }

          else
          {
            v30 = applejpeg_decode_image_row(v28, v29, &v92[8], &v88);
          }

          v19 = v30;
          if (v30)
          {
LABEL_147:
            v74 = a1[1];
            if (v74)
            {
LABEL_148:
              applejpeg_encode_destroy(v74);
              a1[1] = 0;
            }

            goto LABEL_102;
          }

          if (v25)
          {
            if (*(a1 + 1105))
            {
              goto LABEL_74;
            }

            v31 = *(a1 + 390);
          }

          else
          {
            v32 = applejpeg_encode_create(0);
            a1[1] = v32;
            if (!v32)
            {
              v19 = 6;
              goto LABEL_102;
            }

            *(v32 + 3320) = 1;
            v33 = (a1 + 29);
            if (a2)
            {
              v34 = applejpeg_encode_set_options_mem(v32, v33, &v92[8], a2);
              if (v34)
              {
                goto LABEL_146;
              }
            }

            else
            {
              v34 = applejpeg_encode_set_options_file(v32, v33, &v92[8], v82);
              if (v34)
              {
LABEL_146:
                v19 = v34;
                goto LABEL_147;
              }
            }

            a1[1][858] = (*a1)[884];
            v35 = *&v92[56];
            v36 = *&v92[88];
            *(a1 + 66) = *&v92[72];
            *(a1 + 67) = v36;
            *(a1 + 68) = *&v92[104];
            v37 = *&v92[24];
            *(a1 + 62) = *&v92[8];
            *(a1 + 63) = v37;
            *(a1 + 64) = *&v92[40];
            *(a1 + 65) = v35;
            v31 = *(a1 + 390);
            v38 = v92;
            if (*(a1 + 390))
            {
              v27 = (a1 + 119);
            }

            else
            {
              v27 = &v90;
            }

            if (*(a1 + 390))
            {
              v38 = a1 + 123;
            }

            if (*(a1 + 1105))
            {
              *v38 = 3;
              v39 = a1[52];
              v27->n128_u64[0] = v39;
              v40 = v39 + *&v92[32] * *&v92[24];
              v41 = v31 == 0;
              v42 = &v90.n128_u64[1];
              if (!v41)
              {
                v42 = (a1 + 120);
              }

              *v42 = v40;
              v43 = &v91;
              if (!v41)
              {
                v43 = (a1 + 121);
              }

              *v43 = v90.n128_u64[1] + *&v92[64] * *&v92[56];
LABEL_74:
              v44 = *&v92[52];
              if (*&v92[52] >= v83 - v26)
              {
                v44 = v83 - v26;
              }

              v27[2].n128_u32[3] = v44;
              goto LABEL_80;
            }

            *v38 = 1;
            v90.n128_u64[0] = a1[52];
          }

          v27[2].n128_u32[3] = 1;
          *&v92[12] = 1;
          if (v31)
          {
            (a1[51])(a1[50], &v90, v27);
          }

LABEL_80:
          v45 = v27[2].n128_u32[3];
          v19 = applejpeg_encode_image_row(a1[1], v27, a4);
          if (!v19)
          {
            v26 += v45;
            v25 = 1;
            if (v88)
            {
              continue;
            }
          }

          goto LABEL_147;
        }
      }

      aj_log_error("Recode", "Could not allocate the convert buffer");
    }

    else
    {
      aj_log_error("Recode", "Could not allocate memory for row buffer");
    }

    goto LABEL_101;
  }

  v46 = *a1;
  (*a1)[1019] = 1;
  if (*(a1 + 1105))
  {
    *(a1 + 16) = 14;
  }

  v89[0] = 0;
  v90 = 0u;
  v91 = 0u;
  memset(v92, 0, sizeof(v92));
  v47 = applejpeg_decode_set_options(v46, (a1 + 7), a1 + 53, 0, v89, &v92[8], &v92[12]);
  if (v47)
  {
    goto LABEL_86;
  }

  v48 = a1[141];
  if (v48)
  {
    free(v48);
  }

  v49 = malloc_type_calloc(1uLL, a1[53], 0x321C103CuLL);
  a1[141] = v49;
  a1[52] = v49;
  if (!v49)
  {
    aj_log_error("Recode", "Could not allocate memory for image buffer");
    goto LABEL_101;
  }

  v47 = applejpeg_decode_image_all(*a1, a1 + 52, 1, &v90);
  if (v47)
  {
LABEL_86:
    v19 = v47;
    goto LABEL_102;
  }

  if (*(a1 + 1105))
  {
    v50 = v90.n128_u64[0];
    if (v90.n128_u64[0])
    {
      if (*&v92[16] == 14)
      {
        v51 = *&v92[24];
        v52 = *&v92[32];
        v53 = *&v92[56];
        v54 = a3;
        v55 = *&v92[64];
        pad_region(v90.n128_u64[0], *&v92[24], *&v92[32], *&v92[40], *&v92[44], *&v92[48], *&v92[52]);
        v56 = (v50 + v51 * v52);
        pad_region(v56, v53, v55, *&v92[72], *&v92[76], *&v92[80], *&v92[84]);
        v57 = &v56[v53 * v55];
        v58 = v55;
        a3 = v54;
        pad_region(v57, v53, v58, *&v92[72], *&v92[76], *&v92[80], *&v92[84]);
      }
    }
  }

  if (*(a1 + 390))
  {
    v59 = a1[148];
    if (v59)
    {
      free(v59);
    }

    v60 = malloc_type_calloc(1uLL, a1[53], 0xC753C467uLL);
    a1[148] = v60;
    if (!v60)
    {
      aj_log_error("Recode", "Could not allocate memory for color conversion buffer");
      goto LABEL_101;
    }

    v61 = (a1 + 119);
    a1[137] = *&v92[112];
    v62 = *&v92[80];
    *(a1 + 131) = *&v92[64];
    *(a1 + 133) = v62;
    *(a1 + 135) = *&v92[96];
    v63 = *&v92[16];
    *(a1 + 123) = *v92;
    *(a1 + 125) = v63;
    v64 = *&v92[48];
    *(a1 + 127) = *&v92[32];
    *(a1 + 129) = v64;
    v65 = v91;
    *(a1 + 119) = v90;
    *(a1 + 121) = v65;
    a1[119] = v60;
    (a1[51])(a1[50], &v90, a1 + 119);
  }

  else
  {
    v61 = &v90;
  }

  v68 = (*a1)[884];
  v69 = applejpeg_encode_create(0);
  a1[1] = v69;
  if (!v69)
  {
LABEL_101:
    v19 = 6;
    goto LABEL_102;
  }

  *(v69 + 3320) = 1;
  v70 = (a1 + 29);
  v71 = &v61[2].n128_i8[8];
  if (a2)
  {
    v72 = applejpeg_encode_set_options_mem(v69, v70, v71, a2);
  }

  else
  {
    v72 = applejpeg_encode_set_options_file(v69, v70, v71, a3);
  }

  v19 = v72;
  if (!v72)
  {
    v73 = a1[1];
    v73[858] = v68;
    v19 = applejpeg_encode_image_all(v73, v61, a4);
    if (!v19)
    {
      v74 = a1[1];
      goto LABEL_148;
    }
  }

LABEL_102:
  kdebug_trace();
  return v19;
}

uint64_t applejpeg_recode_all_mem(_DWORD **a1, uint64_t a2, void *a3)
{
  if (!a1 || !a2)
  {
    aj_log_error("Recode", "Cannot take NULL arguments");
    return 8;
  }

  if (*(a2 + 8) >> 31)
  {
    aj_log_error("Recode", "Memory buffer size may not be larger than %d", a3);
    return 8;
  }

  return recode_all(a1, a2, 0, a3);
}

void applejpeg_recode_close(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *a1;
    if (v3)
    {
      applejpeg_decode_destroy(v3, a2);
      *a1 = 0;
    }

    v4 = a1[1];
    if (v4)
    {
      applejpeg_encode_destroy(v4);
      a1[1] = 0;
    }

    v5 = 140;
    do
    {
      v6 = a1[v5];
      if (v6)
      {
        free(v6);
        a1[v5] = 0;
      }

      v7 = v5 * 8 - 1112;
      ++v5;
    }

    while (v7 < 0x48);

    free(a1);
  }
}

uint64_t init_decopt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  applejpeg_decode_options_init(a3);
  *(a3 + 12) = *(a2 + 20);
  *(a3 + 76) = *(a2 + 12);
  *(a3 + 28) = *a2;
  *(a3 + 36) = *(a2 + 8);
  *(a3 + 72) = *(a2 + 16);
  if ((*(a1 + 36) - 3) > 2)
  {
    if (*(a2 + 198))
    {
      v6 = 4;
    }

    else
    {
      v6 = 6;
    }
  }

  else
  {
    v6 = 15;
  }

  *(a3 + 8) = v6;
  *(a3 + 92) = 0x400000000;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  result = *(a2 + 192);
  if (result >= 2)
  {

    return aj_transforms_from_orientation(result, (a3 + 80), (a3 + 84), (a3 + 88));
  }

  return result;
}

uint64_t do_recode_plugin(_DWORD **a1, uint64_t a2, __int128 *a3, void *a4)
{
  v160[7] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 0;
  }

  if (*(a1 + 16) == 15)
  {
    v8 = 15;
LABEL_7:
    *(a1 + 226) = v8;
    goto LABEL_8;
  }

  if (*(a1 + 390))
  {
    v8 = 4;
    goto LABEL_7;
  }

  if (!*(a1 + 227))
  {
    v8 = 10;
    goto LABEL_7;
  }

  v8 = *(a1 + 226);
LABEL_8:
  v9 = 1;
  if ((v8 - 10) >= 4)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  *(a1 + 228) = v10;
  LODWORD(v144[0]) = 0;
  LODWORD(v158) = 0;
  LODWORD(v157) = 0;
  v11 = *(a1 + 96);
  if (v11 < 2 || v11 > 8)
  {
    v13 = 0;
  }

  else if (((1 << v11) & 0x18) != 0)
  {
    v13 = 1;
  }

  else
  {
    v12 = 1 << v11;
    if ((v12 & 0x60) != 0)
    {
      v9 = 0;
      v13 = 2;
    }

    else
    {
      v9 = (v12 & 0x180) == 0;
      if ((v12 & 0x180) != 0)
      {
        v13 = 3;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  v142 = 0;
  v143 = 0;
  v141 = 0uLL;
  *&v146 = 0;
  v159 = 0;
  HIDWORD(v156) = 0;
  *(a1 + 229) = v13;
  format_description = aj_calculate_dimensions(a1 + 14, (*a1 + 30), &v142, &v142 + 1, v144, &v158, &v141, &v156 + 1, &v157);
  if (format_description)
  {
    goto LABEL_57;
  }

  if (!v9)
  {
    v142 = vrev64_s32(v142);
    v15 = v158;
    LODWORD(v158) = v144[0];
    LODWORD(v144[0]) = v15;
  }

  v16 = HIDWORD(v156);
  v17 = *a1;
  if (SHIDWORD(v156) >= 2 && *(v17 + 132) / SHIDWORD(v156) < *(a1 + 22))
  {
    v16 = HIDWORD(v156) >> 1;
    HIDWORD(v156) >>= 1;
  }

  v18 = 136;
  if (v9)
  {
    v18 = 152;
  }

  v19 = 8 * *(v17 + v18);
  v20 = v16 << 6;
  *(a1 + 234) = v16 << 6;
  v21 = *(a1 + 229);
  if (v21 > 1)
  {
    if (v21 != 2)
    {
      if (v21 == 3)
      {
        v22 = v141.n128_u32[0];
        v23 = v141.n128_u32[2];
LABEL_38:
        v24 = (v23 + v22) % v19;
        if (v24)
        {
          v20 = v20 - v19 + v24;
        }

        goto LABEL_44;
      }

LABEL_40:
      v20 = *(a1 + 235);
      goto LABEL_45;
    }

    v25 = v141.n128_u32[0];
  }

  else
  {
    if (v21)
    {
      if (v21 == 1)
      {
        v22 = v141.n128_u32[1];
        v23 = v141.n128_u32[3];
        goto LABEL_38;
      }

      goto LABEL_40;
    }

    v25 = v141.n128_i32[1];
  }

  v20 += v25 / v19 * v19 - v25;
LABEL_44:
  *(a1 + 235) = v20;
LABEL_45:
  v26 = 2;
  if (v9)
  {
    v26 = 3;
  }

  v27 = v141.n128_i32[v26];
  if (v20 > v27)
  {
    *(a1 + 235) = v27;
    v20 = v27;
  }

  if (*(a1 + 228) == 2 && ((v20 / v16) & 1) != 0)
  {
    if ((v19 / v16))
    {
      v28 = v20 + v19;
    }

    else
    {
      v28 = (v20 + v16) & -v16;
      v141.n128_u32[1] += v20 - v28;
    }

    *(a1 + 235) = v28;
  }

  *(a1 + 33) = v16;
  a1[11] = 0;
  *(a1 + 21) = 0;
  *(a1 + 68) = v141;
  *(a1 + 16) = v8;
  format_description = applejpeg_decode_set_options(v17, (a1 + 7), &v146, 0, &v159, &v143, &v143 + 1);
  if (format_description)
  {
    goto LABEL_57;
  }

  v33 = *(a1 + 235);
  v34 = *(a1 + 234);
  v35 = (v27 - v33) % v34;
  v36 = v33 / SHIDWORD(v156) + v35 / SHIDWORD(v156);
  v37 = v35 + v33;
  v38 = HIDWORD(v143);
  if (v36 != v37 / SHIDWORD(v156))
  {
    v38 = --HIDWORD(v143);
  }

  if (v34 > v33)
  {
    v33 = v34;
  }

  v39 = v33 / SHIDWORD(v156);
  if (v39 >= v38)
  {
    v39 = v38;
  }

  *(a1 + 236) = v39;
  v40 = *(a1 + 226);
  LODWORD(v159) = 0;
  *&v146 = v143;
  *(&v146 + 1) = v142;
  *&v147 = __PAIR64__(v39, v40);
  a1[56] = (a1[45])(a1[44], &v146, a1 + 57, &v159);
  v41 = v159;
  *(a1 + 237) = v159 == 0;
  if (!v41 || (aj_log_error("Recode", "Resize plugin returned error code %d on init", v41), v29 = v159, !v159))
  {
    v42 = *(a1 + 226);
    if (v42 > 9)
    {
      if (v42 == 10)
      {
        v43 = 0;
        v45 = 0;
        v47 = 2;
        v46 = 1;
        v44 = 1;
        v48 = 2;
LABEL_80:
        v49 = *(a1 + 134);
        *(a1 + 233) = v49;
        if (v49)
        {
          *(a1 + 196) = v47;
          *(a1 + 200) = v42;
          *(a1 + 198) = v142;
          v50 = a1 + 68;
          v51 = v47;
          do
          {
            v52 = *v50;
            v50[26] = *v50;
            v50[41] = v50[4];
            v50[22] = v52;
            ++v50;
            --v51;
          }

          while (v51);
          goto LABEL_83;
        }

        v58 = (v44 & a1[57]) + *(a1 + 114);
        v59 = v142;
        v60 = (v142 & 1) + v142;
        if (v46)
        {
          v61 = v58 * v60;
          v62 = (v61 & 0xFFFFFFFF00000000) != 0;
          v63 = (2 * (v58 / v48)) * (v60 / v47);
          v64 = (v61 + v63);
          v65 = __CFADD__(v61, v63);
          a1[53] = v64;
          if (v62 || (v63 & 0xFFFFFFFF00000000) != 0 || v65)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v70 = v58 * v142;
          v71 = v70 * v45;
          v64 = v71;
          a1[53] = v71;
          if ((v70 & 0xFFFFFFFF00000000) != 0 || (v71 & 0xFFFFFFFF00000000) != 0)
          {
LABEL_111:
            aj_log_error("Recode", "Warning: Output buffer sizes larger than UINT32_MAX not supported.");
            goto LABEL_142;
          }
        }

        v132 = v60;
        v133 = v48;
        v134 = v44;
        v136 = v43;
        v138 = v45;
        v72 = a1[141];
        if (v72)
        {
          free(v72);
          v64 = a1[53];
        }

        v73 = malloc_type_calloc(1uLL, v64, 0x10CC0D73uLL);
        a1[141] = v73;
        a1[52] = v73;
        if (!v73)
        {
          aj_log_error("Recode", "Could not allocate memory for the plugin out buffer");
          goto LABEL_142;
        }

        *(a1 + 196) = v47;
        a1[94] = v73;
        *(a1 + 200) = v42;
        *(a1 + 198) = v142;
        a1[90] = v73;
        v43 = v136;
        if (v46)
        {
          v74 = (v73 + (v58 * v132));
          a1[95] = v74;
          a1[91] = v74;
          a1[86] = v132;
          v75 = 2 * (v132 / v47);
          v76 = 87;
          v45 = v138;
        }

        else
        {
          v45 = v138;
          v75 = v59 * v138;
          v76 = 86;
        }

        v44 = v134;
        v48 = v133;
        a1[v76] = v75;
LABEL_83:
        v53 = *(a1 + 116);
        *(a1 + 232) = v53;
        if (v53)
        {
          v54 = (v143 & 1) + v143;
          v55 = v47;
          v56 = a1;
          while (1)
          {
            v57 = v56[63];
            if (v57 < v54)
            {
              break;
            }

            v56[82] = v56[59];
            v56[78] = v57;
            v56[12] = v57;
            ++v56;
            if (!--v55)
            {
              goto LABEL_121;
            }
          }

          aj_log_error("Recode", "The plugin supplied row buffers are too small");
          v29 = 8;
          goto LABEL_58;
        }

        v66 = *(a1 + 115) + *(a1 + 236);
        v67 = (v44 & v66) + v66;
        if (v46)
        {
          v68 = (v143 & 1) + v143;
        }

        else
        {
          v68 = v143;
        }

        v135 = v68;
        v137 = v45;
        if (v46)
        {
          v69 = v67 * ((v143 & 1) + v143) + 2 * v67 / v48 * (((v143 & 1) + v143) / v47);
        }

        else
        {
          v69 = v143 * v45 * v67;
        }

        v77 = v43;
        v78 = a1[147];
        if (v78)
        {
          free(v78);
        }

        v79 = malloc_type_calloc(1uLL, v69, 0x2A433355uLL);
        a1[147] = v79;
        a1[115] = v79;
        if (v79)
        {
          a1[82] = v79;
          if (v77)
          {
            v45 = v137;
            v80 = v135 * v137;
            v81 = 78;
          }

          else
          {
            a1[78] = v135;
            a1[83] = (v79 + v67 * v135);
            v80 = 2 * (v135 / v47);
            v81 = 79;
            v45 = v137;
          }

          a1[v81] = v80;
LABEL_121:
          if (*(a1 + 390))
          {
            v82 = v45;
            v83 = (*(a1 + 114) * v45 * v142);
            v84 = a1[148];
            if (v84)
            {
              free(v84);
            }

            v85 = malloc_type_calloc(1uLL, v83, 0x9BC40960uLL);
            a1[148] = v85;
            a1[119] = v85;
            if (!v85)
            {
              aj_log_error("Recode", "Unable to allocate the convert buffer");
              goto LABEL_142;
            }

            *(a1 + 246) = v47;
            *(a1 + 250) = v42;
            *(a1 + 249) = *(a1 + 114);
            v86 = v142;
            *(a1 + 248) = v142;
            a1[134] = (v86 * v82);
          }

          v87 = *(a1 + 226);
          v88 = applejpeg_encode_create(0);
          a1[1] = v88;
          if (v88)
          {
            *(v88 + 3320) = 1;
            *(a1 + 200) = v87;
            a1[99] = v142;
            if (*(a1 + 229))
            {
LABEL_128:
              v89 = *(a1 + 107);
              v90 = *(a1 + 109);
              v91 = *(a1 + 103);
              v149 = *(a1 + 105);
              v150 = v89;
              v92 = *(a1 + 111);
              v151 = v90;
              v152 = v92;
              v93 = *(a1 + 101);
              v146 = *(a1 + 99);
              v147 = v93;
              v148 = v91;
              if (*(a1 + 390))
              {
                v94 = *(a1 + 68);
                v151 = *(a1 + 67);
                v152 = v94;
              }

              v95 = a1[1];
              v96 = (a1 + 29);
              if (a2)
              {
                v97 = applejpeg_encode_set_options_mem(v95, v96, &v146, a2);
              }

              else
              {
                v97 = applejpeg_encode_set_options_file(v95, v96, &v146, a3);
              }

              v29 = v97;
              a1[1][858] = (*a1)[884];
              if (v97)
              {
                goto LABEL_58;
              }

              v140 = 0;
              initial_cropregion = plugin_get_initial_cropregion(a1, v141.n128_u64[0], v141.n128_u64[1], &v140);
              v106 = v105;
              v107 = 0;
              v108 = v140;
              v139 = (a1 + 76);
              while (1)
              {
                v155 = 0;
                v153 = 0u;
                v154 = 0u;
                v151 = 0u;
                v152 = 0u;
                v149 = 0u;
                v150 = 0u;
                v147 = 0u;
                v148 = 0u;
                v146 = 0u;
                *(a1 + 68) = initial_cropregion;
                v109 = HIDWORD(v106);
                *(a1 + 76) = v106;
                if (!v108 || (v110 = *(a1 + 33), v106 / v110) && SHIDWORD(v106) / v110)
                {
                  if ((v107 & 1) != 0 || (v111 = *(a1 + 229)) == 0)
                  {
                    a1[20] = 0;
                    *(a1 + 39) = 0;
                  }

                  else
                  {
                    *(a1 + 39) = 1;
                    if (v111 > 3)
                    {
                      v113 = 0;
                      v112 = 0;
                    }

                    else
                    {
                      v112 = dword_240AB5BB0[v111 - 1];
                      v113 = 1;
                    }

                    *(a1 + 40) = v113;
                    *(a1 + 41) = v112;
                  }

                  v157 = 0;
                  v158 = 0;
                  v156 = 0;
                  memset(v144, 0, sizeof(v144));
                  v145 = 0;
                  format_description = applejpeg_decode_set_options(*a1, (a1 + 7), &v158, v144, &v157, &v156 + 1, &v156);
                  if (format_description)
                  {
                    goto LABEL_57;
                  }

                  v115 = v145;
                  if (v145 >= 1)
                  {
                    v116 = 0;
                    v117 = 8 * v145;
                    v118 = v160;
                    do
                    {
                      if (v116)
                      {
                        v119 = &a1[v116 / 8 + 78];
                        v120 = *(a1 + 153) / *(a1 + 228);
                      }

                      else
                      {
                        v120 = *(a1 + 153);
                        v119 = a1 + 78;
                      }

                      v121 = *(v144 + v116);
                      *(v118 - 1) = a1[v116 / 8 + 82] + *v119 * v120;
                      *v118 = v121;
                      v116 += 8;
                      v118 += 2;
                    }

                    while (v117 != v116);
                  }

                  v122 = applejpeg_decode_image_all(*a1, &v159, v115, &v146);
                  if (v122)
                  {
                    v29 = v122;
                    aj_log_error("Recode", "Decoder returned error code %d", v122);
                    *(a1 + 155) = *(a1 + 153);
                    *(a1 + 154) = HIDWORD(v148);
                    goto LABEL_58;
                  }

                  v114 = HIDWORD(v148);
                }

                else
                {
                  v114 = 0;
                }

                *(a1 + 155) = *(a1 + 153);
                *(a1 + 154) = v114;
                v123 = (a1[46])(a1[56], a1 + 77, v139, v108);
                if (v123)
                {
                  v29 = v123;
                  aj_log_error("Recode", "Resize plugin returned error code %d on resize()", v123);
                  goto LABEL_58;
                }

                v124 = *(a1 + 153);
                if (*(a1 + 228) >= 2)
                {
                  if (!v108 && (v124 & 1) != 0)
                  {
                    aj_log_error("Recode", "Resize-plugin can't save an odd number of rows when the data fromat is 420f");
                    goto LABEL_206;
                  }

                  if (!v108 && (*v139 & 1) != 0)
                  {
                    aj_log_error("Recode", "Plugin wrote an uneven nbrof rows");
                    goto LABEL_206;
                  }
                }

                if (v124 > *(a1 + 115))
                {
                  aj_log_error("Recode", "Resize-plugin saved more more rows than allowed");
LABEL_206:
                  v29 = 1;
                  goto LABEL_58;
                }

                if (v108 && v124)
                {
                  aj_log_error("Recode", "Resize-plugin saved rows on the last call");
                  goto LABEL_206;
                }

                v125 = *v139;
                if (*v139)
                {
                  *(a1 + 199) = v125;
                  v126 = (a1 + 94);
                  if (*(a1 + 390))
                  {
                    *(a1 + 249) = v125;
                    (a1[51])(a1[50], a1 + 94, a1 + 119);
                    v126 = (a1 + 119);
                  }

                  v29 = applejpeg_encode_image_row(a1[1], v126, a4);
                  if (v29 || v108)
                  {
                    goto LABEL_58;
                  }
                }

                else if (v108)
                {
                  v29 = 0;
                  goto LABEL_58;
                }

                v108 = 0;
                v127 = HIDWORD(initial_cropregion);
                v128 = *(a1 + 229);
                if (v128 > 1)
                {
                  if (v128 != 2)
                  {
                    if (v128 != 3)
                    {
                      goto LABEL_199;
                    }

                    LODWORD(v106) = *(a1 + 234);
                    LODWORD(initial_cropregion) = initial_cropregion - v106;
                    v129 = initial_cropregion <= v141.n128_u32[0];
                    goto LABEL_191;
                  }

                  LODWORD(initial_cropregion) = initial_cropregion + v106;
                  LODWORD(v106) = *(a1 + 234);
                  v130 = v106 + initial_cropregion < (v141.n128_u32[2] + v141.n128_u32[0]);
                }

                else
                {
                  if (v128)
                  {
                    if (v128 != 1)
                    {
                      goto LABEL_199;
                    }

                    v109 = *(a1 + 234);
                    v127 = (HIDWORD(initial_cropregion) - v109);
                    v129 = v127 <= v141.n128_u32[1];
LABEL_191:
                    v108 = v129;
                    goto LABEL_199;
                  }

                  v127 = (HIDWORD(initial_cropregion) + HIDWORD(v106));
                  v109 = *(a1 + 234);
                  v130 = v109 + v127 < (v141.n128_u32[3] + v141.n128_u32[1]);
                }

                v108 = !v130;
LABEL_199:
                initial_cropregion = aj_limit_region(initial_cropregion | (v127 << 32), v106 | (v109 << 32), v141.n128_i64[0]);
                v106 = v131;
                v107 = 1;
              }
            }

            *&v148 = 0;
            v146 = 0u;
            v147 = 0u;
            format_description = aj_get_format_description(v87, &v146);
            if (!format_description)
            {
              v98 = DWORD2(v147);
              v99 = HIDWORD(v147);
              chroma_subsampling = applejpeg_decode_get_chroma_subsampling(*a1);
              subsampling_from_jpeg_format = aj_get_subsampling_from_jpeg_format(chroma_subsampling);
              if (v98 <= subsampling_from_jpeg_format)
              {
                v102 = subsampling_from_jpeg_format;
              }

              else
              {
                v102 = v98;
              }

              if (v99 <= SHIDWORD(subsampling_from_jpeg_format))
              {
                v103 = HIDWORD(subsampling_from_jpeg_format);
              }

              else
              {
                v103 = v99;
              }

              *(a1 + 72) = aj_get_jpeg_format_from_subsampling(v102 | (v103 << 32), (*a1)[30]);
              goto LABEL_128;
            }

LABEL_57:
            v29 = format_description;
            goto LABEL_58;
          }
        }

        else
        {
          aj_log_error("Recode", "Could not allocate memory for the plugin input buffer");
        }

LABEL_142:
        v29 = 6;
        goto LABEL_58;
      }

      if (v42 != 15)
      {
        goto LABEL_103;
      }
    }

    else if ((v42 - 3) >= 2)
    {
      if (v42 == 8)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 1;
        v47 = 2;
LABEL_79:
        v48 = 1;
        goto LABEL_80;
      }

LABEL_103:
      aj_log_error("Recode", "Unsupported format");
      v29 = 3;
      goto LABEL_58;
    }

    v46 = 0;
    v44 = 0;
    v45 = 4;
    v43 = 1;
    v47 = 1;
    goto LABEL_79;
  }

LABEL_58:
  v30 = a1[47];
  if (v30 && *(a1 + 237))
  {
    v30(a1[56]);
    a1[56] = 0;
  }

  *(a1 + 237) = 0;
  v31 = a1[1];
  if (v31)
  {
    applejpeg_encode_destroy(v31);
    a1[1] = 0;
  }

  return v29;
}

uint64_t plugin_get_initial_cropregion(uint64_t a1, unint64_t a2, unint64_t a3, char *a4)
{
  v6 = a2;
  v7 = HIDWORD(a2);
  v8 = *(a1 + 916);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v11 = *(a1 + 940);
      v10 = a3 & 0xFFFFFFFF00000000 | v11;
    }

    else
    {
      if (v8 != 3)
      {
        goto LABEL_8;
      }

      v11 = *(a1 + 940);
      v10 = a3 & 0xFFFFFFFF00000000 | v11;
      v6 = v6 + a3 - v11;
    }

    v12 = v11 < a3;
    goto LABEL_13;
  }

  if (!v8)
  {
    v9 = *(a1 + 940);
    v10 = a3 | (v9 << 32);
    goto LABEL_10;
  }

  if (v8 != 1)
  {
LABEL_8:
    v10 = a3;
    return aj_limit_region(v6 | (v7 << 32), v10, a2);
  }

  v9 = *(a1 + 940);
  v10 = a3 | (v9 << 32);
  v7 = v7 + HIDWORD(a3) - v9;
LABEL_10:
  v12 = v9 < SHIDWORD(a3);
LABEL_13:
  v13 = !v12;
  *a4 = v13;
  return aj_limit_region(v6 | (v7 << 32), v10, a2);
}

uint64_t aj_limit_region(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a1;
  }

  if (SHIDWORD(a1) <= SHIDWORD(a3))
  {
    v4 = HIDWORD(a3);
  }

  else
  {
    v4 = HIDWORD(a1);
  }

  return v3 | (v4 << 32);
}

char *pad_region(char *result, int a2, int a3, int a4, int a5, int a6, int a7)
{
  if (result)
  {
    v11 = result;
    if (a2 > a6 + a4 && a7 >= 1)
    {
      v12 = &result[a5 * a2 + a6 + a4];
      v13 = a2 - (a6 + a4);
      v14 = a7;
      do
      {
        result = memset(v12, *(v12 - 1), v13);
        v12 += a2;
        --v14;
      }

      while (v14);
    }

    v15 = a7 + a5;
    v16 = a3 - (a7 + a5);
    if (a3 > v15 && v16 >= 1)
    {
      v17 = a2;
      v18 = &v11[v15 * a2];
      v19 = &v18[-a2];
      do
      {
        result = memcpy(v18, v19, v17);
        v18 += v17;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

void aj_encode_release_scan_buffers(uint64_t a1)
{
  if (*(a1 + 19808) >= 1)
  {
    v2 = 0;
    v3 = (*(a1 + 19816) + 176);
    do
    {
      if (*v3)
      {
        free(*v3);
        *v3 = 0;
      }

      v4 = *(v3 - 2);
      if (v4)
      {
        free(v4);
        *(v3 - 2) = 0;
      }

      v5 = *(v3 - 8);
      if (v5)
      {
        free(v5);
        *(v3 - 8) = 0;
      }

      ++v2;
      v3 += 37;
    }

    while (v2 < *(a1 + 19808));
  }
}

unsigned int *aj_reset_row_ptrs(unsigned int *result, void *a2, uint64_t a3)
{
  v14[4] = *MEMORY[0x277D85DE8];
  if (result[3340] == 14)
  {
    v3 = *(result + 2471);
    v4 = *(result + 2472);
    v5 = *(result + 2473);
  }

  else
  {
    v3 = result[3354];
    v6 = result[4];
    v4 = (result[5] * v3) / v6;
    v5 = (result[6] * v3) / v6;
    v14[3] = (result[7] * v3) / v6;
  }

  v14[0] = v3;
  v14[1] = v4;
  v14[2] = v5;
  v7 = *result;
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = result[i + 8];
      if (v9 >= 1)
      {
        v10 = 0;
        LODWORD(v11) = 8 * v9;
        v12 = v14[i];
        if (v11 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v11;
        }

        v13 = a2;
        do
        {
          *v13++ = *(a3 + 8 * i) + v10;
          v10 += v12;
          --v11;
        }

        while (v11);
      }

      a2 += 16;
    }
  }

  return result;
}

uint64_t aj_allocate_enc_buffers(unsigned int *a1, void *a2)
{
  v4 = *a1;
  if (v4 < 1)
  {
    v7 = 0;
  }

  else
  {
    v5 = 0;
    v6 = a1 + 3370;
    do
    {
      v5 += *v6;
      v6 += 392;
      --v4;
    }

    while (v4);
    v7 = v5 << 6;
  }

  v8 = (v7 * a1[3358]);
  *(a1 + 1681) = v8;
  v9 = a2 + 224;
  v10 = a2[224];
  if (v10)
  {
    free(v10);
    *v9 = 0;
    v8 = *(a1 + 1681);
  }

  v11 = malloc_type_calloc(1uLL, v8, 0x42087983uLL);
  *v9 = v11;
  if (v11)
  {
    v12 = *a1;
    if (v12 >= 1)
    {
      v13 = a1[3358] << 6;
      v14 = a1 + 3370;
      v15 = a2 + 224;
      do
      {
        *v15++ = v11;
        v11 += (*v14 * v13);
        v14 += 392;
        --v12;
      }

      while (v12);
    }

    aj_reset_row_ptrs(a1, a2, (a2 + 224));
    return 0;
  }

  else
  {
    aj_log_error("EncodeInit", "Could not allocate memory for mcu buffer");
    return 6;
  }
}

uint64_t aj_init_out_stream(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a3 + 2);
  *(result + 64) = v4;
  *(result + 40) = *(a2 + 8);
  v5 = *(a2 + 32);
  *(result + 24) = v3;
  *(result + 32) = v5;
  *result = 0;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 20) = v4;
  return result;
}

uint64_t aj_encode_init(void *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = (a2 + 19768);
  v15 = a2 + 13268;
  *(a2 + 13284) = 0;
  *(a2 + 13268) = xmmword_240AB5BC0;
  v16 = a4[2];
  *(a2 + 13360) = v16;
  v17 = *(a5 + 60);
  *(a2 + 19800) = v17 == 1;
  *(a2 + 19804) = v17 == 2;
  v18 = aj_encode_buffers_baseline;
  if (v17 == 1)
  {
    v18 = aj_encode_buffers_progressive;
  }

  *(a2 + 19752) = v18;
  v171 = (a2 + 19768);
  if (v16 != 14)
  {
    *(a2 + 19832) = xmmword_240AB5BD0;
    v28 = (a2 + 19832);
    *(a2 + 19848) = 1;
    v29 = (a2 + 19844);
    switch(v16)
    {
      case 0:
        *(a2 + 13444) = 3;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
          goto LABEL_55;
        }

        v35 = &off_2852A0148;
        goto LABEL_54;
      case 1:
        *(a2 + 13444) = 2;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
          goto LABEL_55;
        }

        v35 = &off_2852A01C0;
        goto LABEL_54;
      case 2:
        *(a2 + 13444) = 2;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
          goto LABEL_55;
        }

        v35 = &off_2852A01E8;
        goto LABEL_54;
      case 3:
        *(a2 + 13444) = 4;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
          goto LABEL_55;
        }

        v35 = &off_2852A0170;
        goto LABEL_54;
      case 4:
        *(a2 + 13444) = 4;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
          goto LABEL_55;
        }

        v35 = &off_2852A0198;
        goto LABEL_54;
      case 5:
        v36 = 1;
        goto LABEL_52;
      case 6:
        *(a2 + 13444) = 3;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
          goto LABEL_55;
        }

        v35 = &off_2852A0238;
        goto LABEL_54;
      case 8:
      case 9:
        *v28 = 1;
        if (v16 == 9)
        {
          *(a2 + 19836) = 0x100000002;
        }

        *(a2 + 19848) = 2;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
          goto LABEL_55;
        }

        v35 = &off_2852A0260;
        goto LABEL_54;
      case 10:
      case 11:
        *v28 = 1;
        if (v16 == 11)
        {
          *(a2 + 19836) = 0x100000002;
        }

        *v29 = 0x200000002;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
          goto LABEL_55;
        }

        v35 = &off_2852A0288;
        goto LABEL_54;
      case 12:
      case 13:
        *v28 = 1;
        if (v16 == 13)
        {
          *(a2 + 19836) = 0x100000002;
        }

        *v29 = 2;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
          goto LABEL_55;
        }

        v35 = &off_2852A02B0;
        goto LABEL_54;
      case 15:
        *(a2 + 13444) = 4;
        v31 = aj_deinterleave_8888;
        goto LABEL_56;
      case 16:
      case 17:
      case 20:
        if (v16 == 20)
        {
          v30 = 6;
        }

        else
        {
          v30 = 8;
        }

        *(a2 + 13444) = v30;
        *(a2 + 19744) = 0;
        if (v17 != 2)
        {
          aj_log_error("EncodeInit", "16-bit RGB only supported for lossless encoding");
          return 3;
        }

        v31 = 0;
LABEL_60:
        if (*v28)
        {
          v38 = v14[5].i32[0];
          v39 = *a4 & 1;
          if (v38 != 2)
          {
            v39 = 0;
          }

          v40 = v39 + *a4;
          v41 = *(a4 + 10);
          v42 = v40;
          if (v41)
          {
            v42 = *(a4 + 10);
            if (v41 < v40)
            {
              goto LABEL_78;
            }
          }

          *(a2 + 19768) = v42;
          v43 = *(a4 + 11);
          v44 = 2 * (v40 / v38);
          if (v43)
          {
            if (v43 < v44)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v43 = v44;
          }

          *(a2 + 19776) = v43;
          if (v31)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v47 = *(a4 + 10);
          v48 = *(a2 + 13444);
          if (v47)
          {
            if (v47 < v48 * *a4)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v47 = v48 * *a4;
          }

          *(a2 + 19768) = v47;
          if (v31)
          {
            goto LABEL_87;
          }
        }

        if (v14[2].i32[1])
        {
          goto LABEL_87;
        }

        aj_log_error("EncodeInit", "Colortransform function pointer is NULL.");
        return 5;
      case 18:
        v36 = 2;
LABEL_52:
        *(a2 + 13444) = v36;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
LABEL_55:
          aj_log_error("EncodeInit", "Unsupported output format.");
          v14 = v171;
          v31 = 0;
        }

        else
        {
          v35 = &off_2852A0210;
LABEL_54:
          v31 = v35[v34];
        }

LABEL_56:
        *(a2 + 19744) = v31;
        v16 = *(a2 + 13360);
        if (v16 == 14)
        {
          goto LABEL_57;
        }

        goto LABEL_60;
      default:
        aj_log_error("EncodeInit", "Unsupported input format");
        return 3;
    }
  }

  v20 = *(a4 + 3);
  v19 = *(a4 + 4);
  v21 = *(a4 + 2);
  *(a2 + 13296) = *(a4 + 1);
  *(a2 + 13328) = v20;
  *(a2 + 13344) = v19;
  *(a2 + 13312) = v21;
  v22 = *(a2 + 13304);
  v23 = (v22 + 1) >> 1;
  v24 = *(a2 + 13296);
  v25 = *(a2 + 13328);
  if (v24 == v25)
  {
    v26 = *(a2 + 13336);
    if (v22 == v26)
    {
      v27 = 0;
      goto LABEL_20;
    }

    if (v23 == v26)
    {
      v27 = 2;
      goto LABEL_20;
    }

LABEL_21:
    aj_log_error("EncodeInit", "Unknown input decimation");
    return 3;
  }

  if (v25 != (v24 + 1) >> 1)
  {
    goto LABEL_21;
  }

  v32 = *(a2 + 13336);
  if (v22 == v32)
  {
    v27 = 1;
    goto LABEL_20;
  }

  if (v23 != v32)
  {
    goto LABEL_21;
  }

  v27 = 3;
LABEL_20:
  *(a5 + 56) = v27;
  *(a2 + 19832) = xmmword_240AB5BD0;
  v28 = (a2 + 19832);
  v29 = (a2 + 19844);
  *(a2 + 19848) = 1;
LABEL_57:
  v37 = *(a4 + 10);
  if (v37)
  {
    if (v37 < *(a4 + 2))
    {
      goto LABEL_78;
    }
  }

  else
  {
    v37 = *(a4 + 2);
  }

  *(a2 + 19768) = v37;
  v45 = *(a4 + 11);
  if (v45)
  {
    if (v45 < *(a4 + 6))
    {
      goto LABEL_78;
    }
  }

  else
  {
    v45 = *(a4 + 6);
  }

  *(a2 + 19776) = v45;
  v46 = *(a4 + 12);
  if (v46)
  {
    if (v46 < *(a4 + 6))
    {
LABEL_78:
      aj_log_error("EncodeInit", "Set stride is smaller than the image data");
      return 8;
    }
  }

  else
  {
    v46 = *(a4 + 6);
  }

  *(a2 + 19784) = v46;
  v16 = 14;
LABEL_87:
  v163 = a4;
  if (!v14[2].i32[0])
  {
    if (v16 != 15)
    {
      v51 = &base_scan_yuv;
      if (*(a5 + 56) == 4)
      {
        v51 = &base_scan_gray;
      }

      v172 = v51;
      v49 = 1;
      goto LABEL_104;
    }

    v49 = 1;
    v50 = &base_scan_cmyk;
LABEL_103:
    v172 = v50;
    goto LABEL_104;
  }

  v172 = *(a5 + 72);
  if (!v172)
  {
    v49 = 10;
    if (v16 == 15)
    {
      v50 = &prog_scan_cmyk;
    }

    else
    {
      if (*(a5 + 56) == 4)
      {
        v49 = 6;
      }

      else
      {
        v49 = 10;
      }

      v50 = &prog_scan_yuv;
      if (*(a5 + 56) == 4)
      {
        v50 = &prog_scan_gray;
      }
    }

    goto LABEL_103;
  }

  v49 = *(a5 + 64);
  if (v49 < 1)
  {
    return 1;
  }

LABEL_104:
  if (*(a2 + 19816))
  {
    aj_encode_release_scan_buffers(a2);
  }

  v161 = v29;
  v52 = a1[4];
  if (v52)
  {
    free(v52);
  }

  v53 = malloc_type_calloc(1uLL, 296 * v49, 0x10B00402248AC04uLL);
  a1[4] = v53;
  *(a2 + 19816) = v53;
  if (!v53)
  {
    aj_log_error("EncodeInit", "Unable to allocate scan info");
    return 6;
  }

  v54 = v53;
  v160 = v28;
  v154 = a7;
  v155 = a6;
  v158 = a5;
  v162 = a1;
  v55 = 0;
  v56 = *(a2 + 12) * *(a2 + 8) / (2 * v49);
  v156 = a3;
  v157 = (a2 + 3340);
  if (v56 <= 0x1000)
  {
    v56 = 4096;
  }

  v164 = v56;
  size = v56;
  v170 = v49;
  v57 = v171;
  v171[2].i32[2] = v49;
  v58 = a2 + 13472;
  v59 = a2 + 3424;
  v60 = a2 + 10664;
  v61 = a2 + 4520;
  v159 = a2;
  v62 = a2 + 11212;
  v63 = (v172 + 4);
  v64 = (v53 + 264);
  v65 = (v53 + 20);
  v167 = a2 + 3424;
  v168 = a2 + 10664;
  v165 = a2 + 4520;
  v166 = a2 + 11212;
  do
  {
    v66 = &v172[36 * v55];
    v67 = *(v66 + 5);
    v68 = *(v66 + 7);
    v69 = *v66;
    *v54 = v69;
    if (v69 < 1)
    {
      v82 = v68;
      v81 = v67;
    }

    else
    {
      if (v68)
      {
        v70 = v67 != 0;
      }

      else
      {
        v70 = 1;
      }

      v71 = v65;
      v72 = v64;
      v73 = v63;
      do
      {
        v75 = *v73++;
        v74 = v75;
        *(v71 - 4) = v75;
        *(v72 - 9) = v58 + 1568 * v75;
        if (v70)
        {
          v76 = v74 != 0;
          v77 = v59 + 548 * v76 + 274 * (v67 != 0);
          if (v68)
          {
            v77 = v60 + 274 * v76;
          }

          *(v72 - 4) = v77;
          v78 = v61 + (v76 << 11) + ((v67 != 0) << 10);
          v79 = v62 + (v76 << 10);
          if (!v68)
          {
            v79 = v78;
          }

          *v72 = v79;
        }

        v80 = v74 != 0;
        *v71 = v80;
        v71[4] = v80;
        ++v72;
        ++v71;
        --v69;
      }

      while (v69);
      v81 = *(v66 + 5);
      v82 = *(v66 + 7);
    }

    v83 = *(v66 + 6);
    *(v54 + 13) = v81;
    *(v54 + 14) = v83;
    *(v54 + 15) = *(v66 + 8);
    *(v54 + 16) = v82;
    *(v54 + 68) = xmmword_240AB5BE0;
    if (v57[2].i32[0])
    {
      if (v67)
      {
        v84 = v68 == 0;
      }

      else
      {
        v84 = 1;
      }

      if (!v84)
      {
        v85 = malloc_type_calloc(1uLL, 0x400uLL, 0x3BDA1B2DuLL);
        *(v54 + 22) = v85;
        if (!v85)
        {
          aj_log_error("EncodeInit", "Unable to allocate the correction-bit buffer");
          return 6;
        }

        *(v54 + 23) = 1024;
      }

      *(v54 + 28) = *(&off_2852A0128 + 2 * (v67 != 0) + (v68 != 0));
      *(v54 + 20) = 0;
      *(v54 + 21) = 0;
      v86 = malloc_type_calloc(1uLL, size, 0x6D965314uLL);
      if (!v86)
      {
        aj_log_error("EncodeInit", "Unable to allocate %zd bytes for scan #%d out-stream");
        return 6;
      }

      *(v54 + 14) = v86;
      *(v54 + 15) = v54;
      v61 = v165;
      *(v54 + 38) = v164;
      *(v54 + 16) = progscan_write_callback;
      *(v54 + 11) = 0;
      *(v54 + 12) = v86;
      *(v54 + 26) = 0;
      *(v54 + 27) = v164;
      v57 = v171;
      v59 = v167;
      v60 = v168;
      v62 = v166;
    }

    ++v55;
    v54 += 296;
    v63 += 9;
    v64 += 37;
    v65 += 74;
  }

  while (v55 != v170);
  *(v159 + 8) = *v163;
  v87 = *(v158 + 60);
  if (v87 == 2)
  {
    LOBYTE(v87) = 0;
    v90 = 195;
    v88 = v160;
    v89 = v15;
  }

  else
  {
    v88 = v160;
    v89 = v15;
    if (v87 == 1)
    {
      v90 = 194;
    }

    else
    {
      LOBYTE(v87) = 0;
      v90 = 192;
    }
  }

  *(v159 + 80) = v90;
  *(v159 + 84) = v87;
  if (*(v159 + 13360) == 15)
  {
    v91 = 4;
    *v159 = 4;
    *&v92 = 0x100000001;
    *(&v92 + 1) = 0x100000001;
    *(v159 + 16) = v92;
    *(v159 + 32) = v92;
    goto LABEL_161;
  }

  v93 = *(v158 + 56);
  if (v93 == 4)
  {
    v91 = 1;
  }

  else
  {
    v91 = 3;
  }

  *v159 = v91;
  if (v93 <= 1)
  {
    if (v93)
    {
      if (v93 == 1)
      {
        *(v159 + 24) = 1;
        *(v159 + 16) = 0x100000002;
        *(v159 + 40) = 1;
        v94 = 0x100000001;
LABEL_160:
        *(v159 + 32) = v94;
        goto LABEL_161;
      }

LABEL_157:
      *(v159 + 24) = 0;
      v94 = 1;
      *(v159 + 16) = 1;
      *(v159 + 40) = 0;
      goto LABEL_160;
    }

    *(v159 + 24) = 1;
    v94 = 0x100000001;
LABEL_159:
    *(v159 + 16) = v94;
    *(v159 + 40) = 1;
    goto LABEL_160;
  }

  if (v93 != 2)
  {
    if (v93 != 3)
    {
      goto LABEL_157;
    }

    *(v159 + 13272) = 1;
    *(v159 + 24) = 1;
    v94 = 0x100000002;
    goto LABEL_159;
  }

  *(v159 + 13272) = 1;
  *(v159 + 24) = 1;
  *(v159 + 40) = 1;
  *(v159 + 32) = 0x100000002;
  *(v159 + 16) = 0x100000001;
LABEL_161:
  v95 = v61;
  v96 = v62;
  v97 = v59;
  v98 = v60;
  *(v159 + 4) = 8;
  v99 = v159 + 88;
  if (*(v158 + 16))
  {
    *(v159 + 48) = xmmword_240AB5BF0;
    aj_get_qtable_for_quality(v99, *(v158 + 16), 1, 0);
    aj_get_qtable_for_quality(v159 + 344, *(v158 + 16), 0, 0);
    v57 = v171;
    v100 = v157;
  }

  else
  {
    v101 = 0;
    v102 = (v158 + 24);
    v103 = v159 + 48;
    v100 = v157;
    do
    {
      if (v101)
      {
        v104 = 0;
        v105 = v102[v101];
        while (v105 != v102[v104])
        {
          if (v101 == ++v104)
          {
            goto LABEL_170;
          }
        }

        *(v103 + 4 * v101) = v104;
      }

      else
      {
        v105 = *v102;
LABEL_170:
        v106 = 0;
        *(v103 + 4 * v101) = v101;
        do
        {
          *(v99 + 4 * v106) = *(v105 + v106);
          ++v106;
        }

        while (v106 != 64);
      }

      ++v101;
      v99 += 256;
    }

    while (v101 != v91);
  }

  *(v159 + 64) = xmmword_240AB5C10;
  *v100 = xmmword_240AB5C00;
  v100[1] = xmmword_240AB5BF0;
  v100[2] = xmmword_240AB5BF0;
  v107 = *(v159 + 19816);
  *(v159 + 3336) = *v107;
  v100[3] = *(v107 + 52);
  v108 = *(v159 + 13360);
  if ((*(v158 + 56) & 0xFFFFFFFE) != 2)
  {
    v110 = 0;
    goto LABEL_179;
  }

  v109 = v97;
  if (v108 == 14)
  {
    v110 = 0;
    v111 = *(v159 + 32);
    v112 = 8 * v111;
LABEL_180:
    v113 = v112;
    goto LABEL_181;
  }

  if (!*v88 || *v161 == 1)
  {
    v145 = vaddvq_s64(vaddq_s64(v57[1], *v57));
    v146 = v162[1];
    if (v146)
    {
      free(v146);
    }

    v147 = malloc_type_calloc(1uLL, v145, 0x586B3434uLL);
    v162[1] = v147;
    if (!v147)
    {
      aj_log_error("EncodeInit", "Could not allocate input buffer memory");
      return 6;
    }

    v110 = v147;
    v108 = *(v159 + 13360);
    v57 = v171;
LABEL_179:
    v109 = v97;
    v111 = *(v159 + 32);
    v112 = 8 * v111;
    v113 = v111;
    if (v108 != 14)
    {
      goto LABEL_181;
    }

    goto LABEL_180;
  }

  v110 = 0;
  v111 = *(v159 + 32);
  v112 = 8 * v111;
  v113 = v111;
LABEL_181:
  *(v159 + 13292) = v113;
  v114 = *(v159 + 8);
  v115 = *(v159 + 12);
  v116 = v115 / 8;
  if ((v115 & 7) != 0)
  {
    ++v116;
  }

  v117 = v116 / v111;
  if (v116 % v111)
  {
    ++v117;
  }

  *(v159 + 13436) = v117;
  v118 = v114 / 8;
  if ((v114 & 7) != 0)
  {
    ++v118;
  }

  v119 = *(v159 + 16);
  if (v118 % v119)
  {
    v120 = v118 / v119 + 1;
  }

  else
  {
    v120 = v118 / v119;
  }

  *(v159 + 13432) = v120;
  *(v159 + 13428) = v112;
  *(v159 + 13424) = 8 * v119;
  v121 = v117 * v112;
  *(v159 + 13420) = v121;
  *(v159 + 13416) = v120 * 8 * v119;
  if (v115 <= v121 - 8)
  {
    *(v89 + 172) = 1;
  }

  if (v111 != 2 || !v57[2].i32[0])
  {
    goto LABEL_198;
  }

  v122 = v162[5];
  if (v122)
  {
    free(v122);
    v120 = *(v159 + 13432);
    v119 = *(v159 + 16);
  }

  v123 = malloc_type_calloc(1uLL, (v119 * v120) << 7, 0x1000040AE2C30F4uLL);
  v162[5] = v123;
  *(v159 + 19824) = v123;
  if (!v123)
  {
    aj_log_error("EncodeInit", "Unable to allocate progressive coeff buffer");
    return 6;
  }

  v108 = *(v159 + 13360);
  v57 = v171;
  v109 = v97;
LABEL_198:
  if (v108 == 14)
  {
    v124 = *(v159 + 19768);
    *(v159 + 13368) = *(v159 + 13304) * v124;
    v125 = *(v159 + 19776);
    v126 = *(v159 + 13336);
    *(v159 + 13376) = v126 * v125;
    v127 = *(v159 + 19784);
    *(v159 + 13384) = v127 * v126;
    *(v159 + 13392) = *(v159 + 13312) + v124 * *(v159 + 13316);
    v128 = *(v159 + 13348);
    v129 = *(v159 + 13344);
    *(v159 + 13400) = v129 + v125 * v128;
    *(v159 + 13408) = v129 + v127 * v128;
  }

  if (v57[2].i32[0])
  {
    v130 = v109;
    aj_huffman_encode_init_progressive(v109, 1, 1, 1);
    aj_huffman_encode_init_progressive(v159 + 3698, 1, 0, 1);
    aj_huffman_encode_init_progressive(v159 + 3972, 0, 1, 1);
    aj_huffman_encode_init_progressive(v159 + 4246, 0, 0, 1);
    aj_huffman_encode_init_progressive(v98, 1, 0, 0);
    aj_huffman_encode_init_progressive(v159 + 10938, 0, 0, 0);
    aj_huffman_encode_init_lookups(v130, (v159 + 3440), v95, 0);
    aj_huffman_encode_init_lookups(v159 + 3698, (v159 + 3714), v159 + 5544, 0);
    aj_huffman_encode_init_lookups(v159 + 3972, (v159 + 3988), v159 + 6568, 0);
    aj_huffman_encode_init_lookups(v159 + 4246, (v159 + 4262), v159 + 7592, 0);
    aj_huffman_encode_init_lookups(v98, (v159 + 10680), v96, 0);
    v131 = v159 + 10938;
    v132 = (v159 + 10954);
    v133 = v159 + 12236;
    v134 = 0;
  }

  else
  {
    v135 = v109;
    aj_huffman_encode_init_baseline(v109, 1, 1);
    aj_huffman_encode_init_baseline(v159 + 3698, 1, 0);
    aj_huffman_encode_init_baseline(v159 + 3972, 0, 1);
    aj_huffman_encode_init_baseline(v159 + 4246, 0, 0);
    aj_huffman_encode_init_lookups(v135, (v159 + 3440), v95, 0);
    aj_huffman_encode_init_lookups(v159 + 3698, (v159 + 3714), v159 + 5544, v159 + 8616);
    aj_huffman_encode_init_lookups(v159 + 3972, (v159 + 3988), v159 + 6568, 0);
    v131 = v159 + 4246;
    v132 = (v159 + 4262);
    v133 = v159 + 7592;
    v134 = v159 + 9640;
  }

  aj_huffman_encode_init_lookups(v131, v132, v133, v134);
  v136 = 0;
  *(v156 + 1896) = v110;
  v137 = 2000;
  v138 = 1832;
  do
  {
    v139 = (v156 + v138);
    *v139 = 0;
    v139[1] = 0;
    if (v110 && v136)
    {
      *(v156 + v136 + 1896) = *(v156 + v136 + 1888) + *(v159 + v136 + 19760);
    }

    *(v156 + v137) = 0;
    v136 += 8;
    v137 += 4;
    v138 += 16;
  }

  while (v136 != 32);
  v140 = *(v158 + 96);
  *(v156 + 2024) = v140;
  *(v156 + 2032) = *(v158 + 88);
  *(v156 + 2040) = *(v158 + 104);
  *(v156 + 2048) = v140;
  *(v156 + 1824) = 0;
  v141 = *(v159 + 13436);
  *(v156 + 1828) = v141;
  *(v156 + 2016) = 0;
  *(v156 + 2056) = 0;
  v142 = *(v158 + 122);
  *(v156 + 2068) = v142;
  *(v156 + 2064) = v142 + 7;
  *(v156 + 2072) = *(v158 + 152);
  *(v156 + 2080) = *(v158 + 160);
  *(v156 + 2084) = 0;
  *(v156 + 2096) = *(v158 + 121);
  v143 = *(v158 + 4);
  if (v143)
  {
    v144 = v155;
    if ((*(v158 + 60) - 1) >= 2)
    {
      if (v143 == 2)
      {
        v143 = *(v159 + 13432);
        if (v143 >= 16)
        {
          v148 = v143 - 1;
          if (v143 >= 0x40)
          {
            v148 = 64;
          }

          if (v148 >= 0x10)
          {
            while (v143 % v148)
            {
              if (v148-- <= 16)
              {
                goto LABEL_236;
              }
            }

            v143 = v148;
          }
        }
      }

      else
      {
        if (v143 != 1)
        {
          aj_log_error("EncodeInit", "Invalid interval units.");
          return 5;
        }

        v143 = *(v159 + 13432);
      }

LABEL_236:
      *(v156 + 2056) = v143;
    }

    else
    {
      v143 = 0;
    }
  }

  else
  {
    v144 = v155;
  }

  v150 = *v154;
  *(v156 + 1952) = *v154;
  v151 = *(v154 + 2);
  *(v156 + 1992) = v151;
  v152 = *(v144 + 8);
  *(v156 + 1968) = v152;
  *(v156 + 1960) = *(v144 + 32);
  *(v156 + 1928) = 0;
  *(v156 + 1948) = v151;
  *(v156 + 1936) = v150;
  *(v156 + 1944) = 0;
  if (!v152)
  {
    aj_log_error("EncodeInit", "Invalid output callback function.");
    return 5;
  }

  v153 = *(v158 + 144);
  if (v153 && v143 >= 1 && v153 < v141 * *(v159 + 13432) / v143 - 1)
  {
    aj_log_error("EncodeInit", "Restart marker offset table size does not match number of restart markers");
    return 5;
  }

  init_component(v159);
  if (*(v159 + 13360) == 14)
  {
    return 0;
  }

  result = aj_allocate_enc_buffers(v159, v156);
  if (!result)
  {
    v162[2] = *(v156 + 1792);
  }

  return result;
}

int *init_component(int *result)
{
  if (*result >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = 0;
    v4 = result + 856;
    v5 = result + 1130;
    v6 = result + 2154;
    v7 = result + 22;
    v8 = 839;
    v9 = 3503;
    do
    {
      v10 = &v1[v3];
      v11 = v10[4];
      v12 = &v1[v2];
      v12[3368] = v11;
      v13 = v10[8];
      v12[3369] = v13;
      v12[3370] = v13 * v11;
      v14 = v1[v8];
      *(v12 + 1686) = &v4[137 * v14];
      v15 = v1[v8 + 4];
      *(v12 + 1687) = &v4[137 * v15 + 68] + 2;
      *(v12 + 1768) = &v5[512 * v14];
      *(v12 + 1769) = &v5[512 * v15 + 256];
      *(v12 + 1770) = &v6[256 * v15];
      v12[3371] = 0;
      *(v12 + 3494) = 0u;
      result = aj_dct_prescale_qtable(&v7[64 * v10[12]], &v1[v9]);
      ++v3;
      ++v8;
      v9 += 392;
      v2 += 392;
    }

    while (v3 < *v1);
  }

  return result;
}

uint64_t aj_encode_reset_session(int *a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 1864) = 0u;
  *(a2 + 1880) = 0u;
  *(a2 + 1832) = 0u;
  *(a2 + 1848) = 0u;
  *(a1 + 3321) = 0;
  *(a1 + 3317) = xmmword_240AB5BC0;
  v6 = a1 + 4245;
  *(a2 + 1928) = 0;
  *(a2 + 1944) = 0;
  *(a2 + 1948) = *(a2 + 1992);
  *(a2 + 2048) = *(a3 + 96);
  *(a2 + 2060) = 0x700000000;
  aj_get_qtable_for_quality((a1 + 22), *(a3 + 16), 1, 0);
  aj_get_qtable_for_quality((a1 + 86), *(a3 + 16), 0, 0);
  *(a1 + 3697) = 0;
  *(a1 + 3971) = 0;
  *v6 = 0;
  v6[274] = 0;
  v7 = *(a2 + 1792);
  v8 = a1[4952];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(a1 + 2477);
    do
    {
      *(v10 + 17) = xmmword_240AB5BE0;
      v10[43] = 0;
      v10[47] = 0;
      v11 = *(v10 + 14);
      v12 = v10[38];
      *(v10 + 11) = 0;
      *(v10 + 12) = v11;
      v10[26] = 0;
      v10[27] = v12;
      v13 = *v10;
      if (v13 >= 1)
      {
        v14 = 58;
        do
        {
          v15 = *&v10[v14];
          if (v15)
          {
            *(v15 + 273) = 0;
          }

          v14 += 2;
          --v13;
        }

        while (v13);
      }

      ++v9;
      v10 += 74;
    }

    while (v9 != v8);
  }

  init_component(a1);
  *(a2 + 1824) = 0;
  *(a2 + 1828) = a1[3359];
  if (*a1 >= 1)
  {
    v16 = 0;
    v17 = a2 + 2000;
    v18 = a1 + 3370;
    do
    {
      *(v17 + 4 * v16) = 0;
      if (a1[3340] != 14)
      {
        *(v18 + 45) = v7;
        *(v17 + 8 * v16 - 208) = v7;
        v7 += (*v18 * a1[3358]) << 6;
      }

      ++v16;
      v18 += 392;
    }

    while (v16 < *a1);
  }

  aj_reset_row_ptrs(a1, a2, a2 + 1792);
  return 0;
}

uint64_t progscan_write_callback(const void *a1, int a2, uint64_t a3)
{
  v7 = *(a3 + 168);
  v6 = *(a3 + 172);
  if (v7 - v6 >= a2)
  {
    v11 = *(a3 + 160);
LABEL_13:
    memcpy(&v11[v6], a1, a2);
    result = 0;
    *(a3 + 172) += a2;
    return result;
  }

  v8 = 2 * v7;
  if (!v7)
  {
    v8 = 0x2000;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_calloc(1uLL, v9, 0x4A770E98uLL);
  if (v10)
  {
    v11 = v10;
    v12 = *(a3 + 160);
    if (v12)
    {
      memcpy(v10, v12, *(a3 + 172));
      v13 = *(a3 + 160);
      if (v13)
      {
        free(v13);
      }
    }

    *(a3 + 160) = v11;
    *(a3 + 168) = v9;
    v6 = *(a3 + 172);
    goto LABEL_13;
  }

  return 6;
}

uint64_t aj_istream_get_error_code_eod(uint64_t a1)
{
  if (*(a1 + 16) && *(a1 + 32) >= 1)
  {
    aj_log_error("Istream", "Corrupt marker in bitstream, cannot read more data.", v1, v2);
    return 7;
  }

  else
  {
    result = 7;
    if (*(a1 + 112))
    {
      if (*(a1 + 56) == 1)
      {
        return 4294967294;
      }

      else
      {
        return 7;
      }
    }
  }

  return result;
}

double aj_istream_init_mem(uint64_t a1, uint64_t *a2, char a3, int a4)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0;
  v5 = *(a2 + 2);
  v6 = *a2;
  *(a1 + 40) = *a2;
  *(a1 + 8) = v6;
  *(a1 + 104) = 0;
  *(a1 + 24) = -9;
  *(a1 + 32) = v5;
  *(a1 + 36) = v5;
  *(a1 + 48) = v5;
  *(a1 + 52) = v5;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 56) = a4;
  *(a1 + 96) = 0;
  *(a1 + 112) = a3;
  return result;
}

uint64_t read_bytes_with_callback(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  if (*(a1 + 56) == 2)
  {
    v5 = 0;
LABEL_11:
    result = 0;
    goto LABEL_21;
  }

  v5 = 0;
  while (1)
  {
    v9 = *(a1 + 52);
    if (v9)
    {
      v10 = *(a1 + 48);
      if (v10 >= v9)
      {
        *(a1 + 56) = 2;
        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    if (*(a1 + 56) == 1)
    {
      *(a1 + 56) = 0;
    }

    result = (*(a1 + 80))(a2 + v5, (a3 - v5), *(a1 + 64));
    if (result <= 0)
    {
      break;
    }

    v12 = *(a1 + 48) + result;
    *(a1 + 48) = v12;
    v5 += result;
    if (v5 >= 8)
    {
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_16:
      aj_log_error("Istream", "File is larger than %d bytes, aborting");
      goto LABEL_20;
    }
  }

  if (result == -1)
  {
    result = 0;
    v13 = 2;
    goto LABEL_18;
  }

  if (!result)
  {
    v13 = 1;
LABEL_18:
    *(a1 + 56) = v13;
    goto LABEL_21;
  }

  aj_log_error("Istream", "File read error");
LABEL_20:
  result = 9;
LABEL_21:
  *a4 = v5;
  return result;
}

uint64_t aj_istream_find_next_val(uint64_t a1, int __c)
{
  if (*(a1 + 104) || *(a1 + 16))
  {
    return 7;
  }

  *a1 = 0;
  *(a1 + 24) = -9;
  if (*(a1 + 32) > 1)
  {
    goto LABEL_10;
  }

  v2 = aj_istream_move_forward(a1);
  if (v2)
  {
    return v2;
  }

  if (*(a1 + 32) > 1)
  {
LABEL_10:
    v6 = (a1 + 56);
    while (1)
    {
      v7 = *(a1 + 32);
      if (v7 < 1)
      {
        break;
      }

      v8 = *(a1 + 8);
      if (*v8 == __c)
      {
        goto LABEL_28;
      }

      v9 = memchr(*(a1 + 8), __c, *(a1 + 32));
      v10 = &v8[v7 - 1];
      if (v9)
      {
        v10 = v9;
      }

      *(a1 + 8) = v10;
      v11 = v7 + v8 - v10;
      *(a1 + 32) = v11;
      if (v11 <= 7)
      {
        v12 = aj_istream_move_forward(a1);
        if (v12)
        {
          v13 = 1;
          v2 = v12;
LABEL_25:
          if (v13 == 1)
          {
            return v2;
          }

          LODWORD(v7) = *(a1 + 32);
          break;
        }

        if (*(a1 + 32) <= 1)
        {
          if (!*(a1 + 80) || (v13 = *v6) != 0)
          {
            v13 = 3;
          }

          if (v13)
          {
            goto LABEL_25;
          }
        }
      }
    }

    if (!v7)
    {
      goto LABEL_30;
    }

LABEL_28:
    if (**(a1 + 8) == __c)
    {
      return 0;
    }

LABEL_30:
    if (!*(a1 + 112))
    {
      return 7;
    }
  }

  else
  {
    if (!*(a1 + 112))
    {
      return 7;
    }

    v6 = (a1 + 56);
  }

  if (*v6 == 1)
  {
    return 4294967294;
  }

  else
  {
    return 7;
  }
}

uint64_t aj_istream_read_bytes_le(uint64_t a1, unsigned int *a2, int a3)
{
  v3 = a3;
  v6 = *(a1 + 32);
  if (v6 < a3)
  {
    result = aj_istream_move_forward(a1);
    if (result)
    {
      return result;
    }

    v6 = *(a1 + 32);
  }

  if (v6 >= v3)
  {
    v8 = 32 - 8 * v3;
    v9 = 0;
    if (v3)
    {
      v10 = *(a1 + 8) + 1;
      v11 = v6 - 1;
      do
      {
        *(a1 + 32) = v11;
        *(a1 + 8) = v10;
        HIDWORD(v12) = *(v10 - 1);
        LODWORD(v12) = v9;
        v9 = v12 >> 8;
        ++v10;
        --v11;
        --v3;
      }

      while (v3);
    }

    result = 0;
    *a2 = v9 >> v8;
  }

  else
  {
    result = 7;
    if (*(a1 + 112))
    {
      if (*(a1 + 56) == 1)
      {
        return 4294967294;
      }

      else
      {
        return 7;
      }
    }
  }

  return result;
}

uint64_t aj_istream_peek_byte(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32) > 0)
  {
    goto LABEL_2;
  }

  result = aj_istream_move_forward(a1);
  if (!result)
  {
    if (*(a1 + 32) > 0)
    {
LABEL_2:
      result = 0;
      *a2 = **(a1 + 8);
      return result;
    }

    result = 7;
    if (*(a1 + 112))
    {
      if (*(a1 + 56) == 1)
      {
        return 4294967294;
      }

      else
      {
        return 7;
      }
    }
  }

  return result;
}

uint64_t aj_istream_peek_bytes(uint64_t a1, void *__dst, int a3)
{
  v6 = *(a1 + 32);
  if (v6 < a3)
  {
    result = aj_istream_move_forward(a1);
    if (result)
    {
      return result;
    }

    v6 = *(a1 + 32);
  }

  if (v6 >= a3)
  {
    memcpy(__dst, *(a1 + 8), a3);
    return 0;
  }

  else
  {
    result = 7;
    if (*(a1 + 112))
    {
      if (*(a1 + 56) == 1)
      {
        return 4294967294;
      }

      else
      {
        return 7;
      }
    }
  }

  return result;
}

uint64_t aj_istream_fill_buf(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  if (v4 <= 7)
  {
    result = aj_istream_move_forward(a1);
    if (result)
    {
      return result;
    }

    v4 = *(a1 + 32);
    if (v4 <= 7)
    {
      goto LABEL_23;
    }
  }

  v5 = 0;
  v6 = 0;
  v7 = *(a1 + 16);
  while (1)
  {
    if (v7)
    {
      v13 = *(a1 + 24);
      v14 = 1;
      goto LABEL_11;
    }

    v8 = v4 - 1;
    *(a1 + 32) = v4 - 1;
    v9 = *(a1 + 8);
    v10 = v9 + 1;
    *(a1 + 8) = v9 + 1;
    v11 = *v9;
    if (v11 == 255)
    {
      break;
    }

LABEL_7:
    v6 = v11 | (v6 << 8);
    v5 += 8;
    v13 = *(a1 + 24) + v5;
    v4 = v8;
    if (v13 >= 16)
    {
      v14 = 0;
      goto LABEL_9;
    }
  }

  v12 = v4 - 2;
  *(a1 + 32) = v12;
  *(a1 + 8) = v9 + 2;
  if (!v9[1])
  {
    v11 = 255;
    v8 = v12;
    goto LABEL_7;
  }

  if (v9[1] != 255)
  {
    *(a1 + 16) = v10;
    v14 = 1;
    *(a1 + 28) = 1;
    v13 = *(a1 + 24);
    if (v5)
    {
      v13 += v5;
LABEL_9:
      *a1 |= v6 << (23 - v13);
      *(a1 + 24) = v13;
    }

LABEL_11:
    if ((v13 & 0x80000000) == 0 && (v14 & 1) == 0)
    {
      *(a1 + 28) = 0;
    }

    if (v13 >= v2)
    {
      return 0;
    }

    return aj_istream_get_error_code_eod(a1);
  }

  *(a1 + 8) = v10;
  *(a1 + 32) = v8;
  if (v5)
  {
    v16 = *(a1 + 24) + v5;
    *a1 |= v6 << (23 - v16);
    *(a1 + 24) = v16;
  }

LABEL_23:

  return secure_fill_buf(a1, v2);
}

uint64_t secure_fill_buf(uint64_t a1, int a2)
{
  if (*(a1 + 32) <= 7)
  {
    result = aj_istream_move_forward(a1);
    if (result)
    {
      return result;
    }
  }

  v5 = *(a1 + 24);
  if (v5 > 15)
  {
    goto LABEL_23;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(a1 + 32);
    if (v8 < 1 || *(a1 + 16))
    {
      break;
    }

    v9 = *(a1 + 8);
    *(a1 + 32) = v8 - 1;
    v10 = v9 + 1;
    *(a1 + 8) = v9 + 1;
    v11 = *v9;
    if (v11 == 255)
    {
      if (v8 == 1)
      {
        *(a1 + 8) = v9;
        *(a1 + 32) = 1;
        break;
      }

      v12 = *v10;
      if (v12 == 255)
      {
        if (v8 <= 8)
        {
          result = aj_istream_move_forward(a1);
          if (result)
          {
            return result;
          }

          v5 = *(a1 + 24);
        }

        continue;
      }

      *(a1 + 32) = v8 - 2;
      *(a1 + 8) = v9 + 2;
      if (v12)
      {
        *(a1 + 16) = v10;
        break;
      }

      v11 = 255;
    }

    v6 = v11 | (v6 << 8);
    v7 += 8;
  }

  while (v5 + v7 < 16);
  if (v7 >= 1)
  {
    v5 += v7;
    *a1 |= v6 << (23 - v5);
    *(a1 + 24) = v5;
  }

  if (v5 < 0)
  {
LABEL_24:
    LODWORD(v13) = 1;
  }

  else
  {
LABEL_23:
    v13 = *(a1 + 16);
    if (v13)
    {
      goto LABEL_24;
    }
  }

  *(a1 + 28) = v13;
  if (v5 >= a2)
  {
    return 0;
  }

  return aj_istream_get_error_code_eod(a1);
}

uint64_t aj_istream_memcpy(uint64_t a1, char *__dst, int a3, _DWORD *a4)
{
  if (*(a1 + 32) > 0 || (result = aj_istream_move_forward(a1), !result))
  {
    v8 = a3;
    while (v8 >= 1)
    {
      v9 = *(a1 + 32);
      if (v9 <= 0)
      {
        *a4 = a3 - v8;
        goto LABEL_15;
      }

      if (v9 >= v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      memcpy(__dst, *(a1 + 8), v10);
      __dst += v10;
      v8 -= v10;
      result = aj_istream_move_to_position(a1, (*(a1 + 48) + v10 - *(a1 + 32)));
      if (result)
      {
        return result;
      }
    }

    *a4 = a3 - v8;
    if (!v8)
    {
      return 0;
    }

LABEL_15:
    result = 7;
    if (*(a1 + 112))
    {
      if (*(a1 + 56) == 1)
      {
        return 4294967294;
      }

      else
      {
        return 7;
      }
    }
  }

  return result;
}

uint64_t aj_istream_state_save(int *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = a1[6];
  if (v2)
  {
    v4 = v3 == -9;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return 1;
  }

  if (v3 <= 15)
  {
    result = secure_fill_buf(a1, -8);
    if (result)
    {
      return result;
    }

    v2 = *(a1 + 2);
    v3 = a1[6];
  }

  result = 0;
  v4 = v2 == 0;
  v8 = a1[12] - a1[8] + a1[24] - 2;
  if (v4)
  {
    v8 = a1[12] - a1[8] + a1[24];
  }

  *(a2 + 16) = v3 + 9;
  v9 = *a1;
  *a2 = v8;
  *(a2 + 4) = v9;
  *(a2 + 17) = 1;
  return result;
}

uint64_t aj_istream_state_restore(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    *(a1 + 16) = 0;
  }

  v4 = *(a2 + 16);
  result = aj_istream_move_to_position(a1, (*a2 - *(a1 + 96)));
  if (!result)
  {
    *(a1 + 24) = v4 - 9;
    *a1 = *(a2 + 4);

    return secure_fill_buf(a1, -9);
  }

  return result;
}

uint64_t aj_istream_state_serialize(uint64_t result, uint64_t a2)
{
  v2 = 0;
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  do
  {
    *(result + 8 + v2) = *(a2 + 8 + v2);
    v2 += 2;
  }

  while (v2 != 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t aj_istream_state_deserialize(uint64_t result, uint64_t a2)
{
  v2 = 0;
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  do
  {
    *(result + 8 + v2) = *(a2 + 8 + v2);
    v2 += 2;
  }

  while (v2 != 8);
  *(result + 16) = *(a2 + 16);
  *(result + 17) = 1;
  return result;
}

void *aj_icol_row_420_rgb_12bit_generic(void *result, unsigned __int16 **a2, unsigned __int16 **a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, char a9)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v39[0] = a4;
  v39[1] = a5;
  v38[0] = *result;
  if (a6 == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = result[1];
  }

  v38[1] = v9;
  if (a7 >= 1)
  {
    v10 = 0;
    v11 = *a3;
    v12 = *a2;
    result = v39;
    v13 = a7;
    do
    {
      if (v13 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      v16 = *v12++;
      v15 = v16;
      v18 = *v11++;
      v17 = v18;
      if (a6 >= 1)
      {
        v19 = 0;
        v20 = v15 - 2048;
        v21 = v17 - 2048;
        v22 = 227 * (v15 - 2048);
        v23 = -44 * v20 - 91 * (v17 - 2048);
        v24 = 179 * v21;
        do
        {
          if (v10 < a7)
          {
            v25 = v38[v19];
            v26 = v39[v19];
            v27 = v14;
            do
            {
              v28 = *v25++;
              v29 = v22 + (v28 << 7);
              v30 = v23 + (v28 << 7);
              v31 = v24 + (v28 << 7);
              v32 = (v30 + 64) >> 7;
              v33 = (v31 + 64) >> 7;
              if (v31 <= -65)
              {
                v34 = 0;
              }

              else
              {
                v34 = 4095;
              }

              if (v33 >= 0x1000)
              {
                LOWORD(v33) = v34;
              }

              if (v30 <= -65)
              {
                v35 = 0;
              }

              else
              {
                v35 = 4095;
              }

              if (v32 >= 0x1000)
              {
                LOWORD(v32) = v35;
              }

              if (v29 <= -65)
              {
                LOWORD(v36) = 0;
              }

              else
              {
                LOWORD(v36) = 4095;
              }

              if (((v29 + 64) >> 7) < 0x1000)
              {
                v36 = (v29 + 64) >> 7;
              }

              if (a8)
              {
                v37 = v36;
              }

              else
              {
                v37 = v33;
              }

              *v26 = v37;
              if (!a8)
              {
                LOWORD(v33) = v36;
              }

              v26[1] = v32;
              v26[2] = v33;
              if (a9)
              {
                v26[3] = 4095;
                v26 += 4;
              }

              else
              {
                v26 += 3;
              }

              --v27;
            }

            while (v27);
            v38[v19] = v25;
            v39[v19] = v26;
          }

          ++v19;
        }

        while (v19 != a6);
      }

      v10 += 2;
      v13 -= 2;
    }

    while (v10 < a7);
  }

  return result;
}

unsigned __int16 **aj_icol_row_444_rgb_12bit_generic(unsigned __int16 **result, unsigned __int16 **a2, unsigned __int16 **a3, __int16 *a4, int a5, int a6, int a7)
{
  if (a5 >= 1)
  {
    v7 = *a3;
    v8 = *a2;
    v9 = *result;
    do
    {
      v11 = *v9++;
      v10 = v11;
      v12 = *v8++;
      v13 = v12 - 2048;
      v14 = *v7++;
      v15 = 227 * v13 + (v10 << 7);
      v16 = -44 * v13 + (v10 << 7) - 91 * (v14 - 2048);
      v17 = 179 * (v14 - 2048) + (v10 << 7);
      LODWORD(result) = (v15 + 64) >> 7;
      v18 = (v16 + 64) >> 7;
      v19 = (v17 + 64) >> 7;
      if (v17 <= -65)
      {
        v20 = 0;
      }

      else
      {
        v20 = 4095;
      }

      if (v19 < 0x1000)
      {
        v20 = v19;
      }

      if (v16 <= -65)
      {
        v21 = 0;
      }

      else
      {
        v21 = 4095;
      }

      if (v18 < 0x1000)
      {
        v21 = v18;
      }

      if (v15 <= -65)
      {
        v22 = 0;
      }

      else
      {
        v22 = 4095;
      }

      if (result >= 0x1000)
      {
        result = v22;
      }

      else
      {
        result = result;
      }

      if (a6)
      {
        v23 = result;
      }

      else
      {
        v23 = v20;
      }

      *a4 = v23;
      if (!a6)
      {
        v20 = result;
      }

      a4[1] = v21;
      a4[2] = v20;
      if (a7)
      {
        a4[3] = 4095;
        a4 += 4;
      }

      else
      {
        a4 += 3;
      }

      --a5;
    }

    while (a5);
  }

  return result;
}

char **aj_icol_row_444_to_yuyv(char **result, char **a2, char **a3, char *a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = *result;
  v8 = *a2;
  v9 = *a3;
  if (a7 < 2)
  {
    if ((a7 & 1) == 0)
    {
      return result;
    }

LABEL_7:
    v20 = *v7;
    v21 = *v8;
    v22 = *v9;
    *a4 = *v7;
    a4[1] = v21;
    a4[2] = v20;
    a4[3] = v22;
    return result;
  }

  v10 = 0;
  do
  {
    v11 = *v7;
    v12 = v7 + 2;
    v13 = v7[1];
    v14 = (v8 + 2);
    result = *v9;
    v15 = (v9 + 2);
    v16 = (v8[1] + *v8) >> 1;
    v17 = v9[1] + result;
    *a4 = v11;
    a4[1] = v16;
    v18 = v17 >> 1;
    v19 = a4 + 4;
    v10 += 2;
    v9 = v15;
    a4[2] = v13;
    a4[3] = v18;
    v8 = v14;
    v7 = v12;
    a4 += 4;
  }

  while (v10 < a7 - 1);
  a4 = v19;
  v7 = v12;
  v8 = v14;
  v9 = v15;
  if (a7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t aj_icol_row_420_to_yuyv(unint64_t result, char **a2, char **a3, _BYTE *a4, char *a5, int a6, int a7)
{
  v7 = *result;
  v8 = *a2;
  v9 = *a3;
  if (a6 == 1)
  {
    if (a7 >= 2)
    {
      v10 = 0;
      do
      {
        v11 = *v7;
        v12 = v7 + 2;
        v13 = v7[1];
        v15 = *v8++;
        v14 = v15;
        v16 = *v9++;
        *a4 = v11;
        a4[1] = v14;
        a4[2] = v13;
        a4[3] = v16;
        a4 += 4;
        v10 += 2;
        v7 = v12;
      }

      while (v10 < a7 - 1);
      v7 = v12;
    }

    if (a7)
    {
      v17 = *v7;
      v18 = *v8;
      v19 = *v9;
      *a4 = v17;
      a4[1] = v18;
      a4[2] = v17;
      a4[3] = v19;
    }
  }

  else
  {
    v20 = *(result + 8);
    if (a7 >= 2)
    {
      v21 = 0;
      do
      {
        v22 = *v7;
        v23 = v7 + 2;
        v24 = v7[1];
        v25 = *v20;
        v26 = v20 + 2;
        result = v20[1];
        v28 = *v8++;
        v27 = v28;
        v29 = *v9++;
        *a4 = v22;
        a4[1] = v27;
        a4[2] = v24;
        v30 = a4 + 4;
        a4[3] = v29;
        *a5 = v25;
        v31 = a5 + 4;
        v21 += 2;
        a5[1] = v27;
        v20 = v26;
        v7 = v23;
        a5[2] = result;
        a5[3] = v29;
        a5 += 4;
        a4 += 4;
      }

      while (v21 < a7 - 1);
      a4 = v30;
      a5 = v31;
      v7 = v23;
      v20 = v26;
    }

    if (a7)
    {
      v32 = *v7;
      v33 = *v20;
      v34 = *v8;
      v35 = *v9;
      *a4 = v32;
      a4[1] = v34;
      a4[2] = v32;
      a4[3] = v35;
      *a5 = v33;
      a5[1] = v34;
      a5[2] = v33;
      a5[3] = v35;
    }
  }

  return result;
}

char **aj_icol_row_444_to_yuv(char **result, char **a2, char **a3, _BYTE *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7)
  {
    v7 = *a3;
    v8 = *a2;
    v9 = *result;
    do
    {
      v10 = *v9++;
      *a4 = v10;
      v11 = *v8++;
      a4[1] = v11;
      v12 = *v7++;
      a4[2] = v12;
      a4 += 3;
      --a7;
    }

    while (a7);
  }

  return result;
}

uint64_t aj_icol_row_420_to_yuv(uint64_t result, char **a2, char **a3, _BYTE *a4, _BYTE *a5, int a6, int a7)
{
  v7 = *result;
  v8 = *a2;
  v9 = *a3;
  if (a6 == 1)
  {
    if (a7 >= 2)
    {
      v10 = 0;
      do
      {
        v12 = *v8++;
        v11 = v12;
        v13 = *v9++;
        *a4 = *v7;
        a4[1] = v11;
        a4[2] = v13;
        v14 = v7 + 2;
        a4[3] = v7[1];
        a4[4] = v11;
        a4[5] = v13;
        a4 += 6;
        v10 += 2;
        v7 += 2;
      }

      while (v10 < a7 - 1);
      v7 = v14;
    }

    if (a7)
    {
      *a4 = *v7;
      a4[1] = *v8;
      a4[2] = *v9;
    }
  }

  else
  {
    v15 = *(result + 8);
    if (a7 >= 2)
    {
      v16 = 0;
      do
      {
        v17 = *v8++;
        result = v17;
        LOBYTE(v17) = *v9++;
        *a4 = *v7;
        a4[1] = result;
        a4[2] = v17;
        v18 = v7 + 2;
        a4[3] = v7[1];
        a4[4] = result;
        v19 = a4 + 6;
        a4[5] = v17;
        *a5 = *v15;
        a5[1] = result;
        a5[2] = v17;
        v20 = v15 + 2;
        a5[3] = v15[1];
        v21 = a5 + 6;
        v16 += 2;
        a4 += 6;
        a5[4] = result;
        a5[5] = v17;
        a5 += 6;
        v7 += 2;
        v15 += 2;
      }

      while (v16 < a7 - 1);
      v15 = v20;
      v7 = v18;
      a5 = v21;
      a4 = v19;
    }

    if (a7)
    {
      v22 = *v8;
      v23 = *v9;
      *a4 = *v7;
      a4[1] = v22;
      a4[2] = v23;
      *a5 = *v15;
      a5[1] = v22;
      a5[2] = v23;
    }
  }

  return result;
}

void *aj_icol_row_444_to_biplanar(void *__src, int a2, char *a3, int a4, char *a5, int a6, void *__dst, int a8, _BYTE *a9, int a10)
{
  v12 = a10;
  result = memcpy(__dst, __src, a10);
  if (a10 >= 1)
  {
    do
    {
      v15 = *a3++;
      *a9 = v15;
      v16 = *a5++;
      a9[1] = v16;
      a9 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

void *aj_icol_row_422_to_biplanar(void *__src, int a2, char *a3, int a4, char *a5, int a6, char *__dst, int a8, _BYTE *a9, int a10, int a11, char a12)
{
  v15 = a12;
  v16 = a9;
  result = memcpy(__dst, __src, a10);
  if (a10)
  {
    __dst[a10] = __dst[a10 - 1];
  }

  if (a11 != 1 || a12 != 0)
  {
    v19 = a10 - 1 + a12;
    if (v19 <= a12)
    {
      v23 = a9;
      if ((a10 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      do
      {
        v20 = v15 >> a11;
        v21 = (v15 + 1) >> a11;
        *v16 = (a3[v21] + a3[v20]) >> 1;
        v22 = (a5[v21] + a5[v20]) >> 1;
        v23 = v16 + 2;
        v16[1] = v22;
        v15 += 2;
        v16 += 2;
      }

      while (v15 < v19);
      if ((a10 & 1) == 0)
      {
        return result;
      }
    }

    v27 = (a10 - 1) >> a11;
    *v23 = a3[v27];
    v23[1] = a5[v27];
    return result;
  }

  if (a10 >= 1)
  {
    v24 = (a10 + 1) >> 1;
    do
    {
      v25 = *a3++;
      *v16 = v25;
      v26 = *a5++;
      v16[1] = v26;
      v16 += 2;
      --v24;
    }

    while (v24);
  }

  return result;
}

void *aj_icol_row_420_to_biplanar(void *__src, const void *a2, char *a3, char *a4, char *a5, char *a6, void *__dst, void *a8, _BYTE *a9, int a10, int a11, char a12)
{
  v17 = a12;
  v18 = a9;
  memcpy(__dst, __src, a10);
  result = memcpy(a8, a2, a10);
  if (a10)
  {
    *(__dst + a10) = *(__dst + a10 - 1);
    *(a8 + a10) = *(a8 + a10 - 1);
  }

  v21 = a11 != 1 || a12 != 0;
  if (a3 == a4 && a5 == a6)
  {
    if (v21)
    {
      v22 = a10 - 1 + a12;
      if (v22 <= a12)
      {
        v26 = a9;
        if ((a10 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        do
        {
          v23 = v17 >> a11;
          v24 = (v17 + 1) >> a11;
          *v18 = (a3[v23] + a3[v24] + 1) >> 1;
          v25 = (a5[v23] + a5[v24] + 1) >> 1;
          v26 = v18 + 2;
          v18[1] = v25;
          v17 += 2;
          v18 += 2;
        }

        while (v17 < v22);
        if ((a10 & 1) == 0)
        {
          return result;
        }
      }

      v42 = (a10 - 1) >> a11;
      *v26 = a3[v42];
      LOBYTE(v42) = a5[v42];
LABEL_33:
      v26[1] = v42;
      return result;
    }

    if (a10 >= 1)
    {
      v38 = (a10 + 1) >> 1;
      do
      {
        v39 = *a3++;
        *v18 = v39;
        v40 = *a5++;
        v18[1] = v40;
        v18 += 2;
        --v38;
      }

      while (v38);
    }
  }

  else
  {
    if (v21)
    {
      v27 = a10 - 1 + a12;
      if (v27 <= a12)
      {
        v26 = a9;
        if ((a10 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        do
        {
          v28 = v17 >> a11;
          v29 = (v17 + 1) >> a11;
          *v18 = (a3[v28] + a4[v28] + a3[v29] + a4[v29] + 2) >> 2;
          v30 = (a5[v28] + a6[v28] + a5[v29] + a6[v29] + 2) >> 2;
          v26 = v18 + 2;
          v18[1] = v30;
          v17 += 2;
          v18 += 2;
        }

        while (v17 < v27);
        if ((a10 & 1) == 0)
        {
          return result;
        }
      }

      v41 = (a10 - 1) >> a11;
      *v26 = (a4[v41] + a3[v41]) >> 1;
      v42 = (a6[v41] + a5[v41]) >> 1;
      goto LABEL_33;
    }

    if (a10 >= 1)
    {
      v31 = (a10 + 1) >> 1;
      do
      {
        v33 = *a3++;
        v32 = v33;
        v34 = *a4++;
        *v18 = (v34 + v32) >> 1;
        v36 = *a5++;
        v35 = v36;
        v37 = *a6++;
        v18[1] = (v37 + v35) >> 1;
        v18 += 2;
        --v31;
      }

      while (v31);
    }
  }

  return result;
}

void *aj_icol_row_420_to_biplanar_12bit(void *__src, const void *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, char *__dst, char *a8, _WORD *a9, int a10, int a11, char a12)
{
  v17 = a12;
  v18 = a9;
  memcpy(__dst, __src, 2 * a10);
  result = memcpy(a8, a2, 2 * a10);
  if (a10)
  {
    v20 = 2 * a10 - 2;
    *&__dst[2 * a10] = *&__dst[v20];
    *&a8[2 * a10] = *&a8[v20];
  }

  v22 = a11 != 1 || a12 != 0;
  if (a3 == a4 && a5 == a6)
  {
    if (v22)
    {
      v23 = a10 - 1 + a12;
      if (v23 <= a12)
      {
        v25 = a9;
        if ((a10 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        do
        {
          v24 = (v17 + 1) >> a11;
          *v18 = (a3[v17 >> a11] + a3[v24] + 1) >> 1;
          v25 = v18 + 2;
          v18[1] = (a5[v17 >> a11] + a5[v24] + 1) >> 1;
          v17 += 2;
          v18 += 2;
        }

        while (v17 < v23);
        if ((a10 & 1) == 0)
        {
          return result;
        }
      }

      v39 = (a10 - 1) >> a11;
      *v25 = a3[v39];
      LOWORD(v39) = a5[v39];
LABEL_33:
      v25[1] = v39;
      return result;
    }

    if (a10 >= 1)
    {
      v35 = (a10 + 1) >> 1;
      do
      {
        v36 = *a3++;
        *v18 = v36;
        v37 = *a5++;
        v18[1] = v37;
        v18 += 2;
        --v35;
      }

      while (v35);
    }
  }

  else
  {
    if (v22)
    {
      v26 = a10 - 1 + a12;
      if (v26 <= a12)
      {
        v25 = a9;
        if ((a10 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        do
        {
          v27 = (v17 + 1) >> a11;
          *v18 = (a3[v17 >> a11] + a4[v17 >> a11] + a3[v27] + a4[v27] + 2) >> 2;
          v25 = v18 + 2;
          v18[1] = (a5[v17 >> a11] + a6[v17 >> a11] + a5[v27] + a6[v27] + 2) >> 2;
          v17 += 2;
          v18 += 2;
        }

        while (v17 < v26);
        if ((a10 & 1) == 0)
        {
          return result;
        }
      }

      v38 = (a10 - 1) >> a11;
      *v25 = (a4[v38] + a3[v38]) >> 1;
      v39 = (a6[v38] + a5[v38]) >> 1;
      goto LABEL_33;
    }

    if (a10 >= 1)
    {
      v28 = (a10 + 1) >> 1;
      do
      {
        v30 = *a3++;
        v29 = v30;
        v31 = *a4++;
        *v18 = (v31 + v29) >> 1;
        v33 = *a5++;
        v32 = v33;
        v34 = *a6++;
        v18[1] = (v34 + v32) >> 1;
        v18 += 2;
        --v28;
      }

      while (v28);
    }
  }

  return result;
}

void *aj_icol_row_440_to_biplanar(void *__src, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *__dst, void *a8, _BYTE *a9, int a10, char a11)
{
  memcpy(__dst, __src, a10);
  result = memcpy(a8, a2, a10);
  if (a10 >= 1)
  {
    for (i = 0; i != a10; ++i)
    {
      v20 = i >> a11;
      *a9 = (*(a4 + v20) + *(a3 + v20)) >> 1;
      a9[1] = (*(a6 + v20) + *(a5 + v20)) >> 1;
      a9 += 2;
    }
  }

  return result;
}

const void **aj_icol_row_all_to_gray(const void **result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  if (a6 >= 1)
  {
    v7 = result;
    v8 = a7;
    v9 = v14;
    v10 = a6;
    do
    {
      v12 = *v9++;
      v11 = v12;
      v13 = *v7++;
      result = memcpy(v11, v13, v8);
      --v10;
    }

    while (v10);
  }

  return result;
}

const void **aj_icol_row_all_to_gray_12bit(const void **result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  if (a6 >= 1)
  {
    v7 = result;
    v8 = 2 * a7;
    v9 = v14;
    v10 = a6;
    do
    {
      v12 = *v9++;
      v11 = v12;
      v13 = *v7++;
      result = memcpy(v11, v13, v8);
      --v10;
    }

    while (v10);
  }

  return result;
}

void *aj_icol_row_gray_to_444biplanar(void *__src, int a2, int a3, int a4, int a5, int a6, void *__dst, int a8, void *a9, size_t __n)
{
  memcpy(__dst, __src, __n);

  return memset(a9, 128, 2 * __n);
}

void *aj_icol_row_gray_to_422biplanar(void *__src, int a2, int a3, int a4, int a5, int a6, char *__dst, int a8, void *a9, int a10)
{
  memcpy(__dst, __src, a10);
  if (a10)
  {
    __dst[a10] = __dst[a10 - 1];
  }

  return memset(a9, 128, (a10 & 1) + a10);
}

void *aj_icol_row_gray_to_420biplanar(void *__src, const void *a2, int a3, int a4, int a5, int a6, char *__dst, char *a8, void *a9, int a10)
{
  memcpy(__dst, __src, a10);
  memcpy(a8, a2, a10);
  if (a10)
  {
    __dst[a10] = __dst[a10 - 1];
    a8[a10] = a8[a10 - 1];
  }

  return memset(a9, 128, (a10 & 1) + a10);
}

void aj_icol_row_gray_to_420biplanar_12bit(void *__src, const void *a2, int a3, int a4, int a5, int a6, void *__dst, void *a8, void *a9, int a10)
{
  memcpy(__dst, __src, 2 * a10);
  memcpy(a8, a2, 2 * a10);
  if (a10)
  {
    *(__dst + a10) = *(__dst + a10 - 1);
    *(a8 + a10) = *(a8 + a10 - 1);
  }

  v13 = (a10 & 1) + a10;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v15 < 0 == v14)
  {

    memset_pattern16(a9, &unk_240AB6050, 2 * v15 + 2);
  }
}

void *aj_icol_row_gray_to_440biplanar(void *__src, const void *a2, int a3, int a4, int a5, int a6, void *__dst, void *a8, void *a9, size_t __n)
{
  memcpy(__dst, __src, __n);
  memcpy(a8, a2, __n);

  return memset(a9, 128, 2 * __n);
}

uint64_t aj_icol_row_gray_to_yuyv(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = a4;
  v12[1] = a5;
  if (a6 >= 1)
  {
    for (i = 0; i != a6; ++i)
    {
      v8 = *(result + 8 * i);
      v9 = v12[i];
      if (a7 >= 2)
      {
        v10 = 0;
        do
        {
          *v9 = *v8;
          v9[1] = 0x80;
          v11 = v8 + 2;
          v9[2] = v8[1];
          v9[3] = 0x80;
          v9 += 4;
          v10 += 2;
          v8 += 2;
        }

        while (v10 < a7 - 1);
        v8 = v11;
      }

      if (a7)
      {
        *v9 = *v8;
        v9[1] = 0x80;
        v9[2] = *v8;
        v9[3] = 0x80;
      }
    }
  }

  return result;
}

uint64_t aj_icol_row_gray_to_yuv(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = a4;
  v12[1] = a5;
  if (a6 >= 1)
  {
    for (i = 0; i != a6; ++i)
    {
      if (a7 >= 1)
      {
        v8 = v12[i];
        v9 = *(result + 8 * i);
        v10 = a7;
        do
        {
          v11 = *v9++;
          *v8 = v11;
          *(v8 + 1) = -32640;
          v8 += 3;
          --v10;
        }

        while (v10);
      }
    }
  }

  return result;
}

uint64_t aj_icol_row_gray_to_color_generic(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v18[0] = a2;
  v18[1] = a3;
  if (a4 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      v8 = *(result + 8 * i);
      v9 = v18[i];
      if (a6 == 2)
      {
        if (a5 >= 1)
        {
          v12 = a5;
          do
          {
            v13 = *v8++;
            *v9 = (v13 >> 3) & 0x1F | (32 * ((v13 >> 2) & 7));
            *(v9 + 1) = ((8 * v13) | ((v13 >> 3) << 11)) >> 8;
            v9 += 2;
            --v12;
          }

          while (v12);
        }
      }

      else if (a6 == 4)
      {
        if (a7 == 2)
        {
          if (a5 >= 1)
          {
            v10 = a5;
            do
            {
              v11 = *v8;
              v8 += 2;
              *v9 = v11;
              *(v9 + 2) = v11;
              *(v9 + 4) = v11;
              *(v9 + 6) = 4095;
              v9 += 8;
              --v10;
            }

            while (v10);
          }
        }

        else
        {
          v16 = a5;
          if (a5 >= 1)
          {
            do
            {
              v17 = *v8++;
              *v9 = v17;
              *(v9 + 1) = v17;
              *(v9 + 2) = v17;
              *(v9 + 3) = -1;
              v9 += 4;
              --v16;
            }

            while (v16);
          }
        }
      }

      else
      {
        v14 = a5;
        if (a5 >= 1)
        {
          do
          {
            v15 = *v8++;
            *v9 = v15;
            *(v9 + 1) = v15;
            *(v9 + 2) = v15;
            v9 += 3;
            --v14;
          }

          while (v14);
        }
      }
    }
  }

  return result;
}

uint64_t aj_icol_row_gray_to_rgb(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = a4;
  v12[1] = a5;
  if (a6 >= 1)
  {
    for (i = 0; i != a6; ++i)
    {
      if (a7 >= 1)
      {
        v8 = v12[i];
        v9 = *(result + 8 * i);
        v10 = a7;
        do
        {
          v11 = *v9++;
          *v8 = v11;
          v8[1] = v11;
          v8[2] = v11;
          v8 += 3;
          --v10;
        }

        while (v10);
      }
    }
  }

  return result;
}

uint64_t aj_icol_row_gray_to_rgb_12bit(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = a4;
  v12[1] = a5;
  if (a6 >= 1)
  {
    for (i = 0; i != a6; ++i)
    {
      if (a7 >= 1)
      {
        v8 = v12[i];
        v9 = *(result + 8 * i);
        v10 = a7;
        do
        {
          v11 = *v9++;
          *v8 = v11;
          v8[1] = v11;
          v8[2] = v11;
          v8 += 3;
          --v10;
        }

        while (v10);
      }
    }
  }

  return result;
}

uint64_t aj_icol_row_gray_to_rgba(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = a4;
  v12[1] = a5;
  if (a6 >= 1)
  {
    for (i = 0; i != a6; ++i)
    {
      if (a7 >= 1)
      {
        v8 = v12[i];
        v9 = *(result + 8 * i);
        v10 = a7;
        do
        {
          v11 = *v9++;
          *v8 = v11;
          v8[1] = v11;
          v8[2] = v11;
          v8[3] = -1;
          v8 += 4;
          --v10;
        }

        while (v10);
      }
    }
  }

  return result;
}

uint64_t aj_icol_row_gray_to_rgba_12bit(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = a4;
  v12[1] = a5;
  if (a6 >= 1)
  {
    for (i = 0; i != a6; ++i)
    {
      if (a7 >= 1)
      {
        v8 = v12[i];
        v9 = *(result + 8 * i);
        v10 = a7;
        do
        {
          v11 = *v9++;
          *v8 = v11;
          v8[1] = v11;
          v8[2] = v11;
          v8[3] = 4095;
          v8 += 4;
          --v10;
        }

        while (v10);
      }
    }
  }

  return result;
}

void aj_icol_mcurow_default(uint64_t result, int **a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v8 = (a3 + 568);
    v9 = **a2;
    if (v9 == 3)
    {
      v10 = (a3 + 696);
    }

    else
    {
      v10 = 0;
    }

    if (v9 == 3)
    {
      v11 = (a3 + 824);
    }

    else
    {
      v11 = 0;
    }

    if (*(a2 + 1616) == 3 && !*(a2 + 1721))
    {
      if (*(a3 + 1080))
      {
        if (*(a2 + 1701))
        {
          buffer = aj_rowbuffer_get_buffer((a3 + 152), a2[847]);
        }

        else
        {
          buffer = a2[8] + a2[12] * *(a3 + 36) + *(a2 + 1650);
        }

        invcol_wrapper(a2, v8, v10++, v11, buffer, 0, 1, *(result + 48), *(a3 + 1081));
        v28 = v11 + 1;
        v19 = *(a2 + 1701);
        if (v19)
        {
          aj_row_translate(v19, *(a2 + 7), *(a2 + 1623), a2[16], *(a2 + 1648), *(a2 + 1623) - *(a2 + 1649), *(a2 + 1624), *(a3 + 36), buffer, a2[8]);
          aj_rowbuffer_return_buffer((a3 + 152), buffer);
        }

        ++*(a3 + 36);
        v18 = *(a3 + 1080);
      }

      else
      {
        v28 = v11;
        v18 = 0;
      }

      v29 = a4 - 1;
      if ((a4 - 1) > v18)
      {
        v20 = v18 >> 1;
        v21 = (a3 + 8 * v18 + 568);
        do
        {
          if (*(a2 + 1701))
          {
            v22 = aj_rowbuffer_get_buffer((a3 + 152), a2[847]);
            v23 = aj_rowbuffer_get_buffer((a3 + 152), a2[847]);
          }

          else
          {
            v24 = a2[12];
            v22 = a2[8] + v24 * *(a3 + 36) + *(a2 + 1650);
            v23 = v24 + v22;
          }

          invcol_wrapper(a2, v21, &v10[v20 & 0x7FFFFFFF], &v28[v20 & 0x7FFFFFFF], v22, v23, 2, *(result + 48), *(a3 + 1081));
          v25 = *(a2 + 1701);
          if (v25)
          {
            aj_row_translate(v25, *(a2 + 7), *(a2 + 1623), a2[16], *(a2 + 1648), *(a2 + 1623) - *(a2 + 1649), *(a2 + 1624), *(a3 + 36), v22, a2[8]);
            aj_rowbuffer_return_buffer((a3 + 152), v22);
            aj_row_translate(*(a2 + 1701), *(a2 + 7), *(a2 + 1623), a2[16], *(a2 + 1648), *(a2 + 1623) - *(a2 + 1649), *(a2 + 1624), *(a3 + 36), v23, a2[8]);
            aj_rowbuffer_return_buffer((a3 + 152), v23);
          }

          *(a3 + 36) += 2;
          LODWORD(v20) = v20 + 1;
          v21 += 2;
          v18 += 2;
        }

        while (v29 > v18);
      }

      if (v18 == v29)
      {
        if (*(a2 + 1701))
        {
          v26 = aj_rowbuffer_get_buffer((a3 + 152), a2[847]);
        }

        else
        {
          v26 = a2[8] + a2[12] * *(a3 + 36) + *(a2 + 1650);
        }

        invcol_wrapper(a2, &v8[v29], &v10[v29 >> 1], &v28[v29 >> 1], v26, 0, 1, *(result + 48), *(a3 + 1081));
        v27 = *(a2 + 1701);
        if (v27)
        {
          aj_row_translate(v27, *(a2 + 7), *(a2 + 1623), a2[16], *(a2 + 1648), *(a2 + 1623) - *(a2 + 1649), *(a2 + 1624), *(a3 + 36), v26, a2[8]);
          aj_rowbuffer_return_buffer((a3 + 152), v26);
        }

        ++*(a3 + 36);
      }
    }

    else if (a4 >= 1)
    {
      v12 = 0;
      v13 = *(result + 44) >> 1;
      v14 = a4;
      do
      {
        if (*(a2 + 1701))
        {
          v15 = aj_rowbuffer_get_buffer((a3 + 152), a2[847]);
        }

        else
        {
          v15 = a2[8] + a2[12] * *(a3 + 36) + *(a2 + 1650);
        }

        (a2[864])(v8, &v10[v12 >> v13], &v11[v12 >> v13], v15, 0, 1, *(result + 48));
        v16 = *(a2 + 1701);
        if (v16)
        {
          aj_row_translate(v16, *(a2 + 7), *(a2 + 1623), a2[16], *(a2 + 1648), *(a2 + 1623) - *(a2 + 1649), *(a2 + 1624), *(a3 + 36), v15, a2[8]);
          aj_rowbuffer_return_buffer((a3 + 152), v15);
        }

        ++*(a3 + 36);
        ++v12;
        ++v8;
      }

      while (v14 != v12);
    }
  }
}

uint64_t invcol_wrapper(uint64_t a1, void *a2, _BYTE **a3, char **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = a2;
  v56 = *MEMORY[0x277D85DE8];
  if (a9)
  {
    v54 = a5;
    v55 = a6;
    v13 = *(a1 + 6580);
    if (v13 == 2 || v13 == 4)
    {
      v15 = 1;
    }

    else
    {
      if (v13 == 6)
      {
        if (a7 >= 1)
        {
          v18 = a7;
          v19 = &v54;
          v20 = a2;
          do
          {
            v21 = *v19;
            *v21 = **v20;
            v21[1] = **a3;
            v22 = **a4;
            *v19++ = (v21 + 3);
            v21[2] = v22;
            ++*v20++;
            --v18;
          }

          while (v18);
        }

        ++*a3;
        ++*a4;
LABEL_58:
        result = (*(a1 + 6912))(v12, a3, a4, v54, v55, a7, (a8 - 1));
        --*a3;
        --*a4;
        if (a7 >= 1)
        {
          v53 = a7;
          do
          {
            --*v12++;
            --v53;
          }

          while (v53);
        }

        return result;
      }

      v15 = 0;
    }

    v23 = **a3;
    v24 = **a4;
    ++*a3;
    ++*a4;
    if (a7 >= 1)
    {
      v25 = v24 - 128;
      v26 = v23 - 128;
      v27 = 227 * (v23 - 128);
      v28 = -44 * v26 - 91 * v25;
      v29 = 179 * v25;
      v30 = a7;
      v31 = &v54;
      v32 = a2;
      do
      {
        v33 = **v32;
        v34 = v27 + (v33 << 7);
        v35 = v28 + (v33 << 7);
        v36 = v29 + (v33 << 7);
        v37 = *(a1 + 28);
        v38 = *v31;
        v39 = (v34 + 64) >> 7;
        v40 = (v35 + 64) >> 7;
        v41 = (v36 + 64) >> 7;
        if (v36 <= -65)
        {
          v42 = 0;
        }

        else
        {
          v42 = 255;
        }

        if (v41 < 0x100)
        {
          v42 = v41;
        }

        if (v35 <= -65)
        {
          v43 = 0;
        }

        else
        {
          v43 = 255;
        }

        if (v40 < 0x100)
        {
          v43 = v40;
        }

        if (v34 <= -65)
        {
          v44 = 0;
        }

        else
        {
          v44 = 255;
        }

        if (v39 < 0x100)
        {
          v44 = v39;
        }

        switch(v37)
        {
          case 4:
            if (v15)
            {
              v52 = v42;
            }

            else
            {
              v52 = v44;
            }

            if (!v15)
            {
              LOBYTE(v44) = v42;
            }

            *v38 = v44;
            v38[1] = v43;
            v38[2] = v52;
            v38[3] = -1;
            v38 += 4;
            break;
          case 3:
            *v38 = v42;
            v38[1] = v43;
            v38[2] = v44;
            v38 += 3;
            break;
          case 2:
            if (v42 >= 0xFC)
            {
              v45 = 255;
            }

            else
            {
              v45 = v42 + 4;
            }

            v46 = v43 + 2;
            if (v43 >= 0xFE)
            {
              v46 = 255;
            }

            v47 = v45 >> 3;
            if (v44 >= 0xFC)
            {
              v48 = 255;
            }

            else
            {
              v48 = v44 + 4;
            }

            v49 = v48 >> 3;
            v50 = 32 * (v46 >> 2);
            if (v15)
            {
              v51 = v50 | (v47 << 11) | v49;
            }

            else
            {
              v51 = v50 | (v49 << 11) | v47;
            }

            *v38 = v51;
            v38 += 2;
            break;
        }

        *v31++ = v38;
        ++*v32++;
        --v30;
      }

      while (v30);
    }

    goto LABEL_58;
  }

  v16 = *(a1 + 6912);

  return v16(a2, a3, a4, a5, a6, a7, a8);
}

void aj_icol_mcurow_cmyk(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 > 0)
  {
    v6 = 0;
    v44 = a3 + 696;
    v45 = a3 + 568;
    v42 = a3 + 952;
    v43 = a3 + 824;
    v7 = *(result + 48);
    v46 = a4;
    do
    {
      if (*(a2 + 6804))
      {
        buffer = aj_rowbuffer_get_buffer((a3 + 152), *(a2 + 6776));
      }

      else
      {
        buffer = (*(a2 + 64) + *(a2 + 96) * *(a3 + 36) + *(a2 + 6600));
      }

      if (*(a2 + 6936))
      {
        if (v7)
        {
          v9 = *(v42 + 8 * v6);
          v10 = *(v43 + 8 * v6);
          v11 = *(v44 + 8 * v6);
          v12 = v7;
          v13 = buffer;
          v14 = *(v45 + 8 * v6);
          do
          {
            v16 = *v14++;
            v15 = v16;
            v17 = *v11++;
            v18 = v17 - 128;
            v19 = *v10++;
            v20 = 179 * (v19 - 128) + (v15 << 7);
            v21 = -44 * v18 + (v15 << 7) - 91 * (v19 - 128);
            v22 = 227 * v18 + (v15 << 7);
            v23 = (v20 + 64) >> 7;
            v24 = (v21 + 64) >> 7;
            v25 = (v22 + 64) >> 7;
            if (v20 <= -65)
            {
              v26 = 0;
            }

            else
            {
              v26 = -1;
            }

            if (v23 >= 0x100)
            {
              LOBYTE(v23) = v26;
            }

            if (v21 <= -65)
            {
              v27 = 0;
            }

            else
            {
              v27 = -1;
            }

            if (v24 < 0x100)
            {
              v27 = v24;
            }

            if (v22 <= -65)
            {
              v28 = 0;
            }

            else
            {
              v28 = -1;
            }

            if (v25 < 0x100)
            {
              v28 = v25;
            }

            *v13 = ~v23;
            v13[1] = ~v27;
            v13[2] = ~v28;
            v29 = *v9++;
            v13[3] = v29;
            v13 += 4;
            --v12;
          }

          while (v12);
        }
      }

      else if (v7)
      {
        v30 = *(v42 + 8 * v6);
        v31 = *(v43 + 8 * v6);
        v32 = *(v44 + 8 * v6);
        v33 = buffer;
        v34 = v7;
        v35 = *(v45 + 8 * v6);
        do
        {
          v36 = *v35++;
          *v33 = v36;
          v37 = *v32++;
          v33[1] = v37;
          v38 = *v31++;
          v33[2] = v38;
          v39 = *v30++;
          v33[3] = v39;
          v33 += 4;
          --v34;
        }

        while (v34);
      }

      v40 = *(a2 + 6804);
      v41 = *(a3 + 36);
      if (v40)
      {
        aj_row_translate(v40, *(a2 + 28), *(a2 + 6492), *(a2 + 128), *(a2 + 6592), *(a2 + 6492) - *(a2 + 6596), *(a2 + 6496), v41, buffer, *(a2 + 64));
        aj_rowbuffer_return_buffer((a3 + 152), buffer);
        v41 = *(a3 + 36);
      }

      *(a3 + 36) = v41 + 1;
      ++v6;
    }

    while (v6 != v46);
  }
}

void aj_icol_mcurow_semiplanar444(_DWORD *result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = result[10];
  v7 = result[11];
  v29 = result[12];
  v9 = *(a3 + 1080);
  if (*(a2 + 6804))
  {
    buffer = aj_rowbuffer_get_buffer((a3 + 152), *(a2 + 6776));
    v11 = aj_rowbuffer_get_buffer((a3 + 152), *(a2 + 6792));
  }

  else
  {
    v11 = 0;
    buffer = 0;
  }

  if (a4 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v27 = v7 >> 1;
    v28 = v8 >> 1;
    v14 = (a3 + 568);
    v15 = a4;
    v26 = a3 + 568;
    do
    {
      if (**a2 == 3)
      {
        v12 = *(v26 + (*(a2 + 52) << 7) + 8 * (v9 >> v27));
        v13 = *(v26 + (*(a2 + 56) << 7) + 8 * (v9 >> v27));
      }

      if (!*(a2 + 6804))
      {
        v16 = *(a3 + 36);
        v17 = *(a2 + 6592);
        buffer = (*(a2 + 64) + *(a2 + 96) * v16 + v17);
        v11 = (*(a2 + 72) + *(a2 + 104) * v16 + v17);
      }

      LOBYTE(v25) = *(a3 + 1081);
      (*(a2 + 6920))(*v14, 0, v12, 0, v13, 0, buffer, 0, v11, __PAIR64__(v28, v29), v25);
      v18 = *(a2 + 6804);
      if (v18)
      {
        v30 = v13;
        v19 = v12;
        v20 = *(a2 + 72);
        v21 = *(a2 + 6492);
        v22 = *(a2 + 6596);
        v23 = v21 - v22;
        aj_row_translate(v18, 1, v21, *(a2 + 128), *(a2 + 6592), v21 - v22, *(a2 + 6496), *(a3 + 36), buffer, *(a2 + 64));
        v24 = v20;
        v12 = v19;
        v13 = v30;
        aj_row_translate(*(a2 + 6804), 2, *(a2 + 6492), *(a2 + 136), *(a2 + 6592), v23, *(a2 + 6496), *(a3 + 36), v11, v24);
      }

      ++*(a3 + 36);
      ++v9;
      ++v14;
      --v15;
    }

    while (v15);
  }

  if (*(a2 + 6804))
  {
    aj_rowbuffer_return_buffer((a3 + 152), buffer);

    aj_rowbuffer_return_buffer((a3 + 152), v11);
  }
}

void aj_icol_mcurow_semiplanar422(_DWORD *result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = result[10];
  v6 = result[11];
  v30 = result[12];
  v8 = *(a3 + 1080);
  if (*(a2 + 6804))
  {
    buffer = aj_rowbuffer_get_buffer((a3 + 152), *(a2 + 6776));
    v11 = aj_rowbuffer_get_buffer((a3 + 152), *(a2 + 6792));
  }

  else
  {
    v11 = 0;
    buffer = 0;
  }

  if (a4 < 1)
  {
    v16 = a3;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v28 = v6 >> 1;
    v29 = v7 >> 1;
    v14 = (a3 + 568);
    v15 = a4;
    v16 = a3;
    v27 = a3 + 568;
    do
    {
      if (**a2 == 3)
      {
        v12 = *(v27 + (*(a2 + 52) << 7) + 8 * (v8 >> v28));
        v13 = *(v27 + (*(a2 + 56) << 7) + 8 * (v8 >> v28));
      }

      if (!*(a2 + 6804))
      {
        v17 = *(v16 + 36);
        v18 = *(a2 + 6592);
        buffer = (*(a2 + 64) + *(a2 + 96) * v17 + v18);
        v11 = (*(a2 + 72) + *(a2 + 104) * v17 + v18);
      }

      LOBYTE(v26) = *(v16 + 1081);
      (*(a2 + 6920))(*v14, 0, v12, 0, v13, 0, buffer, 0, v11, __PAIR64__(v29, v30), v26);
      v19 = *(a2 + 6804);
      if (v19)
      {
        v20 = v12;
        v21 = *(a2 + 72);
        v22 = *(a2 + 6492);
        v23 = ((v22 - *(a2 + 6596)) & 1) + v22 - *(a2 + 6596);
        aj_row_translate(v19, 1, v22, *(a2 + 128), *(a2 + 6592), v23, *(a2 + 6496), *(a3 + 36), buffer, *(a2 + 64));
        v24 = v23;
        v16 = a3;
        v25 = v21;
        v12 = v20;
        aj_row_translate(*(a2 + 6804), 2, *(a2 + 6492) / 2, *(a2 + 136), *(a2 + 6592) / 2, v24 / 2, *(a2 + 6496), *(a3 + 36), v11, v25);
      }

      ++*(v16 + 36);
      ++v8;
      ++v14;
      --v15;
    }

    while (v15);
  }

  if (*(a2 + 6804))
  {
    aj_rowbuffer_return_buffer((v16 + 152), buffer);

    aj_rowbuffer_return_buffer((v16 + 152), v11);
  }
}

void aj_icol_mcurow_semiplanar4X0(_DWORD *result, int **a2, uint64_t a3, signed int a4, int a5)
{
  v52 = *(a2 + 11);
  v57 = v52 == 2;
  if (*(a3 + 1083))
  {
    v8 = a5 + a4 < result[16];
  }

  else
  {
    v8 = 1;
  }

  v58 = v8;
  v10 = result[10];
  v9 = result[11];
  v62 = a2[8];
  v54 = a2[9];
  v56 = result[12];
  v12 = *(a2 + 13);
  v11 = *(a2 + 14);
  v13 = *(a3 + 32);
  if ((v13 & 1) != 0 && *(a3 + 36) == v13)
  {
    *(a3 + 36) = v13 + 1;
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v65 = *(a3 + 1080);
  if (*(a2 + 1701))
  {
    v15 = v11;
    buffer = aj_rowbuffer_get_buffer((a3 + 152), a2[847]);
    v17 = aj_rowbuffer_get_buffer((a3 + 152), a2[847]);
    v18 = aj_rowbuffer_get_buffer((a3 + 152), a2[849]);
    v11 = v15;
    v19 = v18;
  }

  else
  {
    v19 = 0;
    v17 = 0;
    buffer = 0;
  }

  v55 = v10 >> 1;
  if (v14 >= a4)
  {
LABEL_39:
    v39 = v58;
  }

  else
  {
    v59 = v19;
    v60 = v17;
    v61 = buffer;
    v20 = 0;
    v21 = 0;
    v64 = v9 >> 1;
    v22 = v14;
    v23 = a4;
    v53 = a4 - 1;
    v24 = 1;
    v63 = a3 + 568 + (v12 << 7);
    v25 = a3 + 568 + (v11 << 7);
    do
    {
      v26 = v22;
      while (1)
      {
        v27 = **a2;
        if (v27 == 3)
        {
          v28 = (v65 + v26) >> v64;
          v20 = *(v63 + 8 * v28);
          v21 = *(v25 + 8 * v28);
        }

        v29 = *(a3 + 568 + 8 * v26);
        if (*(a3 + 1480))
        {
          break;
        }

        *(a3 + 1480) = 1;
        *(a3 + 1456) = v29;
        if (*(a3 + 1082) && !*(a2 + 6577) && !*(a2 + 6576))
        {
          v24 = 0;
          if (v27 == 3)
          {
            *(a3 + 1464) = v20;
            *(a3 + 1472) = v21;
          }

          goto LABEL_34;
        }

        aj_rowbuffer_lock_buffer((a3 + 152), v29);
        if (**a2 != 3)
        {
          v24 = 1;
          goto LABEL_34;
        }

        *(a3 + 1464) = v20;
        *(a3 + 1472) = v21;
        aj_rowbuffer_lock_buffer((a3 + 152), v20);
        aj_rowbuffer_lock_buffer((a3 + 152), *(a3 + 1472));
        ++v26;
        v24 = 1;
        if (v23 == v26)
        {
          v17 = v60;
          buffer = v61;
          v19 = v59;
          goto LABEL_39;
        }
      }

      if (!*(a2 + 1701))
      {
        v30 = *(a3 + 36);
        v31 = a2[12];
        v32 = *(a2 + 1648);
        v60 = v31 + v62 + v31 * v30 + v32;
        v61 = v62 + v31 * v30 + v32;
        v59 = v54 + a2[13] * ((v30 + (v30 >> 31)) >> 1) + ((2 * v32) >> v57);
      }

      LOBYTE(v50) = *(a3 + 1081);
      (a2[865])(*(a3 + 1456), v29, *(a3 + 1464), v20, *(a3 + 1472), v21, v61, v60, v59, __PAIR64__(v55, v56), v50);
      if (v24)
      {
        aj_rowbuffer_return_buffer((a3 + 152), *(a3 + 1456));
        if (**a2 == 3)
        {
          aj_rowbuffer_return_buffer((a3 + 152), *(a3 + 1464));
          aj_rowbuffer_return_buffer((a3 + 152), *(a3 + 1472));
        }
      }

      *(a3 + 1480) = 0;
      v33 = *(a2 + 1701);
      if (v33)
      {
        v34 = *(a2 + 1623);
        v35 = v34 - *(a2 + 1649);
        v36 = v35 & 1;
        if (v52 != 2)
        {
          v36 = 0;
        }

        v51 = v25;
        v37 = v36 + v35;
        aj_row_translate(v33, 1, v34, a2[16], *(a2 + 1648), v36 + v35, *(a2 + 1624), *(a3 + 36), v61, v62);
        aj_row_translate(*(a2 + 1701), 1, *(a2 + 1623), a2[16], *(a2 + 1648), v37, *(a2 + 1624), *(a3 + 36) + 1, v60, v62);
        v38 = v37 >> v57;
        v25 = v51;
        aj_row_translate(*(a2 + 1701), 2, *(a2 + 1623) >> v57, a2[17], *(a2 + 1648) >> v57, v38, *(a2 + 1624) / 2, *(a3 + 36) / 2, v59, v54);
      }

      *(a3 + 36) += 2;
LABEL_34:
      v22 = v26 + 1;
    }

    while (v53 != v26);
    v39 = v58;
    if (v24)
    {
      v17 = v60;
      buffer = v61;
      v19 = v59;
    }

    else
    {
      buffer = v61;
      v19 = v59;
      if (*(a3 + 1480))
      {
        *(a3 + 1480) = 0;
      }

      v17 = v60;
    }
  }

  if (!v39 && *(a3 + 1480))
  {
    if (!*(a2 + 1701))
    {
      v40 = *(a3 + 36);
      v41 = a2[12];
      v42 = *(a2 + 1648);
      buffer = a2[8] + v41 * v40 + v42;
      v17 = v41 + buffer;
      v19 = a2[9] + a2[13] * ((v40 + (v40 >> 31)) >> 1) + ((2 * v42) >> v57);
    }

    LOBYTE(v50) = *(a3 + 1081);
    (a2[865])(*(a3 + 1456), *(a3 + 1456), *(a3 + 1464), *(a3 + 1464), *(a3 + 1472), *(a3 + 1472), buffer, v17, v19, __PAIR64__(v55, v56), v50);
    aj_rowbuffer_return_buffer((a3 + 152), *(a3 + 1456));
    if (**a2 == 3)
    {
      aj_rowbuffer_return_buffer((a3 + 152), *(a3 + 1464));
      aj_rowbuffer_return_buffer((a3 + 152), *(a3 + 1472));
    }

    v43 = *(a2 + 1701);
    if (v43)
    {
      v44 = *(a2 + 1623);
      v45 = v44 - *(a2 + 1649);
      v46 = v45 & 1;
      if (v52 != 2)
      {
        v46 = 0;
      }

      v47 = v19;
      v48 = v46 + v45;
      aj_row_translate(v43, 1, v44, a2[16], *(a2 + 1648), v46 + v45, *(a2 + 1624), *(a3 + 36), buffer, v62);
      aj_row_translate(*(a2 + 1701), 1, *(a2 + 1623), a2[16], *(a2 + 1648), v48, *(a2 + 1624), *(a3 + 36) + 1, v17, v62);
      v49 = v48 >> v57;
      v19 = v47;
      aj_row_translate(*(a2 + 1701), 2, *(a2 + 1623) >> v57, a2[17], *(a2 + 1648) >> v57, v49, *(a2 + 1624) / 2, *(a3 + 36) / 2, v47, v54);
    }

    *(a3 + 36) += 2;
    *(a3 + 1480) = 0;
  }

  if (*(a2 + 1701))
  {
    aj_rowbuffer_return_buffer((a3 + 152), buffer);
    aj_rowbuffer_return_buffer((a3 + 152), v17);

    aj_rowbuffer_return_buffer((a3 + 152), v19);
  }
}