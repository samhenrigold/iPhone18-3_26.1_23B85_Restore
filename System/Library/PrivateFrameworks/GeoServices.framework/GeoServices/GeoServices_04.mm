uint64_t GEOPDClientMetadataHasSensitiveFields(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 deviceExtendedLocation];
  HasSensitiveFields = GEOLocationHasSensitiveFields(v2);

  if (HasSensitiveFields)
  {
    return 1;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = [a1 deviceHistoricalLocations];
  v4 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v5);
        }

        if (GEOLocationHasSensitiveFields(*(*(&v9 + 1) + 8 * i)))
        {
          v4 = 1;
          goto LABEL_15;
        }
      }

      v4 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v4;
}

uint64_t GEOLocationHasSensitiveFields(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ([result hasSpeedAccuracy] & 1) != 0 || (objc_msgSend(v1, "hasIsMatchedLocation") & 1) != 0 || (objc_msgSend(v1, "hasIsShifted") & 1) != 0 || (objc_msgSend(v1, "hasTransitID") & 1) != 0 || (objc_msgSend(v1, "hasReferenceFrame") & 1) != 0 || (objc_msgSend(v1, "hasRawCoordinate") & 1) != 0 || (objc_msgSend(v1, "hasRawCourse") & 1) != 0 || (objc_msgSend(v1, "hasMatchQuality") & 1) != 0 || (objc_msgSend(v1, "hasFormOfWay") & 1) != 0 || (objc_msgSend(v1, "hasRoadClass"))
    {
      return 1;
    }

    else
    {

      return [v1 hasTransportType];
    }
  }

  return result;
}

void *GEOPDClientMetadataClearSensitiveFields(id *a1, uint64_t a2, int a3)
{
  if (a3 && [a1 hasDeviceExtendedLocation] && (objc_msgSend(a1, "deviceExtendedLocation"), v6 = objc_claimAutoreleasedReturnValue(), HasSensitiveFields = GEOLocationHasSensitiveFields(v6), v6, HasSensitiveFields))
  {
    v8 = [a1 deviceExtendedLocation];
    v9 = [v8 copy];

    GEOLocationClearSensitiveFields(v9);
    [a1 setDeviceExtendedLocation:v9];
  }

  else
  {
    v9 = [a1 deviceExtendedLocation];
    [v9 clearSensitiveFields:a2];
  }

  [(GEOPDClientMetadata *)a1 _readDeviceHistoricalLocations];
  result = [a1[26] count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v12 = [a1[26] objectAtIndexedSubscript:i];
      v13 = v12;
      if (a3 && GEOLocationHasSensitiveFields(v12))
      {
        v14 = [v13 copy];
        GEOLocationClearSensitiveFields(v14);
        [a1[26] replaceObjectAtIndex:i withObject:v14];
      }

      else
      {
        [v13 clearSensitiveFields:a2];
      }

      result = [a1[26] count];
    }
  }

  return result;
}

uint64_t GEOPDPhotoSizeFilterValueWriteTo(uint64_t result, uint64_t a2)
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

void *GEOMapServiceTraitsReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 612))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOMapServiceTraitsReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 616));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 608) = objc_msgSend_position(v8);
  *(a1 + 612) = [v8 length];
  if (a3)
  {
    v9 = &GEOMapServiceTraitsReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOMapServiceTraitsReadAllFrom_initialTag;
  }

  Specified = GEOMapServiceTraitsReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOMapServiceTraitsCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 616));
  return Specified;
}

void *GEOMapServiceTraitsReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 616));
  [v3 setLength:*(a1 + 612)];
  [v3 seekToOffset:*(a1 + 608)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v577 = a1;
  v11 = *(a1 + 756);
  v12 = *(a1 + 764);
  v13 = vdupq_laneq_s64(v11, 1);
  v14 = vshlq_u64(v13, xmmword_187FBE550);
  v15 = vshlq_u64(v13, xmmword_187FBE560);
  v16 = vshlq_u64(v13, xmmword_187FBE570);
  v17.i64[0] = v13.i64[0];
  v17.i64[1] = v12 >> 43;
  v18 = vshlq_u64(v13, xmmword_187FBE580);
  v19 = vmovn_s64(v17);
  v20 = vdupq_lane_s32(v19, 0);
  v21 = vshlq_u32(v20, xmmword_187FBE520);
  v22 = vshlq_u32(v20, xmmword_187FBE530);
  v23 = vand_s8(v19, 0x100000001);
  v13.i32[0] = vshr_n_u32(v19, 0x1FuLL).u32[0];
  v24 = v19.i32[0];
  v25 = v19.i32[0] >> 29;
  v26.i32[0] = v12 >> 41;
  v27 = vshl_u32(*v20.i8, 0xFFFFFFE9FFFFFFFDLL);
  v26.i32[1] = v25;
  v28 = vshlq_u32(v20, xmmword_187FBE540);
  v29 = vshl_u32(*v20.i8, 0xFFFFFFF0FFFFFFE2);
  v30 = vshl_u32(*v20.i8, 0xFFFFFFEFFFFFFFEELL);
  v31 = vshl_u32(*v20.i8, 0xFFFFFFE8FFFFFFF2);
  v32 = vshl_u32(*v20.i8, 0xFFFFFFE5FFFFFFF7);
  v33 = vshl_u32(*v20.i8, 0xFFFFFFF1FFFFFFFELL);
  v20.i32[0] = v24 >> 1;
  v34.i32[0] = v24 >> 6;
  v35 = vshlq_u64(v11, xmmword_187FBE590);
  v34.i32[1] = v12 >> 40;
  v11.i32[0] = v24 >> 26;
  v13.i32[1] = v23.i32[1];
  v36.i64[0] = 0x100000001;
  v36.i64[1] = 0x100000001;
  v11.i32[1] = v12 >> 39;
  *v16.i8 = vadd_s32(__PAIR64__(vaddvq_s32(vaddq_s32(vaddq_s32(vandq_s8(v21, v36), vandq_s8(v22, v36)), vaddq_s32(vandq_s8(v28, v36), vandq_s8(vuzp1q_s32(v18, v16), v36)))), (v24 >> 7) & 1), vand_s8(*v20.i8, 0x100000001));
  v18.i32[0] = *(a1 + 756) >> 63;
  v18.i32[1] = (v24 >> 10) & 1;
  *v11.i8 = vadd_s32(vadd_s32(vadd_s32(vadd_s32(vand_s8(v27, 0x100000001), vand_s8(v26, 0x100000001)), vadd_s32(vadd_s32(vand_s8(v29, 0x100000001), vand_s8(vmovn_s64(v14), 0x100000001)), vadd_s32(vand_s8(v30, 0x100000001), vand_s8(v34, 0x100000001)))), vadd_s32(vadd_s32(vadd_s32(vand_s8(v31, 0x100000001), vand_s8(vmovn_s64(v15), 0x100000001)), vadd_s32(vand_s8(v32, 0x100000001), vand_s8(v33, 0x100000001))), vadd_s32(vadd_s32(vand_s8(*v11.i8, 0x100000001), vand_s8(vmovn_s64(v35), 0x100000001)), vadd_s32(*v18.i8, *v13.i8)))), *v16.i8);
  v37 = vadd_s32(vdup_lane_s32(*v11.i8, 1), *v11.i8).u32[0];
  while (1)
  {
    v38 = a3[v6];
    if (v38 > -3)
    {
      break;
    }

    if (v38 == -4)
    {
      ++v37;
      v8 = 1;
      goto LABEL_15;
    }

    if (v38 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v37;
LABEL_15:
    ++v6;
  }

  if (v38 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v38 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v38)
  {
    goto LABEL_14;
  }

  v39 = v37 > 0x23;
  v572 = v9;
  v573 = v39 & ~v10 | v8;
  v40 = v10 | v39;
  if (((v10 | v39) | v7))
  {
    v41 = 0;
  }

  else
  {
    v41 = a3;
  }

  v42 = a1 + 8;
  v43 = objc_msgSend_position(v3);
  if (v43 >= [v3 length])
  {
LABEL_1301:
    v52 = 1;
    goto LABEL_1302;
  }

  v574 = v40 | v8;
  v575 = (v41 == 0) | v40;
  v576 = v40;
  while (2)
  {
    if ([v3 hasError])
    {
      goto LABEL_1301;
    }

    v44 = 0;
    v45 = 0;
    v46 = 0;
    while (1)
    {
      LOBYTE(v578) = 0;
      v47 = objc_msgSend_position(v3) + 1;
      if (v47 >= objc_msgSend_position(v3) && (v48 = objc_msgSend_position(v3) + 1, v48 <= [v3 length]))
      {
        v49 = [v3 data];
        [v49 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v46 |= (v578 & 0x7F) << v44;
      if ((v578 & 0x80) == 0)
      {
        break;
      }

      v44 += 7;
      v50 = v45++ >= 9;
      if (v50)
      {
        v46 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v46 = 0;
    }

LABEL_33:
    v51 = [v3 hasError];
    v52 = 1;
    v40 = v576;
    if (v51)
    {
      goto LABEL_1302;
    }

    v53 = v46 & 7;
    if (v53 == 4)
    {
      goto LABEL_1302;
    }

    v54 = v46 >> 3;
    v55 = v576;
    if ((v575 & 1) == 0)
    {
      v56 = v41;
      do
      {
        v58 = *v56++;
        v57 = v58;
        v55 = v58 != 0;
        if (v58)
        {
          v59 = v57 == v54;
        }

        else
        {
          v59 = 1;
        }
      }

      while (!v59);
    }

    switch(v54)
    {
      case 1:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v578 = 0;
        v579 = 0;
        if (!PBReaderPlaceMark() || (GEOSessionIDReadAllFrom((v577 + 264), v3) & 1) == 0)
        {
          goto LABEL_1362;
        }

        PBReaderRecallMark();
        *(v577 + 756) |= 1uLL;
        goto LABEL_1130;
      case 2:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v270 = 0;
        v271 = 0;
        v272 = 0;
        *(v577 + 756) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v273 = objc_msgSend_position(v3) + 1;
          if (v273 >= objc_msgSend_position(v3) && (v274 = objc_msgSend_position(v3) + 1, v274 <= [v3 length]))
          {
            v275 = [v3 data];
            [v275 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v272 |= (v578 & 0x7F) << v270;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v270 += 7;
          v50 = v271++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1050;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v272;
        }

LABEL_1050:
        v485 = 708;
        goto LABEL_1119;
      case 3:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 757) & 8) == 0)
        {
          v181 = PBReaderReadString();
          v182 = 296;
          goto LABEL_798;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v488 = *(v42 + 756) << 52;
        goto LABEL_1195;
      case 4:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 757) & 0x10) == 0)
        {
          v181 = PBReaderReadString();
          v182 = 304;
          goto LABEL_798;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v488 = *(v42 + 756) << 51;
        goto LABEL_1195;
      case 5:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 757) & 0x20) == 0)
        {
          v181 = PBReaderReadString();
          v182 = 312;
          goto LABEL_798;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v488 = *(v42 + 756) << 50;
        goto LABEL_1195;
      case 6:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 758) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }

          v488 = *(v42 + 756) << 43;
          goto LABEL_1195;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOLocation);
        if (!GEOLocationReadAllFrom(v93, v3, v572 & 1))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        v94 = 384;
        goto LABEL_943;
      case 7:
        if (!v55 || (*(v42 + 757) & 1) != 0)
        {
          goto LABEL_961;
        }

        if (v53 != 2)
        {
          v525 = 0;
          v526 = 0;
          v527 = 0;
          v567 = 240;
          while (1)
          {
            LOBYTE(v578) = 0;
            v528 = objc_msgSend_position(v3, v567) + 1;
            if (v528 >= objc_msgSend_position(v3) && (v529 = objc_msgSend_position(v3) + 1, v529 <= [v3 length]))
            {
              v530 = [v3 data];
              [v530 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v527 |= (v578 & 0x7F) << v525;
            if ((v578 & 0x80) == 0)
            {
              goto LABEL_1297;
            }

            v525 += 7;
            v50 = v526++ >= 9;
            if (v50)
            {
              goto LABEL_1298;
            }
          }
        }

        v578 = 0;
        v579 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_1362;
        }

        while (1)
        {
          v276 = objc_msgSend_position(v3);
          if (v276 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_917;
          }

          v277 = 0;
          v278 = 0;
          v279 = 0;
          while (1)
          {
            v580 = 0;
            v280 = objc_msgSend_position(v3) + 1;
            if (v280 >= objc_msgSend_position(v3) && (v281 = objc_msgSend_position(v3) + 1, v281 <= [v3 length]))
            {
              v282 = [v3 data];
              [v282 getBytes:&v580 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v279 |= (v580 & 0x7F) << v277;
            if ((v580 & 0x80) == 0)
            {
              break;
            }

            v277 += 7;
            v50 = v278++ >= 9;
            if (v50)
            {
              goto LABEL_505;
            }
          }

          [v3 hasError];
LABEL_505:
          PBRepeatedInt32Add();
        }

      case 8:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 759) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }

          v488 = *(v42 + 756) << 35;
          goto LABEL_1195;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOMapRegion);
        if (!GEOMapRegionReadAllFrom(v93, v3, v572 & 1))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        v94 = 456;
        goto LABEL_943;
      case 9:
        if (!v55 || (*(v42 + 758) & 0x20) != 0)
        {
          goto LABEL_961;
        }

        v93 = PBReaderReadString();
        if (v93)
        {
          [(GEOMapServiceTraits *)v577 _addNoFlagsDeviceDisplayLanguage:v93];
        }

        goto LABEL_804;
      case 10:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 758) & 0x40) == 0)
        {
          v181 = PBReaderReadString();
          v182 = 400;
          goto LABEL_798;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v488 = *(v42 + 756) << 41;
        goto LABEL_1195;
      case 11:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 758) & 0x80) == 0)
        {
          v181 = PBReaderReadString();
          v182 = 408;
          goto LABEL_798;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v488 = *(v42 + 756) << 40;
        goto LABEL_1195;
      case 14:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v251 = 0;
        v252 = 0;
        v253 = 0;
        *(v577 + 756) |= 0x8000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v254 = objc_msgSend_position(v3) + 1;
          if (v254 >= objc_msgSend_position(v3) && (v255 = objc_msgSend_position(v3) + 1, v255 <= [v3 length]))
          {
            v256 = [v3 data];
            [v256 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v253 |= (v578 & 0x7F) << v251;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v251 += 7;
          v50 = v252++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1044;
          }
        }

        v92 = (v253 != 0) & ~[v3 hasError];
LABEL_1044:
        v486 = 731;
        goto LABEL_1128;
      case 15:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v227 = 0;
        v228 = 0;
        v229 = 0;
        *(v577 + 756) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v230 = objc_msgSend_position(v3) + 1;
          if (v230 >= objc_msgSend_position(v3) && (v231 = objc_msgSend_position(v3) + 1, v231 <= [v3 length]))
          {
            v232 = [v3 data];
            [v232 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v229 |= (v578 & 0x7F) << v227;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v227 += 7;
          v50 = v228++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1030;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v229;
        }

LABEL_1030:
        v485 = 712;
        goto LABEL_1119;
      case 16:
        if (!v55 || (*(v42 + 759) & 0x20) != 0)
        {
          goto LABEL_961;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOTraitsPhotoSize);
        if (!GEOTraitsPhotoSizeReadAllFrom(v93, v3))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        [(GEOMapServiceTraits *)v577 _addNoFlagsPhotoSizes:v93];
        goto LABEL_804;
      case 17:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v289 = 0;
        v290 = 0;
        v291 = 0;
        *(v577 + 756) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v292 = objc_msgSend_position(v3) + 1;
          if (v292 >= objc_msgSend_position(v3) && (v293 = objc_msgSend_position(v3) + 1, v293 <= [v3 length]))
          {
            v294 = [v3 data];
            [v294 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v291 |= (v578 & 0x7F) << v289;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v289 += 7;
          v50 = v290++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1058;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v291;
        }

LABEL_1058:
        v485 = 664;
        goto LABEL_1119;
      case 18:
        if (!v55 || (*(v42 + 760) & 8) != 0)
        {
          goto LABEL_961;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOTraitsPhotoSize);
        if (!GEOTraitsPhotoSizeReadAllFrom(v93, v3))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        [(GEOMapServiceTraits *)v577 _addNoFlagsReviewUserPhotoSizes:v93];
        goto LABEL_804;
      case 19:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v341 = 0;
        v342 = 0;
        v343 = 0;
        *(v577 + 756) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v344 = objc_msgSend_position(v3) + 1;
          if (v344 >= objc_msgSend_position(v3) && (v345 = objc_msgSend_position(v3) + 1, v345 <= [v3 length]))
          {
            v346 = [v3 data];
            [v346 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v343 |= (v578 & 0x7F) << v341;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v341 += 7;
          v50 = v342++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1080;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v343;
        }

LABEL_1080:
        v485 = 692;
        goto LABEL_1119;
      case 20:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v335 = 0;
        v336 = 0;
        v337 = 0;
        *(v577 + 756) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v338 = objc_msgSend_position(v3) + 1;
          if (v338 >= objc_msgSend_position(v3) && (v339 = objc_msgSend_position(v3) + 1, v339 <= [v3 length]))
          {
            v340 = [v3 data];
            [v340 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v337 |= (v578 & 0x7F) << v335;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v335 += 7;
          v50 = v336++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1076;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v337;
        }

LABEL_1076:
        v485 = 716;
        goto LABEL_1119;
      case 21:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v202 = 0;
        v203 = 0;
        v204 = 0;
        *(v577 + 756) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v205 = objc_msgSend_position(v3) + 1;
          if (v205 >= objc_msgSend_position(v3) && (v206 = objc_msgSend_position(v3) + 1, v206 <= [v3 length]))
          {
            v207 = [v3 data];
            [v207 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v204 |= (v578 & 0x7F) << v202;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v202 += 7;
          v50 = v203++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1022;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v204;
        }

LABEL_1022:
        v485 = 720;
        goto LABEL_1119;
      case 23:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v233 = 0;
        v234 = 0;
        v235 = 0;
        *(v577 + 756) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v236 = objc_msgSend_position(v3) + 1;
          if (v236 >= objc_msgSend_position(v3) && (v237 = objc_msgSend_position(v3) + 1, v237 <= [v3 length]))
          {
            v238 = [v3 data];
            [v238 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v235 |= (v578 & 0x7F) << v233;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v233 += 7;
          v50 = v234++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1034;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v235;
        }

LABEL_1034:
        v485 = 632;
        goto LABEL_1119;
      case 24:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 758) & 1) == 0)
        {
          v181 = PBReaderReadString();
          v182 = 336;
          goto LABEL_798;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v488 = *(v42 + 756) << 47;
        goto LABEL_1195;
      case 25:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 758) & 2) == 0)
        {
          v181 = PBReaderReadString();
          v182 = 344;
          goto LABEL_798;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v488 = *(v42 + 756) << 46;
        goto LABEL_1195;
      case 26:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        *(v577 + 756) |= 4uLL;
        v578 = 0;
        v225 = objc_msgSend_position(v3) + 8;
        if (v225 >= objc_msgSend_position(v3) && (v226 = objc_msgSend_position(v3) + 8, v226 <= [v3 length]))
        {
          v518 = [v3 data];
          [v518 getBytes:&v578 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        v502 = v578;
        v503 = 360;
        goto LABEL_1260;
      case 27:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        *(v577 + 756) |= 2uLL;
        v578 = 0;
        v216 = objc_msgSend_position(v3) + 8;
        if (v216 >= objc_msgSend_position(v3) && (v217 = objc_msgSend_position(v3) + 8, v217 <= [v3 length]))
        {
          v511 = [v3 data];
          [v511 getBytes:&v578 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        v502 = v578;
        v503 = 352;
        goto LABEL_1260;
      case 28:
        if (!v55)
        {
          goto LABEL_961;
        }

        if (*(v42 + 761))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }

          v488 = *(v42 + 756) << 23;
          goto LABEL_1195;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOTraitsTransitScheduleFilter);
        if (!GEOTraitsTransitScheduleFilterReadAllFrom(v93, v3, v572 & 1))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        v94 = 568;
        goto LABEL_943;
      case 29:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        *(v577 + 756) |= 0x10uLL;
        v578 = 0;
        v208 = objc_msgSend_position(v3) + 8;
        if (v208 >= objc_msgSend_position(v3) && (v209 = objc_msgSend_position(v3) + 8, v209 <= [v3 length]))
        {
          v510 = [v3 data];
          [v510 getBytes:&v578 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        v502 = v578;
        v503 = 464;
        goto LABEL_1260;
      case 30:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v391 = 0;
        v392 = 0;
        v393 = 0;
        *(v577 + 756) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v394 = objc_msgSend_position(v3) + 1;
          if (v394 >= objc_msgSend_position(v3) && (v395 = objc_msgSend_position(v3) + 1, v395 <= [v3 length]))
          {
            v396 = [v3 data];
            [v396 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v393 |= (v578 & 0x7F) << v391;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v391 += 7;
          v50 = v392++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1096;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v393;
        }

LABEL_1096:
        v485 = 652;
        goto LABEL_1119;
      case 31:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 759) & 1) == 0)
        {
          v181 = PBReaderReadString();
          v182 = 416;
          goto LABEL_798;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v488 = *(v42 + 756) << 39;
        goto LABEL_1195;
      case 32:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 760) & 1) == 0)
        {
          v181 = PBReaderReadString();
          v182 = 496;
          goto LABEL_798;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v488 = *(v42 + 756) << 31;
        goto LABEL_1195;
      case 33:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v239 = 0;
        v240 = 0;
        v241 = 0;
        *(v577 + 756) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v242 = objc_msgSend_position(v3) + 1;
          if (v242 >= objc_msgSend_position(v3) && (v243 = objc_msgSend_position(v3) + 1, v243 <= [v3 length]))
          {
            v244 = [v3 data];
            [v244 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v241 |= (v578 & 0x7F) << v239;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v239 += 7;
          v50 = v240++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1038;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v241;
        }

LABEL_1038:
        v485 = 640;
        goto LABEL_1119;
      case 34:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v297 = 0;
        v298 = 0;
        v299 = 0;
        *(v577 + 756) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v300 = objc_msgSend_position(v3) + 1;
          if (v300 >= objc_msgSend_position(v3) && (v301 = objc_msgSend_position(v3) + 1, v301 <= [v3 length]))
          {
            v302 = [v3 data];
            [v302 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v299 |= (v578 & 0x7F) << v297;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v297 += 7;
          v50 = v298++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1062;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v299;
        }

LABEL_1062:
        v485 = 636;
        goto LABEL_1119;
      case 35:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v245 = 0;
        v246 = 0;
        v247 = 0;
        *(v577 + 756) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v248 = objc_msgSend_position(v3) + 1;
          if (v248 >= objc_msgSend_position(v3) && (v249 = objc_msgSend_position(v3) + 1, v249 <= [v3 length]))
          {
            v250 = [v3 data];
            [v250 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v247 |= (v578 & 0x7F) << v245;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v245 += 7;
          v50 = v246++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1042;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v247;
        }

LABEL_1042:
        v485 = 628;
        goto LABEL_1119;
      case 36:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v403 = 0;
        v404 = 0;
        v405 = 0;
        *(v577 + 756) |= 0x400000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v406 = objc_msgSend_position(v3) + 1;
          if (v406 >= objc_msgSend_position(v3) && (v407 = objc_msgSend_position(v3) + 1, v407 <= [v3 length]))
          {
            v408 = [v3 data];
            [v408 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v405 |= (v578 & 0x7F) << v403;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v403 += 7;
          v50 = v404++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1100;
          }
        }

        v92 = (v405 != 0) & ~[v3 hasError];
LABEL_1100:
        v486 = 738;
        goto LABEL_1128;
      case 38:
        if (!v55 || (*(v42 + 759) & 8) != 0)
        {
          goto LABEL_961;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOLocation);
        if (!GEOLocationReadAllFrom(v93, v3, v572 & 1))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        [(GEOMapServiceTraits *)v577 _addNoFlagsHistoricalLocations:v93];
        goto LABEL_804;
      case 39:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 757) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }

          v488 = *(v42 + 756) << 48;
          goto LABEL_1195;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOAutomobileOptions);
        if (!GEOAutomobileOptionsReadAllFrom(v93, v3, v572 & 1))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        v94 = 328;
        goto LABEL_943;
      case 40:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 760) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }

          v488 = *(v42 + 756) << 24;
          goto LABEL_1195;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOTransitOptions);
        if (!GEOTransitOptionsReadAllFrom(v93, v3, v572 & 1))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        v94 = 560;
        goto LABEL_943;
      case 41:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 761) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }

          v488 = *(v42 + 756) << 19;
          goto LABEL_1195;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOWalkingOptions);
        if (!GEOWalkingOptionsReadAllFrom(v93, v3, v572 & 1))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        v94 = 600;
        goto LABEL_943;
      case 42:
        if (!v55 || (*(v577 + 756) & 0x8000000000000000) != 0)
        {
          goto LABEL_961;
        }

        if (v53 != 2)
        {
          v489 = 0;
          v490 = 0;
          v491 = 0;
          v562 = 24;
          while (1)
          {
            LOBYTE(v578) = 0;
            v492 = objc_msgSend_position(v3, v562) + 1;
            if (v492 >= objc_msgSend_position(v3) && (v493 = objc_msgSend_position(v3) + 1, v493 <= [v3 length]))
            {
              v494 = [v3 data];
              [v494 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v491 |= (v578 & 0x7F) << v489;
            if ((v578 & 0x80) == 0)
            {
              goto LABEL_1297;
            }

            v489 += 7;
            v50 = v490++ >= 9;
            if (v50)
            {
              goto LABEL_1298;
            }
          }
        }

        v578 = 0;
        v579 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_1362;
        }

        while (1)
        {
          v309 = objc_msgSend_position(v3);
          if (v309 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_917;
          }

          v310 = 0;
          v311 = 0;
          v312 = 0;
          while (1)
          {
            v580 = 0;
            v313 = objc_msgSend_position(v3) + 1;
            if (v313 >= objc_msgSend_position(v3) && (v314 = objc_msgSend_position(v3) + 1, v314 <= [v3 length]))
            {
              v315 = [v3 data];
              [v315 getBytes:&v580 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v312 |= (v580 & 0x7F) << v310;
            if ((v580 & 0x80) == 0)
            {
              break;
            }

            v310 += 7;
            v50 = v311++ >= 9;
            if (v50)
            {
              goto LABEL_585;
            }
          }

          [v3 hasError];
LABEL_585:
          PBRepeatedInt32Add();
        }

      case 43:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v183 = 0;
        v184 = 0;
        v185 = 0;
        *(v577 + 756) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v186 = objc_msgSend_position(v3) + 1;
          if (v186 >= objc_msgSend_position(v3) && (v187 = objc_msgSend_position(v3) + 1, v187 <= [v3 length]))
          {
            v188 = [v3 data];
            [v188 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v185 |= (v578 & 0x7F) << v183;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v183 += 7;
          v50 = v184++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1016;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v185;
        }

LABEL_1016:
        v485 = 680;
        goto LABEL_1119;
      case 44:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v175 = 0;
        v176 = 0;
        v177 = 0;
        *(v577 + 756) |= 0x80000000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v178 = objc_msgSend_position(v3) + 1;
          if (v178 >= objc_msgSend_position(v3) && (v179 = objc_msgSend_position(v3) + 1, v179 <= [v3 length]))
          {
            v180 = [v3 data];
            [v180 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v177 |= (v578 & 0x7F) << v175;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v175 += 7;
          v50 = v176++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1012;
          }
        }

        v92 = (v177 != 0) & ~[v3 hasError];
LABEL_1012:
        v486 = 747;
        goto LABEL_1128;
      case 45:
        if (!v55 || (*(v42 + 756) & 1) != 0)
        {
          goto LABEL_961;
        }

        if (v53 != 2)
        {
          v512 = 0;
          v513 = 0;
          v514 = 0;
          v565 = 48;
          while (1)
          {
            LOBYTE(v578) = 0;
            v515 = objc_msgSend_position(v3, v565) + 1;
            if (v515 >= objc_msgSend_position(v3) && (v516 = objc_msgSend_position(v3) + 1, v516 <= [v3 length]))
            {
              v517 = [v3 data];
              [v517 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v514 |= (v578 & 0x7F) << v512;
            if ((v578 & 0x80) == 0)
            {
              goto LABEL_1297;
            }

            v512 += 7;
            v50 = v513++ >= 9;
            if (v50)
            {
              goto LABEL_1298;
            }
          }
        }

        v578 = 0;
        v579 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_1362;
        }

        while (1)
        {
          v218 = objc_msgSend_position(v3);
          if (v218 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_917;
          }

          v219 = 0;
          v220 = 0;
          v221 = 0;
          while (1)
          {
            v580 = 0;
            v222 = objc_msgSend_position(v3) + 1;
            if (v222 >= objc_msgSend_position(v3) && (v223 = objc_msgSend_position(v3) + 1, v223 <= [v3 length]))
            {
              v224 = [v3 data];
              [v224 getBytes:&v580 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v221 |= (v580 & 0x7F) << v219;
            if ((v580 & 0x80) == 0)
            {
              break;
            }

            v219 += 7;
            v50 = v220++ >= 9;
            if (v50)
            {
              goto LABEL_381;
            }
          }

          [v3 hasError];
LABEL_381:
          PBRepeatedInt32Add();
        }

      case 46:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v264 = 0;
        v265 = 0;
        v266 = 0;
        *(v577 + 756) |= 0x1000000000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v267 = objc_msgSend_position(v3) + 1;
          if (v267 >= objc_msgSend_position(v3) && (v268 = objc_msgSend_position(v3) + 1, v268 <= [v3 length]))
          {
            v269 = [v3 data];
            [v269 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v266 |= (v578 & 0x7F) << v264;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v264 += 7;
          v50 = v265++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1046;
          }
        }

        v92 = (v266 != 0) & ~[v3 hasError];
LABEL_1046:
        v486 = 752;
        goto LABEL_1128;
      case 47:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 761) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }

          v488 = *(v42 + 756) << 20;
          goto LABEL_1195;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOPDVenueIdentifier);
        if (!GEOPDVenueIdentifierReadAllFrom(v93, v3, v572 & 1))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        v94 = 592;
        goto LABEL_943;
      case 48:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v145 = 0;
        v146 = 0;
        v147 = 0;
        *(v577 + 756) |= 0x100000000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v148 = objc_msgSend_position(v3) + 1;
          if (v148 >= objc_msgSend_position(v3) && (v149 = objc_msgSend_position(v3) + 1, v149 <= [v3 length]))
          {
            v150 = [v3 data];
            [v150 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v147 |= (v578 & 0x7F) << v145;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v145 += 7;
          v50 = v146++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1002;
          }
        }

        v92 = (v147 != 0) & ~[v3 hasError];
LABEL_1002:
        v486 = 748;
        goto LABEL_1128;
      case 49:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v189 = 0;
        v190 = 0;
        v191 = 0;
        *(v577 + 756) |= 0x4000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v192 = objc_msgSend_position(v3) + 1;
          if (v192 >= objc_msgSend_position(v3) && (v193 = objc_msgSend_position(v3) + 1, v193 <= [v3 length]))
          {
            v194 = [v3 data];
            [v194 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v191 |= (v578 & 0x7F) << v189;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v189 += 7;
          v50 = v190++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1018;
          }
        }

        v92 = (v191 != 0) & ~[v3 hasError];
LABEL_1018:
        v486 = 730;
        goto LABEL_1128;
      case 50:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v283 = 0;
        v284 = 0;
        v285 = 0;
        *(v577 + 756) |= 0x400000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v286 = objc_msgSend_position(v3) + 1;
          if (v286 >= objc_msgSend_position(v3) && (v287 = objc_msgSend_position(v3) + 1, v287 <= [v3 length]))
          {
            v288 = [v3 data];
            [v288 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v285 |= (v578 & 0x7F) << v283;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v283 += 7;
          v50 = v284++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1054;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v285;
        }

LABEL_1054:
        v485 = 684;
        goto LABEL_1119;
      case 51:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v303 = 0;
        v304 = 0;
        v305 = 0;
        *(v577 + 756) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v306 = objc_msgSend_position(v3) + 1;
          if (v306 >= objc_msgSend_position(v3) && (v307 = objc_msgSend_position(v3) + 1, v307 <= [v3 length]))
          {
            v308 = [v3 data];
            [v308 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v305 |= (v578 & 0x7F) << v303;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v303 += 7;
          v50 = v304++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1066;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v305;
        }

LABEL_1066:
        v485 = 648;
        goto LABEL_1119;
      case 52:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 757) & 4) == 0)
        {
          v181 = PBReaderReadString();
          v182 = 288;
LABEL_798:
          v409 = *(v577 + v182);
          *(v577 + v182) = v181;
          goto LABEL_944;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v488 = *(v42 + 756) << 53;
        goto LABEL_1195;
      case 53:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        *(v577 + 756) |= 0x20uLL;
        v578 = 0;
        v295 = objc_msgSend_position(v3) + 8;
        if (v295 >= objc_msgSend_position(v3) && (v296 = objc_msgSend_position(v3) + 8, v296 <= [v3 length]))
        {
          v531 = [v3 data];
          [v531 getBytes:&v578 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        v502 = v578;
        v503 = 544;
        goto LABEL_1260;
      case 54:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v169 = 0;
        v170 = 0;
        v171 = 0;
        *(v577 + 756) |= 0x40000000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v172 = objc_msgSend_position(v3) + 1;
          if (v172 >= objc_msgSend_position(v3) && (v173 = objc_msgSend_position(v3) + 1, v173 <= [v3 length]))
          {
            v174 = [v3 data];
            [v174 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v171 |= (v578 & 0x7F) << v169;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v169 += 7;
          v50 = v170++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1010;
          }
        }

        v92 = (v171 != 0) & ~[v3 hasError];
LABEL_1010:
        v486 = 746;
        goto LABEL_1128;
      case 55:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v151 = 0;
        v152 = 0;
        v153 = 0;
        *(v577 + 756) |= 0x400000000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v154 = objc_msgSend_position(v3) + 1;
          if (v154 >= objc_msgSend_position(v3) && (v155 = objc_msgSend_position(v3) + 1, v155 <= [v3 length]))
          {
            v156 = [v3 data];
            [v156 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v153 |= (v578 & 0x7F) << v151;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v151 += 7;
          v50 = v152++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1004;
          }
        }

        v92 = (v153 != 0) & ~[v3 hasError];
LABEL_1004:
        v486 = 750;
        goto LABEL_1128;
      case 56:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v428 = 0;
        v429 = 0;
        v430 = 0;
        *(v577 + 756) |= 0x2000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v431 = objc_msgSend_position(v3) + 1;
          if (v431 >= objc_msgSend_position(v3) && (v432 = objc_msgSend_position(v3) + 1, v432 <= [v3 length]))
          {
            v433 = [v3 data];
            [v433 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v430 |= (v578 & 0x7F) << v428;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v428 += 7;
          v50 = v429++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1110;
          }
        }

        v92 = (v430 != 0) & ~[v3 hasError];
LABEL_1110:
        v486 = 729;
        goto LABEL_1128;
      case 57:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v397 = 0;
        v398 = 0;
        v399 = 0;
        *(v577 + 756) |= 0x200000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v400 = objc_msgSend_position(v3) + 1;
          if (v400 >= objc_msgSend_position(v3) && (v401 = objc_msgSend_position(v3) + 1, v401 <= [v3 length]))
          {
            v402 = [v3 data];
            [v402 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v399 |= (v578 & 0x7F) << v397;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v397 += 7;
          v50 = v398++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1098;
          }
        }

        v92 = (v399 != 0) & ~[v3 hasError];
LABEL_1098:
        v486 = 725;
        goto LABEL_1128;
      case 58:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v163 = 0;
        v164 = 0;
        v165 = 0;
        *(v577 + 756) |= 0x800000000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v166 = objc_msgSend_position(v3) + 1;
          if (v166 >= objc_msgSend_position(v3) && (v167 = objc_msgSend_position(v3) + 1, v167 <= [v3 length]))
          {
            v168 = [v3 data];
            [v168 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v165 |= (v578 & 0x7F) << v163;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v163 += 7;
          v50 = v164++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1008;
          }
        }

        v92 = (v165 != 0) & ~[v3 hasError];
LABEL_1008:
        v486 = 751;
        goto LABEL_1128;
      case 59:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v316 = 0;
        v317 = 0;
        v318 = 0;
        *(v577 + 756) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v319 = objc_msgSend_position(v3) + 1;
          if (v319 >= objc_msgSend_position(v3) && (v320 = objc_msgSend_position(v3) + 1, v320 <= [v3 length]))
          {
            v321 = [v3 data];
            [v321 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v318 |= (v578 & 0x7F) << v316;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v316 += 7;
          v50 = v317++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1070;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v318;
        }

LABEL_1070:
        v485 = 688;
        goto LABEL_1119;
      case 60:
        if (!v55 || (*(v42 + 756) & 8) != 0)
        {
          goto LABEL_961;
        }

        if (v53 != 2)
        {
          v538 = 0;
          v539 = 0;
          v540 = 0;
          v569 = 120;
          while (1)
          {
            LOBYTE(v578) = 0;
            v541 = objc_msgSend_position(v3, v569) + 1;
            if (v541 >= objc_msgSend_position(v3) && (v542 = objc_msgSend_position(v3) + 1, v542 <= [v3 length]))
            {
              v543 = [v3 data];
              [v543 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v540 |= (v578 & 0x7F) << v538;
            if ((v578 & 0x80) == 0)
            {
              goto LABEL_1297;
            }

            v538 += 7;
            v50 = v539++ >= 9;
            if (v50)
            {
              goto LABEL_1298;
            }
          }
        }

        v578 = 0;
        v579 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_1362;
        }

        while (1)
        {
          v359 = objc_msgSend_position(v3);
          if (v359 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_917;
          }

          v360 = 0;
          v361 = 0;
          v362 = 0;
          while (1)
          {
            v580 = 0;
            v363 = objc_msgSend_position(v3) + 1;
            if (v363 >= objc_msgSend_position(v3) && (v364 = objc_msgSend_position(v3) + 1, v364 <= [v3 length]))
            {
              v365 = [v3 data];
              [v365 getBytes:&v580 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v362 |= (v580 & 0x7F) << v360;
            if ((v580 & 0x80) == 0)
            {
              break;
            }

            v360 += 7;
            v50 = v361++ >= 9;
            if (v50)
            {
              goto LABEL_691;
            }
          }

          [v3 hasError];
LABEL_691:
          PBRepeatedInt32Add();
        }

      case 61:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v157 = 0;
        v158 = 0;
        v159 = 0;
        *(v577 + 756) |= 0x40000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v160 = objc_msgSend_position(v3) + 1;
          if (v160 >= objc_msgSend_position(v3) && (v161 = objc_msgSend_position(v3) + 1, v161 <= [v3 length]))
          {
            v162 = [v3 data];
            [v162 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v159 |= (v578 & 0x7F) << v157;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v157 += 7;
          v50 = v158++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1006;
          }
        }

        v92 = (v159 != 0) & ~[v3 hasError];
LABEL_1006:
        v486 = 734;
        goto LABEL_1128;
      case 62:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 761) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }

          v488 = *(v42 + 756) << 22;
          goto LABEL_1195;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOTraitsTransitScheduleFilter);
        if (!GEOTraitsTransitScheduleFilterReadAllFrom(v93, v3, v572 & 1))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        v94 = 576;
        goto LABEL_943;
      case 63:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v366 = 0;
        v367 = 0;
        v368 = 0;
        *(v577 + 756) |= 0x20000000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v369 = objc_msgSend_position(v3) + 1;
          if (v369 >= objc_msgSend_position(v3) && (v370 = objc_msgSend_position(v3) + 1, v370 <= [v3 length]))
          {
            v371 = [v3 data];
            [v371 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v368 |= (v578 & 0x7F) << v366;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v366 += 7;
          v50 = v367++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1086;
          }
        }

        v92 = (v368 != 0) & ~[v3 hasError];
LABEL_1086:
        v486 = 745;
        goto LABEL_1128;
      case 64:
        if (!v55 || (*(v42 + 756) & 0x20) != 0)
        {
          goto LABEL_961;
        }

        if (v53 == 2)
        {
          v578 = 0;
          v579 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_1362;
          }

          while (1)
          {
            v464 = objc_msgSend_position(v3);
            if (v464 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
            {
              break;
            }

            v465 = 0;
            v466 = 0;
            v467 = 0;
            while (1)
            {
              v580 = 0;
              v468 = objc_msgSend_position(v3) + 1;
              if (v468 >= objc_msgSend_position(v3) && (v469 = objc_msgSend_position(v3) + 1, v469 <= [v3 length]))
              {
                v470 = [v3 data];
                [v470 getBytes:&v580 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v467 |= (v580 & 0x7F) << v465;
              if ((v580 & 0x80) == 0)
              {
                break;
              }

              v465 += 7;
              v50 = v466++ >= 9;
              if (v50)
              {
                goto LABEL_916;
              }
            }

            [v3 hasError];
LABEL_916:
            PBRepeatedInt32Add();
          }

LABEL_917:
          PBReaderRecallMark();
        }

        else
        {
          v550 = 0;
          v551 = 0;
          v552 = 0;
          v571 = 168;
          while (1)
          {
            LOBYTE(v578) = 0;
            v553 = objc_msgSend_position(v3, v571) + 1;
            if (v553 >= objc_msgSend_position(v3) && (v554 = objc_msgSend_position(v3) + 1, v554 <= [v3 length]))
            {
              v555 = [v3 data];
              [v555 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v552 |= (v578 & 0x7F) << v550;
            if ((v578 & 0x80) == 0)
            {
              break;
            }

            v550 += 7;
            v50 = v551++ >= 9;
            if (v50)
            {
              goto LABEL_1298;
            }
          }

LABEL_1297:
          [v3 hasError];
LABEL_1298:
          PBRepeatedInt32Add();
        }

LABEL_1129:
        v40 = v576;
        goto LABEL_1130;
      case 65:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v410 = 0;
        v411 = 0;
        v412 = 0;
        *(v577 + 756) |= 0x8000000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v413 = objc_msgSend_position(v3) + 1;
          if (v413 >= objc_msgSend_position(v3) && (v414 = objc_msgSend_position(v3) + 1, v414 <= [v3 length]))
          {
            v415 = [v3 data];
            [v415 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v412 |= (v578 & 0x7F) << v410;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v410 += 7;
          v50 = v411++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1102;
          }
        }

        v92 = (v412 != 0) & ~[v3 hasError];
LABEL_1102:
        v486 = 743;
        goto LABEL_1128;
      case 66:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v434 = 0;
        v435 = 0;
        v436 = 0;
        *(v577 + 756) |= 0x10000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v437 = objc_msgSend_position(v3) + 1;
          if (v437 >= objc_msgSend_position(v3) && (v438 = objc_msgSend_position(v3) + 1, v438 <= [v3 length]))
          {
            v439 = [v3 data];
            [v439 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v436 |= (v578 & 0x7F) << v434;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v434 += 7;
          v50 = v435++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1112;
          }
        }

        v92 = (v436 != 0) & ~[v3 hasError];
LABEL_1112:
        v486 = 732;
        goto LABEL_1128;
      case 67:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v372 = 0;
        v373 = 0;
        v374 = 0;
        *(v577 + 756) |= 0x800000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v375 = objc_msgSend_position(v3) + 1;
          if (v375 >= objc_msgSend_position(v3) && (v376 = objc_msgSend_position(v3) + 1, v376 <= [v3 length]))
          {
            v377 = [v3 data];
            [v377 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v374 |= (v578 & 0x7F) << v372;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v372 += 7;
          v50 = v373++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1088;
          }
        }

        v92 = (v374 != 0) & ~[v3 hasError];
LABEL_1088:
        v486 = 727;
        goto LABEL_1128;
      case 68:
        if (!v55 || (*(v42 + 756) & 0x10) != 0)
        {
          goto LABEL_961;
        }

        if (v53 != 2)
        {
          v544 = 0;
          v545 = 0;
          v546 = 0;
          v570 = 144;
          while (1)
          {
            LOBYTE(v578) = 0;
            v547 = objc_msgSend_position(v3, v570) + 1;
            if (v547 >= objc_msgSend_position(v3) && (v548 = objc_msgSend_position(v3) + 1, v548 <= [v3 length]))
            {
              v549 = [v3 data];
              [v549 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v546 |= (v578 & 0x7F) << v544;
            if ((v578 & 0x80) == 0)
            {
              goto LABEL_1297;
            }

            v544 += 7;
            v50 = v545++ >= 9;
            if (v50)
            {
              goto LABEL_1298;
            }
          }
        }

        v578 = 0;
        v579 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_1362;
        }

        while (1)
        {
          v378 = objc_msgSend_position(v3);
          if (v378 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_917;
          }

          v379 = 0;
          v380 = 0;
          v381 = 0;
          while (1)
          {
            v580 = 0;
            v382 = objc_msgSend_position(v3) + 1;
            if (v382 >= objc_msgSend_position(v3) && (v383 = objc_msgSend_position(v3) + 1, v383 <= [v3 length]))
            {
              v384 = [v3 data];
              [v384 getBytes:&v580 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v381 |= (v580 & 0x7F) << v379;
            if ((v580 & 0x80) == 0)
            {
              break;
            }

            v379 += 7;
            v50 = v380++ >= 9;
            if (v50)
            {
              goto LABEL_736;
            }
          }

          [v3 hasError];
LABEL_736:
          PBRepeatedInt32Add();
        }

      case 70:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v210 = 0;
        v211 = 0;
        v212 = 0;
        *(v577 + 756) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v213 = objc_msgSend_position(v3) + 1;
          if (v213 >= objc_msgSend_position(v3) && (v214 = objc_msgSend_position(v3) + 1, v214 <= [v3 length]))
          {
            v215 = [v3 data];
            [v215 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v212 |= (v578 & 0x7F) << v210;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v210 += 7;
          v50 = v211++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1026;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v212;
        }

LABEL_1026:
        v485 = 656;
        goto LABEL_1119;
      case 71:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 758) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }

          v488 = *(v42 + 756) << 44;
          goto LABEL_1195;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOCyclingOptions);
        if (!GEOCyclingOptionsReadAllFrom(v93, v3, v572 & 1))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        v94 = 376;
        goto LABEL_943;
      case 72:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v113 = 0;
        v114 = 0;
        v115 = 0;
        *(v577 + 756) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v116 = objc_msgSend_position(v3) + 1;
          if (v116 >= objc_msgSend_position(v3) && (v117 = objc_msgSend_position(v3) + 1, v117 <= [v3 length]))
          {
            v118 = [v3 data];
            [v118 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v115 |= (v578 & 0x7F) << v113;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v50 = v114++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_990;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v115;
        }

LABEL_990:
        v485 = 672;
        goto LABEL_1119;
      case 73:
        if (!v55 || (*(v42 + 759) & 2) != 0)
        {
          goto LABEL_961;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOPDEvChargingPort);
        if (!GEOPDEvChargingPortReadAllFrom(v93, v3))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        [(GEOMapServiceTraits *)v577 _addNoFlagsEvChargingPort:v93];
LABEL_804:

        goto LABEL_1130;
      case 74:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v422 = 0;
        v423 = 0;
        v424 = 0;
        *(v577 + 756) |= 0x80000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v425 = objc_msgSend_position(v3) + 1;
          if (v425 >= objc_msgSend_position(v3) && (v426 = objc_msgSend_position(v3) + 1, v426 <= [v3 length]))
          {
            v427 = [v3 data];
            [v427 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v424 |= (v578 & 0x7F) << v422;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v422 += 7;
          v50 = v423++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1108;
          }
        }

        v92 = (v424 != 0) & ~[v3 hasError];
LABEL_1108:
        v486 = 735;
        goto LABEL_1128;
      case 75:
        if (!v55 || (*(v42 + 756) & 0x80) != 0)
        {
          goto LABEL_961;
        }

        if (v53 != 2)
        {
          v519 = 0;
          v520 = 0;
          v521 = 0;
          v566 = 216;
          while (1)
          {
            LOBYTE(v578) = 0;
            v522 = objc_msgSend_position(v3, v566) + 1;
            if (v522 >= objc_msgSend_position(v3) && (v523 = objc_msgSend_position(v3) + 1, v523 <= [v3 length]))
            {
              v524 = [v3 data];
              [v524 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v521 |= (v578 & 0x7F) << v519;
            if ((v578 & 0x80) == 0)
            {
              goto LABEL_1297;
            }

            v519 += 7;
            v50 = v520++ >= 9;
            if (v50)
            {
              goto LABEL_1298;
            }
          }
        }

        v578 = 0;
        v579 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_1362;
        }

        while (1)
        {
          v257 = objc_msgSend_position(v3);
          if (v257 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_917;
          }

          v258 = 0;
          v259 = 0;
          v260 = 0;
          while (1)
          {
            v580 = 0;
            v261 = objc_msgSend_position(v3) + 1;
            if (v261 >= objc_msgSend_position(v3) && (v262 = objc_msgSend_position(v3) + 1, v262 <= [v3 length]))
            {
              v263 = [v3 data];
              [v263 getBytes:&v580 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v260 |= (v580 & 0x7F) << v258;
            if ((v580 & 0x80) == 0)
            {
              break;
            }

            v258 += 7;
            v50 = v259++ >= 9;
            if (v50)
            {
              goto LABEL_463;
            }
          }

          [v3 hasError];
LABEL_463:
          PBRepeatedInt32Add();
        }

      case 76:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v446 = 0;
        v447 = 0;
        v448 = 0;
        *(v577 + 756) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v449 = objc_msgSend_position(v3) + 1;
          if (v449 >= objc_msgSend_position(v3) && (v450 = objc_msgSend_position(v3) + 1, v450 <= [v3 length]))
          {
            v451 = [v3 data];
            [v451 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v448 |= (v578 & 0x7F) << v446;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v446 += 7;
          v50 = v447++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1118;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v448;
        }

LABEL_1118:
        v485 = 624;
        goto LABEL_1119;
      case 77:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v385 = 0;
        v386 = 0;
        v387 = 0;
        *(v577 + 756) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v388 = objc_msgSend_position(v3) + 1;
          if (v388 >= objc_msgSend_position(v3) && (v389 = objc_msgSend_position(v3) + 1, v389 <= [v3 length]))
          {
            v390 = [v3 data];
            [v390 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v387 |= (v578 & 0x7F) << v385;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v385 += 7;
          v50 = v386++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1092;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v387;
        }

LABEL_1092:
        v485 = 668;
        goto LABEL_1119;
      case 78:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        *(v577 + 756) |= 8uLL;
        v578 = 0;
        v125 = objc_msgSend_position(v3) + 8;
        if (v125 >= objc_msgSend_position(v3) && (v126 = objc_msgSend_position(v3) + 8, v126 <= [v3 length]))
        {
          v501 = [v3 data];
          [v501 getBytes:&v578 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        v502 = v578;
        v503 = 448;
LABEL_1260:
        *(v577 + v503) = v502;
        goto LABEL_1130;
      case 79:
        if (!v55 || (*(v42 + 756) & 2) != 0)
        {
          goto LABEL_961;
        }

        if (v53 != 2)
        {
          v504 = 0;
          v505 = 0;
          v506 = 0;
          v564 = 72;
          while (1)
          {
            LOBYTE(v578) = 0;
            v507 = objc_msgSend_position(v3, v564) + 1;
            if (v507 >= objc_msgSend_position(v3) && (v508 = objc_msgSend_position(v3) + 1, v508 <= [v3 length]))
            {
              v509 = [v3 data];
              [v509 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v506 |= (v578 & 0x7F) << v504;
            if ((v578 & 0x80) == 0)
            {
              goto LABEL_1297;
            }

            v504 += 7;
            v50 = v505++ >= 9;
            if (v50)
            {
              goto LABEL_1298;
            }
          }
        }

        v578 = 0;
        v579 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_1362;
        }

        while (1)
        {
          v195 = objc_msgSend_position(v3);
          if (v195 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_917;
          }

          v196 = 0;
          v197 = 0;
          v198 = 0;
          while (1)
          {
            v580 = 0;
            v199 = objc_msgSend_position(v3) + 1;
            if (v199 >= objc_msgSend_position(v3) && (v200 = objc_msgSend_position(v3) + 1, v200 <= [v3 length]))
            {
              v201 = [v3 data];
              [v201 getBytes:&v580 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v198 |= (v580 & 0x7F) << v196;
            if ((v580 & 0x80) == 0)
            {
              break;
            }

            v196 += 7;
            v50 = v197++ >= 9;
            if (v50)
            {
              goto LABEL_307;
            }
          }

          [v3 hasError];
LABEL_307:
          PBRepeatedInt32Add();
        }

      case 80:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v322 = 0;
        v323 = 0;
        v324 = 0;
        *(v577 + 756) |= 0x4000000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v325 = objc_msgSend_position(v3) + 1;
          if (v325 >= objc_msgSend_position(v3) && (v326 = objc_msgSend_position(v3) + 1, v326 <= [v3 length]))
          {
            v327 = [v3 data];
            [v327 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v324 |= (v578 & 0x7F) << v322;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v322 += 7;
          v50 = v323++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1072;
          }
        }

        v92 = (v324 != 0) & ~[v3 hasError];
LABEL_1072:
        v486 = 742;
        goto LABEL_1128;
      case 81:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v133 = 0;
        v134 = 0;
        v135 = 0;
        *(v577 + 756) |= 0x2000000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v136 = objc_msgSend_position(v3) + 1;
          if (v136 >= objc_msgSend_position(v3) && (v137 = objc_msgSend_position(v3) + 1, v137 <= [v3 length]))
          {
            v138 = [v3 data];
            [v138 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v135 |= (v578 & 0x7F) << v133;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v50 = v134++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_998;
          }
        }

        v92 = (v135 != 0) & ~[v3 hasError];
LABEL_998:
        v486 = 741;
        goto LABEL_1128;
      case 82:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 759) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }

          v488 = *(v42 + 756) << 33;
          goto LABEL_1195;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOPDViewportInfo);
        if (!GEOPDViewportInfoReadAllFrom(v93, v3, v572 & 1))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        v94 = 480;
        goto LABEL_943;
      case 83:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(v577 + 756) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v110 = objc_msgSend_position(v3) + 1;
          if (v110 >= objc_msgSend_position(v3) && (v111 = objc_msgSend_position(v3) + 1, v111 <= [v3 length]))
          {
            v112 = [v3 data];
            [v112 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v109 |= (v578 & 0x7F) << v107;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v50 = v108++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_986;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v109;
        }

LABEL_986:
        v485 = 660;
        goto LABEL_1119;
      case 84:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 760) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }

          v488 = *(v42 + 756) << 29;
          goto LABEL_1195;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOPDResultRefinementQuery);
        if (!GEOPDResultRefinementQueryReadAllFrom(v93, v3, v572 & 1))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        v94 = 512;
        goto LABEL_943;
      case 85:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(v577 + 756) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v83 = objc_msgSend_position(v3) + 1;
          if (v83 >= objc_msgSend_position(v3) && (v84 = objc_msgSend_position(v3) + 1, v84 <= [v3 length]))
          {
            v85 = [v3 data];
            [v85 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v82 |= (v578 & 0x7F) << v80;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v50 = v81++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_974;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v82;
        }

LABEL_974:
        v485 = 676;
        goto LABEL_1119;
      case 86:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(v577 + 756) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v98 = objc_msgSend_position(v3) + 1;
          if (v98 >= objc_msgSend_position(v3) && (v99 = objc_msgSend_position(v3) + 1, v99 <= [v3 length]))
          {
            v100 = [v3 data];
            [v100 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v97 |= (v578 & 0x7F) << v95;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v50 = v96++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_980;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v97;
        }

LABEL_980:
        v485 = 700;
        goto LABEL_1119;
      case 87:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 758) & 4) == 0)
        {
          v181 = PBReaderReadString();
          v182 = 368;
          goto LABEL_798;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v488 = *(v42 + 756) << 45;
        goto LABEL_1195;
      case 88:
        if (!v55 || (*(v42 + 756) & 0x40) != 0)
        {
          goto LABEL_961;
        }

        if (v53 != 2)
        {
          v532 = 0;
          v533 = 0;
          v534 = 0;
          v568 = 192;
          while (1)
          {
            LOBYTE(v578) = 0;
            v535 = objc_msgSend_position(v3, v568) + 1;
            if (v535 >= objc_msgSend_position(v3) && (v536 = objc_msgSend_position(v3) + 1, v536 <= [v3 length]))
            {
              v537 = [v3 data];
              [v537 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v534 |= (v578 & 0x7F) << v532;
            if ((v578 & 0x80) == 0)
            {
              goto LABEL_1297;
            }

            v532 += 7;
            v50 = v533++ >= 9;
            if (v50)
            {
              goto LABEL_1298;
            }
          }
        }

        v578 = 0;
        v579 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_1362;
        }

        while (1)
        {
          v328 = objc_msgSend_position(v3);
          if (v328 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_917;
          }

          v329 = 0;
          v330 = 0;
          v331 = 0;
          while (1)
          {
            v580 = 0;
            v332 = objc_msgSend_position(v3) + 1;
            if (v332 >= objc_msgSend_position(v3) && (v333 = objc_msgSend_position(v3) + 1, v333 <= [v3 length]))
            {
              v334 = [v3 data];
              [v334 getBytes:&v580 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v331 |= (v580 & 0x7F) << v329;
            if ((v580 & 0x80) == 0)
            {
              break;
            }

            v329 += 7;
            v50 = v330++ >= 9;
            if (v50)
            {
              goto LABEL_625;
            }
          }

          [v3 hasError];
LABEL_625:
          PBRepeatedInt32Add();
        }

      case 89:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v119 = 0;
        v120 = 0;
        v121 = 0;
        *(v577 + 756) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v122 = objc_msgSend_position(v3) + 1;
          if (v122 >= objc_msgSend_position(v3) && (v123 = objc_msgSend_position(v3) + 1, v123 <= [v3 length]))
          {
            v124 = [v3 data];
            [v124 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v121 |= (v578 & 0x7F) << v119;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v50 = v120++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_994;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v121;
        }

LABEL_994:
        v485 = 620;
        goto LABEL_1119;
      case 90:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 757) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }

          v488 = *(v42 + 756) << 49;
          goto LABEL_1195;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOLatLng);
        if (!GEOLatLngReadAllFrom(v93, v3))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        v94 = 320;
        goto LABEL_943;
      case 91:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(v577 + 756) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v77 = objc_msgSend_position(v3) + 1;
          if (v77 >= objc_msgSend_position(v3) && (v78 = objc_msgSend_position(v3) + 1, v78 <= [v3 length]))
          {
            v79 = [v3 data];
            [v79 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v76 |= (v578 & 0x7F) << v74;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v50 = v75++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_970;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v76;
        }

LABEL_970:
        v485 = 704;
        goto LABEL_1119;
      case 92:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 760) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }

          v488 = *(v42 + 756) << 26;
          goto LABEL_1195;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOLatLng);
        if (!GEOLatLngReadAllFrom(v93, v3))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        v94 = 536;
        goto LABEL_943;
      case 94:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 757) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }

          v488 = *(v42 + 756) << 54;
          goto LABEL_1195;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOAddStopRouteInfo);
        if (!GEOAddStopRouteInfoReadAllFrom(v93, v3, v572 & 1))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        v94 = 280;
        goto LABEL_943;
      case 95:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v127 = 0;
        v128 = 0;
        v129 = 0;
        *(v577 + 756) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v130 = objc_msgSend_position(v3) + 1;
          if (v130 >= objc_msgSend_position(v3) && (v131 = objc_msgSend_position(v3) + 1, v131 <= [v3 length]))
          {
            v132 = [v3 data];
            [v132 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v129 |= (v578 & 0x7F) << v127;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v50 = v128++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_996;
          }
        }

        v92 = (v129 != 0) & ~[v3 hasError];
LABEL_996:
        v486 = 726;
        goto LABEL_1128;
      case 96:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v347 = 0;
        v348 = 0;
        v349 = 0;
        *(v577 + 756) |= 0x1000000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v350 = objc_msgSend_position(v3) + 1;
          if (v350 >= objc_msgSend_position(v3) && (v351 = objc_msgSend_position(v3) + 1, v351 <= [v3 length]))
          {
            v352 = [v3 data];
            [v352 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v349 |= (v578 & 0x7F) << v347;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v347 += 7;
          v50 = v348++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1082;
          }
        }

        v92 = (v349 != 0) & ~[v3 hasError];
LABEL_1082:
        v486 = 740;
        goto LABEL_1128;
      case 97:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(v577 + 756) |= 0x10000000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v89 = objc_msgSend_position(v3) + 1;
          if (v89 >= objc_msgSend_position(v3) && (v90 = objc_msgSend_position(v3) + 1, v90 <= [v3 length]))
          {
            v91 = [v3 data];
            [v91 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v88 |= (v578 & 0x7F) << v86;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v50 = v87++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_976;
          }
        }

        v92 = (v88 != 0) & ~[v3 hasError];
LABEL_976:
        v486 = 744;
        goto LABEL_1128;
      case 98:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 759) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }

          v488 = *(v42 + 756) << 32;
          goto LABEL_1195;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOPrivacyMetadata);
        if (!GEOPrivacyMetadataReadAllFrom(v93, v3))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        v94 = 488;
        goto LABEL_943;
      case 99:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(v577 + 756) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v70 = objc_msgSend_position(v3) + 1;
          if (v70 >= objc_msgSend_position(v3) && (v71 = objc_msgSend_position(v3) + 1, v71 <= [v3 length]))
          {
            v72 = [v3 data];
            [v72 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v69 |= (v578 & 0x7F) << v67;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v50 = v68++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_966;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v69;
        }

LABEL_966:
        v485 = 696;
        goto LABEL_1119;
      case 100:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(v577 + 756) |= 0x200000000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v104 = objc_msgSend_position(v3) + 1;
          if (v104 >= objc_msgSend_position(v3) && (v105 = objc_msgSend_position(v3) + 1, v105 <= [v3 length]))
          {
            v106 = [v3 data];
            [v106 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v103 |= (v578 & 0x7F) << v101;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v50 = v102++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_982;
          }
        }

        v92 = (v103 != 0) & ~[v3 hasError];
LABEL_982:
        v486 = 749;
        goto LABEL_1128;
      case 102:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v139 = 0;
        v140 = 0;
        v141 = 0;
        *(v577 + 756) |= 0x20000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v142 = objc_msgSend_position(v3) + 1;
          if (v142 >= objc_msgSend_position(v3) && (v143 = objc_msgSend_position(v3) + 1, v143 <= [v3 length]))
          {
            v144 = [v3 data];
            [v144 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v141 |= (v578 & 0x7F) << v139;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v50 = v140++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1000;
          }
        }

        v92 = (v141 != 0) & ~[v3 hasError];
LABEL_1000:
        v486 = 733;
        goto LABEL_1128;
      case 103:
        if (!v55 || (*(v42 + 756) & 4) != 0)
        {
          goto LABEL_961;
        }

        if (v53 != 2)
        {
          v495 = 0;
          v496 = 0;
          v497 = 0;
          v563 = 96;
          while (1)
          {
            LOBYTE(v578) = 0;
            v498 = objc_msgSend_position(v3, v563) + 1;
            if (v498 >= objc_msgSend_position(v3) && (v499 = objc_msgSend_position(v3) + 1, v499 <= [v3 length]))
            {
              v500 = [v3 data];
              [v500 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v497 |= (v578 & 0x7F) << v495;
            if ((v578 & 0x80) == 0)
            {
              break;
            }

            v495 += 7;
            v50 = v496++ >= 9;
            if (v50)
            {
              goto LABEL_1300;
            }
          }

          [v3 hasError];
LABEL_1300:
          PBRepeatedUInt64Add();
          goto LABEL_1129;
        }

        v578 = 0;
        v579 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_1362;
        }

        while (1)
        {
          v60 = objc_msgSend_position(v3);
          if (v60 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_917;
          }

          v61 = 0;
          v62 = 0;
          v63 = 0;
          while (1)
          {
            v580 = 0;
            v64 = objc_msgSend_position(v3) + 1;
            if (v64 >= objc_msgSend_position(v3) && (v65 = objc_msgSend_position(v3) + 1, v65 <= [v3 length]))
            {
              v66 = [v3 data];
              [v66 getBytes:&v580 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v63 |= (v580 & 0x7F) << v61;
            if ((v580 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v50 = v62++ >= 9;
            if (v50)
            {
              goto LABEL_63;
            }
          }

          [v3 hasError];
LABEL_63:
          PBRepeatedUInt64Add();
        }

      case 104:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v452 = 0;
        v453 = 0;
        v454 = 0;
        *(v577 + 756) |= 0x100000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v455 = objc_msgSend_position(v3) + 1;
          if (v455 >= objc_msgSend_position(v3) && (v456 = objc_msgSend_position(v3) + 1, v456 <= [v3 length]))
          {
            v457 = [v3 data];
            [v457 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v454 |= (v578 & 0x7F) << v452;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v452 += 7;
          v50 = v453++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1121;
          }
        }

        v92 = (v454 != 0) & ~[v3 hasError];
LABEL_1121:
        v486 = 736;
        goto LABEL_1128;
      case 105:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 760) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }

          v488 = *(v42 + 756) << 27;
LABEL_1195:
          v6 += v488 >> 63;
LABEL_1130:
          if (!(v574 & 1 | (v6 != 0)))
          {
            goto LABEL_1301;
          }

          v487 = objc_msgSend_position(v3);
          if (v487 >= [v3 length])
          {
            goto LABEL_1301;
          }

          continue;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOSearchImplicitFilterInfo);
        if (GEOSearchImplicitFilterInfoReadAllFrom(v93, v3))
        {
          PBReaderRecallMark();
          v94 = 528;
LABEL_943:
          v409 = *(v577 + v94);
          *(v577 + v94) = v93;
LABEL_944:

          --v6;
          goto LABEL_1130;
        }

LABEL_1361:

LABEL_1362:
        v52 = 0;
LABEL_1302:
        v561 = v577;
        if (v573)
        {
LABEL_1303:
          *(v561 + 756) |= 0x4000000000000000uLL;
        }

        if (v40 & 1 | ((v52 & 1) == 0))
        {
          *(v561 + 756) = vorrq_s8(*(v561 + 756), xmmword_187FBE5A0);
        }

        else if (v41)
        {
          while (1)
          {
            v556 = *v41++;
            v557 = v42;
            v558 = 2048;
            switch(v556)
            {
              case 0:
                goto LABEL_1355;
              case 3:
                goto LABEL_1354;
              case 4:
                v558 = 4096;
                goto LABEL_1353;
              case 5:
                v558 = 0x2000;
                goto LABEL_1353;
              case 6:
                v558 = 0x100000;
                goto LABEL_1353;
              case 7:
                v558 = 256;
                goto LABEL_1353;
              case 8:
                v558 = 0x10000000;
                goto LABEL_1353;
              case 9:
                v558 = 0x200000;
                goto LABEL_1353;
              case 10:
                v558 = 0x400000;
                goto LABEL_1353;
              case 11:
                v558 = 0x800000;
                goto LABEL_1353;
              case 16:
                v558 = 0x20000000;
                goto LABEL_1353;
              case 18:
                v558 = 0x800000000;
                goto LABEL_1353;
              case 24:
                v558 = 0x10000;
                goto LABEL_1353;
              case 25:
                v558 = 0x20000;
                goto LABEL_1353;
              case 28:
                v558 = 0x10000000000;
                goto LABEL_1353;
              case 31:
                v558 = 0x1000000;
                goto LABEL_1353;
              case 32:
                v558 = 0x100000000;
                goto LABEL_1353;
              case 38:
                v558 = 0x8000000;
                goto LABEL_1353;
              case 39:
                v558 = 0x8000;
                goto LABEL_1353;
              case 40:
                v558 = 0x8000000000;
                goto LABEL_1353;
              case 41:
                v558 = 0x100000000000;
                goto LABEL_1353;
              case 42:
                v558 = 0x8000000000000000;
                v557 = v561;
                goto LABEL_1354;
              case 45:
                v558 = 1;
                goto LABEL_1353;
              case 47:
                v558 = 0x80000000000;
                goto LABEL_1353;
              case 52:
                v558 = 1024;
                goto LABEL_1353;
              case 60:
                v558 = 8;
                goto LABEL_1353;
              case 62:
                v558 = 0x20000000000;
                goto LABEL_1353;
              case 64:
                v558 = 32;
                goto LABEL_1353;
              case 68:
                v558 = 16;
                goto LABEL_1353;
              case 71:
                v558 = 0x80000;
                goto LABEL_1353;
              case 73:
                v558 = 0x2000000;
                goto LABEL_1353;
              case 75:
                v558 = 128;
                goto LABEL_1353;
              case 79:
                v558 = 2;
                goto LABEL_1353;
              case 82:
                v558 = 0x40000000;
                goto LABEL_1353;
              case 84:
                v558 = 0x400000000;
                goto LABEL_1353;
              case 87:
                v558 = 0x40000;
                goto LABEL_1353;
              case 88:
                v558 = 64;
                goto LABEL_1353;
              case 90:
                v558 = 0x4000;
                goto LABEL_1353;
              case 92:
                v558 = 0x2000000000;
                goto LABEL_1353;
              case 94:
                v558 = 512;
                goto LABEL_1353;
              case 98:
                v558 = 0x80000000;
                goto LABEL_1353;
              case 103:
                v558 = 4;
                goto LABEL_1353;
              case 105:
                v558 = 0x1000000000;
                goto LABEL_1353;
              case 109:
                v558 = 0x4000000000;
                goto LABEL_1353;
              case 112:
                v558 = 0x200000000;
                goto LABEL_1353;
              case 114:
                v558 = 0x40000000000;
                goto LABEL_1353;
              case 116:
                v558 = 0x4000000;
LABEL_1353:
                v557 = v42;
LABEL_1354:
                *(v557 + 756) |= v558;
                break;
              default:
                continue;
            }
          }
        }

LABEL_1355:
        if (v52)
        {
          v3 = ([v3 hasError] ^ 1);
          if ((v40 & 1) == 0)
          {
            return v3;
          }

LABEL_1359:
          v559 = *(v561 + 8);
          *(v561 + 8) = 0;
        }

        else
        {
          v3 = 0;
          if (v40)
          {
            goto LABEL_1359;
          }
        }

        return v3;
      case 106:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v416 = 0;
        v417 = 0;
        v418 = 0;
        *(v577 + 756) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v419 = objc_msgSend_position(v3) + 1;
          if (v419 >= objc_msgSend_position(v3) && (v420 = objc_msgSend_position(v3) + 1, v420 <= [v3 length]))
          {
            v421 = [v3 data];
            [v421 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v418 |= (v578 & 0x7F) << v416;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v416 += 7;
          v50 = v417++ >= 9;
          if (v50)
          {
            v73 = 0;
            goto LABEL_1106;
          }
        }

        if ([v3 hasError])
        {
          v73 = 0;
        }

        else
        {
          v73 = v418;
        }

LABEL_1106:
        v485 = 644;
LABEL_1119:
        *(v577 + v485) = v73;
        goto LABEL_1129;
      case 107:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v477 = 0;
        v478 = 0;
        v479 = 0;
        *(v577 + 756) |= 0x1000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v480 = objc_msgSend_position(v3) + 1;
          if (v480 >= objc_msgSend_position(v3) && (v481 = objc_msgSend_position(v3) + 1, v481 <= [v3 length]))
          {
            v482 = [v3 data];
            [v482 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v479 |= (v578 & 0x7F) << v477;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v477 += 7;
          v50 = v478++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1127;
          }
        }

        v92 = (v479 != 0) & ~[v3 hasError];
LABEL_1127:
        v486 = 728;
        goto LABEL_1128;
      case 108:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v471 = 0;
        v472 = 0;
        v473 = 0;
        *(v577 + 756) |= 0x200000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v474 = objc_msgSend_position(v3) + 1;
          if (v474 >= objc_msgSend_position(v3) && (v475 = objc_msgSend_position(v3) + 1, v475 <= [v3 length]))
          {
            v476 = [v3 data];
            [v476 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v473 |= (v578 & 0x7F) << v471;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v471 += 7;
          v50 = v472++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1125;
          }
        }

        v92 = (v473 != 0) & ~[v3 hasError];
LABEL_1125:
        v486 = 737;
        goto LABEL_1128;
      case 109:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 760) & 0x40) == 0)
        {
          v181 = PBReaderReadString();
          v182 = 552;
          goto LABEL_798;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v488 = *(v42 + 756) << 25;
        goto LABEL_1195;
      case 110:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v458 = 0;
        v459 = 0;
        v460 = 0;
        *(v577 + 756) |= 0x800000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v461 = objc_msgSend_position(v3) + 1;
          if (v461 >= objc_msgSend_position(v3) && (v462 = objc_msgSend_position(v3) + 1, v462 <= [v3 length]))
          {
            v463 = [v3 data];
            [v463 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v460 |= (v578 & 0x7F) << v458;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v458 += 7;
          v50 = v459++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1123;
          }
        }

        v92 = (v460 != 0) & ~[v3 hasError];
LABEL_1123:
        v486 = 739;
        goto LABEL_1128;
      case 112:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 760) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }

          v488 = *(v42 + 756) << 30;
          goto LABEL_1195;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOPDAutocompleteSessionData);
        if (!GEOPDAutocompleteSessionDataReadAllFrom(v93, v3))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        v94 = 504;
        goto LABEL_943;
      case 113:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v440 = 0;
        v441 = 0;
        v442 = 0;
        *(v577 + 756) |= 0x100000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v443 = objc_msgSend_position(v3) + 1;
          if (v443 >= objc_msgSend_position(v3) && (v444 = objc_msgSend_position(v3) + 1, v444 <= [v3 length]))
          {
            v445 = [v3 data];
            [v445 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v442 |= (v578 & 0x7F) << v440;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v440 += 7;
          v50 = v441++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1114;
          }
        }

        v92 = (v442 != 0) & ~[v3 hasError];
LABEL_1114:
        v486 = 724;
        goto LABEL_1128;
      case 114:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 761) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }

          v488 = *(v42 + 756) << 21;
          goto LABEL_1195;
        }

        v578 = 0;
        v579 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v93 = objc_alloc_init(GEOPDSSessionUserActionMetadata);
        if (!GEOPDSSessionUserActionMetadataReadAllFrom(v93, v3))
        {
          goto LABEL_1361;
        }

        PBReaderRecallMark();
        v94 = 584;
        goto LABEL_943;
      case 115:
        if ((v7 & 1) == 0)
        {
          goto LABEL_961;
        }

        v353 = 0;
        v354 = 0;
        v355 = 0;
        *(v577 + 756) |= 0x2000000000000000uLL;
        while (1)
        {
          LOBYTE(v578) = 0;
          v356 = objc_msgSend_position(v3) + 1;
          if (v356 >= objc_msgSend_position(v3) && (v357 = objc_msgSend_position(v3) + 1, v357 <= [v3 length]))
          {
            v358 = [v3 data];
            [v358 getBytes:&v578 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v355 |= (v578 & 0x7F) << v353;
          if ((v578 & 0x80) == 0)
          {
            break;
          }

          v353 += 7;
          v50 = v354++ >= 9;
          if (v50)
          {
            v92 = 0;
            goto LABEL_1084;
          }
        }

        v92 = (v355 != 0) & ~[v3 hasError];
LABEL_1084:
        v486 = 753;
LABEL_1128:
        *(v577 + v486) = v92;
        goto LABEL_1129;
      case 116:
        if (!v55)
        {
          goto LABEL_961;
        }

        if ((*(v42 + 759) & 4) == 0)
        {
          v181 = PBReaderReadString();
          v182 = 432;
          goto LABEL_798;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_1362;
        }

        v488 = *(v42 + 756) << 37;
        goto LABEL_1195;
      default:
        if ((v573 & 1) == 0 || (*(v577 + 763) & 0x40) != 0)
        {
LABEL_961:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_1362;
          }
        }

        else
        {
          if (!*(v577 + 16))
          {
            v483 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v484 = *(v577 + 16);
            *(v577 + 16) = v483;
          }

          if (!PBUnknownFieldAdd())
          {
            v52 = 0;
            v561 = v577;
            goto LABEL_1303;
          }
        }

        goto LABEL_1130;
    }
  }
}

void *GEOPDPlaceRequestReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 116))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDPlaceRequestReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDPlaceRequestReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDPlaceRequestReadAllFrom_initialTag;
  }

  Specified = GEOPDPlaceRequestReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDPlaceRequestCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 120));
  return Specified;
}

void *GEOPDPlaceRequestReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = 0;
  v11 = vdup_n_s16(*(a1 + 132));
  v12 = (vaddv_s16(vand_s8(vshl_u16(v11, 0xFFF7FFF6FFFBFFF4), 0x1000100010001)) + ((*(a1 + 132) >> 3) & 1)) + (vaddv_s16(vand_s8(vshl_u16(v11, 0xFFF2FFF9FFFAFFFCLL), 0x1000100010001)) + ((*(a1 + 132) >> 13) & 1) + ((*(a1 + 132) >> 11) & 1) + (HIBYTE(*(a1 + 132)) & 1));
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
LABEL_173:
      v26 = 1;
      goto LABEL_176;
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
      goto LABEL_176;
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

    if (v27 > 7)
    {
      if (v27 <= 11)
      {
        switch(v27)
        {
          case 8:
            if (!v28)
            {
              goto LABEL_148;
            }

            if ((*(a1 + 132) & 0x800) != 0)
            {
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_175;
              }

              v61 = 16 * *(a1 + 132);
              goto LABEL_172;
            }

            v72 = 0;
            v73 = 0;
            if ((PBReaderPlaceMark() & 1) == 0)
            {
              goto LABEL_175;
            }

            v33 = objc_alloc_init(GEOPDPlaceRequestParameters);
            if (!GEOPDPlaceRequestParametersReadAllFrom(v33, v3, v67 & 1))
            {
              goto LABEL_174;
            }

            PBReaderRecallMark();
            v43 = 80;
            goto LABEL_136;
          case 9:
            if (!v28)
            {
              goto LABEL_148;
            }

            if ((*(a1 + 132) & 0x100) != 0)
            {
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_175;
              }

              v61 = *(a1 + 132) << 7;
              goto LABEL_172;
            }

            v41 = PBReaderReadString();
            v42 = 56;
LABEL_140:
            v57 = *(a1 + v42);
            *(a1 + v42) = v41;
LABEL_141:

            --v6;
            goto LABEL_149;
          case 0xB:
            if (!v28 || (*(a1 + 132) & 0x20) != 0)
            {
LABEL_148:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_175;
              }

              goto LABEL_149;
            }

            v72 = 0;
            v73 = 0;
            if ((PBReaderPlaceMark() & 1) == 0)
            {
              goto LABEL_175;
            }

            v33 = objc_alloc_init(GEOPDComponentInfo);
            if (!GEOPDComponentInfoReadAllFrom(v33, v3, v67 & 1))
            {
              goto LABEL_174;
            }

            PBReaderRecallMark();
            [(GEOPDPlaceRequest *)a1 _addNoFlagsAuxiliaryTierRequestedComponent:v33];
            goto LABEL_95;
        }
      }

      else if (v27 > 999)
      {
        if (v27 == 1000)
        {
          if ((v7 & 1) == 0)
          {
            goto LABEL_148;
          }

          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 132) |= 2u;
          while (1)
          {
            LOBYTE(v72) = 0;
            v54 = objc_msgSend_position(v3) + 1;
            if (v54 >= objc_msgSend_position(v3) && (v55 = objc_msgSend_position(v3) + 1, v55 <= [v3 length]))
            {
              v56 = [v3 data];
              [v56 getBytes:&v72 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v53 |= (v72 & 0x7F) << v51;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v24 = v52++ >= 9;
            if (v24)
            {
              v50 = 0;
              goto LABEL_154;
            }
          }

          v50 = (v53 != 0) & ~[v3 hasError];
LABEL_154:
          v60 = 128;
          goto LABEL_155;
        }

        if (v27 == 1001)
        {
          if (!v28)
          {
            goto LABEL_148;
          }

          if ((*(a1 + 132) & 0x200) == 0)
          {
            v41 = PBReaderReadData();
            v42 = 64;
            goto LABEL_140;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_175;
          }

          v61 = *(a1 + 132) << 6;
LABEL_172:
          v6 += v61 >> 15;
          goto LABEL_149;
        }
      }

      else
      {
        if (v27 == 12)
        {
          if (!v28)
          {
            goto LABEL_148;
          }

          if ((*(a1 + 132) & 0x1000) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_175;
            }

            v61 = 8 * *(a1 + 132);
            goto LABEL_172;
          }

          v72 = 0;
          v73 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_175;
          }

          v33 = objc_alloc_init(GEOPrivacyMetadata);
          if (!GEOPrivacyMetadataReadAllFrom(v33, v3))
          {
            goto LABEL_174;
          }

          PBReaderRecallMark();
          v43 = 88;
          goto LABEL_136;
        }

        if (v27 == 13)
        {
          if (!v28 || (*(a1 + 132) & 0x400) != 0)
          {
            goto LABEL_148;
          }

          v72 = 0;
          v73 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_175;
          }

          v33 = objc_alloc_init(GEOPDComponentInfo);
          if (!GEOPDComponentInfoReadAllFrom(v33, v3, v67 & 1))
          {
            goto LABEL_174;
          }

          PBReaderRecallMark();
          [(GEOPDPlaceRequest *)a1 _addNoFlagsPartiallyComposedSearchResultRequestedComponent:v33];
          goto LABEL_95;
        }
      }

