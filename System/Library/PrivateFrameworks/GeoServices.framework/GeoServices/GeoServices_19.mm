void sub_1867874E8(_Unwind_Exception *a1)
{
  v3 = pthread_rwlock_unlock((v1 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "unlock", v4);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<addr_obj::V2AddressObject *,std::shared_ptr<addr_obj::V2AddressObject>::__shared_ptr_default_delete<addr_obj::V2AddressObject,addr_obj::V2AddressObject>,std::allocator<addr_obj::V2AddressObject>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void _GEOPDCaptionedPhotoCallReadAllRecursiveWithoutSynchronized(void *a1)
{
  [(GEOPDPhoto *)a1[10] readAll:?];
  [(GEOPDJoeColor *)a1[7] readAll:?];
  v2 = a1[3];

  [(GEOPDAttribution *)v2 readAll:?];
}

void addr_obj::V2AddressObject::~V2AddressObject(void **this)
{
  *this = &unk_1EF7DFC20;
  if (*(this + 1015) < 0)
  {
    operator delete(this[124]);
  }

  if (*(this + 991) < 0)
  {
    operator delete(this[121]);
  }

  if (*(this + 967) < 0)
  {
    operator delete(this[118]);
  }

  if (*(this + 943) < 0)
  {
    operator delete(this[115]);
  }

  if (*(this + 919) < 0)
  {
    operator delete(this[112]);
  }

  if (*(this + 895) < 0)
  {
    operator delete(this[109]);
  }

  if (*(this + 871) < 0)
  {
    operator delete(this[106]);
  }

  if (*(this + 847) < 0)
  {
    operator delete(this[103]);
  }

  if (*(this + 823) < 0)
  {
    operator delete(this[100]);
  }

  if (*(this + 799) < 0)
  {
    operator delete(this[97]);
  }

  if (*(this + 775) < 0)
  {
    operator delete(this[94]);
  }

  if (*(this + 751) < 0)
  {
    operator delete(this[91]);
  }

  addr_obj::V1AddressObject::~V1AddressObject(this);
}

{
  addr_obj::V2AddressObject::~V2AddressObject(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t GEOPDOrientedPositionReadAllFrom(uint64_t a1, void *a2)
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
          LOBYTE(v39) = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v39 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v39 & 0x7F) << v5;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          if (v6++ >= 9)
          {
            v12 = 0;
            goto LABEL_16;
          }
        }

        v12 = [v3 hasError] ? 0 : v7;
LABEL_16:
        v13 = [v3 hasError];
        v14 = (v12 & 7) == 4 ? 1 : v13;
        if (v14)
        {
          break;
        }

        v15 = v12 >> 3;
        if ((v12 >> 3) > 3)
        {
          switch(v15)
          {
            case 4:
              *(a1 + 56) |= 8u;
              v39 = 0;
              v22 = objc_msgSend_position(v3);
              if (v22 + 8 >= objc_msgSend_position(v3) && (v23 = objc_msgSend_position(v3), v23 + 8 <= [v3 length]))
              {
                v31 = [v3 data];
                [v31 getBytes:&v39 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v29 = v39;
              v30 = &OBJC_IVAR___GEOPDOrientedPosition__yaw;
              break;
            case 5:
              *(a1 + 56) |= 1u;
              v39 = 0;
              v26 = objc_msgSend_position(v3);
              if (v26 + 8 >= objc_msgSend_position(v3) && (v27 = objc_msgSend_position(v3), v27 + 8 <= [v3 length]))
              {
                v35 = [v3 data];
                [v35 getBytes:&v39 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v29 = v39;
              v30 = &OBJC_IVAR___GEOPDOrientedPosition__pitch;
              break;
            case 6:
              *(a1 + 56) |= 2u;
              v39 = 0;
              v18 = objc_msgSend_position(v3);
              if (v18 + 8 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 8 <= [v3 length]))
              {
                v33 = [v3 data];
                [v33 getBytes:&v39 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v29 = v39;
              v30 = &OBJC_IVAR___GEOPDOrientedPosition__roll;
              break;
            default:
LABEL_39:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_62;
              }

              goto LABEL_60;
          }
        }

        else
        {
          switch(v15)
          {
            case 1:
              *(a1 + 56) |= 4u;
              v39 = 0;
              v20 = objc_msgSend_position(v3);
              if (v20 + 8 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3), v21 + 8 <= [v3 length]))
              {
                v28 = [v3 data];
                [v28 getBytes:&v39 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v29 = v39;
              v30 = &OBJC_IVAR___GEOPDOrientedPosition__x;
              break;
            case 2:
              *(a1 + 56) |= 0x10u;
              v39 = 0;
              v24 = objc_msgSend_position(v3);
              if (v24 + 8 >= objc_msgSend_position(v3) && (v25 = objc_msgSend_position(v3), v25 + 8 <= [v3 length]))
              {
                v34 = [v3 data];
                [v34 getBytes:&v39 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v29 = v39;
              v30 = &OBJC_IVAR___GEOPDOrientedPosition__y;
              break;
            case 3:
              *(a1 + 56) |= 0x20u;
              v39 = 0;
              v16 = objc_msgSend_position(v3);
              if (v16 + 8 >= objc_msgSend_position(v3) && (v17 = objc_msgSend_position(v3), v17 + 8 <= [v3 length]))
              {
                v32 = [v3 data];
                [v32 getBytes:&v39 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v29 = v39;
              v30 = &OBJC_IVAR___GEOPDOrientedPosition__z;
              break;
            default:
              goto LABEL_39;
          }
        }

        *(a1 + *v30) = v29;
LABEL_60:
        v36 = objc_msgSend_position(v3);
      }

      while (v36 < [v3 length]);
    }

    v37 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_62:
    v37 = 0;
  }

  objc_sync_exit(v3);

  return v37;
}

void *GEOPDStorefrontViewReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = vaddv_s16((*&vshl_u16((*&vdup_n_s16(*(a1 + 68)) & 0xFF00FF00FF00FFLL), 0xFFFCFFFFFFFEFFFDLL) & 0xFF01FF01FF01FF01));
  while (1)
  {
    v11 = a3[v6];
    if (v11 > -2)
    {
      break;
    }

    if (v11 == -3)
    {
      v7 = 1;
      goto LABEL_13;
    }

    if (v11 == -2)
    {
      goto LABEL_9;
    }

LABEL_12:
    ++v10;
LABEL_13:
    ++v6;
  }

  if (v11 == -1)
  {
    v8 = 1;
LABEL_9:
    v9 = 1;
    goto LABEL_13;
  }

  if (v11)
  {
    goto LABEL_12;
  }

  v12 = v10 > 2;
  v13 = v9 | v12;
  if (((v9 | v12) | v7))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  v48 = v8;
  v49 = (v14 == 0) | v9 | v12;
  while (1)
  {
    v15 = objc_msgSend_position(v3);
    if (v15 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
      goto LABEL_96;
    }

    v16 = v13;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      LOBYTE(v50) = 0;
      v20 = objc_msgSend_position(v3) + 1;
      if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
      {
        v22 = [v3 data];
        [v22 getBytes:&v50 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v19 |= (v50 & 0x7F) << v17;
      if ((v50 & 0x80) == 0)
      {
        break;
      }

      v17 += 7;
      v23 = v18++ >= 9;
      if (v23)
      {
        v24 = 0;
        goto LABEL_32;
      }
    }

    v24 = [v3 hasError] ? 0 : v19;
LABEL_32:
    v13 = v16;
    if (([v3 hasError] & 1) != 0 || (v24 & 7) == 4)
    {
LABEL_96:
      if (v13)
      {
        v42 = 1;
        goto LABEL_113;
      }

      if (!v14)
      {
LABEL_114:
        v3 = ([v3 hasError] ^ 1);
        if ((v13 & 1) == 0)
        {
          return v3;
        }

        goto LABEL_115;
      }

      while (1)
      {
        while (1)
        {
          v44 = *v14++;
          v43 = v44;
          if (v44 <= 5)
          {
            break;
          }

          if (v43 == 6)
          {
            v45 = 2;
LABEL_108:
            *(a1 + 68) |= v45;
          }

          else if (v43 == 7)
          {
            v45 = 16;
            goto LABEL_108;
          }
        }

        switch(v43)
        {
          case 2:
            v45 = 8;
            goto LABEL_108;
          case 5:
            v45 = 4;
            goto LABEL_108;
          case 0:
            goto LABEL_114;
        }
      }
    }

    v25 = v24 >> 3;
    v26 = v16;
    if ((v49 & 1) == 0)
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

    if (v25 > 4)
    {
      if (v25 != 5)
      {
        if (v25 != 6)
        {
          if (v25 != 7)
          {
            goto LABEL_78;
          }

          if (!v26)
          {
            goto LABEL_80;
          }

          if ((*(a1 + 68) & 0x10) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_112;
            }

            v41 = 8 * *(a1 + 68);
            goto LABEL_94;
          }

          v50 = 0;
          v51 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_112;
          }

          v31 = objc_alloc_init(GEOPDGeographicCoordinate);
          if (!GEOPDGeographicCoordinateReadAllFrom(v31, v3))
          {
            goto LABEL_111;
          }

          PBReaderRecallMark();
          v32 = 48;
          goto LABEL_77;
        }

        if (!v26)
        {
          goto LABEL_80;
        }

        if ((*(a1 + 68) & 2) == 0)
        {
          v50 = 0;
          v51 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_112;
          }

          v31 = objc_alloc_init(GEOPDGeographicCoordinate);
          if (!GEOPDGeographicCoordinateReadAllFrom(v31, v3))
          {
            goto LABEL_111;
          }

          PBReaderRecallMark();
          v32 = 24;
          goto LABEL_77;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_112;
        }

        v41 = *(a1 + 68) << 6;
LABEL_94:
        v6 += v41 >> 7;
        goto LABEL_95;
      }

      if (!v26)
      {
        goto LABEL_80;
      }

      if ((*(a1 + 68) & 4) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_112;
        }

        v41 = 32 * *(a1 + 68);
        goto LABEL_94;
      }

      v50 = 0;
      v51 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_112;
      }

      v31 = objc_alloc_init(GEOPDOrientedPosition);
      if (!GEOPDOrientedPositionReadAllFrom(v31, v3))
      {
        goto LABEL_111;
      }

      PBReaderRecallMark();
      v32 = 32;
LABEL_77:
      v40 = *(a1 + v32);
      *(a1 + v32) = v31;

      --v6;
      goto LABEL_95;
    }

    if (v25 == 2)
    {
      break;
    }

    if (v25 != 4)
    {
LABEL_78:
      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_112;
      }

      goto LABEL_95;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_80;
    }

    v33 = 0;
    v34 = 0;
    v35 = 0;
    *(a1 + 68) |= 1u;
    while (1)
    {
      LOBYTE(v50) = 0;
      v36 = objc_msgSend_position(v3) + 1;
      if (v36 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3) + 1, v37 <= [v3 length]))
      {
        v38 = [v3 data];
        [v38 getBytes:&v50 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v35 |= (v50 & 0x7F) << v33;
      if ((v50 & 0x80) == 0)
      {
        break;
      }

      v33 += 7;
      v23 = v34++ >= 9;
      if (v23)
      {
        v39 = 0;
        goto LABEL_85;
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

LABEL_85:
    v13 = v16;
    *(a1 + 16) = v39;
LABEL_95:
    if (!(v13 & 1 | (v6 != 0)))
    {
      goto LABEL_96;
    }
  }

  if (!v26)
  {
LABEL_80:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_95;
  }

  if ((*(a1 + 68) & 8) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_112;
    }

    v41 = 16 * *(a1 + 68);
    goto LABEL_94;
  }

  v50 = 0;
  v51 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_112;
  }

  v31 = objc_alloc_init(GEOPDPhotoPosition);
  if (GEOPDPhotoPositionReadAllFrom(v31, v3, v48 & 1))
  {
    PBReaderRecallMark();
    v32 = 40;
    goto LABEL_77;
  }

LABEL_111:

LABEL_112:
  v42 = 0;
LABEL_113:
  *(a1 + 68) |= 8u;
  *(a1 + 68) |= 4u;
  *(a1 + 68) |= 2u;
  *(a1 + 68) |= 0x10u;
  if (v42)
  {
    goto LABEL_114;
  }

  v3 = 0;
  if (v13)
  {
LABEL_115:
    v46 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

uint64_t _GEOPDStorefrontViewCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  [*(a1 + 40) readAll:1];
  [*(a1 + 32) readAll:1];
  [*(a1 + 24) readAll:1];
  v2 = *(a1 + 48);

  return [v2 readAll:1];
}

void *GEOPDStorefrontViewReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 60))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDStorefrontViewReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDStorefrontViewReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDStorefrontViewReadAllFrom_initialTag;
  }

  Specified = GEOPDStorefrontViewReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDStorefrontViewCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 64));
  return Specified;
}

uint64_t geo::codec::decodeSectionEncoding(geo::codec::zone_mallocator *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v6 = *(a1 + 2);
  v7 = 8 * *(a1 + 1);
  if (v6 + 5 > v7)
  {
    goto LABEL_42;
  }

  v8 = 0;
  v9 = *a1;
  v10 = 5;
  do
  {
    v11 = 8 - (v6 & 7);
    if (v10 < v11)
    {
      v11 = v10;
    }

    v8 = (*(v9 + (v6 >> 3)) >> (8 - (v6 & 7) - v11)) & ~(-1 << v11) | (v8 << v11);
    v6 += v11;
    *(a1 + 2) = v6;
    v10 -= v11;
  }

  while (v10);
  v12 = (v8 + 1);
  if (v6 + v12 > v7)
  {
    goto LABEL_42;
  }

  v13 = 0;
  if (v8 != -1)
  {
    do
    {
      v14 = 8 - (v6 & 7);
      if (v12 < v14)
      {
        v14 = v12;
      }

      v13 = (*(v9 + (v6 >> 3)) >> (8 - (v6 & 7) - v14)) & ~(-1 << v14) | (v13 << v14);
      v6 += v14;
      *(a1 + 2) = v6;
      v12 -= v14;
    }

    while (v12);
  }

  if (v6 + 5 > v7)
  {
    goto LABEL_42;
  }

  v15 = 0;
  v16 = 5;
  do
  {
    v17 = 8 - (v6 & 7);
    if (v16 < v17)
    {
      v17 = v16;
    }

    v15 = (*(v9 + (v6 >> 3)) >> (8 - (v6 & 7) - v17)) & ~(-1 << v17) | (v15 << v17);
    v6 += v17;
    *(a1 + 2) = v6;
    v16 -= v17;
  }

  while (v16);
  v18 = (v15 + 1);
  if (v6 + v18 > v7)
  {
    goto LABEL_42;
  }

  v19 = 0;
  if (v15 != -1)
  {
    do
    {
      v20 = 8 - (v6 & 7);
      if (v18 < v20)
      {
        v20 = v18;
      }

      v19 = (*(v9 + (v6 >> 3)) >> (8 - (v6 & 7) - v20)) & ~(-1 << v20) | (v19 << v20);
      v6 += v20;
      *(a1 + 2) = v6;
      v18 -= v20;
    }

    while (v18);
  }

  if (v6 + 5 > v7)
  {
    goto LABEL_42;
  }

  v21 = 0;
  v22 = 5;
  do
  {
    v23 = 8 - (v6 & 7);
    if (v22 < v23)
    {
      v23 = v22;
    }

    v21 = (*(v9 + (v6 >> 3)) >> (8 - (v6 & 7) - v23)) & ~(-1 << v23) | (v21 << v23);
    v6 += v23;
    *(a1 + 2) = v6;
    v22 -= v23;
  }

  while (v22);
  if (v6 + 5 > v7)
  {
    goto LABEL_42;
  }

  LODWORD(v24) = 0;
  v25 = 5;
  do
  {
    v26 = 8 - (v6 & 7);
    if (v25 < v26)
    {
      v26 = v25;
    }

    v24 = (*(v9 + (v6 >> 3)) >> (8 - (v6 & 7) - v26)) & ~(-1 << v26) | (v24 << v26);
    v6 += v26;
    *(a1 + 2) = v6;
    v25 -= v26;
  }

  while (v25);
  if (v6 + 4 > v7)
  {
    goto LABEL_42;
  }

  LODWORD(v27) = 0;
  v28 = 4;
  do
  {
    v29 = 8 - (v6 & 7);
    if (v28 < v29)
    {
      v29 = v28;
    }

    v27 = (*(v9 + (v6 >> 3)) >> (8 - (v6 & 7) - v29)) & ~(-1 << v29) | (v27 << v29);
    v6 += v29;
    *(a1 + 2) = v6;
    v28 -= v29;
  }

  while (v28);
  if (v6 + 5 > v7)
  {
    goto LABEL_42;
  }

  LODWORD(v30) = 0;
  v31 = 5;
  do
  {
    v32 = 8 - (v6 & 7);
    if (v31 < v32)
    {
      v32 = v31;
    }

    v30 = (*(v9 + (v6 >> 3)) >> (8 - (v6 & 7) - v32)) & ~(-1 << v32) | (v30 << v32);
    v6 += v32;
    *(a1 + 2) = v6;
    v31 -= v32;
  }

  while (v31);
  if (v6 + 1 > v7)
  {
LABEL_42:
    v33 = 0;
    goto LABEL_43;
  }

  v37 = *(v9 + (v6 >> 3));
  *(a1 + 2) = v6 + 1;
  v103 = (1 << (~v6 & 7)) & v37;
  if (v103)
  {
    v39 = a3;
  }

  else
  {
    v39 = 0;
  }

  v40 = geo::codec::zone_mallocator::instance(a1);
  v104 = v39;
  if (v39 == 1)
  {
    result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::callocate<GeoCodecsCurveVertexPool>(v40);
    v33 = result;
    if (!result)
    {
      goto LABEL_43;
    }

    *result = v21;
    *(result + 40) = v13;
    if (v13)
    {
      v41 = geo::codec::zone_mallocator::instance(result);
      result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsRange>(v41, v13);
      *(v33 + 4) = result;
      if (!result)
      {
        goto LABEL_43;
      }
    }

    *(v33 + 2) = v19;
    if (!v19)
    {
      goto LABEL_126;
    }

    v42 = geo::codec::zone_mallocator::instance(result);
    result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsTileCurveVertex>(v42, v19);
    *(v33 + 1) = result;
    if (!result)
    {
      goto LABEL_43;
    }

    goto LABEL_63;
  }

  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::callocate<GeoCodecsVertexPool>(v40);
  *v5 = result;
  if (result)
  {
    *result = v21;
    *(result + 40) = v13;
    if (v13 && (v43 = geo::codec::zone_mallocator::instance(result), v44 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsRange>(v43, v13), result = *v5, (*(*v5 + 32) = v44) == 0))
    {
      v33 = 0;
    }

    else
    {
      *(result + 16) = v19;
      if (!v19)
      {
        return 1;
      }

      v45 = geo::codec::zone_mallocator::instance(result);
      v46 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsVectorTilePoint>(v45, v19);
      v33 = 0;
      result = *v5;
      *(*v5 + 8) = v46;
      if (v46)
      {
LABEL_63:
        if (v13)
        {
          v47 = a5;
          v48 = a1;
          v49 = 0;
          v50 = 0;
          v101 = v13;
          v51 = *(a1 + 2);
          v52 = 8 * *(a1 + 1);
          v53 = 32 - v30;
          a2 = 12;
          while (v51 + v30 <= v52)
          {
            if (v30)
            {
              v54 = 0;
              v55 = *v48;
              v56 = v30;
              do
              {
                v57 = 8 - (v51 & 7);
                if (v56 < v57)
                {
                  v57 = v56;
                }

                v54 = (*(v55 + (v51 >> 3)) >> (8 - (v51 & 7) - v57)) & ~(-1 << v57) | (v54 << v57);
                v51 += v57;
                *(v48 + 2) = v51;
                v56 -= v57;
              }

              while (v56);
              if (v51 + v30 > v52)
              {
                break;
              }

              v58 = 0;
              v59 = v54 << v53 >> v53;
              v60 = v30;
              do
              {
                v61 = 8 - (v51 & 7);
                if (v60 < v61)
                {
                  v61 = v60;
                }

                v58 = (*(v55 + (v51 >> 3)) >> (8 - (v51 & 7) - v61)) & ~(-1 << v61) | (v58 << v61);
                v51 += v61;
                *(v48 + 2) = v51;
                v60 -= v61;
              }

              while (v60);
              v62 = v58 << v53 >> v53;
            }

            else
            {
              if (v51 > v52)
              {
                break;
              }

              v62 = 0;
              v59 = 0;
            }

            if (v47)
            {
              v63 = (v47 + 8 * v50);
              *v63 = v59;
              v63[1] = v62;
            }

            if (v51 + v24 > v52)
            {
              break;
            }

            v64 = 0;
            if (v24)
            {
              v65 = *v48;
              v66 = v24;
              do
              {
                v67 = 8 - (v51 & 7);
                if (v66 < v67)
                {
                  v67 = v66;
                }

                v64 = (*(v65 + (v51 >> 3)) >> (8 - (v51 & 7) - v67)) & ~(-1 << v67) | (v64 << v67);
                v51 += v67;
                *(v48 + 2) = v51;
                v66 -= v67;
              }

              while (v66);
            }

            if (v51 + v27 > v52)
            {
              break;
            }

            v68 = 0;
            if (v27)
            {
              v69 = *v48;
              v70 = v27;
              do
              {
                v71 = 8 - (v51 & 7);
                if (v70 < v71)
                {
                  v71 = v70;
                }

                v68 = (*(v69 + (v51 >> 3)) >> (8 - (v51 & 7) - v71)) & ~(-1 << v71) | (v68 << v71);
                v51 += v71;
                *(v48 + 2) = v51;
                v70 -= v71;
              }

              while (v70);
            }

            v72 = v49 + v64;
            if (v104)
            {
              if (v72 >= *(v33 + 2))
              {
                break;
              }

              v73 = ~(-1 << *v33);
              v74 = v59 / v73;
              v75 = v62 / v73;
              v76 = (*(v33 + 1) + 12 * v49);
            }

            else
            {
              result = *v5;
              if (v72 >= *(*v5 + 16))
              {
                goto LABEL_44;
              }

              v77 = ~(-1 << *result);
              v74 = v59 / v77;
              v75 = v62 / v77;
              v76 = (*(result + 8) + 8 * v49);
            }

            *v76 = v74;
            v76[1] = v75;
            result = v49 + 1;
            if (v64)
            {
              v78 = 32 - v68;
              v79 = result + v64;
              while (v51 + v68 <= v52)
              {
                if (v68)
                {
                  v83 = 0;
                  v84 = *v48;
                  v85 = v68;
                  do
                  {
                    v86 = 8 - (v51 & 7);
                    if (v85 < v86)
                    {
                      v86 = v85;
                    }

                    v83 = (*(v84 + (v51 >> 3)) >> (8 - (v51 & 7) - v86)) & ~(-1 << v86) | (v83 << v86);
                    v51 += v86;
                    *(v48 + 2) = v51;
                    v85 -= v86;
                  }

                  while (v85);
                  if (v51 + v68 > v52)
                  {
                    goto LABEL_43;
                  }

                  v87 = 0;
                  v88 = v83 << v78 >> v78;
                  v89 = v68;
                  do
                  {
                    v90 = 8 - (v51 & 7);
                    if (v89 < v90)
                    {
                      v90 = v89;
                    }

                    v87 = (*(v84 + (v51 >> 3)) >> (8 - (v51 & 7) - v90)) & ~(-1 << v90) | (v87 << v90);
                    v51 += v90;
                    *(v48 + 2) = v51;
                    v89 -= v90;
                  }

                  while (v89);
                  v91 = v87 << v78 >> v78;
                }

                else
                {
                  if (v51 > v52)
                  {
                    goto LABEL_43;
                  }

                  v91 = 0;
                  v88 = 0;
                }

                v59 += v88;
                v62 += v91;
                v92 = v59;
                v93 = v62;
                if (v104)
                {
                  v80 = ~(-1 << *v33);
                  v81 = (*(v33 + 1) + 12 * result);
                  *v81 = v92 / v80;
                  v81[1] = v93 / v80;
                  if (v51 + 1 > v52)
                  {
                    goto LABEL_43;
                  }

                  v82 = *(*v48 + (v51 >> 3));
                  *(v48 + 2) = v51 + 1;
                  *(*(v33 + 1) + 12 * result + 8) = (v82 >> (~v51++ & 7)) & 1;
                }

                else
                {
                  v94 = ~(-1 << **v5);
                  v95 = (*(*v5 + 8) + 8 * result);
                  *v95 = v92 / v94;
                  v95[1] = v93 / v94;
                  if (v103)
                  {
                    if (++v51 > v52)
                    {
                      goto LABEL_43;
                    }

                    *(v48 + 2) = v51;
                  }
                }

                if (++result == v79)
                {
                  result = v79;
                  goto LABEL_122;
                }
              }

              break;
            }

LABEL_122:
            v96 = v33;
            if ((v104 & 1) == 0)
            {
              v96 = *v5;
            }

            v97 = (*(v96 + 4) + 16 * v50);
            *v97 = v49;
            v97[1] = result - v49;
            ++v50;
            v49 = result;
            if (v50 == v101)
            {
              goto LABEL_125;
            }
          }

LABEL_43:
          result = *v5;
          if (!*v5)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }

LABEL_125:
        if (v33)
        {
LABEL_126:
          v98 = geo::codec::zone_mallocator::instance(result);
          v99 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::callocate<GeoCodecsVertexPool>(v98);
          *v5 = v99;
          if (v99)
          {
            v99[5] = *(v33 + 5);
            *v99 = *v33;
            if (a4)
            {
              v100 = (*(a4 + 1) & 0x3Fu) > 0xE;
            }

            else
            {
              v100 = 0;
            }

            geo::codec::_createLOD(v33, v99, v100, 0, 0, 0, 0);
            v35 = 1;
          }

          else
          {
            v35 = 0;
          }

LABEL_46:
          geo::codec::CurveVertexPoolDealloc(v33, a2);
          return v35;
        }

        return 1;
      }
    }

LABEL_44:
    geo::codec::VertexPoolDealloc(result, a2);
    *v5 = 0;
LABEL_45:
    v35 = 0;
    result = 0;
    if (!v33)
    {
      return result;
    }

    goto LABEL_46;
  }

  return result;
}

uint64_t _GEOPDPhotoPositionCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 48);
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

        [(GEOPDCameraMetadata *)*(*(&v8 + 1) + 8 * v6++) readAll:?];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(a1 + 88) readAll:{1, v8}];
  [*(a1 + 80) readAll:1];
  [(GEOPDGroundDataBuild *)*(a1 + 40) readAll:?];
  [*(a1 + 104) readAll:1];
  return [*(a1 + 72) readAll:1];
}

BOOL geo::codec::decodeSectionZEncoding(geo::codec::zone_mallocator *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a1 + 2);
  if (v2 + 1 > 8 * *(a1 + 1))
  {
    return 0;
  }

  v4 = *(*a1 + (v2 >> 3));
  *(a1 + 2) = v2 + 1;
  if ((v4 >> (~v2 & 7)))
  {
    v5 = a2[2];
    v8 = geo::codec::zone_mallocator::instance(a1);
    v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::callocate<float>(v8, v5);
    a2[3] = v9;
    v10 = *(a1 + 2);
    v11 = 8 * *(a1 + 1);
    if (v10 + 5 <= v11)
    {
      v12 = a2;
      v13 = a1;
      v14 = 0;
      v15 = *a1;
      v16 = 5;
      do
      {
        v17 = 8 - (v10 & 7);
        if (v16 < v17)
        {
          v17 = v16;
        }

        v14 = (*(v15 + (v10 >> 3)) >> (8 - (v10 & 7) - v17)) & ~(-1 << v17) | (v14 << v17);
        v10 += v17;
        *(a1 + 2) = v10;
        v16 -= v17;
      }

      while (v16);
      v18 = (v14 + 1);
      if (v10 + v18 <= v11)
      {
        if (v18)
        {
          v19 = 0;
          do
          {
            v20 = 8 - (v10 & 7);
            if (v18 < v20)
            {
              v20 = v18;
            }

            v19 = (*(v15 + (v10 >> 3)) >> (8 - (v10 & 7) - v20)) & ~(-1 << v20) | (v19 << v20);
            v10 += v20;
            *(a1 + 2) = v10;
            v18 -= v20;
          }

          while (v18);
          v21 = v19 * 0.001;
        }

        else
        {
          v21 = 0.0;
        }

        if (v10 + 6 <= v11)
        {
          v23 = 0;
          v24 = 6;
          do
          {
            v25 = 8 - (v10 & 7);
            if (v24 < v25)
            {
              v25 = v24;
            }

            v23 = (*(v15 + (v10 >> 3)) >> (8 - (v10 & 7) - v25)) & ~(-1 << v25) | (v23 << v25);
            v10 += v25;
            *(a1 + 2) = v10;
            v24 -= v25;
          }

          while (v24);
          v26 = (v23 + 1);
          if (v10 + v26 <= v11)
          {
            if (v23 == -1)
            {
              goto LABEL_36;
            }

            v27 = 0;
            do
            {
              v28 = 8 - (v10 & 7);
              if (v26 < v28)
              {
                v28 = v26;
              }

              v27 = (*(v15 + (v10 >> 3)) >> (8 - (v10 & 7) - v28)) & ~(-1 << v28) | (v27 << v28);
              v10 += v28;
              *(a1 + 2) = v10;
              v26 -= v28;
            }

            while (v26);
            if (!v27)
            {
LABEL_36:
              v30 = 0;
LABEL_37:
              if (v10 + 6 <= v11)
              {
                v31 = 0;
                v32 = 6;
                do
                {
                  v33 = 8 - (v10 & 7);
                  if (v32 < v33)
                  {
                    v33 = v32;
                  }

                  v31 = (*(v15 + (v10 >> 3)) >> (8 - (v10 & 7) - v33)) & ~(-1 << v33) | (v31 << v33);
                  v10 += v33;
                  *(a1 + 2) = v10;
                  v32 -= v33;
                }

                while (v32);
                if (v10 + 6 <= v11)
                {
                  v34 = 0;
                  v35 = (v31 + 1);
                  v36 = 6;
                  do
                  {
                    v37 = 8 - (v10 & 7);
                    if (v36 < v37)
                    {
                      v37 = v36;
                    }

                    v34 = (*(v15 + (v10 >> 3)) >> (8 - (v10 & 7) - v37)) & ~(-1 << v37) | (v34 << v37);
                    v10 += v37;
                    *(a1 + 2) = v10;
                    v36 -= v37;
                  }

                  while (v36);
                  v38 = a2[5];
                  if (!v38)
                  {
                    v45 = 0;
                    return v45 == v12[2];
                  }

                  v39 = 0;
                  v40 = 0;
                  v41 = (v34 + 1);
                  v42 = a2[4];
                  v43.i64[0] = 0x80000000800000;
                  v43.i64[1] = 0x80000000800000;
                  v44 = vnegq_f32(v43);
                  while (1)
                  {
                    v46 = v10 + 1;
                    if (v10 + 1 > v11)
                    {
                      break;
                    }

                    v47 = (v42 + 16 * v39);
                    v49 = *v47;
                    v48 = v47[1];
                    LODWORD(v47) = *(v15 + (v10 >> 3));
                    *(v13 + 2) = v46;
                    if ((v47 >> (~v10 & 7)))
                    {
                      if (v46 + v35 > v11)
                      {
                        return 0;
                      }

                      v50 = 0;
                      if (v35)
                      {
                        v51 = v35;
                        do
                        {
                          v52 = 8 - (v46 & 7);
                          if (v51 < v52)
                          {
                            v52 = v51;
                          }

                          v50 = (*(v15 + (v46 >> 3)) >> (8 - (v46 & 7) - v52)) & ~(-1 << v52) | (v50 << v52);
                          v46 += v52;
                          *(v13 + 2) = v46;
                          v51 -= v52;
                        }

                        while (v51);
                      }

                      v53 = v12[2];
                      if (v40 >= v53)
                      {
                        return 0;
                      }

                      v54 = v21 * (v30 + v50);
                      v9[v49] = v54;
                      if (v46 + v41 > v11)
                      {
                        return 0;
                      }

                      v55 = 0;
                      if (v41)
                      {
                        v56 = v41;
                        do
                        {
                          v57 = 8 - (v46 & 7);
                          if (v56 < v57)
                          {
                            v57 = v56;
                          }

                          v55 = (*(v15 + (v46 >> 3)) >> (8 - (v46 & 7) - v57)) & ~(-1 << v57) | (v55 << v57);
                          v46 += v57;
                          *(v13 + 2) = v46;
                          v56 -= v57;
                        }

                        while (v56);
                      }

                      v58 = v48 + v49;
                      v45 = v40 + 1;
                      v59 = v49 + 1;
                      if (v59 < v58)
                      {
                        v60 = v40 + v48;
                        while (1)
                        {
                          v22 = 0;
                          if (v45 >= v53 || v46 + v55 > v11)
                          {
                            return v22;
                          }

                          if (v55)
                          {
                            v63 = 0;
                            v64 = v55;
                            do
                            {
                              v65 = 8 - (v46 & 7);
                              if (v64 < v65)
                              {
                                v65 = v64;
                              }

                              v63 = (*(v15 + (v46 >> 3)) >> (8 - (v46 & 7) - v65)) & ~(-1 << v65) | (v63 << v65);
                              v46 += v65;
                              *(v13 + 2) = v46;
                              v64 -= v65;
                            }

                            while (v64);
                            v61 = v63 << (32 - v55) >> (32 - v55);
                          }

                          else
                          {
                            v61 = 0;
                          }

                          v50 += v61;
                          v62 = v21 * (v30 + v50);
                          v9[v59] = v62;
                          ++v45;
                          if (++v59 == v58)
                          {
                            v45 = v60;
                            break;
                          }
                        }
                      }
                    }

                    else
                    {
                      if (v49 < v48 + v49)
                      {
                        v66 = v12[2];
                        if (v40 > v66)
                        {
                          v66 = v40;
                        }

                        v67 = v48 - 1;
                        if (v48 - 1 >= v66 - v40)
                        {
                          v67 = v66 - v40;
                        }

                        v68 = v67 + 1;
                        if (v68 > 8)
                        {
                          v70 = v68 & 7;
                          if ((v68 & 7) == 0)
                          {
                            v70 = 8;
                          }

                          v71 = v68 - v70;
                          v69 = v49 + v71;
                          v72 = &v9[v49 + 4];
                          v73 = v71;
                          do
                          {
                            v72[-1] = v44;
                            *v72 = v44;
                            v72 += 2;
                            v73 -= 8;
                          }

                          while (v73);
                          v40 += v71;
                        }

                        else
                        {
                          v69 = v49;
                        }

                        v74 = v48 + v49 - v69;
                        v75 = &v9[v69];
                        v45 = v40;
                        while (v66 != v45)
                        {
                          *v75++ = 3.4028e38;
                          ++v45;
                          if (!--v74)
                          {
                            goto LABEL_54;
                          }
                        }

                        return 0;
                      }

                      v45 = v40;
                    }

LABEL_54:
                    ++v39;
                    v10 = v46;
                    v40 = v45;
                    if (v39 >= v38)
                    {
                      return v45 == v12[2];
                    }
                  }
                }
              }

              return 0;
            }

            if (v10 + 1 <= v11)
            {
              v29 = *(v15 + (v10 >> 3));
              *(a1 + 2) = v10 + 1;
              if ((v29 >> (~v10 & 7)))
              {
                v30 = -v27;
              }

              else
              {
                v30 = v27;
              }

              ++v10;
              goto LABEL_37;
            }
          }
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t geo::codec::decodeAttributeSet<GeoCodecsFeature>(int a1, uint64_t *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[2];
  v7 = 8 * a2[1];
  if (v6 + 5 > v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = *a2;
  v10 = 5;
  do
  {
    v11 = 8 - (v6 & 7);
    if (v10 < v11)
    {
      v11 = v10;
    }

    v8 = (*(v9 + (v6 >> 3)) >> (8 - (v6 & 7) - v11)) & ~(-1 << v11) | (v8 << v11);
    v6 += v11;
    a2[2] = v6;
    v10 -= v11;
  }

  while (v10);
  if (v6 + 5 > v7)
  {
    return 0;
  }

  v12 = 0;
  v13 = 5;
  do
  {
    v14 = 8 - (v6 & 7);
    if (v13 < v14)
    {
      v14 = v13;
    }

    v12 = (*(v9 + (v6 >> 3)) >> (8 - (v6 & 7) - v14)) & ~(-1 << v14) | (v12 << v14);
    v6 += v14;
    a2[2] = v6;
    v13 -= v14;
  }

  while (v13);
  if (v6 + 5 > v7)
  {
    return 0;
  }

  v15 = 0;
  v16 = 5;
  do
  {
    v17 = 8 - (v6 & 7);
    if (v16 < v17)
    {
      v17 = v16;
    }

    v15 = (*(v9 + (v6 >> 3)) >> (8 - (v6 & 7) - v17)) & ~(-1 << v17) | (v15 << v17);
    v6 += v17;
    a2[2] = v6;
    v16 -= v17;
  }

  while (v16);
  if (v6 + 5 > v7)
  {
    return 0;
  }

  v20 = 0;
  v21 = 5;
  do
  {
    v22 = 8 - (v6 & 7);
    if (v21 < v22)
    {
      v22 = v21;
    }

    v20 = (*(v9 + (v6 >> 3)) >> (8 - (v6 & 7) - v22)) & ~(-1 << v22) | (v20 << v22);
    v6 += v22;
    a2[2] = v6;
    v21 -= v22;
  }

  while (v21);
  if (a3)
  {
    geo::codec::attributesForFeatureType(&v23, a1);
  }

  return 1;
}

void sub_18678A398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, __int128 a17, uint64_t a18, uint64_t a19)
{
  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v21);
  if (a16 && !atomic_fetch_add(&a16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a16->__on_zero_shared)(a16);
    std::__shared_weak_count::__release_weak(a16);
  }

  if (*(&a17 + 1) && !atomic_fetch_add((*(&a17 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&a17 + 1) + 16))(*(&a17 + 1));
    std::__shared_weak_count::__release_weak(*(&a17 + 1));
  }

  if (a16)
  {
    if (!atomic_fetch_add(&a16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a16->__on_zero_shared)(a16);
      std::__shared_weak_count::__release_weak(a16);
    }
  }

  _Unwind_Resume(a1);
}

float std::__function::__func<geo::codec::_readLinesExtendedChapter(VMP4Tile *,std::shared_ptr<geo::codec::VectorTile> const&)::$_0,std::allocator<geo::codec::_readLinesExtendedChapter(VMP4Tile *,std::shared_ptr<geo::codec::VectorTile> const&)::$_0>,void ()(unsigned long,float)>::operator()(uint64_t a1, void *a2, float *a3)
{
  result = *a3;
  *(*(**(a1 + 8) + 152) + 176 * *a2 + 68) = *a3;
  return result;
}

float std::__function::__func<geo::codec::_readLinesExtendedChapter(VMP4Tile *,std::shared_ptr<geo::codec::VectorTile> const&)::$_1,std::allocator<geo::codec::_readLinesExtendedChapter(VMP4Tile *,std::shared_ptr<geo::codec::VectorTile> const&)::$_1>,void ()(unsigned long,float)>::operator()(uint64_t a1, void *a2, float *a3)
{
  result = *a3;
  *(*(**(a1 + 8) + 152) + 176 * *a2 + 164) = *a3;
  return result;
}

void *GEOPDPhotoPositionReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 116))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDPhotoPositionReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 120));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 112) = objc_msgSend_position(v8);
  *(a1 + 116) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDPhotoPositionReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDPhotoPositionReadAllFrom_initialTag;
  }

  Specified = GEOPDPhotoPositionReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDPhotoPositionCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 120));
  return Specified;
}

void *GEOPDPhotoPositionReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 120));
  [v3 setLength:*(a1 + 116)];
  [v3 seekToOffset:*(a1 + 112)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = ((*(a1 + 132) >> 10) & 1) + (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(a1 + 132)), 0xFFFBFFF8FFF7FFFALL), 0x1000100010001)) + ((*(a1 + 132) >> 4) & 1) + ((*(a1 + 132) >> 11) & 1) + ((*(a1 + 132) >> 7) & 1));
  while (1)
  {
    v11 = a3[v6];
    if (v11 > -2)
    {
      break;
    }

    if (v11 == -3)
    {
      v7 = 1;
      goto LABEL_13;
    }

    if (v11 == -2)
    {
      goto LABEL_9;
    }

LABEL_12:
    ++v10;
LABEL_13:
    ++v6;
  }

  if (v11 == -1)
  {
    v8 = 1;
LABEL_9:
    v9 = 1;
    goto LABEL_13;
  }

  if (v11)
  {
    goto LABEL_12;
  }

  v82 = v8;
  v12 = v9 | (v10 > 5);
  if (v9 & 1 | (v10 > 5) | v7 & 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  v14 = objc_msgSend_position(v3);
  if (v14 >= [v3 length])
  {
LABEL_196:
    if (v12)
    {
      v75 = 1;
      goto LABEL_198;
    }

    if (!v13)
    {
      goto LABEL_223;
    }

    while (1)
    {
      while (1)
      {
        v77 = *v13++;
        v76 = v77;
        if (v77 > 8)
        {
          break;
        }

        if (v76 > 5)
        {
          if (v76 == 6)
          {
            v78 = 256;
            goto LABEL_221;
          }

          if (v76 == 8)
          {
            v78 = 32;
            goto LABEL_221;
          }
        }

        else
        {
          switch(v76)
          {
            case 2:
              v78 = 64;
LABEL_221:
              *(a1 + 132) |= v78;
              break;
            case 3:
              v78 = 512;
              goto LABEL_221;
            case 0:
              goto LABEL_223;
          }
        }
      }

      if (v76 > 10)
      {
        if (v76 == 11)
        {
          v78 = 128;
          goto LABEL_221;
        }

        if (v76 == 12)
        {
          v78 = 1024;
          goto LABEL_221;
        }
      }

      else
      {
        if (v76 == 9)
        {
          v78 = 16;
          goto LABEL_221;
        }

        if (v76 == 10)
        {
          v78 = 2048;
          goto LABEL_221;
        }
      }
    }
  }

  v83 = (v13 == 0) | v12;
  v84 = v12;
  while (1)
  {
    if ([v3 hasError])
    {
      goto LABEL_196;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      LOBYTE(v85) = 0;
      v18 = objc_msgSend_position(v3) + 1;
      if (v18 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3) + 1, v19 <= [v3 length]))
      {
        v20 = [v3 data];
        [v20 getBytes:&v85 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v17 |= (v85 & 0x7F) << v15;
      if ((v85 & 0x80) == 0)
      {
        break;
      }

      v15 += 7;
      v21 = v16++ >= 9;
      if (v21)
      {
        v22 = 0;
        goto LABEL_32;
      }
    }

    v22 = [v3 hasError] ? 0 : v17;
LABEL_32:
    v12 = v84;
    if (([v3 hasError] & 1) != 0 || (v22 & 7) == 4)
    {
      goto LABEL_196;
    }

    v23 = v22 >> 3;
    v24 = v84;
    if ((v83 & 1) == 0)
    {
      v25 = v13;
      do
      {
        v27 = *v25++;
        v26 = v27;
        v24 = v27 != 0;
        if (v27)
        {
          v28 = v26 == v23;
        }

        else
        {
          v28 = 1;
        }
      }

      while (!v28);
    }

    if (v23 <= 6)
    {
      if (v23 > 3)
      {
        if (v23 == 4)
        {
          if ((v7 & 1) == 0)
          {
            goto LABEL_149;
          }

          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 132) |= 8u;
          while (1)
          {
            LOBYTE(v85) = 0;
            v55 = objc_msgSend_position(v3) + 1;
            if (v55 >= objc_msgSend_position(v3) && (v56 = objc_msgSend_position(v3) + 1, v56 <= [v3 length]))
            {
              v57 = [v3 data];
              [v57 getBytes:&v85 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v54 |= (v85 & 0x7F) << v52;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v21 = v53++ >= 9;
            if (v21)
            {
              v58 = 0;
              goto LABEL_164;
            }
          }

          if ([v3 hasError])
          {
            v58 = 0;
          }

          else
          {
            v58 = v54;
          }

LABEL_164:
          *(a1 + 128) = v58;
LABEL_165:
          v12 = v84;
          goto LABEL_150;
        }

        if (v23 != 5)
        {
          if (!v24)
          {
            goto LABEL_149;
          }

          if ((*(a1 + 132) & 0x100) == 0)
          {
            v85 = 0;
            v86 = 0;
            if ((PBReaderPlaceMark() & 1) == 0)
            {
              goto LABEL_227;
            }

            v29 = objc_alloc_init(GEOPDGeographicCoordinate);
            if (!GEOPDGeographicCoordinateReadAllFrom(v29, v3))
            {
              goto LABEL_226;
            }

            PBReaderRecallMark();
            v30 = 80;
            goto LABEL_146;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_227;
          }

          v68 = *(a1 + 132) << 7;
          goto LABEL_183;
        }

        if ((v7 & 1) == 0)
        {
          goto LABEL_149;
        }

        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 132) |= 1u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v62 = objc_msgSend_position(v3) + 1;
          if (v62 >= objc_msgSend_position(v3) && (v63 = objc_msgSend_position(v3) + 1, v63 <= [v3 length]))
          {
            v64 = [v3 data];
            [v64 getBytes:&v85 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v61 |= (v85 & 0x7F) << v59;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v21 = v60++ >= 9;
          if (v21)
          {
            v44 = 0;
            goto LABEL_169;
          }
        }

        if ([v3 hasError])
        {
          v44 = 0;
        }

        else
        {
          v44 = v61;
        }

LABEL_169:
        v12 = v84;
        v67 = 56;
      }

      else
      {
        if (v23 != 1)
        {
          if (v23 != 2)
          {
            if (v23 != 3)
            {
              goto LABEL_147;
            }

            if (!v24)
            {
              goto LABEL_149;
            }

            if ((*(a1 + 132) & 0x200) == 0)
            {
              v85 = 0;
              v86 = 0;
              if ((PBReaderPlaceMark() & 1) == 0)
              {
                goto LABEL_227;
              }

              v29 = objc_alloc_init(GEOPDOrientedPosition);
              if (!GEOPDOrientedPositionReadAllFrom(v29, v3))
              {
                goto LABEL_226;
              }

              PBReaderRecallMark();
              v30 = 88;
              goto LABEL_146;
            }

            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_227;
            }

            v68 = *(a1 + 132) << 6;
            goto LABEL_183;
          }

          if (!v24 || (*(a1 + 132) & 0x40) != 0)
          {
            goto LABEL_149;
          }

          v85 = 0;
          v86 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_227;
          }

          v29 = objc_alloc_init(GEOPDCameraMetadata);
          if (!GEOPDCameraMetadataReadAllFrom(v29, v3, v82 & 1))
          {
            goto LABEL_226;
          }

          PBReaderRecallMark();
          [(GEOPDPhotoPosition *)a1 _addNoFlagsCameraMetadata:v29];

          goto LABEL_150;
        }

        if ((v7 & 1) == 0)
        {
          goto LABEL_149;
        }

        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 132) |= 2u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v41 = objc_msgSend_position(v3) + 1;
          if (v41 >= objc_msgSend_position(v3) && (v42 = objc_msgSend_position(v3) + 1, v42 <= [v3 length]))
          {
            v43 = [v3 data];
            [v43 getBytes:&v85 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v40 |= (v85 & 0x7F) << v38;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v21 = v39++ >= 9;
          if (v21)
          {
            v44 = 0;
            goto LABEL_156;
          }
        }

        if ([v3 hasError])
        {
          v44 = 0;
        }

        else
        {
          v44 = v40;
        }

LABEL_156:
        v12 = v84;
        v67 = 64;
      }

      *(a1 + v67) = v44;
      goto LABEL_150;
    }

    if (v23 > 9)
    {
      break;
    }

    if (v23 != 7)
    {
      if (v23 != 8)
      {
        if (!v24 || (*(a1 + 132) & 0x10) != 0)
        {
LABEL_149:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_227;
          }

          goto LABEL_150;
        }

        if ((v22 & 7) == 2)
        {
          v85 = 0;
          v86 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_227;
          }

          while (1)
          {
            v31 = objc_msgSend_position(v3);
            if (v31 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
            {
              break;
            }

            v32 = 0;
            v33 = 0;
            v34 = 0;
            while (1)
            {
              v87 = 0;
              v35 = objc_msgSend_position(v3) + 1;
              if (v35 >= objc_msgSend_position(v3) && (v36 = objc_msgSend_position(v3) + 1, v36 <= [v3 length]))
              {
                v37 = [v3 data];
                [v37 getBytes:&v87 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v34 |= (v87 & 0x7F) << v32;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v21 = v33++ >= 9;
              if (v21)
              {
                goto LABEL_70;
              }
            }

            [v3 hasError];
LABEL_70:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v69 = 0;
          v70 = 0;
          v71 = 0;
          v81 = 16;
          while (1)
          {
            LOBYTE(v85) = 0;
            v72 = objc_msgSend_position(v3, v81) + 1;
            if (v72 >= objc_msgSend_position(v3) && (v73 = objc_msgSend_position(v3) + 1, v73 <= [v3 length]))
            {
              v74 = [v3 data];
              [v74 getBytes:&v85 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v71 |= (v85 & 0x7F) << v69;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v21 = v70++ >= 9;
            if (v21)
            {
              goto LABEL_195;
            }
          }

          [v3 hasError];
LABEL_195:
          PBRepeatedUInt32Add();
        }

        goto LABEL_165;
      }

      if (!v24)
      {
        goto LABEL_149;
      }

      if ((*(a1 + 132) & 0x20) == 0)
      {
        v85 = 0;
        v86 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_227;
        }

        v29 = objc_alloc_init(GEOPDGroundDataBuild);
        if (!GEOPDGroundDataBuildReadAllFrom(v29, v3, v82 & 1))
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        v30 = 40;
        goto LABEL_146;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_227;
      }

      v68 = *(a1 + 132) << 10;
LABEL_183:
      v6 += v68 >> 15;
      goto LABEL_150;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_149;
    }

    v45 = 0;
    v46 = 0;
    v47 = 0;
    *(a1 + 132) |= 4u;
    while (1)
    {
      LOBYTE(v85) = 0;
      v48 = objc_msgSend_position(v3) + 1;
      if (v48 >= objc_msgSend_position(v3) && (v49 = objc_msgSend_position(v3) + 1, v49 <= [v3 length]))
      {
        v50 = [v3 data];
        [v50 getBytes:&v85 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v47 |= (v85 & 0x7F) << v45;
      if ((v85 & 0x80) == 0)
      {
        break;
      }

      v45 += 7;
      v21 = v46++ >= 9;
      if (v21)
      {
        v51 = 0;
        goto LABEL_160;
      }
    }

    if ([v3 hasError])
    {
      v51 = 0;
    }

    else
    {
      v51 = v47;
    }

LABEL_160:
    v12 = v84;
    *(a1 + 124) = v51;
LABEL_150:
    if (v12 & 1 | (v6 != 0))
    {
      v66 = objc_msgSend_position(v3);
      if (v66 < [v3 length])
      {
        continue;
      }
    }

    goto LABEL_196;
  }

  if (v23 == 10)
  {
    if (!v24)
    {
      goto LABEL_149;
    }

    if ((*(a1 + 132) & 0x800) == 0)
    {
      v85 = 0;
      v86 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_227;
      }

      v29 = objc_alloc_init(GEOPDOrientedTilePosition);
      if (!GEOPDOrientedTilePositionReadAllFrom(v29, v3))
      {
        goto LABEL_226;
      }

      PBReaderRecallMark();
      v30 = 104;
      goto LABEL_146;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_227;
    }

    v68 = 16 * *(a1 + 132);
    goto LABEL_183;
  }

  if (v23 != 11)
  {
    if (v23 != 12)
    {
LABEL_147:
      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_227;
      }

      goto LABEL_150;
    }

    if (!v24)
    {
      goto LABEL_149;
    }

    if ((*(a1 + 132) & 0x400) == 0)
    {
      v85 = 0;
      v86 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_227;
      }

      v29 = objc_alloc_init(GEOPDRigMetrics);
      if (!GEOPDRigMetricsReadAllFrom(v29, v3))
      {
        goto LABEL_226;
      }

      PBReaderRecallMark();
      v30 = 96;
      goto LABEL_146;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_227;
    }

    v68 = 32 * *(a1 + 132);
    goto LABEL_183;
  }

  if (!v24)
  {
    goto LABEL_149;
  }

  if ((*(a1 + 132) & 0x80) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_227;
    }

    v68 = *(a1 + 132) << 8;
    goto LABEL_183;
  }

  v85 = 0;
  v86 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_227;
  }

  v29 = objc_alloc_init(GEOTileCoordinate);
  if (GEOTileCoordinateReadAllFrom(v29, v3))
  {
    PBReaderRecallMark();
    v30 = 72;
LABEL_146:
    v65 = *(a1 + v30);
    *(a1 + v30) = v29;

    --v6;
    goto LABEL_150;
  }

LABEL_226:

LABEL_227:
  v75 = 0;
LABEL_198:
  *(a1 + 132) |= 0x40u;
  *(a1 + 132) |= 0x200u;
  *(a1 + 132) |= 0x100u;
  *(a1 + 132) |= 0x20u;
  *(a1 + 132) |= 0x10u;
  *(a1 + 132) |= 0x800u;
  *(a1 + 132) |= 0x80u;
  *(a1 + 132) |= 0x400u;
  if (v75)
  {
LABEL_223:
    v3 = ([v3 hasError] ^ 1);
    if (v12)
    {
      goto LABEL_224;
    }

    return v3;
  }

  v3 = 0;
  if ((v12 & 1) == 0)
  {
    return v3;
  }

LABEL_224:
  v79 = *(a1 + 8);
  *(a1 + 8) = 0;

  return v3;
}

void *GEOPDCameraMetadataReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 60))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDCameraMetadataReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDCameraMetadataReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDCameraMetadataReadAllFrom_initialTag;
  }

  Specified = GEOPDCameraMetadataReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [*(a1 + 48) readAll:1];
  }

  os_unfair_lock_unlock((a1 + 64));
  return Specified;
}

void *GEOPDCameraMetadataReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v9 = ((*(a1 + 80) >> 4) & 1) + ((*(a1 + 80) >> 5) & 1) + ((*(a1 + 80) >> 3) & 1);
  while (1)
  {
    v10 = a3[v6];
    if (v10 >= 0xFFFFFFFE)
    {
      v8 = 1;
      goto LABEL_9;
    }

    if (v10 != -3)
    {
      break;
    }

    v7 = 1;
LABEL_9:
    ++v6;
  }

  if (v10)
  {
    ++v9;
    goto LABEL_9;
  }

  v11 = v8 | (v9 > 1);
  if (v8 & 1 | (v9 > 1) | v7 & 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3;
  }

  v13 = objc_msgSend_position(v3);
  if (v13 >= [v3 length])
  {
LABEL_140:
    if (v11)
    {
      v67 = 1;
      goto LABEL_142;
    }

    if (!v12)
    {
      goto LABEL_156;
    }

    while (1)
    {
      while (1)
      {
        v69 = *v12++;
        v68 = v69;
        v70 = v69 == 4;
        if (v69 <= 4)
        {
          break;
        }

        if (v68 == 6)
        {
          v71 = 8;
LABEL_154:
          *(a1 + 80) |= v71;
        }

        else if (v68 == 5)
        {
          v71 = 32;
          goto LABEL_154;
        }
      }

      if (v70)
      {
        v71 = 16;
        goto LABEL_154;
      }

      if (!v68)
      {
        goto LABEL_156;
      }
    }
  }

  v74 = (v12 == 0) | v11;
  v75 = v11;
  while (1)
  {
    if ([v3 hasError])
    {
      goto LABEL_140;
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      LOBYTE(v76) = 0;
      v17 = objc_msgSend_position(v3) + 1;
      if (v17 >= objc_msgSend_position(v3) && (v18 = objc_msgSend_position(v3) + 1, v18 <= [v3 length]))
      {
        v19 = [v3 data];
        [v19 getBytes:&v76 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v16 |= (v76 & 0x7F) << v14;
      if ((v76 & 0x80) == 0)
      {
        break;
      }

      v14 += 7;
      v20 = v15++ >= 9;
      if (v20)
      {
        v21 = 0;
        goto LABEL_28;
      }
    }

    v21 = [v3 hasError] ? 0 : v16;
LABEL_28:
    v11 = v75;
    if (([v3 hasError] & 1) != 0 || (v21 & 7) == 4)
    {
      goto LABEL_140;
    }

    v22 = v21 >> 3;
    v23 = v75;
    if ((v74 & 1) == 0)
    {
      v24 = v12;
      do
      {
        v26 = *v24++;
        v25 = v26;
        v23 = v26 != 0;
        if (v26)
        {
          v27 = v25 == v22;
        }

        else
        {
          v27 = 1;
        }
      }

      while (!v27);
    }

    if (v22 > 3)
    {
      break;
    }

    switch(v22)
    {
      case 1:
        if ((v7 & 1) == 0)
        {
          goto LABEL_104;
        }

        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 80) |= 1u;
        while (1)
        {
          LOBYTE(v76) = 0;
          v45 = objc_msgSend_position(v3) + 1;
          if (v45 >= objc_msgSend_position(v3) && (v46 = objc_msgSend_position(v3) + 1, v46 <= [v3 length]))
          {
            v47 = [v3 data];
            [v47 getBytes:&v76 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v44 |= (v76 & 0x7F) << v42;
          if ((v76 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v20 = v43++ >= 9;
          if (v20)
          {
            v48 = 0;
            goto LABEL_109;
          }
        }

        if ([v3 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v44;
        }

LABEL_109:
        *(a1 + 68) = v48;
LABEL_110:
        v11 = v75;
        goto LABEL_125;
      case 2:
        if ((v7 & 1) == 0)
        {
          goto LABEL_104;
        }

        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 80) |= 4u;
        while (1)
        {
          LOBYTE(v76) = 0;
          v54 = objc_msgSend_position(v3) + 1;
          if (v54 >= objc_msgSend_position(v3) && (v55 = objc_msgSend_position(v3) + 1, v55 <= [v3 length]))
          {
            v56 = [v3 data];
            [v56 getBytes:&v76 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v53 |= (v76 & 0x7F) << v51;
          if ((v76 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v20 = v52++ >= 9;
          if (v20)
          {
            v34 = 0;
            goto LABEL_118;
          }
        }

        if ([v3 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v53;
        }

LABEL_118:
        v11 = v75;
        v58 = 76;
        break;
      case 3:
        if ((v7 & 1) == 0)
        {
          goto LABEL_104;
        }

        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 80) |= 2u;
        while (1)
        {
          LOBYTE(v76) = 0;
          v31 = objc_msgSend_position(v3) + 1;
          if (v31 >= objc_msgSend_position(v3) && (v32 = objc_msgSend_position(v3) + 1, v32 <= [v3 length]))
          {
            v33 = [v3 data];
            [v33 getBytes:&v76 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v30 |= (v76 & 0x7F) << v28;
          if ((v76 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v20 = v29++ >= 9;
          if (v20)
          {
            v34 = 0;
            goto LABEL_114;
          }
        }

        if ([v3 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v30;
        }

LABEL_114:
        v11 = v75;
        v58 = 72;
        break;
      default:
        goto LABEL_86;
    }

    *(a1 + v58) = v34;
LABEL_125:
    if (v11 & 1 | (v6 != 0))
    {
      v60 = objc_msgSend_position(v3);
      if (v60 < [v3 length])
      {
        continue;
      }
    }

    goto LABEL_140;
  }

  if (v22 == 4)
  {
    if (!v23)
    {
      goto LABEL_104;
    }

    if ((*(a1 + 80) & 0x10) == 0)
    {
      v76 = 0;
      v77 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_160;
      }

      v49 = objc_alloc_init(GEOPDLensProjection);
      if (!GEOPDLensProjectionReadAllFrom(v49, v3))
      {
        goto LABEL_159;
      }

      PBReaderRecallMark();
      v50 = 40;
      goto LABEL_103;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_160;
    }

    v59 = 8 * *(a1 + 80);
    goto LABEL_124;
  }

  if (v22 != 5)
  {
    if (v22 != 6)
    {
LABEL_86:
      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_160;
      }

      goto LABEL_125;
    }

    if (!v23 || (*(a1 + 80) & 8) != 0)
    {
LABEL_104:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_125;
    }

    if ((v21 & 7) == 2)
    {
      v76 = 0;
      v77 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_160;
      }

      while (1)
      {
        v35 = objc_msgSend_position(v3);
        if (v35 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
        {
          break;
        }

        v36 = 0;
        v37 = 0;
        v38 = 0;
        while (1)
        {
          v78 = 0;
          v39 = objc_msgSend_position(v3) + 1;
          if (v39 >= objc_msgSend_position(v3) && (v40 = objc_msgSend_position(v3) + 1, v40 <= [v3 length]))
          {
            v41 = [v3 data];
            [v41 getBytes:&v78 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v38 |= (v78 & 0x7F) << v36;
          if ((v78 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v20 = v37++ >= 9;
          if (v20)
          {
            goto LABEL_70;
          }
        }

        [v3 hasError];
LABEL_70:
        PBRepeatedUInt32Add();
      }

      PBReaderRecallMark();
    }

    else
    {
      v61 = 0;
      v62 = 0;
      v63 = 0;
      while (1)
      {
        LOBYTE(v76) = 0;
        v64 = objc_msgSend_position(v3) + 1;
        if (v64 >= objc_msgSend_position(v3) && (v65 = objc_msgSend_position(v3) + 1, v65 <= [v3 length]))
        {
          v66 = [v3 data];
          [v66 getBytes:&v76 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v63 |= (v76 & 0x7F) << v61;
        if ((v76 & 0x80) == 0)
        {
          break;
        }

        v61 += 7;
        v20 = v62++ >= 9;
        if (v20)
        {
          goto LABEL_139;
        }
      }

      [v3 hasError];
LABEL_139:
      PBRepeatedUInt32Add();
    }

    goto LABEL_110;
  }

  if (!v23)
  {
    goto LABEL_104;
  }

  if ((*(a1 + 80) & 0x20) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_160;
    }

    v59 = 4 * *(a1 + 80);
LABEL_124:
    v6 += v59 >> 7;
    goto LABEL_125;
  }

  v76 = 0;
  v77 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_160;
  }

  v49 = objc_alloc_init(GEOPDOrientedPosition);
  if (GEOPDOrientedPositionReadAllFrom(v49, v3))
  {
    PBReaderRecallMark();
    v50 = 48;
LABEL_103:
    v57 = *(a1 + v50);
    *(a1 + v50) = v49;

    --v6;
    goto LABEL_125;
  }

LABEL_159:

LABEL_160:
  v67 = 0;
LABEL_142:
  *(a1 + 80) |= 0x10u;
  *(a1 + 80) |= 0x20u;
  *(a1 + 80) |= 8u;
  if (v67)
  {
LABEL_156:
    v3 = ([v3 hasError] ^ 1);
    if (v11)
    {
      goto LABEL_157;
    }

    return v3;
  }

  v3 = 0;
  if ((v11 & 1) == 0)
  {
    return v3;
  }

LABEL_157:
  v72 = *(a1 + 8);
  *(a1 + 8) = 0;

  return v3;
}

uint64_t GEOPDLensProjectionReadAllFrom(uint64_t a1, void *a2)
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
          LOBYTE(v55) = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v55 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v55 & 0x7F) << v5;
          if ((v55 & 0x80) == 0)
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

        v12 = [v3 hasError] ? 0 : v7;
LABEL_16:
        v13 = [v3 hasError];
        v14 = (v12 & 7) == 4 ? 1 : v13;
        if (v14)
        {
          break;
        }

        v15 = v12 >> 3;
        if ((v12 >> 3) > 5)
        {
          if (v15 <= 7)
          {
            if (v15 == 6)
            {
              *(a1 + 84) |= 0x40u;
              v55 = 0;
              v31 = objc_msgSend_position(v3);
              if (v31 + 8 >= objc_msgSend_position(v3) && (v32 = objc_msgSend_position(v3), v32 + 8 <= [v3 length]))
              {
                v45 = [v3 data];
                [v45 getBytes:&v55 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v42 = v55;
              v43 = 56;
            }

            else
            {
              if (v15 != 7)
              {
LABEL_69:
                if (!PBReaderSkipValueWithTag())
                {
                  goto LABEL_96;
                }

                goto LABEL_94;
              }

              *(a1 + 84) |= 1u;
              v55 = 0;
              v22 = objc_msgSend_position(v3);
              if (v22 + 8 >= objc_msgSend_position(v3) && (v23 = objc_msgSend_position(v3), v23 + 8 <= [v3 length]))
              {
                v44 = [v3 data];
                [v44 getBytes:&v55 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v42 = v55;
              v43 = 8;
            }
          }

          else
          {
            switch(v15)
            {
              case 8:
                *(a1 + 84) |= 2u;
                v55 = 0;
                v35 = objc_msgSend_position(v3);
                if (v35 + 8 >= objc_msgSend_position(v3) && (v36 = objc_msgSend_position(v3), v36 + 8 <= [v3 length]))
                {
                  v47 = [v3 data];
                  [v47 getBytes:&v55 range:{objc_msgSend_position(v3), 8}];

                  [v3 setPosition:objc_msgSend_position(v3) + 8];
                }

                else
                {
                  [v3 _setError];
                }

                v42 = v55;
                v43 = 16;
                break;
              case 9:
                *(a1 + 84) |= 0x80u;
                v55 = 0;
                v39 = objc_msgSend_position(v3);
                if (v39 + 8 >= objc_msgSend_position(v3) && (v40 = objc_msgSend_position(v3), v40 + 8 <= [v3 length]))
                {
                  v51 = [v3 data];
                  [v51 getBytes:&v55 range:{objc_msgSend_position(v3), 8}];

                  [v3 setPosition:objc_msgSend_position(v3) + 8];
                }

                else
                {
                  [v3 _setError];
                }

                v42 = v55;
                v43 = 64;
                break;
              case 0xA:
                *(a1 + 84) |= 0x100u;
                v55 = 0;
                v18 = objc_msgSend_position(v3);
                if (v18 + 8 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 8 <= [v3 length]))
                {
                  v49 = [v3 data];
                  [v49 getBytes:&v55 range:{objc_msgSend_position(v3), 8}];

                  [v3 setPosition:objc_msgSend_position(v3) + 8];
                }

                else
                {
                  [v3 _setError];
                }

                v42 = v55;
                v43 = 72;
                break;
              default:
                goto LABEL_69;
            }
          }
        }

        else if (v15 <= 2)
        {
          if (v15 == 1)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 84) |= 0x200u;
            while (1)
            {
              LOBYTE(v55) = 0;
              v27 = objc_msgSend_position(v3);
              if (v27 + 1 >= objc_msgSend_position(v3) && (v28 = objc_msgSend_position(v3), v28 + 1 <= [v3 length]))
              {
                v29 = [v3 data];
                [v29 getBytes:&v55 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v26 |= (v55 & 0x7F) << v24;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_74;
              }
            }

            if ([v3 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v26;
            }

LABEL_74:
            *(a1 + 80) = v30;
            goto LABEL_94;
          }

          if (v15 != 2)
          {
            goto LABEL_69;
          }

          *(a1 + 84) |= 8u;
          v55 = 0;
          v20 = objc_msgSend_position(v3);
          if (v20 + 8 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3), v21 + 8 <= [v3 length]))
          {
            v41 = [v3 data];
            [v41 getBytes:&v55 range:{objc_msgSend_position(v3), 8}];

            [v3 setPosition:objc_msgSend_position(v3) + 8];
          }

          else
          {
            [v3 _setError];
          }

          v42 = v55;
          v43 = 32;
        }

        else
        {
          switch(v15)
          {
            case 3:
              *(a1 + 84) |= 4u;
              v55 = 0;
              v33 = objc_msgSend_position(v3);
              if (v33 + 8 >= objc_msgSend_position(v3) && (v34 = objc_msgSend_position(v3), v34 + 8 <= [v3 length]))
              {
                v46 = [v3 data];
                [v46 getBytes:&v55 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v42 = v55;
              v43 = 24;
              break;
            case 4:
              *(a1 + 84) |= 0x10u;
              v55 = 0;
              v37 = objc_msgSend_position(v3);
              if (v37 + 8 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3), v38 + 8 <= [v3 length]))
              {
                v50 = [v3 data];
                [v50 getBytes:&v55 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v42 = v55;
              v43 = 40;
              break;
            case 5:
              *(a1 + 84) |= 0x20u;
              v55 = 0;
              v16 = objc_msgSend_position(v3);
              if (v16 + 8 >= objc_msgSend_position(v3) && (v17 = objc_msgSend_position(v3), v17 + 8 <= [v3 length]))
              {
                v48 = [v3 data];
                [v48 getBytes:&v55 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v42 = v55;
              v43 = 48;
              break;
            default:
              goto LABEL_69;
          }
        }

        *(a1 + v43) = v42;
LABEL_94:
        v52 = objc_msgSend_position(v3);
      }

      while (v52 < [v3 length]);
    }

    v53 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_96:
    v53 = 0;
  }

  objc_sync_exit(v3);

  return v53;
}

uint64_t GEOPDGeographicCoordinateReadAllFrom(uint64_t a1, void *a2)
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
          LOBYTE(v30) = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v30 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v30 & 0x7F) << v5;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          if (v6++ >= 9)
          {
            v12 = 0;
            goto LABEL_16;
          }
        }

        v12 = [v3 hasError] ? 0 : v7;
LABEL_16:
        v13 = [v3 hasError];
        v14 = (v12 & 7) == 4 ? 1 : v13;
        if (v14)
        {
          break;
        }

        v15 = v12 >> 3;
        if ((v12 >> 3) == 3)
        {
          *(a1 + 32) |= 1u;
          v30 = 0;
          v20 = objc_msgSend_position(v3);
          if (v20 + 8 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3), v21 + 8 <= [v3 length]))
          {
            v25 = [v3 data];
            [v25 getBytes:&v30 range:{objc_msgSend_position(v3), 8}];

            [v3 setPosition:objc_msgSend_position(v3) + 8];
          }

          else
          {
            [v3 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___GEOPDGeographicCoordinate__altitude;
        }

        else if (v15 == 2)
        {
          *(a1 + 32) |= 4u;
          v30 = 0;
          v18 = objc_msgSend_position(v3);
          if (v18 + 8 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 8 <= [v3 length]))
          {
            v22 = [v3 data];
            [v22 getBytes:&v30 range:{objc_msgSend_position(v3), 8}];

            [v3 setPosition:objc_msgSend_position(v3) + 8];
          }

          else
          {
            [v3 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___GEOPDGeographicCoordinate__longitude;
        }

        else
        {
          if (v15 != 1)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_41;
          }

          *(a1 + 32) |= 2u;
          v30 = 0;
          v16 = objc_msgSend_position(v3);
          if (v16 + 8 >= objc_msgSend_position(v3) && (v17 = objc_msgSend_position(v3), v17 + 8 <= [v3 length]))
          {
            v26 = [v3 data];
            [v26 getBytes:&v30 range:{objc_msgSend_position(v3), 8}];

            [v3 setPosition:objc_msgSend_position(v3) + 8];
          }

          else
          {
            [v3 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___GEOPDGeographicCoordinate__latitude;
        }

        *(a1 + *v24) = v23;
LABEL_41:
        v27 = objc_msgSend_position(v3);
      }

      while (v27 < [v3 length]);
    }

    v28 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_43:
    v28 = 0;
  }

  objc_sync_exit(v3);

  return v28;
}

void *GEOPDGroundDataBuildReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 68))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDGroundDataBuildReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 72));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 64) = objc_msgSend_position(v8);
  *(a1 + 68) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDGroundDataBuildReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDGroundDataBuildReadAllFrom_initialTag;
  }

  Specified = GEOPDGroundDataBuildReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 72));
  return Specified;
}

void *GEOPDGroundDataBuildReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 72));
  [v3 setLength:*(a1 + 68)];
  [v3 seekToOffset:*(a1 + 64)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = (HIBYTE(*(a1 + 108)) & 1) + ((*(a1 + 108) >> 9) & 1);
  while (1)
  {
    v10 = a3[v7];
    if (v10 >= 0xFFFFFFFE)
    {
      v8 = 1;
      goto LABEL_9;
    }

    if (v10 != -3)
    {
      break;
    }

    v6 = 1;
LABEL_9:
    ++v7;
  }

  if (v10)
  {
    ++v9;
    goto LABEL_9;
  }

  v11 = v8 | (v9 != 0);
  if (v8 & 1 | (v9 != 0) | v6 & 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3;
  }

  v13 = objc_msgSend_position(v3);
  if (v13 >= [v3 length])
  {
LABEL_217:
    if (v11)
    {
      v103 = 1;
      goto LABEL_219;
    }

    if (!v12)
    {
LABEL_230:
      v3 = ([v3 hasError] ^ 1);
      if (v11)
      {
        goto LABEL_231;
      }

      return v3;
    }

    while (1)
    {
      while (1)
      {
        v105 = *v12++;
        v104 = v105;
        if (v105 != 8)
        {
          break;
        }

        v106 = 256;
LABEL_229:
        *(a1 + 108) |= v106;
      }

      if (v104 == 10)
      {
        v106 = 512;
        goto LABEL_229;
      }

      if (!v104)
      {
        goto LABEL_230;
      }
    }
  }

  v109 = (v7 != 0) | v11;
  while (1)
  {
    if ([v3 hasError])
    {
      goto LABEL_217;
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      LOBYTE(v110) = 0;
      v17 = objc_msgSend_position(v3) + 1;
      if (v17 >= objc_msgSend_position(v3) && (v18 = objc_msgSend_position(v3) + 1, v18 <= [v3 length]))
      {
        v19 = [v3 data];
        [v19 getBytes:&v110 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v16 |= (v110 & 0x7F) << v14;
      if ((v110 & 0x80) == 0)
      {
        break;
      }

      v14 += 7;
      v20 = v15++ >= 9;
      if (v20)
      {
        v21 = 0;
        goto LABEL_28;
      }
    }

    v21 = [v3 hasError] ? 0 : v16;
LABEL_28:
    if ([v3 hasError])
    {
      goto LABEL_217;
    }

    v22 = v21 & 7;
    if (v22 == 4)
    {
      goto LABEL_217;
    }

    v23 = v21 >> 3;
    v24 = v11;
    if (!((v12 == 0) | v11 & 1))
    {
      v25 = v12;
      do
      {
        v27 = *v25++;
        v26 = v27;
        v24 = v27 != 0;
        if (v27)
        {
          v28 = v26 == v23;
        }

        else
        {
          v28 = 1;
        }
      }

      while (!v28);
    }

    if (v23 <= 7)
    {
      break;
    }

    if (v23 <= 9)
    {
      if (v23 != 8)
      {
        if ((v6 & 1) == 0)
        {
          goto LABEL_158;
        }

        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 108) |= 1u;
        while (1)
        {
          LOBYTE(v110) = 0;
          v47 = objc_msgSend_position(v3) + 1;
          if (v47 >= objc_msgSend_position(v3) && (v48 = objc_msgSend_position(v3) + 1, v48 <= [v3 length]))
          {
            v49 = [v3 data];
            [v49 getBytes:&v110 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v46 |= (v110 & 0x7F) << v44;
          if ((v110 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v20 = v45++ >= 9;
          if (v20)
          {
            v37 = 0;
            goto LABEL_167;
          }
        }

        if ([v3 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v46;
        }

LABEL_167:
        v88 = 76;
LABEL_188:
        *(a1 + v88) = v37;
        goto LABEL_189;
      }

      if (!v24 || (*(a1 + 108) & 0x100) != 0)
      {
        goto LABEL_158;
      }

      if (v22 != 2)
      {
        v90 = 0;
        v91 = 0;
        v92 = 0;
        while (1)
        {
          LOBYTE(v110) = 0;
          v93 = objc_msgSend_position(v3) + 1;
          if (v93 >= objc_msgSend_position(v3) && (v94 = objc_msgSend_position(v3) + 1, v94 <= [v3 length]))
          {
            v95 = [v3 data];
            [v95 getBytes:&v110 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v92 |= (v110 & 0x7F) << v90;
          if ((v110 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v20 = v91++ >= 9;
          if (v20)
          {
            goto LABEL_214;
          }
        }

        [v3 hasError];
LABEL_214:
        PBRepeatedInt32Add();
        goto LABEL_189;
      }

      v110 = 0;
      v111 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_233;
      }

      while (1)
      {
        v56 = objc_msgSend_position(v3);
        if (v56 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
        {
          break;
        }

        v57 = 0;
        v58 = 0;
        v59 = 0;
        while (1)
        {
          v112 = 0;
          v60 = objc_msgSend_position(v3) + 1;
          if (v60 >= objc_msgSend_position(v3) && (v61 = objc_msgSend_position(v3) + 1, v61 <= [v3 length]))
          {
            v62 = [v3 data];
            [v62 getBytes:&v112 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v59 |= (v112 & 0x7F) << v57;
          if ((v112 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v20 = v58++ >= 9;
          if (v20)
          {
            goto LABEL_108;
          }
        }

        [v3 hasError];
LABEL_108:
        PBRepeatedInt32Add();
      }
    }

    else
    {
      if (v23 != 10)
      {
        if (v23 == 11)
        {
          if ((v6 & 1) == 0)
          {
            goto LABEL_158;
          }

          v82 = 0;
          v83 = 0;
          v84 = 0;
          *(a1 + 108) |= 0x40u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v85 = objc_msgSend_position(v3) + 1;
            if (v85 >= objc_msgSend_position(v3) && (v86 = objc_msgSend_position(v3) + 1, v86 <= [v3 length]))
            {
              v87 = [v3 data];
              [v87 getBytes:&v110 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v84 |= (v110 & 0x7F) << v82;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v82 += 7;
            v20 = v83++ >= 9;
            if (v20)
            {
              v37 = 0;
              goto LABEL_187;
            }
          }

          if ([v3 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v84;
          }

LABEL_187:
          v88 = 100;
        }

        else
        {
          if (v23 != 12)
          {
            goto LABEL_156;
          }

          if ((v6 & 1) == 0)
          {
            goto LABEL_158;
          }

          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 108) |= 8u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v34 = objc_msgSend_position(v3) + 1;
            if (v34 >= objc_msgSend_position(v3) && (v35 = objc_msgSend_position(v3) + 1, v35 <= [v3 length]))
            {
              v36 = [v3 data];
              [v36 getBytes:&v110 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v33 |= (v110 & 0x7F) << v31;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v20 = v32++ >= 9;
            if (v20)
            {
              v37 = 0;
              goto LABEL_179;
            }
          }

          if ([v3 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v33;
          }

LABEL_179:
          v88 = 88;
        }

        goto LABEL_188;
      }

      if (!v24 || (*(a1 + 108) & 0x200) != 0)
      {
        goto LABEL_158;
      }

      if (v22 != 2)
      {
        v96 = 0;
        v97 = 0;
        v98 = 0;
        while (1)
        {
          LOBYTE(v110) = 0;
          v99 = objc_msgSend_position(v3) + 1;
          if (v99 >= objc_msgSend_position(v3) && (v100 = objc_msgSend_position(v3) + 1, v100 <= [v3 length]))
          {
            v101 = [v3 data];
            [v101 getBytes:&v110 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v98 |= (v110 & 0x7F) << v96;
          if ((v110 & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v20 = v97++ >= 9;
          if (v20)
          {
            goto LABEL_216;
          }
        }

        [v3 hasError];
LABEL_216:
        PBRepeatedUInt32Add();
        goto LABEL_189;
      }

      v110 = 0;
      v111 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_233;
      }

      while (1)
      {
        v69 = objc_msgSend_position(v3);
        if (v69 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
        {
          break;
        }

        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          v112 = 0;
          v73 = objc_msgSend_position(v3) + 1;
          if (v73 >= objc_msgSend_position(v3) && (v74 = objc_msgSend_position(v3) + 1, v74 <= [v3 length]))
          {
            v75 = [v3 data];
            [v75 getBytes:&v112 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v72 |= (v112 & 0x7F) << v70;
          if ((v112 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v20 = v71++ >= 9;
          if (v20)
          {
            goto LABEL_135;
          }
        }

        [v3 hasError];
LABEL_135:
        PBRepeatedUInt32Add();
      }
    }

    PBReaderRecallMark();
LABEL_189:
    if (v109)
    {
      v89 = objc_msgSend_position(v3);
      if (v89 < [v3 length])
      {
        continue;
      }
    }

    goto LABEL_217;
  }

  if (v23 <= 4)
  {
    if (v23 == 1)
    {
      if ((v6 & 1) == 0)
      {
        goto LABEL_158;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
      *(a1 + 108) |= 0x20u;
      while (1)
      {
        LOBYTE(v110) = 0;
        v53 = objc_msgSend_position(v3) + 1;
        if (v53 >= objc_msgSend_position(v3) && (v54 = objc_msgSend_position(v3) + 1, v54 <= [v3 length]))
        {
          v55 = [v3 data];
          [v55 getBytes:&v110 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v52 |= (v110 & 0x7F) << v50;
        if ((v110 & 0x80) == 0)
        {
          break;
        }

        v50 += 7;
        v20 = v51++ >= 9;
        if (v20)
        {
          v37 = 0;
          goto LABEL_171;
        }
      }

      if ([v3 hasError])
      {
        v37 = 0;
      }

      else
      {
        v37 = v52;
      }

LABEL_171:
      v88 = 96;
    }

    else
    {
      if (v23 != 3)
      {
LABEL_156:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_233;
        }

        goto LABEL_189;
      }

      if ((v6 & 1) == 0)
      {
        goto LABEL_158;
      }

      v38 = 0;
      v39 = 0;
      v40 = 0;
      *(a1 + 108) |= 2u;
      while (1)
      {
        LOBYTE(v110) = 0;
        v41 = objc_msgSend_position(v3) + 1;
        if (v41 >= objc_msgSend_position(v3) && (v42 = objc_msgSend_position(v3) + 1, v42 <= [v3 length]))
        {
          v43 = [v3 data];
          [v43 getBytes:&v110 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v40 |= (v110 & 0x7F) << v38;
        if ((v110 & 0x80) == 0)
        {
          break;
        }

        v38 += 7;
        v20 = v39++ >= 9;
        if (v20)
        {
          v37 = 0;
          goto LABEL_163;
        }
      }

      if ([v3 hasError])
      {
        v37 = 0;
      }

      else
      {
        v37 = v40;
      }

LABEL_163:
      v88 = 80;
    }

    goto LABEL_188;
  }

  if (v23 == 5)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_158;
    }

    v63 = 0;
    v64 = 0;
    v65 = 0;
    *(a1 + 108) |= 4u;
    while (1)
    {
      LOBYTE(v110) = 0;
      v66 = objc_msgSend_position(v3) + 1;
      if (v66 >= objc_msgSend_position(v3) && (v67 = objc_msgSend_position(v3) + 1, v67 <= [v3 length]))
      {
        v68 = [v3 data];
        [v68 getBytes:&v110 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v65 |= (v110 & 0x7F) << v63;
      if ((v110 & 0x80) == 0)
      {
        break;
      }

      v63 += 7;
      v20 = v64++ >= 9;
      if (v20)
      {
        v37 = 0;
        goto LABEL_175;
      }
    }

    if ([v3 hasError])
    {
      v37 = 0;
    }

    else
    {
      v37 = v65;
    }

LABEL_175:
    v88 = 84;
    goto LABEL_188;
  }

  if (v23 == 6)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_158;
    }

    v76 = 0;
    v77 = 0;
    v78 = 0;
    *(a1 + 108) |= 0x80u;
    while (1)
    {
      LOBYTE(v110) = 0;
      v79 = objc_msgSend_position(v3) + 1;
      if (v79 >= objc_msgSend_position(v3) && (v80 = objc_msgSend_position(v3) + 1, v80 <= [v3 length]))
      {
        v81 = [v3 data];
        [v81 getBytes:&v110 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v78 |= (v110 & 0x7F) << v76;
      if ((v110 & 0x80) == 0)
      {
        break;
      }

      v76 += 7;
      v20 = v77++ >= 9;
      if (v20)
      {
        v37 = 0;
        goto LABEL_183;
      }
    }

    if ([v3 hasError])
    {
      v37 = 0;
    }

    else
    {
      v37 = v78;
    }

LABEL_183:
    v88 = 104;
    goto LABEL_188;
  }

  if (v6)
  {
    *(a1 + 108) |= 0x10u;
    LODWORD(v110) = 0;
    v29 = objc_msgSend_position(v3) + 4;
    if (v29 >= objc_msgSend_position(v3) && (v30 = objc_msgSend_position(v3) + 4, v30 <= [v3 length]))
    {
      v102 = [v3 data];
      [v102 getBytes:&v110 range:{objc_msgSend_position(v3), 4}];

      [v3 setPosition:objc_msgSend_position(v3) + 4];
    }

    else
    {
      [v3 _setError];
    }

    *(a1 + 92) = v110;
    goto LABEL_189;
  }

LABEL_158:
  if (PBReaderSkipValueWithTag())
  {
    goto LABEL_189;
  }

LABEL_233:
  v103 = 0;
LABEL_219:
  *(a1 + 108) |= 0x100u;
  *(a1 + 108) |= 0x200u;
  if (v103)
  {
    goto LABEL_230;
  }

  v3 = 0;
  if ((v11 & 1) == 0)
  {
    return v3;
  }

LABEL_231:
  v107 = *(a1 + 8);
  *(a1 + 8) = 0;

  return v3;
}

uint64_t GEOPDOrientedTilePositionReadAllFrom(uint64_t a1, void *a2)
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
          v53 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v53 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v53 & 0x7F) << v5;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          if (v6++ >= 9)
          {
            v12 = 0;
            goto LABEL_16;
          }
        }

        v12 = [v3 hasError] ? 0 : v7;
LABEL_16:
        v13 = [v3 hasError];
        v14 = (v12 & 7) == 4 ? 1 : v13;
        if (v14)
        {
          break;
        }

        v15 = v12 >> 3;
        if ((v12 >> 3) > 3)
        {
          switch(v15)
          {
            case 4:
              v35 = 0;
              v36 = 0;
              v18 = 0;
              *(a1 + 32) |= 0x10u;
              while (1)
              {
                v57 = 0;
                v37 = objc_msgSend_position(v3);
                if (v37 + 1 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3), v38 + 1 <= [v3 length]))
                {
                  v39 = [v3 data];
                  [v39 getBytes:&v57 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v18 |= (v57 & 0x7F) << v35;
                if ((v57 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                v22 = v36++ > 8;
                if (v22)
                {
                  v23 = 0;
                  v24 = &OBJC_IVAR___GEOPDOrientedTilePosition__yaw;
                  goto LABEL_92;
                }
              }

              v24 = &OBJC_IVAR___GEOPDOrientedTilePosition__yaw;
              break;
            case 5:
              v45 = 0;
              v46 = 0;
              v18 = 0;
              *(a1 + 32) |= 2u;
              while (1)
              {
                v56 = 0;
                v47 = objc_msgSend_position(v3);
                if (v47 + 1 >= objc_msgSend_position(v3) && (v48 = objc_msgSend_position(v3), v48 + 1 <= [v3 length]))
                {
                  v49 = [v3 data];
                  [v49 getBytes:&v56 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v18 |= (v56 & 0x7F) << v45;
                if ((v56 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                v22 = v46++ > 8;
                if (v22)
                {
                  v23 = 0;
                  v24 = &OBJC_IVAR___GEOPDOrientedTilePosition__pitch;
                  goto LABEL_92;
                }
              }

              v24 = &OBJC_IVAR___GEOPDOrientedTilePosition__pitch;
              break;
            case 6:
              v25 = 0;
              v26 = 0;
              v18 = 0;
              *(a1 + 32) |= 4u;
              while (1)
              {
                v55 = 0;
                v27 = objc_msgSend_position(v3);
                if (v27 + 1 >= objc_msgSend_position(v3) && (v28 = objc_msgSend_position(v3), v28 + 1 <= [v3 length]))
                {
                  v29 = [v3 data];
                  [v29 getBytes:&v55 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v18 |= (v55 & 0x7F) << v25;
                if ((v55 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                v22 = v26++ > 8;
                if (v22)
                {
                  v23 = 0;
                  v24 = &OBJC_IVAR___GEOPDOrientedTilePosition__roll;
                  goto LABEL_92;
                }
              }

              v24 = &OBJC_IVAR___GEOPDOrientedTilePosition__roll;
              break;
            default:
LABEL_63:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_95;
              }

              goto LABEL_93;
          }
        }

        else
        {
          switch(v15)
          {
            case 1:
              v30 = 0;
              v31 = 0;
              v18 = 0;
              *(a1 + 32) |= 8u;
              while (1)
              {
                v59 = 0;
                v32 = objc_msgSend_position(v3);
                if (v32 + 1 >= objc_msgSend_position(v3) && (v33 = objc_msgSend_position(v3), v33 + 1 <= [v3 length]))
                {
                  v34 = [v3 data];
                  [v34 getBytes:&v59 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v18 |= (v59 & 0x7F) << v30;
                if ((v59 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                v22 = v31++ > 8;
                if (v22)
                {
                  v23 = 0;
                  v24 = &OBJC_IVAR___GEOPDOrientedTilePosition__x;
                  goto LABEL_92;
                }
              }

              v24 = &OBJC_IVAR___GEOPDOrientedTilePosition__x;
              break;
            case 2:
              v40 = 0;
              v41 = 0;
              v18 = 0;
              *(a1 + 32) |= 0x20u;
              while (1)
              {
                v58 = 0;
                v42 = objc_msgSend_position(v3);
                if (v42 + 1 >= objc_msgSend_position(v3) && (v43 = objc_msgSend_position(v3), v43 + 1 <= [v3 length]))
                {
                  v44 = [v3 data];
                  [v44 getBytes:&v58 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v18 |= (v58 & 0x7F) << v40;
                if ((v58 & 0x80) == 0)
                {
                  break;
                }

                v40 += 7;
                v22 = v41++ > 8;
                if (v22)
                {
                  v23 = 0;
                  v24 = &OBJC_IVAR___GEOPDOrientedTilePosition__y;
                  goto LABEL_92;
                }
              }

              v24 = &OBJC_IVAR___GEOPDOrientedTilePosition__y;
              break;
            case 3:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *(a1 + 32) |= 1u;
              while (1)
              {
                v54 = 0;
                v19 = objc_msgSend_position(v3);
                if (v19 + 1 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3), v20 + 1 <= [v3 length]))
                {
                  v21 = [v3 data];
                  [v21 getBytes:&v54 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v18 |= (v54 & 0x7F) << v16;
                if ((v54 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v22 = v17++ > 8;
                if (v22)
                {
                  v23 = 0;
                  v24 = &OBJC_IVAR___GEOPDOrientedTilePosition__altitude;
                  goto LABEL_92;
                }
              }

              v24 = &OBJC_IVAR___GEOPDOrientedTilePosition__altitude;
              break;
            default:
              goto LABEL_63;
          }
        }

        if ([v3 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v18;
        }

LABEL_92:
        *(a1 + *v24) = v23;
LABEL_93:
        v50 = objc_msgSend_position(v3);
      }

      while (v50 < [v3 length]);
    }

    v51 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_95:
    v51 = 0;
  }

  objc_sync_exit(v3);

  return v51;
}

uint64_t GEOTileCoordinateReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      while (1)
      {
        if ([v3 hasError])
        {
          goto LABEL_61;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v39 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v39 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v39 & 0x7F) << v5;
          if ((v39 & 0x80) == 0)
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
          goto LABEL_61;
        }

        v14 = v7 >> 3;
        if (v14 == 3)
        {
          v29 = 0;
          v30 = 0;
          v17 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v40 = 0;
            v31 = objc_msgSend_position(v3);
            if (v31 + 1 >= objc_msgSend_position(v3) && (v32 = objc_msgSend_position(v3), v32 + 1 <= [v3 length]))
            {
              v33 = [v3 data];
              [v33 getBytes:&v40 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v40 & 0x7F) << v29;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v21 = v30++ > 8;
            if (v21)
            {
              v22 = 0;
              v23 = &OBJC_IVAR___GEOTileCoordinate__zoom;
              goto LABEL_59;
            }
          }

          v23 = &OBJC_IVAR___GEOTileCoordinate__zoom;
          goto LABEL_56;
        }

        if (v14 == 2)
        {
          break;
        }

        if (v14 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v42 = 0;
            v18 = objc_msgSend_position(v3);
            if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
            {
              v20 = [v3 data];
              [v20 getBytes:&v42 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v42 & 0x7F) << v15;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v21 = v16++ > 8;
            if (v21)
            {
              v22 = 0;
              v23 = &OBJC_IVAR___GEOTileCoordinate__x;
              goto LABEL_59;
            }
          }

          v23 = &OBJC_IVAR___GEOTileCoordinate__x;
          goto LABEL_56;
        }

        if (!*(a1 + 8))
        {
          v34 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v35 = *(a1 + 8);
          *(a1 + 8) = v34;
        }

        if ((PBUnknownFieldAdd() & 1) == 0)
        {
          goto LABEL_62;
        }

LABEL_60:
        v36 = objc_msgSend_position(v3);
        if (v36 >= [v3 length])
        {
          goto LABEL_61;
        }
      }

      v24 = 0;
      v25 = 0;
      v17 = 0;
      *(a1 + 28) |= 2u;
      while (1)
      {
        v41 = 0;
        v26 = objc_msgSend_position(v3);
        if (v26 + 1 >= objc_msgSend_position(v3) && (v27 = objc_msgSend_position(v3), v27 + 1 <= [v3 length]))
        {
          v28 = [v3 data];
          [v28 getBytes:&v41 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v17 |= (v41 & 0x7F) << v24;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v21 = v25++ > 8;
        if (v21)
        {
          v22 = 0;
          v23 = &OBJC_IVAR___GEOTileCoordinate__y;
          goto LABEL_59;
        }
      }

      v23 = &OBJC_IVAR___GEOTileCoordinate__y;
LABEL_56:
      if ([v3 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v17;
      }

LABEL_59:
      *(a1 + *v23) = v22;
      goto LABEL_60;
    }

LABEL_61:
    v37 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_62:
    v37 = 0;
  }

  objc_sync_exit(v3);

  return v37;
}

uint64_t GEOPDRigMetricsReadAllFrom(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_sync_enter(v2);
  if (v2)
  {
    v3 = objc_msgSend_position(v2);
    if (v3 < [v2 length])
    {
      do
      {
        if ([v2 hasError])
        {
          break;
        }

        v4 = 0;
        v5 = 0;
        v6 = 0;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v7 = objc_msgSend_position(v2);
          if (v7 + 1 >= objc_msgSend_position(v2) && (v8 = objc_msgSend_position(v2), v8 + 1 <= [v2 length]))
          {
            v9 = [v2 data];
            [v9 getBytes:v31 range:{objc_msgSend_position(v2), 1}];

            [v2 setPosition:objc_msgSend_position(v2) + 1];
          }

          else
          {
            [v2 _setError];
          }

          v6 |= (v31[0] & 0x7F) << v4;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v4 += 7;
          v10 = v5++ >= 9;
          if (v10)
          {
            v11 = 0;
            goto LABEL_16;
          }
        }

        v11 = [v2 hasError] ? 0 : v6;
LABEL_16:
        v12 = [v2 hasError];
        v13 = (v11 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          break;
        }

        if ((v11 >> 3) == 1)
        {
          if ((v11 & 7) == 2)
          {
            v31[0] = 0;
            v31[1] = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_53;
            }

            v14 = objc_msgSend_position(v2);
            for (i = [v2 length]; v14 < i && (objc_msgSend(v2, "hasError") & 1) == 0; i = objc_msgSend(v2, "length"))
            {
              v16 = 0;
              v17 = 0;
              v18 = 0;
              while (1)
              {
                v32 = 0;
                v19 = objc_msgSend_position(v2);
                if (v19 + 1 >= objc_msgSend_position(v2) && (v20 = objc_msgSend_position(v2), v20 + 1 <= [v2 length]))
                {
                  v21 = [v2 data];
                  [v21 getBytes:&v32 range:{objc_msgSend_position(v2), 1}];

                  [v2 setPosition:objc_msgSend_position(v2) + 1];
                }

                else
                {
                  [v2 _setError];
                }

                v18 |= (v32 & 0x7F) << v16;
                if ((v32 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v10 = v17++ >= 9;
                if (v10)
                {
                  goto LABEL_36;
                }
              }

              [v2 hasError];
LABEL_36:
              PBRepeatedUInt32Add();
              v14 = objc_msgSend_position(v2);
            }

            PBReaderRecallMark();
          }

          else
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v31[0]) = 0;
              v25 = objc_msgSend_position(v2);
              if (v25 + 1 >= objc_msgSend_position(v2) && (v26 = objc_msgSend_position(v2), v26 + 1 <= [v2 length]))
              {
                v27 = [v2 data];
                [v27 getBytes:v31 range:{objc_msgSend_position(v2), 1}];

                [v2 setPosition:objc_msgSend_position(v2) + 1];
              }

              else
              {
                [v2 _setError];
              }

              v24 |= (v31[0] & 0x7F) << v22;
              if ((v31[0] & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v10 = v23++ >= 9;
              if (v10)
              {
                goto LABEL_50;
              }
            }

            [v2 hasError];
LABEL_50:
            PBRepeatedUInt32Add();
          }
        }

        else if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_53;
        }

        v28 = objc_msgSend_position(v2);
      }

      while (v28 < [v2 length]);
    }

    v29 = [v2 hasError] ^ 1;
  }

  else
  {
LABEL_53:
    v29 = 0;
  }

  objc_sync_exit(v2);

  return v29;
}

uint64_t geo::codec::decodeLabelLineRangeUsingTileLine(uint64_t *a1, double *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = a1[2];
  v5 = 8 * a1[1];
  if (v4 + v3 > v5)
  {
    return 0;
  }

  if (v3)
  {
    v6 = 0;
    v7 = *a1;
    v8 = *(a3 + 8);
    do
    {
      v9 = 8 - (v4 & 7);
      if (v8 < v9)
      {
        v9 = v8;
      }

      v6 = (*(v7 + (v4 >> 3)) >> (8 - (v4 & 7) - v9)) & ~(-1 << v9) | (v6 << v9);
      v4 += v9;
      a1[2] = v4;
      v8 -= v9;
    }

    while (v8);
    v10 = *(*a3 + 8) + *(a3 + 16) * (v6 << -v3 >> -v3);
  }

  else
  {
    v10 = *(*a3 + 8);
  }

  *a2 = v10;
  v11 = *(a3 + 12);
  if (v4 + v11 > v5)
  {
    return 0;
  }

  if (v11)
  {
    v13 = 0;
    v14 = *a1;
    do
    {
      v15 = 8 - (v4 & 7);
      if (v11 < v15)
      {
        v15 = v11;
      }

      v13 = (*(v14 + (v4 >> 3)) >> (8 - (v4 & 7) - v15)) & ~(-1 << v15) | (v13 << v15);
      v4 += v15;
      a1[2] = v4;
      v11 -= v15;
    }

    while (v11);
    v16 = *(a3 + 16);
    v17 = v16 * v13;
  }

  else
  {
    v16 = *(a3 + 16);
    v17 = 0.0;
  }

  v18 = v10 + v17;
  a2[1] = v18;
  v19 = v16 * 0.6;
  if (fabs(v10 + -1.0) < v19)
  {
    *a2 = 1.0;
  }

  if (fabs(v18 + -1.0) < v19)
  {
    a2[1] = 1.0;
  }

  return 1;
}

void *std::__allocate_at_least[abi:ne200100]<geo::allocator_adapter<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::FeatureInfo,geo::codec::zone_mallocator>>(geo::codec::zone_mallocator *a1)
{
  v2 = geo::codec::zone_mallocator::instance(a1);
  v3 = pthread_rwlock_rdlock((v2 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "read lock", v4);
  }

  v5 = malloc_type_zone_malloc(*v2, 48 * a1, 0x10200405DD6166BuLL);
  atomic_fetch_add((v2 + 24), 1u);
  v6 = pthread_rwlock_unlock((v2 + 32));
  if (v6)
  {
    geo::read_write_lock::logFailure(v6, "unlock", v7);
  }

  return v5;
}

void sub_1867908C4(_Unwind_Exception *a1)
{
  v3 = pthread_rwlock_unlock((v1 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "unlock", v4);
  }

  _Unwind_Resume(a1);
}

void std::allocator_traits<geo::allocator_adapter<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::FeatureInfo,geo::codec::zone_mallocator>>::deallocate[abi:ne200100](geo::codec::zone_mallocator *a1)
{
  v2 = geo::codec::zone_mallocator::instance(a1);
  v3 = pthread_rwlock_rdlock((v2 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "read lock", v4);
  }

  if (a1)
  {
    atomic_fetch_add((v2 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*v2, a1);
  v5 = pthread_rwlock_unlock((v2 + 32));
  if (v5)
  {

    geo::read_write_lock::logFailure(v5, "unlock", v6);
  }
}

void sub_18679097C(void *a1)
{
  v3 = pthread_rwlock_unlock((v1 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "unlock", v4);
    __clang_call_terminate(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t mgcl::ints::IntDecompressor<unsigned int>::decompress(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, char a4, char a5, unint64_t a6, int32x4_t *a7)
{
  v255 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    return 0;
  }

  v11 = 4 * a6;
  bzero(a7, 4 * a6);
  v12 = *a2;
  if ((v12 - 66) < 0xFFFFFFBF)
  {
    return 3;
  }

  v254 = 0;
  memset(__dst, 0, sizeof(__dst));
  v238 = a2 + 1;
  v239 = a1;
  memcpy(__dst, a2 + 1, v12);
  v15 = 0;
  v16 = v12 + 1;
  v235 = 8 * a6;
  v236 = v12;
  v226 = (a7 + v11);
  v228 = v11;
  v229 = a6 & 0xFFFFFFFFFFFFFFF8;
  v231 = a2 + 2;
  v237 = 8 * a3 - 24;
  v17.i64[0] = 0xFFFFFF0DFFFFFF0CLL;
  v240 = a2;
  while (1)
  {
    v241 = v15;
    v18 = *(__dst + v15);
    v19 = a2[v16];
    v20 = v16 + 1;
    v21 = 0;
    v22 = 0;
    if (!v18)
    {
      break;
    }

    v23 = 0;
    v24 = &a2[v20];
    v25 = v237 - 8 * v16;
    do
    {
      v26 = v24[v22];
      v27 = v25;
      v23 |= (v24[v22] & 0x7F) << v21;
      v28 = v22 + 1;
      if (v22 > 8)
      {
        break;
      }

      v21 += 7;
      v25 -= 8;
      ++v22;
    }

    while (v26 < 0);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v16 + v28;
    v33 = &v238[v16 + v28];
    do
    {
      v34 = v33[v30];
      v31 |= (v33[v30] & 0x7F) << v29;
      v35 = v30 + 1;
      if (v30 > 8)
      {
        break;
      }

      v29 += 7;
      v27 -= 8;
      ++v30;
    }

    while (v34 < 0);
    v36 = v32 + v35;
    v16 = v32 + v35 + 1;
    result = 3;
    if (v19 <= 2)
    {
      if (v19 != 1)
      {
        if (v19 != 2)
        {
          return result;
        }

        v37 = v239[1];
        v38 = &v37[-*v239];
        v39 = v235 - v38;
        if (v235 <= v38)
        {
          if (v235 < v38)
          {
            v239[1] = *v239 + v235;
          }
        }

        else
        {
          if (v239[2] - v37 < v39)
          {
            if ((v235 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            goto LABEL_176;
          }

          v93 = &v37[v39];
          bzero(v37, v39);
          v239[1] = v93;
        }

        v94 = *v239;
        result = mgcl::muid::decompress(&v240[v16], v31, 0, 0, *v239, 8, a6);
        if (result)
        {
          return result;
        }

        if (v18 <= 0x3F)
        {
          v96 = ~(-1 << v18);
          if (a6 > 7)
          {
            v17 = vdupq_n_s64(v23);
            v14 = vdupq_n_s64(v18);
            v109 = (v94 + 32);
            v110 = a7 + 1;
            v111 = vdupq_n_s64(v96);
            v112 = a6 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v113 = v109[-2];
              v114 = v109[-1];
              v115 = *v109;
              v116 = v109[1];
              v109 += 4;
              v117 = v110[-1];
              v118.i64[0] = v117.u32[2];
              v118.i64[1] = v117.u32[3];
              v119 = v118;
              v118.i64[0] = v117.u32[0];
              v118.i64[1] = v117.u32[1];
              v120 = v118;
              v118.i64[0] = v110->i64[1];
              v118.i64[1] = HIDWORD(*v110);
              v121 = v118;
              v118.i64[0] = v110->u32[0];
              v118.i64[1] = HIDWORD(v110->i64[0]);
              v110[-1] = vuzp1q_s32(vorrq_s8(vshlq_u64(v120, v14), vandq_s8(vaddq_s64(v113, v17), v111)), vorrq_s8(vshlq_u64(v119, v14), vandq_s8(vaddq_s64(v114, v17), v111)));
              *v110 = vuzp1q_s32(vorrq_s8(vshlq_u64(v118, v14), vandq_s8(vaddq_s64(v115, v17), v111)), vorrq_s8(vshlq_u64(v121, v14), vandq_s8(vaddq_s64(v116, v17), v111)));
              v110 += 2;
              v112 -= 8;
            }

            while (v112);
            v97 = a6 & 0xFFFFFFFFFFFFFFF8;
            if (v229 == a6)
            {
              goto LABEL_108;
            }
          }

          else
          {
            v97 = 0;
          }

          v122 = a6 - v97;
          v123 = &a7->i32[v97];
          v124 = (v94 + 8 * v97);
          do
          {
            v125 = *v124;
            v124 += 2;
            *v123 = (*v123 << v18) | (v125 + v23) & v96;
            ++v123;
            --v122;
          }

          while (v122);
        }

        else
        {
          if (a6 < 8)
          {
            v95 = 0;
            goto LABEL_100;
          }

          v17 = vdupq_n_s64(v23);
          v98 = (v94 + 32);
          v99 = a7 + 1;
          v100 = a6 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v101 = v98[-2];
            v102 = v98[-1];
            v103 = *v98;
            v104 = v98[1];
            v98 += 4;
            v14 = vuzp1q_s32(vaddq_s64(v101, v17), vaddq_s64(v102, v17));
            v99[-1] = v14;
            *v99 = vuzp1q_s32(vaddq_s64(v103, v17), vaddq_s64(v104, v17));
            v99 += 2;
            v100 -= 8;
          }

          while (v100);
          v95 = a6 & 0xFFFFFFFFFFFFFFF8;
          if (v229 != a6)
          {
LABEL_100:
            v105 = a6 - v95;
            v106 = &a7->i32[v95];
            v107 = (v94 + 8 * v95);
            do
            {
              v108 = *v107;
              v107 += 2;
              *v106++ = v108 + v23;
              --v105;
            }

            while (v105);
          }
        }

LABEL_108:
        v16 += v31;
        a2 = v240;
        goto LABEL_5;
      }

      if (!v239[3])
      {
        operator new();
      }

      *&v244[6] = 0x10000;
      v243 = 0;
      BYTE4(v243) = a4;
      BYTE5(v243) = a5;
      *&v244[4] = a6;
      v244[13] = v18 == 1;
      *v244 = v31 - 2;
      if (v31 <= 1)
      {
        return 3;
      }

      v57 = v240[v16];
      v58 = v231[v36];
      v59 = v36 + 3;
      v242 = 0;
      v61 = *v239;
      v60 = v239[1];
      v62 = &v60[-*v239];
      v230 = (v31 - 2);
      if (v18 == 1)
      {
        v63 = a6 - v62;
        if (a6 <= v62)
        {
          v126 = v59;
          v64 = v239;
          if (a6 < v62)
          {
            v239[1] = v61 + a6;
          }
        }

        else
        {
          v64 = v239;
          v65 = v239[2];
          if (v65 - v60 < v63)
          {
            if ((a6 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            goto LABEL_176;
          }

          v126 = v59;
          v139 = &v60[v63];
          v140 = v63;
          v141 = v58;
          v142 = v57;
          bzero(v60, v140);
          v57 = v142;
          v58 = v141;
          v239[1] = v139;
        }

        v143 = *v64;
        v144 = v126;
        result = mgcl::iarray::Decoder::decompress(**v64[3], &v240[v126], &v243, v57, v58, &v242, *v64, *v17.i64, v14);
        if (result)
        {
          return result;
        }

        if (a6 < 4)
        {
          v145 = 0;
          a2 = v240;
          v146 = v230;
          goto LABEL_167;
        }

        a2 = v240;
        v146 = v230;
        if (a6 >= 0x10)
        {
          v17 = vdupq_n_s64(v23);
          v174 = v143;
          v175 = a7;
          v176 = a6 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v177 = *v174++;
            v178 = vqtbl1q_s8(v177, xmmword_187FBF330);
            v179 = vqtbl1q_s8(v177, xmmword_187FBF340);
            v180 = vqtbl1q_s8(v177, xmmword_187FBF320);
            v181 = vqtbl1q_s8(v177, xmmword_187FBF310);
            v183 = v175[2];
            v182 = v175[3];
            v185 = *v175;
            v184 = v175[1];
            v186 = vextq_s8(v185, v185, 8uLL).u64[0];
            v187 = vextq_s8(v184, v184, 8uLL).u64[0];
            v188 = vextq_s8(v183, v183, 8uLL).u64[0];
            v189 = vextq_s8(v182, v182, 8uLL).u64[0];
            v190 = vadd_s32(v189, v189);
            v191.i64[0] = v190.u32[0];
            v191.i64[1] = v190.u32[1];
            v192 = v191;
            *v182.i8 = vadd_s32(*v182.i8, *v182.i8);
            v191.i64[0] = v182.u32[0];
            v191.i64[1] = v182.u32[1];
            v193 = v191;
            v194 = vadd_s32(v188, v188);
            v191.i64[0] = v194.u32[0];
            v191.i64[1] = v194.u32[1];
            v195 = v191;
            *v183.i8 = vadd_s32(*v183.i8, *v183.i8);
            v191.i64[0] = v183.u32[0];
            v191.i64[1] = v183.u32[1];
            v196 = v191;
            *v184.i8 = vadd_s32(*v184.i8, *v184.i8);
            v191.i64[0] = v184.u32[0];
            v191.i64[1] = v184.u32[1];
            v197 = v191;
            v198 = vadd_s32(v187, v187);
            v191.i64[0] = v198.u32[0];
            v191.i64[1] = v198.u32[1];
            v199 = v191;
            *v185.i8 = vadd_s32(*v185.i8, *v185.i8);
            v191.i64[0] = v185.u32[0];
            v191.i64[1] = v185.u32[1];
            v200 = v191;
            v201 = vadd_s32(v186, v186);
            v191.i64[0] = v201.u32[0];
            v191.i64[1] = v201.u32[1];
            v202 = vdupq_n_s64(1uLL);
            *v175 = vuzp1q_s32(vorrq_s8(v200, vandq_s8(vaddw_u32(v17, *v178.i8), v202)), vorrq_s8(v191, vandq_s8(vaddw_high_u32(v17, v178), v202)));
            v175[1] = vuzp1q_s32(vorrq_s8(v197, vandq_s8(vaddw_u32(v17, *v179.i8), v202)), vorrq_s8(v199, vandq_s8(vaddw_high_u32(v17, v179), v202)));
            v14 = vuzp1q_s32(vorrq_s8(v193, vandq_s8(vaddw_u32(v17, *v181.i8), v202)), vorrq_s8(v192, vandq_s8(vaddw_high_u32(v17, v181), v202)));
            v175[2] = vuzp1q_s32(vorrq_s8(v196, vandq_s8(vaddw_u32(v17, *v180.i8), v202)), vorrq_s8(v195, vandq_s8(vaddw_high_u32(v17, v180), v202)));
            v175[3] = v14;
            v175 += 4;
            v176 -= 16;
          }

          while (v176);
          if ((a6 & 0xFFFFFFFFFFFFFFF0) != a6)
          {
            v145 = a6 & 0xFFFFFFFFFFFFFFF0;
            v147 = a6 & 0xFFFFFFFFFFFFFFF0;
            if ((a6 & 0xC) == 0)
            {
              goto LABEL_167;
            }

            goto LABEL_164;
          }
        }

        else
        {
          v147 = 0;
LABEL_164:
          v17 = vdupq_n_s64(v23);
          v203 = v147 - (a6 & 0xFFFFFFFFFFFFFFFCLL);
          v204 = (a7 + 4 * v147);
          v205 = (v143 + v147);
          do
          {
            v206 = *v205++;
            v14.n128_u32[0] = v206;
            v207 = vmovl_u16(*&vmovl_u8(v14.n128_u64[0]));
            v208 = vaddq_s32(*v204, *v204);
            v209.i64[0] = v208.u32[0];
            v209.i64[1] = v208.u32[1];
            v210 = v209;
            v209.i64[0] = v208.u32[2];
            v209.i64[1] = v208.u32[3];
            v211 = vdupq_n_s64(1uLL);
            v14 = vuzp1q_s32(vorrq_s8(v210, vandq_s8(vaddw_u32(v17, *v207.i8), v211)), vorrq_s8(v209, vandq_s8(vaddw_high_u32(v17, v207), v211)));
            *v204++ = v14;
            v203 += 4;
          }

          while (v203);
          v145 = a6 & 0xFFFFFFFFFFFFFFFCLL;
          if ((a6 & 0xFFFFFFFFFFFFFFFCLL) != a6)
          {
LABEL_167:
            v212 = a6 - v145;
            v213 = &a7->i32[v145];
            v214 = (v143 + v145);
            do
            {
              v215 = *v214++;
              *v213 = (v23 + v215) & 1 | (2 * *v213);
              ++v213;
              --v212;
            }

            while (v212);
          }
        }
      }

      else
      {
        __n = v59;
        v91 = v228 - v62;
        if (v228 <= v62)
        {
          v92 = v239;
          if (v228 < v62)
          {
            v239[1] = v61 + v228;
          }
        }

        else
        {
          v92 = v239;
          if (v239[2] - v60 < v91)
          {
            if ((a6 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            goto LABEL_176;
          }

          v148 = &v60[v91];
          v149 = v91;
          v150 = v58;
          v151 = v57;
          bzero(v60, v149);
          v57 = v151;
          v58 = v150;
          v239[1] = v148;
        }

        v152 = *v92;
        v144 = __n;
        v153 = *v92[3];
        LODWORD(v245) = 0;
        BYTE4(v245) = a4;
        BYTE5(v245) = a5;
        HIWORD(v245) = 0;
        v247 = 0;
        v248 = v18 == 1;
        v249 = 0;
        if (v57 >= 4)
        {
          v154 = 1;
        }

        else
        {
          v154 = v57;
        }

        v250 = v154;
        if (v58 == 2)
        {
          v155 = 4;
        }

        else
        {
          v155 = 1;
        }

        if (!v58)
        {
          v155 = 0;
        }

        v251 = v155;
        *(&v246 + 1) = *&v244[8];
        *&v246 = *v244;
        v156 = *v153;
        v252[0] = &v240[__n];
        v252[1] = *v244;
        result = gcl::polyline::DecoderImpl::decompressAttributes(v156, v252, v152, &v245);
        if (result)
        {
          return result;
        }

        if (v18 > 0x3F)
        {
          v157 = 0;
          a2 = v240;
          v146 = v230;
          if (a6 < 8)
          {
            goto LABEL_150;
          }

          if ((a7 - v152) < 0x20)
          {
            goto LABEL_150;
          }

          v17 = vdupq_n_s32(v23);
          v158 = v152 + 1;
          v159 = a7 + 1;
          v160 = a6 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v14 = vaddq_s32(v158[-1], v17);
            v161 = vaddq_s32(*v158, v17);
            v159[-1] = v14;
            *v159 = v161;
            v159 += 2;
            v158 += 2;
            v160 -= 8;
          }

          while (v160);
          v157 = a6 & 0xFFFFFFFFFFFFFFF8;
          if (v229 != a6)
          {
LABEL_150:
            v162 = a6 - v157;
            v163 = v157;
            v164 = &a7->i32[v157];
            v165 = &v152->i32[v163];
            do
            {
              v166 = *v165++;
              *v164++ = v166 + v23;
              --v162;
            }

            while (v162);
          }

          goto LABEL_169;
        }

        v167 = ~(-1 << v18);
        a2 = v240;
        v146 = v230;
        if (a6 > 7 && (&v152->i8[v228] <= a7 || v152 >= v226))
        {
          v17 = vdupq_n_s64(v23);
          v14 = vdupq_n_s64(v18);
          v216 = &v152[1];
          v217 = a7 + 1;
          v218 = vdupq_n_s64(v167);
          v219 = a6 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v220 = v217[-1];
            v221.i64[0] = v220.u32[2];
            v221.i64[1] = v220.u32[3];
            v222 = v221;
            v221.i64[0] = v220.u32[0];
            v221.i64[1] = v220.u32[1];
            v223 = v221;
            v221.i64[0] = v217->i64[1];
            v221.i64[1] = HIDWORD(*v217);
            v224 = v221;
            v221.i64[0] = v217->u32[0];
            v221.i64[1] = HIDWORD(v217->i64[0]);
            v225 = vuzp1q_s32(vorrq_s8(vshlq_u64(v221, v14), vandq_s8(vaddw_u32(v17, *v216), v218)), vorrq_s8(vshlq_u64(v224, v14), vandq_s8(vaddw_high_u32(v17, *v216->i8), v218)));
            v217[-1] = vuzp1q_s32(vorrq_s8(vshlq_u64(v223, v14), vandq_s8(vaddw_u32(v17, v216[-2]), v218)), vorrq_s8(vshlq_u64(v222, v14), vandq_s8(vaddw_high_u32(v17, *v216[-2].i8), v218)));
            *v217 = v225;
            v217 += 2;
            v216 += 4;
            v219 -= 8;
          }

          while (v219);
          v168 = a6 & 0xFFFFFFFFFFFFFFF8;
          if (v229 == a6)
          {
            goto LABEL_169;
          }
        }

        else
        {
          v168 = 0;
        }

        v169 = a6 - v168;
        v170 = v168;
        v171 = &a7->i32[v168];
        v172 = &v152->i32[v170];
        do
        {
          v173 = *v172++;
          *v171 = (*v171 << v18) | (v23 + v173) & v167;
          ++v171;
          --v169;
        }

        while (v169);
      }

LABEL_169:
      v16 = &v146[v144];
      goto LABEL_5;
    }

    if (v19 != 3)
    {
      if (v19 == 4)
      {
        operator new();
      }

      return result;
    }

    v66 = *v239;
    if (v239[1] != *v239)
    {
      v239[1] = v66;
    }

    if (v239[2] - v66 < v235)
    {
      if ((v235 & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_176:
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v67 = 0;
    a2 = v240;
    do
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = &v240[v16];
      do
      {
        v72 = v71[v69];
        v70 |= (v71[v69] & 0x7F) << v68;
        v73 = v69 + 1;
        if (v69 > 8)
        {
          break;
        }

        v68 += 7;
        ++v69;
      }

      while (v72 < 0);
      v74 = v70 + v23;
      if (v18 < 0x40)
      {
        a7->i32[v67] = (a7->u32[v67] << v18) | v74 & ~(-1 << v18);
      }

      else
      {
        a7->i32[v67] = v74;
      }

      v16 += v73;
      ++v67;
    }

    while (v67 != a6);
LABEL_5:
    v15 = v241 + 1;
    if (v241 + 1 == v236)
    {
      return 0;
    }
  }

  v40 = 0;
  v41 = &a2[v20];
  v42 = v237 - 8 * v16;
  do
  {
    v43 = v41[v22];
    v44 = v42;
    v40 |= (v41[v22] & 0x7F) << v21;
    v45 = v22 + 1;
    if (v22 > 8)
    {
      break;
    }

    v21 += 7;
    v42 -= 8;
    ++v22;
  }

  while (v43 < 0);
  v46 = 0;
  v47 = 0;
  v31 = 0;
  v48 = v16 + v45;
  v49 = &v238[v16 + v45];
  do
  {
    v50 = v49[v47];
    v31 |= (v49[v47] & 0x7F) << v46;
    v51 = v47 + 1;
    if (v47 > 8)
    {
      break;
    }

    v46 += 7;
    v44 -= 8;
    ++v47;
  }

  while (v50 < 0);
  v52 = v48 + v51;
  v16 = v48 + v51 + 1;
  result = 3;
  if (v19 <= 2)
  {
    if (v19 != 1)
    {
      if (v19 != 2)
      {
        return result;
      }

      v53 = v239[1];
      v54 = &v53[-*v239];
      v55 = v235 - v54;
      if (v235 <= v54)
      {
        if (v235 < v54)
        {
          v239[1] = *v239 + v235;
        }
      }

      else
      {
        v56 = v239[2];
        if (v56 - v53 < v55)
        {
          if ((v235 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_177;
        }

        v127 = &v53[v55];
        bzero(v53, v55);
        v239[1] = v127;
      }

      v128 = *v239;
      result = mgcl::muid::decompress(&v240[v16], v31, 0, 0, *v239, 8, a6);
      if (result)
      {
        return result;
      }

      v129 = a7;
      v130 = a6;
      do
      {
        v131 = *v128++;
        if (v131 != -v40 && v129->i32[0])
        {
          v129->i32[0] = -v129->i32[0];
        }

        v129 = (v129 + 4);
        --v130;
      }

      while (v130);
      goto LABEL_108;
    }

    if (!v239[3])
    {
      operator new();
    }

    *(&v246 + 6) = 0x100000000010000;
    v245 = 0;
    BYTE4(v245) = a4;
    BYTE5(v245) = a5;
    DWORD1(v246) = a6;
    v75 = (v31 - 2);
    LODWORD(v246) = v31 - 2;
    if (v31 <= 1)
    {
      return 3;
    }

    v76 = v240[v16];
    v77 = v231[v52];
    v243 = 0;
    v78 = v239[1];
    v79 = &v78[-*v239];
    v80 = a6 - v79;
    if (a6 <= v79)
    {
      if (a6 < v79)
      {
        v239[1] = *v239 + a6;
      }
    }

    else
    {
      v81 = v239[2];
      if (v81 - v78 < v80)
      {
        if ((a6 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_177;
      }

      v132 = &v78[v80];
      v133 = v80;
      v134 = v77;
      bzero(v78, v133);
      v77 = v134;
      v239[1] = v132;
    }

    v135 = *v239;
    result = mgcl::iarray::Decoder::decompress(**v239[3], &v240[v52 + 3], &v245, v76, v77, &v243, *v239, *v17.i64, v14);
    if (result)
    {
      return result;
    }

    v136 = a7;
    v137 = a6;
    do
    {
      v138 = *v135++;
      if (v40 + v138 && v136->i32[0])
      {
        v136->i32[0] = -v136->i32[0];
      }

      v136 = (v136 + 4);
      --v137;
    }

    while (v137);
    v16 = &v75[v52 + 3];
    a2 = v240;
    goto LABEL_5;
  }

  if (v19 == 3)
  {
    v82 = *v239;
    if (v239[1] != *v239)
    {
      v239[1] = v82;
    }

    if (v239[2] - v82 < v235)
    {
      if ((v235 & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_177:
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v83 = 0;
    a2 = v240;
    do
    {
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = &v240[v16];
      do
      {
        v88 = v87[v85];
        v86 |= (v87[v85] & 0x7F) << v84;
        v89 = v85 + 1;
        if (v85 > 8)
        {
          break;
        }

        v84 += 7;
        ++v85;
      }

      while (v88 < 0);
      if (v86 != -v40)
      {
        v90 = a7->i32[v83];
        if (v90)
        {
          a7->i32[v83] = -v90;
        }
      }

      v16 += v89;
      ++v83;
    }

    while (v83 != a6);
    goto LABEL_5;
  }

  if (v19 == 4)
  {
    operator new();
  }

  return result;
}

void sub_186792910(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v2, 0x20C4093837F09);
  MEMORY[0x18CFD1E40](v1, 0x20C4093837F09);
  _Unwind_Resume(a1);
}

void std::vector<GeoCodecsTrafficSkeleton,geo::allocator_adapter<GeoCodecsTrafficSkeleton,geo::codec::zone_mallocator>>::emplace_back<GeoCodecsTrafficSkeleton&>(unint64_t *result, uint64_t a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    if (v12 + 1 > 0x666666666666666)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *result) >> 3);
    v14 = 2 * v13;
    if (2 * v13 <= v12 + 1)
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x333333333333333)
    {
      v15 = 0x666666666666666;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      v16 = a2;
      v17 = geo::codec::zone_mallocator::instance(result);
      v18 = pthread_rwlock_rdlock((v17 + 32));
      if (v18)
      {
        geo::read_write_lock::logFailure(v18, "read lock", v19);
      }

      v20 = malloc_type_zone_malloc(*v17, 40 * v15, 0x1020040532F877EuLL);
      atomic_fetch_add((v17 + 24), 1u);
      result = pthread_rwlock_unlock((v17 + 32));
      if (result)
      {
        geo::read_write_lock::logFailure(result, "unlock", v21);
      }

      a2 = v16;
    }

    else
    {
      v20 = 0;
    }

    v22 = &v20[40 * v12];
    *v22 = *a2;
    *(v22 + 1) = 0;
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    v22[32] = *(a2 + 32);
    v24 = *(a2 + 8);
    v23 = *(a2 + 16);
    v25 = v23 - v24;
    if (v23 != v24)
    {
      if ((v25 >> 5) >> 59)
      {
        std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
      }

      v26 = geo::codec::zone_mallocator::instance(result);
      v27 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsTrafficSkeletonRecord>(v26, v25 >> 5);
      *(v22 + 1) = v27;
      *(v22 + 2) = v27;
      v28 = &v27[v25];
      *(v22 + 3) = &v27[v25];
      result = memmove(v27, v24, v25);
      *(v22 + 2) = v28;
    }

    v29 = *v2;
    v30 = *(v2 + 8);
    v31 = &v22[*v2 - v30];
    if (v30 != *v2)
    {
      v32 = &v22[*v2 - v30];
      v33 = *v2;
      do
      {
        *v32 = *v33;
        *(v32 + 1) = 0;
        *(v32 + 2) = 0;
        *(v32 + 3) = 0;
        v32[32] = *(v33 + 32);
        *(v32 + 8) = *(v33 + 1);
        *(v32 + 3) = v33[3];
        v33[1] = 0;
        v33[2] = 0;
        v33[3] = 0;
        v33 += 5;
        v32 += 40;
      }

      while (v33 != v30);
      do
      {
        v34 = v29[1];
        if (v34)
        {
          v29[2] = v34;
          v35 = geo::codec::zone_mallocator::instance(result);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsTrafficSkeletonRecord>(v35, v34);
        }

        v29 += 5;
      }

      while (v29 != v30);
      v29 = *v2;
    }

    v36 = &v20[40 * v15];
    v11 = v22 + 40;
    *v2 = v31;
    *(v2 + 8) = v22 + 40;
    *(v2 + 16) = v36;
    if (v29)
    {
      v37 = geo::codec::zone_mallocator::instance(result);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsTrafficSkeleton>(v37, v29);
    }
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = *(a2 + 32);
    v6 = *(a2 + 8);
    v5 = *(a2 + 16);
    v7 = v5 - v6;
    if (v5 != v6)
    {
      if ((v7 >> 5) >> 59)
      {
        std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
      }

      v8 = geo::codec::zone_mallocator::instance(result);
      v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsTrafficSkeletonRecord>(v8, v7 >> 5);
      *(v4 + 8) = v9;
      *(v4 + 16) = v9;
      v10 = &v9[v7];
      *(v4 + 24) = &v9[v7];
      memmove(v9, v6, v7);
      *(v4 + 16) = v10;
    }

    v11 = (v4 + 40);
    *(v2 + 8) = v4 + 40;
  }

  *(v2 + 8) = v11;
}

void sub_186792C54(_Unwind_Exception *a1)
{
  v2 = v1;
  v4 = pthread_rwlock_unlock((v2 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "unlock", v5);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_186792CBC(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = v5;
    v6 = geo::codec::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsTrafficSkeletonRecord>(v6, v5);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void *GEOFormattedStringReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 76))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOFormattedStringReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 80));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 72) = objc_msgSend_position(v8);
  *(a1 + 76) = [v8 length];
  if (a3)
  {
    v9 = &GEOFormattedStringReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOFormattedStringReadAllFrom_initialTag;
  }

  Specified = GEOFormattedStringReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOFormattedStringCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 80));
  return Specified;
}

void *GEOFormattedStringReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 80));
  [v3 setLength:*(a1 + 76)];
  [v3 seekToOffset:*(a1 + 72)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (vaddv_s16((*&vshl_u16(vdup_n_s16(*(a1 + 84)), 0xFFFFFFFCFFFAFFFDLL) & 0xFF01FF01FF01FF01)) + ((*(a1 + 84) & 4) != 0) + (*(a1 + 84) & 1) + ((*(a1 + 84) & 0x20) != 0));
  while (1)
  {
    v12 = a3[v6];
    if (v12 > -3)
    {
      break;
    }

    if (v12 == -4)
    {
      ++v11;
      v8 = 1;
      goto LABEL_15;
    }

    if (v12 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v11;
LABEL_15:
    ++v6;
  }

  if (v12 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v12 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = v11 > 3;
  v14 = v13 & ~v10 | v8;
  v15 = v10 | v13;
  LODWORD(v43) = v14;
  HIDWORD(v43) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v44 = (v16 == 0) | v15;
  v45 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v43);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_93:
      v26 = 1;
      goto LABEL_96;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v46) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v46 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v46 & 0x7F) << v18;
      if ((v46 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      if (v19++ >= 9)
      {
        v20 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v20 = 0;
    }

LABEL_33:
    v25 = [v3 hasError];
    v26 = 1;
    if ((v25 & 1) != 0 || (v20 & 7) == 4)
    {
      goto LABEL_96;
    }

    v27 = v20 >> 3;
    v28 = v45;
    if ((v44 & 1) == 0)
    {
      v29 = v16;
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

    if (v27 > 5)
    {
      break;
    }

    switch(v27)
    {
      case 3:
        if (!v28 || (*(a1 + 84) & 8) != 0)
        {
          goto LABEL_85;
        }

        v33 = PBReaderReadString();
        if (v33)
        {
          [(GEOFormattedString *)a1 _addNoFlagsFormatString:v33];
        }

        goto LABEL_78;
      case 4:
        if (!v28 || (*(a1 + 84) & 4) != 0)
        {
          goto LABEL_85;
        }

        v46 = 0;
        v47 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_95;
        }

        v33 = objc_alloc_init(GEOFormatArgument);
        if (!GEOFormatArgumentReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_94;
        }

        PBReaderRecallMark();
        [(GEOFormattedString *)a1 _addNoFlagsFormatArgument:v33];
        goto LABEL_78;
      case 5:
        if (!v28 || (*(a1 + 84) & 0x40) != 0)
        {
          goto LABEL_85;
        }

        v33 = PBReaderReadString();
        if (v33)
        {
          [(GEOFormattedString *)a1 _addNoFlagsSeparator:v33];
        }

LABEL_78:

        goto LABEL_86;
    }

LABEL_67:
    if (v43 & 1) == 0 || (*(a1 + 84))
    {
      goto LABEL_85;
    }

    if (!*(a1 + 16))
    {
      v35 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v36 = *(a1 + 16);
      *(a1 + 16) = v35;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      goto LABEL_97;
    }

LABEL_86:
    if (!(BYTE4(v43) & 1 | (v6 != 0)))
    {
      goto LABEL_93;
    }
  }

  if (v27 == 6)
  {
    if (!v28 || (*(a1 + 84) & 0x10) != 0)
    {
LABEL_85:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_86;
    }

    v46 = 0;
    v47 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_95;
    }

    v33 = objc_alloc_init(GEOFormatStyle);
    if (!GEOFormatStyleReadAllFrom(v33, v3, v9 & 1))
    {
      goto LABEL_94;
    }

    PBReaderRecallMark();
    [(GEOFormattedString *)a1 _addNoFlagsFormatStyle:v33];
    goto LABEL_78;
  }

  if (v27 != 7)
  {
    if (v27 == 8)
    {
      if (!v28)
      {
        goto LABEL_85;
      }

      if ((*(a1 + 84) & 0x20) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_95;
        }

        v38 = 4 * *(a1 + 84);
LABEL_92:
        v6 += v38 >> 7;
        goto LABEL_86;
      }

      v46 = 0;
      v47 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_95;
      }

      v33 = objc_alloc_init(GEOFormattedStringMetaData);
      if (!GEOFormattedStringMetaDataReadAllFrom(v33, v3))
      {
        goto LABEL_94;
      }

      PBReaderRecallMark();
      v34 = 56;
      goto LABEL_84;
    }

    goto LABEL_67;
  }

  if (!v28)
  {
    goto LABEL_85;
  }

  if ((*(a1 + 84) & 2) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_95;
    }

    v38 = *(a1 + 84) << 6;
    goto LABEL_92;
  }

  v46 = 0;
  v47 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_95;
  }

  v33 = objc_alloc_init(GEOConditionalFormattedString);
  if (GEOConditionalFormattedStringReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v34 = 24;
LABEL_84:
    v37 = *(a1 + v34);
    *(a1 + v34) = v33;

    --v6;
    goto LABEL_86;
  }

LABEL_94:

LABEL_95:
  v26 = 0;
LABEL_96:
  if ((v43 & 1) == 0)
  {
    goto LABEL_98;
  }

LABEL_97:
  *(a1 + 84) |= 1u;
LABEL_98:
  if (v45 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + 84) |= 8u;
    *(a1 + 84) |= 4u;
    *(a1 + 84) |= 0x40u;
    *(a1 + 84) |= 0x10u;
    *(a1 + 84) |= 2u;
    *(a1 + 84) |= 0x20u;
    goto LABEL_116;
  }

  if (v16)
  {
    while (1)
    {
LABEL_101:
      v40 = *v16++;
      v39 = v40;
      if (v40 > 5)
      {
        switch(v39)
        {
          case 6:
            LOBYTE(v39) = 16;
            break;
          case 7:
            LOBYTE(v39) = 2;
            break;
          case 8:
            LOBYTE(v39) = 32;
            break;
          default:
            continue;
        }

        goto LABEL_114;
      }

      if (v39 > 3)
      {
        break;
      }

      if (v39 == 3)
      {
        LOBYTE(v39) = 8;
LABEL_114:
        *(a1 + 84) |= v39;
        continue;
      }

      if (!v39)
      {
        goto LABEL_116;
      }
    }

    if (v39 != 4)
    {
      if (v39 != 5)
      {
        goto LABEL_101;
      }

      LOBYTE(v39) = 64;
    }

    goto LABEL_114;
  }

LABEL_116:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v45)
  {
    v41 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOFormatStyleReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOFormatStyleReadAllFrom can only be called once per object"];
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
    v9 = &GEOFormatStyleReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOFormatStyleReadAllFrom_initialTag;
  }

  Specified = GEOFormatStyleReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [*(a1 + 24) readAll:1];
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

uint64_t _GEOFormattedStringCallReadAllRecursiveWithoutSynchronized(id *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = a1[4];
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
  v7 = a1[6];
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

  [a1[3] readAll:1];
  return [a1[7] readAll:1];
}

void _GEOPDResultSnippetCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  [(GEOPDRating *)*(a1 + 72) readAll:?];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [(GEOPDChildPlace *)*(*(&v16 + 1) + 8 * v6++) readAll:?];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(GEOPDChildItem *)*(*(&v12 + 1) + 8 * v11++) readAll:?];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v9);
  }
}

uint64_t GEOTimezoneReadAllFrom(uint64_t a1, void *a2)
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
          v21 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v21 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v21 & 0x7F) << v5;
          if ((v21 & 0x80) == 0)
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
          v14 = PBReaderReadString();
          v15 = *(a1 + 16);
          *(a1 + 16) = v14;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v16 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v17 = *(a1 + 8);
            *(a1 + 8) = v16;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_26;
          }
        }

        v18 = objc_msgSend_position(v3);
      }

      while (v18 < [v3 length]);
    }

    v19 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_26:
    v19 = 0;
  }

  objc_sync_exit(v3);

  return v19;
}

uint64_t GEOPDBasemapRegionMetadataReadAllFrom(uint64_t a1, void *a2)
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
          v21 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v21 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v21 & 0x7F) << v5;
          if ((v21 & 0x80) == 0)
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
          v14 = PBReaderReadString();
          v15 = *(a1 + 16);
          *(a1 + 16) = v14;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v16 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v17 = *(a1 + 8);
            *(a1 + 8) = v16;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_26;
          }
        }

        v18 = objc_msgSend_position(v3);
      }

      while (v18 < [v3 length]);
    }

    v19 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_26:
    v19 = 0;
  }

  objc_sync_exit(v3);

  return v19;
}

void _GEOMapRegionCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 56);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) readAll:{1, v6}];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void _GEOPDBoundsCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  [*(a1 + 32) readAll:1];
  [*(a1 + 24) readAll:1];
  v2 = *(a1 + 40);

  [(GEOPDViewportFrame *)v2 readAll:?];
}

void _GEOPDCategorizedPhotosCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v16 + 1) + 8 * v6++) readAll:1];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(GEOPDCaptionedPhoto *)*(*(&v12 + 1) + 8 * v11++) readAll:?];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v9);
  }
}

void *GEOPDScorecardLayoutReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 36))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDScorecardLayoutReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 40));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 32) = objc_msgSend_position(v8);
  *(a1 + 36) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDScorecardLayoutReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDScorecardLayoutReadAllFrom_initialTag;
  }

  Specified = GEOPDScorecardLayoutReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDScorecardLayoutCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 40));
  return Specified;
}

void *GEOPDScorecardLayoutReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 40));
  [v3 setLength:*(a1 + 36)];
  [v3 seekToOffset:*(a1 + 32)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = ((*(a1 + 44) >> 1) & 1) + (*(a1 + 44) & 1);
  while (1)
  {
    v11 = a3[v7];
    if (v11 > -2)
    {
      break;
    }

    if (v11 == -3)
    {
      v6 = 1;
      goto LABEL_13;
    }

    if (v11 == -2)
    {
      goto LABEL_9;
    }

LABEL_12:
    ++v10;
LABEL_13:
    ++v7;
  }

  if (v11 == -1)
  {
    v8 = 1;
LABEL_9:
    v9 = 1;
    goto LABEL_13;
  }

  if (v11)
  {
    goto LABEL_12;
  }

  v12 = v9 | (v10 != 0);
  if (v9 & 1 | (v10 != 0) | v6 & 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  while (1)
  {
    v14 = objc_msgSend_position(v3);
    if (v14 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
      goto LABEL_57;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      LOBYTE(v38[0]) = 0;
      v18 = objc_msgSend_position(v3) + 1;
      if (v18 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3) + 1, v19 <= [v3 length]))
      {
        v20 = [v3 data];
        [v20 getBytes:v38 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v17 |= (v38[0] & 0x7F) << v15;
      if ((v38[0] & 0x80) == 0)
      {
        break;
      }

      v15 += 7;
      if (v16++ >= 9)
      {
        v22 = 0;
        goto LABEL_31;
      }
    }

    v22 = [v3 hasError] ? 0 : v17;
LABEL_31:
    if (([v3 hasError] & 1) != 0 || (v22 & 7) == 4)
    {
LABEL_57:
      if (v12)
      {
        v32 = 1;
        goto LABEL_69;
      }

      if (!v13)
      {
LABEL_70:
        v3 = ([v3 hasError] ^ 1);
        if ((v12 & 1) == 0)
        {
          return v3;
        }

        goto LABEL_71;
      }

      while (1)
      {
        while (1)
        {
          v34 = *v13++;
          v33 = v34;
          if (v34 != 1)
          {
            break;
          }

          v35 = 2;
LABEL_66:
          *(a1 + 44) |= v35;
        }

        if (v33 == 2)
        {
          v35 = 1;
          goto LABEL_66;
        }

        if (!v33)
        {
          goto LABEL_70;
        }
      }
    }

    v23 = v22 >> 3;
    v24 = v12;
    if (!((v13 == 0) | v12 & 1))
    {
      v25 = v13;
      do
      {
        v27 = *v25++;
        v26 = v27;
        v24 = v27 != 0;
        if (v27)
        {
          v28 = v26 == v23;
        }

        else
        {
          v28 = 1;
        }
      }

      while (!v28);
    }

    if (v23 == 2)
    {
      break;
    }

    if (v23 == 1)
    {
      if (!v24)
      {
        goto LABEL_52;
      }

      if ((*(a1 + 44) & 2) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_68;
        }

        v7 += *(a1 + 44) << 30 >> 31;
      }

      else
      {
        v29 = PBReaderReadString();
        v30 = *(a1 + 24);
        *(a1 + 24) = v29;

        --v7;
      }
    }

    else if (!PBReaderSkipValueWithTag())
    {
      goto LABEL_68;
    }

LABEL_53:
    if (!(v12 & 1 | (v7 != 0)))
    {
      goto LABEL_57;
    }
  }

  if (!v24 || (*(a1 + 44) & 1) != 0)
  {
LABEL_52:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_53;
  }

  v38[0] = 0;
  v38[1] = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_68;
  }

  v31 = objc_alloc_init(GEOPDRatingCategory);
  if (GEOPDRatingCategoryReadAllFrom(v31, v3, v8 & 1))
  {
    PBReaderRecallMark();
    [(GEOPDScorecardLayout *)a1 _addNoFlagsRatingCategory:v31];

    goto LABEL_53;
  }

