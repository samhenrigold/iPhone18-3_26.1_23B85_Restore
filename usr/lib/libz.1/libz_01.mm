int inflateBackEnd(z_streamp strm)
{
  if (!strm)
  {
    return -2;
  }

  if (!strm->state)
  {
    return -2;
  }

  zfree = strm->zfree;
  if (!zfree)
  {
    return -2;
  }

  (zfree)(strm->opaque);
  result = 0;
  strm->state = 0;
  return result;
}

int inflatePrime(z_streamp strm, int bits, int value)
{
  if (sub_2999BF904(strm))
  {
    return -2;
  }

  state = strm->state;
  if (bits < 0)
  {
    result = 0;
    *(state + 10) = 0;
    *(state + 22) = 0;
  }

  else
  {
    if (bits > 0x10)
    {
      return -2;
    }

    v8 = *(state + 22);
    if ((v8 + bits) > 0x20)
    {
      return -2;
    }

    result = 0;
    *(state + 10) += (value & ~(-1 << bits)) << v8;
    *(state + 22) = v8 + bits;
  }

  return result;
}

int inflateGetDictionary(z_streamp strm, Bytef *dictionary, uInt *dictLength)
{
  if (sub_2999BF904(strm))
  {
    return -2;
  }

  state = strm->state;
  if (dictionary)
  {
    v8 = *(state + 16);
    if (v8)
    {
      memcpy(dictionary, (*(state + 9) + *(state + 17)), (v8 - *(state + 17)));
      memcpy(&dictionary[*(state + 16) - *(state + 17)], *(state + 9), *(state + 17));
    }
  }

  result = 0;
  if (dictLength)
  {
    *dictLength = *(state + 16);
  }

  return result;
}

int inflateSetDictionary(z_streamp strm, const Bytef *dictionary, uInt dictLength)
{
  if (sub_2999BF904(strm))
  {
    return -2;
  }

  state = strm->state;
  v8 = *(state + 2);
  if (*(state + 4))
  {
    if (v8 != 16190)
    {
      return -2;
    }
  }

  else if (v8 != 16190)
  {
    goto LABEL_8;
  }

  v9 = adler32(0, 0, 0);
  if (adler32(v9, dictionary, dictLength) != *(state + 4))
  {
    return -3;
  }

LABEL_8:
  result = sub_2999C25D4(strm, &dictionary[dictLength], dictLength);
  if (result)
  {
    *(state + 2) = 16210;
    return -4;
  }

  else
  {
    *(state + 5) = 1;
  }

  return result;
}

int inflateGetHeader(z_streamp strm, gz_headerp head)
{
  if (sub_2999BF904(strm))
  {
    return -2;
  }

  state = strm->state;
  if ((*(state + 16) & 2) == 0)
  {
    return -2;
  }

  result = 0;
  *(state + 6) = head;
  head->done = 0;
  return result;
}

int inflateSync(z_streamp strm)
{
  if (sub_2999BF904(strm))
  {
    return -2;
  }

  state = strm->state;
  avail_in = strm->avail_in;
  if (!avail_in && *(state + 22) < 8u)
  {
    return -5;
  }

  if (*(state + 2) != 16211)
  {
    *(state + 2) = 16211;
    v5 = *(state + 22);
    v6 = *(state + 10) << (v5 & 7);
    *(state + 10) = v6;
    if ((v5 & 0xFFFFFFF8) != 0)
    {
      v7 = 0;
      v8 = -(v5 & 0xFFFFFFF8);
      do
      {
        v14[v7++] = v6;
        v6 >>= 8;
        v8 += 8;
      }

      while (v8);
      *(state + 10) = v6;
    }

    else
    {
      LODWORD(v7) = 0;
    }

    *(state + 35) = 0;
    *(state + 22) = 0;
    sub_2999C9068(state + 35, v14, v7);
    avail_in = strm->avail_in;
  }

  v9 = sub_2999C9068(state + 35, strm->next_in, avail_in);
  strm->avail_in -= v9;
  strm->next_in += v9;
  v10 = strm->total_in + v9;
  strm->total_in = v10;
  if (*(state + 35) != 4)
  {
    return -3;
  }

  v11 = *(state + 6);
  if (v11 == -1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(state + 4) & 0xFFFFFFFB;
  }

  *(state + 4) = v12;
  total_out = strm->total_out;
  inflateReset(strm);
  result = 0;
  strm->total_in = v10;
  strm->total_out = total_out;
  *(state + 6) = v11;
  *(state + 2) = 16191;
  return result;
}

