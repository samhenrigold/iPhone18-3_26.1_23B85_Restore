GEOAlmanacRiseTransitSet *_getRTS<std::__tree_const_iterator<_GEORiseTransitSetEvent,std::__tree_node<_GEORiseTransitSetEvent,void *> *,long>,BOOL (*)(unsigned int,unsigned int)>(uint64_t a1, void *a2)
{
  v49 = 0;
  v50 = &v49;
  v51 = 0x3812000000;
  v52 = __Block_byref_object_copy__128;
  v53 = __Block_byref_object_dispose__129;
  v54 = &unk_1881FE68D;
  v55 = a2;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3812000000;
  v45 = __Block_byref_object_copy__128;
  v46 = __Block_byref_object_dispose__129;
  v47 = &unk_1881FE68D;
  v48 = a2;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3812000000;
  v38 = __Block_byref_object_copy__128;
  v39 = __Block_byref_object_dispose__129;
  v40 = &unk_1881FE68D;
  v41 = a2;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL7_getRTSINSt3__121__tree_const_iteratorI23_GEORiseTransitSetEventPNS0_11__tree_nodeIS2_PvEElEEPFbjjEEP24GEOAlmanacRiseTransitSetT_SC_T0__block_invoke;
  aBlock[3] = &unk_1E7063130;
  aBlock[4] = &v49;
  aBlock[5] = &v35;
  aBlock[6] = &v42;
  aBlock[7] = v33;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (a1 != a2)
  {
    (*(v4 + 2))(v4, a1);
    v6 = *(a1 + 8);
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v8 = a1;
      do
      {
        v7 = *(v8 + 16);
        v9 = *v7 == v8;
        v8 = v7;
      }

      while (!v9);
    }

    if (v7 != a2)
    {
      v10 = *(a1 + 40);
      v11 = *(v7 + 10);
      if (v10 == 8)
      {
        if (v11 != 16)
        {
          goto LABEL_33;
        }
      }

      else if (v10 == 32)
      {
        if (v11 != 8)
        {
          goto LABEL_33;
        }
      }

      else if (v10 != 16 || v11 != 32)
      {
        goto LABEL_33;
      }

      (v5)[2](v5, v7);
      v12 = v7[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        v14 = v7;
        do
        {
          v13 = v14[2];
          v9 = *v13 == v14;
          v14 = v13;
        }

        while (!v9);
      }

      if (v13 != a2)
      {
        v15 = *(v7 + 10);
        v16 = *(v13 + 10);
        if (v15 == 8)
        {
          if (v16 != 16)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        if (v15 != 32)
        {
          if (v15 != 16 || v16 != 32)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        if (v16 == 8)
        {
LABEL_32:
          (v5[2])(v5);
        }
      }
    }
  }

LABEL_33:
  v17 = [GEOAlmanacRiseTransitSet alloc];
  v18 = v50[6];
  if (v18 == a2)
  {
    v30 = 0xBFF0000000000000;
    v19 = -1;
  }

  else
  {
    v30 = *(v18 + 32);
    v19 = *(v18 + 40);
  }

  v31 = v19;
  v20 = v43[6];
  if (v20 == a2)
  {
    v28 = 0xBFF0000000000000;
    v21 = -1;
  }

  else
  {
    v28 = *(v20 + 32);
    v21 = *(v20 + 40);
  }

  v29 = v21;
  v22 = v36[6];
  if (v22 == a2)
  {
    v26 = 0xBFF0000000000000;
    v23 = -1;
  }

  else
  {
    v26 = *(v22 + 32);
    v23 = *(v22 + 40);
  }

  v27 = v23;
  v24 = [(GEOAlmanacRiseTransitSet *)v17 initWithRise:&v30 transit:&v28 set:&v26];

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v49, 8);

  return v24;
}

void sub_1867BE77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);

  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 160), 8);
  _Block_object_dispose((v28 - 104), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL7_getRTSINSt3__121__tree_const_iteratorI23_GEORiseTransitSetEventPNS0_11__tree_nodeIS2_PvEElEEPFbjjEEP24GEOAlmanacRiseTransitSetT_SC_T0__block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  switch(v2)
  {
    case 8:
      v3 = 32;
      break;
    case 16:
      v3 = 48;
      break;
    case 32:
      v3 = 40;
      break;
    default:
      return result;
  }

  *(*(*(result + v3) + 8) + 48) = a2;
  *(*(*(result + 56) + 8) + 24) = 1;
  return result;
}

uint64_t ___ZL7_getRTSINSt3__116reverse_iteratorINS0_21__tree_const_iteratorI23_GEORiseTransitSetEventPNS0_11__tree_nodeIS3_PvEElEEEEPFbjjEEP24GEOAlmanacRiseTransitSetT_SE_T0__block_invoke(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *a3;
  if (*a3)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 8);
    }

    while (v3);
  }

  else
  {
    v5 = a3;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (v6);
  }

  v7 = *(v4 + 40);
  switch(v7)
  {
    case 8:
      v8 = 32;
      break;
    case 16:
      v8 = 48;
      break;
    case 32:
      v8 = 40;
      break;
    default:
      return result;
  }

  v9 = *(*(result + v8) + 8);
  *(v9 + 48) = a2;
  *(v9 + 56) = a3;
  *(*(*(result + 56) + 8) + 24) = 1;
  return result;
}

__CFString *StringFromGEOSolarEventType(int a1)
{
  if (a1 > 31)
  {
    if (a1 <= 127)
    {
      if (a1 == 32)
      {
        return @"Set";
      }

      if (a1 == 64)
      {
        return @"EndCT";
      }
    }

    else
    {
      switch(a1)
      {
        case 128:
          return @"EndNT";
        case 256:
          return @"EndAT";
        case 512:
          return @"Midnight";
      }
    }
  }

  else if (a1 <= 3)
  {
    if (a1 == 1)
    {
      return @"StartAT";
    }

    if (a1 == 2)
    {
      return @"StartNT";
    }
  }

  else
  {
    switch(a1)
    {
      case 4:
        return @"StartCT";
      case 8:
        return @"Rise";
      case 16:
        return @"Noon";
    }
  }

  return @"Unknown";
}

__n128 __Block_byref_object_copy__135(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

BOOL shouldCountRequest(unint64_t a1, int a2)
{
  result = 0;
  if (a1 > 767)
  {
    if (a1 == 768 || a1 == 1792)
    {
      v4 = HIDWORD(a1);
      if (((1 << v4) & 0x1004108000880A94) != 0)
      {
        v5 = a2 == 1;
      }

      else
      {
        v5 = ((1 << v4) & 0x1402) != 0;
      }

      return v4 <= 0x3C && v5;
    }

    else if (a1 == 2860)
    {
      return 1;
    }
  }

  else
  {
    if ((a1 - 672) < 2)
    {
      return a2 == 1;
    }

    if (a1 == 512)
    {
      return 1;
    }
  }

  return result;
}

id rrPersister(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (+[GEOPlatform isRunningInGeod])
  {
    v2 = _GEORequestResponseLogQueue();
    dispatch_assert_queue_V2(v2);

    if (rrPersister_onceToken != -1)
    {
      dispatch_once(&rrPersister_onceToken, &__block_literal_global_9);
    }

    if (rrPersister_enabled == 1)
    {
      if (rrPersister_endAt)
      {
        v3 = [MEMORY[0x1E695DF00] now];
        v4 = [v3 compare:rrPersister_endAt];

        if (v4 == 1)
        {
          rrPersister_enabled = 0;
          GEOConfigSetBOOL(204, &GeoServicesConfig_MapsRequestResponseLoggingPersisted_Metadata);
          _setValue(208, &GeoServicesConfig_MapsRequestResponseLoggingPersistedStopAt_Metadata, 0, 0, 0);
        }
      }

      v5 = [v1 dataTask];
      v6 = [v5 requestCounterTicket];
      v7 = [v6 appId];

      if (rrPersister_enabled == 1 && [v7 length] && objc_msgSend(rrPersister_bundleIds, "count"))
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v8 = rrPersister_bundleIds;
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v22;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v21 + 1) + 8 * i);
              if ([v13 hasSuffix:{@"*", v21}])
              {
                v14 = [v13 substringToIndex:{objc_msgSend(v13, "length") - 1}];
                v15 = [v7 hasPrefix:v14];

                if (v15)
                {
                  goto LABEL_23;
                }
              }

              else if ([v7 isEqual:v13])
              {
LABEL_23:

                goto LABEL_24;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v16 = 0;
        goto LABEL_30;
      }

LABEL_24:
      if (rrPersister_enabled == 1)
      {
        v17 = rrPersister_persister;
        if (rrPersister_persister)
        {
LABEL_29:
          v16 = v17;
LABEL_30:

          goto LABEL_31;
        }

        v18 = [[GEORequestResponsePersister alloc] initWritable:1];
      }

      else
      {
        v18 = 0;
      }

      v19 = rrPersister_persister;
      rrPersister_persister = v18;

      v17 = rrPersister_persister;
      goto LABEL_29;
    }
  }

  v16 = 0;
LABEL_31:

  return v16;
}

id _GEORequestResponseLogQueue()
{
  if (_GEORequestResponseLogQueue_once != -1)
  {
    dispatch_once(&_GEORequestResponseLogQueue_once, &__block_literal_global_52616);
  }

  v1 = _GEORequestResponseLogQueue_queue;

  return v1;
}

uint64_t GEOStyleAttributesIsValid(void *a1)
{
  v18[2] = objc_msgSend_position(a1);
  v18[3] = [a1 length];
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        v2 = objc_msgSend_position(a1);
        if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
        {
          goto LABEL_37;
        }

        v3 = 0;
        v4 = 0;
        v5 = 0;
        while (1)
        {
          LOBYTE(v18[0]) = 0;
          v6 = objc_msgSend_position(a1, v18[0]) + 1;
          if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
          {
            v8 = [a1 data];
            [v8 getBytes:v18 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          v5 |= (v18[0] & 0x7F) << v3;
          if ((v18[0] & 0x80) == 0)
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

        v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
        if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
        {
LABEL_37:
          v16 = [a1 hasError] ^ 1;
          PBReaderRecallMark();
          return v16;
        }

        if ((v10 >> 3) != 2)
        {
          break;
        }

        if ((v10 & 7) != 0)
        {
          goto LABEL_39;
        }

        v11 = 0;
        while (1)
        {
          LOBYTE(v18[0]) = 0;
          v12 = objc_msgSend_position(a1, v18[0]) + 1;
          if (v12 >= objc_msgSend_position(a1) && (v13 = objc_msgSend_position(a1) + 1, v13 <= [a1 length]))
          {
            v14 = [a1 data];
            [v14 getBytes:v18 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((SLOBYTE(v18[0]) & 0x80000000) == 0)
          {
            break;
          }

          if (v11++ > 8)
          {
            goto LABEL_2;
          }
        }

        [a1 hasError];
      }

      if ((v10 >> 3) == 1)
      {
        break;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    if ((v10 & 7) != 2)
    {
      break;
    }

    v18[0] = 0;
    v18[1] = 0;
    if (!PBReaderPlaceMark() || !GEOStyleAttributeIsValid(a1))
    {
      break;
    }

    PBReaderRecallMark();
  }

LABEL_39:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEOPDDatasetABStatusIsValid(void *a1)
{
  objc_msgSend_position(a1);
  [a1 length];
  do
  {
    while (1)
    {
LABEL_2:
      v2 = objc_msgSend_position(a1);
      if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        goto LABEL_32;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v18 = 0;
        v6 = objc_msgSend_position(a1) + 1;
        if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
        {
          v8 = [a1 data];
          [v8 getBytes:&v18 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v5 |= (v18 & 0x7F) << v3;
        if ((v18 & 0x80) == 0)
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

      v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
      if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
      {
LABEL_32:
        v16 = [a1 hasError] ^ 1;
        goto LABEL_33;
      }

      if ((v10 >> 3) != 1)
      {
        break;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_34;
      }

      v11 = 0;
      while (1)
      {
        v18 = 0;
        v12 = objc_msgSend_position(a1) + 1;
        if (v12 >= objc_msgSend_position(a1) && (v13 = objc_msgSend_position(a1) + 1, v13 <= [a1 length]))
        {
          v14 = [a1 data];
          [v14 getBytes:&v18 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v18 & 0x80000000) == 0)
        {
          break;
        }

        if (v11++ > 8)
        {
          goto LABEL_2;
        }
      }

      [a1 hasError];
    }
  }

  while (PBReaderSkipValueWithTag());
LABEL_34:
  v16 = 0;
LABEL_33:
  PBReaderRecallMark();
  return v16;
}

uint64_t GEOPDDatasetABStatusReadAllFrom(uint64_t a1, void *a2)
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

void *GEOPDPlaceResponseReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 124))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDPlaceResponseReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 128));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 120) = objc_msgSend_position(v8);
  *(a1 + 124) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDPlaceResponseReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDPlaceResponseReadAllFrom_initialTag;
  }

  Specified = GEOPDPlaceResponseReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDPlaceResponseCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 128));
  return Specified;
}

void *GEOPDPlaceResponseReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 128));
  [v3 setLength:*(a1 + 124)];
  [v3 seekToOffset:*(a1 + 120)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = vdup_n_s16(*(a1 + 140));
  v12 = (vaddv_s16(vand_s8(vshl_u16(v11, 0xFFFBFFFCFFF4FFF6), 0x1000100010001)) + ((*(a1 + 140) >> 3) & 1)) + (vaddv_s16((*&vshl_u16(v11, 0xFFF7FFF8FFF3FFF5) & 0xFF01FF01FF01FF01)) + ((*(a1 + 140) >> 14) & 1) + ((*(a1 + 140) >> 7) & 1) + ((*(a1 + 140) >> 6) & 1));
  while (1)
  {
    v13 = a3[v6];
    if (v13 > -3)
    {
      break;
    }

    if (v13 == -4)
    {
      ++v12;
      v8 = 1;
      goto LABEL_15;
    }

    if (v13 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v12;
LABEL_15:
    ++v6;
  }

  if (v13 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v13 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v13)
  {
    goto LABEL_14;
  }

  v14 = v12 > 7;
  v67 = v9;
  v68 = v14 & ~v10 | v8;
  v15 = v10 | v14;
  v69 = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v70 = (v16 == 0) | v15;
  v71 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_176:
      v26 = 1;
      goto LABEL_179;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v72) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v72 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v72 & 0x7F) << v18;
      if ((v72 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      v24 = v19++ >= 9;
      if (v24)
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
      goto LABEL_179;
    }

    v27 = v20 >> 3;
    v28 = v71;
    if ((v70 & 1) == 0)
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

    if (v27 <= 7)
    {
      if (v27 > 3)
      {
        if (v27 > 5)
        {
          if (v27 == 6)
          {
            if (!v28)
            {
              goto LABEL_147;
            }

            if ((*(a1 + 140) & 0x200) != 0)
            {
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_178;
              }

              v61 = *(a1 + 140) << 6;
              goto LABEL_175;
            }

            v35 = PBReaderReadString();
            v36 = 72;
LABEL_123:
            v51 = *(a1 + v36);
            *(a1 + v36) = v35;
LABEL_140:

            --v6;
            goto LABEL_148;
          }

          if (!v28 || (*(a1 + 140) & 0x4000) != 0)
          {
            goto LABEL_147;
          }

          v33 = PBReaderReadString();
          if (v33)
          {
            [(GEOPDPlaceResponse *)a1 _addNoFlagsSpokenLanguage:v33];
          }
        }

        else if (v27 == 4)
        {
          if (!v28 || (*(a1 + 140) & 0x2000) != 0)
          {
            goto LABEL_147;
          }

          v72 = 0;
          v73 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_178;
          }

          v33 = objc_alloc_init(GEOPDPlace);
          if (!GEOPDPlaceReadAllFrom(v33, v3, v67 & 1))
          {
            goto LABEL_177;
          }

          PBReaderRecallMark();
          [(GEOPDPlaceResponse *)a1 _addNoFlagsLegacyPlaceResult:v33];
        }

        else
        {
          if (!v28 || (*(a1 + 140) & 0x100) != 0)
          {
            goto LABEL_147;
          }

          v33 = PBReaderReadString();
          if (v33)
          {
            [(GEOPDPlaceResponse *)a1 _addNoFlagsDisplayLanguage:v33];
          }
        }

LABEL_96:

        goto LABEL_148;
      }

      switch(v27)
      {
        case 1:
          if ((v7 & 1) == 0)
          {
            goto LABEL_147;
          }

          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 140) |= 4u;
          while (1)
          {
            LOBYTE(v72) = 0;
            v47 = objc_msgSend_position(v3) + 1;
            if (v47 >= objc_msgSend_position(v3) && (v48 = objc_msgSend_position(v3) + 1, v48 <= [v3 length]))
            {
              v49 = [v3 data];
              [v49 getBytes:&v72 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v46 |= (v72 & 0x7F) << v44;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v24 = v45++ >= 9;
            if (v24)
            {
              v50 = 0;
              goto LABEL_157;
            }
          }

          if ([v3 hasError])
          {
            v50 = 0;
          }

          else
          {
            v50 = v46;
          }

LABEL_157:
          v60 = 136;
LABEL_162:
          *(a1 + v60) = v50;
          goto LABEL_148;
        case 2:
          if ((v7 & 1) == 0)
          {
            goto LABEL_147;
          }

          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 140) |= 2u;
          while (1)
          {
            LOBYTE(v72) = 0;
            v55 = objc_msgSend_position(v3) + 1;
            if (v55 >= objc_msgSend_position(v3) && (v56 = objc_msgSend_position(v3) + 1, v56 <= [v3 length]))
            {
              v57 = [v3 data];
              [v57 getBytes:&v72 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v54 |= (v72 & 0x7F) << v52;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v24 = v53++ >= 9;
            if (v24)
            {
              v50 = 0;
              goto LABEL_161;
            }
          }

          if ([v3 hasError])
          {
            v50 = 0;
          }

          else
          {
            v50 = v54;
          }

LABEL_161:
          v60 = 132;
          goto LABEL_162;
        case 3:
          if (!v28)
          {
            goto LABEL_147;
          }

          if ((*(a1 + 140) & 0x800) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_178;
            }

            v61 = 16 * *(a1 + 140);
            goto LABEL_175;
          }

          v72 = 0;
          v73 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_178;
          }

          v33 = objc_alloc_init(GEOPDPlaceGlobalResult);
          if (!GEOPDPlaceGlobalResultReadAllFrom(v33, v3, v67 & 1))
          {
            goto LABEL_177;
          }

          PBReaderRecallMark();
          v34 = 88;
LABEL_139:
          v51 = *(a1 + v34);
          *(a1 + v34) = v33;
          goto LABEL_140;
      }

      goto LABEL_141;
    }

    if (v27 <= 10)
    {
      break;
    }

    if (v27 > 999)
    {
      if (v27 == 1000)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_147;
        }

        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 140) |= 1u;
        while (1)
        {
          LOBYTE(v72) = 0;
          v40 = objc_msgSend_position(v3) + 1;
          if (v40 >= objc_msgSend_position(v3) && (v41 = objc_msgSend_position(v3) + 1, v41 <= [v3 length]))
          {
            v42 = [v3 data];
            [v42 getBytes:&v72 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v39 |= (v72 & 0x7F) << v37;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v24 = v38++ >= 9;
          if (v24)
          {
            v43 = 0;
            goto LABEL_153;
          }
        }

        if ([v3 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v39;
        }

LABEL_153:
        *(a1 + 56) = v43;
        goto LABEL_148;
      }

      if (v27 == 1051)
      {
        if (!v28)
        {
          goto LABEL_147;
        }

        if ((*(a1 + 140) & 0x20) == 0)
        {
          v72 = 0;
          v73 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_178;
          }

          v33 = objc_alloc_init(GEOClientMetrics);
          if (!GEOClientMetricsReadAllFrom(v33, v3, v67 & 1))
          {
            goto LABEL_177;
          }

          PBReaderRecallMark();
          v34 = 32;
          goto LABEL_139;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_178;
        }

        v61 = *(a1 + 140) << 10;
LABEL_175:
        v6 += v61 >> 15;
        goto LABEL_148;
      }
    }

    else
    {
      if (v27 == 11)
      {
        if (!v28 || (*(a1 + 140) & 0x400) != 0)
        {
          goto LABEL_147;
        }

        v72 = 0;
        v73 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_178;
        }

        v33 = objc_alloc_init(GEOPDDotPlace);
        if (!GEOPDDotPlaceReadAllFrom(v33, v3, v67 & 1))
        {
          goto LABEL_177;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceResponse *)a1 _addNoFlagsDotPlace:v33];
        goto LABEL_96;
      }

      if (v27 == 12)
      {
        if (!v28)
        {
          goto LABEL_147;
        }

        if ((*(a1 + 140) & 0x10) == 0)
        {
          v72 = 0;
          v73 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_178;
          }

          v33 = objc_alloc_init(GEOPDPlacesRequestResponseAnalyticsData);
          if (!GEOPDPlacesRequestResponseAnalyticsDataReadAllFrom(v33, v3))
          {
            goto LABEL_177;
          }

          PBReaderRecallMark();
          v34 = 24;
          goto LABEL_139;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_178;
        }

        v61 = *(a1 + 140) << 11;
        goto LABEL_175;
      }
    }

LABEL_141:
    if ((v68 & 1) == 0 || (*(a1 + 140) & 8) != 0)
    {
      goto LABEL_147;
    }

    if (!*(a1 + 16))
    {
      v58 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v59 = *(a1 + 16);
      *(a1 + 16) = v58;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      goto LABEL_180;
    }

LABEL_148:
    if (!(v69 & 1 | (v6 != 0)))
    {
      goto LABEL_176;
    }
  }

  if (v27 == 8)
  {
    if (!v28)
    {
      goto LABEL_147;
    }

    if ((*(a1 + 140) & 0x80) != 0)
    {
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_178;
      }

      v61 = *(a1 + 140) << 8;
      goto LABEL_175;
    }

    v35 = PBReaderReadString();
    v36 = 48;
    goto LABEL_123;
  }

  if (v27 != 9)
  {
    if (!v28 || (*(a1 + 140) & 0x1000) != 0)
    {
LABEL_147:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_178;
      }

      goto LABEL_148;
    }

    v72 = 0;
    v73 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_178;
    }

    v33 = objc_alloc_init(GEOPDMapsResult);
    if (!GEOPDMapsResultReadAllFrom(v33, v3, v67 & 1))
    {
      goto LABEL_177;
    }

    PBReaderRecallMark();
    [(GEOPDPlaceResponse *)a1 _addNoFlagsMapsResult:v33];
    goto LABEL_96;
  }

  if (!v28)
  {
    goto LABEL_147;
  }

  if ((*(a1 + 140) & 0x40) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_178;
    }

    v61 = *(a1 + 140) << 9;
    goto LABEL_175;
  }

  v72 = 0;
  v73 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_178;
  }

  v33 = objc_alloc_init(GEOPDDatasetABStatus);
  if (GEOPDDatasetABStatusReadAllFrom(v33, v3))
  {
    PBReaderRecallMark();
    v34 = 40;
    goto LABEL_139;
  }

LABEL_177:

LABEL_178:
  v26 = 0;
LABEL_179:
  if ((v68 & 1) == 0)
  {
    goto LABEL_181;
  }

LABEL_180:
  *(a1 + 140) |= 8u;
LABEL_181:
  if (v71 || (v26 & 1) == 0)
  {
    *(a1 + 140) |= 0x800u;
    *(a1 + 140) |= 0x2000u;
    *(a1 + 140) |= 0x100u;
    *(a1 + 140) |= 0x200u;
    *(a1 + 140) |= 0x4000u;
    *(a1 + 140) |= 0x80u;
    *(a1 + 140) |= 0x40u;
    *(a1 + 140) |= 0x1000u;
    *(a1 + 140) |= 0x400u;
    *(a1 + 140) |= 0x10u;
    *(a1 + 140) |= 0x20u;
    goto LABEL_211;
  }

  if (v16)
  {
    while (1)
    {
      v63 = *v16++;
      v62 = v63;
      if (v63 > 7)
      {
        if (v62 > 10)
        {
          switch(v62)
          {
            case 11:
              v64 = 1024;
              break;
            case 12:
              v64 = 16;
              break;
            case 1051:
              v64 = 32;
              break;
            default:
              continue;
          }
        }

        else
        {
          switch(v62)
          {
            case 8:
              v64 = 128;
              break;
            case 9:
              v64 = 64;
              break;
            case 10:
              v64 = 4096;
              break;
            default:
              continue;
          }
        }

        goto LABEL_209;
      }

      if (v62 > 4)
      {
        switch(v62)
        {
          case 5:
            v64 = 256;
            break;
          case 6:
            v64 = 512;
            break;
          case 7:
            v64 = 0x4000;
            break;
          default:
            continue;
        }

        goto LABEL_209;
      }

      if (v62 == 3)
      {
        break;
      }

      if (v62 == 4)
      {
        v64 = 0x2000;
LABEL_209:
        *(a1 + 140) |= v64;
        continue;
      }

      if (!v62)
      {
        goto LABEL_211;
      }
    }

    v64 = 2048;
    goto LABEL_209;
  }

LABEL_211:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v71)
  {
    v65 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

id protobufDataWithHeader(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v15 = 0;
  v6 = compress_52613(v3, &v15);
  v7 = v6;
  if (v6)
  {
    v8 = v6;

    v9 = v15 | 1;
    v3 = v8;
  }

  else
  {
    v9 = 1;
  }

  objc_autoreleasePoolPop(v5);
  v10 = [v4 dataUsingEncoding:4];
  v11 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(v3, "length") + objc_msgSend(v10, "length") + 2}];
  v14 = v9;
  [v11 appendBytes:&v14 length:1];
  [v11 appendData:v10];
  v13 = 0;
  [v11 appendBytes:&v13 length:1];
  [v11 appendData:v3];

  return v11;
}

uint64_t GEOStyleAttributeIsValid(void *a1)
{
  objc_msgSend_position(a1);
  [a1 length];
  do
  {
    while (1)
    {
LABEL_2:
      v2 = objc_msgSend_position(a1);
      if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        goto LABEL_43;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v22 = 0;
        v6 = objc_msgSend_position(a1) + 1;
        if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
        {
          v8 = [a1 data];
          [v8 getBytes:&v22 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v5 |= (v22 & 0x7F) << v3;
        if ((v22 & 0x80) == 0)
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

      v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
      if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
      {
LABEL_43:
        v20 = [a1 hasError] ^ 1;
        goto LABEL_44;
      }

      if ((v10 >> 3) != 2)
      {
        break;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_45;
      }

      v16 = 0;
      while (1)
      {
        v22 = 0;
        v17 = objc_msgSend_position(a1) + 1;
        if (v17 >= objc_msgSend_position(a1) && (v18 = objc_msgSend_position(a1) + 1, v18 <= [a1 length]))
        {
          v19 = [a1 data];
          [v19 getBytes:&v22 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v22 & 0x80000000) == 0)
        {
          break;
        }

        v15 = v16++ > 8;
        if (v15)
        {
          goto LABEL_2;
        }
      }

LABEL_42:
      [a1 hasError];
    }

    if ((v10 >> 3) == 1)
    {
      if ((v10 & 7) != 0)
      {
        break;
      }

      v11 = 0;
      while (1)
      {
        v22 = 0;
        v12 = objc_msgSend_position(a1) + 1;
        if (v12 >= objc_msgSend_position(a1) && (v13 = objc_msgSend_position(a1) + 1, v13 <= [a1 length]))
        {
          v14 = [a1 data];
          [v14 getBytes:&v22 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v22 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v15 = v11++ > 8;
        if (v15)
        {
          goto LABEL_2;
        }
      }
    }
  }

  while ((PBReaderSkipValueWithTag() & 1) != 0);
LABEL_45:
  v20 = 0;
LABEL_44:
  PBReaderRecallMark();
  return v20;
}

void _GEORequestResponseLogResponse(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ((GEOConfigGetBOOL(204, &GeoServicesConfig_MapsRequestResponseLoggingPersisted_Metadata) & 1) != 0 || os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v7 data];
    v9 = _GEORequestResponseLogQueue();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___GEORequestResponseLogResponse_block_invoke;
    v11[3] = &unk_1E70713D0;
    v12 = v8;
    v13 = v5;
    v14 = v6;
    v15 = v7;
    v10 = v8;
    dispatch_async(v9, v11);
  }
}

BOOL RegionContainsPoint(_DWORD *a1, double a2, double a3)
{
  v27 = 0uLL;
  v6 = a1[4];
  v7 = a1[5];
  *(&v27 + 6) = v7 & 0x3F | (a1[3] << 6);
  *(&v27 + 10) = v6 & 0x3FFFFFF;
  v8 = GEOMapRectForGEOTileKey(&v27);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a1[1];
  *(&v27 + 6) = v7 & 0x3F | (*a1 << 6);
  BYTE14(v27) = 0;
  *(&v27 + 10) = v15 & 0x3FFFFFF;
  v16 = GEOMapRectForGEOTileKey(&v27);
  v18 = GEOMapRectUnion(v8, v10, v12, v14, v16, v17);
  result = 0;
  v23 = fabs(v19) == INFINITY;
  if (fabs(v18) != INFINITY && !v23)
  {
    v24 = v18 + v20;
    if (a2 >= v18 && a2 < v24 && a3 >= v19)
    {
      return a3 < v19 + v21;
    }
  }

  return result;
}

void GEOTileKeyAssertIsStandard(uint64_t a1)
{
  if (*(a1 + 1) | (*(a1 + 5) << 32))
  {
    v4 = v1;
    v5 = v2;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v3 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: key->standard.reserved == 0", v3, 2u);
    }
  }
}

uint64_t GEOGloriaQuadIDTileKeyMakeWithCoordinate(gloria::TileId *a1, const double *a2, const double *a3, const unsigned __int8 *a4, double a5, double a6)
{
  v6 = a1;
  LOBYTE(v10) = 12;
  gloria::TileId::FromLatLng(a1, a2, a3, a4, a5, a6);
  *(&v10 + 1) = v6 & 0x3F | (gloria::TileId::GetEncodedTileId(v7, v8) << 6);
  return v10;
}

uint64_t geo::DbReaderTarFileDescriptor::DbReaderTarFileDescriptor(uint64_t a1, int a2, void *a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = a3;
  *a1 = &unk_1EF7E7918;
  *(a1 + 8) = a2;
  v6 = v5;
  *(a1 + 80) = 0u;
  *(a1 + 16) = v6;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  if (fstat(*(a1 + 8), &v63) == -1)
  {
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v51 = *(a1 + 8);
      v52 = *__error();
      v53 = __error();
      v54 = strerror(*v53);
      LODWORD(__str.__r_.__value_.__l.__data_) = 67109634;
      HIDWORD(__str.__r_.__value_.__r.__words[0]) = v51;
      LOWORD(__str.__r_.__value_.__r.__words[1]) = 1024;
      *(&__str.__r_.__value_.__r.__words[1] + 2) = v52;
      HIWORD(__str.__r_.__value_.__r.__words[1]) = 2080;
      __str.__r_.__value_.__r.__words[2] = v54;
      _os_log_error_impl(&dword_18660C000, v9, OS_LOG_TYPE_ERROR, "[TarFile] Could not get file information for descriptor %d with error %d: %s", &__str, 0x18u);
    }

    goto LABEL_5;
  }

  st_size = v63.st_size;
  v8 = mmap(0, v63.st_size, 1, 2, *(a1 + 8), 0);
  if (v8 + 1 <= 1)
  {
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v47 = *(a1 + 8);
      v48 = *__error();
      v49 = __error();
      v50 = strerror(*v49);
      LODWORD(__str.__r_.__value_.__l.__data_) = 67109634;
      HIDWORD(__str.__r_.__value_.__r.__words[0]) = v47;
      LOWORD(__str.__r_.__value_.__r.__words[1]) = 1024;
      *(&__str.__r_.__value_.__r.__words[1] + 2) = v48;
      HIWORD(__str.__r_.__value_.__r.__words[1]) = 2080;
      __str.__r_.__value_.__r.__words[2] = v50;
      _os_log_error_impl(&dword_18660C000, v9, OS_LOG_TYPE_ERROR, "[TarFile] Could not memory-map file descriptor: %d with error %d: %s", &__str, 0x18u);
    }

LABEL_5:

    goto LABEL_88;
  }

  v10 = *(a1 + 16);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(__str.__r_.__value_.__l.__data_) = 134218240;
    *(__str.__r_.__value_.__r.__words + 4) = v8;
    WORD2(__str.__r_.__value_.__r.__words[1]) = 2048;
    *(&__str.__r_.__value_.__r.__words[1] + 6) = v8 + st_size;
    _os_log_debug_impl(&dword_18660C000, v10, OS_LOG_TYPE_DEBUG, "[TarFile] Memory-mapped file at [%p : %p]", &__str, 0x16u);
  }

  *(a1 + 24) = v8;
  *(a1 + 32) = st_size;
  archive_read_new();
  archive_read_support_format_tar();
  if (archive_read_open_memory())
  {
    v11 = *(a1 + 16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v55 = archive_error_string();
      LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
      *(__str.__r_.__value_.__r.__words + 4) = v55;
      _os_log_error_impl(&dword_18660C000, v11, OS_LOG_TYPE_ERROR, "[TarFile] error: %s", &__str, 0xCu);
    }

    archive_read_free();
    goto LABEL_88;
  }

  v62 = 0;
  v56 = v6;
