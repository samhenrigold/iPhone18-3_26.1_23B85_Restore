uint64_t GEOPDAmenitiesFilterReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v26 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v26 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v26 & 0x7F) << v5;
          if ((v26 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          break;
        }

        if ((v7 >> 3) == 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            v27 = 0;
            v17 = objc_msgSend_position(v3);
            if (v17 + 1 >= objc_msgSend_position(v3) && (v18 = objc_msgSend_position(v3), v18 + 1 <= [v3 length]))
            {
              v19 = [v3 data];
              [v19 getBytes:&v27 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v16 |= (v27 & 0x7F) << v14;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_34;
            }
          }

          v20 = (v16 != 0) & ~[v3 hasError];
LABEL_34:
          *(a1 + 16) = v20;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v21 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v22 = *(a1 + 8);
            *(a1 + 8) = v21;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_37;
          }
        }

        v23 = objc_msgSend_position(v3);
      }

      while (v23 < [v3 length]);
    }

    v24 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_37:
    v24 = 0;
  }

  objc_sync_exit(v3);

  return v24;
}

void *GEOPDCaptionedPhotoFilterReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 60))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDCaptionedPhotoFilterReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 64));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 56) = objc_msgSend_position(v8);
  *(a1 + 60) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDCaptionedPhotoFilterReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDCaptionedPhotoFilterReadAllFrom_initialTag;
  }

  Specified = GEOPDCaptionedPhotoFilterReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 64));
  return Specified;
}

void *GEOPDCaptionedPhotoFilterReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 64));
  [v3 setLength:*(a1 + 60)];
  [v3 seekToOffset:*(a1 + 56)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = ((*(a1 + 68) >> 2) & 1) + (*(a1 + 68) & 1) + ((*(a1 + 68) >> 1) & 1);
  while (1)
  {
    v11 = a3[v8];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      v6 = 1;
      goto LABEL_12;
    }

    if (v11 == -3)
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_11:
    ++v10;
LABEL_12:
    ++v8;
  }

  if (v11 >= 0xFFFFFFFE)
  {
    v6 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v12 = v10 != 0;
  v13 = v9 | v12;
  v41 = v12 & ~v9 | v6;
  v42 = v9 | v12 | v6;
  if (((v9 | v12) | v7))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  while (1)
  {
    v15 = objc_msgSend_position(v3);
    if (v15 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_59:
      v24 = 1;
      goto LABEL_61;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      LOBYTE(v43[0]) = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:v43 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v43[0] & 0x7F) << v16;
      if ((v43[0] & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      if (v17++ >= 9)
      {
        v18 = 0;
        goto LABEL_29;
      }
    }

    if ([v3 hasError])
    {
      v18 = 0;
    }

LABEL_29:
    v23 = [v3 hasError];
    v24 = 1;
    if ((v23 & 1) != 0 || (v18 & 7) == 4)
    {
      goto LABEL_61;
    }

    v25 = v18 >> 3;
    v26 = v13;
    if (!((v14 == 0) | v13 & 1))
    {
      v27 = v14;
      do
      {
        v29 = *v27++;
        v28 = v29;
        v26 = v29 != 0;
        if (v29)
        {
          v30 = v28 == v25;
        }

        else
        {
          v30 = 1;
        }
      }

      while (!v30);
    }

    if (v25 == 2)
    {
      if (!v26)
      {
        goto LABEL_54;
      }

      if ((*(a1 + 68) & 4) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_60;
        }

        v8 += *(a1 + 68) << 29 >> 31;
      }

      else
      {
        v31 = PBReaderReadString();
        v32 = *(a1 + 48);
        *(a1 + 48) = v31;

        --v8;
      }

      goto LABEL_55;
    }

    if (v25 == 1)
    {
      break;
    }

    if (v41 & 1) == 0 || (*(a1 + 68))
    {
LABEL_54:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_55;
    }

    if (!*(a1 + 16))
    {
      v33 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v34 = *(a1 + 16);
      *(a1 + 16) = v33;
    }

    if (!PBUnknownFieldAdd())
    {
      v24 = 0;
      v40 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
      goto LABEL_62;
    }

LABEL_55:
    if (!(v42 & 1 | (v8 != 0)))
    {
      goto LABEL_59;
    }
  }

  if (!v26 || (*(a1 + 68) & 2) != 0)
  {
    goto LABEL_54;
  }

  v43[0] = 0;
  v43[1] = 0;
  if (PBReaderPlaceMark())
  {
    [(GEOPDCaptionedPhotoFilter *)a1 _reservePhotoSizeFilters:?];
    if (GEOPDPhotoSizeFilterValueReadAllFrom(*(a1 + 24) + 12 * *(a1 + 32), v3))
    {
      PBReaderRecallMark();
      ++*(a1 + 32);
      goto LABEL_55;
    }
  }

LABEL_60:
  v24 = 0;
LABEL_61:
  v40 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
  if ((v41 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_62:
  *(a1 + v40[852]) |= 1u;
LABEL_63:
  if (v13 & 1 | ((v24 & 1) == 0))
  {
    *(a1 + v40[852]) |= 2u;
    *(a1 + v40[852]) |= 4u;
    goto LABEL_73;
  }

  if (v14)
  {
    while (1)
    {
      v36 = *v14++;
      v35 = v36;
      if (v36 == 1)
      {
        break;
      }

      if (v35 == 2)
      {
        v37 = 4;
LABEL_72:
        *(a1 + v40[852]) |= v37;
        continue;
      }

      if (!v35)
      {
        goto LABEL_73;
      }
    }

    v37 = 2;
    goto LABEL_72;
  }

LABEL_73:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

LABEL_77:
    v38 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v13)
    {
      goto LABEL_77;
    }
  }

  return v3;
}

uint64_t GEOPDPhotoSizeFilterValueReadAllFrom(uint64_t a1, void *a2)
{
  for (i = objc_msgSend_position(a2); i < [a2 length] && (objc_msgSend(a2, "hasError") & 1) == 0; i = objc_msgSend_position(a2))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v28 = 0;
      v8 = objc_msgSend_position(a2) + 1;
      if (v8 >= objc_msgSend_position(a2) && (v9 = objc_msgSend_position(a2) + 1, v9 <= [a2 length]))
      {
        v10 = [a2 data];
        [v10 getBytes:&v28 range:{objc_msgSend_position(a2), 1}];

        [a2 setPosition:objc_msgSend_position(a2) + 1];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v28 & 0x7F) << v5;
      if ((v28 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_16;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      break;
    }

    if ((v12 >> 3) == 2)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      *(a1 + 8) |= 1u;
      while (1)
      {
        v29 = 0;
        v23 = objc_msgSend_position(a2) + 1;
        if (v23 >= objc_msgSend_position(a2) && (v24 = objc_msgSend_position(a2) + 1, v24 <= [a2 length]))
        {
          v25 = [a2 data];
          [v25 getBytes:&v29 range:{objc_msgSend_position(a2), 1}];

          [a2 setPosition:objc_msgSend_position(a2) + 1];
        }

        else
        {
          [a2 _setError];
        }

        v22 |= (v29 & 0x7F) << v20;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v11 = v21++ >= 9;
        if (v11)
        {
          v26 = 0;
          goto LABEL_47;
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

LABEL_47:
      *a1 = v26;
    }

    else if ((v12 >> 3) == 1)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      *(a1 + 8) |= 2u;
      while (1)
      {
        v30 = 0;
        v16 = objc_msgSend_position(a2) + 1;
        if (v16 >= objc_msgSend_position(a2) && (v17 = objc_msgSend_position(a2) + 1, v17 <= [a2 length]))
        {
          v18 = [a2 data];
          [v18 getBytes:&v30 range:{objc_msgSend_position(a2), 1}];

          [a2 setPosition:objc_msgSend_position(a2) + 1];
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
          goto LABEL_43;
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

LABEL_43:
      *(a1 + 4) = v19;
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t GEOPDOfflineAreaFilterReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    while (1)
    {
      v4 = objc_msgSend_position(v3);
      if (v4 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v18 = 0;
        v8 = objc_msgSend_position(v3);
        if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
        {
          v10 = [v3 data];
          [v10 getBytes:&v18 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          LOBYTE(v7) = 0;
          goto LABEL_15;
        }
      }

      if ([v3 hasError])
      {
        LOBYTE(v7) = 0;
      }

LABEL_15:
      v12 = [v3 hasError];
      v13 = (v7 & 7) == 4 ? 1 : v12;
      if (v13)
      {
        break;
      }

      if (!*(a1 + 8))
      {
        v14 = objc_alloc_init(MEMORY[0x1E69C65D8]);
        v15 = *(a1 + 8);
        *(a1 + 8) = v14;
      }

      if ((PBUnknownFieldAdd() & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v16 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_22:
    v16 = 0;
  }

  objc_sync_exit(v3);

  return v16;
}

uint64_t GEOPDAnnotatedItemListFilterReadAllFrom(void *a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v19[0]) = 0;
          v8 = objc_msgSend_position(v3, v19[0]);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:v19 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v19[0] & 0x7F) << v5;
          if ((v19[0] & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          if (v6++ >= 9)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          break;
        }

        if ((v7 >> 3) == 1)
        {
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_28;
          }

          [(GEOPDAnnotatedItemListFilter *)a1 _reservePhotoSizeFilters:?];
          if ((GEOPDPhotoSizeFilterValueReadAllFrom(a1[2] + 12 * a1[3], v3) & 1) == 0)
          {
            goto LABEL_28;
          }

          PBReaderRecallMark();
          ++a1[3];
        }

        else
        {
          if (!a1[1])
          {
            v14 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v15 = a1[1];
            a1[1] = v14;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_28;
          }
        }

        v16 = objc_msgSend_position(v3);
      }

      while (v16 < [v3 length]);
    }

    v17 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_28:
    v17 = 0;
  }

  objc_sync_exit(v3);

  return v17;
}

uint64_t GEOPDStorefrontFilterReadAllFrom(void *a1)
{
  v1 = a1;
  objc_sync_enter(v1);
  if (v1)
  {
    while (1)
    {
      v2 = objc_msgSend_position(v1);
      if (v2 >= [v1 length] || (objc_msgSend(v1, "hasError") & 1) != 0)
      {
        break;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v15 = 0;
        v6 = objc_msgSend_position(v1);
        if (v6 + 1 >= objc_msgSend_position(v1) && (v7 = objc_msgSend_position(v1), v7 + 1 <= [v1 length]))
        {
          v8 = [v1 data];
          [v8 getBytes:&v15 range:{objc_msgSend_position(v1), 1}];

          [v1 setPosition:objc_msgSend_position(v1) + 1];
        }

        else
        {
          [v1 _setError];
        }

        v5 |= (v15 & 0x7F) << v3;
        if ((v15 & 0x80) == 0)
        {
          break;
        }

        v3 += 7;
        if (v4++ >= 9)
        {
          v10 = 0;
          goto LABEL_16;
        }
      }

      v10 = [v1 hasError] ? 0 : v5;
LABEL_16:
      v11 = [v1 hasError];
      v12 = (v10 & 7) == 4 ? 1 : v11;
      if (v12)
      {
        break;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v13 = [v1 hasError] ^ 1;
  }

  else
  {
LABEL_21:
    v13 = 0;
  }

  objc_sync_exit(v1);

  return v13;
}

uint64_t GEOPDTipFilterReadAllFrom(void *a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v19[0]) = 0;
          v8 = objc_msgSend_position(v3, v19[0]);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:v19 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v19[0] & 0x7F) << v5;
          if ((v19[0] & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          if (v6++ >= 9)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          break;
        }

        if ((v7 >> 3) == 1)
        {
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_28;
          }

          [(GEOPDTipFilter *)a1 _reservePhotoSizeFilters:?];
          if ((GEOPDPhotoSizeFilterValueReadAllFrom(a1[2] + 12 * a1[3], v3) & 1) == 0)
          {
            goto LABEL_28;
          }

          PBReaderRecallMark();
          ++a1[3];
        }

        else
        {
          if (!a1[1])
          {
            v14 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v15 = a1[1];
            a1[1] = v14;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_28;
          }
        }

        v16 = objc_msgSend_position(v3);
      }

      while (v16 < [v3 length]);
    }

    v17 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_28:
    v17 = 0;
  }

  objc_sync_exit(v3);

  return v17;
}

uint64_t GEOPDPublisherFilterReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v26 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v26 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v26 & 0x7F) << v5;
          if ((v26 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          break;
        }

        if ((v7 >> 3) == 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            v27 = 0;
            v17 = objc_msgSend_position(v3);
            if (v17 + 1 >= objc_msgSend_position(v3) && (v18 = objc_msgSend_position(v3), v18 + 1 <= [v3 length]))
            {
              v19 = [v3 data];
              [v19 getBytes:&v27 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v16 |= (v27 & 0x7F) << v14;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_34;
            }
          }

          v20 = (v16 != 0) & ~[v3 hasError];
LABEL_34:
          *(a1 + 16) = v20;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v21 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v22 = *(a1 + 8);
            *(a1 + 8) = v21;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_37;
          }
        }

        v23 = objc_msgSend_position(v3);
      }

      while (v23 < [v3 length]);
    }

    v24 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_37:
    v24 = 0;
  }

  objc_sync_exit(v3);

  return v24;
}

uint64_t GEOPDResultSnippetFilterReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v56[0]) = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:v56 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v56[0] & 0x7F) << v5;
          if ((v56[0] & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = v7 & 7;
        v14 = v13 == 4 ? 1 : v12;
        if (v14)
        {
          break;
        }

        v15 = v7 >> 3;
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v56[0]) = 0;
              v43 = objc_msgSend_position(v3);
              if (v43 + 1 >= objc_msgSend_position(v3) && (v44 = objc_msgSend_position(v3), v44 + 1 <= [v3 length]))
              {
                v45 = [v3 data];
                [v45 getBytes:v56 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v42 |= (v56[0] & 0x7F) << v40;
              if ((v56[0] & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v11 = v41++ >= 9;
              if (v11)
              {
                v39 = 0;
                goto LABEL_80;
              }
            }

            if ([v3 hasError])
            {
              v39 = 0;
            }

            else
            {
              v39 = v42;
            }

LABEL_80:
            v46 = 40;
            goto LABEL_81;
          }

          if (v15 == 4)
          {
            if (v13 == 2)
            {
              v56[0] = 0;
              v56[1] = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_97;
              }

              v23 = objc_msgSend_position(v3);
              for (i = [v3 length]; v23 < i && (objc_msgSend(v3, "hasError") & 1) == 0; i = objc_msgSend(v3, "length"))
              {
                v25 = 0;
                v26 = 0;
                v27 = 0;
                while (1)
                {
                  v57 = 0;
                  v28 = objc_msgSend_position(v3);
                  if (v28 + 1 >= objc_msgSend_position(v3) && (v29 = objc_msgSend_position(v3), v29 + 1 <= [v3 length]))
                  {
                    v30 = [v3 data];
                    [v30 getBytes:&v57 range:{objc_msgSend_position(v3), 1}];

                    [v3 setPosition:objc_msgSend_position(v3) + 1];
                  }

                  else
                  {
                    [v3 _setError];
                  }

                  v27 |= (v57 & 0x7F) << v25;
                  if ((v57 & 0x80) == 0)
                  {
                    break;
                  }

                  v25 += 7;
                  v11 = v26++ >= 9;
                  if (v11)
                  {
                    goto LABEL_48;
                  }
                }

                [v3 hasError];
LABEL_48:
                PBRepeatedInt32Add();
                v23 = objc_msgSend_position(v3);
              }

              PBReaderRecallMark();
            }

            else
            {
              v48 = 0;
              v49 = 0;
              v50 = 0;
              while (1)
              {
                LOBYTE(v56[0]) = 0;
                v51 = objc_msgSend_position(v3);
                if (v51 + 1 >= objc_msgSend_position(v3) && (v52 = objc_msgSend_position(v3), v52 + 1 <= [v3 length]))
                {
                  v53 = [v3 data];
                  [v53 getBytes:v56 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v50 |= (v56[0] & 0x7F) << v48;
                if ((v56[0] & 0x80) == 0)
                {
                  break;
                }

                v48 += 7;
                v11 = v49++ >= 9;
                if (v11)
                {
                  goto LABEL_95;
                }
              }

              [v3 hasError];
LABEL_95:
              PBRepeatedInt32Add();
            }

            goto LABEL_82;
          }
        }

        else
        {
          if (v15 == 1)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              LOBYTE(v56[0]) = 0;
              v36 = objc_msgSend_position(v3);
              if (v36 + 1 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3), v37 + 1 <= [v3 length]))
              {
                v38 = [v3 data];
                [v38 getBytes:v56 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v35 |= (v56[0] & 0x7F) << v33;
              if ((v56[0] & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v39 = 0;
                goto LABEL_76;
              }
            }

            if ([v3 hasError])
            {
              v39 = 0;
            }

            else
            {
              v39 = v35;
            }

LABEL_76:
            v46 = 44;
LABEL_81:
            *(a1 + v46) = v39;
            goto LABEL_82;
          }

          if (v15 == 2)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              LOBYTE(v56[0]) = 0;
              v19 = objc_msgSend_position(v3);
              if (v19 + 1 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3), v20 + 1 <= [v3 length]))
              {
                v21 = [v3 data];
                [v21 getBytes:v56 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v18 |= (v56[0] & 0x7F) << v16;
              if ((v56[0] & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_72;
              }
            }

            v22 = (v18 != 0) & ~[v3 hasError];
LABEL_72:
            *(a1 + 48) = v22;
            goto LABEL_82;
          }
        }

        if (!*(a1 + 8))
        {
          v31 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v32 = *(a1 + 8);
          *(a1 + 8) = v31;
        }

        if (!PBUnknownFieldAdd())
        {
          goto LABEL_97;
        }

LABEL_82:
        v47 = objc_msgSend_position(v3);
      }

      while (v47 < [v3 length]);
    }

    v54 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_97:
    v54 = 0;
  }

  objc_sync_exit(v3);

  return v54;
}

uint64_t GEOPDQuickLinkFilterReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v26 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v26 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v26 & 0x7F) << v5;
          if ((v26 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          break;
        }

        if ((v7 >> 3) == 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            v27 = 0;
            v17 = objc_msgSend_position(v3);
            if (v17 + 1 >= objc_msgSend_position(v3) && (v18 = objc_msgSend_position(v3), v18 + 1 <= [v3 length]))
            {
              v19 = [v3 data];
              [v19 getBytes:&v27 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v16 |= (v27 & 0x7F) << v14;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_36;
            }
          }

          if ([v3 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_36:
          *(a1 + 16) = v20;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v21 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v22 = *(a1 + 8);
            *(a1 + 8) = v21;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_39;
          }
        }

        v23 = objc_msgSend_position(v3);
      }

      while (v23 < [v3 length]);
    }

    v24 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_39:
    v24 = 0;
  }

  objc_sync_exit(v3);

  return v24;
}

uint64_t GEOPDSupportsOfflineMapsFilterReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    while (1)
    {
      v4 = objc_msgSend_position(v3);
      if (v4 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v18 = 0;
        v8 = objc_msgSend_position(v3);
        if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
        {
          v10 = [v3 data];
          [v10 getBytes:&v18 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          LOBYTE(v7) = 0;
          goto LABEL_15;
        }
      }

      if ([v3 hasError])
      {
        LOBYTE(v7) = 0;
      }

LABEL_15:
      v12 = [v3 hasError];
      v13 = (v7 & 7) == 4 ? 1 : v12;
      if (v13)
      {
        break;
      }

      if (!*(a1 + 8))
      {
        v14 = objc_alloc_init(MEMORY[0x1E69C65D8]);
        v15 = *(a1 + 8);
        *(a1 + 8) = v14;
      }

      if ((PBUnknownFieldAdd() & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v16 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_22:
    v16 = 0;
  }

  objc_sync_exit(v3);

  return v16;
}

uint64_t GEOPDFactoidFilterReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v26 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v26 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v26 & 0x7F) << v5;
          if ((v26 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          break;
        }

        if ((v7 >> 3) == 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            v27 = 0;
            v17 = objc_msgSend_position(v3);
            if (v17 + 1 >= objc_msgSend_position(v3) && (v18 = objc_msgSend_position(v3), v18 + 1 <= [v3 length]))
            {
              v19 = [v3 data];
              [v19 getBytes:&v27 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v16 |= (v27 & 0x7F) << v14;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_34;
            }
          }

          v20 = (v16 != 0) & ~[v3 hasError];
LABEL_34:
          *(a1 + 16) = v20;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v21 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v22 = *(a1 + 8);
            *(a1 + 8) = v21;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_37;
          }
        }

        v23 = objc_msgSend_position(v3);
      }

      while (v23 < [v3 length]);
    }

    v24 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_37:
    v24 = 0;
  }

  objc_sync_exit(v3);

  return v24;
}

void *GEOPDCategorizedPhotosFilterReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 60))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDCategorizedPhotosFilterReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 64));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 56) = objc_msgSend_position(v8);
  *(a1 + 60) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDCategorizedPhotosFilterReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDCategorizedPhotosFilterReadAllFrom_initialTag;
  }

  Specified = GEOPDCategorizedPhotosFilterReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 64));
  return Specified;
}

void *GEOPDCategorizedPhotosFilterReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 64));
  [v3 setLength:*(a1 + 60)];
  [v3 seekToOffset:*(a1 + 56)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = ((*(a1 + 80) >> 5) & 1) + ((*(a1 + 80) >> 6) & 1) + ((*(a1 + 80) >> 4) & 1);
  while (1)
  {
    v11 = a3[v8];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      v6 = 1;
      goto LABEL_12;
    }

    if (v11 == -3)
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_11:
    ++v10;
LABEL_12:
    ++v8;
  }

  if (v11 >= 0xFFFFFFFE)
  {
    v6 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v12 = v10 != 0;
  v13 = v12 & ~v9 | v6;
  v14 = v9 | v12;
  LODWORD(v70) = v13;
  HIDWORD(v70) = v14 | v6;
  if ((v14 | v7))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v71 = (v15 == 0) | v14;
  v72 = v14;
  while (1)
  {
    v16 = objc_msgSend_position(v3, v70);
    if (v16 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_120:
      v25 = 1;
      goto LABEL_121;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      LOBYTE(v73[0]) = 0;
      v20 = objc_msgSend_position(v3) + 1;
      if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
      {
        v22 = [v3 data];
        [v22 getBytes:v73 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v19 |= (v73[0] & 0x7F) << v17;
      if ((v73[0] & 0x80) == 0)
      {
        break;
      }

      v17 += 7;
      v23 = v18++ >= 9;
      if (v23)
      {
        v19 = 0;
        goto LABEL_30;
      }
    }

    if ([v3 hasError])
    {
      v19 = 0;
    }

LABEL_30:
    v24 = [v3 hasError];
    v25 = 1;
    if ((v24 & 1) != 0 || (v19 & 7) == 4)
    {
      goto LABEL_121;
    }

    v26 = v19 >> 3;
    v27 = v72;
    if ((v71 & 1) == 0)
    {
      v28 = v15;
      do
      {
        v30 = *v28++;
        v29 = v30;
        v27 = v30 != 0;
        if (v30)
        {
          v31 = v29 == v26;
        }

        else
        {
          v31 = 1;
        }
      }

      while (!v31);
    }

    if (v26 > 3)
    {
      switch(v26)
      {
        case 4:
          if ((v7 & 1) == 0)
          {
            goto LABEL_100;
          }

          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 80) |= 1u;
          while (1)
          {
            LOBYTE(v73[0]) = 0;
            v49 = objc_msgSend_position(v3) + 1;
            if (v49 >= objc_msgSend_position(v3) && (v50 = objc_msgSend_position(v3) + 1, v50 <= [v3 length]))
            {
              v51 = [v3 data];
              [v51 getBytes:v73 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v48 |= (v73[0] & 0x7F) << v46;
            if ((v73[0] & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v23 = v47++ >= 9;
            if (v23)
            {
              v38 = 0;
              goto LABEL_105;
            }
          }

          if ([v3 hasError])
          {
            v38 = 0;
          }

          else
          {
            v38 = v48;
          }

LABEL_105:
          v62 = 68;
          goto LABEL_110;
        case 5:
          if ((v7 & 1) == 0)
          {
            goto LABEL_100;
          }

          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(a1 + 80) |= 8u;
          while (1)
          {
            LOBYTE(v73[0]) = 0;
            v59 = objc_msgSend_position(v3) + 1;
            if (v59 >= objc_msgSend_position(v3) && (v60 = objc_msgSend_position(v3) + 1, v60 <= [v3 length]))
            {
              v61 = [v3 data];
              [v61 getBytes:v73 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v58 |= (v73[0] & 0x7F) << v56;
            if ((v73[0] & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v23 = v57++ >= 9;
            if (v23)
            {
              v45 = 0;
              goto LABEL_114;
            }
          }

          v45 = (v58 != 0) & ~[v3 hasError];
LABEL_114:
          v63 = 77;
          goto LABEL_115;
        case 6:
          if ((v7 & 1) == 0)
          {
            goto LABEL_100;
          }

          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 80) |= 4u;
          while (1)
          {
            LOBYTE(v73[0]) = 0;
            v42 = objc_msgSend_position(v3) + 1;
            if (v42 >= objc_msgSend_position(v3) && (v43 = objc_msgSend_position(v3) + 1, v43 <= [v3 length]))
            {
              v44 = [v3 data];
              [v44 getBytes:v73 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v41 |= (v73[0] & 0x7F) << v39;
            if ((v73[0] & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v23 = v40++ >= 9;
            if (v23)
            {
              v45 = 0;
              goto LABEL_112;
            }
          }

          v45 = (v41 != 0) & ~[v3 hasError];
LABEL_112:
          v63 = 76;
LABEL_115:
          *(a1 + v63) = v45;
          goto LABEL_116;
      }

      goto LABEL_81;
    }

    if (v26 == 1)
    {
      break;
    }

    if (v26 == 2)
    {
      if (!v27)
      {
        goto LABEL_100;
      }

      if ((*(a1 + 80) & 0x40) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_139;
        }

        v8 += *(a1 + 80) << 25 >> 31;
      }

      else
      {
        v54 = PBReaderReadString();
        v55 = *(a1 + 48);
        *(a1 + 48) = v54;

        --v8;
      }

      goto LABEL_116;
    }

    if (v26 == 3)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_100;
      }

      v32 = 0;
      v33 = 0;
      v34 = 0;
      *(a1 + 80) |= 2u;
      while (1)
      {
        LOBYTE(v73[0]) = 0;
        v35 = objc_msgSend_position(v3) + 1;
        if (v35 >= objc_msgSend_position(v3) && (v36 = objc_msgSend_position(v3) + 1, v36 <= [v3 length]))
        {
          v37 = [v3 data];
          [v37 getBytes:v73 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v34 |= (v73[0] & 0x7F) << v32;
        if ((v73[0] & 0x80) == 0)
        {
          break;
        }

        v32 += 7;
        v23 = v33++ >= 9;
        if (v23)
        {
          v38 = 0;
          goto LABEL_109;
        }
      }

      if ([v3 hasError])
      {
        v38 = 0;
      }

      else
      {
        v38 = v34;
      }

LABEL_109:
      v62 = 72;
LABEL_110:
      *(a1 + v62) = v38;
      goto LABEL_116;
    }

LABEL_81:
    if ((v70 & 1) == 0 || (*(a1 + 80) & 0x10) != 0)
    {
      goto LABEL_100;
    }

    if (!*(a1 + 16))
    {
      v52 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v53 = *(a1 + 16);
      *(a1 + 16) = v52;
    }

    if (!PBUnknownFieldAdd())
    {
      v25 = 0;
      v69 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
      goto LABEL_122;
    }

LABEL_116:
    if (!(BYTE4(v70) & 1 | (v8 != 0)))
    {
      goto LABEL_120;
    }
  }

  if (!v27 || (*(a1 + 80) & 0x20) != 0)
  {
LABEL_100:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_116;
  }

  v73[0] = 0;
  v73[1] = 0;
  if (PBReaderPlaceMark())
  {
    [(GEOPDCategorizedPhotosFilter *)a1 _reservePhotoSizeFilters:?];
    if (GEOPDPhotoSizeFilterValueReadAllFrom(*(a1 + 24) + 12 * *(a1 + 32), v3))
    {
      PBReaderRecallMark();
      ++*(a1 + 32);
      goto LABEL_116;
    }
  }

LABEL_139:
  v25 = 0;
LABEL_121:
  v69 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
  if ((v70 & 1) == 0)
  {
    goto LABEL_123;
  }

LABEL_122:
  *(a1 + v69[872]) |= 0x10u;
LABEL_123:
  if (v72 & 1 | ((v25 & 1) == 0))
  {
    *(a1 + v69[872]) |= 0x20u;
    *(a1 + v69[872]) |= 0x40u;
    goto LABEL_133;
  }

  if (v15)
  {
    while (1)
    {
      v65 = *v15++;
      v64 = v65;
      if (v65 == 1)
      {
        break;
      }

      if (v64 == 2)
      {
        v66 = 64;
LABEL_132:
        *(a1 + v69[872]) |= v66;
        continue;
      }

      if (!v64)
      {
        goto LABEL_133;
      }
    }

    v66 = 32;
    goto LABEL_132;
  }

LABEL_133:
  if (v25)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v72)
  {
    v67 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOPDTransitScheduleFilterReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 56))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDTransitScheduleFilterReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 60));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 52) = objc_msgSend_position(v8);
  *(a1 + 56) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDTransitScheduleFilterReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDTransitScheduleFilterReadAllFrom_initialTag;
  }

  Specified = GEOPDTransitScheduleFilterReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 60));
  return Specified;
}

void *GEOPDTransitScheduleFilterReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 60));
  [v3 setLength:*(a1 + 56)];
  [v3 seekToOffset:*(a1 + 52)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = ((*(a1 + 68) >> 3) & 1) + ((*(a1 + 68) >> 4) & 1) + ((*(a1 + 68) >> 2) & 1);
  while (1)
  {
    v11 = a3[v6];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      v8 = 1;
      goto LABEL_12;
    }

    if (v11 == -3)
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_11:
    ++v10;
LABEL_12:
    ++v6;
  }

  if (v11 >= 0xFFFFFFFE)
  {
    v8 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v12 = v10 != 0;
  v13 = v9 | v12;
  v50 = v12 & ~v9 | v8;
  v51 = v9 | v12 | v8;
  if (((v9 | v12) | v7))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  while (1)
  {
    v15 = objc_msgSend_position(v3);
    if (v15 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_84:
      v24 = 1;
      goto LABEL_87;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      LOBYTE(v52) = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:&v52 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v52 & 0x7F) << v16;
      if ((v52 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      v22 = v17++ >= 9;
      if (v22)
      {
        v18 = 0;
        goto LABEL_29;
      }
    }

    if ([v3 hasError])
    {
      v18 = 0;
    }

LABEL_29:
    v23 = [v3 hasError];
    v24 = 1;
    if ((v23 & 1) != 0 || (v18 & 7) == 4)
    {
      goto LABEL_87;
    }

    v25 = v18 >> 3;
    v26 = v13;
    if (!((v14 == 0) | v13 & 1))
    {
      v27 = v14;
      do
      {
        v29 = *v27++;
        v28 = v29;
        v26 = v29 != 0;
        if (v29)
        {
          v30 = v28 == v25;
        }

        else
        {
          v30 = 1;
        }
      }

      while (!v30);
    }

    if (v25 <= 6)
    {
      break;
    }

    if (v25 == 7)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_74;
      }

      v52 = 0;
      v53 = 0;
      if (!PBReaderPlaceMark() || (GEOPDTimeRangeReadAllFrom(a1 + 40, v3) & 1) == 0)
      {
        goto LABEL_86;
      }

      PBReaderRecallMark();
      *(a1 + 68) |= 1u;
      goto LABEL_75;
    }

    if (v25 == 8)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_74;
      }

      v33 = 0;
      v34 = 0;
      v35 = 0;
      *(a1 + 68) |= 2u;
      while (1)
      {
        LOBYTE(v52) = 0;
        v36 = objc_msgSend_position(v3) + 1;
        if (v36 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3) + 1, v37 <= [v3 length]))
        {
          v38 = [v3 data];
          [v38 getBytes:&v52 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v35 |= (v52 & 0x7F) << v33;
        if ((v52 & 0x80) == 0)
        {
          break;
        }

        v33 += 7;
        v22 = v34++ >= 9;
        if (v22)
        {
          v39 = 0;
          goto LABEL_78;
        }
      }

      v39 = (v35 != 0) & ~[v3 hasError];
LABEL_78:
      *(a1 + 64) = v39;
      goto LABEL_75;
    }

LABEL_58:
    if ((v50 & 1) == 0 || (*(a1 + 68) & 4) != 0)
    {
LABEL_74:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_75;
    }

    if (!*(a1 + 16))
    {
      v40 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v41 = *(a1 + 16);
      *(a1 + 16) = v40;
    }

    if (!PBUnknownFieldAdd())
    {
      v24 = 0;
      v49 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
      goto LABEL_88;
    }

LABEL_75:
    if (!(v51 & 1 | (v6 != 0)))
    {
      goto LABEL_84;
    }
  }

  if (v25 != 5)
  {
    if (v25 == 6)
    {
      if (!v26)
      {
        goto LABEL_74;
      }

      if ((*(a1 + 68) & 0x10) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_86;
        }

        v43 = 8 * *(a1 + 68);
LABEL_83:
        v6 += v43 >> 7;
        goto LABEL_75;
      }

      v52 = 0;
      v53 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_86;
      }

      v31 = objc_alloc_init(GEOPDDeparturePredicate);
      if (!GEOPDDeparturePredicateReadAllFrom(v31, v3))
      {
        goto LABEL_85;
      }

      PBReaderRecallMark();
      v32 = 32;
      goto LABEL_69;
    }

    goto LABEL_58;
  }

  if (!v26)
  {
    goto LABEL_74;
  }

  if ((*(a1 + 68) & 8) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_86;
    }

    v43 = 16 * *(a1 + 68);
    goto LABEL_83;
  }

  v52 = 0;
  v53 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_86;
  }

  v31 = objc_alloc_init(GEOPDDeparturePredicate);
  if (GEOPDDeparturePredicateReadAllFrom(v31, v3))
  {
    PBReaderRecallMark();
    v32 = 24;
LABEL_69:
    v42 = *(a1 + v32);
    *(a1 + v32) = v31;

    --v6;
    goto LABEL_75;
  }

LABEL_85:

LABEL_86:
  v24 = 0;