unint64_t sub_2999C9068(unsigned int *a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v4 = *a1;
  if (a3 && v4 <= 3)
  {
    v3 = 0;
    do
    {
      if (v4 >= 2)
      {
        v5 = 255;
      }

      else
      {
        v5 = 0;
      }

      v6 = 4 - v4;
      if (*(a2 + v3))
      {
        v6 = 0;
      }

      if (v5 == *(a2 + v3))
      {
        ++v4;
      }

      else
      {
        v4 = v6;
      }

      ++v3;
    }

    while (v3 < a3 && v4 < 4);
  }

  *a1 = v4;
  return v3;
}

int inflateSyncPoint(z_streamp a1)
{
  if (sub_2999BF904(a1))
  {
    return -2;
  }

  state = a1->state;
  return *(state + 2) == 16193 && *(state + 22) == 0;
}

int inflateCopy(z_streamp dest, z_streamp source)
{
  v4 = sub_2999BF904(source);
  result = -2;
  if (!dest || v4)
  {
    return result;
  }

  state = source->state;
  zalloc = source->zalloc;
  if (zalloc == sub_2999C9534)
  {
    v8 = malloc_type_malloc(0x1BF8uLL, 0x10700402F6B96DDuLL);
  }

  else
  {
    v8 = (zalloc)(source->opaque, 1, 7160);
  }

  v9 = v8;
  if (!v8)
  {
    return -4;
  }

  if (*(state + 9))
  {
    v10 = source->zalloc;
    if (v10 == sub_2999C9534)
    {
      v11 = malloc_type_malloc(1 << *(state + 14), 0x100004077774924uLL);
    }

    else
    {
      v11 = (v10)(source->opaque, (1 << *(state + 14)), 1);
    }

    v12 = v11;
    if (v11)
    {
      goto LABEL_13;
    }

    (source->zfree)(source->opaque, v9);
    return -4;
  }

  v12 = 0;
LABEL_13:
  v13 = *&source->next_in;
  v14 = *&source->avail_out;
  *&dest->total_in = *&source->total_in;
  *&dest->avail_out = v14;
  *&dest->next_in = v13;
  v15 = *&source->msg;
  v16 = *&source->zalloc;
  v17 = *&source->adler;
  *&dest->opaque = *&source->opaque;
  *&dest->adler = v17;
  *&dest->msg = v15;
  *&dest->zalloc = v16;
  memcpy(v9, state, 0x1BF8uLL);
  *v9 = dest;
  v18 = *(state + 13);
  if (v18 >= state + 1368 && v18 <= state + 7140)
  {
    v19 = (v9 + v18 - state);
    v20 = (v9 + *(state + 14) - state);
    v9[13] = v19;
    v9[14] = v20;
  }

  v9[18] = (v9 + *(state + 18) - state);
  if (v12)
  {
    memcpy(v12, *(state + 9), 1 << *(state + 14));
  }

  result = 0;
  v9[9] = v12;
  dest->state = v9;
  return result;
}

int inflateUndermine(z_streamp a1, int a2)
{
  if (sub_2999BF904(a1))
  {
    return -2;
  }

  *(a1->state + 1786) = 1;
  return -3;
}

int inflateValidate(z_streamp a1, int a2)
{
  result = sub_2999BF904(a1);
  if (result)
  {
    return -2;
  }

  state = a1->state;
  v6 = *(state + 4);
  v7 = v6 & 0xFFFFFFFB;
  if (v6)
  {
    v8 = v6 | 4;
  }

  else
  {
    v8 = 0;
  }

  if (!a2)
  {
    v8 = v7;
  }

  *(state + 4) = v8;
  return result;
}

uint64_t inflateMark(z_streamp strm)
{
  if (sub_2999BF904(strm))
  {
    return -65536;
  }

  state = strm->state;
  v4 = *(state + 1787) << 16;
  v5 = *(state + 2);
  if (v5 == 16204)
  {
    v6 = *(state + 1788) - *(state + 23);
  }

  else if (v5 == 16195)
  {
    v6 = *(state + 23);
  }

  else
  {
    v6 = 0;
  }

  return v4 + v6;
}