LABEL_142:
      if ((v68 & 1) == 0 || (*(a1 + 132) & 8) != 0)
      {
        goto LABEL_148;
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
        goto LABEL_177;
      }

      goto LABEL_149;
    }

    if (v27 <= 3)
    {
      break;
    }

    if (v27 <= 5)
    {
      if (v27 == 4)
      {
        if (!v28 || (*(a1 + 132) & 0x4000) != 0)
        {
          goto LABEL_148;
        }

        v33 = PBReaderReadString();
        if (v33)
        {
          [(GEOPDPlaceRequest *)a1 _addNoFlagsSpokenLanguage:v33];
        }
      }

      else
      {
        if (!v28 || (*(a1 + 132) & 0x2000) != 0)
        {
          goto LABEL_148;
        }

        v72 = 0;
        v73 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_175;
        }

        v33 = objc_alloc_init(GEOPDComponentInfo);
        if (!GEOPDComponentInfoReadAllFrom(v33, v3, v67 & 1))
        {
          goto LABEL_174;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceRequest *)a1 _addNoFlagsRequestedComponent:v33];
      }

LABEL_95:

      goto LABEL_149;
    }

    if (v27 == 6)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_148;
      }

      v44 = 0;
      v45 = 0;
      v46 = 0;
      *(a1 + 132) |= 4u;
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
          goto LABEL_152;
        }
      }

      v50 = (v46 != 0) & ~[v3 hasError];