LABEL_16:
  while (2)
  {
    next_header = archive_read_next_header();
    if (!next_header)
    {
      if (archive_entry_filetype() != 0x8000)
      {
        continue;
      }

      v13 = archive_entry_size();
      v60 = 0;
      v61 = 0;
      v59 = 0;
      if (archive_read_data_block() || v60 != v13)
      {
        v30 = archive_error_string();
        v31 = *(a1 + 16);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
          *(__str.__r_.__value_.__r.__words + 4) = v30;
          _os_log_error_impl(&dword_18660C000, v31, OS_LOG_TYPE_ERROR, "[TarFile] Failed to archive_read_data_block(): %s", &__str, 0xCu);
        }

        continue;
      }

      v14 = archive_entry_pathname_utf8();
      std::string::basic_string[abi:ne200100]<0>(&__str, v14);
      std::string::basic_string[abi:ne200100]<0>(&v58, "data/");
      v57 = v13;
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v58;
      }

      else
      {
        v15 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v58.__r_.__value_.__l.__size_;
      }

      v17 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v17 = __str.__r_.__value_.__l.__size_;
      }

      if (v17 >= size)
      {
        v17 = size;
      }

      if (v17)
      {
        v18 = (v15 + v17);
        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        v20 = v15;
        while (v20->__r_.__value_.__s.__data_[0] == p_str->__r_.__value_.__s.__data_[0])
        {
          v20 = (v20 + 1);
          p_str = (p_str + 1);
          if (!--v17)
          {
            v20 = v18;
            break;
          }
        }

        if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v20 = v15;
        if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_38;
        }
      }

      operator delete(v58.__r_.__value_.__l.__data_);
LABEL_38:
      if (v20 == (v15 + size))
      {
        v21 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v21 = __str.__r_.__value_.__l.__size_;
        }

        std::string::basic_string(&v58, &__str, 5uLL, v21 - 5, &v64);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v58;
      }

      v22 = v61;
      v23 = std::__string_hash<char>::operator()[abi:ne200100](a1 + 40, &__str);
      v24 = v23;
      v25 = *(a1 + 48);
      if (!*&v25)
      {
        goto LABEL_64;
      }

      v26 = v22;
      v27 = vcnt_s8(v25);
      v27.i16[0] = vaddlv_u8(v27);
      v28 = v27.u32[0];
      if (v27.u32[0] > 1uLL)
      {
        v29 = v23;
        if (v23 >= *&v25)
        {
          v29 = v23 % *&v25;
        }
      }

      else
      {
        v29 = (*&v25 - 1) & v23;
      }

      v32 = *(*(a1 + 40) + 8 * v29);
      if (!v32 || (v33 = *v32) == 0)
      {
LABEL_64:
        operator new();
      }

      while (1)
      {
        v34 = v33[1];
        if (v34 == v24)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1 + 40, v33 + 2, &__str.__r_.__value_.__l.__data_))
          {
            v33[5] = v26;
            v35 = std::__string_hash<char>::operator()[abi:ne200100](a1 + 80, &__str);
            v36 = v35;
            v37 = *(a1 + 88);
            if (!*&v37)
            {
              goto LABEL_81;
            }

            v38 = vcnt_s8(v37);
            v38.i16[0] = vaddlv_u8(v38);
            v39 = v38.u32[0];
            if (v38.u32[0] > 1uLL)
            {
              v40 = v35;
              if (v35 >= *&v37)
              {
                v40 = v35 % *&v37;
              }
            }

            else
            {
              v40 = (*&v37 - 1) & v35;
            }

            v41 = *(*(a1 + 80) + 8 * v40);
            if (!v41 || (v42 = *v41) == 0)
            {
LABEL_81:
              operator new();
            }

            while (2)
            {
              v43 = v42[1];
              if (v43 != v36)
              {
                if (v39 > 1)
                {
                  if (v43 >= *&v37)
                  {
                    v43 %= *&v37;
                  }
                }

                else
                {
                  v43 &= *&v37 - 1;
                }

                if (v43 != v40)
                {
                  goto LABEL_81;
                }

LABEL_80:
                v42 = *v42;
                if (!v42)
                {
                  goto LABEL_81;
                }

                continue;
              }

              break;
            }

            if (!std::equal_to<std::string>::operator()[abi:ne200100](a1 + 80, v42 + 2, &__str.__r_.__value_.__l.__data_))
            {
              goto LABEL_80;
            }

            v6 = v56;
            v42[5] = v57;
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            goto LABEL_16;
          }
        }

        else
        {
          if (v28 > 1)
          {
            if (v34 >= *&v25)
            {
              v34 %= *&v25;
            }
          }

          else
          {
            v34 &= *&v25 - 1;
          }

          if (v34 != v29)
          {
            goto LABEL_64;
          }
        }

        v33 = *v33;
        if (!v33)
        {
          goto LABEL_64;
        }
      }
    }

    break;
  }

  if (next_header != 1)
  {
    v44 = archive_error_string();
    v45 = *(a1 + 16);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
      *(__str.__r_.__value_.__r.__words + 4) = v44;
      _os_log_error_impl(&dword_18660C000, v45, OS_LOG_TYPE_ERROR, "[TarFile] Failed to archive_read_next_header(): %s", &__str, 0xCu);
    }
  }

  archive_read_close();
  archive_read_free();
LABEL_88:

  return a1;
}

void sub_1867C4A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  std::__hash_table<std::__hash_value_type<std::string,google::protobuf::Descriptor::WellKnownType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,google::protobuf::Descriptor::WellKnownType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,google::protobuf::Descriptor::WellKnownType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,google::protobuf::Descriptor::WellKnownType>>>::~__hash_table(v17);
  std::__hash_table<std::__hash_value_type<std::string,google::protobuf::Descriptor::WellKnownType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,google::protobuf::Descriptor::WellKnownType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,google::protobuf::Descriptor::WellKnownType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,google::protobuf::Descriptor::WellKnownType>>>::~__hash_table(v16);

  _Unwind_Resume(a1);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

BOOL geo::DbReaderTarFileDescriptor::pathExists(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    v3 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a1 + 40), a2);
  }

  else
  {
    v3 = *(a1 + 64);
  }

  return v3 != 0;
}

void geo::DbReaderTarFileDescriptor::createMemoryBuffer(int8x8_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (****a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v8 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(&a1[5], a2);
  v9 = std::__string_hash<char>::operator()[abi:ne200100](&a1[10], a2);
  v10 = a1[11];
  if (v10)
  {
    v11 = v9;
    v12 = vcnt_s8(v10);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v14 = v9;
      if (v9 >= *&v10)
      {
        v14 = v9 % *&v10;
      }
    }

    else
    {
      v14 = (*&v10 - 1) & v9;
    }

    v15 = *(*&a1[10] + 8 * v14);
    if (v15)
    {
      for (i = *v15; i; i = *i)
      {
        v17 = i[1];
        if (v11 == v17)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](&a1[10], i + 2, a2))
          {
            if (v8 && i)
            {
              v22 = 0;
              v23 = 0;
              v24 = -1;
              v26 = 0;
              v27 = 0;
              __p = 0;
              v21 = v8[5];
              v18 = (***a4)();
              v19 = i[5];
              v22 = v18;
              v23 = v19;
              operator new();
            }

            break;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v17 >= *&v10)
            {
              v17 %= *&v10;
            }
          }

          else
          {
            v17 &= *&v10 - 1;
          }

          if (v17 != v14)
          {
            break;
          }
        }
      }
    }
  }

  LOBYTE(v21) = 1;
  HIDWORD(v21) = 0;
  v22 = "";
  v23 = 0;
  gloria::Status::Status(a5, 1, &v21);
}

void sub_1867C515C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(void *a1, uint64_t *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

uint64_t GEOPDIconReadAllFrom(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  objc_sync_enter(v5);
  if (v5)
  {
    v6 = objc_msgSend_position(v5);
    if (v6 < [v5 length])
    {
      do
      {
        if ([v5 hasError])
        {
          break;
        }

        v7 = 0;
        v8 = 0;
        v9 = 0;
        while (1)
        {
          LOBYTE(v38[0]) = 0;
          v10 = objc_msgSend_position(v5, v38[0]);
          if (v10 + 1 >= objc_msgSend_position(v5) && (v11 = objc_msgSend_position(v5), v11 + 1 <= [v5 length]))
          {
            v12 = [v5 data];
            [v12 getBytes:v38 range:{objc_msgSend_position(v5), 1}];

            [v5 setPosition:objc_msgSend_position(v5) + 1];
          }

          else
          {
            [v5 _setError];
          }

          v9 |= (v38[0] & 0x7F) << v7;
          if ((v38[0] & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          v13 = v8++ >= 9;
          if (v13)
          {
            v9 = 0;
            goto LABEL_15;
          }
        }

        if ([v5 hasError])
        {
          v9 = 0;
        }

LABEL_15:
        v14 = [v5 hasError];
        v15 = (v9 & 7) == 4 ? 1 : v14;
        if (v15)
        {
          break;
        }

        v16 = v9 >> 3;
        switch(v16)
        {
          case 3:
            v26 = 0;
            v27 = 0;
            v28 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              LOBYTE(v38[0]) = 0;
              v29 = objc_msgSend_position(v5, v38[0]);
              if (v29 + 1 >= objc_msgSend_position(v5) && (v30 = objc_msgSend_position(v5), v30 + 1 <= [v5 length]))
              {
                v31 = [v5 data];
                [v31 getBytes:v38 range:{objc_msgSend_position(v5), 1}];

                [v5 setPosition:objc_msgSend_position(v5) + 1];
              }

              else
              {
                [v5 _setError];
              }

              v28 |= (v38[0] & 0x7F) << v26;
              if ((v38[0] & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v13 = v27++ >= 9;
              if (v13)
              {
                LOBYTE(v32) = 0;
                goto LABEL_52;
              }
            }

            v32 = (v28 != 0) & ~[v5 hasError];
LABEL_52:
            *(a1 + 28) = v32;
            break;
          case 2:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              LOBYTE(v38[0]) = 0;
              v22 = objc_msgSend_position(v5, v38[0]);
              if (v22 + 1 >= objc_msgSend_position(v5) && (v23 = objc_msgSend_position(v5), v23 + 1 <= [v5 length]))
              {
                v24 = [v5 data];
                [v24 getBytes:v38 range:{objc_msgSend_position(v5), 1}];

                [v5 setPosition:objc_msgSend_position(v5) + 1];
              }

              else
              {
                [v5 _setError];
              }

              v21 |= (v38[0] & 0x7F) << v19;
              if ((v38[0] & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v13 = v20++ >= 9;
              if (v13)
              {
                v25 = 0;
                goto LABEL_50;
              }
            }

            if ([v5 hasError])
            {
              v25 = 0;
            }

            else
            {
              v25 = v21;
            }

LABEL_50:
            *(a1 + 24) = v25;
            break;
          case 1:
            v38[0] = 0;
            v38[1] = 0;
            if ((PBReaderPlaceMark() & 1) == 0)
            {
              goto LABEL_56;
            }

            v17 = objc_alloc_init(GEOPDPhoto);
            if (!GEOPDPhotoReadAllFrom(v17, v5, a3))
            {

              goto LABEL_56;
            }

            PBReaderRecallMark();
            v18 = *(a1 + 16);
            *(a1 + 16) = v17;

            break;
          default:
            if (!*(a1 + 8))
            {
              v33 = objc_alloc_init(MEMORY[0x1E69C65D8]);
              v34 = *(a1 + 8);
              *(a1 + 8) = v33;
            }

            if (!PBUnknownFieldAdd())
            {
              goto LABEL_56;
            }

            break;
        }

        v35 = objc_msgSend_position(v5);
      }

      while (v35 < [v5 length]);
    }

    v36 = [v5 hasError] ^ 1;
  }

  else
  {
LABEL_56:
    v36 = 0;
  }

  objc_sync_exit(v5);

  return v36;
}

uint64_t GEOPDBrandLookupParametersReadAllFrom(uint64_t a1, void *a2)
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

void _attributedGeoMapItemsForPlaceDatasWithHandler(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v17)
  {
    if ([v12 count] || objc_msgSend(v16, "count"))
    {
      v18 = _attributionsToRequestForPlaceDatas(v12);
      if ([v18 count])
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = ___attributedGeoMapItemsForPlaceDatasWithHandler_block_invoke;
        v21[3] = &unk_1E705A110;
        v22 = v12;
        v23 = v13;
        v24 = v14;
        v25 = v15;
        v26 = v17;
        _loadAttributions(v18, v21);
      }

      else
      {
        v19 = _attributedGeoMapItemsForPlaceDatas(v12, v13, v14, v15, 0);
        if ([v19 count])
        {
          (*(v17 + 2))(v17, v19, 0);
        }

        else
        {
          v20 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-8 reason:@"No Results"];
          (*(v17 + 2))(v17, 0, v20);
        }
      }
    }

    else
    {
      v18 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-8 reason:@"No Results"];
      (*(v17 + 2))(v17, 0, v18);
    }
  }
}

void ___attributedGeoMapItemsForPlaceDatas_block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v11 = a2;
  if ([v11 statusCodeIsValid])
  {
    if (*(a1 + 80) <= a3)
    {
      v5 = 0;
    }

    else
    {
      v5 = [*(a1 + 32) objectAtIndex:a3];
    }

    v6 = [*(a1 + 40) count];
    if (v6 == [*(a1 + 48) count])
    {
      v7 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    }

    else
    {
      v7 = 0;
    }

    v8 = [*(a1 + 56) count];
    if (v8 == [*(a1 + 48) count])
    {
      v9 = [*(a1 + 56) objectAtIndexedSubscript:a3];
    }

    else
    {
      v9 = 0;
    }

    v10 = [[_GEOPlaceDataItem alloc] initWithPlaceData:v11 attributionMap:*(a1 + 64) disambiguationLabel:v5 detourInfo:v7 externalTransitStationCode:v9 additionalPlaces:0];
    [*(a1 + 72) addObject:v10];
  }
}

void *GEOPDMapsResultReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v9 = 0;
  v10 = 0;
  v11 = (vaddv_s16((*&vshl_u16((*&vdup_n_s16(*(a1 + 80)) & 0xFF00FF00FF00FFLL), 0xFFFCFFFAFFFDFFFBLL) & 0xFF01FF01FF01FF01)) + ((*(a1 + 80) & 4) != 0) + ((*(a1 + 80) & 2) != 0));
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
  LODWORD(v52) = v14;
  HIDWORD(v52) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v53 = (v16 == 0) | v15;
  v54 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v52);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_109:
      v26 = 1;
      goto LABEL_112;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v55) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v55 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v55 & 0x7F) << v18;
      if ((v55 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      v24 = v19++ >= 9;
      if (v24)
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
      goto LABEL_112;
    }

    v27 = v20 >> 3;
    v28 = v54;
    if ((v53 & 1) == 0)
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

    if (v27 > 3)
    {
      break;
    }

    switch(v27)
    {
      case 1:
        if ((v7 & 1) == 0)
        {
          goto LABEL_91;
        }

        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 80) |= 1u;
        while (1)
        {
          LOBYTE(v55) = 0;
          v38 = objc_msgSend_position(v3) + 1;
          if (v38 >= objc_msgSend_position(v3) && (v39 = objc_msgSend_position(v3) + 1, v39 <= [v3 length]))
          {
            v40 = [v3 data];
            [v40 getBytes:&v55 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v37 |= (v55 & 0x7F) << v35;
          if ((v55 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v24 = v36++ >= 9;
          if (v24)
          {
            v41 = 0;
            goto LABEL_96;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v37;
        }

LABEL_96:
        *(a1 + 76) = v41;
        goto LABEL_108;
      case 2:
        if (!v28)
        {
          goto LABEL_91;
        }

        if ((*(a1 + 80) & 0x20) == 0)
        {
          v55 = 0;
          v56 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_111;
          }

          v33 = objc_alloc_init(GEOPDPlace);
          if (!GEOPDPlaceReadAllFrom(v33, v3, v9 & 1))
          {
            goto LABEL_110;
          }

          PBReaderRecallMark();
          v34 = 48;
          goto LABEL_90;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_111;
        }

        v45 = 4 * *(a1 + 80);
        goto LABEL_107;
      case 3:
        if (!v28)
        {
          goto LABEL_91;
        }

        if ((*(a1 + 80) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_111;
          }

          v45 = 16 * *(a1 + 80);
          goto LABEL_107;
        }

        v55 = 0;
        v56 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_111;
        }

        v33 = objc_alloc_init(GEOPDCollectionResult);
        if (!GEOPDCollectionResultReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_110;
        }

        PBReaderRecallMark();
        v34 = 32;
LABEL_90:
        v44 = *(a1 + v34);
        *(a1 + v34) = v33;

        --v6;
        goto LABEL_108;
    }

LABEL_74:
    if ((v52 & 1) == 0 || (*(a1 + 80) & 2) != 0)
    {
LABEL_91:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_111;
      }

      goto LABEL_108;
    }

    if (!*(a1 + 16))
    {
      v42 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v43 = *(a1 + 16);
      *(a1 + 16) = v42;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      v51 = &OBJC_IVAR___GEOPDComponentFilter__restaurantReservationLinkFilter;
      goto LABEL_113;
    }

LABEL_108:
    if (!(BYTE4(v52) & 1 | (v6 != 0)))
    {
      goto LABEL_109;
    }
  }

  if (v27 == 4)
  {
    if (!v28)
    {
      goto LABEL_91;
    }

    if ((*(a1 + 80) & 0x40) == 0)
    {
      v55 = 0;
      v56 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_111;
      }

      v33 = objc_alloc_init(GEOPDPublisherResult);
      if (!GEOPDPublisherResultReadAllFrom(v33, v3, v9 & 1))
      {
        goto LABEL_110;
      }

      PBReaderRecallMark();
      v34 = 56;
      goto LABEL_90;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_111;
    }

    v45 = 2 * *(a1 + 80);
    goto LABEL_107;
  }

  if (v27 != 100)
  {
    if (v27 == 101)
    {
      if (!v28)
      {
        goto LABEL_91;
      }

      if ((*(a1 + 80) & 4) == 0)
      {
        v55 = 0;
        v56 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_111;
        }

        v33 = objc_alloc_init(GEOPDBatchReverseGeocodeResult);
        if (!GEOPDBatchReverseGeocodeResultReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_110;
        }

        PBReaderRecallMark();
        v34 = 24;
        goto LABEL_90;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_111;
      }

      v45 = 32 * *(a1 + 80);
LABEL_107:
      v6 += v45 >> 7;
      goto LABEL_108;
    }

    goto LABEL_74;
  }

  if (!v28)
  {
    goto LABEL_91;
  }

  if ((*(a1 + 80) & 0x10) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_111;
    }

    v45 = 8 * *(a1 + 80);
    goto LABEL_107;
  }

  v55 = 0;
  v56 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_111;
  }

  v33 = objc_alloc_init(GEOPDPlaceQuestionnaireResult);
  if (GEOPDPlaceQuestionnaireResultReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v34 = 40;
    goto LABEL_90;
  }

LABEL_110:

LABEL_111:
  v26 = 0;
LABEL_112:
  v51 = &OBJC_IVAR___GEOPDComponentFilter__restaurantReservationLinkFilter;
  if ((v52 & 1) == 0)
  {
    goto LABEL_114;
  }

LABEL_113:
  *(a1 + v51[814]) |= 2u;
LABEL_114:
  if (v54 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v51[814]) |= 0x20u;
    *(a1 + v51[814]) |= 8u;
    *(a1 + v51[814]) |= 0x40u;
    *(a1 + v51[814]) |= 0x10u;
    *(a1 + v51[814]) |= 4u;
    goto LABEL_130;
  }

  if (v16)
  {
    while (1)
    {
      v47 = *v16++;
      v46 = v47;
      if (v47 > 3)
      {
        switch(v46)
        {
          case 4:
            v48 = 64;
            break;
          case 100:
            v48 = 16;
            break;
          case 101:
            v48 = 4;
            break;
          default:
            continue;
        }

        goto LABEL_128;
      }

      if (v46 == 2)
      {
        break;
      }

      if (v46 == 3)
      {
        v48 = 8;
LABEL_128:
        *(a1 + v51[814]) |= v48;
        continue;
      }

      if (!v46)
      {
        goto LABEL_130;
      }
    }

    v48 = 32;
    goto LABEL_128;
  }

LABEL_130:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v54)
  {
    v49 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

id _attributedGeoMapItemsForPlaceDatas(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v9 count];
  if (v14)
  {
    v15 = [v10 count];
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:v14];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___attributedGeoMapItemsForPlaceDatas_block_invoke;
    v20[3] = &unk_1E705A1E8;
    v27 = v15;
    v21 = v10;
    v22 = v11;
    v23 = v9;
    v24 = v12;
    v25 = v13;
    v17 = v16;
    v26 = v17;
    [v23 enumerateObjectsUsingBlock:v20];
    v18 = v26;
    v14 = v17;
  }

  return v14;
}

uint64_t addr_obj::geo3::StructuredAddress_SubPremise::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = *(a2 + 1);
        if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
        {
          this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          v7 = this;
          *(a2 + 8) = this;
          if (!this)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = v7;
          *(a2 + 1) = v6 + 1;
          if (!v7)
          {
            return 1;
          }
        }

        v8 = v7 & 7;
        if (v7 >> 3 != 2)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_14;
        }

LABEL_25:
        *(v5 + 32) |= 2u;
        v12 = *(v5 + 16);
        if (v12 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 16));
        if (!this)
        {
          return this;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          this = 1;
          *(a2 + 36) = 1;
          return this;
        }
      }

      if (v7 >> 3 != 1 || (v7 & 7) != 0)
      {
        break;
      }

      v13 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v13);
        if (!this)
        {
          return this;
        }

        v10 = v13;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 > 3)
      {
        AddrObjGoogle::protobuf::UnknownFieldSet::AddVarint((v5 + 8), 1, v10);
      }

      else
      {
        *(v5 + 32) |= 1u;
        *(v5 + 24) = v10;
      }

      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 18)
      {
        *(a2 + 1) = v11 + 1;
        goto LABEL_25;
      }
    }

LABEL_14:
    if (v8 == 4)
    {
      return 1;
    }

    this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 8), a4);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

double GEOMapRectForGEOTileKey(_BYTE *a1)
{
  if ((*a1 & 0x7F) == 0x14)
  {
    v2 = a1 + 1;
  }

  else
  {
    GEOTileKeyAssertIsStandard(a1);
    v2 = a1 + 6;
  }

  return 268435456.0 / (1 << *v2) * (*v2 >> 6);
}

uint64_t geo::DbReaderTarFileDescriptor::listFiles@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(a1 + 64))
  {
    v25[0] = 1;
    v26 = 0;
    v27 = "";
    v28 = 0;
    v17 = v25;
    goto LABEL_28;
  }

  v5 = *(a1 + 56);
  if (!v5)
  {
    goto LABEL_26;
  }

  v8 = 0;
  do
  {
    v9 = (v5 + 2);
    v10 = a2[23];
    if ((v10 & 0x80u) == 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 1);
    }

    v12 = *(v5 + 39);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = v5[3];
    }

    if (v12 >= v10)
    {
      v12 = v10;
    }

    if (v12)
    {
      v14 = &v11[v12];
      v15 = *v9;
      if (v13 >= 0)
      {
        v15 = (v5 + 2);
      }

      v16 = v11;
      while (*v16 == *v15)
      {
        ++v16;
        ++v15;
        if (!--v12)
        {
          v16 = v14;
          break;
        }
      }
    }

    else
    {
      v16 = v11;
    }

    if (v16 == &v11[v10])
    {
      std::vector<std::string>::push_back[abi:ne200100](a3, v9);
      ++v8;
    }

    v5 = *v5;
  }

  while (v5);
  if (v8 <= 0)
  {
LABEL_26:
    v21 = 1;
    v22 = 0;
    v23 = "";
    v24 = 0;
    v17 = &v21;
LABEL_28:
    v18 = a4;
    v19 = 1;
    return gloria::Status::Status(v18, v19, v17);
  }

  v25[0] = 1;
  v26 = 0;
  v27 = "";
  v28 = 0;
  v17 = v25;
  v18 = a4;
  v19 = 0;
  return gloria::Status::Status(v18, v19, v17);
}

uint64_t _GEOPDPlaceIsDirty(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 112));
  v2 = *(a1 + 140);
  if ((v2 & 0x46000) != 0)
  {
    return 1;
  }

  if ((v2 & 0x10000) != 0)
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      os_unfair_lock_lock_with_options();
      os_unfair_lock_assert_owner((v3 + 48));
      v4 = *(v3 + 52) & 0xE;
      os_unfair_lock_unlock((v3 + 48));
      if (v4)
      {
        return 1;
      }

      v2 = *(a1 + 140);
    }
  }

  if ((v2 & 0x21000) != 0)
  {
    return 1;
  }

  return (v2 >> 15) & 1;
}

void *GEOPDMapsResultReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 68))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDMapsResultReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDMapsResultReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDMapsResultReadAllFrom_initialTag;
  }

  Specified = GEOPDMapsResultReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDMapsResultCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 72));
  return Specified;
}

void geo::TarBuffer::Read(uint64_t *a1@<X0>, const unint64_t **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, gloria::Buffer *a5@<X8>)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a2;
  gloria::Buffer::CheckBounds(a5, a1, *a2, *a3);
  if (*a5)
  {
    v11 = 0;
    *(a4 + 3) = 0;
    *(a4 + 1) = 0;
    v12 = "";
  }

  else
  {
    v12 = v10 + v8 + v9;
    v11 = *a3;
  }

  *a4 = 1;
  *(a4 + 4) = 0;
  *(a4 + 8) = v12;
  *(a4 + 16) = v11;
}

id GEOGetCoarseLocationLog()
{
  if (GEOGetCoarseLocationLog_onceToken != -1)
  {
    dispatch_once(&GEOGetCoarseLocationLog_onceToken, &__block_literal_global_117180);
  }

  v1 = GEOGetCoarseLocationLog_log;

  return v1;
}

double GEOMapRectUnion(double result, double a2, double a3, double a4, double a5, double a6)
{
  v6 = fabs(a2) == INFINITY;
  if (fabs(result) == INFINITY || v6)
  {
    return a5;
  }

  v8 = fabs(a6) == INFINITY;
  if (fabs(a5) != INFINITY && !v8 && result >= a5)
  {
    return a5;
  }

  return result;
}

uint64_t GEOGetUserPreferredTransportType()
{
  v0 = GEOGetUserTransportTypePreference();
  if (v0 < 5)
  {
    return (v0 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _GEOMapServiceTraitsCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  [*(a1 + 384) readAll:1];
  [*(a1 + 456) readAll:1];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v2 = *(a1 + 472);
  v3 = [v2 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v36;
    do
    {
      v6 = 0;
      do
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v35 + 1) + 8 * v6++) readAll:1];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v4);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = *(a1 + 520);
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      v11 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v31 + 1) + 8 * v11++) readAll:1];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v9);
  }

  [*(a1 + 568) readAll:1];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = *(a1 + 440);
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      v16 = 0;
      do
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v27 + 1) + 8 * v16++) readAll:1];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v27 objects:v40 count:16];
    }

    while (v14);
  }

  [*(a1 + 328) readAll:1];
  [*(a1 + 560) readAll:1];
  [*(a1 + 600) readAll:1];
  [(GEOPDVenueIdentifier *)*(a1 + 592) readAll:?];
  [*(a1 + 576) readAll:1];
  [*(a1 + 376) readAll:1];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = *(a1 + 424);
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      v21 = 0;
      do
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v23 + 1) + 8 * v21++) readAll:{1, v23}];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v23 objects:v39 count:16];
    }

    while (v19);
  }

  [*(a1 + 480) readAll:1];
  [*(a1 + 512) readAll:1];
  [*(a1 + 320) readAll:1];
  [*(a1 + 536) readAll:1];
  [*(a1 + 280) readAll:1];
  [*(a1 + 488) readAll:1];
  [*(a1 + 528) readAll:1];
  [*(a1 + 504) readAll:1];
  return [*(a1 + 584) readAll:1];
}