unint64_t inflateCodesUsed(z_streamp a1)
{
  if (sub_2999BF904(a1))
  {
    return -1;
  }

  else
  {
    return (*(a1->state + 18) - a1->state - 1368) >> 2;
  }
}

uint64_t sub_2999C9438(uint64_t result)
{
  v1 = *(result + 5940);
  v2 = *(result + 5936);
  v3 = v2 | (2 << v1);
  *(result + 5936) = v2 | (2 << v1);
  if (v1 < 14)
  {
    v9 = v1 + 3;
  }

  else
  {
    v4 = *(result + 16);
    v5 = *(result + 40);
    *(result + 40) = v5 + 1;
    *(v4 + v5) = v3;
    v6 = *(result + 5937);
    v7 = *(result + 16);
    v8 = *(result + 40);
    *(result + 40) = v8 + 1;
    *(v7 + v8) = v6;
    LODWORD(v7) = *(result + 5940);
    v3 = 2u >> (16 - v7);
    *(result + 5936) = v3;
    v9 = v7 - 13;
  }

  *(result + 5940) = v9;
  if (v9 < 10)
  {
    v15 = v9 + 7;
  }

  else
  {
    v10 = *(result + 16);
    v11 = *(result + 40);
    *(result + 40) = v11 + 1;
    *(v10 + v11) = v3;
    v12 = *(result + 5937);
    v13 = *(result + 16);
    v14 = *(result + 40);
    *(result + 40) = v14 + 1;
    *(v13 + v14) = v12;
    *(result + 5936) = 0;
    v15 = *(result + 5940) - 9;
  }

  *(result + 5940) = v15;
  return sub_2999C4BA0(result);
}

int gzbuffer(gzFile file, unsigned int size)
{
  if (!file)
  {
    return -1;
  }

  have = file[1].have;
  if (have != 31153 && have != 7247)
  {
    return -1;
  }

  result = -1;
  if ((size & 0x80000000) == 0 && !LODWORD(file[1].pos))
  {
    result = 0;
    if (size <= 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = size;
    }

    HIDWORD(file[1].pos) = v6;
  }

  return result;
}

int gzrewind(gzFile file)
{
  if (!file)
  {
    return -1;
  }

  if (file[1].have != 7247)
  {
    return -1;
  }

  pos_high = HIDWORD(file[4].pos);
  v3 = !pos_high || pos_high == -5;
  if (!v3 || lseek(*(&file[1].have + 1), *&file[3].have, 0) == -1)
  {
    return -1;
  }

  sub_2999C5B28(file);
  return 0;
}

uint64_t gzseek_0(gzFile a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return -1;
  }

  have = a1[1].have;
  if (have != 31153 && have != 7247)
  {
    return -1;
  }

  pos_high = HIDWORD(a1[4].pos);
  v7 = !pos_high || pos_high == -5;
  if (!v7 || a3 > 1)
  {
    return -1;
  }

  v9 = a2;
  if (a3)
  {
    if (LODWORD(a1[4].pos))
    {
      v9 = &a1[4].next[a2];
    }
  }

  else
  {
    v9 = a2 - a1->pos;
  }

  LODWORD(a1[4].pos) = 0;
  if (have != 7247)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

    return -1;
  }

  if (HIDWORD(a1[2].pos) == 1 && a1->pos + v9 >= 0)
  {
    result = lseek(*(&a1[1].have + 1), v9 - a1->have, 1);
    if (result != -1)
    {
      a1->have = 0;
      a1[3].next = 0;
      LODWORD(a1[4].pos) = 0;
      v10 = *&a1[5].have;
      if (v10)
      {
        if (HIDWORD(a1[4].pos) != -4)
        {
          free(v10);
        }

        *&a1[5].have = 0;
      }

      HIDWORD(a1[4].pos) = 0;
      LODWORD(a1[5].pos) = 0;
      result = a1->pos + v9;
      a1->pos = result;
    }

    return result;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_32;
  }

  v9 += a1->pos;
  if (v9 < 0 || gzrewind(a1) == -1)
  {
    return -1;
  }

  if (a1[1].have == 7247)
  {
LABEL_32:
    v11 = a1->have;
    if (v9 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    a1->have = v11 - v12;
    v13 = a1->pos + v12;
    a1->next += v12;
    a1->pos = v13;
    v9 -= v12;
  }

LABEL_36:
  if (v9)
  {
    LODWORD(a1[4].pos) = 1;
    a1[4].next = v9;
  }

  return a1->pos + v9;
}