LABEL_152:
      v60 = 129;
LABEL_155:
      *(a1 + v60) = v50;
      goto LABEL_149;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_148;
    }

    v34 = 0;
    v35 = 0;
    v36 = 0;
    *(a1 + 132) |= 1u;
    while (1)
    {
      LOBYTE(v72) = 0;
      v37 = objc_msgSend_position(v3) + 1;
      if (v37 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3) + 1, v38 <= [v3 length]))
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
      v24 = v35++ >= 9;
      if (v24)
      {
        v40 = 0;
        goto LABEL_159;
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

LABEL_159:
    *(a1 + 124) = v40;
LABEL_149:
    if (!(v69 & 1 | (v6 != 0)))
    {
      goto LABEL_173;
    }
  }

  if (v27 == 1)
  {
    if (!v28)
    {
      goto LABEL_148;
    }

    if ((*(a1 + 132) & 0x10) != 0)
    {
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_175;
      }

      v61 = *(a1 + 132) << 11;
      goto LABEL_172;
    }

    v72 = 0;
    v73 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_175;
    }

    v33 = objc_alloc_init(GEOPDAnalyticMetadata);
    if (!GEOPDAnalyticMetadataReadAllFrom(v33, v3, v67 & 1))
    {
      goto LABEL_174;
    }

    PBReaderRecallMark();
    v43 = 24;
    goto LABEL_136;
  }

  if (v27 != 2)
  {
    if (v27 == 3)
    {
      if (!v28 || (*(a1 + 132) & 0x80) != 0)
      {
        goto LABEL_148;
      }

      v33 = PBReaderReadString();
      if (v33)
      {
        [(GEOPDPlaceRequest *)a1 _addNoFlagsDisplayLanguage:v33];
      }

      goto LABEL_95;
    }

    goto LABEL_142;
  }

  if (!v28)
  {
    goto LABEL_148;
  }

  if ((*(a1 + 132) & 0x40) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_175;
    }

    v61 = *(a1 + 132) << 9;
    goto LABEL_172;
  }

  v72 = 0;
  v73 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_175;
  }

  v33 = objc_alloc_init(GEOPDClientMetadata);
  if (GEOPDClientMetadataReadAllFrom(v33, v3, v67 & 1))
  {
    PBReaderRecallMark();
    v43 = 40;
LABEL_136:
    v57 = *(a1 + v43);
    *(a1 + v43) = v33;
    goto LABEL_141;
  }