LABEL_68:
  v32 = 0;
LABEL_69:
  *(a1 + 44) |= 2u;
  *(a1 + 44) |= 1u;
  if (v32)
  {
    goto LABEL_70;
  }

  v3 = 0;
  if (v12)
  {
LABEL_71:
    v36 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void _GEOPDScorecardLayoutCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 16);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [(GEOPDRatingCategory *)*(*(&v6 + 1) + 8 * v5++) readAll:?];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

uint64_t GEOPDPhotoConstraintsReadAllFrom(uint64_t a1, void *a2)
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
          v45 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v45 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v45 & 0x7F) << v5;
          if ((v45 & 0x80) == 0)
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

        v12 = [v3 hasError] ? 0 : v7;
LABEL_16:
        v13 = [v3 hasError];
        v14 = (v12 & 7) == 4 ? 1 : v13;
        if (v14)
        {
          break;
        }

        v15 = v12 >> 3;
        if ((v12 >> 3) <= 2)
        {
          if (v15 == 1)
          {
            v38 = PBReaderReadString();
            if (v38)
            {
              [(GEOPDPhotoConstraints *)a1 addMediaTypes:v38];
            }
          }

          else
          {
            if (v15 != 2)
            {
LABEL_59:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_78;
              }

              goto LABEL_76;
            }

            v18 = 0;
            v19 = 0;
            v20 = 0;
            *(a1 + 40) |= 8u;
            while (1)
            {
              v46 = 0;
              v21 = objc_msgSend_position(v3);
              if (v21 + 1 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3), v22 + 1 <= [v3 length]))
              {
                v23 = [v3 data];
                [v23 getBytes:&v46 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v20 |= (v46 & 0x7F) << v18;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v11 = v19++ >= 9;
              if (v11)
              {
                v24 = 0;
                goto LABEL_73;
              }
            }

            if ([v3 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v20;
            }

LABEL_73:
            *(a1 + 36) = v24;
          }
        }

        else
        {
          if (v15 == 3)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 40) |= 1u;
            while (1)
            {
              v48 = 0;
              v28 = objc_msgSend_position(v3);
              if (v28 + 1 >= objc_msgSend_position(v3) && (v29 = objc_msgSend_position(v3), v29 + 1 <= [v3 length]))
              {
                v30 = [v3 data];
                [v30 getBytes:&v48 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v27 |= (v48 & 0x7F) << v25;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                v31 = 0;
                goto LABEL_64;
              }
            }

            if ([v3 hasError])
            {
              v31 = 0;
            }

            else
            {
              v31 = v27;
            }

LABEL_64:
            v39 = 8;
            goto LABEL_69;
          }

          if (v15 == 4)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 40) |= 2u;
            while (1)
            {
              v47 = 0;
              v35 = objc_msgSend_position(v3);
              if (v35 + 1 >= objc_msgSend_position(v3) && (v36 = objc_msgSend_position(v3), v36 + 1 <= [v3 length]))
              {
                v37 = [v3 data];
                [v37 getBytes:&v47 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v34 |= (v47 & 0x7F) << v32;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v11 = v33++ >= 9;
              if (v11)
              {
                v31 = 0;
                goto LABEL_68;
              }
            }

            if ([v3 hasError])
            {
              v31 = 0;
            }

            else
            {
              v31 = v34;
            }

LABEL_68:
            v39 = 24;
LABEL_69:
            *(a1 + v39) = v31;
            goto LABEL_76;
          }

          if (v15 != 5)
          {
            goto LABEL_59;
          }

          *(a1 + 40) |= 4u;
          v44 = 0;
          v16 = objc_msgSend_position(v3);
          if (v16 + 4 >= objc_msgSend_position(v3) && (v17 = objc_msgSend_position(v3), v17 + 4 <= [v3 length]))
          {
            v40 = [v3 data];
            [v40 getBytes:&v44 range:{objc_msgSend_position(v3), 4}];

            [v3 setPosition:objc_msgSend_position(v3) + 4];
          }

          else
          {
            [v3 _setError];
          }

          *(a1 + 32) = v44;
        }