uint64_t gztell(gzFile a1)
{
  if (!a1)
  {
    return -1;
  }

  have = a1[1].have;
  if (have != 31153 && have != 7247)
  {
    return -1;
  }

  if (LODWORD(a1[4].pos))
  {
    next = a1[4].next;
  }

  else
  {
    next = 0;
  }

  return &next[a1->pos];
}

int gzeof(gzFile file)
{
  if (file)
  {
    if (file[1].have == 7247)
    {
      LODWORD(file) = HIDWORD(file[3].next);
    }

    else
    {
      LODWORD(file) = 0;
    }
  }

  return file;
}

const char *__cdecl gzerror(const char *file, int *errnum)
{
  if (file)
  {
    v2 = *(file + 6);
    if (v2 == 31153 || v2 == 7247)
    {
      v4 = *(file + 29);
      if (errnum)
      {
        *errnum = v4;
      }

      if (v4 == -4)
      {
        return "out of memory";
      }

      else if (*(file + 15))
      {
        return *(file + 15);
      }

      else
      {
        return "";
      }
    }

    else
    {
      return 0;
    }
  }

  return file;
}

void gzclearerr(gzFile file)
{
  if (file)
  {
    have = file[1].have;
    if (have != 31153)
    {
      if (have != 7247)
      {
        return;
      }

      file[3].next = 0;
    }

    v3 = *&file[5].have;
    if (v3)
    {
      if (HIDWORD(file[4].pos) != -4)
      {
        free(v3);
      }

      *&file[5].have = 0;
    }

    HIDWORD(file[4].pos) = 0;
  }
}

z_size_t gzfread(voidp buf, z_size_t size, z_size_t nitems, gzFile file)
{
  if (!file || file[1].have != 7247)
  {
    return 0;
  }

  pos_high = HIDWORD(file[4].pos);
  if (pos_high && pos_high != -5)
  {
    return 0;
  }

  v6 = !is_mul_ok(size, nitems);
  if (size && v6)
  {
    sub_2999C63DC(file, -2, "request does not fit in a size_t");
  }

  else
  {
    v8 = size * nitems;
    if (v8)
    {
      return sub_2999C407C(file, buf, v8) / size;
    }
  }

  return 0;
}

int gzgetc(gzFile file)
{
  if (!file || file[1].have != 7247)
  {
    return -1;
  }

  pos_high = HIDWORD(file[4].pos);
  if (pos_high && pos_high != -5)
  {
    return -1;
  }

  if (file->have)
  {
    --file->have;
    next = file->next;
    v6 = file->pos + 1;
    file->next = next + 1;
    file->pos = v6;
    return *next;
  }

  else
  {
    v9 = v1;
    v10 = v2;
    if (sub_2999C407C(file, &v8, 1uLL))
    {
      return v8;
    }

    else
    {
      return -1;
    }
  }
}