LABEL_174:

LABEL_175:
  v26 = 0;
LABEL_176:
  if ((v68 & 1) == 0)
  {
    goto LABEL_178;
  }

LABEL_177:
  *(a1 + 132) |= 8u;
LABEL_178:
  if (v71 || (v26 & 1) == 0)
  {
    *(a1 + 132) |= 0x10u;
    *(a1 + 132) |= 0x40u;
    *(a1 + 132) |= 0x80u;
    *(a1 + 132) |= 0x4000u;
    *(a1 + 132) |= 0x2000u;
    *(a1 + 132) |= 0x800u;
    *(a1 + 132) |= 0x100u;
    *(a1 + 132) |= 0x20u;
    *(a1 + 132) |= 0x1000u;
    *(a1 + 132) |= 0x400u;
    *(a1 + 132) |= 0x200u;
    goto LABEL_208;
  }

  if (v16)
  {
    while (1)
    {
      v63 = *v16++;
      v62 = v63;
      if (v63 > 7)
      {
        if (v62 > 11)
        {
          switch(v62)
          {
            case 12:
              v64 = 4096;
              break;
            case 13:
              v64 = 1024;
              break;
            case 1001:
              v64 = 512;
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
              v64 = 2048;
              break;
            case 9:
              v64 = 256;
              break;
            case 11:
              v64 = 32;
              break;
            default:
              continue;
          }
        }

        goto LABEL_206;
      }

      if (v62 > 2)
      {
        switch(v62)
        {
          case 3:
            v64 = 128;
            break;
          case 4:
            v64 = 0x4000;
            break;
          case 5:
            v64 = 0x2000;
            break;
          default:
            continue;
        }

        goto LABEL_206;
      }

      if (v62 == 1)
      {
        break;
      }

      if (v62 == 2)
      {
        v64 = 64;
LABEL_206:
        *(a1 + 132) |= v64;
        continue;
      }

      if (!v62)
      {
        goto LABEL_208;
      }
    }

    v64 = 16;
    goto LABEL_206;
  }

LABEL_208:
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

uint64_t GEOPDComponentInfoReadAllFrom(uint64_t a1, void *a2, int a3)
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
          goto LABEL_99;
        }

        v7 = 0;
        v8 = 0;
        v9 = 0;
        while (1)
        {
          LOBYTE(v57[0]) = 0;
          v10 = objc_msgSend_position(v5, v57[0]);
          if (v10 + 1 >= objc_msgSend_position(v5) && (v11 = objc_msgSend_position(v5), v11 + 1 <= [v5 length]))
          {
            v12 = [v5 data];
            [v12 getBytes:v57 range:{objc_msgSend_position(v5), 1}];

            [v5 setPosition:objc_msgSend_position(v5) + 1];
          }

          else
          {
            [v5 _setError];
          }

          v9 |= (v57[0] & 0x7F) << v7;
          if ((v57[0] & 0x80) == 0)
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
          goto LABEL_99;
        }

        v16 = v9 >> 3;
        if (v16 <= 4)
        {
          break;
        }

        if (v16 != 5)
        {
          if (v16 == 6)
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            *(a1 + 44) |= 0x10u;
            while (1)
            {
              LOBYTE(v57[0]) = 0;
              v49 = objc_msgSend_position(v5, v57[0]);
              if (v49 + 1 >= objc_msgSend_position(v5) && (v50 = objc_msgSend_position(v5), v50 + 1 <= [v5 length]))
              {
                v51 = [v5 data];
                [v51 getBytes:v57 range:{objc_msgSend_position(v5), 1}];

                [v5 setPosition:objc_msgSend_position(v5) + 1];
              }

              else
              {
                [v5 _setError];
              }

              v48 |= (v57[0] & 0x7F) << v46;
              if ((v57[0] & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v13 = v47++ >= 9;
              if (v13)
              {
                LOBYTE(v52) = 0;
                goto LABEL_98;
              }
            }

            v52 = (v48 != 0) & ~[v5 hasError];
LABEL_98:
            *(a1 + 40) = v52;
            goto LABEL_95;
          }

          if (v16 == 7)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 44) |= 8u;
            while (1)
            {
              LOBYTE(v57[0]) = 0;
              v27 = objc_msgSend_position(v5, v57[0]);
              if (v27 + 1 >= objc_msgSend_position(v5) && (v28 = objc_msgSend_position(v5), v28 + 1 <= [v5 length]))
              {
                v29 = [v5 data];
                [v29 getBytes:v57 range:{objc_msgSend_position(v5), 1}];

                [v5 setPosition:objc_msgSend_position(v5) + 1];
              }

              else
              {
                [v5 _setError];
              }

              v26 |= (v57[0] & 0x7F) << v24;
              if ((v57[0] & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v13 = v25++ >= 9;
              if (v13)
              {
                v23 = 0;
                goto LABEL_89;
              }
            }

            if ([v5 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v26;
            }

LABEL_89:
            v53 = 36;
            goto LABEL_94;
          }

LABEL_56:
          if (!*(a1 + 8))
          {
            v38 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v39 = *(a1 + 8);
            *(a1 + 8) = v38;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_101;
          }

          goto LABEL_95;
        }

        v57[0] = 0;
        v57[1] = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_101;
        }

        v36 = objc_alloc_init(GEOPDComponentFilter);
        if (!GEOPDComponentFilterReadAllFrom(v36, v5, a3))
        {

          goto LABEL_101;
        }

        PBReaderRecallMark();
        v37 = *(a1 + 16);
        *(a1 + 16) = v36;

LABEL_95:
        v54 = objc_msgSend_position(v5);
        if (v54 >= [v5 length])
        {
          goto LABEL_99;
        }
      }

      switch(v16)
      {
        case 1:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 44) |= 4u;
          while (1)
          {
            LOBYTE(v57[0]) = 0;
            v33 = objc_msgSend_position(v5, v57[0]);
            if (v33 + 1 >= objc_msgSend_position(v5) && (v34 = objc_msgSend_position(v5), v34 + 1 <= [v5 length]))
            {
              v35 = [v5 data];
              [v35 getBytes:v57 range:{objc_msgSend_position(v5), 1}];

              [v5 setPosition:objc_msgSend_position(v5) + 1];
            }

            else
            {
              [v5 _setError];
            }

            v32 |= (v57[0] & 0x7F) << v30;
            if ((v57[0] & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v13 = v31++ >= 9;
            if (v13)
            {
              v23 = 0;
              goto LABEL_81;
            }
          }

          if ([v5 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v32;
          }

LABEL_81:
          v53 = 32;
          goto LABEL_94;
        case 2:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            LOBYTE(v57[0]) = 0;
            v43 = objc_msgSend_position(v5, v57[0]);
            if (v43 + 1 >= objc_msgSend_position(v5) && (v44 = objc_msgSend_position(v5), v44 + 1 <= [v5 length]))
            {
              v45 = [v5 data];
              [v45 getBytes:v57 range:{objc_msgSend_position(v5), 1}];

              [v5 setPosition:objc_msgSend_position(v5) + 1];
            }

            else
            {
              [v5 _setError];
            }

            v42 |= (v57[0] & 0x7F) << v40;
            if ((v57[0] & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v13 = v41++ >= 9;
            if (v13)
            {
              v23 = 0;
              goto LABEL_93;
            }
          }

          if ([v5 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v42;
          }

LABEL_93:
          v53 = 28;
          goto LABEL_94;
        case 3:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            LOBYTE(v57[0]) = 0;
            v20 = objc_msgSend_position(v5, v57[0]);
            if (v20 + 1 >= objc_msgSend_position(v5) && (v21 = objc_msgSend_position(v5), v21 + 1 <= [v5 length]))
            {
              v22 = [v5 data];
              [v22 getBytes:v57 range:{objc_msgSend_position(v5), 1}];

              [v5 setPosition:objc_msgSend_position(v5) + 1];
            }

            else
            {
              [v5 _setError];
            }

            v19 |= (v57[0] & 0x7F) << v17;
            if ((v57[0] & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v13 = v18++ >= 9;
            if (v13)
            {
              v23 = 0;
              goto LABEL_85;
            }
          }

          if ([v5 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_85:
          v53 = 24;
LABEL_94:
          *(a1 + v53) = v23;
          goto LABEL_95;
      }

      goto LABEL_56;
    }

LABEL_99:
    v55 = [v5 hasError] ^ 1;
  }

  else
  {
LABEL_101:
    v55 = 0;
  }

  objc_sync_exit(v5);

  return v55;
}

void *GEOPDComponentFilterReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 796))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDComponentFilterReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 800));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 792) = objc_msgSend_position(v8);
  *(a1 + 796) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDComponentFilterReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDComponentFilterReadAllFrom_initialTag;
  }

  Specified = GEOPDComponentFilterReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDComponentFilterCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 800));
  return Specified;
}