LABEL_76:
        v41 = objc_msgSend_position(v3);
      }

      while (v41 < [v3 length]);
    }

    v42 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_78:
    v42 = 0;
  }

  objc_sync_exit(v3);

  return v42;
}

void _GEOPDPlaceQuestionnaireResultCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [(GEOPDScorecardLayout *)*(a1 + 40) readAll:?];
  [*(a1 + 24) readAll:1];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1 + 16);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) readAll:{1, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

uint64_t _GEOPDBusinessHoursCallReadAllRecursiveWithoutSynchronized(id *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = a1[8];
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
  return [a1[6] readAll:1];
}

void sub_1867954B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _GEOMapItemIsEqualForWithinDistanceExcludingName(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  if ([v5 _placeType] && objc_msgSend(v6, "_placeType") && (v7 = objc_msgSend(v5, "_placeType"), v7 != objc_msgSend(v6, "_placeType")) || (objc_msgSend(v5, "coordinate"), fabs(v9 + 180.0) < 0.00000001) && fabs(v8 + 180.0) < 0.00000001 || (objc_msgSend(v6, "coordinate"), fabs(v11 + 180.0) < 0.00000001) && fabs(v10 + 180.0) < 0.00000001)
  {
    v12 = 0;
  }

  else
  {
    [v5 coordinate];
    v14 = v13;
    v16 = v15;
    [v6 coordinate];
    v12 = GEOCalculateDistanceRadius(v14, v16, v17, v18, 6367000.0) <= a3;
  }

  return v12;
}

BOOL GEOMapItemIsEqualToMapItemForPurposeWithinDistance(void *a1, void *a2, uint64_t a3, double a4)
{
  v7 = a1;
  v8 = a2;
  if (a3 == 5 && ([v7 _hasResultProviderID] & 1) == 0 && (objc_msgSend(v8, "_hasResultProviderID") & 1) == 0 && ((objc_msgSend(v7, "_hasMUID") & 1) != 0 || objc_msgSend(v8, "_hasMUID")))
  {
    v12 = [v7 _muid];
    IsEqualForWithinDistance = v12 == [v8 _muid];
    goto LABEL_69;
  }

  if (![v7 _hasResultProviderID] || !objc_msgSend(v8, "_hasResultProviderID"))
  {
    if (a3 != 5)
    {
      goto LABEL_29;
    }

    if ([v7 _hasMUID] && !objc_msgSend(v8, "_hasMUID"))
    {
      goto LABEL_28;
    }

    if (([v7 _hasMUID] & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

  v9 = [v7 _resultProviderID];
  if (v9 != [v8 _resultProviderID])
  {
    if (a3 != 5 || ([v7 _hasMUID] & 1) != 0 || (objc_msgSend(v8, "_hasMUID") & 1) != 0)
    {
      if ([v7 _placeDisplayType] == 1)
      {
        v13 = [v7 _placeDisplayType];
        if (v13 == [v8 _placeDisplayType])
        {
          goto LABEL_28;
        }
      }

      goto LABEL_29;
    }

LABEL_33:
    v14 = v7;
    v15 = v8;
    v16 = a4;
LABEL_37:
    IsEqualForWithinDistance = _GEOMapItemIsEqualForWithinDistance(v14, v15, v16);
    goto LABEL_69;
  }

  if (![v7 _hasMUID] || !objc_msgSend(v8, "_hasMUID") || (v10 = objc_msgSend(v7, "_muid"), v10 != objc_msgSend(v8, "_muid")))
  {
    if (a3 == 5)
    {
      if ([v7 _hasMUID])
      {
        goto LABEL_28;
      }

LABEL_15:
      if ([v8 _hasMUID])
      {
LABEL_28:
        IsEqualForWithinDistance = 0;
        goto LABEL_69;
      }

      goto LABEL_33;
    }

LABEL_29:
    IsEqualForWithinDistance = 0;
    if (a3 > 2)
    {
      if (a3 != 3)
      {
        if (a3 != 4)
        {
          if (a3 != 5)
          {
            goto LABEL_69;
          }

          goto LABEL_33;
        }

LABEL_36:
        v16 = 50.0;
        v14 = v7;
        v15 = v8;
        goto LABEL_37;
      }

      v17 = v7;
      v18 = v8;
      if ([v17 _placeType] == 10 && objc_msgSend(v18, "_placeType") == 10 || objc_msgSend(v17, "_placeDisplayType") == 1 && objc_msgSend(v18, "_placeDisplayType") == 1)
      {
        IsEqualForWithinDistanceExcludingName = _GEOMapItemIsEqualForWithinDistance(v17, v18, 50.0);
      }

      else
      {
        IsEqualForWithinDistanceExcludingName = _GEOMapItemIsEqualForWithinDistanceExcludingName(v17, v18, 50.0);
      }

      IsEqualForWithinDistance = IsEqualForWithinDistanceExcludingName;
LABEL_68:

      goto LABEL_69;
    }

    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_69;
      }

      goto LABEL_36;
    }

    v17 = v7;
    v18 = v8;
    v20 = [v17 name];
    if ([v20 length])
    {
      v21 = [v18 name];
      if ([v21 length])
      {
        v22 = [v17 name];
        v23 = [v18 name];
        v24 = [v22 isEqualToString:v23];

        if ((v24 & 1) == 0)
        {
          goto LABEL_67;
        }

LABEL_51:
        [v17 coordinate];
        v26 = v25;
        v28 = v27;
        [v18 coordinate];
        if (GEOCalculateDistanceRadius(v26, v28, v29, v30, 6367000.0) > 50.0)
        {
          goto LABEL_67;
        }

        v31 = [v17 _hasTransit];
        if (v31 != [v18 _hasTransit])
        {
          goto LABEL_67;
        }

        if ([v17 _hasTransit] && objc_msgSend(v18, "_hasTransit"))
        {
          v32 = [v17 _transitInfo];
          v33 = [v32 displayName];

          v34 = [v18 _transitInfo];
          v35 = [v34 displayName];

          if ([v33 length] && objc_msgSend(v35, "length") && !objc_msgSend(v33, "isEqualToString:", v35))
          {

LABEL_67:
            IsEqualForWithinDistance = 0;
            goto LABEL_68;
          }
        }

        v36 = [v17 _roadAccessPoints];
        v37 = [v36 count];
        v38 = [v18 _roadAccessPoints];
        v39 = [v38 count];

        if (v37 == v39)
        {
          v40 = [v17 _roadAccessPoints];
          v41 = [v40 count];

          if (v41)
          {
            v42 = 0;
            do
            {
              v43 = [v17 _roadAccessPoints];
              v44 = [v43 objectAtIndexedSubscript:v42];

              v45 = [v18 _roadAccessPoints];
              v46 = [v45 objectAtIndexedSubscript:v42];

              v47 = [v44 location];
              v48 = [v46 location];
              v49 = v47;
              [v49 lat];
              v51 = v50;
              [v49 lng];
              v53 = v52;

              [v48 lat];
              v55 = v54;
              [v48 lng];
              v57 = GEOCalculateDistanceRadius(v51, v53, v55, v56, 6367000.0);

              IsEqualForWithinDistance = v57 <= 50.0;
              if (v57 > 50.0)
              {
                break;
              }

              ++v42;
              v58 = [v17 _roadAccessPoints];
              v59 = [v58 count];

              IsEqualForWithinDistance = 1;
            }

            while (v42 < v59);
          }

          else
          {
            IsEqualForWithinDistance = 1;
          }

          goto LABEL_68;
        }

        goto LABEL_67;
      }
    }

    goto LABEL_51;
  }

  IsEqualForWithinDistance = 1;
LABEL_69:

  return IsEqualForWithinDistance;
}

uint64_t _MapItemPlaceTypeForPlaceType(int a1)
{
  if (a1 <= 15)
  {
    if (a1 == 4)
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }

    if (a1 == 2)
    {
      v3 = 2;
    }

    if (a1 == 1)
    {
      return 1;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v1 = a1 - 35;
    result = 0;
    switch(v1)
    {
      case 0:
        result = 5;
        break;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 17:
      case 18:
      case 21:
      case 23:
      case 24:
      case 25:
        return result;
      case 8:
        result = 6;
        break;
      case 9:
        result = 7;
        break;
      case 10:
        result = 8;
        break;
      case 11:
        result = 9;
        break;
      case 12:
        result = 10;
        break;
      case 13:
        result = 11;
        break;
      case 14:
        result = 12;
        break;
      case 15:
        result = 13;
        break;
      case 16:
        result = 14;
        break;
      case 19:
        result = 15;
        break;
      case 20:
        result = 16;
        break;
      case 22:
        result = 17;
        break;
      case 26:
        result = 18;
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

void *GEOETARequestReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 300))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOETARequestReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 304));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 296) = objc_msgSend_position(v8);
  *(a1 + 300) = [v8 length];
  if (a3)
  {
    v9 = &GEOETARequestReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOETARequestReadAllFrom_initialTag;
  }

  Specified = GEOETARequestReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOETARequestCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 304));
  return Specified;
}