void *GEOPDSearchBrowseCategorySuggestionParametersReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 100))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDSearchBrowseCategorySuggestionParametersReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 104));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 96) = objc_msgSend_position(v8);
  *(a1 + 100) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDSearchBrowseCategorySuggestionParametersReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDSearchBrowseCategorySuggestionParametersReadAllFrom_initialTag;
  }

  Specified = GEOPDSearchBrowseCategorySuggestionParametersReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDSearchBrowseCategorySuggestionParametersCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 104));
  return Specified;
}

void *GEOPDSearchBrowseCategorySuggestionParametersReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 104));
  [v3 setLength:*(a1 + 100)];
  [v3 seekToOffset:*(a1 + 96)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (vaddv_s16((*&vshl_u16(vdup_n_s16(*(a1 + 124)), 0xFFF6FFF3FFF7FFF2) & 0xFF81FF81FF81FF81)) + ((*(a1 + 124) >> 12) & 1) + ((*(a1 + 124) >> 11) & 1) + (HIBYTE(*(a1 + 124)) & 1));
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
  v110 = v13 & ~v10 | v8;
  v14 = v10 | v13;
  if ((v10 | v13 | v7))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v16 = objc_msgSend_position(v3);
  if (v16 >= [v3 length])
  {
LABEL_217:
    v25 = 1;
    goto LABEL_218;
  }

  v111 = v14 | v8;
  v112 = (v15 == 0) | v14;
  v113 = v14;
  while (2)
  {
    if ([v3 hasError])
    {
      goto LABEL_217;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      LOBYTE(v114) = 0;
      v20 = objc_msgSend_position(v3) + 1;
      if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
      {
        v22 = [v3 data];
        [v22 getBytes:&v114 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v19 |= (v114 & 0x7F) << v17;
      if ((v114 & 0x80) == 0)
      {
        break;
      }

      v17 += 7;
      v23 = v18++ >= 9;
      if (v23)
      {
        v19 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v19 = 0;
    }

LABEL_33:
    v24 = [v3 hasError];
    v25 = 1;
    v14 = v113;
    if (v24)
    {
      goto LABEL_218;
    }

    v26 = v19 & 7;
    if (v26 == 4)
    {
      goto LABEL_218;
    }

    v27 = v19 >> 3;
    v28 = v113;
    if ((v112 & 1) == 0)
    {
      v29 = v15;
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

    switch(v27)
    {
      case 1:
        if (!v28)
        {
          goto LABEL_166;
        }

        if ((*(a1 + 124) & 0x4000) == 0)
        {
          v114 = 0;
          v115 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_246;
          }

          v33 = objc_alloc_init(GEOPDViewportInfo);
          if (GEOPDViewportInfoReadAllFrom(v33, v3, v9 & 1))
          {
            PBReaderRecallMark();
            v34 = 88;
            goto LABEL_139;
          }

          goto LABEL_245;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_246;
        }

        v94 = 2 * *(a1 + 124);
        goto LABEL_199;
      case 2:
        if ((v7 & 1) == 0)
        {
          goto LABEL_166;
        }

        *(a1 + 124) |= 1u;
        v114 = 0;
        v67 = objc_msgSend_position(v3) + 8;
        if (v67 >= objc_msgSend_position(v3) && (v68 = objc_msgSend_position(v3) + 8, v68 <= [v3 length]))
        {
          v95 = [v3 data];
          [v95 getBytes:&v114 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        *(a1 + 64) = v114;
        goto LABEL_202;
      case 3:
        if ((v7 & 1) == 0)
        {
          goto LABEL_166;
        }

        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 124) |= 2u;
        while (1)
        {
          LOBYTE(v114) = 0;
          v51 = objc_msgSend_position(v3) + 1;
          if (v51 >= objc_msgSend_position(v3) && (v52 = objc_msgSend_position(v3) + 1, v52 <= [v3 length]))
          {
            v53 = [v3 data];
            [v53 getBytes:&v114 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v50 |= (v114 & 0x7F) << v48;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v23 = v49++ >= 9;
          if (v23)
          {
            v41 = 0;
            goto LABEL_179;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v50;
        }

LABEL_179:
        v92 = 108;
        goto LABEL_180;
      case 4:
        if ((v7 & 1) == 0)
        {
          goto LABEL_166;
        }

        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 124) |= 0x10u;
        while (1)
        {
          LOBYTE(v114) = 0;
          v57 = objc_msgSend_position(v3) + 1;
          if (v57 >= objc_msgSend_position(v3) && (v58 = objc_msgSend_position(v3) + 1, v58 <= [v3 length]))
          {
            v59 = [v3 data];
            [v59 getBytes:&v114 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v56 |= (v114 & 0x7F) << v54;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v23 = v55++ >= 9;
          if (v23)
          {
            v60 = 0;
            goto LABEL_182;
          }
        }

        v60 = (v56 != 0) & ~[v3 hasError];
LABEL_182:
        v93 = 120;
        goto LABEL_189;
      case 5:
        if ((v7 & 1) == 0)
        {
          goto LABEL_166;
        }

        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 124) |= 8u;
        while (1)
        {
          LOBYTE(v114) = 0;
          v38 = objc_msgSend_position(v3) + 1;
          if (v38 >= objc_msgSend_position(v3) && (v39 = objc_msgSend_position(v3) + 1, v39 <= [v3 length]))
          {
            v40 = [v3 data];
            [v40 getBytes:&v114 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v37 |= (v114 & 0x7F) << v35;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v23 = v36++ >= 9;
          if (v23)
          {
            v41 = 0;
            goto LABEL_171;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v37;
        }

LABEL_171:
        v92 = 116;
        goto LABEL_180;
      case 6:
        if (!v28 || (*(a1 + 124) & 0x200) != 0)
        {
          goto LABEL_166;
        }

        if (v26 == 2)
        {
          v114 = 0;
          v115 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_246;
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
              v116 = 0;
              v73 = objc_msgSend_position(v3) + 1;
              if (v73 >= objc_msgSend_position(v3) && (v74 = objc_msgSend_position(v3) + 1, v74 <= [v3 length]))
              {
                v75 = [v3 data];
                [v75 getBytes:&v116 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v72 |= (v116 & 0x7F) << v70;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              v23 = v71++ >= 9;
              if (v23)
              {
                goto LABEL_128;
              }
            }

            [v3 hasError];
LABEL_128:
            PBRepeatedInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v97 = 0;
          v98 = 0;
          v99 = 0;
          v109 = 24;
          while (1)
          {
            LOBYTE(v114) = 0;
            v100 = objc_msgSend_position(v3, v109) + 1;
            if (v100 >= objc_msgSend_position(v3) && (v101 = objc_msgSend_position(v3) + 1, v101 <= [v3 length]))
            {
              v102 = [v3 data];
              [v102 getBytes:&v114 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v99 |= (v114 & 0x7F) << v97;
            if ((v114 & 0x80) == 0)
            {
              break;
            }

            v97 += 7;
            v23 = v98++ >= 9;
            if (v23)
            {
              goto LABEL_216;
            }
          }

          [v3 hasError];
LABEL_216:
          PBRepeatedInt32Add();
        }

LABEL_190:
        v14 = v113;
        goto LABEL_202;
      case 7:
        if (!v28)
        {
          goto LABEL_166;
        }

        if ((*(a1 + 124) & 0x2000) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_246;
          }

          v94 = 4 * *(a1 + 124);
LABEL_199:
          v6 += v94 >> 15;
LABEL_202:
          if (!(v111 & 1 | (v6 != 0)))
          {
            goto LABEL_217;
          }

          v96 = objc_msgSend_position(v3);
          if (v96 >= [v3 length])
          {
            goto LABEL_217;
          }

          continue;
        }

        v114 = 0;
        v115 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_246;
        }

        v33 = objc_alloc_init(GEOPDVenueIdentifier);
        if (GEOPDVenueIdentifierReadAllFrom(v33, v3, v9 & 1))
        {
          PBReaderRecallMark();
          v34 = 80;
LABEL_139:
          v77 = *(a1 + v34);
          *(a1 + v34) = v33;

          --v6;
          goto LABEL_202;
        }

LABEL_245:

LABEL_246:
        v25 = 0;
LABEL_218:
        v108 = &OBJC_IVAR___GEOPDPopularNearbySearchResult__readerMarkPos;
        if (v110)
        {
LABEL_219:
          *(a1 + v108[124]) |= 0x100u;
        }

        if (v14 & 1 | ((v25 & 1) == 0))
        {
          *(a1 + v108[124]) |= 0x4000u;
          *(a1 + v108[124]) |= 0x200u;
          *(a1 + v108[124]) |= 0x2000u;
          *(a1 + v108[124]) |= 0x400u;
          *(a1 + v108[124]) |= 0x1000u;
          *(a1 + v108[124]) |= 0x800u;
          goto LABEL_239;
        }

        if (v15)
        {
          while (1)
          {
LABEL_223:
            v104 = *v15++;
            v103 = v104;
            if (v104 > 11)
            {
              switch(v103)
              {
                case 12:
                  v105 = 1024;
                  break;
                case 13:
                  v105 = 4096;
                  break;
                case 14:
                  v105 = 2048;
                  break;
                default:
                  continue;
              }

              goto LABEL_237;
            }

            if (v103 > 5)
            {
              break;
            }

            if (v103 == 1)
            {
              v105 = 0x4000;
LABEL_237:
              *(a1 + v108[124]) |= v105;
              continue;
            }

            if (!v103)
            {
              goto LABEL_239;
            }
          }

          if (v103 == 6)
          {
            v105 = 512;
          }

          else
          {
            if (v103 != 7)
            {
              goto LABEL_223;
            }

            v105 = 0x2000;
          }

          goto LABEL_237;
        }

LABEL_239:
        if (v25)
        {
          v3 = ([v3 hasError] ^ 1);
          if ((v14 & 1) == 0)
          {
            return v3;
          }

LABEL_243:
          v106 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        else
        {
          v3 = 0;
          if (v14)
          {
            goto LABEL_243;
          }
        }

        return v3;
      case 8:
        if ((v7 & 1) == 0)
        {
          goto LABEL_166;
        }

        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 124) |= 0x40u;
        while (1)
        {
          LOBYTE(v114) = 0;
          v64 = objc_msgSend_position(v3) + 1;
          if (v64 >= objc_msgSend_position(v3) && (v65 = objc_msgSend_position(v3) + 1, v65 <= [v3 length]))
          {
            v66 = [v3 data];
            [v66 getBytes:&v114 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v63 |= (v114 & 0x7F) << v61;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v23 = v62++ >= 9;
          if (v23)
          {
            v60 = 0;
            goto LABEL_184;
          }
        }

        v60 = (v63 != 0) & ~[v3 hasError];
LABEL_184:
        v93 = 122;
        goto LABEL_189;
      case 9:
        if ((v7 & 1) == 0)
        {
          goto LABEL_166;
        }

        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 124) |= 0x20u;
        while (1)
        {
          LOBYTE(v114) = 0;
          v87 = objc_msgSend_position(v3) + 1;
          if (v87 >= objc_msgSend_position(v3) && (v88 = objc_msgSend_position(v3) + 1, v88 <= [v3 length]))
          {
            v89 = [v3 data];
            [v89 getBytes:&v114 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v86 |= (v114 & 0x7F) << v84;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v23 = v85++ >= 9;
          if (v23)
          {
            v60 = 0;
            goto LABEL_188;
          }
        }

        v60 = (v86 != 0) & ~[v3 hasError];
LABEL_188:
        v93 = 121;
        goto LABEL_189;
      case 10:
        if ((v7 & 1) == 0)
        {
          goto LABEL_166;
        }

        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 124) |= 4u;
        while (1)
        {
          LOBYTE(v114) = 0;
          v45 = objc_msgSend_position(v3) + 1;
          if (v45 >= objc_msgSend_position(v3) && (v46 = objc_msgSend_position(v3) + 1, v46 <= [v3 length]))
          {
            v47 = [v3 data];
            [v47 getBytes:&v114 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v44 |= (v114 & 0x7F) << v42;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v23 = v43++ >= 9;
          if (v23)
          {
            v41 = 0;
            goto LABEL_175;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v44;
        }

LABEL_175:
        v92 = 112;
LABEL_180:
        *(a1 + v92) = v41;
        goto LABEL_190;
      case 11:
        if ((v7 & 1) == 0)
        {
          goto LABEL_166;
        }

        v78 = 0;
        v79 = 0;
        v80 = 0;
        *(a1 + 124) |= 0x80u;
        while (1)
        {
          LOBYTE(v114) = 0;
          v81 = objc_msgSend_position(v3) + 1;
          if (v81 >= objc_msgSend_position(v3) && (v82 = objc_msgSend_position(v3) + 1, v82 <= [v3 length]))
          {
            v83 = [v3 data];
            [v83 getBytes:&v114 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v80 |= (v114 & 0x7F) << v78;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v23 = v79++ >= 9;
          if (v23)
          {
            v60 = 0;
            goto LABEL_186;
          }
        }

        v60 = (v80 != 0) & ~[v3 hasError];
LABEL_186:
        v93 = 123;
LABEL_189:
        *(a1 + v93) = v60;
        goto LABEL_190;
      case 12:
        if (!v28)
        {
          goto LABEL_166;
        }

        if ((*(a1 + 124) & 0x400) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_246;
          }

          v94 = 32 * *(a1 + 124);
          goto LABEL_199;
        }

        v114 = 0;
        v115 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_246;
        }

        v33 = objc_alloc_init(GEOPDSSearchEvChargingParameters);
        if (!GEOPDSSearchEvChargingParametersReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_245;
        }

        PBReaderRecallMark();
        v34 = 48;
        goto LABEL_139;
      case 13:
        if (!v28)
        {
          goto LABEL_166;
        }

        if ((*(a1 + 124) & 0x1000) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_246;
          }

          v94 = 8 * *(a1 + 124);
          goto LABEL_199;
        }

        v114 = 0;
        v115 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_246;
        }

        v33 = objc_alloc_init(GEOPDSearchOriginationInfo);
        if (!GEOPDSearchOriginationInfoReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_245;
        }

        PBReaderRecallMark();
        v34 = 72;
        goto LABEL_139;
      case 14:
        if (!v28 || (*(a1 + 124) & 0x800) != 0)
        {
          goto LABEL_166;
        }

        v76 = PBReaderReadString();
        if (v76)
        {
          [(GEOPDSearchBrowseCategorySuggestionParameters *)a1 _addNoFlagsInputCategory:v76];
        }

        goto LABEL_202;
      default:
        if ((v110 & 1) == 0 || (*(a1 + 124) & 0x100) != 0)
        {
LABEL_166:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_246;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v90 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v91 = *(a1 + 16);
            *(a1 + 16) = v90;
          }

          if (!PBUnknownFieldAdd())
          {
            v25 = 0;
            v108 = &OBJC_IVAR___GEOPDPopularNearbySearchResult__readerMarkPos;
            goto LABEL_219;
          }
        }

        goto LABEL_202;
    }
  }
}

uint64_t GEOPDViewportInfoReadAllFrom(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  objc_sync_enter(v5);
  if (v5)
  {
    v6 = objc_msgSend_position(v5);
    if (v6 < [v5 length])
    {
      while (1)
      {
        if ([v5 hasError])
        {
          goto LABEL_57;
        }

        v7 = 0;
        v8 = 0;
        v9 = 0;
        while (1)
        {
          LOBYTE(v38[0]) = 0;
          v10 = objc_msgSend_position(v5, v38[0]);
          if (v10 + 1 >= objc_msgSend_position(v5) && (v11 = objc_msgSend_position(v5), v11 + 1 <= [v5 length]))
          {
            v12 = [v5 data];
            [v12 getBytes:v38 range:{objc_msgSend_position(v5), 1}];

            [v5 setPosition:objc_msgSend_position(v5) + 1];
          }

          else
          {
            [v5 _setError];
          }

          v9 |= (v38[0] & 0x7F) << v7;
          if ((v38[0] & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          v13 = v8++ >= 9;
          if (v13)
          {
            v9 = 0;
            goto LABEL_15;
          }
        }

        if ([v5 hasError])
        {
          v9 = 0;
        }

LABEL_15:
        v14 = [v5 hasError];
        v15 = (v9 & 7) == 4 ? 1 : v14;
        if (v15)
        {
          goto LABEL_57;
        }

        v16 = v9 >> 3;
        if (v16 == 3)
        {
          break;
        }

        if (v16 == 2)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            LOBYTE(v38[0]) = 0;
            v22 = objc_msgSend_position(v5, v38[0]);
            if (v22 + 1 >= objc_msgSend_position(v5) && (v23 = objc_msgSend_position(v5), v23 + 1 <= [v5 length]))
            {
              v24 = [v5 data];
              [v24 getBytes:v38 range:{objc_msgSend_position(v5), 1}];

              [v5 setPosition:objc_msgSend_position(v5) + 1];
            }

            else
            {
              [v5 _setError];
            }

            v21 |= (v38[0] & 0x7F) << v19;
            if ((v38[0] & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v13 = v20++ >= 9;
            if (v13)
            {
              v25 = 0;
              goto LABEL_50;
            }
          }

          if ([v5 hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v21;
          }

LABEL_50:
          v34 = 28;
LABEL_55:
          *(a1 + v34) = v25;
          goto LABEL_56;
        }

        if (v16 == 1)
        {
          v38[0] = 0;
          v38[1] = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_59;
          }

          v17 = objc_alloc_init(GEOMapRegion);
          if (!GEOMapRegionReadAllFrom(v17, v5, a3))
          {

            goto LABEL_59;
          }

          PBReaderRecallMark();
          v18 = *(a1 + 16);
          *(a1 + 16) = v17;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v32 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v33 = *(a1 + 8);
            *(a1 + 8) = v32;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_59;
          }
        }

LABEL_56:
        v35 = objc_msgSend_position(v5);
        if (v35 >= [v5 length])
        {
          goto LABEL_57;
        }
      }

      v26 = 0;
      v27 = 0;
      v28 = 0;
      *(a1 + 32) |= 1u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v29 = objc_msgSend_position(v5, v38[0]);
        if (v29 + 1 >= objc_msgSend_position(v5) && (v30 = objc_msgSend_position(v5), v30 + 1 <= [v5 length]))
        {
          v31 = [v5 data];
          [v31 getBytes:v38 range:{objc_msgSend_position(v5), 1}];

          [v5 setPosition:objc_msgSend_position(v5) + 1];
        }

        else
        {
          [v5 _setError];
        }

        v28 |= (v38[0] & 0x7F) << v26;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v26 += 7;
        v13 = v27++ >= 9;
        if (v13)
        {
          v25 = 0;
          goto LABEL_54;
        }
      }

      if ([v5 hasError])
      {
        v25 = 0;
      }

      else
      {
        v25 = v28;
      }

LABEL_54:
      v34 = 24;
      goto LABEL_55;
    }

LABEL_57:
    v36 = [v5 hasError] ^ 1;
  }

  else
  {
LABEL_59:
    v36 = 0;
  }

  objc_sync_exit(v5);

  return v36;
}

void *GEOPDSearchOriginationInfoReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 60))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDSearchOriginationInfoReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDSearchOriginationInfoReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDSearchOriginationInfoReadAllFrom_initialTag;
  }

  Specified = GEOPDSearchOriginationInfoReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 64));
  return Specified;
}

void *GEOPDSearchOriginationInfoReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = ((*(a1 + 76) >> 4) & 1) + ((*(a1 + 76) >> 3) & 1) + ((*(a1 + 76) >> 2) & 1);
  while (1)
  {
    v11 = a3[v7];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      v8 = 1;
      goto LABEL_15;
    }

    if (v11 == -3)
    {
      v6 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v10;
LABEL_15:
    ++v7;
  }

  if (v11 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v11 == -1)
  {
    v8 = 1;
LABEL_11:
    v9 = 1;
    goto LABEL_15;
  }

  if (v11)
  {
    goto LABEL_14;
  }

  v12 = v10 != 0;
  v71 = v12 & ~v9 | v8;
  v13 = v9 | v12;
  if ((v9 | v12 | v6))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  v15 = objc_msgSend_position(v3);
  if (v15 < [v3 length])
  {
    v72 = v13 | v8;
    v73 = (v14 == 0) | v13;
    v74 = v13;
    while (1)
    {
      if ([v3 hasError])
      {
        goto LABEL_124;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        LOBYTE(v75) = 0;
        v19 = objc_msgSend_position(v3) + 1;
        if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
        {
          v21 = [v3 data];
          [v21 getBytes:&v75 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v18 |= (v75 & 0x7F) << v16;
        if ((v75 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v22 = v17++ >= 9;
        if (v22)
        {
          v18 = 0;
          goto LABEL_33;
        }
      }

      if ([v3 hasError])
      {
        v18 = 0;
      }

LABEL_33:
      v23 = [v3 hasError];
      v24 = 1;
      v13 = v74;
      if (v23)
      {
        goto LABEL_125;
      }

      v25 = v18 & 7;
      if (v25 == 4)
      {
        goto LABEL_125;
      }

      v26 = v18 >> 3;
      v27 = v74;
      if ((v73 & 1) == 0)
      {
        v28 = v14;
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

      if (v26 > 2)
      {
        break;
      }

      if (v26 == 1)
      {
        if (v6)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 76) |= 2u;
          while (1)
          {
            LOBYTE(v75) = 0;
            v46 = objc_msgSend_position(v3) + 1;
            if (v46 >= objc_msgSend_position(v3) && (v47 = objc_msgSend_position(v3) + 1, v47 <= [v3 length]))
            {
              v48 = [v3 data];
              [v48 getBytes:&v75 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v45 |= (v75 & 0x7F) << v43;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v22 = v44++ >= 9;
            if (v22)
            {
              v40 = 0;
              goto LABEL_104;
            }
          }

          if ([v3 hasError])
          {
            v40 = 0;
          }

          else
          {
            v40 = v45;
          }

LABEL_104:
          v56 = 72;
LABEL_105:
          *(a1 + v56) = v40;
LABEL_106:
          v13 = v74;
          goto LABEL_107;
        }

        goto LABEL_95;
      }

      if (v26 != 2)
      {
        goto LABEL_62;
      }

      if (!v27)
      {
        goto LABEL_95;
      }

      if ((*(a1 + 76) & 0x10) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_144;
        }

        v7 += *(a1 + 76) << 27 >> 31;
      }

      else
      {
        v75 = 0;
        v76 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_144;
        }

        v32 = objc_alloc_init(GEOPDSearchOriginationRoutePlanningParameters);
        if (!GEOPDSearchOriginationRoutePlanningParametersReadAllFrom(v32, v3))
        {

LABEL_144:
          v24 = 0;
          goto LABEL_125;
        }

        PBReaderRecallMark();
        v33 = *(a1 + 48);
        *(a1 + 48) = v32;

        --v7;
      }

LABEL_107:
      if (v72 & 1 | (v7 != 0))
      {
        v57 = objc_msgSend_position(v3);
        if (v57 < [v3 length])
        {
          continue;
        }
      }

      goto LABEL_124;
    }

    if (v26 == 3)
    {
      if (v27 && (*(a1 + 76) & 8) == 0)
      {
        if (v25 == 2)
        {
          v75 = 0;
          v76 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_144;
          }

          while (1)
          {
            v49 = objc_msgSend_position(v3);
            if (v49 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
            {
              break;
            }

            v50 = 0;
            v51 = 0;
            v52 = 0;
            while (1)
            {
              v77 = 0;
              v53 = objc_msgSend_position(v3) + 1;
              if (v53 >= objc_msgSend_position(v3) && (v54 = objc_msgSend_position(v3) + 1, v54 <= [v3 length]))
              {
                v55 = [v3 data];
                [v55 getBytes:&v77 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v52 |= (v77 & 0x7F) << v50;
              if ((v77 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v22 = v51++ >= 9;
              if (v22)
              {
                goto LABEL_94;
              }
            }

            [v3 hasError];
LABEL_94:
            PBRepeatedInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v70 = 24;
          while (1)
          {
            LOBYTE(v75) = 0;
            v61 = objc_msgSend_position(v3, v70) + 1;
            if (v61 >= objc_msgSend_position(v3) && (v62 = objc_msgSend_position(v3) + 1, v62 <= [v3 length]))
            {
              v63 = [v3 data];
              [v63 getBytes:&v75 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v60 |= (v75 & 0x7F) << v58;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v22 = v59++ >= 9;
            if (v22)
            {
              goto LABEL_123;
            }
          }

          [v3 hasError];
LABEL_123:
          PBRepeatedInt32Add();
        }

        goto LABEL_106;
      }
    }

    else if (v26 == 4)
    {
      if (v6)
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 76) |= 1u;
        while (1)
        {
          LOBYTE(v75) = 0;
          v37 = objc_msgSend_position(v3) + 1;
          if (v37 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3) + 1, v38 <= [v3 length]))
          {
            v39 = [v3 data];
            [v39 getBytes:&v75 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v36 |= (v75 & 0x7F) << v34;
          if ((v75 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v22 = v35++ >= 9;
          if (v22)
          {
            v40 = 0;
            goto LABEL_100;
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

LABEL_100:
        v56 = 68;
        goto LABEL_105;
      }
    }

    else
    {
LABEL_62:
      if ((v71 & 1) != 0 && (*(a1 + 76) & 4) == 0)
      {
        if (!*(a1 + 16))
        {
          v41 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v42 = *(a1 + 16);
          *(a1 + 16) = v41;
        }

        if (!PBUnknownFieldAdd())
        {
          v24 = 0;
          v69 = &OBJC_IVAR___GEOGuidanceEventFeedback__stepID;
          goto LABEL_126;
        }

        goto LABEL_107;
      }
    }

LABEL_95:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_107;
  }

LABEL_124:
  v24 = 1;
LABEL_125:
  v69 = &OBJC_IVAR___GEOGuidanceEventFeedback__stepID;
  if (v71)
  {
LABEL_126:
    *(a1 + v69[840]) |= 4u;
  }

  if (!(v13 & 1 | ((v24 & 1) == 0)))
  {
    if (!v14)
    {
      goto LABEL_137;
    }

    while (1)
    {
      while (1)
      {
        v65 = *v14++;
        v64 = v65;
        if (v65 != 2)
        {
          break;
        }

        v66 = 16;
LABEL_136:
        *(a1 + v69[840]) |= v66;
      }

      if (v64 == 3)
      {
        v66 = 8;
        goto LABEL_136;
      }

      if (!v64)
      {
        goto LABEL_137;
      }
    }
  }

  *(a1 + v69[840]) |= 0x10u;
  *(a1 + v69[840]) |= 8u;
LABEL_137:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

    goto LABEL_141;
  }

  v3 = 0;
  if (v13)
  {
LABEL_141:
    v67 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void _GEOPDSearchBrowseCategorySuggestionParametersCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  [*(a1 + 88) readAll:1];
  [(GEOPDVenueIdentifier *)*(a1 + 80) readAll:?];
  [(GEOPDSSearchEvChargingParameters *)*(a1 + 48) readAll:?];
  v2 = *(a1 + 72);

  [(GEOPDSearchOriginationInfo *)v2 readAll:?];
}

uint64_t GEOPDTooltipFilterReadAllFrom(uint64_t a1, void *a2)
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

uint64_t GeoCodecsFeatureStyleAttributesCompare(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (v3 && v4)
  {
    v8 = [v3 featureStyleAttributesPtr];
    v10 = *v8;
    v9 = v8[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = [v5 featureStyleAttributesPtr];
    v12 = *v11;
    v13 = v11[1];
    if (!v13)
    {
      v7 = geo::codec::featureStyleAttributesCompare(v10, v12);
      if (!v9)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = geo::codec::featureStyleAttributesCompare(v10, v12);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    if (v9)
    {
LABEL_13:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

LABEL_14:

  return v7;
}

void sub_1867CE410(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

uint64_t geo::codec::featureStyleAttributesCompare(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 1;
  }

  v3 = *(a1 + 33);
  v4 = *(a2 + 33);
  v5 = v3 >= v4;
  if (v3 != v4)
  {
    goto LABEL_14;
  }

  if (*(a1 + 33))
  {
    v6 = a1;
    v7 = a2;
    v8 = memcmp(*a1, *a2, 8 * v3);
    a2 = v7;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      return v9;
    }
  }

  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  v5 = v9 >= v10;
  if (v9 != v10)
  {
LABEL_14:
    if (v5)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (!*(a1 + 32))
  {
    return v9;
  }

  v11 = *(a1 + 24);
  v12 = *(a2 + 24);

  return memcmp(v11, v12, 12 * v9);
}

uint64_t GEOPDPlaceResponseIsValid(void *a1)
{
  objc_msgSend_position(a1);
  [a1 length];
LABEL_2:
  while (2)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 < [a1 length] && (objc_msgSend(a1, "hasError") & 1) == 0)
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v6 = objc_msgSend_position(a1) + 1;
        if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
        {
          v8 = [a1 data];
          [v8 getBytes:&v45 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v5 |= (v45 & 0x7F) << v3;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v3 += 7;
        v9 = v4++ >= 9;
        if (v9)
        {
          v10 = 0;
          goto LABEL_16;
        }
      }

      v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
      if (([a1 hasError] & 1) == 0)
      {
        v11 = v10 & 7;
        if (v11 != 4)
        {
          v12 = v10 >> 3;
          if ((v10 >> 3) <= 7)
          {
            if (v12 > 3)
            {
              if (v12 <= 5)
              {
                if (v12 == 4)
                {
                  if (v11 == 2)
                  {
                    v45 = 0;
                    v46 = 0;
                    if (PBReaderPlaceMark())
                    {
                      if (GEOPDPlaceIsValid(a1, v15))
                      {
                        goto LABEL_137;
                      }
                    }
                  }
                }

                else if (v11 == 2)
                {
                  goto LABEL_138;
                }

LABEL_144:
                PBReaderRecallMark();
                return 0;
              }

              if (v12 == 6)
              {
                if (v11 != 2)
                {
                  goto LABEL_144;
                }
              }

              else if (v12 == 7 && v11 != 2)
              {
                goto LABEL_144;
              }

LABEL_138:
              if (PBReaderSkipValueWithTag())
              {
                continue;
              }

              goto LABEL_144;
            }

            switch(v12)
            {
              case 1:
                if ((v10 & 7) != 0)
                {
                  goto LABEL_144;
                }

                v32 = 0;
                while (1)
                {
                  LOBYTE(v45) = 0;
                  v33 = objc_msgSend_position(a1) + 1;
                  if (v33 >= objc_msgSend_position(a1) && (v34 = objc_msgSend_position(a1) + 1, v34 <= [a1 length]))
                  {
                    v35 = [a1 data];
                    [v35 getBytes:&v45 range:{objc_msgSend_position(a1), 1}];

                    [a1 setPosition:objc_msgSend_position(a1) + 1];
                  }

                  else
                  {
                    [a1 _setError];
                  }

                  if ((v45 & 0x80000000) == 0)
                  {
                    break;
                  }

                  v31 = v32++ > 8;
                  if (v31)
                  {
                    goto LABEL_2;
                  }
                }

                break;
              case 2:
                if ((v10 & 7) != 0)
                {
                  goto LABEL_144;
                }

                v36 = 0;
                while (1)
                {
                  LOBYTE(v45) = 0;
                  v37 = objc_msgSend_position(a1) + 1;
                  if (v37 >= objc_msgSend_position(a1) && (v38 = objc_msgSend_position(a1) + 1, v38 <= [a1 length]))
                  {
                    v39 = [a1 data];
                    [v39 getBytes:&v45 range:{objc_msgSend_position(a1), 1}];

                    [a1 setPosition:objc_msgSend_position(a1) + 1];
                  }

                  else
                  {
                    [a1 _setError];
                  }

                  if ((v45 & 0x80000000) == 0)
                  {
                    break;
                  }

                  v31 = v36++ > 8;
                  if (v31)
                  {
                    goto LABEL_2;
                  }
                }

                break;
              case 3:
                if (v11 == 2)
                {
                  v45 = 0;
                  v46 = 0;
                  if (PBReaderPlaceMark())
                  {
                    if (GEOPDPlaceGlobalResultIsValid(a1))
                    {
                      goto LABEL_137;
                    }
                  }
                }

                goto LABEL_144;
              default:
                goto LABEL_138;
            }

LABEL_133:
            [a1 hasError];
            continue;
          }

          if (v12 <= 10)
          {
            if (v12 != 8)
            {
              if (v12 == 9)
              {
                if (v11 == 2)
                {
                  v45 = 0;
                  v46 = 0;
                  if (PBReaderPlaceMark())
                  {
                    if (GEOPDDatasetABStatusIsValid(a1))
                    {
                      goto LABEL_137;
                    }
                  }
                }
              }

              else
              {
                if (v12 != 10)
                {
                  goto LABEL_138;
                }

                if (v11 == 2)
                {
                  v45 = 0;
                  v46 = 0;
                  if (PBReaderPlaceMark())
                  {
                    if (GEOPDMapsResultIsValid(a1, v13))
                    {
                      goto LABEL_137;
                    }
                  }
                }
              }

              goto LABEL_144;
            }

            if (v11 != 2)
            {
              goto LABEL_144;
            }

            goto LABEL_138;
          }

          if (v12 > 999)
          {
            if (v12 != 1000)
            {
              if (v12 != 1051)
              {
                goto LABEL_138;
              }

              if (v11 == 2)
              {
                v45 = 0;
                v46 = 0;
                if (PBReaderPlaceMark())
                {
                  if (GEOClientMetricsIsValid(a1, v14))
                  {
                    goto LABEL_137;
                  }
                }
              }

              goto LABEL_144;
            }

            if ((v10 & 7) != 0)
            {
              goto LABEL_144;
            }

            v27 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v28 = objc_msgSend_position(a1) + 1;
              if (v28 >= objc_msgSend_position(a1) && (v29 = objc_msgSend_position(a1) + 1, v29 <= [a1 length]))
              {
                v30 = [a1 data];
                [v30 getBytes:&v45 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v45 & 0x80000000) == 0)
              {
                goto LABEL_133;
              }

              v31 = v27++ > 8;
              if (v31)
              {
                goto LABEL_2;
              }
            }
          }

          if (v12 != 11)
          {
            if (v12 != 12)
            {
              goto LABEL_138;
            }

            if (v11 == 2)
            {
              v45 = 0;
              v46 = 0;
              if (PBReaderPlaceMark())
              {
                if (GEOPDPlacesRequestResponseAnalyticsDataIsValid(a1))
                {
                  goto LABEL_137;
                }
              }
            }

            goto LABEL_144;
          }

          if (v11 != 2 || !PBReaderPlaceMark())
          {
            goto LABEL_144;
          }

          v45 = objc_msgSend_position(a1, 0, 0);
          v46 = [a1 length];
          while (1)
          {
            while (1)
            {
              v16 = objc_msgSend_position(a1);
              if (v16 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
              {
                goto LABEL_140;
              }

              v17 = 0;
              v18 = 0;
              v19 = 0;
              while (1)
              {
                LOBYTE(v43) = 0;
                v20 = objc_msgSend_position(a1) + 1;
                if (v20 >= objc_msgSend_position(a1) && (v21 = objc_msgSend_position(a1) + 1, v21 <= [a1 length]))
                {
                  v22 = [a1 data];
                  [v22 getBytes:&v43 range:{objc_msgSend_position(a1), 1}];

                  [a1 setPosition:objc_msgSend_position(a1) + 1];
                }

                else
                {
                  [a1 _setError];
                }

                v19 |= (v43 & 0x7F) << v17;
                if ((v43 & 0x80) == 0)
                {
                  break;
                }

                v17 += 7;
                v9 = v18++ >= 9;
                if (v9)
                {
                  v23 = 0;
                  goto LABEL_77;
                }
              }

              v23 = [a1 hasError] ? 0 : v19;
LABEL_77:
              if (([a1 hasError] & 1) != 0 || (v24 = v23 & 7, v24 == 4))
              {
LABEL_140:
                v40 = [a1 hasError];
                PBReaderRecallMark();
                if (v40)
                {
                  goto LABEL_144;
                }

LABEL_137:
                PBReaderRecallMark();
                goto LABEL_2;
              }

              v25 = v23 >> 3;
              if ((v23 >> 3) <= 2)
              {
                break;
              }

              if (v25 != 3)
              {
                if (v25 == 4 && v24 != 2)
                {
                  goto LABEL_143;
                }

                goto LABEL_89;
              }

              if (v24 != 2 || (v43 = 0, v44 = 0, !PBReaderPlaceMark()) || !GEOStyleAttributesIsValid(a1))
              {
LABEL_143:
                PBReaderRecallMark();
                goto LABEL_144;
              }

LABEL_98:
              PBReaderRecallMark();
            }

            if (v25 == 1)
            {
              if (v24 != 2)
              {
                goto LABEL_143;
              }

              v43 = 0;
              v44 = 0;
              if (!PBReaderPlaceMark() || !GEOPDMapsIdentifierIsValid(a1, v26))
              {
                goto LABEL_143;
              }

              goto LABEL_98;
            }

            if (v25 == 2)
            {
              if (v24 != 2)
              {
                goto LABEL_143;
              }

              v43 = 0;
              v44 = 0;
              if (!PBReaderPlaceMark() || !GEOLatLngIsValid(a1))
              {
                goto LABEL_143;
              }

              goto LABEL_98;
            }

LABEL_89:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_143;
            }
          }
        }
      }
    }

    break;
  }

  v41 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v41;
}

uint64_t GEOPDPlaceGlobalResultIsValid(void *a1)
{
  objc_msgSend_position(a1);
  [a1 length];
  while (2)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      goto LABEL_2452;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v841) = 0;
      v6 = objc_msgSend_position(a1) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v841 & 0x7F) << v3;
      if ((v841 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      v9 = v4++ >= 9;
      if (v9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if (([a1 hasError] & 1) != 0 || (v11 = v10 & 7, v11 == 4))
    {
LABEL_2452:
      v829 = [a1 hasError] ^ 1;
      PBReaderRecallMark();
      return v829;
    }

    switch((v10 >> 3))
    {
      case 1u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v833 = 0;
        v834 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v837 = objc_msgSend_position(a1);
        v838 = [a1 length];
LABEL_22:
        while (2)
        {
          v12 = objc_msgSend_position(a1);
          if (v12 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2425;
          }

          v13 = 0;
          v14 = 0;
          v15 = 0;
          while (1)
          {
            LOBYTE(v841) = 0;
            v16 = objc_msgSend_position(a1) + 1;
            if (v16 >= objc_msgSend_position(a1) && (v17 = objc_msgSend_position(a1) + 1, v17 <= [a1 length]))
            {
              v18 = [a1 data];
              [v18 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v15 |= (v841 & 0x7F) << v13;
            if ((v841 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v9 = v14++ >= 9;
            if (v9)
            {
              v19 = 0;
              goto LABEL_36;
            }
          }

          if ([a1 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

LABEL_36:
          if ([a1 hasError])
          {
            goto LABEL_2425;
          }

          v20 = v19 & 7;
          if (v20 == 4)
          {
            goto LABEL_2425;
          }

          switch((v19 >> 3))
          {
            case 1u:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOMapRegionIsValid(a1))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 2u:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOPDMultiLocalizedStringIsValid(a1))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 3u:
              if ((v19 & 7) != 0)
              {
                goto LABEL_2460;
              }

              v47 = 0;
              while (1)
              {
                LOBYTE(v841) = 0;
                v48 = objc_msgSend_position(a1) + 1;
                if (v48 >= objc_msgSend_position(a1) && (v49 = objc_msgSend_position(a1) + 1, v49 <= [a1 length]))
                {
                  v50 = [a1 data];
                  [v50 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                  [a1 setPosition:objc_msgSend_position(a1) + 1];
                }

                else
                {
                  [a1 _setError];
                }

                if ((v841 & 0x80000000) == 0)
                {
                  goto LABEL_335;
                }

                v26 = v47++ > 8;
                if (v26)
                {
                  goto LABEL_22;
                }
              }

            case 4u:
            case 7u:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOPDWarsawMerchantIdentifierIsValid(a1))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 5u:
              if ((v19 & 7) != 0)
              {
                goto LABEL_2460;
              }

              v51 = 0;
              while (1)
              {
                LOBYTE(v841) = 0;
                v52 = objc_msgSend_position(a1) + 1;
                if (v52 >= objc_msgSend_position(a1) && (v53 = objc_msgSend_position(a1) + 1, v53 <= [a1 length]))
                {
                  v54 = [a1 data];
                  [v54 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                  [a1 setPosition:objc_msgSend_position(a1) + 1];
                }

                else
                {
                  [a1 _setError];
                }

                if ((v841 & 0x80000000) == 0)
                {
                  goto LABEL_335;
                }

                v26 = v51++ > 8;
                if (v26)
                {
                  goto LABEL_22;
                }
              }

            case 6u:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              goto LABEL_336;
            case 8u:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOPDSearchClientBehaviorIsValid(a1))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 9u:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOPDResultDetourInfoIsValid(a1))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 0xAu:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOPDDirectionIntentIsValid(a1, v81))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 0xBu:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOPDSearchRelatedCategoryIsValid(a1, v36))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 0xCu:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v835 = 0;
              v836 = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_2460;
              }

              v841 = objc_msgSend_position(a1);
              v842 = [a1 length];
LABEL_160:
              while (2)
              {
                while (2)
                {
                  v55 = objc_msgSend_position(a1);
                  if (v55 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
                  {
                    goto LABEL_311;
                  }

                  v56 = 0;
                  v57 = 0;
                  v58 = 0;
                  while (1)
                  {
                    LOBYTE(v839) = 0;
                    v59 = objc_msgSend_position(a1) + 1;
                    if (v59 >= objc_msgSend_position(a1) && (v60 = objc_msgSend_position(a1) + 1, v60 <= [a1 length]))
                    {
                      v61 = [a1 data];
                      [v61 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                      [a1 setPosition:objc_msgSend_position(a1) + 1];
                    }

                    else
                    {
                      [a1 _setError];
                    }

                    v58 |= (v839 & 0x7F) << v56;
                    if ((v839 & 0x80) == 0)
                    {
                      break;
                    }

                    v56 += 7;
                    v9 = v57++ >= 9;
                    if (v9)
                    {
                      v62 = 0;
                      goto LABEL_174;
                    }
                  }

                  v62 = [a1 hasError] ? 0 : v58;
LABEL_174:
                  if ([a1 hasError])
                  {
                    goto LABEL_311;
                  }

                  v63 = v62 & 7;
                  if (v63 == 4)
                  {
                    goto LABEL_311;
                  }

                  v64 = v62 >> 3;
                  if ((v62 >> 3) != 3)
                  {
                    if (v64 == 2)
                    {
                      if (v63 != 2)
                      {
                        goto LABEL_2454;
                      }
                    }

                    else if (v64 == 1)
                    {
                      if ((v62 & 7) == 0)
                      {
                        v65 = 0;
                        while (1)
                        {
                          LOBYTE(v839) = 0;
                          v66 = objc_msgSend_position(a1) + 1;
                          if (v66 >= objc_msgSend_position(a1) && (v67 = objc_msgSend_position(a1) + 1, v67 <= [a1 length]))
                          {
                            v68 = [a1 data];
                            [v68 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                            [a1 setPosition:objc_msgSend_position(a1) + 1];
                          }

                          else
                          {
                            [a1 _setError];
                          }

                          if ((v839 & 0x80000000) == 0)
                          {
                            break;
                          }

                          v26 = v65++ > 8;
                          if (v26)
                          {
                            goto LABEL_160;
                          }
                        }

                        [a1 hasError];
                        continue;
                      }

                      goto LABEL_2454;
                    }

                    if ((PBReaderSkipValueWithTag() & 1) == 0)
                    {
                      goto LABEL_2454;
                    }

                    continue;
                  }

                  break;
                }

                if (v63 == 2)
                {
                  v839 = 0;
                  v840 = 0;
                  if (PBReaderPlaceMark())
                  {
                    if (GEOPDWarsawMerchantIdentifierIsValid(a1))
                    {
                      PBReaderRecallMark();
                      continue;
                    }
                  }
                }

                goto LABEL_2454;
              }

            case 0xDu:
              if ((v19 & 7) != 0)
              {
                goto LABEL_2460;
              }

              v39 = 0;
              while (1)
              {
                LOBYTE(v841) = 0;
                v40 = objc_msgSend_position(a1) + 1;
                if (v40 >= objc_msgSend_position(a1) && (v41 = objc_msgSend_position(a1) + 1, v41 <= [a1 length]))
                {
                  v42 = [a1 data];
                  [v42 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                  [a1 setPosition:objc_msgSend_position(a1) + 1];
                }

                else
                {
                  [a1 _setError];
                }

                if ((v841 & 0x80000000) == 0)
                {
                  goto LABEL_335;
                }

                v26 = v39++ > 8;
                if (v26)
                {
                  goto LABEL_22;
                }
              }

            case 0xEu:
              if ((v19 & 7) != 0)
              {
                goto LABEL_2460;
              }

              v22 = 0;
              while (1)
              {
                LOBYTE(v841) = 0;
                v23 = objc_msgSend_position(a1) + 1;
                if (v23 >= objc_msgSend_position(a1) && (v24 = objc_msgSend_position(a1) + 1, v24 <= [a1 length]))
                {
                  v25 = [a1 data];
                  [v25 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                  [a1 setPosition:objc_msgSend_position(a1) + 1];
                }

                else
                {
                  [a1 _setError];
                }

                if ((v841 & 0x80000000) == 0)
                {
                  goto LABEL_335;
                }

                v26 = v22++ > 8;
                if (v26)
                {
                  goto LABEL_22;
                }
              }

            case 0xFu:
              if ((v19 & 7) != 0)
              {
                goto LABEL_2460;
              }

              v73 = 0;
              while (1)
              {
                LOBYTE(v841) = 0;
                v74 = objc_msgSend_position(a1) + 1;
                if (v74 >= objc_msgSend_position(a1) && (v75 = objc_msgSend_position(a1) + 1, v75 <= [a1 length]))
                {
                  v76 = [a1 data];
                  [v76 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                  [a1 setPosition:objc_msgSend_position(a1) + 1];
                }

                else
                {
                  [a1 _setError];
                }

                if ((v841 & 0x80000000) == 0)
                {
                  goto LABEL_335;
                }

                v26 = v73++ > 8;
                if (v26)
                {
                  goto LABEL_22;
                }
              }

            case 0x10u:
              if ((v19 & 7) != 0)
              {
                goto LABEL_2460;
              }

              v77 = 0;
              while (1)
              {
                LOBYTE(v841) = 0;
                v78 = objc_msgSend_position(a1) + 1;
                if (v78 >= objc_msgSend_position(a1) && (v79 = objc_msgSend_position(a1) + 1, v79 <= [a1 length]))
                {
                  v80 = [a1 data];
                  [v80 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                  [a1 setPosition:objc_msgSend_position(a1) + 1];
                }

                else
                {
                  [a1 _setError];
                }

                if ((v841 & 0x80000000) == 0)
                {
                  goto LABEL_335;
                }

                v26 = v77++ > 8;
                if (v26)
                {
                  goto LABEL_22;
                }
              }

            case 0x11u:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOPDRetainedSearchMetadataIsValid(a1, v102))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 0x12u:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v835 = 0;
              v836 = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_2460;
              }

              v841 = objc_msgSend_position(a1);
              v842 = [a1 length];
LABEL_249:
              v82 = objc_msgSend_position(a1);
              if (v82 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
              {
                goto LABEL_311;
              }

              v83 = 0;
              v84 = 0;
              v85 = 0;
              while (1)
              {
                LOBYTE(v839) = 0;
                v86 = objc_msgSend_position(a1) + 1;
                if (v86 >= objc_msgSend_position(a1) && (v87 = objc_msgSend_position(a1) + 1, v87 <= [a1 length]))
                {
                  v88 = [a1 data];
                  [v88 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                  [a1 setPosition:objc_msgSend_position(a1) + 1];
                }

                else
                {
                  [a1 _setError];
                }

                v85 |= (v839 & 0x7F) << v83;
                if ((v839 & 0x80) == 0)
                {
                  break;
                }

                v83 += 7;
                v9 = v84++ >= 9;
                if (v9)
                {
                  v89 = 0;
                  goto LABEL_263;
                }
              }

              v89 = [a1 hasError] ? 0 : v85;
LABEL_263:
              if (([a1 hasError] & 1) != 0 || (v90 = v89 & 7, v90 == 4))
              {
LABEL_311:
                v101 = [a1 hasError];
                PBReaderRecallMark();
                if ((v101 & 1) == 0)
                {
LABEL_324:
                  PBReaderRecallMark();
                  continue;
                }

                goto LABEL_2460;
              }

              v91 = v89 >> 3;
              if ((v89 >> 3) <= 3)
              {
                if (v91 == 1)
                {
                  if (v90 != 2)
                  {
                    goto LABEL_2454;
                  }

                  goto LABEL_300;
                }

                if (v91 != 2)
                {
                  if (v91 == 3)
                  {
                    if ((v89 & 7) == 0)
                    {
                      v96 = 0;
                      while (1)
                      {
                        LOBYTE(v839) = 0;
                        v97 = objc_msgSend_position(a1) + 1;
                        if (v97 >= objc_msgSend_position(a1) && (v98 = objc_msgSend_position(a1) + 1, v98 <= [a1 length]))
                        {
                          v99 = [a1 data];
                          [v99 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                          [a1 setPosition:objc_msgSend_position(a1) + 1];
                        }

                        else
                        {
                          [a1 _setError];
                        }

                        if ((v839 & 0x80000000) == 0)
                        {
                          goto LABEL_310;
                        }

                        v26 = v96++ > 8;
                        if (v26)
                        {
                          goto LABEL_249;
                        }
                      }
                    }

LABEL_2454:
                    PBReaderRecallMark();
                    goto LABEL_2460;
                  }

LABEL_300:
                  if ((PBReaderSkipValueWithTag() & 1) == 0)
                  {
                    goto LABEL_2454;
                  }

                  goto LABEL_249;
                }

                if (v90 != 2)
                {
                  goto LABEL_2454;
                }

                v839 = 0;
                v840 = 0;
                if (!PBReaderPlaceMark() || !GEOPDSearchRelatedCategoryIsValid(a1, v100))
                {
                  goto LABEL_2454;
                }
              }

              else
              {
                if (v91 <= 5)
                {
                  if (v91 == 4)
                  {
                    if (v90 != 2)
                    {
                      goto LABEL_2454;
                    }
                  }

                  else if (v91 == 5)
                  {
                    if ((v89 & 7) == 0)
                    {
                      v92 = 0;
                      while (1)
                      {
                        LOBYTE(v839) = 0;
                        v93 = objc_msgSend_position(a1) + 1;
                        if (v93 >= objc_msgSend_position(a1) && (v94 = objc_msgSend_position(a1) + 1, v94 <= [a1 length]))
                        {
                          v95 = [a1 data];
                          [v95 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                          [a1 setPosition:objc_msgSend_position(a1) + 1];
                        }

                        else
                        {
                          [a1 _setError];
                        }

                        if ((v839 & 0x80000000) == 0)
                        {
                          break;
                        }

                        v26 = v92++ > 8;
                        if (v26)
                        {
                          goto LABEL_249;
                        }
                      }

LABEL_310:
                      [a1 hasError];
                      goto LABEL_249;
                    }

                    goto LABEL_2454;
                  }

                  goto LABEL_300;
                }

                if (v91 != 6)
                {
                  if (v91 == 7 && v90 != 2)
                  {
                    goto LABEL_2454;
                  }

                  goto LABEL_300;
                }

                if (v90 != 2)
                {
                  goto LABEL_2454;
                }

                v839 = 0;
                v840 = 0;
                if (!PBReaderPlaceMark() || !GEOStyleAttributesIsValid(a1))
                {
                  goto LABEL_2454;
                }
              }

              PBReaderRecallMark();
              goto LABEL_249;
            case 0x13u:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOPDRelatedEntitySectionIsValid(a1, v21))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 0x14u:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOPDSSearchTierMetadataIsValid(a1))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 0x15u:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOPDResultRefinementGroupIsValid(a1, v103))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 0x16u:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOPDSSearchAutoRedoThresholdIsValid(a1))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 0x17u:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOPDPlaceSummaryLayoutMetadataIsValid(a1, v38))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 0x18u:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOPDSearchSectionListIsValid(a1, v35))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 0x19u:
              if ((v19 & 7) != 0)
              {
                goto LABEL_2460;
              }

              v69 = 0;
              while (1)
              {
                LOBYTE(v841) = 0;
                v70 = objc_msgSend_position(a1) + 1;
                if (v70 >= objc_msgSend_position(a1) && (v71 = objc_msgSend_position(a1) + 1, v71 <= [a1 length]))
                {
                  v72 = [a1 data];
                  [v72 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                  [a1 setPosition:objc_msgSend_position(a1) + 1];
                }

                else
                {
                  [a1 _setError];
                }

                if ((v841 & 0x80000000) == 0)
                {
                  goto LABEL_335;
                }

                v26 = v69++ > 8;
                if (v26)
                {
                  goto LABEL_22;
                }
              }

            case 0x1Au:
              if ((v19 & 7) != 0)
              {
                goto LABEL_2460;
              }

              v27 = 0;
              while (1)
              {
                LOBYTE(v841) = 0;
                v28 = objc_msgSend_position(a1) + 1;
                if (v28 >= objc_msgSend_position(a1) && (v29 = objc_msgSend_position(a1) + 1, v29 <= [a1 length]))
                {
                  v30 = [a1 data];
                  [v30 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                  [a1 setPosition:objc_msgSend_position(a1) + 1];
                }

                else
                {
                  [a1 _setError];
                }

                if ((v841 & 0x80000000) == 0)
                {
                  goto LABEL_335;
                }

                v26 = v27++ > 8;
                if (v26)
                {
                  goto LABEL_22;
                }
              }

            case 0x1Cu:
              if ((v19 & 7) != 0)
              {
                goto LABEL_2460;
              }

              v104 = 0;
              while (1)
              {
                LOBYTE(v841) = 0;
                v105 = objc_msgSend_position(a1) + 1;
                if (v105 >= objc_msgSend_position(a1) && (v106 = objc_msgSend_position(a1) + 1, v106 <= [a1 length]))
                {
                  v107 = [a1 data];
                  [v107 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                  [a1 setPosition:objc_msgSend_position(a1) + 1];
                }

                else
                {
                  [a1 _setError];
                }

                if ((v841 & 0x80000000) == 0)
                {
                  break;
                }

                v26 = v104++ > 8;
                if (v26)
                {
                  goto LABEL_22;
                }
              }

LABEL_335:
              [a1 hasError];
              continue;
            case 0x1Du:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOPDSSearchSessionDataIsValid(a1))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 0x1Eu:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOPDMapsIdentifierIsValid(a1, v37))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 0x1Fu:
              if ((v19 & 7) != 0)
              {
                goto LABEL_2460;
              }

              v43 = 0;
              while (1)
              {
                LOBYTE(v841) = 0;
                v44 = objc_msgSend_position(a1) + 1;
                if (v44 >= objc_msgSend_position(a1) && (v45 = objc_msgSend_position(a1) + 1, v45 <= [a1 length]))
                {
                  v46 = [a1 data];
                  [v46 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                  [a1 setPosition:objc_msgSend_position(a1) + 1];
                }

                else
                {
                  [a1 _setError];
                }

                if ((v841 & 0x80000000) == 0)
                {
                  goto LABEL_335;
                }

                v26 = v43++ > 8;
                if (v26)
                {
                  goto LABEL_22;
                }
              }

            case 0x20u:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOPDGuideSummaryLayoutMetadataIsValid(a1))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 0x21u:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOPDPaginationInfoIsValid(a1))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 0x22u:
              if (v20 != 2)
              {
                goto LABEL_2460;
              }

              v841 = 0;
              v842 = 0;
              if (!PBReaderPlaceMark() || !GEOPDSSearchAutoRedoThresholdIsValid(a1))
              {
                goto LABEL_2460;
              }

              goto LABEL_324;
            case 0x23u:
              if ((v19 & 7) != 0)
              {
                goto LABEL_2460;
              }

              v31 = 0;
              while (1)
              {
                LOBYTE(v841) = 0;
                v32 = objc_msgSend_position(a1) + 1;
                if (v32 >= objc_msgSend_position(a1) && (v33 = objc_msgSend_position(a1) + 1, v33 <= [a1 length]))
                {
                  v34 = [a1 data];
                  [v34 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                  [a1 setPosition:objc_msgSend_position(a1) + 1];
                }

                else
                {
                  [a1 _setError];
                }

                if ((v841 & 0x80000000) == 0)
                {
                  goto LABEL_335;
                }

                v26 = v31++ > 8;
                if (v26)
                {
                  goto LABEL_22;
                }
              }

            default:
LABEL_336:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_2460;
              }

              continue;
          }
        }

      case 2u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v837 = 0;
        v838 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          while (2)
          {
            v414 = objc_msgSend_position(a1);
            if (v414 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_2040;
            }

            v415 = 0;
            v416 = 0;
            v417 = 0;
            while (1)
            {
              LOBYTE(v839) = 0;
              v418 = objc_msgSend_position(a1) + 1;
              if (v418 >= objc_msgSend_position(a1) && (v419 = objc_msgSend_position(a1) + 1, v419 <= [a1 length]))
              {
                v420 = [a1 data];
                [v420 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v417 |= (v839 & 0x7F) << v415;
              if ((v839 & 0x80) == 0)
              {
                break;
              }

              v415 += 7;
              v9 = v416++ >= 9;
              if (v9)
              {
                v421 = 0;
                goto LABEL_1260;
              }
            }

            v421 = [a1 hasError] ? 0 : v417;
LABEL_1260:
            if (([a1 hasError] & 1) != 0 || (v421 & 7) == 4)
            {
              goto LABEL_2040;
            }

            if ((v421 >> 3) != 1)
            {
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_2460;
              }

              continue;
            }

            break;
          }

          if ((v421 & 7) == 2)
          {
            v839 = 0;
            v840 = 0;
            if (PBReaderPlaceMark())
            {
              if (GEOPDMultiLocalizedStringIsValid(a1))
              {
                PBReaderRecallMark();
                continue;
              }
            }
          }

          goto LABEL_2460;
        }

      case 3u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (1)
        {
          v500 = objc_msgSend_position(a1);
          if (v500 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v501 = 0;
          v502 = 0;
          v503 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v504 = objc_msgSend_position(a1) + 1;
            if (v504 >= objc_msgSend_position(a1) && (v505 = objc_msgSend_position(a1) + 1, v505 <= [a1 length]))
            {
              v506 = [a1 data];
              [v506 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v503 |= (v837 & 0x7F) << v501;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v501 += 7;
            v9 = v502++ >= 9;
            if (v9)
            {
              v507 = 0;
              goto LABEL_1527;
            }
          }

          v507 = [a1 hasError] ? 0 : v503;
LABEL_1527:
          if (([a1 hasError] & 1) != 0 || (v507 & 7) == 4)
          {
            goto LABEL_2448;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_2460;
          }
        }

      case 4u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (1)
        {
          v492 = objc_msgSend_position(a1);
          if (v492 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v493 = 0;
          v494 = 0;
          v495 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v496 = objc_msgSend_position(a1) + 1;
            if (v496 >= objc_msgSend_position(a1) && (v497 = objc_msgSend_position(a1) + 1, v497 <= [a1 length]))
            {
              v498 = [a1 data];
              [v498 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v495 |= (v837 & 0x7F) << v493;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v493 += 7;
            v9 = v494++ >= 9;
            if (v9)
            {
              v499 = 0;
              goto LABEL_1502;
            }
          }

          v499 = [a1 hasError] ? 0 : v495;
LABEL_1502:
          if (([a1 hasError] & 1) != 0 || (v499 & 7) == 4)
          {
            goto LABEL_2448;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_2460;
          }
        }

      case 5u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (1)
        {
          v552 = objc_msgSend_position(a1);
          if (v552 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v553 = 0;
          v554 = 0;
          v555 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v556 = objc_msgSend_position(a1) + 1;
            if (v556 >= objc_msgSend_position(a1) && (v557 = objc_msgSend_position(a1) + 1, v557 <= [a1 length]))
            {
              v558 = [a1 data];
              [v558 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v555 |= (v837 & 0x7F) << v553;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v553 += 7;
            v9 = v554++ >= 9;
            if (v9)
            {
              v559 = 0;
              goto LABEL_1677;
            }
          }

          v559 = [a1 hasError] ? 0 : v555;
LABEL_1677:
          if (([a1 hasError] & 1) != 0 || (v559 & 7) == 4)
          {
            goto LABEL_2448;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_2460;
          }
        }

      case 6u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v841 = 0;
        v842 = 0;
        if (!PBReaderPlaceMark() || (GEOPDMerchantLookupResultIsValid(a1) & 1) == 0)
        {
          goto LABEL_2461;
        }

        goto LABEL_2449;
      case 7u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (1)
        {
          v349 = objc_msgSend_position(a1);
          if (v349 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v350 = 0;
          v351 = 0;
          v352 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v353 = objc_msgSend_position(a1) + 1;
            if (v353 >= objc_msgSend_position(a1) && (v354 = objc_msgSend_position(a1) + 1, v354 <= [a1 length]))
            {
              v355 = [a1 data];
              [v355 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v352 |= (v837 & 0x7F) << v350;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v350 += 7;
            v9 = v351++ >= 9;
            if (v9)
            {
              v356 = 0;
              goto LABEL_1076;
            }
          }

          v356 = [a1 hasError] ? 0 : v352;
LABEL_1076:
          if (([a1 hasError] & 1) != 0 || (v356 & 7) == 4)
          {
            goto LABEL_2448;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_2460;
          }
        }

      case 8u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v837 = 0;
        v838 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
LABEL_1083:
        while (2)
        {
          while (2)
          {
            while (2)
            {
              v357 = objc_msgSend_position(a1);
              if (v357 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
              {
                goto LABEL_2040;
              }

              v358 = 0;
              v359 = 0;
              v360 = 0;
              while (1)
              {
                LOBYTE(v839) = 0;
                v361 = objc_msgSend_position(a1) + 1;
                if (v361 >= objc_msgSend_position(a1) && (v362 = objc_msgSend_position(a1) + 1, v362 <= [a1 length]))
                {
                  v363 = [a1 data];
                  [v363 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                  [a1 setPosition:objc_msgSend_position(a1) + 1];
                }

                else
                {
                  [a1 _setError];
                }

                v360 |= (v839 & 0x7F) << v358;
                if ((v839 & 0x80) == 0)
                {
                  break;
                }

                v358 += 7;
                v9 = v359++ >= 9;
                if (v9)
                {
                  v364 = 0;
                  goto LABEL_1097;
                }
              }

              v364 = [a1 hasError] ? 0 : v360;
LABEL_1097:
              if ([a1 hasError])
              {
                goto LABEL_2040;
              }

              v365 = v364 & 7;
              if (v365 == 4)
              {
                goto LABEL_2040;
              }

              v366 = v364 >> 3;
              if ((v364 >> 3) == 3)
              {
                if ((v364 & 7) == 0)
                {
                  v367 = 0;
                  while (1)
                  {
                    LOBYTE(v839) = 0;
                    v368 = objc_msgSend_position(a1) + 1;
                    if (v368 >= objc_msgSend_position(a1) && (v369 = objc_msgSend_position(a1) + 1, v369 <= [a1 length]))
                    {
                      v370 = [a1 data];
                      [v370 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                      [a1 setPosition:objc_msgSend_position(a1) + 1];
                    }

                    else
                    {
                      [a1 _setError];
                    }

                    if ((v839 & 0x80000000) == 0)
                    {
                      break;
                    }

                    v26 = v367++ > 8;
                    if (v26)
                    {
                      goto LABEL_1083;
                    }
                  }

                  [a1 hasError];
                  continue;
                }

                goto LABEL_2460;
              }

              break;
            }

            if (v366 == 2)
            {
              if (v365 != 2)
              {
                goto LABEL_2460;
              }

              v839 = 0;
              v840 = 0;
              if (!PBReaderPlaceMark() || !GEOPDResultDetourInfoIsValid(a1))
              {
                goto LABEL_2460;
              }
            }

            else
            {
              if (v366 != 1)
              {
                if ((PBReaderSkipValueWithTag() & 1) == 0)
                {
                  goto LABEL_2460;
                }

                continue;
              }

              if (v365 != 2)
              {
                goto LABEL_2460;
              }

              v839 = 0;
              v840 = 0;
              if (!PBReaderPlaceMark() || !GEOPDMultiLocalizedStringIsValid(a1))
              {
                goto LABEL_2460;
              }
            }

            break;
          }

          PBReaderRecallMark();
          continue;
        }

      case 9u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v837 = 0;
        v838 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          while (2)
          {
            v454 = objc_msgSend_position(a1);
            if (v454 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_2040;
            }

            v455 = 0;
            v456 = 0;
            v457 = 0;
            while (1)
            {
              LOBYTE(v839) = 0;
              v458 = objc_msgSend_position(a1) + 1;
              if (v458 >= objc_msgSend_position(a1) && (v459 = objc_msgSend_position(a1) + 1, v459 <= [a1 length]))
              {
                v460 = [a1 data];
                [v460 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v457 |= (v839 & 0x7F) << v455;
              if ((v839 & 0x80) == 0)
              {
                break;
              }

              v455 += 7;
              v9 = v456++ >= 9;
              if (v9)
              {
                v461 = 0;
                goto LABEL_1385;
              }
            }

            v461 = [a1 hasError] ? 0 : v457;
LABEL_1385:
            if ([a1 hasError])
            {
              goto LABEL_2040;
            }

            v462 = v461 & 7;
            if (v462 == 4)
            {
              goto LABEL_2040;
            }

            v463 = v461 >> 3;
            if ((v461 >> 3) == 3)
            {
              if (v462 != 2)
              {
                goto LABEL_2460;
              }

              v839 = 0;
              v840 = 0;
              if (!PBReaderPlaceMark() || !GEOPDPaginationInfoIsValid(a1))
              {
                goto LABEL_2460;
              }
            }

            else if (v463 == 2)
            {
              if (v462 != 2)
              {
                goto LABEL_2460;
              }

              v839 = 0;
              v840 = 0;
              if (!PBReaderPlaceMark() || !GEOPDMultiLocalizedStringIsValid(a1))
              {
                goto LABEL_2460;
              }
            }

            else
            {
              if (v463 != 1)
              {
                if ((PBReaderSkipValueWithTag() & 1) == 0)
                {
                  goto LABEL_2460;
                }

                continue;
              }

              if (v462 != 2)
              {
                goto LABEL_2460;
              }

              v839 = 0;
              v840 = 0;
              if (!PBReaderPlaceMark() || !GEOMapRegionIsValid(a1))
              {
                goto LABEL_2460;
              }
            }

            break;
          }

          PBReaderRecallMark();
          continue;
        }

      case 0xAu:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v841 = 0;
        v842 = 0;
        if (!PBReaderPlaceMark() || (GEOPDAutocompleteResultIsValid(a1) & 1) == 0)
        {
          goto LABEL_2461;
        }

        goto LABEL_2449;
      case 0xBu:
        if (v11 == 2)
        {
          v841 = 0;
          v842 = 0;
          if (PBReaderPlaceMark())
          {
            if (GEOPDSearchBrowseCategorySuggestionResultIsValid(a1))
            {
              goto LABEL_2449;
            }
          }
        }

        goto LABEL_2461;
      case 0xCu:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v833 = 0;
        v834 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v837 = objc_msgSend_position(a1);
        v838 = [a1 length];
LABEL_705:
        while (2)
        {
          while (2)
          {
            v236 = objc_msgSend_position(a1);
            if (v236 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_2425;
            }

            v237 = 0;
            v238 = 0;
            v239 = 0;
            while (1)
            {
              LOBYTE(v841) = 0;
              v240 = objc_msgSend_position(a1) + 1;
              if (v240 >= objc_msgSend_position(a1) && (v241 = objc_msgSend_position(a1) + 1, v241 <= [a1 length]))
              {
                v242 = [a1 data];
                [v242 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v239 |= (v841 & 0x7F) << v237;
              if ((v841 & 0x80) == 0)
              {
                break;
              }

              v237 += 7;
              v9 = v238++ >= 9;
              if (v9)
              {
                v243 = 0;
                goto LABEL_719;
              }
            }

            if ([a1 hasError])
            {
              v243 = 0;
            }

            else
            {
              v243 = v239;
            }

LABEL_719:
            if ([a1 hasError])
            {
              goto LABEL_2425;
            }

            v244 = v243 & 7;
            if (v244 == 4)
            {
              goto LABEL_2425;
            }

            switch((v243 >> 3))
            {
              case 1u:
                if (v244 != 2)
                {
                  goto LABEL_2460;
                }

                v841 = 0;
                v842 = 0;
                if (!PBReaderPlaceMark() || !GEOMapRegionIsValid(a1))
                {
                  goto LABEL_2460;
                }

                goto LABEL_891;
              case 2u:
                if ((v243 & 7) != 0)
                {
                  goto LABEL_2460;
                }

                v251 = 0;
                while (1)
                {
                  LOBYTE(v841) = 0;
                  v252 = objc_msgSend_position(a1) + 1;
                  if (v252 >= objc_msgSend_position(a1) && (v253 = objc_msgSend_position(a1) + 1, v253 <= [a1 length]))
                  {
                    v254 = [a1 data];
                    [v254 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                    [a1 setPosition:objc_msgSend_position(a1) + 1];
                  }

                  else
                  {
                    [a1 _setError];
                  }

                  if ((v841 & 0x80000000) == 0)
                  {
                    goto LABEL_887;
                  }

                  v26 = v251++ > 8;
                  if (v26)
                  {
                    goto LABEL_705;
                  }
                }

              case 3u:
              case 5u:
                if (v244 != 2)
                {
                  goto LABEL_2460;
                }

                v841 = 0;
                v842 = 0;
                if (!PBReaderPlaceMark() || !GEOPDWarsawMerchantIdentifierIsValid(a1))
                {
                  goto LABEL_2460;
                }

                goto LABEL_891;
              case 4u:
                if (v244 != 2)
                {
                  goto LABEL_2460;
                }

                v841 = 0;
                v842 = 0;
                if (!PBReaderPlaceMark() || !GEOPDResultDetourInfoIsValid(a1))
                {
                  goto LABEL_2460;
                }

                goto LABEL_891;
              case 6u:
                if (v244 != 2)
                {
                  goto LABEL_2460;
                }

                v841 = 0;
                v842 = 0;
                if (!PBReaderPlaceMark() || !GEOPDSearchClientBehaviorIsValid(a1))
                {
                  goto LABEL_2460;
                }

                goto LABEL_891;
              case 7u:
                if ((v243 & 7) != 0)
                {
                  goto LABEL_2460;
                }

                v255 = 0;
                while (1)
                {
                  LOBYTE(v841) = 0;
                  v256 = objc_msgSend_position(a1) + 1;
                  if (v256 >= objc_msgSend_position(a1) && (v257 = objc_msgSend_position(a1) + 1, v257 <= [a1 length]))
                  {
                    v258 = [a1 data];
                    [v258 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                    [a1 setPosition:objc_msgSend_position(a1) + 1];
                  }

                  else
                  {
                    [a1 _setError];
                  }

                  if ((v841 & 0x80000000) == 0)
                  {
                    goto LABEL_887;
                  }

                  v26 = v255++ > 8;
                  if (v26)
                  {
                    goto LABEL_705;
                  }
                }

              case 8u:
                if (v244 != 2)
                {
                  goto LABEL_2460;
                }

                v841 = 0;
                v842 = 0;
                if (!PBReaderPlaceMark() || !GEOPDBrowseCategoryIsValid(a1))
                {
                  goto LABEL_2460;
                }

                goto LABEL_891;
              case 9u:
                if (v244 != 2)
                {
                  goto LABEL_2460;
                }

                v835 = 0;
                v836 = 0;
                if (!PBReaderPlaceMark())
                {
                  goto LABEL_2460;
                }

                v841 = objc_msgSend_position(a1);
                v842 = [a1 length];
                break;
              case 0xAu:
                if (v244 != 2)
                {
                  goto LABEL_2460;
                }

                v841 = 0;
                v842 = 0;
                if (!PBReaderPlaceMark() || !GEOPDRelatedEntitySectionIsValid(a1, v264))
                {
                  goto LABEL_2460;
                }

                goto LABEL_891;
              case 0xBu:
                if (v244 != 2)
                {
                  goto LABEL_2460;
                }

                v841 = 0;
                v842 = 0;
                if (!PBReaderPlaceMark() || !GEOPDSSearchTierMetadataIsValid(a1))
                {
                  goto LABEL_2460;
                }

                goto LABEL_891;
              case 0xCu:
                if (v244 != 2)
                {
                  goto LABEL_2460;
                }

                v841 = 0;
                v842 = 0;
                if (!PBReaderPlaceMark() || !GEOPDResultRefinementGroupIsValid(a1, v250))
                {
                  goto LABEL_2460;
                }

                goto LABEL_891;
              case 0xDu:
                if (v244 != 2)
                {
                  goto LABEL_2460;
                }

                v841 = 0;
                v842 = 0;
                if (!PBReaderPlaceMark() || !GEOPDSSearchAutoRedoThresholdIsValid(a1))
                {
                  goto LABEL_2460;
                }

                goto LABEL_891;
              case 0xEu:
                if (v244 != 2)
                {
                  goto LABEL_2460;
                }

                v841 = 0;
                v842 = 0;
                if (!PBReaderPlaceMark() || !GEOPDPlaceSummaryLayoutMetadataIsValid(a1, v245))
                {
                  goto LABEL_2460;
                }

                goto LABEL_891;
              case 0xFu:
                if (v244 != 2)
                {
                  goto LABEL_2460;
                }

                v841 = 0;
                v842 = 0;
                if (!PBReaderPlaceMark() || !GEOPDSearchSectionListIsValid(a1, v259))
                {
                  goto LABEL_2460;
                }

                goto LABEL_891;
              case 0x10u:
                if ((v243 & 7) != 0)
                {
                  goto LABEL_2460;
                }

                v260 = 0;
                while (1)
                {
                  LOBYTE(v841) = 0;
                  v261 = objc_msgSend_position(a1) + 1;
                  if (v261 >= objc_msgSend_position(a1) && (v262 = objc_msgSend_position(a1) + 1, v262 <= [a1 length]))
                  {
                    v263 = [a1 data];
                    [v263 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                    [a1 setPosition:objc_msgSend_position(a1) + 1];
                  }

                  else
                  {
                    [a1 _setError];
                  }

                  if ((v841 & 0x80000000) == 0)
                  {
                    goto LABEL_887;
                  }

                  v26 = v260++ > 8;
                  if (v26)
                  {
                    goto LABEL_705;
                  }
                }

              case 0x11u:
                if ((v243 & 7) != 0)
                {
                  goto LABEL_2460;
                }

                v283 = 0;
                while (1)
                {
                  LOBYTE(v841) = 0;
                  v284 = objc_msgSend_position(a1) + 1;
                  if (v284 >= objc_msgSend_position(a1) && (v285 = objc_msgSend_position(a1) + 1, v285 <= [a1 length]))
                  {
                    v286 = [a1 data];
                    [v286 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                    [a1 setPosition:objc_msgSend_position(a1) + 1];
                  }

                  else
                  {
                    [a1 _setError];
                  }

                  if ((v841 & 0x80000000) == 0)
                  {
                    break;
                  }

                  v26 = v283++ > 8;
                  if (v26)
                  {
                    goto LABEL_705;
                  }
                }

LABEL_887:
                [a1 hasError];
                continue;
              case 0x13u:
                if ((v243 & 7) != 0)
                {
                  goto LABEL_2460;
                }

                v279 = 0;
                while (1)
                {
                  LOBYTE(v841) = 0;
                  v280 = objc_msgSend_position(a1) + 1;
                  if (v280 >= objc_msgSend_position(a1) && (v281 = objc_msgSend_position(a1) + 1, v281 <= [a1 length]))
                  {
                    v282 = [a1 data];
                    [v282 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                    [a1 setPosition:objc_msgSend_position(a1) + 1];
                  }

                  else
                  {
                    [a1 _setError];
                  }

                  if ((v841 & 0x80000000) == 0)
                  {
                    goto LABEL_887;
                  }

                  v26 = v279++ > 8;
                  if (v26)
                  {
                    goto LABEL_705;
                  }
                }

              case 0x14u:
                if (v244 != 2)
                {
                  goto LABEL_2460;
                }

                v841 = 0;
                v842 = 0;
                if (!PBReaderPlaceMark() || !GEOPDSSearchSessionDataIsValid(a1))
                {
                  goto LABEL_2460;
                }

                goto LABEL_891;
              case 0x15u:
                if ((v243 & 7) != 0)
                {
                  goto LABEL_2460;
                }

                v246 = 0;
                while (1)
                {
                  LOBYTE(v841) = 0;
                  v247 = objc_msgSend_position(a1) + 1;
                  if (v247 >= objc_msgSend_position(a1) && (v248 = objc_msgSend_position(a1) + 1, v248 <= [a1 length]))
                  {
                    v249 = [a1 data];
                    [v249 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                    [a1 setPosition:objc_msgSend_position(a1) + 1];
                  }

                  else
                  {
                    [a1 _setError];
                  }

                  if ((v841 & 0x80000000) == 0)
                  {
                    goto LABEL_887;
                  }

                  v26 = v246++ > 8;
                  if (v26)
                  {
                    goto LABEL_705;
                  }
                }

              case 0x16u:
                if (v244 == 2)
                {
                  v841 = 0;
                  v842 = 0;
                  if (PBReaderPlaceMark())
                  {
                    if (GEOPDGuideSummaryLayoutMetadataIsValid(a1))
                    {
                      goto LABEL_891;
                    }
                  }
                }

                goto LABEL_2460;
              case 0x17u:
                if (v244 != 2)
                {
                  goto LABEL_2460;
                }

                v841 = 0;
                v842 = 0;
                if (!PBReaderPlaceMark() || !GEOPDPaginationInfoIsValid(a1))
                {
                  goto LABEL_2460;
                }

                goto LABEL_891;
              case 0x18u:
                if (v244 != 2)
                {
                  goto LABEL_2460;
                }

                v841 = 0;
                v842 = 0;
                if (!PBReaderPlaceMark() || !GEOPDSSearchAutoRedoThresholdIsValid(a1))
                {
                  goto LABEL_2460;
                }

                goto LABEL_891;
              default:
                if ((PBReaderSkipValueWithTag() & 1) == 0)
                {
                  goto LABEL_2460;
                }

                continue;
            }

            break;
          }

LABEL_821:
          while (1)
          {
            v265 = objc_msgSend_position(a1);
            if (v265 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              break;
            }

            v266 = 0;
            v267 = 0;
            v268 = 0;
            while (1)
            {
              LOBYTE(v839) = 0;
              v269 = objc_msgSend_position(a1) + 1;
              if (v269 >= objc_msgSend_position(a1) && (v270 = objc_msgSend_position(a1) + 1, v270 <= [a1 length]))
              {
                v271 = [a1 data];
                [v271 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v268 |= (v839 & 0x7F) << v266;
              if ((v839 & 0x80) == 0)
              {
                break;
              }

              v266 += 7;
              v9 = v267++ >= 9;
              if (v9)
              {
                v272 = 0;
                goto LABEL_835;
              }
            }

            v272 = [a1 hasError] ? 0 : v268;
LABEL_835:
            if ([a1 hasError])
            {
              break;
            }

            v273 = v272 & 7;
            if (v273 == 4)
            {
              break;
            }

            v274 = v272 >> 3;
            if ((v272 >> 3) <= 2)
            {
              if (v274 == 1)
              {
                if (v273 != 2)
                {
                  goto LABEL_2454;
                }
              }

              else if (v274 == 2 && v273 != 2)
              {
                goto LABEL_2454;
              }
            }

            else
            {
              if (v274 == 3)
              {
                if ((v272 & 7) == 0)
                {
                  v275 = 0;
                  while (1)
                  {
                    LOBYTE(v839) = 0;
                    v276 = objc_msgSend_position(a1) + 1;
                    if (v276 >= objc_msgSend_position(a1) && (v277 = objc_msgSend_position(a1) + 1, v277 <= [a1 length]))
                    {
                      v278 = [a1 data];
                      [v278 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                      [a1 setPosition:objc_msgSend_position(a1) + 1];
                    }

                    else
                    {
                      [a1 _setError];
                    }

                    if ((v839 & 0x80000000) == 0)
                    {
                      break;
                    }

                    v26 = v275++ > 8;
                    if (v26)
                    {
                      goto LABEL_821;
                    }
                  }

                  [a1 hasError];
                  continue;
                }

                goto LABEL_2454;
              }

              if (v274 == 4)
              {
                if (v273 == 2)
                {
                  v839 = 0;
                  v840 = 0;
                  if (PBReaderPlaceMark())
                  {
                    if (GEOStyleAttributesIsValid(a1))
                    {
                      PBReaderRecallMark();
                      continue;
                    }
                  }
                }

                goto LABEL_2454;
              }

              if (v274 == 5 && v273 != 2)
              {
                goto LABEL_2454;
              }
            }

            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2454;
            }
          }

          v287 = [a1 hasError];
          PBReaderRecallMark();
          if ((v287 & 1) == 0)
          {
LABEL_891:
            PBReaderRecallMark();
            continue;
          }

          goto LABEL_2460;
        }

      case 0xDu:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v837 = 0;
        v838 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
LABEL_664:
        while (2)
        {
          while (2)
          {
            v222 = objc_msgSend_position(a1);
            if (v222 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_2040;
            }

            v223 = 0;
            v224 = 0;
            v225 = 0;
            while (1)
            {
              LOBYTE(v839) = 0;
              v226 = objc_msgSend_position(a1) + 1;
              if (v226 >= objc_msgSend_position(a1) && (v227 = objc_msgSend_position(a1) + 1, v227 <= [a1 length]))
              {
                v228 = [a1 data];
                [v228 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v225 |= (v839 & 0x7F) << v223;
              if ((v839 & 0x80) == 0)
              {
                break;
              }

              v223 += 7;
              v9 = v224++ >= 9;
              if (v9)
              {
                v229 = 0;
                goto LABEL_678;
              }
            }

            v229 = [a1 hasError] ? 0 : v225;
LABEL_678:
            if ([a1 hasError])
            {
              goto LABEL_2040;
            }

            v230 = v229 & 7;
            if (v230 == 4)
            {
              goto LABEL_2040;
            }

            v231 = v229 >> 3;
            if ((v229 >> 3) != 3)
            {
              if (v231 == 2)
              {
                if (v230 != 2)
                {
                  goto LABEL_2460;
                }
              }

              else if (v231 == 1)
              {
                if (v230 == 2)
                {
                  v839 = 0;
                  v840 = 0;
                  if (PBReaderPlaceMark())
                  {
                    if (GEOMapRegionIsValid(a1))
                    {
                      PBReaderRecallMark();
                      continue;
                    }
                  }
                }

                goto LABEL_2460;
              }

              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_2460;
              }

              continue;
            }

            break;
          }

          if ((v229 & 7) == 0)
          {
            v232 = 0;
            while (1)
            {
              LOBYTE(v839) = 0;
              v233 = objc_msgSend_position(a1) + 1;
              if (v233 >= objc_msgSend_position(a1) && (v234 = objc_msgSend_position(a1) + 1, v234 <= [a1 length]))
              {
                v235 = [a1 data];
                [v235 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v839 & 0x80000000) == 0)
              {
                break;
              }

              v26 = v232++ > 8;
              if (v26)
              {
                goto LABEL_664;
              }
            }

            [a1 hasError];
            continue;
          }

          goto LABEL_2460;
        }

      case 0xEu:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v833 = 0;
        v834 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v837 = objc_msgSend_position(a1);
        v838 = [a1 length];
LABEL_1730:
        while (2)
        {
          v576 = objc_msgSend_position(a1);
          if (v576 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2425;
          }

          v577 = 0;
          v578 = 0;
          v579 = 0;
          while (1)
          {
            LOBYTE(v841) = 0;
            v580 = objc_msgSend_position(a1) + 1;
            if (v580 >= objc_msgSend_position(a1) && (v581 = objc_msgSend_position(a1) + 1, v581 <= [a1 length]))
            {
              v582 = [a1 data];
              [v582 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v579 |= (v841 & 0x7F) << v577;
            if ((v841 & 0x80) == 0)
            {
              break;
            }

            v577 += 7;
            v9 = v578++ >= 9;
            if (v9)
            {
              v583 = 0;
              goto LABEL_1744;
            }
          }

          if ([a1 hasError])
          {
            v583 = 0;
          }

          else
          {
            v583 = v579;
          }

LABEL_1744:
          if ([a1 hasError])
          {
            goto LABEL_2425;
          }

          v584 = v583 & 7;
          if (v584 == 4)
          {
            goto LABEL_2425;
          }

          if ((v583 >> 3) != 2)
          {
            if ((v583 >> 3) != 1)
            {
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_2460;
              }

              continue;
            }

            if (v584 == 2)
            {
              v841 = 0;
              v842 = 0;
              if (PBReaderPlaceMark())
              {
                if (GEOPDBrowseCategoryIsValid(a1))
                {
                  goto LABEL_1822;
                }
              }
            }

            goto LABEL_2460;
          }

          break;
        }

        if (v584 != 2)
        {
          goto LABEL_2460;
        }

        v835 = 0;
        v836 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2460;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (1)
        {
          while (1)
          {
LABEL_1755:
            v585 = objc_msgSend_position(a1);
            if (v585 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_1821;
            }

            v586 = 0;
            v587 = 0;
            v588 = 0;
            while (1)
            {
              LOBYTE(v839) = 0;
              v589 = objc_msgSend_position(a1) + 1;
              if (v589 >= objc_msgSend_position(a1) && (v590 = objc_msgSend_position(a1) + 1, v590 <= [a1 length]))
              {
                v591 = [a1 data];
                [v591 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v588 |= (v839 & 0x7F) << v586;
              if ((v839 & 0x80) == 0)
              {
                break;
              }

              v586 += 7;
              v9 = v587++ >= 9;
              if (v9)
              {
                v588 = 0;
                goto LABEL_1768;
              }
            }

            if ([a1 hasError])
            {
              v588 = 0;
            }

LABEL_1768:
            if (([a1 hasError] & 1) != 0 || (v592 = v588 & 7, v592 == 4))
            {
LABEL_1821:
              v611 = [a1 hasError];
              PBReaderRecallMark();
              if ((v611 & 1) == 0)
              {
LABEL_1822:
                PBReaderRecallMark();
                goto LABEL_1730;
              }

              goto LABEL_2460;
            }

            v593 = v588 >> 3;
            if ((v588 >> 3) != 3)
            {
              break;
            }

            if (v592 == 2)
            {
              v839 = 0;
              v840 = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_2454;
              }

LABEL_1806:
              while (1)
              {
                v606 = objc_msgSend_position(a1);
                if (v606 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
                {
                  break;
                }

                v607 = 0;
                while (1)
                {
                  LOBYTE(v831) = 0;
                  v608 = objc_msgSend_position(a1) + 1;
                  if (v608 >= objc_msgSend_position(a1) && (v609 = objc_msgSend_position(a1) + 1, v609 <= [a1 length]))
                  {
                    v610 = [a1 data];
                    [v610 getBytes:&v831 range:{objc_msgSend_position(a1), 1}];

                    [a1 setPosition:objc_msgSend_position(a1) + 1];
                  }

                  else
                  {
                    [a1 _setError];
                  }

                  if ((v831 & 0x80000000) == 0)
                  {
                    break;
                  }

                  v26 = v607++ > 8;
                  if (v26)
                  {
                    goto LABEL_1806;
                  }
                }

                [a1 hasError];
              }

              PBReaderRecallMark();
            }

            else
            {
              if ((v588 & 7) != 0)
              {
                goto LABEL_2454;
              }

              while (1)
              {
                LOBYTE(v839) = 0;
                v602 = objc_msgSend_position(a1) + 1;
                if (v602 >= objc_msgSend_position(a1) && (v603 = objc_msgSend_position(a1) + 1, v603 <= [a1 length]))
                {
                  v604 = [a1 data];
                  [v604 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                  [a1 setPosition:objc_msgSend_position(a1) + 1];
                }

                else
                {
                  [a1 _setError];
                }

                if ((v839 & 0x80000000) == 0)
                {
                  break;
                }

                v605 = v592++;
                if (v605 > 8)
                {
                  goto LABEL_1755;
                }
              }

LABEL_1802:
              [a1 hasError];
            }
          }

          if (v593 == 2)
          {
            if ((v588 & 7) != 0)
            {
              goto LABEL_2454;
            }

            v598 = 0;
            while (1)
            {
              LOBYTE(v839) = 0;
              v599 = objc_msgSend_position(a1) + 1;
              if (v599 >= objc_msgSend_position(a1) && (v600 = objc_msgSend_position(a1) + 1, v600 <= [a1 length]))
              {
                v601 = [a1 data];
                [v601 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v839 & 0x80000000) == 0)
              {
                goto LABEL_1802;
              }

              v26 = v598++ > 8;
              if (v26)
              {
                goto LABEL_1755;
              }
            }
          }

          if (v593 == 1)
          {
            if ((v588 & 7) != 0)
            {
              goto LABEL_2454;
            }

            v594 = 0;
            while (1)
            {
              LOBYTE(v839) = 0;
              v595 = objc_msgSend_position(a1) + 1;
              if (v595 >= objc_msgSend_position(a1) && (v596 = objc_msgSend_position(a1) + 1, v596 <= [a1 length]))
              {
                v597 = [a1 data];
                [v597 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v839 & 0x80000000) == 0)
              {
                goto LABEL_1802;
              }

              v26 = v594++ > 8;
              if (v26)
              {
                goto LABEL_1755;
              }
            }
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_2454;
          }
        }

      case 0xFu:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          while (2)
          {
            v464 = objc_msgSend_position(a1);
            if (v464 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_2448;
            }

            v465 = 0;
            v466 = 0;
            v467 = 0;
            while (1)
            {
              LOBYTE(v837) = 0;
              v468 = objc_msgSend_position(a1) + 1;
              if (v468 >= objc_msgSend_position(a1) && (v469 = objc_msgSend_position(a1) + 1, v469 <= [a1 length]))
              {
                v470 = [a1 data];
                [v470 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v467 |= (v837 & 0x7F) << v465;
              if ((v837 & 0x80) == 0)
              {
                break;
              }

              v465 += 7;
              v9 = v466++ >= 9;
              if (v9)
              {
                v471 = 0;
                goto LABEL_1421;
              }
            }

            if ([a1 hasError])
            {
              v471 = 0;
            }

            else
            {
              v471 = v467;
            }

LABEL_1421:
            if ([a1 hasError])
            {
              goto LABEL_2448;
            }

            v472 = v471 & 7;
            if (v472 == 4)
            {
              goto LABEL_2448;
            }

            if ((v471 >> 3) == 2)
            {
              if (v472 != 2)
              {
                goto LABEL_2460;
              }

LABEL_1428:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_2460;
              }

              continue;
            }

            break;
          }

          if ((v471 >> 3) != 1)
          {
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_2460;
            }

            continue;
          }

          break;
        }

        if (v472 == 2)
        {
          goto LABEL_1428;
        }

        goto LABEL_2460;
      case 0x10u:
        if (v11 != 2 || !PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v833 = objc_msgSend_position(a1, 0, 0);
        v834 = [a1 length];
LABEL_1435:
        while (2)
        {
          v473 = objc_msgSend_position(a1);
          if (v473 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2254;
          }

          v474 = 0;
          v475 = 0;
          v476 = 0;
          while (1)
          {
            LOBYTE(v841) = 0;
            v477 = objc_msgSend_position(a1) + 1;
            if (v477 >= objc_msgSend_position(a1) && (v478 = objc_msgSend_position(a1) + 1, v478 <= [a1 length]))
            {
              v479 = [a1 data];
              [v479 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v476 |= (v841 & 0x7F) << v474;
            if ((v841 & 0x80) == 0)
            {
              break;
            }

            v474 += 7;
            v9 = v475++ >= 9;
            if (v9)
            {
              v480 = 0;
              goto LABEL_1449;
            }
          }

          if ([a1 hasError])
          {
            v480 = 0;
          }

          else
          {
            v480 = v476;
          }

LABEL_1449:
          if (([a1 hasError] & 1) != 0 || (v480 & 7) == 4)
          {
            goto LABEL_2254;
          }

          if ((v480 >> 3) != 1)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          break;
        }

        if ((v480 & 7) != 2)
        {
          goto LABEL_2460;
        }

        v831 = 0;
        v832 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2460;
        }

        v837 = objc_msgSend_position(a1);
        v838 = [a1 length];
        do
        {
          while (1)
          {
            v481 = objc_msgSend_position(a1);
            if (v481 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_1483;
            }

            v482 = 0;
            v483 = 0;
            v484 = 0;
            while (1)
            {
              LOBYTE(v841) = 0;
              v485 = objc_msgSend_position(a1) + 1;
              if (v485 >= objc_msgSend_position(a1) && (v486 = objc_msgSend_position(a1) + 1, v486 <= [a1 length]))
              {
                v487 = [a1 data];
                [v487 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v484 |= (v841 & 0x7F) << v482;
              if ((v841 & 0x80) == 0)
              {
                break;
              }

              v482 += 7;
              v9 = v483++ >= 9;
              if (v9)
              {
                v488 = 0;
                goto LABEL_1469;
              }
            }

            v488 = [a1 hasError] ? 0 : v484;
LABEL_1469:
            if (([a1 hasError] & 1) != 0 || (v489 = v488 & 7, v489 == 4))
            {
LABEL_1483:
              v491 = [a1 hasError];
              PBReaderRecallMark();
              if ((v491 & 1) == 0)
              {
                PBReaderRecallMark();
                goto LABEL_1435;
              }

              goto LABEL_2460;
            }

            if ((v488 >> 3) != 3)
            {
              break;
            }

            if (v489 != 2)
            {
              goto LABEL_2459;
            }

            v835 = 0;
            v836 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_2459;
            }

            v841 = objc_msgSend_position(a1);
            v842 = [a1 length];
            v839 = 0;
            v840 = 0;
            AllFrom = GEOPDLitePlaceResultReadAllFrom(&v839, a1);
            PBReaderRecallMark();
            if (!AllFrom)
            {
              goto LABEL_2459;
            }

            PBReaderRecallMark();
          }
        }

        while (((v488 >> 3) != 1 || v489 == 2) && (PBReaderSkipValueWithTag() & 1) != 0);
        goto LABEL_2459;
      case 0x11u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          v560 = objc_msgSend_position(a1);
          if (v560 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v561 = 0;
          v562 = 0;
          v563 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v564 = objc_msgSend_position(a1) + 1;
            if (v564 >= objc_msgSend_position(a1) && (v565 = objc_msgSend_position(a1) + 1, v565 <= [a1 length]))
            {
              v566 = [a1 data];
              [v566 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v563 |= (v837 & 0x7F) << v561;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v561 += 7;
            v9 = v562++ >= 9;
            if (v9)
            {
              v567 = 0;
              goto LABEL_1702;
            }
          }

          if ([a1 hasError])
          {
            v567 = 0;
          }

          else
          {
            v567 = v563;
          }

LABEL_1702:
          if (([a1 hasError] & 1) == 0 && (v567 & 7) != 4)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          goto LABEL_2448;
        }

      case 0x12u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          v527 = objc_msgSend_position(a1);
          if (v527 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v528 = 0;
          v529 = 0;
          v530 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v531 = objc_msgSend_position(a1) + 1;
            if (v531 >= objc_msgSend_position(a1) && (v532 = objc_msgSend_position(a1) + 1, v532 <= [a1 length]))
            {
              v533 = [a1 data];
              [v533 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v530 |= (v837 & 0x7F) << v528;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v528 += 7;
            v9 = v529++ >= 9;
            if (v9)
            {
              v534 = 0;
              goto LABEL_1609;
            }
          }

          if ([a1 hasError])
          {
            v534 = 0;
          }

          else
          {
            v534 = v530;
          }

LABEL_1609:
          if (([a1 hasError] & 1) == 0 && (v534 & 7) != 4)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          goto LABEL_2448;
        }

      case 0x13u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v837 = 0;
        v838 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          while (2)
          {
            v656 = objc_msgSend_position(a1);
            if (v656 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_2040;
            }

            v657 = 0;
            v658 = 0;
            v659 = 0;
            while (1)
            {
              LOBYTE(v839) = 0;
              v660 = objc_msgSend_position(a1) + 1;
              if (v660 >= objc_msgSend_position(a1) && (v661 = objc_msgSend_position(a1) + 1, v661 <= [a1 length]))
              {
                v662 = [a1 data];
                [v662 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v659 |= (v839 & 0x7F) << v657;
              if ((v839 & 0x80) == 0)
              {
                break;
              }

              v657 += 7;
              v9 = v658++ >= 9;
              if (v9)
              {
                v663 = 0;
                goto LABEL_1962;
              }
            }

            if ([a1 hasError])
            {
              v663 = 0;
            }

            else
            {
              v663 = v659;
            }

LABEL_1962:
            if (([a1 hasError] & 1) != 0 || (v663 & 7) == 4)
            {
              goto LABEL_2040;
            }

            if ((v663 >> 3) != 1)
            {
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_2460;
              }

              continue;
            }

            break;
          }

          if ((v663 & 7) == 2)
          {
            v839 = 0;
            v840 = 0;
            if (PBReaderPlaceMark())
            {
              if (GEOPDMultiLocalizedStringIsValid(a1))
              {
                PBReaderRecallMark();
                continue;
              }
            }
          }

          goto LABEL_2460;
        }

      case 0x14u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v833 = 0;
        v834 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v837 = objc_msgSend_position(a1);
        v838 = [a1 length];
LABEL_1126:
        while (2)
        {
          v371 = objc_msgSend_position(a1);
          if (v371 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2425;
          }

          v372 = 0;
          v373 = 0;
          v374 = 0;
          while (1)
          {
            LOBYTE(v841) = 0;
            v375 = objc_msgSend_position(a1) + 1;
            if (v375 >= objc_msgSend_position(a1) && (v376 = objc_msgSend_position(a1) + 1, v376 <= [a1 length]))
            {
              v377 = [a1 data];
              [v377 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v374 |= (v841 & 0x7F) << v372;
            if ((v841 & 0x80) == 0)
            {
              break;
            }

            v372 += 7;
            v9 = v373++ >= 9;
            if (v9)
            {
              v378 = 0;
              goto LABEL_1140;
            }
          }

          if ([a1 hasError])
          {
            v378 = 0;
          }

          else
          {
            v378 = v374;
          }

LABEL_1140:
          if (([a1 hasError] & 1) != 0 || (v378 & 7) == 4)
          {
            goto LABEL_2425;
          }

          if ((v378 >> 3) != 1)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          break;
        }

        if ((v378 & 7) != 2)
        {
          goto LABEL_2460;
        }

        v835 = 0;
        v836 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2460;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (1)
        {
          while (1)
          {
LABEL_1146:
            v379 = objc_msgSend_position(a1);
            if (v379 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_1194;
            }

            v380 = 0;
            v381 = 0;
            v382 = 0;
            while (1)
            {
              LOBYTE(v839) = 0;
              v383 = objc_msgSend_position(a1) + 1;
              if (v383 >= objc_msgSend_position(a1) && (v384 = objc_msgSend_position(a1) + 1, v384 <= [a1 length]))
              {
                v385 = [a1 data];
                [v385 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v382 |= (v839 & 0x7F) << v380;
              if ((v839 & 0x80) == 0)
              {
                break;
              }

              v380 += 7;
              v9 = v381++ >= 9;
              if (v9)
              {
                v382 = 0;
                goto LABEL_1159;
              }
            }

            if ([a1 hasError])
            {
              v382 = 0;
            }

LABEL_1159:
            if (([a1 hasError] & 1) != 0 || (v386 = v382 & 7, v386 == 4))
            {
LABEL_1194:
              v396 = [a1 hasError];
              PBReaderRecallMark();
              if ((v396 & 1) == 0)
              {
                PBReaderRecallMark();
                goto LABEL_1126;
              }

              goto LABEL_2460;
            }

            if ((v382 >> 3) == 2)
            {
              break;
            }

            if ((v382 >> 3) == 1)
            {
              if (v386 != 2)
              {
                goto LABEL_2454;
              }

              v839 = 0;
              v840 = 0;
              if (!PBReaderPlaceMark() || !GEOPDBrowseCategoryIsValid(a1))
              {
                goto LABEL_2454;
              }

LABEL_1166:
              PBReaderRecallMark();
            }

            else if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2454;
            }
          }

          if (v386 == 2)
          {
            v839 = 0;
            v840 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_2454;
            }

LABEL_1179:
            while (1)
            {
              v391 = objc_msgSend_position(a1);
              if (v391 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
              {
                goto LABEL_1166;
              }

              v392 = 0;
              while (1)
              {
                LOBYTE(v831) = 0;
                v393 = objc_msgSend_position(a1) + 1;
                if (v393 >= objc_msgSend_position(a1) && (v394 = objc_msgSend_position(a1) + 1, v394 <= [a1 length]))
                {
                  v395 = [a1 data];
                  [v395 getBytes:&v831 range:{objc_msgSend_position(a1), 1}];

                  [a1 setPosition:objc_msgSend_position(a1) + 1];
                }

                else
                {
                  [a1 _setError];
                }

                if ((v831 & 0x80000000) == 0)
                {
                  break;
                }

                v26 = v392++ > 8;
                if (v26)
                {
                  goto LABEL_1179;
                }
              }

              [a1 hasError];
            }
          }

          if ((v382 & 7) != 0)
          {
            goto LABEL_2454;
          }

          while (1)
          {
            LOBYTE(v839) = 0;
            v387 = objc_msgSend_position(a1) + 1;
            if (v387 >= objc_msgSend_position(a1) && (v388 = objc_msgSend_position(a1) + 1, v388 <= [a1 length]))
            {
              v389 = [a1 data];
              [v389 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v839 & 0x80000000) == 0)
            {
              break;
            }

            v390 = v386++;
            if (v390 > 8)
            {
              goto LABEL_1146;
            }
          }

          [a1 hasError];
        }

      case 0x15u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (1)
        {
          v648 = objc_msgSend_position(a1);
          if (v648 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v649 = 0;
          v650 = 0;
          v651 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v652 = objc_msgSend_position(a1) + 1;
            if (v652 >= objc_msgSend_position(a1) && (v653 = objc_msgSend_position(a1) + 1, v653 <= [a1 length]))
            {
              v654 = [a1 data];
              [v654 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v651 |= (v837 & 0x7F) << v649;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v649 += 7;
            v9 = v650++ >= 9;
            if (v9)
            {
              v655 = 0;
              goto LABEL_1937;
            }
          }

          v655 = [a1 hasError] ? 0 : v651;
LABEL_1937:
          if (([a1 hasError] & 1) != 0 || (v655 & 7) == 4)
          {
            goto LABEL_2448;
          }

          if ((v655 >> 3) != 1)
          {
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_2460;
            }

            continue;
          }

          if ((v655 & 7) != 2 || (PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_2460;
          }
        }

      case 0x16u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          v173 = objc_msgSend_position(a1);
          if (v173 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v174 = 0;
          v175 = 0;
          v176 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v177 = objc_msgSend_position(a1) + 1;
            if (v177 >= objc_msgSend_position(a1) && (v178 = objc_msgSend_position(a1) + 1, v178 <= [a1 length]))
            {
              v179 = [a1 data];
              [v179 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v176 |= (v837 & 0x7F) << v174;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v174 += 7;
            v9 = v175++ >= 9;
            if (v9)
            {
              v180 = 0;
              goto LABEL_541;
            }
          }

          if ([a1 hasError])
          {
            v180 = 0;
          }

          else
          {
            v180 = v176;
          }

LABEL_541:
          if (([a1 hasError] & 1) == 0 && (v180 & 7) != 4)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          goto LABEL_2448;
        }

      case 0x17u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          v341 = objc_msgSend_position(a1);
          if (v341 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v342 = 0;
          v343 = 0;
          v344 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v345 = objc_msgSend_position(a1) + 1;
            if (v345 >= objc_msgSend_position(a1) && (v346 = objc_msgSend_position(a1) + 1, v346 <= [a1 length]))
            {
              v347 = [a1 data];
              [v347 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v344 |= (v837 & 0x7F) << v342;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v342 += 7;
            v9 = v343++ >= 9;
            if (v9)
            {
              v348 = 0;
              goto LABEL_1055;
            }
          }

          if ([a1 hasError])
          {
            v348 = 0;
          }

          else
          {
            v348 = v344;
          }

LABEL_1055:
          if (([a1 hasError] & 1) == 0 && (v348 & 7) != 4)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          goto LABEL_2448;
        }

      case 0x19u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          v189 = objc_msgSend_position(a1);
          if (v189 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v190 = 0;
          v191 = 0;
          v192 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v193 = objc_msgSend_position(a1) + 1;
            if (v193 >= objc_msgSend_position(a1) && (v194 = objc_msgSend_position(a1) + 1, v194 <= [a1 length]))
            {
              v195 = [a1 data];
              [v195 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v192 |= (v837 & 0x7F) << v190;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v190 += 7;
            v9 = v191++ >= 9;
            if (v9)
            {
              v196 = 0;
              goto LABEL_583;
            }
          }

          if ([a1 hasError])
          {
            v196 = 0;
          }

          else
          {
            v196 = v192;
          }

LABEL_583:
          if (([a1 hasError] & 1) == 0 && (v196 & 7) != 4)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          goto LABEL_2448;
        }

      case 0x1Eu:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          v422 = objc_msgSend_position(a1);
          if (v422 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v423 = 0;
          v424 = 0;
          v425 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v426 = objc_msgSend_position(a1) + 1;
            if (v426 >= objc_msgSend_position(a1) && (v427 = objc_msgSend_position(a1) + 1, v427 <= [a1 length]))
            {
              v428 = [a1 data];
              [v428 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v425 |= (v837 & 0x7F) << v423;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v423 += 7;
            v9 = v424++ >= 9;
            if (v9)
            {
              v429 = 0;
              goto LABEL_1290;
            }
          }

          if ([a1 hasError])
          {
            v429 = 0;
          }

          else
          {
            v429 = v425;
          }

LABEL_1290:
          if (([a1 hasError] & 1) == 0 && (v429 & 7) != 4)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          goto LABEL_2448;
        }

      case 0x20u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          v181 = objc_msgSend_position(a1);
          if (v181 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v182 = 0;
          v183 = 0;
          v184 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v185 = objc_msgSend_position(a1) + 1;
            if (v185 >= objc_msgSend_position(a1) && (v186 = objc_msgSend_position(a1) + 1, v186 <= [a1 length]))
            {
              v187 = [a1 data];
              [v187 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v184 |= (v837 & 0x7F) << v182;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v182 += 7;
            v9 = v183++ >= 9;
            if (v9)
            {
              v188 = 0;
              goto LABEL_562;
            }
          }

          if ([a1 hasError])
          {
            v188 = 0;
          }

          else
          {
            v188 = v184;
          }

LABEL_562:
          if (([a1 hasError] & 1) == 0 && (v188 & 7) != 4)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          goto LABEL_2448;
        }

      case 0x22u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v837 = 0;
        v838 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
LABEL_1995:
        while (2)
        {
          v672 = objc_msgSend_position(a1);
          if (v672 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2040;
          }

          v673 = 0;
          v674 = 0;
          v675 = 0;
          while (1)
          {
            LOBYTE(v839) = 0;
            v676 = objc_msgSend_position(a1) + 1;
            if (v676 >= objc_msgSend_position(a1) && (v677 = objc_msgSend_position(a1) + 1, v677 <= [a1 length]))
            {
              v678 = [a1 data];
              [v678 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v675 |= (v839 & 0x7F) << v673;
            if ((v839 & 0x80) == 0)
            {
              break;
            }

            v673 += 7;
            v9 = v674++ >= 9;
            if (v9)
            {
              v679 = 0;
              goto LABEL_2009;
            }
          }

          if ([a1 hasError])
          {
            v679 = 0;
          }

          else
          {
            v679 = v675;
          }

LABEL_2009:
          if (([a1 hasError] & 1) == 0)
          {
            v680 = v679 & 7;
            if (v680 != 4)
            {
              v681 = v679 >> 3;
              if ((v679 >> 3) <= 2)
              {
                if (v681 == 1)
                {
                  if ((v679 & 7) == 0)
                  {
                    v682 = 0;
                    while (1)
                    {
                      LOBYTE(v839) = 0;
                      v683 = objc_msgSend_position(a1) + 1;
                      if (v683 >= objc_msgSend_position(a1) && (v684 = objc_msgSend_position(a1) + 1, v684 <= [a1 length]))
                      {
                        v685 = [a1 data];
                        [v685 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                        [a1 setPosition:objc_msgSend_position(a1) + 1];
                      }

                      else
                      {
                        [a1 _setError];
                      }

                      if ((v839 & 0x80000000) == 0)
                      {
                        break;
                      }

                      v26 = v682++ > 8;
                      if (v26)
                      {
                        goto LABEL_1995;
                      }
                    }

                    [a1 hasError];
                    continue;
                  }

                  goto LABEL_2460;
                }

                if (v681 == 2 && v680 != 2)
                {
                  goto LABEL_2460;
                }
              }

              else
              {
                if (v681 == 3)
                {
                  if (v680 == 2)
                  {
                    v839 = 0;
                    v840 = 0;
                    if (PBReaderPlaceMark())
                    {
                      if (GEOLatLngIsValid(a1))
                      {
                        PBReaderRecallMark();
                        continue;
                      }
                    }
                  }

                  goto LABEL_2460;
                }

                if (v681 == 4)
                {
                  if (v680 != 2)
                  {
                    goto LABEL_2460;
                  }
                }

                else if (v681 == 5 && v680 != 2)
                {
                  goto LABEL_2460;
                }
              }

              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_2460;
              }

              continue;
            }
          }

          goto LABEL_2040;
        }

      case 0x23u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          v664 = objc_msgSend_position(a1);
          if (v664 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v665 = 0;
          v666 = 0;
          v667 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v668 = objc_msgSend_position(a1) + 1;
            if (v668 >= objc_msgSend_position(a1) && (v669 = objc_msgSend_position(a1) + 1, v669 <= [a1 length]))
            {
              v670 = [a1 data];
              [v670 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v667 |= (v837 & 0x7F) << v665;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v665 += 7;
            v9 = v666++ >= 9;
            if (v9)
            {
              v671 = 0;
              goto LABEL_1988;
            }
          }

          if ([a1 hasError])
          {
            v671 = 0;
          }

          else
          {
            v671 = v667;
          }

LABEL_1988:
          if (([a1 hasError] & 1) == 0 && (v671 & 7) != 4)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          goto LABEL_2448;
        }

      case 0x24u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v833 = 0;
        v834 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v837 = objc_msgSend_position(a1);
        v838 = [a1 length];
LABEL_897:
        while (2)
        {
          v288 = objc_msgSend_position(a1);
          if (v288 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2425;
          }

          v289 = 0;
          v290 = 0;
          v291 = 0;
          while (1)
          {
            LOBYTE(v841) = 0;
            v292 = objc_msgSend_position(a1) + 1;
            if (v292 >= objc_msgSend_position(a1) && (v293 = objc_msgSend_position(a1) + 1, v293 <= [a1 length]))
            {
              v294 = [a1 data];
              [v294 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v291 |= (v841 & 0x7F) << v289;
            if ((v841 & 0x80) == 0)
            {
              break;
            }

            v289 += 7;
            v9 = v290++ >= 9;
            if (v9)
            {
              v295 = 0;
              goto LABEL_911;
            }
          }

          if ([a1 hasError])
          {
            v295 = 0;
          }

          else
          {
            v295 = v291;
          }

LABEL_911:
          if ([a1 hasError])
          {
            goto LABEL_2425;
          }

          v296 = v295 & 7;
          if (v296 == 4)
          {
            goto LABEL_2425;
          }

          v297 = v295 >> 3;
          if ((v295 >> 3) != 3)
          {
            if (v297 != 2)
            {
              if (v297 != 1)
              {
                if ((PBReaderSkipValueWithTag() & 1) == 0)
                {
                  goto LABEL_2460;
                }

                continue;
              }

              if ((v295 & 7) == 0)
              {
                v298 = 0;
                while (1)
                {
                  LOBYTE(v841) = 0;
                  v299 = objc_msgSend_position(a1) + 1;
                  if (v299 >= objc_msgSend_position(a1) && (v300 = objc_msgSend_position(a1) + 1, v300 <= [a1 length]))
                  {
                    v301 = [a1 data];
                    [v301 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                    [a1 setPosition:objc_msgSend_position(a1) + 1];
                  }

                  else
                  {
                    [a1 _setError];
                  }

                  if ((v841 & 0x80000000) == 0)
                  {
                    break;
                  }

                  v26 = v298++ > 8;
                  if (v26)
                  {
                    goto LABEL_897;
                  }
                }

                [a1 hasError];
                continue;
              }

              goto LABEL_2460;
            }

            if (v296 != 2)
            {
              goto LABEL_2460;
            }

            v835 = 0;
            v836 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_2460;
            }

            v841 = objc_msgSend_position(a1);
            v842 = [a1 length];
            while (1)
            {
              while (1)
              {
LABEL_929:
                v302 = objc_msgSend_position(a1);
                if (v302 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
                {
                  goto LABEL_1012;
                }

                v303 = 0;
                v304 = 0;
                v305 = 0;
                while (1)
                {
                  LOBYTE(v839) = 0;
                  v306 = objc_msgSend_position(a1) + 1;
                  if (v306 >= objc_msgSend_position(a1) && (v307 = objc_msgSend_position(a1) + 1, v307 <= [a1 length]))
                  {
                    v308 = [a1 data];
                    [v308 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                    [a1 setPosition:objc_msgSend_position(a1) + 1];
                  }

                  else
                  {
                    [a1 _setError];
                  }

                  v305 |= (v839 & 0x7F) << v303;
                  if ((v839 & 0x80) == 0)
                  {
                    break;
                  }

                  v303 += 7;
                  v9 = v304++ >= 9;
                  if (v9)
                  {
                    v309 = 0;
                    goto LABEL_943;
                  }
                }

                v309 = [a1 hasError] ? 0 : v305;
LABEL_943:
                if ([a1 hasError])
                {
                  goto LABEL_1012;
                }

                v310 = v309 & 7;
                if (v310 == 4)
                {
                  goto LABEL_1012;
                }

                v311 = v309 >> 3;
                if ((v309 >> 3) != 3)
                {
                  break;
                }

                if (v310 != 2)
                {
                  goto LABEL_2454;
                }

                v839 = 0;
                v840 = 0;
                if (!PBReaderPlaceMark() || !GEOMapRegionIsValid(a1))
                {
                  goto LABEL_2454;
                }

LABEL_965:
                PBReaderRecallMark();
              }

              if (v311 == 2)
              {
                if (v310 != 2)
                {
                  goto LABEL_2454;
                }

                v839 = 0;
                v840 = 0;
                if (!PBReaderPlaceMark() || !GEOPDSpatialPlaceLookupResponseIsValid(a1, v316))
                {
                  goto LABEL_2454;
                }

                goto LABEL_965;
              }

              if (v311 == 1)
              {
                if ((v309 & 7) != 0)
                {
                  goto LABEL_2454;
                }

                v312 = 0;
                while (1)
                {
                  LOBYTE(v839) = 0;
                  v313 = objc_msgSend_position(a1) + 1;
                  if (v313 >= objc_msgSend_position(a1) && (v314 = objc_msgSend_position(a1) + 1, v314 <= [a1 length]))
                  {
                    v315 = [a1 data];
                    [v315 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                    [a1 setPosition:objc_msgSend_position(a1) + 1];
                  }

                  else
                  {
                    [a1 _setError];
                  }

                  if ((v839 & 0x80000000) == 0)
                  {
                    break;
                  }

                  v26 = v312++ > 8;
                  if (v26)
                  {
                    goto LABEL_929;
                  }
                }

                [a1 hasError];
              }

              else if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_2454;
              }
            }
          }

          break;
        }

        if (v296 != 2)
        {
          goto LABEL_2460;
        }

        v835 = 0;
        v836 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2460;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (1)
        {
          while (1)
          {
LABEL_972:
            v317 = objc_msgSend_position(a1);
            if (v317 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_1012;
            }

            v318 = 0;
            v319 = 0;
            v320 = 0;
            while (1)
            {
              LOBYTE(v839) = 0;
              v321 = objc_msgSend_position(a1) + 1;
              if (v321 >= objc_msgSend_position(a1) && (v322 = objc_msgSend_position(a1) + 1, v322 <= [a1 length]))
              {
                v323 = [a1 data];
                [v323 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v320 |= (v839 & 0x7F) << v318;
              if ((v839 & 0x80) == 0)
              {
                break;
              }

              v318 += 7;
              v9 = v319++ >= 9;
              if (v9)
              {
                v324 = 0;
                goto LABEL_986;
              }
            }

            v324 = [a1 hasError] ? 0 : v320;
LABEL_986:
            if (([a1 hasError] & 1) != 0 || (v325 = v324 & 7, v325 == 4))
            {
LABEL_1012:
              v332 = [a1 hasError];
              PBReaderRecallMark();
              if ((v332 & 1) == 0)
              {
                PBReaderRecallMark();
                goto LABEL_897;
              }

              goto LABEL_2460;
            }

            v326 = v324 >> 3;
            if ((v324 >> 3) != 3)
            {
              break;
            }

            if (v325 != 2)
            {
              goto LABEL_2454;
            }

            v839 = 0;
            v840 = 0;
            if (!PBReaderPlaceMark() || !GEOMapRegionIsValid(a1))
            {
              goto LABEL_2454;
            }

LABEL_1008:
            PBReaderRecallMark();
          }

          if (v326 == 2)
          {
            if (v325 != 2)
            {
              goto LABEL_2454;
            }

            v839 = 0;
            v840 = 0;
            if (!PBReaderPlaceMark() || !GEOPDSpatialEventLookupResponseIsValid(a1, v331))
            {
              goto LABEL_2454;
            }

            goto LABEL_1008;
          }

          if (v326 == 1)
          {
            if ((v324 & 7) != 0)
            {
              goto LABEL_2454;
            }

            v327 = 0;
            while (1)
            {
              LOBYTE(v839) = 0;
              v328 = objc_msgSend_position(a1) + 1;
              if (v328 >= objc_msgSend_position(a1) && (v329 = objc_msgSend_position(a1) + 1, v329 <= [a1 length]))
              {
                v330 = [a1 data];
                [v330 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v839 & 0x80000000) == 0)
              {
                break;
              }

              v26 = v327++ > 8;
              if (v26)
              {
                goto LABEL_972;
              }
            }

            [a1 hasError];
          }

          else if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_2454;
          }
        }

      case 0x25u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v837 = 0;
        v838 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          while (2)
          {
            v397 = objc_msgSend_position(a1);
            if (v397 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_2040;
            }

            v398 = 0;
            v399 = 0;
            v400 = 0;
            while (1)
            {
              LOBYTE(v839) = 0;
              v401 = objc_msgSend_position(a1) + 1;
              if (v401 >= objc_msgSend_position(a1) && (v402 = objc_msgSend_position(a1) + 1, v402 <= [a1 length]))
              {
                v403 = [a1 data];
                [v403 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v400 |= (v839 & 0x7F) << v398;
              if ((v839 & 0x80) == 0)
              {
                break;
              }

              v398 += 7;
              v9 = v399++ >= 9;
              if (v9)
              {
                v404 = 0;
                goto LABEL_1213;
              }
            }

            if ([a1 hasError])
            {
              v404 = 0;
            }

            else
            {
              v404 = v400;
            }

LABEL_1213:
            if (([a1 hasError] & 1) != 0 || (v404 & 7) == 4)
            {
              goto LABEL_2040;
            }

            if ((v404 >> 3) != 1)
            {
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_2460;
              }

              continue;
            }

            break;
          }

          if ((v404 & 7) == 2)
          {
            v839 = 0;
            v840 = 0;
            if (PBReaderPlaceMark())
            {
              if (GEOPDPlaceContextMetadataIsValid(a1, v405))
              {
                PBReaderRecallMark();
                continue;
              }
            }
          }

          goto LABEL_2460;
        }

      case 0x26u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v837 = 0;
        v838 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          while (2)
          {
            v508 = objc_msgSend_position(a1);
            if (v508 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_2040;
            }

            v509 = 0;
            v510 = 0;
            v511 = 0;
            while (1)
            {
              LOBYTE(v839) = 0;
              v512 = objc_msgSend_position(a1) + 1;
              if (v512 >= objc_msgSend_position(a1) && (v513 = objc_msgSend_position(a1) + 1, v513 <= [a1 length]))
              {
                v514 = [a1 data];
                [v514 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v511 |= (v839 & 0x7F) << v509;
              if ((v839 & 0x80) == 0)
              {
                break;
              }

              v509 += 7;
              v9 = v510++ >= 9;
              if (v9)
              {
                v515 = 0;
                goto LABEL_1548;
              }
            }

            if ([a1 hasError])
            {
              v515 = 0;
            }

            else
            {
              v515 = v511;
            }

LABEL_1548:
            if (([a1 hasError] & 1) != 0 || (v515 & 7) == 4)
            {
              goto LABEL_2040;
            }

            if ((v515 >> 3) != 1)
            {
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_2460;
              }

              continue;
            }

            break;
          }

          if ((v515 & 7) == 2)
          {
            v839 = 0;
            v840 = 0;
            if (PBReaderPlaceMark())
            {
              if (GEOPDComponentIsValid(a1, v516))
              {
                PBReaderRecallMark();
                continue;
              }
            }
          }

          goto LABEL_2460;
        }

      case 0x27u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          v406 = objc_msgSend_position(a1);
          if (v406 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v407 = 0;
          v408 = 0;
          v409 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v410 = objc_msgSend_position(a1) + 1;
            if (v410 >= objc_msgSend_position(a1) && (v411 = objc_msgSend_position(a1) + 1, v411 <= [a1 length]))
            {
              v412 = [a1 data];
              [v412 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v409 |= (v837 & 0x7F) << v407;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v407 += 7;
            v9 = v408++ >= 9;
            if (v9)
            {
              v413 = 0;
              goto LABEL_1239;
            }
          }

          if ([a1 hasError])
          {
            v413 = 0;
          }

          else
          {
            v413 = v409;
          }

LABEL_1239:
          if (([a1 hasError] & 1) == 0 && (v413 & 7) != 4)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          goto LABEL_2448;
        }

      case 0x28u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v833 = 0;
        v834 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v837 = objc_msgSend_position(a1);
        v838 = [a1 length];
LABEL_2259:
        while (2)
        {
          v760 = objc_msgSend_position(a1);
          if (v760 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2425;
          }

          v761 = 0;
          v762 = 0;
          v763 = 0;
          while (1)
          {
            LOBYTE(v841) = 0;
            v764 = objc_msgSend_position(a1) + 1;
            if (v764 >= objc_msgSend_position(a1) && (v765 = objc_msgSend_position(a1) + 1, v765 <= [a1 length]))
            {
              v766 = [a1 data];
              [v766 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v763 |= (v841 & 0x7F) << v761;
            if ((v841 & 0x80) == 0)
            {
              break;
            }

            v761 += 7;
            v9 = v762++ >= 9;
            if (v9)
            {
              v767 = 0;
              goto LABEL_2273;
            }
          }

          if ([a1 hasError])
          {
            v767 = 0;
          }

          else
          {
            v767 = v763;
          }

LABEL_2273:
          if (([a1 hasError] & 1) != 0 || (v767 & 7) == 4)
          {
            goto LABEL_2425;
          }

          if ((v767 >> 3) != 1)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          break;
        }

        if ((v767 & 7) != 2)
        {
          goto LABEL_2460;
        }

        v835 = 0;
        v836 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2460;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (1)
        {
          while (1)
          {
            v768 = objc_msgSend_position(a1);
            if (v768 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_2309;
            }

            v769 = 0;
            v770 = 0;
            v771 = 0;
            while (1)
            {
              LOBYTE(v839) = 0;
              v772 = objc_msgSend_position(a1) + 1;
              if (v772 >= objc_msgSend_position(a1) && (v773 = objc_msgSend_position(a1) + 1, v773 <= [a1 length]))
              {
                v774 = [a1 data];
                [v774 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v771 |= (v839 & 0x7F) << v769;
              if ((v839 & 0x80) == 0)
              {
                break;
              }

              v769 += 7;
              v9 = v770++ >= 9;
              if (v9)
              {
                v775 = 0;
                goto LABEL_2293;
              }
            }

            v775 = [a1 hasError] ? 0 : v771;
LABEL_2293:
            if (([a1 hasError] & 1) != 0 || (v776 = v775 & 7, v776 == 4))
            {
LABEL_2309:
              v779 = [a1 hasError];
              PBReaderRecallMark();
              if ((v779 & 1) == 0)
              {
                PBReaderRecallMark();
                goto LABEL_2259;
              }

              goto LABEL_2460;
            }

            if ((v775 >> 3) != 2)
            {
              break;
            }

            if (v776 != 2)
            {
              goto LABEL_2454;
            }

            v839 = 0;
            v840 = 0;
            if (!PBReaderPlaceMark() || !GEOPDCategoryInformationIsValid(a1, v778))
            {
              goto LABEL_2454;
            }

LABEL_2304:
            PBReaderRecallMark();
          }

          if ((v775 >> 3) == 1)
          {
            if (v776 != 2)
            {
              goto LABEL_2454;
            }

            v839 = 0;
            v840 = 0;
            if (!PBReaderPlaceMark() || !GEOPDCategoryLookupParametersIsValid(a1, v777))
            {
              goto LABEL_2454;
            }

            goto LABEL_2304;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_2454;
          }
        }

      case 0x29u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v833 = 0;
        v834 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v837 = objc_msgSend_position(a1);
        v838 = [a1 length];
LABEL_590:
        while (2)
        {
          while (2)
          {
            v197 = objc_msgSend_position(a1);
            if (v197 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_2425;
            }

            v198 = 0;
            v199 = 0;
            v200 = 0;
            while (1)
            {
              LOBYTE(v841) = 0;
              v201 = objc_msgSend_position(a1) + 1;
              if (v201 >= objc_msgSend_position(a1) && (v202 = objc_msgSend_position(a1) + 1, v202 <= [a1 length]))
              {
                v203 = [a1 data];
                [v203 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v200 |= (v841 & 0x7F) << v198;
              if ((v841 & 0x80) == 0)
              {
                break;
              }

              v198 += 7;
              v9 = v199++ >= 9;
              if (v9)
              {
                v204 = 0;
                goto LABEL_604;
              }
            }

            if ([a1 hasError])
            {
              v204 = 0;
            }

            else
            {
              v204 = v200;
            }

LABEL_604:
            if (([a1 hasError] & 1) != 0 || (v204 & 7) == 4)
            {
              goto LABEL_2425;
            }

            if ((v204 >> 3) == 2)
            {
              if ((v204 & 7) != 2)
              {
                goto LABEL_2460;
              }

              v835 = 0;
              v836 = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_2460;
              }

              v841 = objc_msgSend_position(a1);
              v842 = [a1 length];
              while (1)
              {
                while (1)
                {
LABEL_621:
                  v209 = objc_msgSend_position(a1);
                  if (v209 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
                  {
                    goto LABEL_658;
                  }

                  v210 = 0;
                  v211 = 0;
                  v212 = 0;
                  while (1)
                  {
                    LOBYTE(v839) = 0;
                    v213 = objc_msgSend_position(a1) + 1;
                    if (v213 >= objc_msgSend_position(a1) && (v214 = objc_msgSend_position(a1) + 1, v214 <= [a1 length]))
                    {
                      v215 = [a1 data];
                      [v215 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                      [a1 setPosition:objc_msgSend_position(a1) + 1];
                    }

                    else
                    {
                      [a1 _setError];
                    }

                    v212 |= (v839 & 0x7F) << v210;
                    if ((v839 & 0x80) == 0)
                    {
                      break;
                    }

                    v210 += 7;
                    v9 = v211++ >= 9;
                    if (v9)
                    {
                      v216 = 0;
                      goto LABEL_635;
                    }
                  }

                  v216 = [a1 hasError] ? 0 : v212;
LABEL_635:
                  if (([a1 hasError] & 1) != 0 || (v216 & 7) == 4)
                  {
LABEL_658:
                    v221 = [a1 hasError];
                    PBReaderRecallMark();
                    if ((v221 & 1) == 0)
                    {
                      PBReaderRecallMark();
                      goto LABEL_590;
                    }

                    goto LABEL_2460;
                  }

                  if ((v216 >> 3) == 2)
                  {
                    break;
                  }

                  if ((v216 >> 3) == 1)
                  {
                    if ((v216 & 7) != 0)
                    {
                      goto LABEL_2454;
                    }

                    v217 = 0;
                    while (1)
                    {
                      LOBYTE(v839) = 0;
                      v218 = objc_msgSend_position(a1) + 1;
                      if (v218 >= objc_msgSend_position(a1) && (v219 = objc_msgSend_position(a1) + 1, v219 <= [a1 length]))
                      {
                        v220 = [a1 data];
                        [v220 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                        [a1 setPosition:objc_msgSend_position(a1) + 1];
                      }

                      else
                      {
                        [a1 _setError];
                      }

                      if ((v839 & 0x80000000) == 0)
                      {
                        break;
                      }

                      v26 = v217++ > 8;
                      if (v26)
                      {
                        goto LABEL_621;
                      }
                    }

                    [a1 hasError];
                  }

                  else if ((PBReaderSkipValueWithTag() & 1) == 0)
                  {
                    goto LABEL_2454;
                  }
                }

                if ((v216 & 7) != 2)
                {
                  goto LABEL_2454;
                }

                v839 = 0;
                v840 = 0;
                if (!PBReaderPlaceMark() || !GEOPDMerchantBrandLookupResponseIsValid(a1))
                {
                  goto LABEL_2454;
                }

                PBReaderRecallMark();
              }
            }

            if ((v204 >> 3) != 1)
            {
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_2460;
              }

              continue;
            }

            break;
          }

          if ((v204 & 7) == 0)
          {
            v205 = 0;
            while (1)
            {
              LOBYTE(v841) = 0;
              v206 = objc_msgSend_position(a1) + 1;
              if (v206 >= objc_msgSend_position(a1) && (v207 = objc_msgSend_position(a1) + 1, v207 <= [a1 length]))
              {
                v208 = [a1 data];
                [v208 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v841 & 0x80000000) == 0)
              {
                break;
              }

              v26 = v205++ > 8;
              if (v26)
              {
                goto LABEL_590;
              }
            }

            [a1 hasError];
            continue;
          }

          goto LABEL_2460;
        }

      case 0x2Au:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          v568 = objc_msgSend_position(a1);
          if (v568 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v569 = 0;
          v570 = 0;
          v571 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v572 = objc_msgSend_position(a1) + 1;
            if (v572 >= objc_msgSend_position(a1) && (v573 = objc_msgSend_position(a1) + 1, v573 <= [a1 length]))
            {
              v574 = [a1 data];
              [v574 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v571 |= (v837 & 0x7F) << v569;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v569 += 7;
            v9 = v570++ >= 9;
            if (v9)
            {
              v575 = 0;
              goto LABEL_1723;
            }
          }

          if ([a1 hasError])
          {
            v575 = 0;
          }

          else
          {
            v575 = v571;
          }

LABEL_1723:
          if (([a1 hasError] & 1) == 0 && (v575 & 7) != 4)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          goto LABEL_2448;
        }

      case 0x2Bu:
        if (v11 != 2 || !PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v833 = objc_msgSend_position(a1, 0, 0);
        v834 = [a1 length];
LABEL_2119:
        while (2)
        {
          v714 = objc_msgSend_position(a1);
          if (v714 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2254;
          }

          v715 = 0;
          v716 = 0;
          v717 = 0;
          while (1)
          {
            LOBYTE(v841) = 0;
            v718 = objc_msgSend_position(a1) + 1;
            if (v718 >= objc_msgSend_position(a1) && (v719 = objc_msgSend_position(a1) + 1, v719 <= [a1 length]))
            {
              v720 = [a1 data];
              [v720 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v717 |= (v841 & 0x7F) << v715;
            if ((v841 & 0x80) == 0)
            {
              break;
            }

            v715 += 7;
            v9 = v716++ >= 9;
            if (v9)
            {
              v721 = 0;
              goto LABEL_2133;
            }
          }

          if ([a1 hasError])
          {
            v721 = 0;
          }

          else
          {
            v721 = v717;
          }

LABEL_2133:
          if ([a1 hasError])
          {
            goto LABEL_2254;
          }

          v722 = v721 & 7;
          if (v722 == 4)
          {
            goto LABEL_2254;
          }

          if ((v721 >> 3) == 2)
          {
            if (v722 != 2)
            {
              goto LABEL_2460;
            }
          }

          else if ((v721 >> 3) == 1)
          {
            if (v722 != 2)
            {
              goto LABEL_2460;
            }

            v831 = 0;
            v832 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_2460;
            }

            v837 = objc_msgSend_position(a1);
            v838 = [a1 length];
            while (1)
            {
              while (1)
              {
LABEL_2140:
                v723 = objc_msgSend_position(a1);
                if (v723 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
                {
                  goto LABEL_2252;
                }

                v724 = 0;
                v725 = 0;
                v726 = 0;
                while (1)
                {
                  LOBYTE(v841) = 0;
                  v727 = objc_msgSend_position(a1) + 1;
                  if (v727 >= objc_msgSend_position(a1) && (v728 = objc_msgSend_position(a1) + 1, v728 <= [a1 length]))
                  {
                    v729 = [a1 data];
                    [v729 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                    [a1 setPosition:objc_msgSend_position(a1) + 1];
                  }

                  else
                  {
                    [a1 _setError];
                  }

                  v726 |= (v841 & 0x7F) << v724;
                  if ((v841 & 0x80) == 0)
                  {
                    break;
                  }

                  v724 += 7;
                  v9 = v725++ >= 9;
                  if (v9)
                  {
                    v730 = 0;
                    goto LABEL_2154;
                  }
                }

                v730 = [a1 hasError] ? 0 : v726;
LABEL_2154:
                if (([a1 hasError] & 1) != 0 || (v731 = v730 & 7, v731 == 4))
                {
LABEL_2252:
                  v758 = [a1 hasError];
                  PBReaderRecallMark();
                  if ((v758 & 1) == 0)
                  {
                    PBReaderRecallMark();
                    goto LABEL_2119;
                  }

                  goto LABEL_2460;
                }

                v732 = v730 >> 3;
                if ((v730 >> 3) <= 3)
                {
                  break;
                }

                if (v732 > 5)
                {
                  if (v732 != 6)
                  {
                    if (v732 == 7)
                    {
                      if (v731 != 2)
                      {
                        goto LABEL_2459;
                      }

                      v835 = 0;
                      v836 = 0;
                      if (!PBReaderPlaceMark())
                      {
                        goto LABEL_2459;
                      }

                      v841 = objc_msgSend_position(a1);
                      v842 = [a1 length];
                      while (1)
                      {
LABEL_2176:
                        v733 = objc_msgSend_position(a1);
                        if (v733 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
                        {
                          goto LABEL_2243;
                        }

                        v734 = 0;
                        v735 = 0;
                        v736 = 0;
                        while (1)
                        {
                          LOBYTE(v839) = 0;
                          v737 = objc_msgSend_position(a1) + 1;
                          if (v737 >= objc_msgSend_position(a1) && (v738 = objc_msgSend_position(a1) + 1, v738 <= [a1 length]))
                          {
                            v739 = [a1 data];
                            [v739 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                            [a1 setPosition:objc_msgSend_position(a1) + 1];
                          }

                          else
                          {
                            [a1 _setError];
                          }

                          v736 |= (v839 & 0x7F) << v734;
                          if ((v839 & 0x80) == 0)
                          {
                            break;
                          }

                          v734 += 7;
                          v9 = v735++ >= 9;
                          if (v9)
                          {
                            v740 = 0;
                            goto LABEL_2190;
                          }
                        }

                        v740 = [a1 hasError] ? 0 : v736;
LABEL_2190:
                        if ([a1 hasError])
                        {
                          goto LABEL_2243;
                        }

                        v741 = v740 & 7;
                        if (v741 == 4)
                        {
                          goto LABEL_2243;
                        }

                        v742 = v740 >> 3;
                        if ((v740 >> 3) == 3)
                        {
                          break;
                        }

                        if (v742 != 2 && v742 != 1)
                        {
                          goto LABEL_2200;
                        }

                        if (v741 != 2)
                        {
                          goto LABEL_2458;
                        }

                        v839 = 0;
                        v840 = 0;
                        if (!PBReaderPlaceMark() || !GEOPDGuidesLocationEntryIsValid(a1, v743))
                        {
                          goto LABEL_2458;
                        }

                        PBReaderRecallMark();
                      }

                      if (v741 != 2)
                      {
                        goto LABEL_2458;
                      }

LABEL_2200:
                      if ((PBReaderSkipValueWithTag() & 1) == 0)
                      {
                        goto LABEL_2458;
                      }

                      goto LABEL_2176;
                    }

                    goto LABEL_2246;
                  }

                  if (v731 != 2)
                  {
                    goto LABEL_2459;
                  }

                  v835 = 0;
                  v836 = 0;
                  if (!PBReaderPlaceMark())
                  {
                    goto LABEL_2459;
                  }

                  v841 = objc_msgSend_position(a1);
                  v842 = [a1 length];
                  while (1)
                  {
                    v748 = objc_msgSend_position(a1);
                    if (v748 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
                    {
                      break;
                    }

                    v749 = 0;
                    v750 = 0;
                    v751 = 0;
                    while (1)
                    {
                      LOBYTE(v839) = 0;
                      v752 = objc_msgSend_position(a1) + 1;
                      if (v752 >= objc_msgSend_position(a1) && (v753 = objc_msgSend_position(a1) + 1, v753 <= [a1 length]))
                      {
                        v754 = [a1 data];
                        [v754 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                        [a1 setPosition:objc_msgSend_position(a1) + 1];
                      }

                      else
                      {
                        [a1 _setError];
                      }

                      v751 |= (v839 & 0x7F) << v749;
                      if ((v839 & 0x80) == 0)
                      {
                        break;
                      }

                      v749 += 7;
                      v9 = v750++ >= 9;
                      if (v9)
                      {
                        v755 = 0;
                        goto LABEL_2234;
                      }
                    }

                    v755 = [a1 hasError] ? 0 : v751;
LABEL_2234:
                    if (([a1 hasError] & 1) != 0 || (v755 & 7) == 4)
                    {
                      break;
                    }

                    if ((v755 >> 3) == 1)
                    {
                      if ((v755 & 7) != 2)
                      {
                        goto LABEL_2458;
                      }

                      v839 = 0;
                      v840 = 0;
                      if (!PBReaderPlaceMark() || !GEOPDMapsIdentifierIsValid(a1, v756))
                      {
                        goto LABEL_2458;
                      }

                      PBReaderRecallMark();
                    }

                    else if ((PBReaderSkipValueWithTag() & 1) == 0)
                    {
                      goto LABEL_2458;
                    }
                  }

LABEL_2243:
                  v757 = [a1 hasError];
                  PBReaderRecallMark();
                  if (v757)
                  {
                    goto LABEL_2459;
                  }
                }

                else
                {
                  if (v732 != 4)
                  {
                    if (v732 == 5)
                    {
                      if (v731 != 2)
                      {
                        goto LABEL_2459;
                      }

                      v841 = 0;
                      v842 = 0;
                      if (!PBReaderPlaceMark() || !GEOPDPublisherSuggestionResultIsValid(a1))
                      {
                        goto LABEL_2459;
                      }

                      goto LABEL_2244;
                    }

                    goto LABEL_2246;
                  }

                  if (v731 != 2)
                  {
                    goto LABEL_2459;
                  }

                  v841 = 0;
                  v842 = 0;
                  if (!PBReaderPlaceMark() || !GEOPDCollectionSuggestionResultIsValid(a1))
                  {
                    goto LABEL_2459;
                  }
                }

LABEL_2244:
                PBReaderRecallMark();
              }

              switch(v732)
              {
                case 1:
                  if ((v730 & 7) != 0)
                  {
                    goto LABEL_2459;
                  }

                  v744 = 0;
                  while (1)
                  {
                    LOBYTE(v841) = 0;
                    v745 = objc_msgSend_position(a1) + 1;
                    if (v745 >= objc_msgSend_position(a1) && (v746 = objc_msgSend_position(a1) + 1, v746 <= [a1 length]))
                    {
                      v747 = [a1 data];
                      [v747 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                      [a1 setPosition:objc_msgSend_position(a1) + 1];
                    }

                    else
                    {
                      [a1 _setError];
                    }

                    if ((v841 & 0x80000000) == 0)
                    {
                      break;
                    }

                    v26 = v744++ > 8;
                    if (v26)
                    {
                      goto LABEL_2140;
                    }
                  }

                  [a1 hasError];
                  break;
                case 2:
                  if (v731 != 2)
                  {
                    goto LABEL_2459;
                  }

                  goto LABEL_2246;
                case 3:
                  if (v731 != 2)
                  {
                    goto LABEL_2459;
                  }

                  v841 = 0;
                  v842 = 0;
                  if (!PBReaderPlaceMark() || !GEOPDSearchBrowseCategorySuggestionResultIsValid(a1))
                  {
                    goto LABEL_2459;
                  }

                  goto LABEL_2244;
                default:
LABEL_2246:
                  if ((PBReaderSkipValueWithTag() & 1) == 0)
                  {
                    goto LABEL_2459;
                  }

                  break;
              }
            }
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_2460;
          }

          continue;
        }

      case 0x2Cu:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v841 = 0;
        v842 = 0;
        if (!PBReaderPlaceMark() || (GEOPDCollectionSuggestionResultIsValid(a1) & 1) == 0)
        {
          goto LABEL_2461;
        }

        goto LABEL_2449;
      case 0x2Du:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v837 = 0;
        v838 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          while (2)
          {
            v517 = objc_msgSend_position(a1);
            if (v517 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_2040;
            }

            v518 = 0;
            v519 = 0;
            v520 = 0;
            while (1)
            {
              LOBYTE(v839) = 0;
              v521 = objc_msgSend_position(a1) + 1;
              if (v521 >= objc_msgSend_position(a1) && (v522 = objc_msgSend_position(a1) + 1, v522 <= [a1 length]))
              {
                v523 = [a1 data];
                [v523 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v520 |= (v839 & 0x7F) << v518;
              if ((v839 & 0x80) == 0)
              {
                break;
              }

              v518 += 7;
              v9 = v519++ >= 9;
              if (v9)
              {
                v524 = 0;
                goto LABEL_1578;
              }
            }

            if ([a1 hasError])
            {
              v524 = 0;
            }

            else
            {
              v524 = v520;
            }

LABEL_1578:
            if ([a1 hasError])
            {
              goto LABEL_2040;
            }

            v525 = v524 & 7;
            if (v525 == 4)
            {
              goto LABEL_2040;
            }

            if ((v524 >> 3) == 2)
            {
              if (v525 != 2)
              {
                goto LABEL_2460;
              }

              v839 = 0;
              v840 = 0;
              if (!PBReaderPlaceMark() || !GEOPDMapsIdentifierIsValid(a1, v526))
              {
                goto LABEL_2460;
              }

LABEL_1589:
              PBReaderRecallMark();
              continue;
            }

            break;
          }

          if ((v524 >> 3) != 1)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          break;
        }

        if (v525 == 2)
        {
          v839 = 0;
          v840 = 0;
          if (PBReaderPlaceMark())
          {
            if (GEOPDAllCollectionsViewResultFilterIsValid(a1))
            {
              goto LABEL_1589;
            }
          }
        }

LABEL_2460:
        PBReaderRecallMark();
LABEL_2461:
        PBReaderRecallMark();
        return 0;
      case 0x2Eu:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v837 = 0;
        v838 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          while (2)
          {
            v145 = objc_msgSend_position(a1);
            if (v145 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_2040;
            }

            v146 = 0;
            v147 = 0;
            v148 = 0;
            while (1)
            {
              LOBYTE(v839) = 0;
              v149 = objc_msgSend_position(a1) + 1;
              if (v149 >= objc_msgSend_position(a1) && (v150 = objc_msgSend_position(a1) + 1, v150 <= [a1 length]))
              {
                v151 = [a1 data];
                [v151 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v148 |= (v839 & 0x7F) << v146;
              if ((v839 & 0x80) == 0)
              {
                break;
              }

              v146 += 7;
              v9 = v147++ >= 9;
              if (v9)
              {
                v152 = 0;
                goto LABEL_454;
              }
            }

            if ([a1 hasError])
            {
              v152 = 0;
            }

            else
            {
              v152 = v148;
            }

LABEL_454:
            if ([a1 hasError])
            {
              goto LABEL_2040;
            }

            v153 = v152 & 7;
            if (v153 == 4)
            {
              goto LABEL_2040;
            }

            v154 = v152 >> 3;
            if ((v152 >> 3) == 3)
            {
              if (v153 != 2)
              {
                goto LABEL_2460;
              }

              v839 = 0;
              v840 = 0;
              if (!PBReaderPlaceMark() || !GEOPDMapsIdentifierIsValid(a1, v155))
              {
                goto LABEL_2460;
              }
            }

            else if (v154 == 2)
            {
              if (v153 != 2)
              {
                goto LABEL_2460;
              }

              v839 = 0;
              v840 = 0;
              if (!PBReaderPlaceMark() || !GEOPDAllCollectionsViewResultFilterIsValid(a1))
              {
                goto LABEL_2460;
              }
            }

            else
            {
              if (v154 != 1)
              {
                if ((PBReaderSkipValueWithTag() & 1) == 0)
                {
                  goto LABEL_2460;
                }

                continue;
              }

              if (v153 != 2)
              {
                goto LABEL_2460;
              }

              v839 = 0;
              v840 = 0;
              if (!PBReaderPlaceMark() || !GEOPDPublisherSuggestionResultIsValid(a1))
              {
                goto LABEL_2460;
              }
            }

            break;
          }

          PBReaderRecallMark();
          continue;
        }

      case 0x2Fu:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          v116 = objc_msgSend_position(a1);
          if (v116 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v117 = 0;
          v118 = 0;
          v119 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v120 = objc_msgSend_position(a1) + 1;
            if (v120 >= objc_msgSend_position(a1) && (v121 = objc_msgSend_position(a1) + 1, v121 <= [a1 length]))
            {
              v122 = [a1 data];
              [v122 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v119 |= (v837 & 0x7F) << v117;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v117 += 7;
            v9 = v118++ >= 9;
            if (v9)
            {
              v123 = 0;
              goto LABEL_376;
            }
          }

          if ([a1 hasError])
          {
            v123 = 0;
          }

          else
          {
            v123 = v119;
          }

LABEL_376:
          if (([a1 hasError] & 1) == 0 && (v123 & 7) != 4)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          goto LABEL_2448;
        }

      case 0x30u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          v333 = objc_msgSend_position(a1);
          if (v333 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v334 = 0;
          v335 = 0;
          v336 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v337 = objc_msgSend_position(a1) + 1;
            if (v337 >= objc_msgSend_position(a1) && (v338 = objc_msgSend_position(a1) + 1, v338 <= [a1 length]))
            {
              v339 = [a1 data];
              [v339 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v336 |= (v837 & 0x7F) << v334;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v334 += 7;
            v9 = v335++ >= 9;
            if (v9)
            {
              v340 = 0;
              goto LABEL_1034;
            }
          }

          if ([a1 hasError])
          {
            v340 = 0;
          }

          else
          {
            v340 = v336;
          }

LABEL_1034:
          if (([a1 hasError] & 1) == 0 && (v340 & 7) != 4)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          goto LABEL_2448;
        }

      case 0x31u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v833 = 0;
        v834 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v837 = objc_msgSend_position(a1);
        v838 = [a1 length];
LABEL_1297:
        while (2)
        {
          v430 = objc_msgSend_position(a1);
          if (v430 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2425;
          }

          v431 = 0;
          v432 = 0;
          v433 = 0;
          while (1)
          {
            LOBYTE(v841) = 0;
            v434 = objc_msgSend_position(a1) + 1;
            if (v434 >= objc_msgSend_position(a1) && (v435 = objc_msgSend_position(a1) + 1, v435 <= [a1 length]))
            {
              v436 = [a1 data];
              [v436 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v433 |= (v841 & 0x7F) << v431;
            if ((v841 & 0x80) == 0)
            {
              break;
            }

            v431 += 7;
            v9 = v432++ >= 9;
            if (v9)
            {
              v437 = 0;
              goto LABEL_1311;
            }
          }

          if ([a1 hasError])
          {
            v437 = 0;
          }

          else
          {
            v437 = v433;
          }

LABEL_1311:
          if (([a1 hasError] & 1) != 0 || (v437 & 7) == 4)
          {
            goto LABEL_2425;
          }

          if ((v437 >> 3) != 1)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          break;
        }

        if ((v437 & 7) != 2)
        {
          goto LABEL_2460;
        }

        v835 = 0;
        v836 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2460;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (1)
        {
          while (1)
          {
LABEL_1317:
            v438 = objc_msgSend_position(a1);
            if (v438 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_1366;
            }

            v439 = 0;
            v440 = 0;
            v441 = 0;
            while (1)
            {
              LOBYTE(v839) = 0;
              v442 = objc_msgSend_position(a1) + 1;
              if (v442 >= objc_msgSend_position(a1) && (v443 = objc_msgSend_position(a1) + 1, v443 <= [a1 length]))
              {
                v444 = [a1 data];
                [v444 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v441 |= (v839 & 0x7F) << v439;
              if ((v839 & 0x80) == 0)
              {
                break;
              }

              v439 += 7;
              v9 = v440++ >= 9;
              if (v9)
              {
                v445 = 0;
                goto LABEL_1331;
              }
            }

            v445 = [a1 hasError] ? 0 : v441;
LABEL_1331:
            if (([a1 hasError] & 1) != 0 || (v446 = v445 & 7, v446 == 4))
            {
LABEL_1366:
              v453 = [a1 hasError];
              PBReaderRecallMark();
              if ((v453 & 1) == 0)
              {
                PBReaderRecallMark();
                goto LABEL_1297;
              }

              goto LABEL_2460;
            }

            v447 = v445 >> 3;
            if ((v445 >> 3) > 2)
            {
              break;
            }

            if (v447 == 1)
            {
              if ((v445 & 7) != 0)
              {
                goto LABEL_2454;
              }

              v449 = 0;
              while (1)
              {
                LOBYTE(v839) = 0;
                v450 = objc_msgSend_position(a1) + 1;
                if (v450 >= objc_msgSend_position(a1) && (v451 = objc_msgSend_position(a1) + 1, v451 <= [a1 length]))
                {
                  v452 = [a1 data];
                  [v452 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                  [a1 setPosition:objc_msgSend_position(a1) + 1];
                }

                else
                {
                  [a1 _setError];
                }

                if ((v839 & 0x80000000) == 0)
                {
                  break;
                }

                v26 = v449++ > 8;
                if (v26)
                {
                  goto LABEL_1317;
                }
              }

              [a1 hasError];
            }

            else
            {
              if (v447 == 2 && v446 != 2)
              {
                goto LABEL_2454;
              }

LABEL_1361:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_2454;
              }
            }
          }

          if (v447 == 3)
          {
            if (v446 != 2)
            {
              goto LABEL_2454;
            }

            v839 = 0;
            v840 = 0;
            if (!PBReaderPlaceMark() || !GEOPDCollectionSuggestionResultIsValid(a1))
            {
              goto LABEL_2454;
            }
          }

          else
          {
            if (v447 != 4)
            {
              if (v447 == 5 && v446 != 2)
              {
                goto LABEL_2454;
              }

              goto LABEL_1361;
            }

            if (v446 != 2)
            {
              goto LABEL_2454;
            }

            v839 = 0;
            v840 = 0;
            if (!PBReaderPlaceMark() || !GEOPDGuidesLocationEntryIsValid(a1, v448))
            {
              goto LABEL_2454;
            }
          }

          PBReaderRecallMark();
        }

      case 0x32u:
        if (v11 != 2 || !PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v833 = objc_msgSend_position(a1, 0, 0);
        v834 = [a1 length];
LABEL_1826:
        while (2)
        {
          v612 = objc_msgSend_position(a1);
          if (v612 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            break;
          }

          v613 = 0;
          v614 = 0;
          v615 = 0;
          while (1)
          {
            LOBYTE(v841) = 0;
            v616 = objc_msgSend_position(a1) + 1;
            if (v616 >= objc_msgSend_position(a1) && (v617 = objc_msgSend_position(a1) + 1, v617 <= [a1 length]))
            {
              v618 = [a1 data];
              [v618 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v615 |= (v841 & 0x7F) << v613;
            if ((v841 & 0x80) == 0)
            {
              break;
            }

            v613 += 7;
            v9 = v614++ >= 9;
            if (v9)
            {
              v619 = 0;
              goto LABEL_1840;
            }
          }

          if ([a1 hasError])
          {
            v619 = 0;
          }

          else
          {
            v619 = v615;
          }

LABEL_1840:
          if (([a1 hasError] & 1) == 0)
          {
            v620 = v619 & 7;
            if (v620 != 4)
            {
              if ((v619 >> 3) != 2)
              {
                if ((v619 >> 3) == 1 && v620 != 2 || (PBReaderSkipValueWithTag() & 1) == 0)
                {
                  goto LABEL_2460;
                }

                continue;
              }

              if (v620 != 2)
              {
                goto LABEL_2460;
              }

              v831 = 0;
              v832 = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_2460;
              }

              v837 = objc_msgSend_position(a1);
              v838 = [a1 length];
              while (1)
              {
LABEL_1849:
                v621 = objc_msgSend_position(a1);
                if (v621 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
                {
                  goto LABEL_1918;
                }

                v622 = 0;
                v623 = 0;
                v624 = 0;
                while (1)
                {
                  LOBYTE(v841) = 0;
                  v625 = objc_msgSend_position(a1) + 1;
                  if (v625 >= objc_msgSend_position(a1) && (v626 = objc_msgSend_position(a1) + 1, v626 <= [a1 length]))
                  {
                    v627 = [a1 data];
                    [v627 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                    [a1 setPosition:objc_msgSend_position(a1) + 1];
                  }

                  else
                  {
                    [a1 _setError];
                  }

                  v624 |= (v841 & 0x7F) << v622;
                  if ((v841 & 0x80) == 0)
                  {
                    break;
                  }

                  v622 += 7;
                  v9 = v623++ >= 9;
                  if (v9)
                  {
                    v628 = 0;
                    goto LABEL_1863;
                  }
                }

                v628 = [a1 hasError] ? 0 : v624;
LABEL_1863:
                if (([a1 hasError] & 1) != 0 || (v629 = v628 & 7, v629 == 4))
                {
LABEL_1918:
                  v647 = [a1 hasError];
                  PBReaderRecallMark();
                  if ((v647 & 1) == 0)
                  {
                    PBReaderRecallMark();
                    goto LABEL_1826;
                  }

                  goto LABEL_2460;
                }

                if ((v628 >> 3) == 2)
                {
                  if (v629 != 2)
                  {
                    goto LABEL_2459;
                  }

                  v841 = 0;
                  v842 = 0;
                  if (!PBReaderPlaceMark() || !GEOPDGuidesLocationEntryIsValid(a1, v645))
                  {
                    goto LABEL_2459;
                  }

                  goto LABEL_1915;
                }

                if ((v628 >> 3) == 1)
                {
                  break;
                }

                if ((PBReaderSkipValueWithTag() & 1) == 0)
                {
                  goto LABEL_2459;
                }
              }

              if (v629 != 2)
              {
                goto LABEL_2459;
              }

              v835 = 0;
              v836 = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_2459;
              }

              v841 = objc_msgSend_position(a1);
              v842 = [a1 length];
              while (1)
              {
                while (1)
                {
LABEL_1870:
                  v630 = objc_msgSend_position(a1);
                  if (v630 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
                  {
                    goto LABEL_1914;
                  }

                  v631 = 0;
                  v632 = 0;
                  v633 = 0;
                  while (1)
                  {
                    LOBYTE(v839) = 0;
                    v634 = objc_msgSend_position(a1) + 1;
                    if (v634 >= objc_msgSend_position(a1) && (v635 = objc_msgSend_position(a1) + 1, v635 <= [a1 length]))
                    {
                      v636 = [a1 data];
                      [v636 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                      [a1 setPosition:objc_msgSend_position(a1) + 1];
                    }

                    else
                    {
                      [a1 _setError];
                    }

                    v633 |= (v839 & 0x7F) << v631;
                    if ((v839 & 0x80) == 0)
                    {
                      break;
                    }

                    v631 += 7;
                    v9 = v632++ >= 9;
                    if (v9)
                    {
                      v637 = 0;
                      goto LABEL_1884;
                    }
                  }

                  v637 = [a1 hasError] ? 0 : v633;
LABEL_1884:
                  if (([a1 hasError] & 1) != 0 || (v638 = v637 & 7, v638 == 4))
                  {
LABEL_1914:
                    v646 = [a1 hasError];
                    PBReaderRecallMark();
                    if (v646)
                    {
LABEL_2459:
                      PBReaderRecallMark();
                      goto LABEL_2460;
                    }

LABEL_1915:
                    PBReaderRecallMark();
                    goto LABEL_1849;
                  }

                  v639 = v637 >> 3;
                  if ((v637 >> 3) != 3)
                  {
                    break;
                  }

                  if (v638 != 2 || (v839 = 0, v840 = 0, !PBReaderPlaceMark()) || !GEOPDMapsIdentifierIsValid(a1, v644))
                  {
LABEL_2458:
                    PBReaderRecallMark();
                    goto LABEL_2459;
                  }

                  PBReaderRecallMark();
                }

                if (v639 == 2)
                {
                  break;
                }

                if (v639 == 1)
                {
                  if ((v637 & 7) != 0)
                  {
                    goto LABEL_2458;
                  }

                  v640 = 0;
                  while (1)
                  {
                    LOBYTE(v839) = 0;
                    v641 = objc_msgSend_position(a1) + 1;
                    if (v641 >= objc_msgSend_position(a1) && (v642 = objc_msgSend_position(a1) + 1, v642 <= [a1 length]))
                    {
                      v643 = [a1 data];
                      [v643 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                      [a1 setPosition:objc_msgSend_position(a1) + 1];
                    }

                    else
                    {
                      [a1 _setError];
                    }

                    if ((v839 & 0x80000000) == 0)
                    {
                      break;
                    }

                    v26 = v640++ > 8;
                    if (v26)
                    {
                      goto LABEL_1870;
                    }
                  }

                  [a1 hasError];
                }

                else
                {
LABEL_1905:
                  if ((PBReaderSkipValueWithTag() & 1) == 0)
                  {
                    goto LABEL_2458;
                  }
                }
              }

              if (v638 != 2)
              {
                goto LABEL_2458;
              }

              goto LABEL_1905;
            }
          }

          break;
        }

LABEL_2254:
        v759 = [a1 hasError];
        PBReaderRecallMark();
        if (v759)
        {
          goto LABEL_2461;
        }

LABEL_2449:
        PBReaderRecallMark();
        continue;
      case 0x33u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v833 = 0;
        v834 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v837 = objc_msgSend_position(a1);
        v838 = [a1 length];
        while (2)
        {
          v788 = objc_msgSend_position(a1);
          if (v788 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            break;
          }

          v789 = 0;
          v790 = 0;
          v791 = 0;
          while (1)
          {
            LOBYTE(v841) = 0;
            v792 = objc_msgSend_position(a1) + 1;
            if (v792 >= objc_msgSend_position(a1) && (v793 = objc_msgSend_position(a1) + 1, v793 <= [a1 length]))
            {
              v794 = [a1 data];
              [v794 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v791 |= (v841 & 0x7F) << v789;
            if ((v841 & 0x80) == 0)
            {
              break;
            }

            v789 += 7;
            v9 = v790++ >= 9;
            if (v9)
            {
              v795 = 0;
              goto LABEL_2349;
            }
          }

          if ([a1 hasError])
          {
            v795 = 0;
          }

          else
          {
            v795 = v791;
          }

LABEL_2349:
          if (([a1 hasError] & 1) == 0)
          {
            v796 = v795 & 7;
            if (v796 != 4)
            {
              v797 = v795 >> 3;
              if ((v795 >> 3) <= 2)
              {
                if (v797 != 1 && v797 != 2)
                {
LABEL_2421:
                  if ((PBReaderSkipValueWithTag() & 1) == 0)
                  {
                    goto LABEL_2460;
                  }

                  continue;
                }

LABEL_2417:
                if (v796 != 2)
                {
                  goto LABEL_2460;
                }

                v841 = 0;
                v842 = 0;
                if (!PBReaderPlaceMark() || !GEOPDGuidesHomeFixedSectionIsValid(a1))
                {
                  goto LABEL_2460;
                }

LABEL_2424:
                PBReaderRecallMark();
                continue;
              }

              if (v797 == 3)
              {
                goto LABEL_2417;
              }

              if (v797 != 50)
              {
                goto LABEL_2421;
              }

              if (v796 != 2)
              {
                goto LABEL_2460;
              }

              v835 = 0;
              v836 = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_2460;
              }

              v841 = objc_msgSend_position(a1);
              v842 = [a1 length];
              while (1)
              {
LABEL_2360:
                v798 = objc_msgSend_position(a1);
                if (v798 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
                {
                  goto LABEL_2423;
                }

                v799 = 0;
                v800 = 0;
                v801 = 0;
                while (1)
                {
                  LOBYTE(v839) = 0;
                  v802 = objc_msgSend_position(a1) + 1;
                  if (v802 >= objc_msgSend_position(a1) && (v803 = objc_msgSend_position(a1) + 1, v803 <= [a1 length]))
                  {
                    v804 = [a1 data];
                    [v804 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                    [a1 setPosition:objc_msgSend_position(a1) + 1];
                  }

                  else
                  {
                    [a1 _setError];
                  }

                  v801 |= (v839 & 0x7F) << v799;
                  if ((v839 & 0x80) == 0)
                  {
                    break;
                  }

                  v799 += 7;
                  v9 = v800++ >= 9;
                  if (v9)
                  {
                    v805 = 0;
                    goto LABEL_2374;
                  }
                }

                v805 = [a1 hasError] ? 0 : v801;
LABEL_2374:
                if (([a1 hasError] & 1) != 0 || (v806 = v805 & 7, v806 == 4))
                {
LABEL_2423:
                  v818 = [a1 hasError];
                  PBReaderRecallMark();
                  if (v818)
                  {
                    goto LABEL_2460;
                  }

                  goto LABEL_2424;
                }

                v807 = v805 >> 3;
                if ((v805 >> 3) > 3)
                {
                  switch(v807)
                  {
                    case 4:
LABEL_2394:
                      if (v806 != 2)
                      {
                        goto LABEL_2454;
                      }

                      v839 = 0;
                      v840 = 0;
                      if (!PBReaderPlaceMark() || !GEOPDMapsIdentifierIsValid(a1, v812))
                      {
                        goto LABEL_2454;
                      }

LABEL_2415:
                      PBReaderRecallMark();
                      continue;
                    case 5:
                      if (v806 != 2)
                      {
                        goto LABEL_2454;
                      }

                      v839 = 0;
                      v840 = 0;
                      if (!PBReaderPlaceMark() || !GEOPDGuidesLocationEntryIsValid(a1, v817))
                      {
                        goto LABEL_2454;
                      }

                      goto LABEL_2415;
                    case 6:
                      if ((v805 & 7) != 0)
                      {
                        goto LABEL_2454;
                      }

                      v808 = 0;
                      while (1)
                      {
                        LOBYTE(v839) = 0;
                        v809 = objc_msgSend_position(a1) + 1;
                        if (v809 >= objc_msgSend_position(a1) && (v810 = objc_msgSend_position(a1) + 1, v810 <= [a1 length]))
                        {
                          v811 = [a1 data];
                          [v811 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                          [a1 setPosition:objc_msgSend_position(a1) + 1];
                        }

                        else
                        {
                          [a1 _setError];
                        }

                        if ((v839 & 0x80000000) == 0)
                        {
                          break;
                        }

                        v26 = v808++ > 8;
                        if (v26)
                        {
                          goto LABEL_2360;
                        }
                      }

LABEL_2416:
                      [a1 hasError];
                      continue;
                  }
                }

                else
                {
                  switch(v807)
                  {
                    case 1:
                      if ((v805 & 7) != 0)
                      {
                        goto LABEL_2454;
                      }

                      v813 = 0;
                      while (1)
                      {
                        LOBYTE(v839) = 0;
                        v814 = objc_msgSend_position(a1) + 1;
                        if (v814 >= objc_msgSend_position(a1) && (v815 = objc_msgSend_position(a1) + 1, v815 <= [a1 length]))
                        {
                          v816 = [a1 data];
                          [v816 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

                          [a1 setPosition:objc_msgSend_position(a1) + 1];
                        }

                        else
                        {
                          [a1 _setError];
                        }

                        if ((v839 & 0x80000000) == 0)
                        {
                          goto LABEL_2416;
                        }

                        v26 = v813++ > 8;
                        if (v26)
                        {
                          goto LABEL_2360;
                        }
                      }

                    case 2:
                      if (v806 != 2)
                      {
                        goto LABEL_2454;
                      }

                      break;
                    case 3:
                      goto LABEL_2394;
                  }
                }

                if ((PBReaderSkipValueWithTag() & 1) == 0)
                {
                  goto LABEL_2454;
                }
              }
            }
          }

          break;
        }

LABEL_2425:
        v819 = [a1 hasError];
        PBReaderRecallMark();
        if (v819)
        {
          goto LABEL_2461;
        }

        goto LABEL_2449;
      case 0x36u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
LABEL_480:
        while (2)
        {
          while (2)
          {
            v156 = objc_msgSend_position(a1);
            if (v156 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_2448;
            }

            v157 = 0;
            v158 = 0;
            v159 = 0;
            while (1)
            {
              LOBYTE(v837) = 0;
              v160 = objc_msgSend_position(a1) + 1;
              if (v160 >= objc_msgSend_position(a1) && (v161 = objc_msgSend_position(a1) + 1, v161 <= [a1 length]))
              {
                v162 = [a1 data];
                [v162 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v159 |= (v837 & 0x7F) << v157;
              if ((v837 & 0x80) == 0)
              {
                break;
              }

              v157 += 7;
              v9 = v158++ >= 9;
              if (v9)
              {
                v163 = 0;
                goto LABEL_494;
              }
            }

            if ([a1 hasError])
            {
              v163 = 0;
            }

            else
            {
              v163 = v159;
            }

LABEL_494:
            if (([a1 hasError] & 1) != 0 || (v163 & 7) == 4)
            {
              goto LABEL_2448;
            }

            v164 = v163 >> 3;
            if ((v163 >> 3) != 3)
            {
              if (v164 == 2)
              {
                if ((v163 & 7) != 2)
                {
                  goto LABEL_2460;
                }
              }

              else if (v164 == 1)
              {
                if ((v163 & 7) != 0)
                {
                  goto LABEL_2460;
                }

                v165 = 0;
                while (1)
                {
                  LOBYTE(v837) = 0;
                  v166 = objc_msgSend_position(a1) + 1;
                  if (v166 >= objc_msgSend_position(a1) && (v167 = objc_msgSend_position(a1) + 1, v167 <= [a1 length]))
                  {
                    v168 = [a1 data];
                    [v168 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

                    [a1 setPosition:objc_msgSend_position(a1) + 1];
                  }

                  else
                  {
                    [a1 _setError];
                  }

                  if ((v837 & 0x80000000) == 0)
                  {
                    goto LABEL_523;
                  }

                  v26 = v165++ > 8;
                  if (v26)
                  {
                    goto LABEL_480;
                  }
                }
              }

              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_2460;
              }

              continue;
            }

            break;
          }

          if ((v163 & 7) != 0)
          {
            goto LABEL_2460;
          }

          v169 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v170 = objc_msgSend_position(a1) + 1;
            if (v170 >= objc_msgSend_position(a1) && (v171 = objc_msgSend_position(a1) + 1, v171 <= [a1 length]))
            {
              v172 = [a1 data];
              [v172 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v837 & 0x80000000) == 0)
            {
              break;
            }

            v26 = v169++ > 8;
            if (v26)
            {
              goto LABEL_480;
            }
          }

LABEL_523:
          [a1 hasError];
          continue;
        }

      case 0x37u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v841 = 0;
        v842 = 0;
        if (!PBReaderPlaceMark() || (GEOPDQueryUnderstandingResultIsValid(a1) & 1) == 0)
        {
          goto LABEL_2461;
        }

        goto LABEL_2449;
      case 0x38u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          v544 = objc_msgSend_position(a1);
          if (v544 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v545 = 0;
          v546 = 0;
          v547 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v548 = objc_msgSend_position(a1) + 1;
            if (v548 >= objc_msgSend_position(a1) && (v549 = objc_msgSend_position(a1) + 1, v549 <= [a1 length]))
            {
              v550 = [a1 data];
              [v550 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v547 |= (v837 & 0x7F) << v545;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v545 += 7;
            v9 = v546++ >= 9;
            if (v9)
            {
              v551 = 0;
              goto LABEL_1656;
            }
          }

          if ([a1 hasError])
          {
            v551 = 0;
          }

          else
          {
            v551 = v547;
          }

LABEL_1656:
          if (([a1 hasError] & 1) == 0 && (v551 & 7) != 4)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          goto LABEL_2448;
        }

      case 0x3Au:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          v780 = objc_msgSend_position(a1);
          if (v780 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v781 = 0;
          v782 = 0;
          v783 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v784 = objc_msgSend_position(a1) + 1;
            if (v784 >= objc_msgSend_position(a1) && (v785 = objc_msgSend_position(a1) + 1, v785 <= [a1 length]))
            {
              v786 = [a1 data];
              [v786 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v783 |= (v837 & 0x7F) << v781;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v781 += 7;
            v9 = v782++ >= 9;
            if (v9)
            {
              v787 = 0;
              goto LABEL_2328;
            }
          }

          if ([a1 hasError])
          {
            v787 = 0;
          }

          else
          {
            v787 = v783;
          }

LABEL_2328:
          if (([a1 hasError] & 1) == 0 && (v787 & 7) != 4)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          goto LABEL_2448;
        }

      case 0x3Bu:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v837 = 0;
        v838 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          v535 = objc_msgSend_position(a1);
          if (v535 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            break;
          }

          v536 = 0;
          v537 = 0;
          v538 = 0;
          while (1)
          {
            LOBYTE(v839) = 0;
            v539 = objc_msgSend_position(a1) + 1;
            if (v539 >= objc_msgSend_position(a1) && (v540 = objc_msgSend_position(a1) + 1, v540 <= [a1 length]))
            {
              v541 = [a1 data];
              [v541 getBytes:&v839 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v538 |= (v839 & 0x7F) << v536;
            if ((v839 & 0x80) == 0)
            {
              break;
            }

            v536 += 7;
            v9 = v537++ >= 9;
            if (v9)
            {
              v542 = 0;
              goto LABEL_1630;
            }
          }

          if ([a1 hasError])
          {
            v542 = 0;
          }

          else
          {
            v542 = v538;
          }

LABEL_1630:
          if (([a1 hasError] & 1) == 0 && (v542 & 7) != 4)
          {
            if ((v542 >> 3) != 1)
            {
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_2460;
              }

              continue;
            }

            if ((v542 & 7) == 2)
            {
              v839 = 0;
              v840 = 0;
              if (PBReaderPlaceMark())
              {
                if (GEOLocalizedStringIsValid(a1, v543))
                {
                  PBReaderRecallMark();
                  continue;
                }
              }
            }

            goto LABEL_2460;
          }

          break;
        }

LABEL_2040:
        v686 = [a1 hasError];
        PBReaderRecallMark();
        if (v686)
        {
          goto LABEL_2461;
        }

        goto LABEL_2449;
      case 0x3Cu:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v835 = 0;
        v836 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v839 = objc_msgSend_position(a1);
        v840 = [a1 length];
LABEL_383:
        while (2)
        {
          v124 = objc_msgSend_position(a1);
          if (v124 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2114;
          }

          v125 = 0;
          v126 = 0;
          v127 = 0;
          while (1)
          {
            LOBYTE(v841) = 0;
            v128 = objc_msgSend_position(a1) + 1;
            if (v128 >= objc_msgSend_position(a1) && (v129 = objc_msgSend_position(a1) + 1, v129 <= [a1 length]))
            {
              v130 = [a1 data];
              [v130 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v127 |= (v841 & 0x7F) << v125;
            if ((v841 & 0x80) == 0)
            {
              break;
            }

            v125 += 7;
            v9 = v126++ >= 9;
            if (v9)
            {
              v131 = 0;
              goto LABEL_397;
            }
          }

          if ([a1 hasError])
          {
            v131 = 0;
          }

          else
          {
            v131 = v127;
          }

LABEL_397:
          if (([a1 hasError] & 1) != 0 || (v131 & 7) == 4)
          {
            goto LABEL_2114;
          }

          if ((v131 >> 3) != 1)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          break;
        }

        if ((v131 & 7) != 2)
        {
          goto LABEL_2460;
        }

        v837 = 0;
        v838 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2460;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        do
        {
          while (1)
          {
LABEL_403:
            v132 = objc_msgSend_position(a1);
            if (v132 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              goto LABEL_435;
            }

            v133 = 0;
            v134 = 0;
            v135 = 0;
            while (1)
            {
              LOBYTE(v833) = 0;
              v136 = objc_msgSend_position(a1) + 1;
              if (v136 >= objc_msgSend_position(a1) && (v137 = objc_msgSend_position(a1) + 1, v137 <= [a1 length]))
              {
                v138 = [a1 data];
                [v138 getBytes:&v833 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              v135 |= (v833 & 0x7F) << v133;
              if ((v833 & 0x80) == 0)
              {
                break;
              }

              v133 += 7;
              v9 = v134++ >= 9;
              if (v9)
              {
                v139 = 0;
                goto LABEL_417;
              }
            }

            v139 = [a1 hasError] ? 0 : v135;
LABEL_417:
            if (([a1 hasError] & 1) != 0 || (v139 & 7) == 4)
            {
LABEL_435:
              v144 = [a1 hasError];
              PBReaderRecallMark();
              if ((v144 & 1) == 0)
              {
                PBReaderRecallMark();
                goto LABEL_383;
              }

              goto LABEL_2460;
            }

            if ((v139 >> 3) != 1)
            {
              break;
            }

            if ((v139 & 7) != 0)
            {
              goto LABEL_2456;
            }

            v140 = 0;
            while (1)
            {
              LOBYTE(v833) = 0;
              v141 = objc_msgSend_position(a1) + 1;
              if (v141 >= objc_msgSend_position(a1) && (v142 = objc_msgSend_position(a1) + 1, v142 <= [a1 length]))
              {
                v143 = [a1 data];
                [v143 getBytes:&v833 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v833 & 0x80000000) == 0)
              {
                break;
              }

              v26 = v140++ > 8;
              if (v26)
              {
                goto LABEL_403;
              }
            }

            [a1 hasError];
          }
        }

        while (PBReaderSkipValueWithTag());
        goto LABEL_2456;
      case 0x3Eu:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          v108 = objc_msgSend_position(a1);
          if (v108 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_2448;
          }

          v109 = 0;
          v110 = 0;
          v111 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v112 = objc_msgSend_position(a1) + 1;
            if (v112 >= objc_msgSend_position(a1) && (v113 = objc_msgSend_position(a1) + 1, v113 <= [a1 length]))
            {
              v114 = [a1 data];
              [v114 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v111 |= (v837 & 0x7F) << v109;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v109 += 7;
            v9 = v110++ >= 9;
            if (v9)
            {
              v115 = 0;
              goto LABEL_355;
            }
          }

          if ([a1 hasError])
          {
            v115 = 0;
          }

          else
          {
            v115 = v111;
          }

LABEL_355:
          if (([a1 hasError] & 1) == 0 && (v115 & 7) != 4)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          goto LABEL_2448;
        }

      case 0x3Fu:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v839 = 0;
        v840 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v841 = objc_msgSend_position(a1);
        v842 = [a1 length];
        while (2)
        {
          v820 = objc_msgSend_position(a1);
          if (v820 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            break;
          }

          v821 = 0;
          v822 = 0;
          v823 = 0;
          while (1)
          {
            LOBYTE(v837) = 0;
            v824 = objc_msgSend_position(a1) + 1;
            if (v824 >= objc_msgSend_position(a1) && (v825 = objc_msgSend_position(a1) + 1, v825 <= [a1 length]))
            {
              v826 = [a1 data];
              [v826 getBytes:&v837 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v823 |= (v837 & 0x7F) << v821;
            if ((v837 & 0x80) == 0)
            {
              break;
            }

            v821 += 7;
            v9 = v822++ >= 9;
            if (v9)
            {
              v827 = 0;
              goto LABEL_2444;
            }
          }

          if ([a1 hasError])
          {
            v827 = 0;
          }

          else
          {
            v827 = v823;
          }

LABEL_2444:
          if (([a1 hasError] & 1) == 0 && (v827 & 7) != 4)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_2460;
            }

            continue;
          }

          break;
        }

LABEL_2448:
        v828 = [a1 hasError];
        PBReaderRecallMark();
        if (!v828)
        {
          goto LABEL_2449;
        }

        goto LABEL_2461;
      case 0x40u:
        if (v11 != 2)
        {
          goto LABEL_2461;
        }

        v835 = 0;
        v836 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_2461;
        }

        v839 = objc_msgSend_position(a1);
        v840 = [a1 length];
LABEL_2045:
        while (2)
        {
          v687 = objc_msgSend_position(a1);
          if (v687 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            break;
          }

          v688 = 0;
          v689 = 0;
          v690 = 0;
          while (1)
          {
            LOBYTE(v841) = 0;
            v691 = objc_msgSend_position(a1) + 1;
            if (v691 >= objc_msgSend_position(a1) && (v692 = objc_msgSend_position(a1) + 1, v692 <= [a1 length]))
            {
              v693 = [a1 data];
              [v693 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            v690 |= (v841 & 0x7F) << v688;
            if ((v841 & 0x80) == 0)
            {
              break;
            }

            v688 += 7;
            v9 = v689++ >= 9;
            if (v9)
            {
              v694 = 0;
              goto LABEL_2059;
            }
          }

          if ([a1 hasError])
          {
            v694 = 0;
          }

          else
          {
            v694 = v690;
          }

LABEL_2059:
          if (([a1 hasError] & 1) == 0)
          {
            v695 = v694 & 7;
            if (v695 != 4)
            {
              v696 = v694 >> 3;
              if ((v694 >> 3) == 3)
              {
                if ((v694 & 7) == 0)
                {
                  v708 = 0;
                  while (1)
                  {
                    LOBYTE(v841) = 0;
                    v709 = objc_msgSend_position(a1) + 1;
                    if (v709 >= objc_msgSend_position(a1) && (v710 = objc_msgSend_position(a1) + 1, v710 <= [a1 length]))
                    {
                      v711 = [a1 data];
                      [v711 getBytes:&v841 range:{objc_msgSend_position(a1), 1}];

                      [a1 setPosition:objc_msgSend_position(a1) + 1];
                    }

                    else
                    {
                      [a1 _setError];
                    }

                    if ((v841 & 0x80000000) == 0)
                    {
                      break;
                    }

                    v26 = v708++ > 8;
                    if (v26)
                    {
                      goto LABEL_2045;
                    }
                  }

                  [a1 hasError];
                  continue;
                }

                goto LABEL_2460;
              }

              if (v696 != 2)
              {
                if (v696 != 1)
                {
                  if ((PBReaderSkipValueWithTag() & 1) == 0)
                  {
                    goto LABEL_2460;
                  }

                  continue;
                }

                if (v695 == 2)
                {
                  v841 = 0;
                  v842 = 0;
                  if (PBReaderPlaceMark())
                  {
                    if (GEOPDExploreGuidesIsValid(a1, v697))
                    {
                      goto LABEL_2112;
                    }
                  }
                }

                goto LABEL_2460;
              }

              if (v695 != 2)
              {
                goto LABEL_2460;
              }

              v837 = 0;
              v838 = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_2460;
              }

              v841 = objc_msgSend_position(a1);
              v842 = [a1 length];
              while (1)
              {
LABEL_2071:
                v698 = objc_msgSend_position(a1);
                if (v698 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
                {
                  goto LABEL_2111;
                }

                v699 = 0;
                v700 = 0;
                v701 = 0;
                while (1)
                {
                  LOBYTE(v833) = 0;
                  v702 = objc_msgSend_position(a1) + 1;
                  if (v702 >= objc_msgSend_position(a1) && (v703 = objc_msgSend_position(a1) + 1, v703 <= [a1 length]))
                  {
                    v704 = [a1 data];
                    [v704 getBytes:&v833 range:{objc_msgSend_position(a1), 1}];

                    [a1 setPosition:objc_msgSend_position(a1) + 1];
                  }

                  else
                  {
                    [a1 _setError];
                  }

                  v701 |= (v833 & 0x7F) << v699;
                  if ((v833 & 0x80) == 0)
                  {
                    break;
                  }

                  v699 += 7;
                  v9 = v700++ >= 9;
                  if (v9)
                  {
                    v705 = 0;
                    goto LABEL_2085;
                  }
                }

                v705 = [a1 hasError] ? 0 : v701;
LABEL_2085:
                if (([a1 hasError] & 1) != 0 || (v706 = v705 & 7, v706 == 4))
                {
LABEL_2111:
                  v712 = [a1 hasError];
                  PBReaderRecallMark();
                  if (v712)
                  {
                    goto LABEL_2460;
                  }

LABEL_2112:
                  PBReaderRecallMark();
                  goto LABEL_2045;
                }

                v707 = v705 >> 3;
                if ((v705 >> 3) == 3)
                {
                  break;
                }

                if (v707 == 2)
                {
                  if (v706 != 2)
                  {
                    goto LABEL_2456;
                  }

                  goto LABEL_2095;
                }

                if (v707 == 1)
                {
                  if (v706 != 2)
                  {
                    goto LABEL_2456;
                  }

                  goto LABEL_2095;
                }

                if (!PBReaderSkipValueWithTag())
                {
LABEL_2456:
                  PBReaderRecallMark();
                  goto LABEL_2460;
                }
              }

              if (v706 != 2)
              {
                goto LABEL_2456;
              }

LABEL_2095:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_2456;
              }

              goto LABEL_2071;
            }
          }

          break;
        }

LABEL_2114:
        v713 = [a1 hasError];
        PBReaderRecallMark();
        if (v713)
        {
          goto LABEL_2461;
        }

        goto LABEL_2449;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        goto LABEL_2461;
    }
  }
}