void *GEOPDComponentFilterReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 800));
  [v3 setLength:*(a1 + 796)];
  [v3 seekToOffset:*(a1 + 792)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v98 = 0;
  v9 = 0;
  v10 = *(a1 + 804);
  *v11.i8 = vmovn_s64(v10);
  v12 = vdupq_lane_s32(*v11.i8, 1);
  v13 = vdupq_lane_s32(*v11.i8, 0);
  v14 = vdupq_lane_s64(v10.i64[0], 0);
  v15 = vzip1q_s32(v11, v12);
  v16 = v11.u32[1];
  v17 = vzip1q_s32(v11, v11);
  v18 = v11.i32[0];
  v19 = *(a1 + 804);
  v20.i64[0] = 0x100000001;
  v20.i64[1] = 0x100000001;
  v21 = vandq_s8(vshlq_u32(v13, xmmword_187FBDC30), v20);
  v22 = vandq_s8(vshlq_u32(v13, xmmword_187FBDC60), v20);
  v23 = HIDWORD(*(a1 + 812)) & 1;
  v24 = vaddvq_s32(vaddq_s32(vaddq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v14, xmmword_187FBDC50), vshlq_u64(v14, xmmword_187FBDC40)), v20), vandq_s8(vuzp1q_s32(vshlq_u64(v14, xmmword_187FBD2D0), vshlq_u64(v14, xmmword_187FBDCF0)), v20)), vandq_s8(vshlq_u32(v17, xmmword_187FBDD00), v20))) + (v18 & 1);
  v25 = v24 + (HIBYTE(v18) & 1) + ((v18 >> 29) & 1) + ((v19 & 0x1000000000000000) != 0) + ((v18 >> 27) & 1) + (v16 & 1) + ((v18 >> 6) & 1) + ((v19 >> 51) & 1) + ((v18 >> 9) & 1) + ((v19 >> 42) & 1) + ((v18 >> 18) & 1) + ((v19 >> 37) & 1) + ((v19 >> 54) & 1) + ((v18 >> 12) & 1) + ((v18 >> 8) & 1) + vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v14, xmmword_187FBDCC0), vshlq_u64(v14, xmmword_187FBDCB0)), v20), vandq_s8(vuzp1q_s32(vshlq_u64(v14, xmmword_187FBDCA0), vshlq_u64(v14, xmmword_187FBDC90)), v20)), vaddq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v14, xmmword_187FBD6E0), vshlq_u64(v14, xmmword_187FBDC80)), v20), v22)), v21)) + ((v18 >> 14) & 1) + ((v19 >> 47) & 1) + ((v18 >> 17) & 1) + ((v18 >> 25) & 1) + ((v19 & 0x2000000000000000) != 0) + ((v16 >> 28) & 1) + v23 + (v18 >> 31) + vaddvq_s32(vaddq_s32(vandq_s8(vshlq_u32(v15, xmmword_187FBDD20), v20), vandq_s8(vshlq_u32(v12, xmmword_187FBDD30), v20))) + (v16 >> 31) + vaddvq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBDC70), v20)) + (v19 >> 63) + vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBDD60), v20), vandq_s8(vshlq_u32(v12, xmmword_187FBDD70), v20)), vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBDD40), v20), vandq_s8(vshlq_u32(v12, xmmword_187FBDD50), v20))), vaddq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v14, xmmword_187FBD9C0), vshlq_u64(v14, xmmword_187FBDD10)), v20), vaddq_s32(vandq_s8(vshlq_u32(v13, xmmword_187FBDCE0), v20), vandq_s8(vshlq_u32(v13, xmmword_187FBDCD0), v20)))));
  while (1)
  {
    v26 = a3[v6];
    if (v26 > -3)
    {
      break;
    }

    if (v26 == -4)
    {
      ++v25;
      v8 = 1;
      goto LABEL_14;
    }

    if (v26 == -3)
    {
      v7 = 1;
      goto LABEL_14;
    }

LABEL_13:
    ++v25;
LABEL_14:
    ++v6;
  }

  if (v26 == -2)
  {
    v8 = 1;
    v9 = 1;
    goto LABEL_14;
  }

  if (v26 == -1)
  {
    v8 = 1;
    v9 = 1;
    v98 = 1;
    goto LABEL_14;
  }

  if (v26)
  {
    goto LABEL_13;
  }

  v27 = v25 > 0x4D;
  v95 = v27 & ~v9 | v8;
  v28 = v9 | v27;
  v97 = v9 | v27 | v8;
  if (((v9 | v27) | v7))
  {
    v29 = 0;
  }

  else
  {
    v29 = a3;
  }

  v96 = v29;
  v30 = (v29 == 0) | v28;
  while (2)
  {
    v31 = objc_msgSend_position(v3);
    if (v31 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_758:
      v41 = 1;
      goto LABEL_761;
    }

    v32 = 0;
    v33 = 0;
    v34 = 0;
    while (1)
    {
      LOBYTE(v99) = 0;
      v35 = objc_msgSend_position(v3) + 1;
      if (v35 >= objc_msgSend_position(v3) && (v36 = objc_msgSend_position(v3) + 1, v36 <= [v3 length]))
      {
        v37 = [v3 data];
        [v37 getBytes:&v99 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v34 |= (v99 & 0x7F) << v32;
      if ((v99 & 0x80) == 0)
      {
        break;
      }

      v32 += 7;
      if (v33++ >= 9)
      {
        v39 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v39 = 0;
    }

    else
    {
      v39 = v34;
    }

LABEL_33:
    v40 = [v3 hasError];
    v41 = 1;
    if ((v40 & 1) != 0 || (v39 & 7) == 4)
    {
      goto LABEL_761;
    }

    v42 = v39 >> 3;
    v43 = v28;
    if ((v30 & 1) == 0)
    {
      v44 = v96;
      do
      {
        v46 = *v44++;
        v45 = v46;
        v43 = v46 != 0;
        if (v46)
        {
          v47 = v45 == v42;
        }

        else
        {
          v47 = 1;
        }
      }

      while (!v47);
    }

    switch(v42)
    {
      case 1:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 806) & 0x80) == 0)
        {
          v99 = 0;
          v100 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_760;
          }

          v48 = objc_alloc_init(GEOPDEntityFilter);
          if (GEOPDEntityFilterReadAllFrom(v48, v3))
          {
            PBReaderRecallMark();
            v49 = 200;
            goto LABEL_523;
          }

          goto LABEL_759;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_760;
        }

        v61 = *(a1 + 804);
        goto LABEL_657;
      case 2:
        if (!v43)
        {
          goto LABEL_530;
        }

        if (*(a1 + 810))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 15;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDPlaceInfoFilter);
        if (!GEOPDPlaceInfoFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 400;
        goto LABEL_523;
      case 3:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 804) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v55 = *(a1 + 804);
LABEL_627:
          v58 = v55 << 61;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDRoadAccessInfoFilter);
        if (!GEOPDRoadAccessInfoFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 32;
        goto LABEL_523;
      case 4:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 805) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v64 = *(a1 + 804);
LABEL_635:
          v58 = v64 << 53;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDBoundsFilter);
        if (!GEOPDBoundsFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 96;
        goto LABEL_523;
      case 5:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 804) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v79 = *(a1 + 804);
          goto LABEL_729;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDAddressFilter);
        if (!GEOPDAddressFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 56;
        goto LABEL_523;
      case 6:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 811) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = 16 * *(a1 + 804);
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDRatingFilter);
        if (!GEOPDRatingFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 488;
        goto LABEL_523;
      case 7:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 812) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v63 = *(a1 + 812);
LABEL_632:
          v58 = v63 << 62;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDReviewFilter);
        if (!GEOPDReviewFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 536;
        goto LABEL_523;
      case 8:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 809) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 18;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDPhotoFilter);
        if (!GEOPDPhotoFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 376;
        goto LABEL_523;
      case 9:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 808) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 27;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDHoursFilter);
        if (!GEOPDHoursFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 304;
        goto LABEL_523;
      case 10:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 814) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v75 = *(a1 + 812);
          goto LABEL_624;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDTransitInfoFilter);
        if (!GEOPDTransitInfoFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 680;
        goto LABEL_523;
      case 11:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 814) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v60 = *(a1 + 812);
LABEL_619:
          v58 = v60 << 41;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDTransitScheduleFilter);
        if (!GEOPDTransitScheduleFilterReadAllFrom(v48, v3, v98 & 1))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 704;
        goto LABEL_523;
      case 12:
        if (!v43)
        {
          goto LABEL_530;
        }

        if (*(a1 + 807))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v80 = *(a1 + 804);
          goto LABEL_716;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDETAFilter);
        if (!GEOPDETAFilterReadAllFrom(v48, v3, v98 & 1))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 208;
        goto LABEL_523;
      case 13:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 807) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v65 = *(a1 + 804);
LABEL_647:
          v58 = v65 << 34;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDFlyoverFilter);
        if (!GEOPDFlyoverFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 248;
        goto LABEL_523;
      case 14:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 811) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = 8 * *(a1 + 804);
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDRawAttributeFilter);
        if (!GEOPDRawAttributeFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 496;
        goto LABEL_523;
      case 15:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 804) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v67 = *(a1 + 804);
LABEL_686:
          v58 = v67 << 56;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDAmenitiesFilter);
        if (!GEOPDAmenitiesFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 72;
        goto LABEL_523;
      case 16:
        if (!v43)
        {
          goto LABEL_530;
        }

        if (*(a1 + 813))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v83 = *(a1 + 812);
          goto LABEL_732;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDStyleAttributesFilter);
        if (!GEOPDStyleAttributesFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 592;
        goto LABEL_523;
      case 20:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 814) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v77 = *(a1 + 812);
LABEL_699:
          v58 = v77 << 45;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDTransitIncidentFilter);
        if (!GEOPDTransitIncidentFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 672;
        goto LABEL_523;
      case 21:
        if (!v43)
        {
          goto LABEL_530;
        }

        if (*(a1 + 814))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v84 = *(a1 + 812);
          goto LABEL_748;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDTransitAssociatedInfoFilter);
        if (!GEOPDTransitAssociatedInfoFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 656;
        goto LABEL_523;
      case 22:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 813) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v54 = *(a1 + 812);
LABEL_595:
          v58 = v54 << 52;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDTextBlockFilter);
        if (!GEOPDTextBlockFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 616;
        goto LABEL_523;
      case 23:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 807) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v69 = *(a1 + 804);
LABEL_650:
          v58 = v69 << 35;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDFactoidFilter);
        if (!GEOPDFactoidFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 240;
        goto LABEL_523;
      case 24:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 814) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v73 = *(a1 + 812);
LABEL_713:
          v58 = v73 << 46;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDTransitAttributionFilter);
        if (!GEOPDTransitAttributionFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 664;
        goto LABEL_523;
      case 25:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 805) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v53 = *(a1 + 804);
LABEL_606:
          v58 = v53 << 50;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDBusinessClaimFilter);
        if (!GEOPDBusinessClaimFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 120;
        goto LABEL_523;
      case 26:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 805) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v78 = *(a1 + 804);
          goto LABEL_673;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDCaptionedPhotoFilter);
        if (!GEOPDCaptionedPhotoFilterReadAllFrom(v48, v3, v98 & 1))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 136;
        goto LABEL_523;
      case 27:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 814) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v76 = *(a1 + 812);
          goto LABEL_670;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDTransitInfoSnippetFilter);
        if (!GEOPDTransitInfoSnippetFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 688;
        goto LABEL_523;
      case 29:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 807) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v62 = *(a1 + 804);
LABEL_667:
          v58 = v62 << 36;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDExternalActionFilter);
        if (!GEOPDExternalActionFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 232;
        goto LABEL_523;
      case 30:
        if (!v43)
        {
          goto LABEL_530;
        }

        if (*(a1 + 812))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v6 -= *(a1 + 812) & 1;
          goto LABEL_757;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDResultSnippetFilter);
        if (!GEOPDResultSnippetFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 528;
        goto LABEL_523;
      case 31:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 804) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v71 = *(a1 + 804);
          goto LABEL_662;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDAddressObjectFilter);
        if (!GEOPDAddressObjectFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 64;
        goto LABEL_523;
      case 32:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 812) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v74 = *(a1 + 812);
LABEL_721:
          v58 = v74 << 60;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDSimpleRestaurantMenuTextFilter);
        if (!GEOPDSimpleRestaurantMenuTextFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 552;
        goto LABEL_523;
      case 33:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 804) & 0x8000000000000000) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804);
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDRestaurantReservationLinkFilter);
        if (!GEOPDRestaurantReservationLinkFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 520;
        goto LABEL_523;
      case 34:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 812) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v66 = *(a1 + 812);
LABEL_638:
          v58 = v66 << 59;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDSpatialLookupFilter);
        if (!GEOPDSpatialLookupFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 560;
        goto LABEL_523;
      case 36:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 813) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v72 = *(a1 + 812);
LABEL_683:
          v58 = v72 << 51;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDTipFilter);
        if (!GEOPDTipFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 624;
        goto LABEL_523;
      case 37:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 810) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 12;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDPlacecardURLFilter);
        if (!GEOPDPlacecardURLFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 424;
        goto LABEL_523;
      case 38:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 805) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v68 = *(a1 + 804);
          goto LABEL_582;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDAssociatedAppFilter);
        if (!GEOPDAssociatedAppFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 88;
        goto LABEL_523;
      case 39:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 809) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 20;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDMessageLinkFilter);
        if (!GEOPDMessageLinkFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 360;
        goto LABEL_523;
      case 40:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 811) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 6;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDQuickLinkFilter);
        if (!GEOPDQuickLinkFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 472;
        goto LABEL_523;
      case 41:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 811) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = 32 * *(a1 + 804);
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDRapFilter);
        if (!GEOPDRapFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 480;
        goto LABEL_523;
      case 42:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 809) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 19;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDOfflineAreaFilter);
        if (!GEOPDOfflineAreaFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 368;
        goto LABEL_523;
      case 43:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 809) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 21;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDLocationEventFilter);
        if (!GEOPDLocationEventFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 352;
        goto LABEL_523;
      case 44:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 813) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v68 = *(a1 + 812);
LABEL_582:
          v58 = v68 << 54;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDSupportsOfflineMapsFilter);
        if (!GEOPDSupportsOfflineMapsFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 600;
        goto LABEL_523;
      case 48:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 815) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v69 = *(a1 + 812);
          goto LABEL_650;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDVenueInfoFilter);
        if (!GEOPDVenueInfoFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 752;
        goto LABEL_523;
      case 50:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 806) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v77 = *(a1 + 804);
          goto LABEL_699;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDContainedPlaceFilter);
        if (!GEOPDContainedPlaceFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 160;
        goto LABEL_523;
      case 51:
        if (!v43)
        {
          goto LABEL_530;
        }

        if (*(a1 + 816))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v81 = *(a1 + 812);
          goto LABEL_738;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDWifiFingerprintFilter);
        if (!GEOPDWifiFingerprintFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 784;
        goto LABEL_523;
      case 52:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 808) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 26;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDIconFilter);
        if (!GEOPDIconFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 312;
        goto LABEL_523;
      case 53:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 810) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 9;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDPriceDescriptionFilter);
        if (!GEOPDPriceDescriptionFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 448;
        goto LABEL_523;
      case 54:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 805) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v72 = *(a1 + 804);
          goto LABEL_683;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDBrowseCategoriesFilter);
        if (!GEOPDBrowseCategoriesFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 112;
        goto LABEL_523;
      case 55:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 812) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v71 = *(a1 + 812);
LABEL_662:
          v58 = v71 << 57;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDStorefrontFilter);
        if (!GEOPDStorefrontFilterReadAllFrom(v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 576;
        goto LABEL_523;
      case 56:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 807) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v82 = *(a1 + 804);
          goto LABEL_735;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDGroundViewLabelFilter);
        if (!GEOPDGroundViewLabelFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 264;
        goto LABEL_523;
      case 57:
        if (!v43)
        {
          goto LABEL_530;
        }

        if (*(a1 + 805))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v83 = *(a1 + 804);
LABEL_732:
          v58 = v83 << 55;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDAnnotatedItemListFilter);
        if (!GEOPDAnnotatedItemListFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 80;
        goto LABEL_523;
      case 58:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 810) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 10;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDPoiEventFilter);
        if (!GEOPDPoiEventFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 440;
        goto LABEL_523;
      case 59:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 812) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v67 = *(a1 + 812);
          goto LABEL_686;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDStorefrontPresentationFilter);
        if (!GEOPDStorefrontPresentationFilterReadAllFrom(v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 584;
        goto LABEL_523;
      case 60:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 810) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 13;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDPlacecardLayoutConfigurationFilter);
        if (!GEOPDPlacecardLayoutConfigurationFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 416;
        goto LABEL_523;
      case 61:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 810) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 8;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDPrototypeContainerFilter);
        if (!GEOPDPrototypeContainerFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 456;
        goto LABEL_523;
      case 62:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 815) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v85 = *(a1 + 812);
LABEL_724:
          v58 = v85 << 37;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDVehiclePositionFilter);
        if (!GEOPDVehiclePositionFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 736;
        goto LABEL_523;
      case 63:
        if (!v43)
        {
          goto LABEL_530;
        }

        if (*(a1 + 809))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 23;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDLinkedServiceFilter);
        if (!GEOPDLinkedServiceFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 336;
        goto LABEL_523;
      case 64:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 805) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v57 = *(a1 + 804);
LABEL_680:
          v58 = v57 << 49;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDBusinessHoursFilter);
        if (!GEOPDBusinessHoursFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 128;
        goto LABEL_523;
      case 65:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 809) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 17;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDPlaceCollectionFilter);
        if (!GEOPDPlaceCollectionFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 384;
        goto LABEL_523;
      case 66:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 811) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = 2 * *(a1 + 804);
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDRelatedPlaceFilter);
        if (!GEOPDRelatedPlaceFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 512;
        goto LABEL_523;
      case 67:
        if (!v43)
        {
          goto LABEL_530;
        }

        if (*(a1 + 815))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v80 = *(a1 + 812);
LABEL_716:
          v58 = v80 << 39;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDTransitTripStopFilter);
        if (!GEOPDTransitTripStopFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 720;
        goto LABEL_523;
      case 68:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 815) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v70 = *(a1 + 812);
LABEL_708:
          v58 = v70 << 38;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDTransitTripStopTimeFilter);
        if (!GEOPDTransitTripStopTimeFilterReadAllFrom(v48, v3, v98 & 1))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 728;
        goto LABEL_523;
      case 69:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 814) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v61 = *(a1 + 812);
LABEL_657:
          v58 = v61 << 40;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDTransitTripGeometryFilter);
        if (!GEOPDTransitTripGeometryFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 712;
        goto LABEL_523;
      case 70:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 815) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v82 = *(a1 + 812);