void *GEOETARequestReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 304));
  [v3 setLength:*(a1 + 300)];
  [v3 seekToOffset:*(a1 + 296)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 328);
  v12 = vdupq_n_s32(v11);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14 = vdupq_n_s64(v11);
  v15 = vaddvq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v14, xmmword_187FBEF70), vshlq_u64(v14, xmmword_187FBEF60)), v13)) + ((v11 >> 40) & 1) + ((v11 >> 41) & 1) + ((v11 >> 18) & 1) + vaddvq_s32(vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBEF00), v13), vandq_s8(vshlq_u32(v12, xmmword_187FBEF10), v13))) + ((v11 >> 13) & 1) + (v11 >> 31) + vaddvq_s32(vaddq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v14, xmmword_187FBEF50), vshlq_u64(v14, xmmword_187FBEF40)), v13), vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBEF20), v13), vandq_s8(vshlq_u32(v12, xmmword_187FBEF30), v13))));
  while (1)
  {
    v16 = a3[v6];
    if (v16 > -3)
    {
      break;
    }

    if (v16 == -4)
    {
      ++v15;
      v8 = 1;
      goto LABEL_15;
    }

    if (v16 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v15;
LABEL_15:
    ++v6;
  }

  if (v16 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v16 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v16)
  {
    goto LABEL_14;
  }

  v17 = v15 > 0x15;
  v117 = v9;
  v118 = v17 & ~v10 | v8;
  v18 = v10 | v17;
  v119 = v18 | v8;
  if ((v18 | v7))
  {
    v19 = 0;
  }

  else
  {
    v19 = a3;
  }

  v120 = (v19 == 0) | v18;
  v121 = v18;
  while (1)
  {
    v20 = objc_msgSend_position(v3);
    if (v20 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_374:
      v29 = 1;
      goto LABEL_377;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    while (1)
    {
      LOBYTE(v122) = 0;
      v24 = objc_msgSend_position(v3) + 1;
      if (v24 >= objc_msgSend_position(v3) && (v25 = objc_msgSend_position(v3) + 1, v25 <= [v3 length]))
      {
        v26 = [v3 data];
        [v26 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v23 |= (v122 & 0x7F) << v21;
      if ((v122 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v27 = v22++ >= 9;
      if (v27)
      {
        v23 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v23 = 0;
    }

LABEL_33:
    v28 = [v3 hasError];
    v29 = 1;
    if ((v28 & 1) != 0 || (v23 & 7) == 4)
    {
      goto LABEL_377;
    }

    v30 = v23 >> 3;
    v31 = v121;
    if ((v120 & 1) == 0)
    {
      v32 = v19;
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

    if (v30 <= 99)
    {
      switch(v30)
      {
        case 1:
          if ((v7 & 1) == 0)
          {
            goto LABEL_300;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 328) |= 0x10uLL;
          while (1)
          {
            LOBYTE(v122) = 0;
            v39 = objc_msgSend_position(v3) + 1;
            if (v39 >= objc_msgSend_position(v3) && (v40 = objc_msgSend_position(v3) + 1, v40 <= [v3 length]))
            {
              v41 = [v3 data];
              [v41 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v38 |= (v122 & 0x7F) << v36;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v27 = v37++ >= 9;
            if (v27)
            {
              v42 = 0;
              goto LABEL_314;
            }
          }

          if ([v3 hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v38;
          }

LABEL_314:
          v109 = 312;
          goto LABEL_330;
        case 2:
          if ((v7 & 1) == 0)
          {
            goto LABEL_300;
          }

          v122 = 0;
          v123 = 0;
          if (!PBReaderPlaceMark() || (GEOTimepointReadAllFrom(a1 + 24, v3) & 1) == 0)
          {
            goto LABEL_376;
          }

          PBReaderRecallMark();
          v68 = *(a1 + 328) | 1;
          goto LABEL_201;
        case 3:
          if (!v31)
          {
            goto LABEL_300;
          }

          if ((*(a1 + 331) & 0x40) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_376;
            }

            v110 = *(a1 + 328) << 33;
            goto LABEL_371;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEOWaypoint);
          if (!GEOWaypointReadAllFrom(v43, v3, v117 & 1))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          v50 = 192;
          goto LABEL_282;
        case 4:
          if (!v31 || (*(a1 + 330) & 0x20) != 0)
          {
            goto LABEL_300;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEOWaypoint);
          if (!GEOWaypointReadAllFrom(v43, v3, v117 & 1))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          [(GEOETARequest *)a1 _addNoFlagsDestination:v43];
          goto LABEL_293;
        case 5:
          if ((v7 & 1) == 0)
          {
            goto LABEL_300;
          }

          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 328) |= 0x100uLL;
          while (1)
          {
            LOBYTE(v122) = 0;
            v79 = objc_msgSend_position(v3) + 1;
            if (v79 >= objc_msgSend_position(v3) && (v80 = objc_msgSend_position(v3) + 1, v80 <= [v3 length]))
            {
              v81 = [v3 data];
              [v81 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v78 |= (v122 & 0x7F) << v76;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v27 = v77++ >= 9;
            if (v27)
            {
              v57 = 0;
              goto LABEL_310;
            }
          }

          v57 = (v78 != 0) & ~[v3 hasError];
LABEL_310:
          v108 = 322;
          goto LABEL_325;
        case 6:
          if ((v7 & 1) == 0)
          {
            goto LABEL_300;
          }

          v88 = 0;
          v89 = 0;
          v90 = 0;
          *(a1 + 328) |= 0x40uLL;
          while (1)
          {
            LOBYTE(v122) = 0;
            v91 = objc_msgSend_position(v3) + 1;
            if (v91 >= objc_msgSend_position(v3) && (v92 = objc_msgSend_position(v3) + 1, v92 <= [v3 length]))
            {
              v93 = [v3 data];
              [v93 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v90 |= (v122 & 0x7F) << v88;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v88 += 7;
            v27 = v89++ >= 9;
            if (v27)
            {
              v57 = 0;
              goto LABEL_318;
            }
          }

          v57 = (v90 != 0) & ~[v3 hasError];
LABEL_318:
          v108 = 320;
          goto LABEL_325;
        case 7:
          if ((v7 & 1) == 0)
          {
            goto LABEL_300;
          }

          v82 = 0;
          v83 = 0;
          v84 = 0;
          *(a1 + 328) |= 0x80uLL;
          while (1)
          {
            LOBYTE(v122) = 0;
            v85 = objc_msgSend_position(v3) + 1;
            if (v85 >= objc_msgSend_position(v3) && (v86 = objc_msgSend_position(v3) + 1, v86 <= [v3 length]))
            {
              v87 = [v3 data];
              [v87 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v84 |= (v122 & 0x7F) << v82;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v82 += 7;
            v27 = v83++ >= 9;
            if (v27)
            {
              v57 = 0;
              goto LABEL_316;
            }
          }

          v57 = (v84 != 0) & ~[v3 hasError];
LABEL_316:
          v108 = 321;
          goto LABEL_325;
        case 8:
          if ((v7 & 1) == 0)
          {
            goto LABEL_300;
          }

          v122 = 0;
          v123 = 0;
          if (!PBReaderPlaceMark() || (GEOSessionIDReadAllFrom((a1 + 48), v3) & 1) == 0)
          {
            goto LABEL_376;
          }

          PBReaderRecallMark();
          v68 = *(a1 + 328) | 2;
LABEL_201:
          *(a1 + 328) = v68;
          goto LABEL_301;
        case 9:
          if ((v7 & 1) == 0)
          {
            goto LABEL_300;
          }

          v94 = 0;
          v95 = 0;
          v96 = 0;
          *(a1 + 328) |= 0x20uLL;
          while (1)
          {
            LOBYTE(v122) = 0;
            v97 = objc_msgSend_position(v3) + 1;
            if (v97 >= objc_msgSend_position(v3) && (v98 = objc_msgSend_position(v3) + 1, v98 <= [v3 length]))
            {
              v99 = [v3 data];
              [v99 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v96 |= (v122 & 0x7F) << v94;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v94 += 7;
            v27 = v95++ >= 9;
            if (v27)
            {
              v42 = 0;
              goto LABEL_322;
            }
          }

          if ([v3 hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v96;
          }

LABEL_322:
          v109 = 316;
          goto LABEL_330;
        case 10:
          if (!v31)
          {
            goto LABEL_300;
          }

          if ((*(a1 + 329) & 0x80) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_376;
            }

            v110 = *(a1 + 328) << 48;
            goto LABEL_371;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEOAdditionalEnabledMarkets);
          if (!GEOAdditionalEnabledMarketsReadAllFrom(v43, v3, v117 & 1))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          v50 = 72;
          goto LABEL_282;
        case 11:
          if (!v31)
          {
            goto LABEL_300;
          }

          if ((*(a1 + 331) & 4) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_376;
            }

            v110 = *(a1 + 328) << 37;
            goto LABEL_371;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEOWaypointTyped);
          if (!GEOWaypointTypedReadAllFrom(v43, v3, v117 & 1))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          v50 = 160;
          goto LABEL_282;
        case 12:
          if (!v31 || (*(a1 + 330) & 0x10) != 0)
          {
            goto LABEL_300;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEOWaypointTyped);
          if (!GEOWaypointTypedReadAllFrom(v43, v3, v117 & 1))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          [(GEOETARequest *)a1 _addNoFlagsDestinationWaypointTyped:v43];
          goto LABEL_293;
        case 13:
          if (!v31)
          {
            goto LABEL_300;
          }

          if (*(a1 + 330))
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_376;
            }

            v110 = *(a1 + 328) << 47;
            goto LABEL_371;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEOAutomobileOptions);
          if (!GEOAutomobileOptionsReadAllFrom(v43, v3, v117 & 1))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          v50 = 80;
          goto LABEL_282;
        case 14:
          if (!v31)
          {
            goto LABEL_300;
          }

          if (*(a1 + 333))
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_376;
            }

            v110 = *(a1 + 328) << 23;
            goto LABEL_371;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEOTransitOptions);
          if (!GEOTransitOptionsReadAllFrom(v43, v3, v117 & 1))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          v50 = 280;
          goto LABEL_282;
        case 15:
          if (!v31)
          {
            goto LABEL_300;
          }

          if ((*(a1 + 333) & 2) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_376;
            }

            v110 = *(a1 + 328) << 22;
            goto LABEL_371;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEOWalkingOptions);
          if (!GEOWalkingOptionsReadAllFrom(v43, v3, v117 & 1))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          v50 = 288;
          goto LABEL_282;
        case 16:
          if ((v7 & 1) == 0)
          {
            goto LABEL_300;
          }

          v62 = 0;
          v63 = 0;
          v64 = 0;
          *(a1 + 328) |= 0x1000uLL;
          while (1)
          {
            LOBYTE(v122) = 0;
            v65 = objc_msgSend_position(v3) + 1;
            if (v65 >= objc_msgSend_position(v3) && (v66 = objc_msgSend_position(v3) + 1, v66 <= [v3 length]))
            {
              v67 = [v3 data];
              [v67 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v64 |= (v122 & 0x7F) << v62;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            v27 = v63++ >= 9;
            if (v27)
            {
              v57 = 0;
              goto LABEL_306;
            }
          }

          v57 = (v64 != 0) & ~[v3 hasError];
LABEL_306:
          v108 = 326;
          goto LABEL_325;
        case 18:
          if (!v31)
          {
            goto LABEL_300;
          }

          if ((*(a1 + 330) & 4) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_376;
            }

            v110 = *(a1 + 328) << 45;
            goto LABEL_371;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEOCommonOptions);
          if (!GEOCommonOptionsReadAllFrom(v43, v3))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          v50 = 96;
          goto LABEL_282;
        case 19:
          if (!v31)
          {
            goto LABEL_300;
          }

          if ((*(a1 + 332) & 0x20) == 0)
          {
            v58 = PBReaderReadData();
            v59 = 256;
            goto LABEL_171;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_376;
          }

          v110 = *(a1 + 328) << 26;
          goto LABEL_371;
        case 20:
          if (!v31)
          {
            goto LABEL_300;
          }

          if ((*(a1 + 331) & 8) == 0)
          {
            v58 = PBReaderReadData();
            v59 = 168;
LABEL_171:
            v69 = *(a1 + v59);
            *(a1 + v59) = v58;
            goto LABEL_283;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_376;
          }

          v110 = *(a1 + 328) << 36;
          goto LABEL_371;
        case 21:
          if (!v31 || (*(a1 + 331) & 0x10) != 0)
          {
            goto LABEL_300;
          }

          v43 = PBReaderReadData();
          if (v43)
          {
            [(GEOETARequest *)a1 _addNoFlagsOriginalRouteZilchPoints:v43];
          }

          goto LABEL_293;
        case 22:
          if (!v31 || (*(a1 + 330) & 0x40) != 0)
          {
            goto LABEL_300;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEOLocation);
          if (!GEOLocationReadAllFrom(v43, v3, v117 & 1))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          [(GEOETARequest *)a1 _addNoFlagsDeviceHistoricalLocation:v43];
          goto LABEL_293;
        case 23:
          if (!v31)
          {
            goto LABEL_300;
          }

          if ((*(a1 + 330) & 2) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_376;
            }

            v110 = *(a1 + 328) << 46;
            goto LABEL_371;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEOClientCapabilities);
          if (!GEOClientCapabilitiesReadAllFrom(v43, v3, v117 & 1))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          v50 = 88;
          goto LABEL_282;
        case 24:
          if (!v31)
          {
            goto LABEL_300;
          }

          if ((*(a1 + 331) & 2) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_376;
            }

            v110 = *(a1 + 328) << 38;
            goto LABEL_371;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEOLocation);
          if (!GEOLocationReadAllFrom(v43, v3, v117 & 1))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          v50 = 152;
          goto LABEL_282;
        case 25:
          if (!v31)
          {
            goto LABEL_300;
          }

          if ((*(a1 + 329) & 0x40) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_376;
            }

            v110 = *(a1 + 328) << 49;
            goto LABEL_371;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEOPDABClientDatasetMetadata);
          if (!GEOPDABClientDatasetMetadataReadAllFrom(v43, v3))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          v50 = 64;
          goto LABEL_282;
        case 26:
          if ((v7 & 1) == 0)
          {
            goto LABEL_300;
          }

          v70 = 0;
          v71 = 0;
          v72 = 0;
          *(a1 + 328) |= 0x400uLL;
          while (1)
          {
            LOBYTE(v122) = 0;
            v73 = objc_msgSend_position(v3) + 1;
            if (v73 >= objc_msgSend_position(v3) && (v74 = objc_msgSend_position(v3) + 1, v74 <= [v3 length]))
            {
              v75 = [v3 data];
              [v75 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v72 |= (v122 & 0x7F) << v70;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v27 = v71++ >= 9;
            if (v27)
            {
              v57 = 0;
              goto LABEL_308;
            }
          }

          v57 = (v72 != 0) & ~[v3 hasError];
LABEL_308:
          v108 = 324;
          goto LABEL_325;
        case 27:
          if ((v7 & 1) == 0)
          {
            goto LABEL_300;
          }

          v100 = 0;
          v101 = 0;
          v102 = 0;
          *(a1 + 328) |= 0x800uLL;
          while (1)
          {
            LOBYTE(v122) = 0;
            v103 = objc_msgSend_position(v3) + 1;
            if (v103 >= objc_msgSend_position(v3) && (v104 = objc_msgSend_position(v3) + 1, v104 <= [v3 length]))
            {
              v105 = [v3 data];
              [v105 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v102 |= (v122 & 0x7F) << v100;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v100 += 7;
            v27 = v101++ >= 9;
            if (v27)
            {
              v57 = 0;
              goto LABEL_324;
            }
          }

          v57 = (v102 != 0) & ~[v3 hasError];
LABEL_324:
          v108 = 325;
          goto LABEL_325;
        case 28:
          if (!v31)
          {
            goto LABEL_300;
          }

          if ((*(a1 + 332) & 1) == 0)
          {
            v58 = PBReaderReadString();
            v59 = 208;
            goto LABEL_171;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_376;
          }

          v110 = *(a1 + 328) << 31;
          goto LABEL_371;
        case 29:
          if (!v31)
          {
            goto LABEL_300;
          }

          if ((*(a1 + 332) & 8) == 0)
          {
            v58 = PBReaderReadString();
            v59 = 232;
            goto LABEL_171;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_376;
          }

          v110 = *(a1 + 328) << 28;
          goto LABEL_371;
        case 30:
          if ((v7 & 1) == 0)
          {
            goto LABEL_300;
          }

          *(a1 + 328) |= 4uLL;
          v122 = 0;
          v60 = objc_msgSend_position(v3) + 8;
          if (v60 >= objc_msgSend_position(v3) && (v61 = objc_msgSend_position(v3) + 8, v61 <= [v3 length]))
          {
            v111 = [v3 data];
            [v111 getBytes:&v122 range:{objc_msgSend_position(v3), 8}];

            [v3 setPosition:objc_msgSend_position(v3) + 8];
          }

          else
          {
            [v3 _setError];
          }

          *(a1 + 248) = v122;
          goto LABEL_301;
        case 31:
          if (!v31)
          {
            goto LABEL_300;
          }

          if ((*(a1 + 330) & 8) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_376;
            }

            v110 = *(a1 + 328) << 44;
            goto LABEL_371;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEOCyclingOptions);
          if (!GEOCyclingOptionsReadAllFrom(v43, v3, v117 & 1))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          v50 = 104;
          goto LABEL_282;
        case 32:
          if (!v31)
          {
            goto LABEL_300;
          }

          if ((*(a1 + 331) & 0x20) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_376;
            }

            v110 = *(a1 + 328) << 34;
LABEL_371:
            v6 += v110 >> 63;
          }

          else
          {
            v122 = 0;
            v123 = 0;
            if ((PBReaderPlaceMark() & 1) == 0)
            {
              goto LABEL_376;
            }

            v43 = objc_alloc_init(GEOOriginalWaypointRoute);
            if (!GEOOriginalWaypointRouteReadAllFrom(v43, v3, v117 & 1))
            {
              goto LABEL_375;
            }

            PBReaderRecallMark();
            v50 = 184;
LABEL_282:
            v69 = *(a1 + v50);
            *(a1 + v50) = v43;
LABEL_283:

            --v6;
          }

          break;
        case 33:
          if ((v7 & 1) == 0)
          {
            goto LABEL_300;
          }

          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 328) |= 0x200uLL;
          while (1)
          {
            LOBYTE(v122) = 0;
            v54 = objc_msgSend_position(v3) + 1;
            if (v54 >= objc_msgSend_position(v3) && (v55 = objc_msgSend_position(v3) + 1, v55 <= [v3 length]))
            {
              v56 = [v3 data];
              [v56 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v53 |= (v122 & 0x7F) << v51;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v27 = v52++ >= 9;
            if (v27)
            {
              v57 = 0;
              goto LABEL_304;
            }
          }

          v57 = (v53 != 0) & ~[v3 hasError];
LABEL_304:
          v108 = 323;
LABEL_325:
          *(a1 + v108) = v57;
          goto LABEL_301;
        case 34:
          if (!v31 || (*(a1 + 331) & 1) != 0)
          {
            goto LABEL_300;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEOWaypointTyped);
          if (!GEOWaypointTypedReadAllFrom(v43, v3, v117 & 1))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          [(GEOETARequest *)a1 _addNoFlagsIntermediateWaypointTyped:v43];
          goto LABEL_293;
        case 35:
          if (!v31)
          {
            goto LABEL_300;
          }

          if ((*(a1 + 332) & 4) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_376;
            }

            v110 = *(a1 + 328) << 29;
            goto LABEL_371;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEORecentLocationHistory);
          if (!GEORecentLocationHistoryReadAllFrom(v43, v3, v117 & 1))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          v50 = 224;
          goto LABEL_282;
        case 36:
          if (!v31)
          {
            goto LABEL_300;
          }

          if ((*(a1 + 332) & 2) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_376;
            }

            v110 = *(a1 + 328) << 30;
            goto LABEL_371;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEOPrivacyMetadata);
          if (!GEOPrivacyMetadataReadAllFrom(v43, v3))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          v50 = 216;
          goto LABEL_282;
        case 37:
          if (!v31)
          {
            goto LABEL_300;
          }

          if ((*(a1 + 331) & 0x80) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_376;
            }

            v110 = *(a1 + 328) << 32;
            goto LABEL_371;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEOPathComputationOptions);
          if (!GEOPathComputationOptionsReadAllFrom(v43, v3))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          v50 = 200;
          goto LABEL_282;
        case 38:
          if (!v31)
          {
            goto LABEL_300;
          }

          if ((*(a1 + 330) & 0x80) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_376;
            }

            v110 = *(a1 + 328) << 40;
            goto LABEL_371;
          }

          v122 = 0;
          v123 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_376;
          }

          v43 = objc_alloc_init(GEOFamiliarWaypointRoute);
          if (!GEOFamiliarWaypointRouteReadAllFrom(v43, v3, v117 & 1))
          {
            goto LABEL_375;
          }

          PBReaderRecallMark();
          v50 = 136;
          goto LABEL_282;
        default:
          goto LABEL_294;
      }

      goto LABEL_301;
    }

    if (v30 <= 101)
    {
      break;
    }

    if (v30 == 102)
    {
      if (!v31 || (*(a1 + 332) & 0x80) != 0)
      {
LABEL_300:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_376;
        }

        goto LABEL_301;
      }

      v43 = PBReaderReadString();
      if (v43)
      {
        [(GEOETARequest *)a1 _addNoFlagsTrafficSnapshotIds:v43];
      }

      goto LABEL_293;
    }

    if (v30 == 103)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_300;
      }

      v44 = 0;
      v45 = 0;
      v46 = 0;
      *(a1 + 328) |= 8uLL;
      while (1)
      {
        LOBYTE(v122) = 0;
        v47 = objc_msgSend_position(v3) + 1;
        if (v47 >= objc_msgSend_position(v3) && (v48 = objc_msgSend_position(v3) + 1, v48 <= [v3 length]))
        {
          v49 = [v3 data];
          [v49 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v46 |= (v122 & 0x7F) << v44;
        if ((v122 & 0x80) == 0)
        {
          break;
        }

        v44 += 7;
        v27 = v45++ >= 9;
        if (v27)
        {
          v42 = 0;
          goto LABEL_329;
        }
      }

      if ([v3 hasError])
      {
        v42 = 0;
      }

      else
      {
        v42 = v46;
      }

LABEL_329:
      v109 = 308;
LABEL_330:
      *(a1 + v109) = v42;
    }

    else
    {
LABEL_294:
      if ((v118 & 1) == 0 || (*(a1 + 329) & 0x20) != 0)
      {
        goto LABEL_300;
      }

      if (!*(a1 + 16))
      {
        v106 = objc_alloc_init(MEMORY[0x1E69C65D8]);
        v107 = *(a1 + 16);
        *(a1 + 16) = v106;
      }

      if (!PBUnknownFieldAdd())
      {
        v29 = 0;
        goto LABEL_378;
      }
    }

LABEL_301:
    if (!(v119 & 1 | (v6 != 0)))
    {
      goto LABEL_374;
    }
  }

  if (v30 != 100)
  {
    if (!v31 || (*(a1 + 332) & 0x40) != 0)
    {
      goto LABEL_300;
    }

    v43 = PBReaderReadData();
    if (v43)
    {
      [(GEOETARequest *)a1 _addNoFlagsTrafficApiResponses:v43];
    }

    goto LABEL_293;
  }

  if (!v31 || (*(a1 + 332) & 0x10) != 0)
  {
    goto LABEL_300;
  }

  v122 = 0;
  v123 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_376;
  }

  v43 = objc_alloc_init(GEOGeoServiceTag);
  if (GEOGeoServiceTagReadAllFrom(v43, v3))
  {
    PBReaderRecallMark();
    [(GEOETARequest *)a1 _addNoFlagsServiceTag:v43];
LABEL_293:

    goto LABEL_301;
  }

LABEL_375:

LABEL_376:
  v29 = 0;
LABEL_377:
  if ((v118 & 1) == 0)
  {
    goto LABEL_379;
  }

LABEL_378:
  *(a1 + 328) |= 0x2000uLL;
LABEL_379:
  if (v121 || (v29 & 1) == 0)
  {
    *(a1 + 328) |= 0x3FFFFFFC000uLL;
    goto LABEL_415;
  }

  if (v19)
  {
    while (1)
    {
      v113 = *v19++;
      v112 = v113;
      if (v113 <= 99)
      {
        v114 = 0x40000000;
        switch(v112)
        {
          case 0:
            goto LABEL_415;
          case 3:
            goto LABEL_414;
          case 4:
            v114 = 0x200000;
            goto LABEL_414;
          case 10:
            v114 = 0x8000;
            goto LABEL_414;
          case 11:
            v114 = 0x4000000;
            goto LABEL_414;
          case 12:
            v114 = 0x100000;
            goto LABEL_414;
          case 13:
            v114 = 0x10000;
            goto LABEL_414;
          case 14:
            v114 = 0x10000000000;
            goto LABEL_414;
          case 15:
            v114 = 0x20000000000;
            goto LABEL_414;
          case 18:
            v114 = 0x40000;
            goto LABEL_414;
          case 19:
            v114 = 0x2000000000;
            goto LABEL_414;
          case 20:
            v114 = 0x8000000;
            goto LABEL_414;
          case 21:
            v114 = 0x10000000;
            goto LABEL_414;
          case 22:
            v114 = 0x400000;
            goto LABEL_414;
          case 23:
            v114 = 0x20000;
            goto LABEL_414;
          case 24:
            v114 = 0x2000000;
            goto LABEL_414;
          case 25:
            v114 = 0x4000;
            goto LABEL_414;
          case 28:
            v114 = 0x100000000;
            goto LABEL_414;
          case 29:
            v114 = 0x800000000;
            goto LABEL_414;
          case 31:
            v114 = 0x80000;
            goto LABEL_414;
          case 32:
            v114 = 0x20000000;
            goto LABEL_414;
          case 34:
            v114 = 0x1000000;
            goto LABEL_414;
          case 35:
            v114 = 0x400000000;
            goto LABEL_414;
          case 36:
            v114 = 0x200000000;
            goto LABEL_414;
          case 37:
            v114 = 0x80000000;
            goto LABEL_414;
          case 38:
            v114 = 0x800000;
            goto LABEL_414;
          default:
            continue;
        }

        break;
      }

      switch(v112)
      {
        case 'd':
          v114 = 0x1000000000;
          break;
        case 'e':
          v114 = 0x4000000000;
          break;
        case 'f':
          v114 = 0x8000000000;
          break;
        default:
          continue;
      }

LABEL_414:
      *(a1 + 328) |= v114;
    }
  }

LABEL_415:
  if (v29)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v121)
  {
    v115 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}