LABEL_87:
  v49 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
  if ((v50 & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_88:
  *(a1 + v49[667]) |= 4u;
LABEL_89:
  if (v13 & 1 | ((v24 & 1) == 0))
  {
    *(a1 + v49[667]) |= 8u;
    *(a1 + v49[667]) |= 0x10u;
    goto LABEL_99;
  }

  if (v14)
  {
    while (1)
    {
      v45 = *v14++;
      v44 = v45;
      if (v45 == 5)
      {
        break;
      }

      if (v44 == 6)
      {
        v46 = 16;
LABEL_98:
        *(a1 + v49[667]) |= v46;
        continue;
      }

      if (!v44)
      {
        goto LABEL_99;
      }
    }

    v46 = 8;
    goto LABEL_98;
  }

LABEL_99:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

LABEL_103:
    v47 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v13)
    {
      goto LABEL_103;
    }
  }

  return v3;
}

uint64_t GEOPDDeparturePredicateReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v8 = objc_msgSend_position(v3, v27[0]);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:v27 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v27[0] & 0x7F) << v5;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          break;
        }

        v14 = v7 >> 3;
        if (v14 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v18 = objc_msgSend_position(v3, v27[0]);
            if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
            {
              v20 = [v3 data];
              [v20 getBytes:v27 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v27[0] & 0x7F) << v15;
            if ((v27[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_40;
            }
          }

          if ([v3 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_40:
          *(a1 + 28) = v21;
        }

        else if (v14 == 1)
        {
          v27[0] = 0;
          v27[1] = 0;
          if (!PBReaderPlaceMark() || (GEOPDTimeRangeReadAllFrom(a1 + 16, v3) & 1) == 0)
          {
            goto LABEL_43;
          }

          PBReaderRecallMark();
          *(a1 + 32) |= 1u;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v22 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v23 = *(a1 + 8);
            *(a1 + 8) = v22;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_43;
          }
        }

        v24 = objc_msgSend_position(v3);
      }

      while (v24 < [v3 length]);
    }

    v25 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_43:
    v25 = 0;
  }

  objc_sync_exit(v3);

  return v25;
}

uint64_t GEOPDTimeRangeReadAllFrom(uint64_t a1, void *a2)
{
  for (i = objc_msgSend_position(a2); i < [a2 length] && (objc_msgSend(a2, "hasError") & 1) == 0; i = objc_msgSend_position(a2))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v28 = 0;
      v8 = objc_msgSend_position(a2) + 1;
      if (v8 >= objc_msgSend_position(a2) && (v9 = objc_msgSend_position(a2) + 1, v9 <= [a2 length]))
      {
        v10 = [a2 data];
        [v10 getBytes:&v28 range:{objc_msgSend_position(a2), 1}];

        [a2 setPosition:objc_msgSend_position(a2) + 1];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v28 & 0x7F) << v5;
      if ((v28 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_16;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      break;
    }

    if ((v12 >> 3) == 2)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      *(a1 + 8) |= 1u;
      while (1)
      {
        v29 = 0;
        v23 = objc_msgSend_position(a2) + 1;
        if (v23 >= objc_msgSend_position(a2) && (v24 = objc_msgSend_position(a2) + 1, v24 <= [a2 length]))
        {
          v25 = [a2 data];
          [v25 getBytes:&v29 range:{objc_msgSend_position(a2), 1}];

          [a2 setPosition:objc_msgSend_position(a2) + 1];
        }

        else
        {
          [a2 _setError];
        }

        v22 |= (v29 & 0x7F) << v20;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v11 = v21++ >= 9;
        if (v11)
        {
          v26 = 0;
          goto LABEL_47;
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

LABEL_47:
      *a1 = v26;
    }

    else if ((v12 >> 3) == 1)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      *(a1 + 8) |= 2u;
      while (1)
      {
        v30 = 0;
        v16 = objc_msgSend_position(a2) + 1;
        if (v16 >= objc_msgSend_position(a2) && (v17 = objc_msgSend_position(a2) + 1, v17 <= [a2 length]))
        {
          v18 = [a2 data];
          [v18 getBytes:&v30 range:{objc_msgSend_position(a2), 1}];

          [a2 setPosition:objc_msgSend_position(a2) + 1];
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
          goto LABEL_43;
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

LABEL_43:
      *(a1 + 4) = v19;
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t GEOPDRelatedPlaceFilterReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v34 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v34 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v34 & 0x7F) << v5;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          break;
        }

        v14 = v7 >> 3;
        if (v14 == 2)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v35 = 0;
            v25 = objc_msgSend_position(v3);
            if (v25 + 1 >= objc_msgSend_position(v3) && (v26 = objc_msgSend_position(v3), v26 + 1 <= [v3 length]))
            {
              v27 = [v3 data];
              [v27 getBytes:&v35 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v24 |= (v35 & 0x7F) << v22;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              LOBYTE(v28) = 0;
              goto LABEL_48;
            }
          }

          v28 = (v24 != 0) & ~[v3 hasError];
LABEL_48:
          *(a1 + 20) = v28;
        }

        else if (v14 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v36 = 0;
            v18 = objc_msgSend_position(v3);
            if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
            {
              v20 = [v3 data];
              [v20 getBytes:&v36 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v36 & 0x7F) << v15;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_46;
            }
          }

          if ([v3 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_46:
          *(a1 + 16) = v21;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v29 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v30 = *(a1 + 8);
            *(a1 + 8) = v29;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_51;
          }
        }

        v31 = objc_msgSend_position(v3);
      }

      while (v31 < [v3 length]);
    }

    v32 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_51:
    v32 = 0;
  }

  objc_sync_exit(v3);

  return v32;
}

uint64_t GEOPDReviewFilterReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v8 = objc_msgSend_position(v3, v27[0]);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:v27 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v27[0] & 0x7F) << v5;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          break;
        }

        v14 = v7 >> 3;
        if (v14 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v18 = objc_msgSend_position(v3, v27[0]);
            if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
            {
              v20 = [v3 data];
              [v20 getBytes:v27 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v27[0] & 0x7F) << v15;
            if ((v27[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_38;
            }
          }

          v21 = (v17 != 0) & ~[v3 hasError];
LABEL_38:
          *(a1 + 40) = v21;
        }

        else if (v14 == 1)
        {
          v27[0] = 0;
          v27[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_41;
          }

          [(GEOPDReviewFilter *)a1 _reservePhotoSizeFilters:?];
          if ((GEOPDPhotoSizeFilterValueReadAllFrom(*(a1 + 16) + 12 * *(a1 + 24), v3) & 1) == 0)
          {
            goto LABEL_41;
          }

          PBReaderRecallMark();
          ++*(a1 + 24);
        }

        else
        {
          if (!*(a1 + 8))
          {
            v22 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v23 = *(a1 + 8);
            *(a1 + 8) = v22;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_41;
          }
        }

        v24 = objc_msgSend_position(v3);
      }

      while (v24 < [v3 length]);
    }

    v25 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_41:
    v25 = 0;
  }

  objc_sync_exit(v3);

  return v25;
}

uint64_t GEOPDForwardInfoFilterReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    while (1)
    {
      v4 = objc_msgSend_position(v3);
      if (v4 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v18 = 0;
        v8 = objc_msgSend_position(v3);
        if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
        {
          v10 = [v3 data];
          [v10 getBytes:&v18 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          LOBYTE(v7) = 0;
          goto LABEL_15;
        }
      }

      if ([v3 hasError])
      {
        LOBYTE(v7) = 0;
      }

LABEL_15:
      v12 = [v3 hasError];
      v13 = (v7 & 7) == 4 ? 1 : v12;
      if (v13)
      {
        break;
      }

      if (!*(a1 + 8))
      {
        v14 = objc_alloc_init(MEMORY[0x1E69C65D8]);
        v15 = *(a1 + 8);
        *(a1 + 8) = v14;
      }

      if ((PBUnknownFieldAdd() & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v16 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_22:
    v16 = 0;
  }

  objc_sync_exit(v3);

  return v16;
}

uint64_t GEOPDStorefrontPresentationFilterReadAllFrom(void *a1)
{
  v1 = a1;
  objc_sync_enter(v1);
  if (v1)
  {
    while (1)
    {
      v2 = objc_msgSend_position(v1);
      if (v2 >= [v1 length] || (objc_msgSend(v1, "hasError") & 1) != 0)
      {
        break;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v15 = 0;
        v6 = objc_msgSend_position(v1);
        if (v6 + 1 >= objc_msgSend_position(v1) && (v7 = objc_msgSend_position(v1), v7 + 1 <= [v1 length]))
        {
          v8 = [v1 data];
          [v8 getBytes:&v15 range:{objc_msgSend_position(v1), 1}];

          [v1 setPosition:objc_msgSend_position(v1) + 1];
        }

        else
        {
          [v1 _setError];
        }

        v5 |= (v15 & 0x7F) << v3;
        if ((v15 & 0x80) == 0)
        {
          break;
        }

        v3 += 7;
        if (v4++ >= 9)
        {
          v10 = 0;
          goto LABEL_16;
        }
      }

      v10 = [v1 hasError] ? 0 : v5;
LABEL_16:
      v11 = [v1 hasError];
      v12 = (v10 & 7) == 4 ? 1 : v11;
      if (v12)
      {
        break;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v13 = [v1 hasError] ^ 1;
  }

  else
  {
LABEL_21:
    v13 = 0;
  }

  objc_sync_exit(v1);

  return v13;
}

uint64_t GEOPDPlaceCollectionFilterReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v65 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v65 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v65 & 0x7F) << v5;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          break;
        }

        v14 = v7 >> 3;
        if (v14 <= 3)
        {
          switch(v14)
          {
            case 1:
              v34 = 0;
              v35 = 0;
              v36 = 0;
              *(a1 + 28) |= 1u;
              while (1)
              {
                v72 = 0;
                v37 = objc_msgSend_position(v3);
                if (v37 + 1 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3), v38 + 1 <= [v3 length]))
                {
                  v39 = [v3 data];
                  [v39 getBytes:&v72 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v36 |= (v72 & 0x7F) << v34;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v34 += 7;
                v11 = v35++ >= 9;
                if (v11)
                {
                  v40 = 0;
                  goto LABEL_97;
                }
              }

              if ([v3 hasError])
              {
                v40 = 0;
              }

              else
              {
                v40 = v36;
              }

LABEL_97:
              *(a1 + 16) = v40;
              goto LABEL_111;
            case 2:
              v55 = 0;
              v56 = 0;
              v57 = 0;
              *(a1 + 28) |= 0x40u;
              while (1)
              {
                v71 = 0;
                v58 = objc_msgSend_position(v3);
                if (v58 + 1 >= objc_msgSend_position(v3) && (v59 = objc_msgSend_position(v3), v59 + 1 <= [v3 length]))
                {
                  v60 = [v3 data];
                  [v60 getBytes:&v71 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v57 |= (v71 & 0x7F) << v55;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v55 += 7;
                v11 = v56++ >= 9;
                if (v11)
                {
                  LOBYTE(v21) = 0;
                  goto LABEL_109;
                }
              }

              v21 = (v57 != 0) & ~[v3 hasError];
LABEL_109:
              v61 = 25;
              goto LABEL_110;
            case 3:
              v22 = 0;
              v23 = 0;
              v24 = 0;
              *(a1 + 28) |= 0x10u;
              while (1)
              {
                v70 = 0;
                v25 = objc_msgSend_position(v3);
                if (v25 + 1 >= objc_msgSend_position(v3) && (v26 = objc_msgSend_position(v3), v26 + 1 <= [v3 length]))
                {
                  v27 = [v3 data];
                  [v27 getBytes:&v70 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v24 |= (v70 & 0x7F) << v22;
                if ((v70 & 0x80) == 0)
                {
                  break;
                }

                v22 += 7;
                v11 = v23++ >= 9;
                if (v11)
                {
                  LOBYTE(v21) = 0;
                  goto LABEL_107;
                }
              }

              v21 = (v24 != 0) & ~[v3 hasError];
LABEL_107:
              v61 = 23;
              goto LABEL_110;
          }
        }

        else
        {
          if (v14 <= 5)
          {
            if (v14 == 4)
            {
              v43 = 0;
              v44 = 0;
              v45 = 0;
              *(a1 + 28) |= 2u;
              while (1)
              {
                v69 = 0;
                v46 = objc_msgSend_position(v3);
                if (v46 + 1 >= objc_msgSend_position(v3) && (v47 = objc_msgSend_position(v3), v47 + 1 <= [v3 length]))
                {
                  v48 = [v3 data];
                  [v48 getBytes:&v69 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v45 |= (v69 & 0x7F) << v43;
                if ((v69 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                v11 = v44++ >= 9;
                if (v11)
                {
                  LOBYTE(v21) = 0;
                  goto LABEL_99;
                }
              }

              v21 = (v45 != 0) & ~[v3 hasError];
LABEL_99:
              v61 = 20;
            }

            else
            {
              v15 = 0;
              v16 = 0;
              v17 = 0;
              *(a1 + 28) |= 0x20u;
              while (1)
              {
                v68 = 0;
                v18 = objc_msgSend_position(v3);
                if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
                {
                  v20 = [v3 data];
                  [v20 getBytes:&v68 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v17 |= (v68 & 0x7F) << v15;
                if ((v68 & 0x80) == 0)
                {
                  break;
                }

                v15 += 7;
                v11 = v16++ >= 9;
                if (v11)
                {
                  LOBYTE(v21) = 0;
                  goto LABEL_103;
                }
              }

              v21 = (v17 != 0) & ~[v3 hasError];
LABEL_103:
              v61 = 24;
            }

LABEL_110:
            *(a1 + v61) = v21;
            goto LABEL_111;
          }

          if (v14 == 6)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 28) |= 4u;
            while (1)
            {
              v67 = 0;
              v52 = objc_msgSend_position(v3);
              if (v52 + 1 >= objc_msgSend_position(v3) && (v53 = objc_msgSend_position(v3), v53 + 1 <= [v3 length]))
              {
                v54 = [v3 data];
                [v54 getBytes:&v67 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v51 |= (v67 & 0x7F) << v49;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v11 = v50++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_101;
              }
            }

            v21 = (v51 != 0) & ~[v3 hasError];
LABEL_101:
            v61 = 21;
            goto LABEL_110;
          }

          if (v14 == 7)
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 28) |= 8u;
            while (1)
            {
              v66 = 0;
              v31 = objc_msgSend_position(v3);
              if (v31 + 1 >= objc_msgSend_position(v3) && (v32 = objc_msgSend_position(v3), v32 + 1 <= [v3 length]))
              {
                v33 = [v3 data];
                [v33 getBytes:&v66 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v30 |= (v66 & 0x7F) << v28;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_105;
              }
            }

            v21 = (v30 != 0) & ~[v3 hasError];
LABEL_105:
            v61 = 22;
            goto LABEL_110;
          }
        }

        if (!*(a1 + 8))
        {
          v41 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v42 = *(a1 + 8);
          *(a1 + 8) = v41;
        }

        if (!PBUnknownFieldAdd())
        {
          goto LABEL_113;
        }

LABEL_111:
        v62 = objc_msgSend_position(v3);
      }

      while (v62 < [v3 length]);
    }

    v63 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_113:
    v63 = 0;
  }

  objc_sync_exit(v3);

  return v63;
}

void *GEOPDClientMetadataReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 276))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDClientMetadataReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 280));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 272) = objc_msgSend_position(v8);
  *(a1 + 276) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDClientMetadataReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDClientMetadataReadAllFrom_initialTag;
  }

  Specified = GEOPDClientMetadataReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDClientMetadataCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 280));
  return Specified;
}