LABEL_735:
          v58 = v82 << 32;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDWalletCategoryInformationFilter);
        if (!GEOPDWalletCategoryInformationFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 776;
        goto LABEL_523;
      case 71:
        if (!v43)
        {
          goto LABEL_530;
        }

        if (*(a1 + 811))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 7;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDPublisherFilter);
        if (!GEOPDPublisherFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 464;
        goto LABEL_523;
      case 73:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 810) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 14;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDPlaceQuestionnaireFilter);
        if (!GEOPDPlaceQuestionnaireFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 408;
        goto LABEL_523;
      case 74:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 809) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 16;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDPlaceCollectionItemFilter);
        if (!GEOPDPlaceCollectionItemFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 392;
        goto LABEL_523;
      case 76:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 806) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v73 = *(a1 + 804);
          goto LABEL_713;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDCollectionIdsFilter);
        if (!GEOPDCollectionIdsFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 152;
        goto LABEL_523;
      case 77:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 808) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 25;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDISO3166CodeFilter);
        if (!GEOPDISO3166CodeFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 320;
        goto LABEL_523;
      case 78:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 815) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v62 = *(a1 + 812);
          goto LABEL_667;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDVendorAmenitiesFilter);
        if (!GEOPDVendorAmenitiesFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 744;
        goto LABEL_523;
      case 81:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 812) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v79 = *(a1 + 812);
LABEL_729:
          v58 = v79 << 58;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDStorefrontFacesFilter);
        if (!GEOPDStorefrontFacesFilterReadAllFrom(v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 568;
        goto LABEL_523;
      case 82:
        if (!v43)
        {
          goto LABEL_530;
        }

        if (*(a1 + 808))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v81 = *(a1 + 804);
LABEL_738:
          v58 = v81 << 31;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDGuideGroupFilter);
        if (!GEOPDGuideGroupFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 272;
        goto LABEL_523;
      case 83:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 806) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v75 = *(a1 + 804);
LABEL_624:
          v58 = v75 << 44;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDContainmentPlaceFilter);
        if (!GEOPDContainmentPlaceFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 168;
        goto LABEL_523;
      case 84:
        if (!v43)
        {
          goto LABEL_530;
        }

        if (*(a1 + 806))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v84 = *(a1 + 804);
LABEL_748:
          v58 = v84 << 47;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDCategorizedPhotosFilter);
        if (!GEOPDCategorizedPhotosFilterReadAllFrom(v48, v3, v98 & 1))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 144;
        goto LABEL_523;
      case 85:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 807) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v85 = *(a1 + 804);
          goto LABEL_724;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDExploreGuidesFilter);
        if (!GEOPDExploreGuidesFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 224;
        goto LABEL_523;
      case 86:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 804) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v63 = *(a1 + 804);
          goto LABEL_632;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDAboutFilter);
        if (!GEOPDAboutFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 24;
        goto LABEL_523;
      case 87:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 808) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 24;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDLabelGeometryFilter);
        if (!GEOPDLabelGeometryFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 328;
        goto LABEL_523;
      case 88:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 806) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v76 = *(a1 + 804);
LABEL_670:
          v58 = v76 << 43;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDEnhancedPlacementFilter);
        if (!GEOPDEnhancedPlacementFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 176;
        goto LABEL_523;
      case 89:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 813) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v64 = *(a1 + 812);
          goto LABEL_635;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDTemplatePlaceFilter);
        if (!GEOPDTemplatePlaceFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 608;
        goto LABEL_523;
      case 91:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 814) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v56 = *(a1 + 812);
LABEL_751:
          v58 = v56 << 42;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDTransitPaymentMethodInfoFilter);
        if (!GEOPDTransitPaymentMethodInfoFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 696;
        goto LABEL_523;
      case 93:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 806) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v60 = *(a1 + 804);
          goto LABEL_619;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDEnrichmentInfoFilter);
        if (!GEOPDEnrichmentInfoFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 192;
        goto LABEL_523;
      case 94:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 804) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v74 = *(a1 + 804);
          goto LABEL_721;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDActionDataFilter);
        if (!GEOPDActionDataFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 40;
        goto LABEL_523;
      case 95:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 806) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v56 = *(a1 + 804);
          goto LABEL_751;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDEnrichmentDataFilter);
        if (!GEOPDEnrichmentDataFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 184;
        goto LABEL_523;
      case 96:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 810) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 11;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDPOIClaimFilter);
        if (!GEOPDPOIClaimFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 432;
        goto LABEL_523;
      case 97:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 807) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v70 = *(a1 + 804);
          goto LABEL_708;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDEVChargerFilter);
        if (!GEOPDEVChargerFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 216;
        goto LABEL_523;
      case 98:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 813) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v78 = *(a1 + 812);
LABEL_673:
          v58 = v78 << 48;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDTrailHeadFilter);
        if (!GEOPDTrailHeadFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 648;
        goto LABEL_523;
      case 100:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 811) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = 4 * *(a1 + 804);
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDRefreshIdFilter);
        if (!GEOPDRefreshIdFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 504;
        goto LABEL_523;
      case 101:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 804) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v66 = *(a1 + 804);
          goto LABEL_638;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDAddressWithComponentsFilter);
        if (!GEOPDAddressWithComponentsFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 48;
        goto LABEL_523;
      case 102:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 812) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v55 = *(a1 + 812);
          goto LABEL_627;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDSearchResultPlacePhotoFilter);
        if (!GEOPDSearchResultPlacePhotoFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 544;
        goto LABEL_523;
      case 103:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 807) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v59 = *(a1 + 804);
LABEL_741:
          v58 = v59 << 33;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDForwardInfoFilter);
        if (!GEOPDForwardInfoFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 256;
        goto LABEL_523;
      case 104:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 808) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 30;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDHikeAssociatedInfoFilter);
        if (!GEOPDHikeAssociatedInfoFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 280;
        goto LABEL_523;
      case 105:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 808) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 28;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDHikeSummaryFilter);
        if (!GEOPDHikeSummaryFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 296;
        goto LABEL_523;
      case 106:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 808) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 29;
          goto LABEL_756;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDHikeGeometryFilter);
        if (!GEOPDHikeGeometryFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 288;
        goto LABEL_523;
      case 107:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 813) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v57 = *(a1 + 812);
          goto LABEL_680;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDTooltipFilter);
        if (!GEOPDTooltipFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 640;
        goto LABEL_523;
      case 108:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 809) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v58 = *(a1 + 804) << 22;
LABEL_756:
          v6 += v58 >> 63;
          goto LABEL_757;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDLocalizedNamesFilter);
        if (GEOPDLocalizedNamesFilterReadAllFrom(v48, v3))
        {
          PBReaderRecallMark();
          v49 = 344;
LABEL_523:
          v50 = *(a1 + v49);
          *(a1 + v49) = v48;

          --v6;
LABEL_757:
          if (!(v97 & 1 | (v6 != 0)))
          {
            goto LABEL_758;
          }

          continue;
        }

LABEL_759:

LABEL_760:
        v41 = 0;
LABEL_761:
        v94 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
        if (v95)
        {
LABEL_762:
          *(a1 + v94[994]) |= 1uLL;
        }

        if (v28 & 1 | ((v41 & 1) == 0))
        {
          *(a1 + v94[994]) = vorrq_s8(*(a1 + v94[994]), xmmword_187FBDD80);
        }

        else if (v96)
        {
          v86 = *v96;
          if (*v96)
          {
            v87 = v96 + 1;
            do
            {
              v88 = v86 - 1;
              v89 = a1;
              v90 = 0x800000;
              switch(v88)
              {
                case 0:
                  goto LABEL_866;
                case 1:
                  v90 = 0x1000000000000;
                  goto LABEL_865;
                case 2:
                  v90 = 4;
                  goto LABEL_865;
                case 3:
                  v90 = 1024;
                  goto LABEL_865;
                case 4:
                  v90 = 32;
                  goto LABEL_865;
                case 5:
                  v90 = 0x800000000000000;
                  goto LABEL_865;
                case 6:
                  v90 = 2;
                  goto LABEL_863;
                case 7:
                  v90 = 0x200000000000;
                  goto LABEL_865;
                case 8:
                  v90 = 0x1000000000;
                  goto LABEL_865;
                case 9:
                  v90 = 0x80000;
                  goto LABEL_863;
                case 10:
                  v90 = 0x400000;
                  goto LABEL_863;
                case 11:
                  v90 = 0x1000000;
                  goto LABEL_865;
                case 12:
                  v90 = 0x20000000;
                  goto LABEL_865;
                case 13:
                  v90 = 0x1000000000000000;
                  goto LABEL_865;
                case 14:
                  v90 = 128;
                  goto LABEL_865;
                case 15:
                  v90 = 256;
                  goto LABEL_863;
                case 19:
                  v90 = 0x40000;
                  goto LABEL_863;
                case 20:
                  v90 = 0x10000;
                  goto LABEL_863;
                case 21:
                  v90 = 2048;
                  goto LABEL_863;
                case 22:
                  v90 = 0x10000000;
                  goto LABEL_865;
                case 23:
                  v90 = 0x20000;
                  goto LABEL_863;
                case 24:
                  v90 = 0x2000;
                  goto LABEL_865;
                case 25:
                  v90 = 0x8000;
                  goto LABEL_865;
                case 26:
                  v90 = 0x100000;
                  goto LABEL_863;
                case 28:
                  v90 = 0x8000000;
                  goto LABEL_865;
                case 29:
                  v90 = 1;
                  goto LABEL_863;
                case 30:
                  v90 = 64;
                  goto LABEL_865;
                case 31:
                  v90 = 8;
                  goto LABEL_863;
                case 32:
                  v90 = 0x8000000000000000;
                  goto LABEL_865;
                case 33:
                  v90 = 16;
                  goto LABEL_863;
                case 35:
                  v90 = 4096;
                  goto LABEL_863;
                case 36:
                  v90 = 0x8000000000000;
                  goto LABEL_865;
                case 37:
                  v90 = 512;
                  goto LABEL_865;
                case 38:
                  v90 = 0x80000000000;
                  goto LABEL_865;
                case 39:
                  v90 = 0x200000000000000;
                  goto LABEL_865;
                case 40:
                  v90 = 0x400000000000000;
                  goto LABEL_865;
                case 41:
                  v90 = 0x100000000000;
                  goto LABEL_865;
                case 42:
                  v90 = 0x40000000000;
                  goto LABEL_865;
                case 43:
                  v90 = 512;
                  goto LABEL_863;
                case 47:
                  v90 = 0x10000000;
                  goto LABEL_863;
                case 49:
                  v90 = 0x40000;
                  goto LABEL_865;
                case 50:
                  v90 = 0x100000000;
                  goto LABEL_863;
                case 51:
                  v90 = 0x2000000000;
                  goto LABEL_865;
                case 52:
                  v90 = 0x40000000000000;
                  goto LABEL_865;
                case 53:
                  v90 = 4096;
                  goto LABEL_865;
                case 54:
                  v90 = 64;
                  goto LABEL_863;
                case 55:
                  v90 = 0x80000000;
                  goto LABEL_865;
                case 56:
                  v90 = 256;
                  goto LABEL_865;
                case 57:
                  v90 = 0x20000000000000;
                  goto LABEL_865;
                case 58:
                  v90 = 128;
                  goto LABEL_863;
                case 59:
                  v90 = 0x4000000000000;
                  goto LABEL_865;
                case 60:
                  v90 = 0x80000000000000;
                  goto LABEL_865;
                case 61:
                  v90 = 0x4000000;
                  goto LABEL_863;
                case 62:
                  v90 = 0x10000000000;
                  goto LABEL_865;
                case 63:
                  v90 = 0x4000;
                  goto LABEL_865;
                case 64:
                  v90 = 0x400000000000;
                  goto LABEL_865;
                case 65:
                  v90 = 0x4000000000000000;
                  goto LABEL_865;
                case 66:
                  v90 = 0x1000000;
                  goto LABEL_863;
                case 67:
                  v90 = 0x2000000;
                  goto LABEL_863;
                case 68:
                  v90 = 0x800000;
                  goto LABEL_863;
                case 69:
                  v90 = 0x80000000;
                  goto LABEL_863;
                case 70:
                  v90 = 0x100000000000000;
                  goto LABEL_865;
                case 72:
                  v90 = 0x2000000000000;
                  goto LABEL_865;
                case 73:
                  v90 = 0x800000000000;
                  goto LABEL_865;
                case 75:
                  v90 = 0x20000;
                  goto LABEL_865;
                case 76:
                  v90 = 0x4000000000;
                  goto LABEL_865;
                case 77:
                  v90 = 0x8000000;
                  goto LABEL_863;
                case 80:
                  v90 = 32;
                  goto LABEL_863;
                case 81:
                  v90 = 0x100000000;
                  goto LABEL_865;
                case 82:
                  v90 = 0x80000;
                  goto LABEL_865;
                case 83:
                  v90 = 0x10000;
                  goto LABEL_865;
                case 84:
                  v90 = 0x4000000;
                  goto LABEL_865;
                case 85:
                  v90 = 2;
                  goto LABEL_865;
                case 86:
                  v90 = 0x8000000000;
                  goto LABEL_865;
                case 87:
                  v90 = 0x100000;
                  goto LABEL_865;
                case 88:
                  v90 = 1024;
                  goto LABEL_863;
                case 90:
                  v90 = 0x200000;
                  goto LABEL_863;
                case 92:
                  v90 = 0x400000;
                  goto LABEL_865;
                case 93:
                  v90 = 8;
                  goto LABEL_865;
                case 94:
                  v90 = 0x200000;
                  goto LABEL_865;
                case 95:
                  v90 = 0x10000000000000;
                  goto LABEL_865;
                case 96:
                  v90 = 0x2000000;
                  goto LABEL_865;
                case 97:
                  v90 = 0x8000;
                  goto LABEL_863;
                case 99:
                  v90 = 0x2000000000000000;
                  goto LABEL_865;
                case 100:
                  v90 = 16;
                  goto LABEL_865;
                case 101:
                  v90 = 4;
                  goto LABEL_863;
                case 102:
                  v90 = 0x40000000;
                  goto LABEL_865;
                case 103:
                  v90 = 0x200000000;
                  goto LABEL_865;
                case 104:
                  v90 = 0x800000000;
                  goto LABEL_865;
                case 105:
                  v90 = 0x400000000;
                  goto LABEL_865;
                case 106:
                  v90 = 0x4000;
                  goto LABEL_863;
                case 107:
                  v90 = 0x20000000000;
                  goto LABEL_865;
                case 108:
                  v90 = 2048;
LABEL_865:
                  v89 = a1;
                  goto LABEL_866;
                case 109:
                  v90 = 0x40000000;
                  goto LABEL_863;
                case 110:
                  v90 = 0x20000000;
                  goto LABEL_863;
                case 112:
                  v90 = 0x2000;
LABEL_863:
                  v89 = a1 + 8;
LABEL_866:
                  *(v89 + v94[994]) |= v90;
                  break;
                default:
                  break;
              }

              v91 = *v87++;
              v86 = v91;
            }

            while (v91);
          }
        }

        if (v41)
        {
          v3 = ([v3 hasError] ^ 1);
          if ((v28 & 1) == 0)
          {
            return v3;
          }

LABEL_872:
          v92 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        else
        {
          v3 = 0;
          if (v28)
          {
            goto LABEL_872;
          }
        }

        return v3;
      case 109:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 805) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v54 = *(a1 + 804);
          goto LABEL_595;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDBrandLogoEmbeddingFilter);
        if (!GEOPDBrandLogoEmbeddingFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 104;
        goto LABEL_523;
      case 110:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 815) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v59 = *(a1 + 812);
          goto LABEL_741;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDVisualEvidenceFilter);
        if (!GEOPDVisualEvidenceFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 768;
        goto LABEL_523;
      case 111:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 815) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v65 = *(a1 + 812);
          goto LABEL_647;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDVisitedPlacesMetaDataFilter);
        if (!GEOPDVisitedPlacesMetaDataFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 760;
        goto LABEL_523;
      case 113:
        if (!v43)
        {
          goto LABEL_530;
        }

        if ((*(a1 + 813) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }

          v53 = *(a1 + 812);
          goto LABEL_606;
        }

        v99 = 0;
        v100 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_760;
        }

        v48 = objc_alloc_init(GEOPDTokenizerResultFilter);
        if (!GEOPDTokenizerResultFilterReadAllFrom(v48, v3))
        {
          goto LABEL_759;
        }

        PBReaderRecallMark();
        v49 = 632;
        goto LABEL_523;
      default:
        if (v95 & 1) == 0 || (*(a1 + 804))
        {
LABEL_530:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_760;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v51 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v52 = *(a1 + 16);
            *(a1 + 16) = v51;
          }

          if (!PBUnknownFieldAdd())
          {
            v41 = 0;
            v94 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
            goto LABEL_762;
          }
        }

        goto LABEL_757;
    }
  }
}