int gzungetc(int c, gzFile file)
{
  if (!file)
  {
    return -1;
  }

  if (file[1].have != 7247)
  {
    return -1;
  }

  pos_high = HIDWORD(file[4].pos);
  if (pos_high && pos_high != -5)
  {
    return -1;
  }

  if (!LODWORD(file[4].pos))
  {
    if (c < 0)
    {
      return -1;
    }

LABEL_14:
    have = file->have;
    if (have)
    {
      pos = file[1].pos;
      if (have == 2 * pos)
      {
        sub_2999C63DC(file, -3, "out of room to push characters");
        return -1;
      }

      next = file->next;
      v11 = file[2].next;
      if (next == v11)
      {
        next = &v11[2 * pos];
        v12 = &v11[have];
        do
        {
          v13 = *--v12;
          *--next = v13;
        }

        while (v12 > file[2].next);
        LODWORD(have) = file->have;
      }

      file->have = have + 1;
    }

    else
    {
      file->have = 1;
      next = &file[2].next[2 * LODWORD(file[1].pos)];
    }

    file->next = next - 1;
    *(next - 1) = c;
    --file->pos;
    HIDWORD(file[3].next) = 0;
    return c;
  }

  LODWORD(file[4].pos) = 0;
  v6 = sub_2999C9B20(&file->have, file[4].next);
  result = -1;
  if ((c & 0x80000000) == 0 && v6 != -1)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_2999C9B20(unsigned int *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  while (1)
  {
    v4 = *a1;
    if (!v4)
    {
      break;
    }

    if (v2 >= v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v2;
    }

    *a1 = v4 - v5;
    v6 = *(a1 + 2) + v5;
    *(a1 + 1) += v5;
    *(a1 + 2) = v6;
    v2 -= v5;
LABEL_11:
    if (!v2)
    {
      return 0;
    }
  }

  if (!a1[20] || a1[34])
  {
    result = sub_2999C5C90(a1);
    if (result == -1)
    {
      return result;
    }

    goto LABEL_11;
  }

  return 0;
}

char *__cdecl gzgets(gzFile file, char *buf, int len)
{
  result = 0;
  if (file)
  {
    if (buf)
    {
      v6 = len - 1;
      if (len >= 1)
      {
        if (file[1].have == 7247)
        {
          pos_high = HIDWORD(file[4].pos);
          if (!pos_high || pos_high == -5)
          {
            if (LODWORD(file[4].pos))
            {
              LODWORD(file[4].pos) = 0;
              v8 = sub_2999C9B20(&file->have, file[4].next);
              result = 0;
              if (v8 == -1 || !v6)
              {
                return result;
              }

              goto LABEL_12;
            }

            v6 = len - 1;
            if (len != 1)
            {
LABEL_12:
              have = file->have;
              v10 = buf;
              while (1)
              {
                if (!have)
                {
                  if (sub_2999C5C90(file) == -1)
                  {
                    return 0;
                  }

                  have = file->have;
                  if (!file->have)
                  {
                    break;
                  }
                }

                if (have >= v6)
                {
                  v11 = v6;
                }

                else
                {
                  v11 = have;
                }

                next = file->next;
                v13 = memchr(next, 10, v11);
                if (v13)
                {
                  v11 = (v13 - next + 1);
                }

                else
                {
                  v11 = v11;
                }

                memcpy(v10, next, v11);
                have = file->have - v11;
                file->have = have;
                v14 = file->pos + v11;
                file->next += v11;
                file->pos = v14;
                v10 += v11;
                if (!v13)
                {
                  v6 -= v11;
                  if (v6)
                  {
                    continue;
                  }
                }

                goto LABEL_26;
              }

              HIDWORD(file[3].next) = 1;
LABEL_26:
              if (v10 != buf)
              {
                *v10 = 0;
                return buf;
              }
            }
          }
        }

        return 0;
      }
    }
  }

  return result;
}

int gzdirect(gzFile file)
{
  if (file)
  {
    v1 = file;
    if (file[1].have == 7247 && !HIDWORD(file[2].pos) && !file->have)
    {
      sub_2999C5D58(file);
    }

    LODWORD(file) = v1[2].pos;
  }

  return file;
}

z_size_t gzfwrite(voidpc buf, z_size_t size, z_size_t nitems, gzFile file)
{
  if (!file || file[1].have != 31153 || HIDWORD(file[4].pos))
  {
    return 0;
  }

  v5 = !is_mul_ok(size, nitems);
  if (size && v5)
  {
    sub_2999C63DC(file, -2, "request does not fit in a size_t");
  }

  else
  {
    v6 = size * nitems;
    if (v6)
    {
      return sub_2999BEA10(file, buf, v6) / size;
    }
  }

  return 0;
}

int gzputc(gzFile file, int c)
{
  if (!file)
  {
    return -1;
  }

  if (file[1].have != 31153 || HIDWORD(file[4].pos))
  {
    return -1;
  }

  v4 = c;
  if (!LODWORD(file[4].pos) || (LODWORD(file[4].pos) = 0, result = sub_2999C9EE4(file, file[4].next), result != -1))
  {
    pos = file[1].pos;
    if (pos && ((v6 = file[5].pos) == 0 ? (v8 = *&file[2].have, file[5].next = v8, LODWORD(next) = v8) : (next = file[5].next, v8 = *&file[2].have), v9 = next + v6 - v8, pos > v9))
    {
      v8[v9] = v4;
      ++LODWORD(file[5].pos);
      ++file->pos;
      return v4;
    }

    else
    {
      __src = v4;
      if (sub_2999BEA10(file, &__src, 1uLL) == 1)
      {
        return v4;
      }

      else
      {
        return -1;
      }
    }
  }

  return result;
}

uint64_t sub_2999C9EE4(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 136) || (result = sub_2999C0334(a1, 0), result != -1))
  {
    if (a2)
    {
      for (i = 0; ; i = 1)
      {
        v6 = *(a1 + 40);
        v7 = a2 >= v6 ? v6 : a2;
        if ((i & 1) == 0)
        {
          bzero(*(a1 + 48), v7);
        }

        *(a1 + 136) = v7;
        *(a1 + 128) = *(a1 + 48);
        *(a1 + 16) += v7;
        result = sub_2999C0334(a1, 0);
        if (result == -1)
        {
          break;
        }

        a2 -= v7;
        if (!a2)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int gzputs(gzFile file, const char *s)
{
  if (!file)
  {
    return -1;
  }

  if (file[1].have != 31153 || HIDWORD(file[4].pos))
  {
    return -1;
  }

  v4 = strlen(s);
  if (v4 >> 31)
  {
    sub_2999C63DC(file, -2, "string length does not fit in int");
    return -1;
  }

  v5 = v4;
  if (sub_2999BEA10(file, s, v4) < v4)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

int gzvprintf(gzFile file, const char *format, va_list va)
{
  if (!file || file[1].have != 31153 || HIDWORD(file[4].pos))
  {
    return -2;
  }

  if (!LODWORD(file[1].pos) && sub_2999C5B98(file) == -1)
  {
    return HIDWORD(file[4].pos);
  }

  if (LODWORD(file[4].pos))
  {
    LODWORD(file[4].pos) = 0;
    if (sub_2999C9EE4(file, file[4].next) == -1)
    {
      return HIDWORD(file[4].pos);
    }
  }

  pos_low = LODWORD(file[5].pos);
  if (pos_low)
  {
    next = file[5].next;
  }

  else
  {
    next = *&file[2].have;
    file[5].next = next;
  }

  v10 = &next[pos_low];
  next[pos_low + (LODWORD(file[1].pos) - 1)] = 0;
  v11 = vsnprintf(&next[pos_low], LODWORD(file[1].pos), format, va);
  v4 = v11;
  if (v11)
  {
    pos = file[1].pos;
    if (v11 >= pos || v10[pos - 1])
    {
      return 0;
    }

    v13 = LODWORD(file[5].pos) + v11;
    LODWORD(file[5].pos) = v13;
    file->pos += v11;
    v14 = v13 - pos;
    if (v13 < pos)
    {
      return v4;
    }

    LODWORD(file[5].pos) = pos;
    if (sub_2999C0334(file, 0) != -1)
    {
      memmove(*&file[2].have, (*&file[2].have + LODWORD(file[1].pos)), v14);
      file[5].next = *&file[2].have;
      LODWORD(file[5].pos) = v14;
      return v4;
    }

    return HIDWORD(file[4].pos);
  }

  return v4;
}

int gzsetparams(gzFile file, int level, int strategy)
{
  if (!file)
  {
    return -2;
  }

  if (file[1].have != 31153 || HIDWORD(file[4].pos))
  {
    return -2;
  }

  if (LODWORD(file[3].pos) == level && HIDWORD(file[3].pos) == strategy)
  {
    return 0;
  }

  if (!LODWORD(file[4].pos) || (LODWORD(file[4].pos) = 0, sub_2999C9EE4(file, file[4].next) != -1))
  {
    if (!LODWORD(file[1].pos))
    {
LABEL_15:
      result = 0;
      LODWORD(file[3].pos) = level;
      HIDWORD(file[3].pos) = strategy;
      return result;
    }

    if (!LODWORD(file[5].pos) || sub_2999C0334(file, 5) != -1)
    {
      deflateParams(&file[5].next, level, strategy);
      goto LABEL_15;
    }
  }

  return HIDWORD(file[4].pos);
}