void *GEOPDClientMetadataReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 280));
  [v3 setLength:*(a1 + 276)];
  [v3 seekToOffset:*(a1 + 272)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 320);
  v12 = vdupq_n_s32(v11);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14 = vaddvq_s32(vaddq_s32(vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBE280), v13), vandq_s8(vshlq_u32(v12, xmmword_187FBE290), v13)), vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBE2A0), v13), vandq_s8(vshlq_u32(v12, xmmword_187FBE2B0), v13)))) + ((v11 >> 17) & 1) + (BYTE4(v11) & 1) + ((v11 >> 13) & 1) + ((v11 >> 33) & 1) + ((v11 >> 12) & 1) + (v11 >> 31);
  while (1)
  {
    v15 = a3[v6];
    if (v15 > -3)
    {
      break;
    }

    if (v15 == -4)
    {
      ++v14;
      v8 = 1;
      goto LABEL_15;
    }

    if (v15 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v14;
LABEL_15:
    ++v6;
  }

  if (v15 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v15 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v15)
  {
    goto LABEL_14;
  }

  v16 = v14 > 0xF;
  v191 = v9;
  v192 = v16 & ~v10 | v8;
  v17 = v10 | v16;
  if ((v10 | v16 | v7))
  {
    v18 = 0;
  }

  else
  {
    v18 = a3;
  }

  v19 = objc_msgSend_position(v3);
  if (v19 >= [v3 length])
  {
LABEL_453:
    v28 = 1;
    goto LABEL_454;
  }

  v193 = v17 | v8;
  v194 = (v18 == 0) | v17;
  v195 = v17;
  while (2)
  {
    if ([v3 hasError])
    {
      goto LABEL_453;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      LOBYTE(v196) = 0;
      v23 = objc_msgSend_position(v3) + 1;
      if (v23 >= objc_msgSend_position(v3) && (v24 = objc_msgSend_position(v3) + 1, v24 <= [v3 length]))
      {
        v25 = [v3 data];
        [v25 getBytes:&v196 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v22 |= (v196 & 0x7F) << v20;
      if ((v196 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v26 = v21++ >= 9;
      if (v26)
      {
        v22 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v22 = 0;
    }

LABEL_33:
    v27 = [v3 hasError];
    v28 = 1;
    v17 = v195;
    if (v27)
    {
      goto LABEL_454;
    }

    v29 = v22 & 7;
    if (v29 == 4)
    {
      goto LABEL_454;
    }

    v30 = v22 >> 3;
    v31 = v195;
    if ((v194 & 1) == 0)
    {
      v32 = v18;
      do
      {
        v34 = *v32++;
        v33 = v34;
        v31 = v34 != 0;
        if (v34)
        {
          v35 = v33 == v30;
        }

        else
        {
          v35 = 1;
        }
      }

      while (!v35);
    }

    switch(v30)
    {
      case 1:
        if (!v31)
        {
          goto LABEL_332;
        }

        if ((*(a1 + 322) & 0x80) == 0)
        {
          v36 = PBReaderReadString();
          v37 = 184;
          goto LABEL_315;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_491;
        }

        v154 = *(a1 + 320) << 40;
        goto LABEL_402;
      case 2:
      case 6:
      case 7:
      case 14:
        goto LABEL_53;
      case 3:
        if (!v31)
        {
          goto LABEL_332;
        }

        if ((*(a1 + 323) & 1) == 0)
        {
          v36 = PBReaderReadString();
          v37 = 192;
          goto LABEL_315;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_491;
        }

        v154 = *(a1 + 320) << 39;
        goto LABEL_402;
      case 4:
        if (!v31)
        {
          goto LABEL_332;
        }

        if ((*(a1 + 323) & 8) == 0)
        {
          v36 = PBReaderReadString();
          v37 = 216;
          goto LABEL_315;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_491;
        }

        v154 = *(a1 + 320) << 36;
        goto LABEL_402;
      case 5:
        if (!v31)
        {
          goto LABEL_332;
        }

        if ((*(a1 + 323) & 0x20) == 0)
        {
          v36 = PBReaderReadString();
          v37 = 232;
          goto LABEL_315;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_491;
        }

        v154 = *(a1 + 320) << 34;
        goto LABEL_402;
      case 8:
        if ((v7 & 1) == 0)
        {
          goto LABEL_332;
        }

        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 320) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v196) = 0;
          v104 = objc_msgSend_position(v3) + 1;
          if (v104 >= objc_msgSend_position(v3) && (v105 = objc_msgSend_position(v3) + 1, v105 <= [v3 length]))
          {
            v106 = [v3 data];
            [v106 getBytes:&v196 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v103 |= (v196 & 0x7F) << v101;
          if ((v196 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v26 = v102++ >= 9;
          if (v26)
          {
            v62 = 0;
            goto LABEL_357;
          }
        }

        if ([v3 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v103;
        }

LABEL_357:
        v153 = 308;
        goto LABEL_368;
      case 9:
        if (!v31)
        {
          goto LABEL_332;
        }

        if ((*(a1 + 322) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_491;
          }

          v154 = *(a1 + 320) << 43;
          goto LABEL_402;
        }

        v196 = 0;
        v197 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_491;
        }

        v38 = objc_alloc_init(GEOAdditionalEnabledMarkets);
        if (!GEOAdditionalEnabledMarketsReadAllFrom(v38, v3, v191 & 1))
        {
          goto LABEL_490;
        }

        PBReaderRecallMark();
        v39 = 160;
        goto LABEL_322;
      case 10:
        if ((v7 & 1) == 0)
        {
          goto LABEL_332;
        }

        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 320) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v196) = 0;
          v86 = objc_msgSend_position(v3) + 1;
          if (v86 >= objc_msgSend_position(v3) && (v87 = objc_msgSend_position(v3) + 1, v87 <= [v3 length]))
          {
            v88 = [v3 data];
            [v88 getBytes:&v196 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v85 |= (v196 & 0x7F) << v83;
          if ((v196 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v26 = v84++ >= 9;
          if (v26)
          {
            v62 = 0;
            goto LABEL_347;
          }
        }

        if ([v3 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v85;
        }

LABEL_347:
        v153 = 304;
        goto LABEL_368;
      case 11:
        if ((v7 & 1) == 0)
        {
          goto LABEL_332;
        }

        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 320) |= 4uLL;
        while (1)
        {
          LOBYTE(v196) = 0;
          v98 = objc_msgSend_position(v3) + 1;
          if (v98 >= objc_msgSend_position(v3) && (v99 = objc_msgSend_position(v3) + 1, v99 <= [v3 length]))
          {
            v100 = [v3 data];
            [v100 getBytes:&v196 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v97 |= (v196 & 0x7F) << v95;
          if ((v196 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v26 = v96++ >= 9;
          if (v26)
          {
            v62 = 0;
            goto LABEL_353;
          }
        }

        if ([v3 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v97;
        }

LABEL_353:
        v153 = 292;
        goto LABEL_368;
      case 12:
        if ((v7 & 1) == 0)
        {
          goto LABEL_332;
        }

        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 320) |= 2uLL;
        while (1)
        {
          LOBYTE(v196) = 0;
          v80 = objc_msgSend_position(v3) + 1;
          if (v80 >= objc_msgSend_position(v3) && (v81 = objc_msgSend_position(v3) + 1, v81 <= [v3 length]))
          {
            v82 = [v3 data];
            [v82 getBytes:&v196 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v79 |= (v196 & 0x7F) << v77;
          if ((v196 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v26 = v78++ >= 9;
          if (v26)
          {
            v62 = 0;
            goto LABEL_343;
          }
        }

        if ([v3 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v79;
        }

LABEL_343:
        v153 = 288;
        goto LABEL_368;
      case 13:
        if (!v31)
        {
          goto LABEL_332;
        }

        if ((*(a1 + 323) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_491;
          }

          v154 = *(a1 + 320) << 38;
          goto LABEL_402;
        }

        v196 = 0;
        v197 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_491;
        }

        v38 = objc_alloc_init(GEOLocation);
        if (!GEOLocationReadAllFrom(v38, v3, v191 & 1))
        {
          goto LABEL_490;
        }

        PBReaderRecallMark();
        v39 = 200;
        goto LABEL_322;
      case 15:
        if (!v31 || (*(a1 + 323) & 4) != 0)
        {
          goto LABEL_332;
        }

        v196 = 0;
        v197 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_491;
        }

        v38 = objc_alloc_init(GEOLocation);
        if (!GEOLocationReadAllFrom(v38, v3, v191 & 1))
        {
          goto LABEL_490;
        }

        PBReaderRecallMark();
        [(GEOPDClientMetadata *)a1 _addNoFlagsDeviceHistoricalLocation:v38];
LABEL_301:

        goto LABEL_451;
      case 16:
        if ((v7 & 1) == 0)
        {
          goto LABEL_332;
        }

        v120 = 0;
        v121 = 0;
        v122 = 0;
        *(a1 + 320) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v196) = 0;
          v123 = objc_msgSend_position(v3) + 1;
          if (v123 >= objc_msgSend_position(v3) && (v124 = objc_msgSend_position(v3) + 1, v124 <= [v3 length]))
          {
            v125 = [v3 data];
            [v125 getBytes:&v196 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v122 |= (v196 & 0x7F) << v120;
          if ((v196 & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v26 = v121++ >= 9;
          if (v26)
          {
            v62 = 0;
            goto LABEL_363;
          }
        }

        if ([v3 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v122;
        }

LABEL_363:
        v153 = 300;
        goto LABEL_368;
      case 17:
        if (!v31)
        {
          goto LABEL_332;
        }

        if ((*(a1 + 322) & 0x40) == 0)
        {
          v36 = PBReaderReadString();
          v37 = 176;
          goto LABEL_315;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_491;
        }

        v154 = *(a1 + 320) << 41;
        goto LABEL_402;
      case 18:
        if (!v31 || (*(a1 + 321) & 0x40) != 0)
        {
          goto LABEL_332;
        }

        if (v29 != 2)
        {
          v161 = 0;
          v162 = 0;
          v163 = 0;
          while (1)
          {
            LOBYTE(v196) = 0;
            v164 = objc_msgSend_position(v3) + 1;
            if (v164 >= objc_msgSend_position(v3) && (v165 = objc_msgSend_position(v3) + 1, v165 <= [v3 length]))
            {
              v166 = [v3 data];
              [v166 getBytes:&v196 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v163 |= (v196 & 0x7F) << v161;
            if ((v196 & 0x80) == 0)
            {
              goto LABEL_448;
            }

            v161 += 7;
            v26 = v162++ >= 9;
            if (v26)
            {
              goto LABEL_449;
            }
          }
        }

        v196 = 0;
        v197 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_491;
        }

        while (1)
        {
          v63 = objc_msgSend_position(v3);
          if (v63 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_331;
          }

          v64 = 0;
          v65 = 0;
          v66 = 0;
          while (1)
          {
            v198 = 0;
            v67 = objc_msgSend_position(v3) + 1;
            if (v67 >= objc_msgSend_position(v3) && (v68 = objc_msgSend_position(v3) + 1, v68 <= [v3 length]))
            {
              v69 = [v3 data];
              [v69 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v66 |= (v198 & 0x7F) << v64;
            if ((v198 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v26 = v65++ >= 9;
            if (v26)
            {
              goto LABEL_112;
            }
          }

          [v3 hasError];
LABEL_112:
          PBRepeatedInt32Add();
        }

      case 19:
        if ((v7 & 1) == 0)
        {
          goto LABEL_332;
        }

        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 320) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v196) = 0;
          v110 = objc_msgSend_position(v3) + 1;
          if (v110 >= objc_msgSend_position(v3) && (v111 = objc_msgSend_position(v3) + 1, v111 <= [v3 length]))
          {
            v112 = [v3 data];
            [v112 getBytes:&v196 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v109 |= (v196 & 0x7F) << v107;
          if ((v196 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v26 = v108++ >= 9;
          if (v26)
          {
            v48 = 0;
            goto LABEL_359;
          }
        }

        v48 = (v109 != 0) & ~[v3 hasError];
LABEL_359:
        v152 = 312;
        goto LABEL_373;
      case 20:
        if (!v31 || (*(a1 + 321) & 0x80) != 0)
        {
          goto LABEL_332;
        }

        if (v29 != 2)
        {
          v167 = 0;
          v168 = 0;
          v169 = 0;
          while (1)
          {
            LOBYTE(v196) = 0;
            v170 = objc_msgSend_position(v3) + 1;
            if (v170 >= objc_msgSend_position(v3) && (v171 = objc_msgSend_position(v3) + 1, v171 <= [v3 length]))
            {
              v172 = [v3 data];
              [v172 getBytes:&v196 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v169 |= (v196 & 0x7F) << v167;
            if ((v196 & 0x80) == 0)
            {
              goto LABEL_448;
            }

            v167 += 7;
            v26 = v168++ >= 9;
            if (v26)
            {
              goto LABEL_449;
            }
          }
        }

        v196 = 0;
        v197 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_491;
        }

        while (1)
        {
          v70 = objc_msgSend_position(v3);
          if (v70 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_331;
          }

          v71 = 0;
          v72 = 0;
          v73 = 0;
          while (1)
          {
            v198 = 0;
            v74 = objc_msgSend_position(v3) + 1;
            if (v74 >= objc_msgSend_position(v3) && (v75 = objc_msgSend_position(v3) + 1, v75 <= [v3 length]))
            {
              v76 = [v3 data];
              [v76 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v73 |= (v198 & 0x7F) << v71;
            if ((v198 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v26 = v72++ >= 9;
            if (v26)
            {
              goto LABEL_129;
            }
          }

          [v3 hasError];
LABEL_129:
          PBRepeatedInt32Add();
        }

      case 21:
        if (!v31 || (*(a1 + 322) & 0x20) != 0)
        {
          goto LABEL_332;
        }

        v38 = PBReaderReadString();
        if (v38)
        {
          [(GEOPDClientMetadata *)a1 _addNoFlagsBusinessChatPreflightIdentifier:v38];
        }

        goto LABEL_301;
      case 22:
        if ((v7 & 1) == 0)
        {
          goto LABEL_332;
        }

        v126 = 0;
        v127 = 0;
        v128 = 0;
        *(a1 + 320) |= 1uLL;
        while (1)
        {
          LOBYTE(v196) = 0;
          v129 = objc_msgSend_position(v3) + 1;
          if (v129 >= objc_msgSend_position(v3) && (v130 = objc_msgSend_position(v3) + 1, v130 <= [v3 length]))
          {
            v131 = [v3 data];
            [v131 getBytes:&v196 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v128 |= (v196 & 0x7F) << v126;
          if ((v196 & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v26 = v127++ >= 9;
          if (v26)
          {
            v62 = 0;
            goto LABEL_367;
          }
        }

        if ([v3 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v128;
        }

LABEL_367:
        v153 = 284;
        goto LABEL_368;
      case 23:
        if (!v31)
        {
          goto LABEL_332;
        }

        if ((*(a1 + 323) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_491;
          }

          v154 = *(a1 + 320) << 32;
          goto LABEL_402;
        }

        v196 = 0;
        v197 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_491;
        }

        v38 = objc_alloc_init(GEOLocalizationCapabilities);
        if (!GEOLocalizationCapabilitiesReadAllFrom(v38, v3))
        {
          goto LABEL_490;
        }

        PBReaderRecallMark();
        v39 = 248;
        goto LABEL_322;
      case 24:
        if (!v31)
        {
          goto LABEL_332;
        }

        if ((*(a1 + 323) & 0x10) == 0)
        {
          v36 = PBReaderReadString();
          v37 = 224;
LABEL_315:
          v151 = *(a1 + v37);
          *(a1 + v37) = v36;
          goto LABEL_323;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_491;
        }

        v154 = *(a1 + 320) << 35;
        goto LABEL_402;
      case 25:
        if ((v7 & 1) == 0)
        {
          goto LABEL_332;
        }

        v145 = 0;
        v146 = 0;
        v147 = 0;
        *(a1 + 320) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v196) = 0;
          v148 = objc_msgSend_position(v3) + 1;
          if (v148 >= objc_msgSend_position(v3) && (v149 = objc_msgSend_position(v3) + 1, v149 <= [v3 length]))
          {
            v150 = [v3 data];
            [v150 getBytes:&v196 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v147 |= (v196 & 0x7F) << v145;
          if ((v196 & 0x80) == 0)
          {
            break;
          }

          v145 += 7;
          v26 = v146++ >= 9;
          if (v26)
          {
            v48 = 0;
            goto LABEL_372;
          }
        }

        v48 = (v147 != 0) & ~[v3 hasError];
LABEL_372:
        v152 = 313;
        goto LABEL_373;
      case 26:
        if (!v31 || (*(a1 + 322) & 2) != 0)
        {
          goto LABEL_332;
        }

        if (v29 != 2)
        {
          v173 = 0;
          v174 = 0;
          v175 = 0;
          while (1)
          {
            LOBYTE(v196) = 0;
            v176 = objc_msgSend_position(v3) + 1;
            if (v176 >= objc_msgSend_position(v3) && (v177 = objc_msgSend_position(v3) + 1, v177 <= [v3 length]))
            {
              v178 = [v3 data];
              [v178 getBytes:&v196 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v175 |= (v196 & 0x7F) << v173;
            if ((v196 & 0x80) == 0)
            {
              goto LABEL_448;
            }

            v173 += 7;
            v26 = v174++ >= 9;
            if (v26)
            {
              goto LABEL_449;
            }
          }
        }

        v196 = 0;
        v197 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_491;
        }

        while (1)
        {
          v113 = objc_msgSend_position(v3);
          if (v113 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_331;
          }

          v114 = 0;
          v115 = 0;
          v116 = 0;
          while (1)
          {
            v198 = 0;
            v117 = objc_msgSend_position(v3) + 1;
            if (v117 >= objc_msgSend_position(v3) && (v118 = objc_msgSend_position(v3) + 1, v118 <= [v3 length]))
            {
              v119 = [v3 data];
              [v119 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v116 |= (v198 & 0x7F) << v114;
            if ((v198 & 0x80) == 0)
            {
              break;
            }

            v114 += 7;
            v26 = v115++ >= 9;
            if (v26)
            {
              goto LABEL_225;
            }
          }

          [v3 hasError];
LABEL_225:
          PBRepeatedInt32Add();
        }

      case 27:
        if (!v31)
        {
          goto LABEL_332;
        }

        if (*(a1 + 324))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_491;
          }

          v154 = *(a1 + 320) << 31;
          goto LABEL_402;
        }

        v196 = 0;
        v197 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_491;
        }

        v38 = objc_alloc_init(GEOPDMapsSuggestionsTouristInfo);
        if (!GEOPDMapsSuggestionsTouristInfoReadAllFrom(v38, v3))
        {
          goto LABEL_490;
        }

        PBReaderRecallMark();
        v39 = 256;
        goto LABEL_322;
      case 28:
        if (!v31 || (*(a1 + 321) & 0x20) != 0)
        {
          goto LABEL_332;
        }

        if (v29 == 2)
        {
          v196 = 0;
          v197 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_491;
          }

          while (1)
          {
            v138 = objc_msgSend_position(v3);
            if (v138 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
            {
              break;
            }

            v139 = 0;
            v140 = 0;
            v141 = 0;
            while (1)
            {
              v198 = 0;
              v142 = objc_msgSend_position(v3) + 1;
              if (v142 >= objc_msgSend_position(v3) && (v143 = objc_msgSend_position(v3) + 1, v143 <= [v3 length]))
              {
                v144 = [v3 data];
                [v144 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v141 |= (v198 & 0x7F) << v139;
              if ((v198 & 0x80) == 0)
              {
                break;
              }

              v139 += 7;
              v26 = v140++ >= 9;
              if (v26)
              {
                goto LABEL_296;
              }
            }

            [v3 hasError];
LABEL_296:
            PBRepeatedInt32Add();
          }

LABEL_331:
          PBReaderRecallMark();
        }

        else
        {
          v179 = 0;
          v180 = 0;
          v181 = 0;
          while (1)
          {
            LOBYTE(v196) = 0;
            v182 = objc_msgSend_position(v3) + 1;
            if (v182 >= objc_msgSend_position(v3) && (v183 = objc_msgSend_position(v3) + 1, v183 <= [v3 length]))
            {
              v184 = [v3 data];
              [v184 getBytes:&v196 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v181 |= (v196 & 0x7F) << v179;
            if ((v196 & 0x80) == 0)
            {
              break;
            }

            v179 += 7;
            v26 = v180++ >= 9;
            if (v26)
            {
              goto LABEL_449;
            }
          }

LABEL_448:
          [v3 hasError];
LABEL_449:
          PBRepeatedInt32Add();
        }

LABEL_450:
        v17 = v195;
        goto LABEL_451;
      case 29:
        if (!v31)
        {
          goto LABEL_332;
        }

        if ((*(a1 + 324) & 2) == 0)
        {
          v36 = PBReaderReadString();
          v37 = 264;
          goto LABEL_315;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_491;
        }

        v154 = *(a1 + 320) << 30;
        goto LABEL_402;
      case 30:
        if (!v31)
        {
          goto LABEL_332;
        }

        if ((*(a1 + 323) & 0x40) == 0)
        {
          v36 = PBReaderReadString();
          v37 = 240;
          goto LABEL_315;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_491;
        }

        v154 = *(a1 + 320) << 33;
        goto LABEL_402;
      case 31:
        if ((v7 & 1) == 0)
        {
          goto LABEL_332;
        }

        v89 = 0;
        v90 = 0;
        v91 = 0;
        *(a1 + 320) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v196) = 0;
          v92 = objc_msgSend_position(v3) + 1;
          if (v92 >= objc_msgSend_position(v3) && (v93 = objc_msgSend_position(v3) + 1, v93 <= [v3 length]))
          {
            v94 = [v3 data];
            [v94 getBytes:&v196 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v91 |= (v196 & 0x7F) << v89;
          if ((v196 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v26 = v90++ >= 9;
          if (v26)
          {
            v48 = 0;
            goto LABEL_349;
          }
        }

        v48 = (v91 != 0) & ~[v3 hasError];
LABEL_349:
        v152 = 314;
        goto LABEL_373;
      case 32:
        if ((v7 & 1) == 0)
        {
          goto LABEL_332;
        }

        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 320) |= 8uLL;
        while (1)
        {
          LOBYTE(v196) = 0;
          v59 = objc_msgSend_position(v3) + 1;
          if (v59 >= objc_msgSend_position(v3) && (v60 = objc_msgSend_position(v3) + 1, v60 <= [v3 length]))
          {
            v61 = [v3 data];
            [v61 getBytes:&v196 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v58 |= (v196 & 0x7F) << v56;
          if ((v196 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v26 = v57++ >= 9;
          if (v26)
          {
            v62 = 0;
            goto LABEL_339;
          }
        }

        if ([v3 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v58;
        }

LABEL_339:
        v153 = 296;
LABEL_368:
        *(a1 + v153) = v62;
        goto LABEL_450;
      case 33:
        if (!v31 || (*(a1 + 322) & 1) != 0)
        {
          goto LABEL_332;
        }

        if (v29 != 2)
        {
          v155 = 0;
          v156 = 0;
          v157 = 0;
          while (1)
          {
            LOBYTE(v196) = 0;
            v158 = objc_msgSend_position(v3) + 1;
            if (v158 >= objc_msgSend_position(v3) && (v159 = objc_msgSend_position(v3) + 1, v159 <= [v3 length]))
            {
              v160 = [v3 data];
              [v160 getBytes:&v196 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v157 |= (v196 & 0x7F) << v155;
            if ((v196 & 0x80) == 0)
            {
              goto LABEL_448;
            }

            v155 += 7;
            v26 = v156++ >= 9;
            if (v26)
            {
              goto LABEL_449;
            }
          }
        }

        v196 = 0;
        v197 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_491;
        }

        while (1)
        {
          v49 = objc_msgSend_position(v3);
          if (v49 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_331;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          while (1)
          {
            v198 = 0;
            v53 = objc_msgSend_position(v3) + 1;
            if (v53 >= objc_msgSend_position(v3) && (v54 = objc_msgSend_position(v3) + 1, v54 <= [v3 length]))
            {
              v55 = [v3 data];
              [v55 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v52 |= (v198 & 0x7F) << v50;
            if ((v198 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v26 = v51++ >= 9;
            if (v26)
            {
              goto LABEL_85;
            }
          }

          [v3 hasError];
LABEL_85:
          PBRepeatedInt32Add();
        }

      case 34:
        if ((v7 & 1) == 0)
        {
          goto LABEL_332;
        }

        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 320) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v196) = 0;
          v45 = objc_msgSend_position(v3) + 1;
          if (v45 >= objc_msgSend_position(v3) && (v46 = objc_msgSend_position(v3) + 1, v46 <= [v3 length]))
          {
            v47 = [v3 data];
            [v47 getBytes:&v196 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v44 |= (v196 & 0x7F) << v42;
          if ((v196 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v26 = v43++ >= 9;
          if (v26)
          {
            v48 = 0;
            goto LABEL_335;
          }
        }

        v48 = (v44 != 0) & ~[v3 hasError];
LABEL_335:
        v152 = 315;
        goto LABEL_373;
      case 35:
        if ((v7 & 1) == 0)
        {
          goto LABEL_332;
        }

        v132 = 0;
        v133 = 0;
        v134 = 0;
        *(a1 + 320) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v196) = 0;
          v135 = objc_msgSend_position(v3) + 1;
          if (v135 >= objc_msgSend_position(v3) && (v136 = objc_msgSend_position(v3) + 1, v136 <= [v3 length]))
          {
            v137 = [v3 data];
            [v137 getBytes:&v196 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v134 |= (v196 & 0x7F) << v132;
          if ((v196 & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v26 = v133++ >= 9;
          if (v26)
          {
            v48 = 0;
            goto LABEL_370;
          }
        }

        v48 = (v134 != 0) & ~[v3 hasError];
LABEL_370:
        v152 = 316;
LABEL_373:
        *(a1 + v152) = v48;
        goto LABEL_450;
      default:
        if (v30 != 100)
        {
          if (v30 == 101)
          {
            if (v31)
            {
              if ((*(a1 + 322) & 4) == 0)
              {
                v196 = 0;
                v197 = 0;
                if ((PBReaderPlaceMark() & 1) == 0)
                {
                  goto LABEL_491;
                }

                v38 = objc_alloc_init(GEOABBranchInfo);
                if (!GEOABBranchInfoReadAllFrom(v38, v3, v191 & 1))
                {
                  goto LABEL_490;
                }

                PBReaderRecallMark();
                v39 = 144;
                goto LABEL_322;
              }

              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_491;
              }

              v154 = *(a1 + 320) << 45;
LABEL_402:
              v6 += v154 >> 63;
              goto LABEL_451;
            }
          }

          else
          {
LABEL_53:
            if ((v192 & 1) != 0 && (*(a1 + 321) & 0x10) == 0)
            {
              if (!*(a1 + 16))
              {
                v40 = objc_alloc_init(MEMORY[0x1E69C65D8]);
                v41 = *(a1 + 16);
                *(a1 + 16) = v40;
              }

              if (!PBUnknownFieldAdd())
              {
                v28 = 0;
                goto LABEL_455;
              }

              goto LABEL_451;
            }
          }

LABEL_332:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_491;
          }

          goto LABEL_451;
        }

        if (!v31)
        {
          goto LABEL_332;
        }

        if ((*(a1 + 322) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_491;
          }

          v154 = *(a1 + 320) << 44;
          goto LABEL_402;
        }

        v196 = 0;
        v197 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_491;
        }

        v38 = objc_alloc_init(GEOABSecondPartyPlaceRequestClientMetaData);
        if (GEOABSecondPartyPlaceRequestClientMetaDataReadAllFrom(v38, v3, v191 & 1))
        {
          PBReaderRecallMark();
          v39 = 152;
LABEL_322:
          v151 = *(a1 + v39);
          *(a1 + v39) = v38;
LABEL_323:

          --v6;
LABEL_451:
          if (!(v193 & 1 | (v6 != 0)))
          {
            goto LABEL_453;
          }

          v185 = objc_msgSend_position(v3);
          if (v185 >= [v3 length])
          {
            goto LABEL_453;
          }

          continue;
        }

LABEL_490:

LABEL_491:
        v28 = 0;
LABEL_454:
        if (v192)
        {
LABEL_455:
          *(a1 + 320) |= 0x1000uLL;
        }

        if (v17 & 1 | ((v28 & 1) == 0))
        {
          *(a1 + 320) |= 0x3FFFFE000uLL;
          goto LABEL_484;
        }

        if (v18)
        {
          while (1)
          {
            v188 = *v18++;
            v187 = v188;
            v186 = 0x800000;
            switch(v188)
            {
              case 0:
                goto LABEL_484;
              case 1:
                goto LABEL_482;
              case 2:
              case 6:
              case 7:
              case 8:
              case 10:
              case 11:
              case 12:
              case 14:
              case 16:
              case 19:
              case 22:
              case 25:
              case 31:
              case 32:
                continue;
              case 3:
                v186 = 0x1000000;
                goto LABEL_482;
              case 4:
                v186 = 0x8000000;
                goto LABEL_482;
              case 5:
                v186 = 0x20000000;
                goto LABEL_482;
              case 9:
                v186 = 0x100000;
                goto LABEL_482;
              case 13:
                v186 = 0x2000000;
                goto LABEL_482;
              case 15:
                v186 = 0x4000000;
                goto LABEL_482;
              case 17:
                v186 = 0x400000;
                goto LABEL_482;
              case 18:
                v186 = 0x4000;
                goto LABEL_482;
              case 20:
                v186 = 0x8000;
                goto LABEL_482;
              case 21:
                v186 = 0x200000;
                goto LABEL_482;
              case 23:
                v186 = 0x80000000;
                goto LABEL_482;
              case 24:
                v186 = 0x10000000;
                goto LABEL_482;
              case 26:
                v186 = 0x20000;
                goto LABEL_482;
              case 27:
                v186 = 0x100000000;
                goto LABEL_482;
              case 28:
                v186 = 0x2000;
                goto LABEL_482;
              case 29:
                v186 = 0x200000000;
                goto LABEL_482;
              case 30:
                v186 = 0x40000000;
                goto LABEL_482;
              case 33:
                v186 = 0x10000;
                goto LABEL_482;
              default:
                if (v187 == 100)
                {
                  v186 = 0x80000;
LABEL_482:
                  *(a1 + 320) |= v186;
                }

                else if (v187 == 101)
                {
                  v186 = 0x40000;
                  goto LABEL_482;
                }

                break;
            }
          }
        }

LABEL_484:
        if (v28)
        {
          v3 = ([v3 hasError] ^ 1);
          if ((v17 & 1) == 0)
          {
            return v3;
          }

LABEL_488:
          v189 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        else
        {
          v3 = 0;
          if (v17)
          {
            goto LABEL_488;
          }
        }

        return v3;
    }
  }
}

id GEOGetServiceRequesterLog()
{
  if (GEOGetServiceRequesterLog_onceToken != -1)
  {
    dispatch_once(&GEOGetServiceRequesterLog_onceToken, &__block_literal_global_155_165540);
  }

  v1 = GEOGetServiceRequesterLog_log;

  return v1;
}

id GEOURLLogFacility(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  _recordForType(&v3, a1);
  v1 = *(&v4 + 1);

  return v1;
}

void *GEOPDAnalyticMetadataReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 148))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDAnalyticMetadataReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 152));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 144) = objc_msgSend_position(v8);
  *(a1 + 148) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDAnalyticMetadataReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDAnalyticMetadataReadAllFrom_initialTag;
  }

  Specified = GEOPDAnalyticMetadataReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDAnalyticMetadataCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 152));
  return Specified;
}

void *GEOPDAnalyticMetadataReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 152));
  [v3 setLength:*(a1 + 148)];
  [v3 seekToOffset:*(a1 + 144)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = (a1 + 172);
  v11 = vld1q_dup_f32(v10);
  v12.i64[0] = 0x100000001;
  v12.i64[1] = 0x100000001;
  v13 = vaddvq_s32(vaddq_s32(vaddq_s32(vandq_s8(vshlq_u32(v11, xmmword_187FBE250), v12), vandq_s8(vshlq_u32(v11, xmmword_187FBE260), v12)), vandq_s8(vshlq_u32(v11, xmmword_187FBE270), v12)));
  while (1)
  {
    v14 = a3[v6];
    if (v14 > -3)
    {
      break;
    }

    if (v14 == -4)
    {
      ++v13;
      v8 = 1;
      goto LABEL_12;
    }

    if (v14 == -3)
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_11:
    ++v13;
LABEL_12:
    ++v6;
  }

  if (v14 >= 0xFFFFFFFE)
  {
    v8 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if (v14)
  {
    goto LABEL_11;
  }

  v15 = v13 > 7;
  v16 = v15 & ~v9 | v8;
  v17 = v9 | v15;
  LODWORD(v104) = v16;
  HIDWORD(v104) = v17 | v8;
  if ((v17 | v7))
  {
    v18 = 0;
  }

  else
  {
    v18 = a3;
  }

  v105 = (v18 == 0) | v17;
  v106 = v17;
  while (2)
  {
    v19 = objc_msgSend_position(v3, v104);
    if (v19 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_228:
      v28 = 1;
      goto LABEL_229;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      LOBYTE(v107) = 0;
      v23 = objc_msgSend_position(v3) + 1;
      if (v23 >= objc_msgSend_position(v3) && (v24 = objc_msgSend_position(v3) + 1, v24 <= [v3 length]))
      {
        v25 = [v3 data];
        [v25 getBytes:&v107 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v22 |= (v107 & 0x7F) << v20;
      if ((v107 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v26 = v21++ >= 9;
      if (v26)
      {
        v22 = 0;
        goto LABEL_30;
      }
    }

    if ([v3 hasError])
    {
      v22 = 0;
    }

LABEL_30:
    v27 = [v3 hasError];
    v28 = 1;
    if ((v27 & 1) != 0 || (v22 & 7) == 4)
    {
      goto LABEL_229;
    }

    v29 = v22 >> 3;
    v30 = v106;
    if ((v105 & 1) == 0)
    {
      v31 = v18;
      do
      {
        v33 = *v31++;
        v32 = v33;
        v30 = v33 != 0;
        if (v33)
        {
          v34 = v32 == v29;
        }

        else
        {
          v34 = 1;
        }
      }

      while (!v34);
    }

    switch(v29)
    {
      case 1:
        if (!v30)
        {
          goto LABEL_176;
        }

        if ((*(a1 + 173) & 0x10) == 0)
        {
          v35 = PBReaderReadString();
          v36 = 48;
          goto LABEL_130;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_268;
        }

        v97 = (*(a1 + 172) << 19) >> 31;
        goto LABEL_225;
      case 2:
        if (!v30)
        {
          goto LABEL_176;
        }

        if ((*(a1 + 173) & 0x20) == 0)
        {
          v35 = PBReaderReadString();
          v36 = 56;
          goto LABEL_130;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_268;
        }

        v97 = (*(a1 + 172) << 18) >> 31;
        goto LABEL_225;
      case 3:
        if (!v30)
        {
          goto LABEL_176;
        }

        if ((*(a1 + 173) & 0x40) == 0)
        {
          v35 = PBReaderReadString();
          v36 = 64;
          goto LABEL_130;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_268;
        }

        v97 = (*(a1 + 172) << 17) >> 31;
        goto LABEL_225;
      case 4:
        if (!v30)
        {
          goto LABEL_176;
        }

        if ((*(a1 + 174) & 1) == 0)
        {
          v35 = PBReaderReadString();
          v36 = 80;
          goto LABEL_130;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_268;
        }

        v97 = (*(a1 + 172) << 15) >> 31;
        goto LABEL_225;
      case 5:
        if (!v30)
        {
          goto LABEL_176;
        }

        if ((*(a1 + 174) & 4) == 0)
        {
          v35 = PBReaderReadString();
          v36 = 96;
LABEL_130:
          v67 = *(a1 + v36);
          *(a1 + v36) = v35;
          goto LABEL_131;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_268;
        }

        v97 = (*(a1 + 172) << 13) >> 31;
        goto LABEL_225;
      case 6:
        if ((v7 & 1) == 0)
        {
          goto LABEL_176;
        }

        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 172) |= 0x100u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v56 = objc_msgSend_position(v3) + 1;
          if (v56 >= objc_msgSend_position(v3) && (v57 = objc_msgSend_position(v3) + 1, v57 <= [v3 length]))
          {
            v58 = [v3 data];
            [v58 getBytes:&v107 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v55 |= (v107 & 0x7F) << v53;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v26 = v54++ >= 9;
          if (v26)
          {
            v52 = 0;
            goto LABEL_186;
          }
        }

        v52 = (v55 != 0) & ~[v3 hasError];
LABEL_186:
        v96 = 170;
        goto LABEL_200;
      case 7:
        if ((v7 & 1) == 0)
        {
          goto LABEL_176;
        }

        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 172) |= 0x80u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v63 = objc_msgSend_position(v3) + 1;
          if (v63 >= objc_msgSend_position(v3) && (v64 = objc_msgSend_position(v3) + 1, v64 <= [v3 length]))
          {
            v65 = [v3 data];
            [v65 getBytes:&v107 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v62 |= (v107 & 0x7F) << v60;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v26 = v61++ >= 9;
          if (v26)
          {
            v52 = 0;
            goto LABEL_188;
          }
        }

        v52 = (v62 != 0) & ~[v3 hasError];
LABEL_188:
        v96 = 169;
        goto LABEL_200;
      case 8:
        if ((v7 & 1) == 0)
        {
          goto LABEL_176;
        }

        v107 = 0;
        v108 = 0;
        if (!PBReaderPlaceMark() || (GEOSessionIDReadAllFrom((a1 + 24), v3) & 1) == 0)
        {
          goto LABEL_268;
        }

        PBReaderRecallMark();
        *(a1 + 172) |= 1u;
        goto LABEL_177;
      case 9:
        if ((v7 & 1) == 0)
        {
          goto LABEL_176;
        }

        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 172) |= 0x20u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v77 = objc_msgSend_position(v3) + 1;
          if (v77 >= objc_msgSend_position(v3) && (v78 = objc_msgSend_position(v3) + 1, v78 <= [v3 length]))
          {
            v79 = [v3 data];
            [v79 getBytes:&v107 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v76 |= (v107 & 0x7F) << v74;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v26 = v75++ >= 9;
          if (v26)
          {
            v45 = 0;
            goto LABEL_196;
          }
        }

        if ([v3 hasError])
        {
          v45 = 0;
        }

        else
        {
          v45 = v76;
        }

LABEL_196:
        v95 = 164;
        goto LABEL_197;
      case 10:
        if ((v7 & 1) == 0)
        {
          goto LABEL_176;
        }

        v68 = 0;
        v69 = 0;
        v70 = 0;
        *(a1 + 172) |= 8u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v71 = objc_msgSend_position(v3) + 1;
          if (v71 >= objc_msgSend_position(v3) && (v72 = objc_msgSend_position(v3) + 1, v72 <= [v3 length]))
          {
            v73 = [v3 data];
            [v73 getBytes:&v107 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v70 |= (v107 & 0x7F) << v68;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v68 += 7;
          v26 = v69++ >= 9;
          if (v26)
          {
            v45 = 0;
            goto LABEL_192;
          }
        }

        if ([v3 hasError])
        {
          v45 = 0;
        }

        else
        {
          v45 = v70;
        }

LABEL_192:
        v95 = 156;
        goto LABEL_197;
      case 12:
        if ((v7 & 1) == 0)
        {
          goto LABEL_176;
        }

        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 172) |= 0x40u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v49 = objc_msgSend_position(v3) + 1;
          if (v49 >= objc_msgSend_position(v3) && (v50 = objc_msgSend_position(v3) + 1, v50 <= [v3 length]))
          {
            v51 = [v3 data];
            [v51 getBytes:&v107 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v48 |= (v107 & 0x7F) << v46;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v26 = v47++ >= 9;
          if (v26)
          {
            v52 = 0;
            goto LABEL_184;
          }
        }

        v52 = (v48 != 0) & ~[v3 hasError];
LABEL_184:
        v96 = 168;
        goto LABEL_200;
      case 13:
        if (!v30 || (*(a1 + 174) & 0x20) != 0)
        {
          goto LABEL_176;
        }

        v107 = 0;
        v108 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_268;
        }

        v59 = objc_alloc_init(GEOGeoServiceTag);
        if (!GEOGeoServiceTagReadAllFrom(v59, v3))
        {
          goto LABEL_267;
        }

        PBReaderRecallMark();
        [(GEOPDAnalyticMetadata *)a1 _addNoFlagsServiceTag:v59];

        goto LABEL_177;
      case 14:
        if (!v30)
        {
          goto LABEL_176;
        }

        if ((*(a1 + 174) & 8) == 0)
        {
          v35 = PBReaderReadString();
          v36 = 104;
          goto LABEL_130;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_268;
        }

        v97 = (*(a1 + 172) << 12) >> 31;
        goto LABEL_225;
      case 15:
        if (!v30)
        {
          goto LABEL_176;
        }

        if ((*(a1 + 174) & 2) == 0)
        {
          v35 = PBReaderReadString();
          v36 = 88;
          goto LABEL_130;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_268;
        }

        v97 = (*(a1 + 172) << 14) >> 31;
        goto LABEL_225;
      case 16:
        if (!v30)
        {
          goto LABEL_176;
        }

        if ((*(a1 + 173) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_268;
          }

          v97 = (*(a1 + 172) << 20) >> 31;
          goto LABEL_225;
        }

        v107 = 0;
        v108 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_268;
        }

        v59 = objc_alloc_init(GEOAbAssignInfo);
        if (!GEOAbAssignInfoReadAllFrom(v59, v3))
        {
          goto LABEL_267;
        }

        PBReaderRecallMark();
        v66 = 40;
        goto LABEL_123;
      case 17:
        if (!v30)
        {
          goto LABEL_176;
        }

        if ((*(a1 + 174) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_268;
          }

          v97 = (*(a1 + 172) << 11) >> 31;
LABEL_225:
          v6 += v97;
          goto LABEL_177;
        }

        v107 = 0;
        v108 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_268;
        }

        v59 = objc_alloc_init(GEOLocalTime);
        if (GEOLocalTimeReadAllFrom(v59, v3))
        {
          PBReaderRecallMark();
          v66 = 120;
LABEL_123:
          v67 = *(a1 + v66);
          *(a1 + v66) = v59;
LABEL_131:

          --v6;
LABEL_177:
          if (!(BYTE4(v104) & 1 | (v6 != 0)))
          {
            goto LABEL_228;
          }

          continue;
        }

LABEL_267:

LABEL_268:
        v28 = 0;
LABEL_229:
        if (v104)
        {
LABEL_230:
          *(a1 + 172) |= 0x400u;
        }

        if (v106 & 1 | ((v28 & 1) == 0))
        {
          *(a1 + 172) |= 0x1000u;
          *(a1 + 172) |= 0x2000u;
          *(a1 + 172) |= 0x4000u;
          *(a1 + 172) |= 0x10000u;
          *(a1 + 172) |= 0x8000u;
          *(a1 + 172) |= 0x40000u;
          *(a1 + 172) |= 0x200000u;
          *(a1 + 172) |= 0x80000u;
          *(a1 + 172) |= 0x20000u;
          *(a1 + 172) |= 0x800u;
          *(a1 + 172) |= 0x100000u;
          goto LABEL_261;
        }

        if (v18)
        {
          while (1)
          {
            v100 = *v18++;
            v99 = v100;
            if (v100 > 12)
            {
              if (v99 > 15)
              {
                switch(v99)
                {
                  case 16:
                    v101 = 2048;
                    break;
                  case 17:
                    v101 = 0x100000;
                    break;
                  case 21:
                    v101 = 0x8000;
                    break;
                  default:
                    continue;
                }
              }

              else
              {
                switch(v99)
                {
                  case 13:
                    v101 = 0x200000;
                    break;
                  case 14:
                    v101 = 0x80000;
                    break;
                  case 15:
                    v101 = 0x20000;
                    break;
                  default:
                    continue;
                }
              }

              goto LABEL_259;
            }

            if (v99 > 2)
            {
              switch(v99)
              {
                case 3:
                  v101 = 0x4000;
                  break;
                case 4:
                  v101 = 0x10000;
                  break;
                case 5:
                  v101 = 0x40000;
                  break;
                default:
                  continue;
              }

              goto LABEL_259;
            }

            if (v99 == 1)
            {
              break;
            }

            if (v99 == 2)
            {
              v101 = 0x2000;
LABEL_259:
              *(a1 + 172) |= v101;
              continue;
            }

            if (!v99)
            {
              goto LABEL_261;
            }
          }

          v101 = 4096;
          goto LABEL_259;
        }

LABEL_261:
        if (v28)
        {
          v3 = ([v3 hasError] ^ 1);
        }

        else
        {
          v3 = 0;
        }

        if (v106)
        {
          v102 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        return v3;
      case 18:
        if ((v7 & 1) == 0)
        {
          goto LABEL_176;
        }

        *(a1 + 172) |= 2u;
        v107 = 0;
        v86 = objc_msgSend_position(v3) + 8;
        if (v86 >= objc_msgSend_position(v3) && (v87 = objc_msgSend_position(v3) + 8, v87 <= [v3 length]))
        {
          v98 = [v3 data];
          [v98 getBytes:&v107 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        *(a1 + 112) = v107;
        goto LABEL_177;
      case 19:
        if ((v7 & 1) == 0)
        {
          goto LABEL_176;
        }

        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 172) |= 0x200u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v83 = objc_msgSend_position(v3) + 1;
          if (v83 >= objc_msgSend_position(v3) && (v84 = objc_msgSend_position(v3) + 1, v84 <= [v3 length]))
          {
            v85 = [v3 data];
            [v85 getBytes:&v107 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v82 |= (v107 & 0x7F) << v80;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v26 = v81++ >= 9;
          if (v26)
          {
            v52 = 0;
            goto LABEL_199;
          }
        }

        v52 = (v82 != 0) & ~[v3 hasError];
LABEL_199:
        v96 = 171;
LABEL_200:
        *(a1 + v96) = v52;
        goto LABEL_177;
      case 20:
        if ((v7 & 1) == 0)
        {
          goto LABEL_176;
        }

        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + 172) |= 0x10u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v42 = objc_msgSend_position(v3) + 1;
          if (v42 >= objc_msgSend_position(v3) && (v43 = objc_msgSend_position(v3) + 1, v43 <= [v3 length]))
          {
            v44 = [v3 data];
            [v44 getBytes:&v107 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v41 |= (v107 & 0x7F) << v39;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v26 = v40++ >= 9;
          if (v26)
          {
            v45 = 0;
            goto LABEL_182;
          }
        }

        if ([v3 hasError])
        {
          v45 = 0;
        }

        else
        {
          v45 = v41;
        }

LABEL_182:
        v95 = 160;
LABEL_197:
        *(a1 + v95) = v45;
        goto LABEL_177;
      case 21:
        if (!v30)
        {
          goto LABEL_176;
        }

        if ((*(a1 + 173) & 0x80) == 0)
        {
          v35 = PBReaderReadString();
          v36 = 72;
          goto LABEL_130;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_268;
        }

        v97 = (*(a1 + 172) << 16) >> 31;
        goto LABEL_225;
      case 22:
        if ((v7 & 1) == 0)
        {
          goto LABEL_176;
        }

        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(a1 + 172) |= 4u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v91 = objc_msgSend_position(v3) + 1;
          if (v91 >= objc_msgSend_position(v3) && (v92 = objc_msgSend_position(v3) + 1, v92 <= [v3 length]))
          {
            v93 = [v3 data];
            [v93 getBytes:&v107 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v90 |= (v107 & 0x7F) << v88;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v26 = v89++ >= 9;
          if (v26)
          {
            v94 = 0;
            goto LABEL_204;
          }
        }

        if ([v3 hasError])
        {
          v94 = 0;
        }

        else
        {
          v94 = v90;
        }

LABEL_204:
        *(a1 + 136) = v94;
        goto LABEL_177;
      default:
        if ((v104 & 1) == 0 || (*(a1 + 173) & 4) != 0)
        {
LABEL_176:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_268;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v37 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v38 = *(a1 + 16);
            *(a1 + 16) = v37;
          }

          if (!PBUnknownFieldAdd())
          {
            v28 = 0;
            goto LABEL_230;
          }
        }

        goto LABEL_177;
    }
  }
}

uint64_t GEOGeoServiceTagReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v29 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v29 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
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
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          break;
        }

        v14 = v7 >> 3;
        if (v14 == 2)
        {
          v22 = PBReaderReadString();
          v23 = *(a1 + 16);
          *(a1 + 16) = v22;
        }

        else if (v14 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v30 = 0;
            v18 = objc_msgSend_position(v3);
            if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
            {
              v20 = [v3 data];
              [v20 getBytes:&v30 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v30 & 0x7F) << v15;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_38;
            }
          }

          if ([v3 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_38:
          *(a1 + 24) = v21;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v24 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v25 = *(a1 + 8);
            *(a1 + 8) = v24;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_41;
          }
        }

        v26 = objc_msgSend_position(v3);
      }

      while (v26 < [v3 length]);
    }

    v27 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_41:
    v27 = 0;
  }

  objc_sync_exit(v3);

  return v27;
}

uint64_t _GEOPDAnalyticMetadataCallReadAllRecursiveWithoutSynchronized(id *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = a1[16];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) readAll:{1, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [a1[5] readAll:1];
  return [a1[15] readAll:1];
}

void _GEOPDPlaceRequestCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  [*(a1 + 24) readAll:1];
  [*(a1 + 40) readAll:1];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 96);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    while (1)
    {
      if (*v23 != v5)
      {
        objc_enumerationMutation(v2);
      }

      if (!--v4)
      {
        v4 = [v2 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (!v4)
        {
          break;
        }
      }
    }
  }

  [(GEOPDPlaceRequestParameters *)*(a1 + 80) readAll:?];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v6);
      }

      if (!--v8)
      {
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v27 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  [*(a1 + 88) readAll:1];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v10 = *(a1 + 72);
  v11 = [v10 countByEnumeratingWithState:&v14 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v15;
    while (1)
    {
      if (*v15 != v13)
      {
        objc_enumerationMutation(v10);
      }

      if (!--v12)
      {
        v12 = [v10 countByEnumeratingWithState:&v14 objects:v26 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }
}

void *GEOAdditionalEnabledMarketsReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOAdditionalEnabledMarketsReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 48));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 40) = objc_msgSend_position(v8);
  *(a1 + 44) = [v8 length];
  if (a3)
  {
    v9 = &GEOAdditionalEnabledMarketsReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOAdditionalEnabledMarketsReadAllFrom_initialTag;
  }

  Specified = GEOAdditionalEnabledMarketsReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOAdditionalEnabledMarketsReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 48));
  [v3 setLength:*(a1 + 44)];
  [v3 seekToOffset:*(a1 + 40)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = ((*(a1 + 52) >> 1) & 1) + (*(a1 + 52) & 1) + ((*(a1 + 52) >> 2) & 1);
  while (1)
  {
    v11 = a3[v9];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      goto LABEL_10;
    }

    if (v11 == -3)
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    ++v10;
LABEL_13:
    ++v9;
  }

  if (v11 >= 0xFFFFFFFE)
  {
    v6 = 1;
LABEL_10:
    v7 = 1;
    goto LABEL_13;
  }

  if (v11)
  {
    goto LABEL_12;
  }

  v12 = v10 != 0;
  v13 = v6 | v12;
  v41 = v12 & ~v6 | v7;
  if (((v6 | v12) | v8))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  v15 = v9 != 0;
  v16 = objc_msgSend_position(v3);
  if (v16 < [v3 length])
  {
    v17 = v15 | v7 | v13;
    while (1)
    {
      if ([v3 hasError])
      {
        goto LABEL_60;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v42 = 0;
        v21 = objc_msgSend_position(v3) + 1;
        if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
        {
          v23 = [v3 data];
          [v23 getBytes:&v42 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v20 |= (v42 & 0x7F) << v18;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        if (v19++ >= 9)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      if ([v3 hasError])
      {
        v20 = 0;
      }

LABEL_31:
      v25 = [v3 hasError];
      v26 = 1;
      if ((v25 & 1) != 0 || (v20 & 7) == 4)
      {
        goto LABEL_61;
      }

      v27 = v20 >> 3;
      v28 = v13;
      if (!((v14 == 0) | v13 & 1))
      {
        v29 = v14;
        do
        {
          v31 = *v29++;
          v30 = v31;
          v28 = v31 != 0;
          if (v31)
          {
            v32 = v30 == v27;
          }

          else
          {
            v32 = 1;
          }
        }

        while (!v32);
      }

      if (v27 == 2)
      {
        break;
      }

      if (v27 == 1)
      {
        if (!v28 || (*(a1 + 52) & 4) != 0)
        {
          goto LABEL_58;
        }

        v33 = PBReaderReadString();
        if (v33)
        {
          [(GEOAdditionalEnabledMarkets *)a1 _addNoFlagsTransitMarket:v33];
        }

LABEL_50:

        goto LABEL_56;
      }

      if (v41 & 1) == 0 || (*(a1 + 52))
      {
        goto LABEL_58;
      }

      if (!*(a1 + 16))
      {
        v34 = objc_alloc_init(MEMORY[0x1E69C65D8]);
        v35 = *(a1 + 16);
        *(a1 + 16) = v34;
      }

      if ((PBUnknownFieldAdd() & 1) == 0)
      {
        v26 = 0;
        goto LABEL_62;
      }

LABEL_56:
      if ((v17 & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_59:
      v36 = objc_msgSend_position(v3);
      if (v36 >= [v3 length])
      {
        goto LABEL_60;
      }
    }

    if (!v28 || (*(a1 + 52) & 2) != 0)
    {
LABEL_58:
      v26 = PBReaderSkipValueWithTag();
      if ((v26 & v17 & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_59;
    }

    v33 = PBReaderReadString();
    if (v33)
    {
      [(GEOAdditionalEnabledMarkets *)a1 _addNoFlagsOfflineMarket:v33];
    }

    goto LABEL_50;
  }

LABEL_60:
  v26 = 1;
LABEL_61:
  if (v41)
  {
LABEL_62:
    *(a1 + 52) |= 1u;
  }

  if (!(v13 & 1 | ((v26 & 1) == 0)))
  {
    if (!v14)
    {
      goto LABEL_72;
    }

    while (1)
    {
      while (1)
      {
        v38 = *v14++;
        v37 = v38;
        if (v38 != 1)
        {
          break;
        }

        LOBYTE(v37) = 4;
LABEL_71:
        *(a1 + 52) |= v37;
      }

      if (v37 == 2)
      {
        goto LABEL_71;
      }

      if (!v37)
      {
        goto LABEL_72;
      }
    }
  }

  *(a1 + 52) |= 4u;
  *(a1 + 52) |= 2u;
LABEL_72:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

    goto LABEL_76;
  }

  v3 = 0;
  if (v13)
  {
LABEL_76:
    v39 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

uint64_t GEOLocalizationCapabilitiesReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v42[0]) = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:v42 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v42[0] & 0x7F) << v5;
          if ((v42[0] & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = v7 & 7;
        v14 = v13 == 4 ? 1 : v12;
        if (v14)
        {
          break;
        }

        v15 = v7 >> 3;
        if (v15 == 2)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            LOBYTE(v42[0]) = 0;
            v27 = objc_msgSend_position(v3);
            if (v27 + 1 >= objc_msgSend_position(v3) && (v28 = objc_msgSend_position(v3), v28 + 1 <= [v3 length]))
            {
              v29 = [v3 data];
              [v29 getBytes:v42 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v26 |= (v42[0] & 0x7F) << v24;
            if ((v42[0] & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              LOBYTE(v30) = 0;
              goto LABEL_51;
            }
          }

          v30 = (v26 != 0) & ~[v3 hasError];
LABEL_51:
          *(a1 + 40) = v30;
        }

        else if (v15 == 1)
        {
          if (v13 == 2)
          {
            v42[0] = 0;
            v42[1] = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_66;
            }

            v16 = objc_msgSend_position(v3);
            for (i = [v3 length]; v16 < i && (objc_msgSend(v3, "hasError") & 1) == 0; i = objc_msgSend(v3, "length"))
            {
              v18 = 0;
              v19 = 0;
              v20 = 0;
              while (1)
              {
                v43 = 0;
                v21 = objc_msgSend_position(v3);
                if (v21 + 1 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3), v22 + 1 <= [v3 length]))
                {
                  v23 = [v3 data];
                  [v23 getBytes:&v43 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v20 |= (v43 & 0x7F) << v18;
                if ((v43 & 0x80) == 0)
                {
                  break;
                }

                v18 += 7;
                v11 = v19++ >= 9;
                if (v11)
                {
                  goto LABEL_36;
                }
              }

              [v3 hasError];
LABEL_36:
              PBRepeatedInt32Add();
              v16 = objc_msgSend_position(v3);
            }

            PBReaderRecallMark();
          }

          else
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            while (1)
            {
              LOBYTE(v42[0]) = 0;
              v36 = objc_msgSend_position(v3);
              if (v36 + 1 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3), v37 + 1 <= [v3 length]))
              {
                v38 = [v3 data];
                [v38 getBytes:v42 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v35 |= (v42[0] & 0x7F) << v33;
              if ((v42[0] & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                goto LABEL_63;
              }
            }

            [v3 hasError];
LABEL_63:
            PBRepeatedInt32Add();
          }
        }

        else
        {
          if (!*(a1 + 8))
          {
            v31 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v32 = *(a1 + 8);
            *(a1 + 8) = v31;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_66;
          }
        }

        v39 = objc_msgSend_position(v3);
      }

      while (v39 < [v3 length]);
    }

    v40 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_66:
    v40 = 0;
  }

  objc_sync_exit(v3);

  return v40;
}

uint64_t _GEOPDClientMetadataCallReadAllRecursiveWithoutSynchronized(id *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [a1[20] readAll:1];
  [a1[25] readAll:1];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = a1[26];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) readAll:{1, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [a1[31] readAll:1];
  [a1[19] readAll:1];
  return [a1[18] readAll:1];
}

uint64_t _GEOABSecondPartyPlaceRequestClientMetaDataCallReadAllRecursiveWithoutSynchronized(id *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = a1[5];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v17 + 1) + 8 * v6++) readAll:1];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = a1[3];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) readAll:{1, v13}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v9);
  }

  return [a1[4] readAll:1];
}

void GEOWaitForURLsFromManifestAndThenOnQueue(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [_GEOURLManifestListenerCallbackWithQueue alloc];
  v6 = v4;
  v7 = v3;
  v8 = v7;
  if (v5 && v7)
  {
    v30.receiver = v5;
    v30.super_class = _GEOURLManifestListenerCallbackWithQueue;
    v9 = objc_msgSendSuper2(&v30, sel_init);
    if (v9)
    {
      v10 = [v8 copy];
      v11 = *(v9 + 1);
      *(v9 + 1) = v10;

      objc_storeStrong(v9 + 2, a1);
      v12 = voucher_copy();
      v13 = *(v9 + 3);
      *(v9 + 3) = v12;

      *(v9 + 8) = qos_class_self();
    }

    v5 = v9;
    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  objc_opt_self();
  if (sharedListener_once[0] != -1)
  {
    dispatch_once(sharedListener_once, &__block_literal_global_130);
  }

  v15 = sharedListener_singleton;
  v16 = v14;
  v29 = v16;
  if (v15)
  {
    if (v16)
    {
      os_unfair_lock_lock_with_options();
      v17 = [*(v15 + 1) count];
      [*(v15 + 1) addObject:v29];
      os_unfair_lock_unlock(v15 + 4);
      if (!v17)
      {
        v18 = +[GEONotificationPreferenceManager sharedManager];
        v19 = [v18 isEnabledForSubTestWithName:@"GEOPPTTest_Manifest"];

        if (v19)
        {
          v20 = [MEMORY[0x1E696AD88] defaultCenter];
          [v20 postNotificationName:@"GEOPPTTest_ManifestBEGIN" object:0];
        }

        v21 = +[GEOResourceManifestManager modernManager];
        v22 = [v21 hasActiveTileGroup];

        v38 = 0;
        v39 = &v38;
        v40 = 0x2020000000;
        v41 = v22 ^ 1;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __55___GEOURLManifestListener_waitForManifestWithCallback___block_invoke;
        block[3] = &unk_1E7073678;
        block[4] = &v38;
        if (waitForManifestWithCallback__once == -1)
        {
          if (!v22)
          {
LABEL_17:
            if (*(v39 + 24) == 1)
            {
              v35[0] = 0;
              v35[1] = v35;
              v35[2] = 0x2020000000;
              v36 = 0;
              v23 = +[GEOResourceManifestManager modernManager];
              [v23 openServerConnection];

              v24 = +[GEOResourceManifestManager modernManager];
              v30.receiver = MEMORY[0x1E69E9820];
              v30.super_class = 3221225472;
              v31 = __55___GEOURLManifestListener_waitForManifestWithCallback___block_invoke_2;
              v32 = &unk_1E7060788;
              v33 = v15;
              v34 = v35;
              [v24 updateManifest:&v30];

              v25 = MEMORY[0x1E69E96A0];
              v26 = geo_dispatch_timer_create_on_queue();

              os_unfair_lock_lock_with_options();
              v27 = *(v15 + 3);
              *(v15 + 3) = v26;
              v28 = v26;

              os_unfair_lock_unlock(v15 + 4);
              dispatch_activate(v28);

              _Block_object_dispose(v35, 8);
            }

            _Block_object_dispose(&v38, 8);
            goto LABEL_20;
          }
        }

        else
        {
          dispatch_once(&waitForManifestWithCallback__once, block);
          if (!v22)
          {
            goto LABEL_17;
          }
        }

        [v15 _finish:1];
        goto LABEL_17;
      }
    }
  }

LABEL_20:
}

void sub_186688578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v21 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t GEOPDTimeRangeWriteTo(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 8);
  if ((v3 & 2) != 0)
  {
    result = PBDataWriterWriteUint32Field();
    v3 = *(v2 + 8);
  }

  if (v3)
  {

    return PBDataWriterWriteUint32Field();
  }

  return result;
}

id GEOGetDataSessionURLLog()
{
  if (GEOGetDataSessionURLLog_onceToken != -1)
  {
    dispatch_once(&GEOGetDataSessionURLLog_onceToken, &__block_literal_global_66444);
  }

  v1 = GEOGetDataSessionURLLog_log;

  return v1;
}

uint64_t GEOURLSupportsMPTCP(uint64_t a1)
{
  v1 = _GEOURLInfoFromActiveTileGroup(a1);
  v2 = [v1 supportsMultipathTCP];

  return v2;
}

uint64_t GEOURLMultipathAlternatePort(uint64_t a1)
{
  v1 = _GEOURLInfoFromActiveTileGroup(a1);
  if ([v1 supportsMultipathTCP] && objc_msgSend(v1, "hasAlternativeMultipathTCPPort"))
  {
    v2 = [v1 alternativeMultipathTCPPort];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t GEODataURLSessionGetIdentifierFromSession(void *a1)
{
  v1 = [a1 sessionDescription];
  if (v1)
  {
    v2 = [MEMORY[0x1E696AE88] scannerWithString:v1];
    [v2 setCharactersToBeSkipped:0];
    v6 = 0;
    if ([v2 scanString:@"[" intoString:0] && objc_msgSend(v2, "scanUnsignedLongLong:", &v6))
    {
      v3 = [v2 scanString:@"]" intoString:0];
      if ((v3 & (HIDWORD(v6) == 0)) != 0)
      {
        v4 = v6;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t GEOURLNeedsAuthForURLType(uint64_t a1)
{
  v2 = +[GEOResourceManifestManager modernManager];
  v3 = [v2 activeTileGroup];
  if (GEOAuthProxyEnabledForActiveTileGroup(v3))
  {
    v4 = _GEOURLInfoFromActiveTileGroup(a1);
    v5 = [v4 useAuthProxy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t GEOAuthProxyEnabledForActiveTileGroup(void *a1)
{
  v1 = [a1 urlInfoSet];
  v2 = GEOAuthProxyEnabledForURLInfoSet(v1);

  return v2;
}

id _protobufHTTPHeaders(void *a1, unint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  UInteger = GEOConfigGetUInteger(74, &GeoServicesConfig_ProtobufSessionAdditionalHTTPHeaders_Metadata);
  if (!UInteger)
  {
    v10 = v5;
    goto LABEL_22;
  }

  v8 = UInteger;
  if (v5)
  {
    v9 = [v5 mutableCopy];
  }

  else
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
  }

  v10 = v9;
  if (v8)
  {
    [v9 setObject:@"application/octet-stream" forKeyedSubscript:@"Content-Type"];
  }

  if ((v8 & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%#x", GEOThrottleKeyMakeFromRequestKind(a2)];
    [v10 setObject:v11 forKeyedSubscript:@"X-Apple-Maps-Request-Type"];
  }

  if ((v8 & 0x20) != 0)
  {
    v12 = +[GEOPlatform sharedPlatform];
    v13 = [v12 productName];
    [v10 setObject:v13 forKeyedSubscript:@"X-Apple-Maps-OS-Name"];

    if ((v8 & 0x40) == 0)
    {
LABEL_12:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_13;
      }

LABEL_17:
      v16 = +[GEOPlatform sharedPlatform];
      v17 = [v16 buildVersion];
      [v10 setObject:v17 forKeyedSubscript:@"X-Apple-Maps-OS-Build"];

      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_12;
  }

  v14 = +[GEOPlatform sharedPlatform];
  v15 = [v14 osVersion];
  [v10 setObject:v15 forKeyedSubscript:@"X-Apple-Maps-OS-Version"];

  if (v8 < 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_18:
  if ((v8 & 4) != 0)
  {
    v20 = [v6 appIdentifier];
    [v10 setObject:v20 forKeyedSubscript:@"X-Apple-Maps-App-Identifier"];

    if ((v8 & 8) == 0)
    {
LABEL_20:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 8) == 0)
  {
    goto LABEL_20;
  }

  v21 = [v6 appMajorVersion];
  [v10 setObject:v21 forKeyedSubscript:@"X-Apple-Maps-App-Version-Major"];

  if ((v8 & 0x10) != 0)
  {
LABEL_21:
    v18 = [v6 appMinorVersion];
    [v10 setObject:v18 forKeyedSubscript:@"X-Apple-Maps-App-Version-Minor"];
  }

LABEL_22:

  return v10;
}

id _GEOGetQueryForExperimentType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a3];
  v9 = _getValue(a1, a2, 1, 0, 0, 0);
  v10 = [v9 objectForKeyedSubscript:v8];
  if (a3 == 1)
  {
    if (a4 >= 0x41)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a4];
    }

    else
    {
      v11 = off_1E7060DA8[a4];
    }

    v12 = [v10 objectForKeyedSubscript:v11];

    v10 = v12;
  }

  return v10;
}

BOOL GEOCreateBodyDataForProtocolBufferRequest(void *a1, unsigned int a2, int a3, void *a4)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  [v7 writeTo:v8];
  v9 = [v8 immutableData];

  v10 = 0;
  if (!v9)
  {
    goto LABEL_16;
  }

  v11 = a2;
  if (a3 && a2 == 2560)
  {
    v12 = [v9 length];
    if (v12 > GEOConfigGetUInteger(161, &GeoServicesConfig_DataRequestMinLenForCompression_Metadata))
    {
      v13 = compression_encode_scratch_buffer_size(COMPRESSION_LZ4);
      if (v13)
      {
        v14 = v27 - ((MEMORY[0x1EEE9AC00](v13) + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v14, v15);
      }

      else
      {
        v14 = 0;
      }

      v16 = ([v9 length] * 1.1);
      v17 = malloc_type_malloc(v16, 0x2D59EC42uLL);
      v18 = compression_encode_buffer(v17, v16, [v9 bytes], objc_msgSend(v9, "length"), v14, COMPRESSION_LZ4);
      if (v18)
      {
        LODWORD(v10) = 1;
        v19 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v17 length:v18 freeWhenDone:1];

        v9 = v19;
        goto LABEL_12;
      }

      free(v17);
    }

    LODWORD(v10) = 0;
  }

LABEL_12:
  v20 = v7;
  v21 = v9;
  v22 = objc_autoreleasePoolPush();
  v23 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  writeARPCPreamble(v23, v10, v11 == 2560);
  [v23 writeBigEndianFixed32:{objc_msgSend(v20, "requestTypeCode")}];
  [v23 writeProtoBuffer:v21];
  v24 = [v23 immutableData];

  objc_autoreleasePoolPop(v22);
  v10 = v24 != 0;
  if (a4 && v24)
  {
    v25 = v24;
    *a4 = v24;
  }

LABEL_16:
  return v10;
}

void writeARPCPreamble(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = a2 | a3;
  if (a2 | a3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v24 = v5;
  [v5 writeBigEndianFixed16:v7];
  v8 = [MEMORY[0x1E695DF58] preferredLanguages];
  if ([v8 count] && (objc_msgSend(v8, "objectAtIndex:", 0), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [MEMORY[0x1E695DF58] currentLocale];
    v12 = [v11 objectForKey:*MEMORY[0x1E695D978]];

    if ([v12 length])
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v10, v12];
    }

    else
    {
      v13 = v10;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E695DF58] currentLocale];
    v13 = [v12 localeIdentifier];
    v10 = 0;
  }

  v14 = v13;
  [v24 writeBigEndianShortThenString:v14];

  v15 = [MEMORY[0x1E696AAE8] mainBundle];
  v16 = [v15 bundleIdentifier];

  [v24 writeBigEndianShortThenString:v16];
  v17 = MEMORY[0x1E696AEC0];
  v18 = +[GEOPlatform sharedPlatform];
  v19 = [v18 osVersion];
  v20 = +[GEOPlatform sharedPlatform];
  v21 = [v20 buildVersion];
  v22 = [v17 stringWithFormat:@"%@.%@", v19, v21];

  [v24 writeBigEndianShortThenString:v22];
  if (v6)
  {
    if (a2)
    {
      v23 = @"LZ4";
    }

    else
    {
      v23 = @"NONE";
    }

    [v24 writeBigEndianShortThenString:v23];
  }
}

uint64_t GEOThrottleKeyMakeFromRequestKind(unint64_t a1)
{
  v1 = 0;
  if (a1 > 1791)
  {
    if ((a1 - 2816) <= 0x2D && ((1 << a1) & 0x23F700000003) != 0 || a1 == 2560)
    {
      return HIDWORD(a1) | a1 | 0x20000;
    }

    if (a1 != 1792)
    {
      return v1;
    }

    goto LABEL_14;
  }

  if (a1 <= 671)
  {
    if ((a1 - 1) >= 6 && a1 != 512)
    {
      return v1;
    }

    return HIDWORD(a1) | a1 | 0x20000;
  }

  if ((a1 - 672) < 2)
  {
    return HIDWORD(a1) | a1 | 0x20000;
  }

  if (a1 == 768 || a1 == 1280)
  {
LABEL_14:
    if (HIDWORD(a1) == 26)
    {
      return 133927;
    }

    return HIDWORD(a1) | a1 | 0x20000;
  }

  return v1;
}

id GEOGetDataSessionProtobufLog()
{
  if (GEOGetDataSessionProtobufLog_onceToken != -1)
  {
    dispatch_once(&GEOGetDataSessionProtobufLog_onceToken, &__block_literal_global_209);
  }

  v1 = GEOGetDataSessionProtobufLog_log;

  return v1;
}

void _GEORequestResponseLogRequest(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if ((GEOConfigGetBOOL(204, &GeoServicesConfig_MapsRequestResponseLoggingPersisted_Metadata) & 1) != 0 || os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = [v10 data];
    v12 = _GEORequestResponseLogQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___GEORequestResponseLogRequest_block_invoke;
    block[3] = &unk_1E705FF08;
    v15 = v11;
    v16 = v7;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v13 = v11;
    dispatch_async(v12, block);
  }
}

uint64_t checkEntitlements(int a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 == 1792)
  {
    v5 = [v3 hasEntitlement:@"com.apple.geod.allow-user-initiated-request"];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

id GEOGetDecodedDefaultWithSource(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_21;
  }

  v20 = 0;
  v10 = _GEOConfigStorageCFProfile();
  v11 = [v10 getConfigValueForKey:v7 countryCode:0 options:0 source:&v20];

  if (v9 && v11)
  {
    v12 = v9[2](v9, v11);

    v11 = v12;
  }

  if (!v20)
  {
    v13 = _GEOConfigProxy();
    v14 = [v13 configStoreForOptions:983040];

    v15 = [v14 getConfigValueForKey:v7 countryCode:0 options:983040 source:&v20];

    if (v9 && v15)
    {
      v16 = v9[2](v9, v15);

      v15 = v16;
    }

    v11 = v15;
    if (v15)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (!v11)
  {
LABEL_12:
    v17 = _GEOGetConfigStorageRemote();
    v11 = [v17 getConfigValueForKey:v7 countryCode:0 options:0 source:&v20];

    if (v9 && v11)
    {
      v18 = v9[2](v9, v11);

      v11 = v18;
    }

    if (v8 && !v11)
    {
      v11 = v8;
    }
  }

LABEL_18:
  if (a3 && v11)
  {
    *a3 = 0;
  }

LABEL_21:

  return v11;
}

void GEOGloriaEnumerateQuadKeysWithinRadiusFromCoordinate(const double *a1, char a2, void *a3, double a4, double a5, double a6)
{
  v13 = a3;
  v14 = a6 < 0.0 || a1 > 0x1E;
  if (!v14 && fabs(a5) <= 180.0 && fabs(a4) <= 90.0)
  {
    gloria::TileCoordinate::FromLatLng(v104, a1, v11, v12, a4, a5);
    v15 = GEOCoordinateRegionMakeWithDistance(a4);
    GEOCoordinatesForRegion(v103, v102, v15, v16, v17, v18);
    gloria::TileCoordinate::FromLatLng(&v100, a1, v19, v20, v103[0], v103[1]);
    gloria::TileCoordinate::FromLatLng(&v98, a1, v21, v22, v102[0], v102[1]);
    if (v100 >= v98)
    {
      v24 = v98;
    }

    else
    {
      v24 = v100;
    }

    if (v100 <= v98)
    {
      v25 = v98;
    }

    else
    {
      v25 = v100;
    }

    if (v101 >= v99)
    {
      v26 = v99;
    }

    else
    {
      v26 = v101;
    }

    if (v101 <= v99)
    {
      v27 = v99;
    }

    else
    {
      v27 = v101;
    }

    v97 = 0;
    if (a2)
    {
      if (v25 - v24 <= v27 - v26)
      {
        v33 = v27 - v26;
      }

      else
      {
        v33 = v25 - v24;
      }

      gloria::TileId::FromXYZ(v104, v23);
      EncodedTileId = gloria::TileId::GetEncodedTileId(v34, v35);
      v13[2](v13, EncodedTileId, &v97);
      v89 = v26;
      v90 = v25;
      v92 = (v33 + 1) >> 1;
      v38 = v97;
      v39 = v104[0].i32[0];
      if (v33 + 1 < 4 || (v97 & 1) != 0)
      {
        v40 = v104[0].i32[2];
      }

      else
      {
        v87 = v27;
        v88 = v24;
        v40 = v104[0].i32[2];
        v41 = 0xFFFFFFFFLL;
        v42 = 1;
        v93 = v104[0].i32[2];
        v91 = v104[0].i32[0];
        while (1)
        {
          v43 = v39 - v42;
          v44 = (v42 + v39);
          v45 = v40 - v42;
          v94 = v41;
          if (v39 - v42 >= v44)
          {
            v38 = 0;
            LODWORD(v46) = v39 - v42;
          }

          else
          {
            v46 = (v41 + v39);
            do
            {
              v95.i64[0] = v46;
              v95.i64[1] = (v40 - v42);
              v96 = a1;
              gloria::TileId::FromXYZ(&v95, v37);
              v49 = gloria::TileId::GetEncodedTileId(v47, v48);
              v13[2](v13, v49, &v97);
              ++v46;
              v38 = v97;
            }

            while (v46 < v44 && (v97 & 1) == 0);
          }

          v50 = (v42 + v40);
          LODWORD(v51) = v40 - v42;
          if (v45 < v50 && (v38 & 1) == 0)
          {
            v51 = (v94 + v93);
            do
            {
              v95.i64[0] = v46;
              v95.i64[1] = v51;
              v96 = a1;
              gloria::TileId::FromXYZ(&v95, v37);
              v54 = gloria::TileId::GetEncodedTileId(v52, v53);
              v13[2](v13, v54, &v97);
              ++v51;
              v38 = v97;
            }

            while (v51 < v50 && (v97 & 1) == 0);
          }

          if (v46 > v43 && (v38 & 1) == 0)
          {
            v55 = v46;
            do
            {
              v95.i64[0] = v55;
              v95.i64[1] = v51;
              v96 = a1;
              gloria::TileId::FromXYZ(&v95, v37);
              v58 = gloria::TileId::GetEncodedTileId(v56, v57);
              v13[2](v13, v58, &v97);
              LODWORD(v46) = v55 - 1;
              v38 = v97;
              if (v43 >= v55 - 1)
              {
                break;
              }

              --v55;
            }

            while ((v97 & 1) == 0);
          }

          if (v51 > v45 && (v38 & 1) == 0)
          {
            v59 = v46;
            v60 = v51 - 1;
            v61 = v51;
            do
            {
              v95.i64[0] = v59;
              v95.i64[1] = v61;
              v96 = a1;
              gloria::TileId::FromXYZ(&v95, v37);
              v64 = gloria::TileId::GetEncodedTileId(v62, v63);
              v13[2](v13, v64, &v97);
              v38 = v97;
              if (v45 >= v60)
              {
                break;
              }

              --v61;
              --v60;
            }

            while ((v97 & 1) == 0);
          }

          if (++v42 >= v92)
          {
            break;
          }

          v40 = v93;
          v41 = v94 - 1;
          v39 = v91;
          if (v38)
          {
            v27 = v87;
            v24 = v88;
            goto LABEL_61;
          }
        }

        v27 = v87;
        v24 = v88;
        v40 = v93;
        v39 = v91;
      }

LABEL_61:
      v65 = v39 - v92;
      v66 = (v92 + v39);
      v67 = v40 - v92;
      if (v40 - v92 == v89 && v65 < v66 && (v38 & 1) == 0)
      {
        v68 = (v39 - v92);
        do
        {
          v95.i64[0] = v68;
          v95.i64[1] = v89;
          v96 = a1;
          gloria::TileId::FromXYZ(&v95, v37);
          v71 = gloria::TileId::GetEncodedTileId(v69, v70);
          v13[2](v13, v71, &v97);
          ++v68;
          v38 = v97;
        }

        while (v68 < v66 && (v97 & 1) == 0);
      }

      v72 = (v92 + v40);
      if (v66 == v90 && v67 < v72 && (v38 & 1) == 0)
      {
        v73 = (v40 - v92);
        do
        {
          v95.i64[0] = v90;
          v95.i64[1] = v73;
          v96 = a1;
          gloria::TileId::FromXYZ(&v95, v37);
          v76 = gloria::TileId::GetEncodedTileId(v74, v75);
          v13[2](v13, v76, &v97);
          ++v73;
          v38 = v97;
        }

        while (v73 < v72 && (v97 & 1) == 0);
      }

      if (v72 == v27 && v65 < v90 && (v38 & 1) == 0)
      {
        v77 = v90;
        v78 = v90 - 1;
        do
        {
          v95.i64[0] = v77;
          v95.i64[1] = v27;
          v96 = a1;
          gloria::TileId::FromXYZ(&v95, v37);
          v81 = gloria::TileId::GetEncodedTileId(v79, v80);
          v13[2](v13, v81, &v97);
          v38 = v97;
          if (v65 >= v78)
          {
            break;
          }

          --v77;
          --v78;
        }

        while ((v97 & 1) == 0);
      }

      if (v65 == v24 && v67 < v27 && (v38 & 1) == 0)
      {
        v82 = v27;
        v83 = v27 - 1;
        do
        {
          v95.i64[0] = v24;
          v95.i64[1] = v82;
          v96 = a1;
          gloria::TileId::FromXYZ(&v95, v37);
          v86 = gloria::TileId::GetEncodedTileId(v84, v85);
          v13[2](v13, v86, &v97);
          if (v67 >= v83)
          {
            break;
          }

          --v82;
          --v83;
        }

        while ((v97 & 1) == 0);
      }
    }

    else if (v27 >= v26)
    {
      do
      {
        if (v25 >= v24)
        {
          v29 = v24;
          do
          {
            v95.i64[0] = v29;
            v95.i64[1] = v26;
            v96 = a1;
            gloria::TileId::FromXYZ(&v95, v23);
            v32 = gloria::TileId::GetEncodedTileId(v30, v31);
            v13[2](v13, v32, &v97);
            ++v29;
            v28 = v97;
          }

          while (v29 <= v25 && (v97 & 1) == 0);
        }

        else
        {
          v28 = 0;
        }

        ++v26;
      }

      while (v26 <= v27 && (v28 & 1) == 0);
    }
  }
}

void GEOCoordinatesForRegion(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  GEOMapRectForCoordinateRegion(a3, a4, a5, a6);
  v12 = v8;
  v13 = fabs(v9) == INFINITY;
  if (fabs(v8) != INFINITY && !v13)
  {
    v18 = v8 + v10;
    v15 = v9 + v11;
    v16 = exp((v9 * 0.0078125 + -1048576.0) / 333772.107);
    *a1 = (atan(v16) * -2.0 + 1.57079633) * 57.2957795;
    *(a1 + 8) = v12 * 0.0078125 * 0.000171661377 + -180.0;
    v17 = exp((v15 * 0.0078125 + -1048576.0) / 333772.107);
    *a2 = (atan(v17) * -2.0 + 1.57079633) * 57.2957795;
    *(a2 + 8) = v18 * 0.0078125 * 0.000171661377 + -180.0;
  }

  else
  {
    *a1 = kGEOLocationCoordinate2DInvalid_169077;
    *a2 = kGEOLocationCoordinate2DInvalid_169077;
  }
}

BOOL _isAncestor(gloria::TileId *a1, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  v13 = *MEMORY[0x1E69E9840];
  gloria::TileId::TileId(&v8, a3);
  v5 = v9;
  if (v9 <= v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v3;
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "root.zoom(%hhu) !< tileID.zoom(%hhu)", buf, 0xEu);
    }

    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (result)
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: root.zoom() < tileID.zoom()", buf, 2u);
      return 0;
    }
  }

  else
  {
    *buf = gloria::TileId::Ancestor(v8, v9, (v9 - v3));
    LOBYTE(v11) = v6;
    return gloria::TileId::operator==(buf, a1, v3);
  }

  return result;
}

double gloria::TileId::FromXYZ(int8x16_t *this, const gloria::TileCoordinate *a2)
{
  v2.i64[0] = 0xFFFFFFFFLL;
  v2.i64[1] = 0xFFFFFFFFLL;
  v3 = vandq_s8(*this, v2);
  v4 = vextq_s8(v3, v3, 8uLL);
  v2.i64[0] = 0xFFFF0000FFFFLL;
  v2.i64[1] = 0xFFFF0000FFFFLL;
  v5 = vandq_s8(vorrq_s8(vshlq_n_s64(v4, 0x10uLL), v4), v2);
  v6 = *&vorrq_s8(vshlq_n_s64(v5, 8uLL), v5) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
  v7 = *&vorrq_s8(vshlq_n_s64(v6, 4uLL), v6) & __PAIR128__(0xFF0FFF0FFF0FFF0FLL, 0xFF0FFF0FFF0FFF0FLL);
  v2.i64[0] = 0x3333333333333333;
  v2.i64[1] = 0x3333333333333333;
  v8 = vandq_s8(vorrq_s8(vshlq_n_s64(v7, 2uLL), v7), v2);
  v9 = vshlq_u64(v8, xmmword_187FBCF10);
  v8.i64[0] *= 2;
  v10 = vandq_s8(vorrq_s8(v9, v8), xmmword_187FBCF20);
  *&result = vorrq_s8(v10, vdupq_laneq_s64(v10, 1)).u64[0];
  return result;
}

unint64_t gloria::TileId::Ancestor(unint64_t this, unsigned __int8 a2, int a3)
{
  if (a3 == a2)
  {
    return 0;
  }

  else
  {
    return this >> (2 * a3);
  }
}

void gloria::GloriaDB::Get(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100](__dst, *(a3 + 8), *(a3 + 16));
  v8 = (****(a2 + 184))();
  v9 = v8;
  v10 = *(a2 + 152);
  if (v8 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = -v8;
  }

  v28 = 0;
  gloria::ShardPool::Get(v25, (a2 + 136), (v11 % v10), &v28);
  if (v27 < 0)
  {
    operator delete(__p);
  }

  v12 = v28;
  if ((*(v28 + 127) & 0x8000000000000000) != 0)
  {
    if (!*(v28 + 14))
    {
      goto LABEL_22;
    }
  }

  else if (!*(v28 + 127))
  {
    goto LABEL_22;
  }

  (*(***(a2 + 184) + 8))(**(a2 + 184), __dst, v9);
  v23 = a2;
  v24 = a1;
  if (*(*(v12 + 20) + 76) >= 1)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<zilch::StringList::Entry>>(1uLL);
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v31, 0, 0, 0);
  v13 = *(v12 + 20);
  v14 = v31;
  if (v13[19] >= 1)
  {
    v15 = 0;
    do
    {
      v16 = v14[v15];
      v17 = v13[3];
      v18 = v13[22];
      v19 = v13[23];
      LOBYTE(v36) = 1;
      HIDWORD(v36) = 0;
      v37 = "";
      v38 = 0;
      v20 = *(v12 + 2);
      v34 = 1;
      v35 = vcvtd_n_f64_u64(v16 * v17, 3uLL);
      (**v20)(&v39);
      if (v42 < 0)
      {
        operator delete(v40);
      }

      v21 = ((v18 << (((v19 - 1) & v16) * v17)) & *v37) >> (((v19 - 1) & v16) * v17);
      v22 = v21 != 0;
      if (!v21)
      {
        goto LABEL_19;
      }

      ++v15;
      v13 = *(v12 + 20);
    }

    while (v15 < v13[19]);
  }

  v22 = 1;
  if (v14)
  {
LABEL_19:
    v32 = v14;
    operator delete(v14);
  }

  if (!v22)
  {
    LOBYTE(v39) = 1;
    HIDWORD(v39) = 0;
    v40 = "key was not found";
    v41 = 17;
    gloria::Status::Status(v24, 1, &v39);
    goto LABEL_26;
  }

  v12 = v28;
  a1 = v24;
  a2 = v23;
LABEL_22:
  v36 = 0;
  gloria::ShardManager::DoContains(a1, a2 + 72, v12, a3, &v36);
  if (!LODWORD(a1->__r_.__value_.__l.__data_))
  {
    gloria::RecordReader::ReadPayloadAt(&v39, *(v12 + 1), v36, a4);
    gloria::Status::operator=(a1, &v39);
    if (v42 < 0)
    {
      operator delete(v40);
    }
  }

LABEL_26:
  if (v30 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_18668C590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  if (*(v27 - 89) < 0)
  {
    operator delete(*(v27 - 112));
  }

  if (*(v26 + 31) < 0)
  {
    operator delete(*(v26 + 8));
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100](void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

uint64_t gloria::ShardPool::Get(gloria::ShardPool *this, const unsigned int *a2, const gloria::Shard **a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a2 + 2) <= a3 || (v5 = *(a2 + 1)) == 0)
  {
LABEL_8:
    snprintf(__str, 0x64uLL, "shard_ id %d not found ", a3);
    v11[0] = 1;
    v12 = 0;
    v13 = __str;
    v14 = strlen(__str);
    return gloria::Status::Status(this, 1, v11);
  }

  v6 = *(a2 + 1);
  while (1)
  {
    v7 = *(v6 + 8);
    if (v7 <= a3)
    {
      break;
    }

LABEL_7:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (v7 < a3)
  {
    ++v6;
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v9 = v5;
      v10 = *(v5 + 32);
      if (v10 <= a3)
      {
        break;
      }

      v5 = *v9;
      if (!*v9)
      {
LABEL_14:
        operator new();
      }
    }

    if (v10 >= a3)
    {
      break;
    }

    v5 = v9[1];
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  *a4 = v9 + 5;
  __str[0] = 1;
  *&__str[4] = 0;
  v16 = "";
  v17 = 0;
  return gloria::Status::Status(this, 0, __str);
}