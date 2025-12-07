void sub_1866CC214(void *a1)
{
  v3 = pthread_rwlock_unlock((v1 + 32));
  if (!v3)
  {
    __clang_call_terminate(a1);
  }

  geo::read_write_lock::logFailure(v3, "unlock", v4);
  __clang_call_terminate(a1);
}

void geo::codec::VertexPoolDealloc(geo::codec::zone_mallocator *this, GeoCodecsVertexPool *a2)
{
  if (this)
  {
    v3 = *(this + 1);
    v4 = geo::codec::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVectorTilePoint>(v4, v3);
    v5 = *(this + 4);
    v7 = geo::codec::zone_mallocator::instance(v6);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsRange>(v7, v5);
    v9 = *(this + 3);
    if (v9)
    {
      v10 = geo::codec::zone_mallocator::instance(v8);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<float>(v10, v9);
    }

    v11 = *(this + 7);
    if (v11)
    {
      v12 = geo::codec::zone_mallocator::instance(v8);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsGhostPoint>(v12, v11);
    }

    v13 = *(this + 9);
    if (v13)
    {
      v14 = geo::codec::zone_mallocator::instance(v8);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsRange>(v14, v13);
    }

    v15 = geo::codec::zone_mallocator::instance(v8);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVertexPool>(v15, this);
  }
}

void geo::codec::CurveVertexPoolDealloc(geo::codec::zone_mallocator *this, GeoCodecsCurveVertexPool *a2)
{
  if (this)
  {
    v3 = *(this + 1);
    v4 = geo::codec::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsTileCurveVertex>(v4, v3);
    v5 = *(this + 4);
    v7 = geo::codec::zone_mallocator::instance(v6);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsRange>(v7, v5);
    v9 = *(this + 3);
    if (v9)
    {
      v10 = geo::codec::zone_mallocator::instance(v8);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<float>(v10, v9);
    }

    v11 = geo::codec::zone_mallocator::instance(v8);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsCurveVertexPool>(v11, this);
  }
}

uint64_t bodySizeEstimateFromResponse(void *a1)
{
  v1 = [a1 allHeaderFields];
  v2 = [v1 objectForKeyedSubscript:@"Content-Length"];

  if (v2)
  {
    v3 = newlocale(63, 0, 0);
    v7 = 0;
    v4 = sscanf_l([v2 UTF8String], v3, "%zu", &v7);
    freelocale(v3);
    if (v4 == 1)
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t LoadItem::reason(LoadItem ***this)
{
  for (i = 0; this; this = *this)
  {
    v2 = *(this + 152);
    if (v2 <= 2)
    {
      if (v2 != 1 && (v2 != 2 || i && i != 5))
      {
        continue;
      }
    }

    else if (v2 == 3)
    {
      if (i > 5 || ((1 << i) & 0x25) == 0)
      {
        continue;
      }
    }

    else if (v2 == 5)
    {
      if (i)
      {
        continue;
      }
    }

    else if (v2 != 4 || i > 5 || ((1 << i) & 0x2D) == 0)
    {
      continue;
    }

    i = *(this + 152);
  }

  return i;
}

uint64_t geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1EF7EA1B8;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

uint64_t std::__function::__value_func<void ()(LoadItem::Requester &)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

id __copy_helper_block_ea8_32c49_ZTSKZ36__GEOTileLoader__requestOnlineTiles_E3__8(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

uint64_t GEOTileKeyStyle(uint64_t a1, _DWORD *a2)
{
  result = 0;
  v4 = *a1 & 0x7F;
  if (v4 <= 0xB)
  {
    if ((*a1 & 0x7Fu) > 8)
    {
      switch(v4)
      {
        case 9u:
          LODWORD(a1) = *(a1 + 10);
          break;
        case 0xAu:
          LODWORD(a1) = 47;
          break;
        case 0xBu:
          LODWORD(a1) = 69;
          break;
        default:
          return result;
      }
    }

    else
    {
      switch(v4)
      {
        case 2u:
          a1 = (*(a1 + 10) | (*(a1 + 14) << 32)) >> 26;
          break;
        case 3u:
          *(&v5 + 1) = *(a1 + 13);
          *&v5 = *(a1 + 5);
          a1 = v5 >> 58;
          break;
        case 4u:
          LODWORD(a1) = *(a1 + 8) & 0x3FFF;
          break;
        default:
          return result;
      }
    }

    goto LABEL_27;
  }

  if ((*a1 & 0x7Fu) <= 0xE)
  {
    if (v4 == 12)
    {
      LODWORD(a1) = ((*(a1 + 9) | (*(a1 + 11) << 16)) >> 6) & 0x3FFF;
      goto LABEL_27;
    }

    if (v4 != 13)
    {
      if (v4 != 14)
      {
        return result;
      }

      LODWORD(a1) = 70;
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  switch(v4)
  {
    case 0xFu:
LABEL_20:
      LODWORD(a1) = 71;
      break;
    case 0x13u:
      LODWORD(a1) = 87;
      break;
    case 0x14u:
      LODWORD(a1) = 90;
      break;
    default:
      return result;
  }

LABEL_27:
  *a2 = a1;
  return 1;
}

void __destroy_helper_block_ea8_32c49_ZTSKZ36__GEOTileLoader__requestOnlineTiles_E3__8(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void geo::BatchLoadHelper::~BatchLoadHelper(void **this)
{
  free(*this);
  free(this[1]);
  free(this[2]);
  free(this[3]);
  v2 = this[5];
  if (v2)
  {
    free(v2);
  }

  v3 = this + 6;
  std::vector<GEORoadEdge * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<GEORoadEdge * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

id GEORegionalResourceTileKeyActiveScenarios(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = 0;
  v4 = *(a1 + 5);
  do
  {
    if (v4)
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
      [v2 addObject:v5];
    }

    v4 >>= 1;
    ++v3;
  }

  while (v3 != 7);

  return v2;
}

void std::__list_imp<geo::Batch>::clear(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = *(v2 + 1);

        *(v2 + 7) = &unk_1EF7EA1E8;
        v6 = (v2 + 16);
        std::vector<geo::Batch::KeyInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

BOOL _GEOTileResponseIsAllowable(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = ([v9 isDisputedBordersAllowlistedForCountry:v10 region:v11] & 1) == 0 && !objc_msgSend(v9, "isDisputedBordersAllowlistedForCountry:region:", v12, v13) || (v10 == v12 || objc_msgSend(v10, "isEqualToString:", v12)) && (v11 == v13 || objc_msgSend(v11, "isEqualToString:", v13));

  return v14;
}

void _pruneErrors(GEOTileLoader *a1)
{
  v6 = a1;
  GEOMachAbsoluteTimeGetCurrent();
  v3 = v2;
  while (1)
  {
    internal = v6->_internal;
    v5 = *(internal + 17);
    if (!v5 || v3 - *(*(*(internal + 13) + 8 * ((v5 + *(internal + 16) - 1) / 0x49)) - 4088 * ((v5 + *(internal + 16) - 1) / 0x49) + 56 * (v5 + *(internal + 16) - 1)) <= 300.0)
    {
      break;
    }

    std::deque<ErrorInfo>::pop_back(internal + 12, v1);
  }

  while (v5 >= 0x11)
  {
    std::deque<ErrorInfo>::pop_back(internal + 12, v1);
    internal = v6->_internal;
    v5 = *(internal + 17);
  }
}

void std::__list_imp<LoadItem>::__delete_node[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = &unk_1EF7E6970;

  *(a1 + 152) = &unk_1EF7E6970;
  v2 = *(a1 + 120);
  if (v2)
  {
    do
    {
      v3 = *v2;

      v2[15] = off_1EF7E6B30;
      v2[12] = off_1EF7E6B00;

      v2[9] = off_1EF7E6910;
      v2[6] = off_1EF7E6AD0;

      v2[3] = off_1EF7E6AA0;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *(a1 + 80) = &unk_1EF7EA1B8;

  operator delete(a1);
}

uint64_t gcl::tmesh::DecoderImpl::decodeResidual(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t *a4)
{
  v6 = result;
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      v285 = *(a2 + 2688);
      if (v285 <= 0)
      {
        v287 = 0;
      }

      else
      {
        v286 = 0;
        v287 = 0;
        v288 = *(a2 + 2732);
        v289 = *(a2 + 2736);
        do
        {
          if (v288 >= 0x40000001)
          {
            v290 = v288;
          }

          else
          {
            v293 = *(a2 + 2744);
            do
            {
              v289 *= 2;
              *(a2 + 2744) = --v293;
              if (!v293)
              {
                v295 = *(a2 + 2720);
                *(a2 + 2720) = v295 + 1;
                v296 = *(a2 + 2704);
                if (v295 + 1 >= v296)
                {
                  v297 = 65280;
                }

                else
                {
                  result = *(a2 + 2712);
                  v297 = *(result + v295 + 1) << 8;
                }

                v298 = v295 + 2;
                *(a2 + 2720) = v298;
                if (v298 < v296)
                {
                  v294 = *(*(a2 + 2712) + v298);
                }

                else
                {
                  v294 = 255;
                }

                v289 |= v297 | v294;
                v293 = 16;
                *(a2 + 2744) = 16;
              }

              v290 = 2 * v288;
              v31 = v288 >= 0x20000001;
              v288 *= 2;
            }

            while (!v31);
          }

          v291 = (v290 >> 1) & 0x7FFF0000;
          v288 = v290 - v291;
          v292 = v289 >= v291;
          if (v289 < v291)
          {
            v288 = v291;
            v291 = 0;
          }

          v289 -= v291;
          *(a2 + 2732) = v288;
          *(a2 + 2736) = v289;
          v287 += v292 << v286++;
        }

        while (v286 != v285);
      }

      *v6 = v287;
      v310 = *(a2 + 2692);
      if (v310 < 1)
      {
        v312 = 0;
      }

      else
      {
        v311 = 0;
        v312 = 0;
        v313 = *(a2 + 2732);
        v314 = *(a2 + 2736);
        do
        {
          if (v313 >= 0x40000001)
          {
            v315 = v313;
          }

          else
          {
            v318 = *(a2 + 2744);
            do
            {
              v314 *= 2;
              *(a2 + 2744) = --v318;
              if (!v318)
              {
                v320 = *(a2 + 2720);
                *(a2 + 2720) = v320 + 1;
                v321 = *(a2 + 2704);
                if (v320 + 1 >= v321)
                {
                  v322 = 65280;
                }

                else
                {
                  result = *(a2 + 2712);
                  v322 = *(result + v320 + 1) << 8;
                }

                v323 = v320 + 2;
                *(a2 + 2720) = v323;
                if (v323 < v321)
                {
                  v319 = *(*(a2 + 2712) + v323);
                }

                else
                {
                  v319 = 255;
                }

                v314 |= v322 | v319;
                v318 = 16;
                *(a2 + 2744) = 16;
              }

              v315 = 2 * v313;
              v31 = v313 >= 0x20000001;
              v313 *= 2;
            }

            while (!v31);
          }

          v316 = (v315 >> 1) & 0x7FFF0000;
          v313 = v315 - v316;
          v317 = v314 >= v316;
          if (v314 < v316)
          {
            v313 = v316;
            v316 = 0;
          }

          v314 -= v316;
          *(a2 + 2732) = v313;
          *(a2 + 2736) = v314;
          v312 += v317 << v311++;
        }

        while (v311 != v310);
      }

      v6[1] = v312;
      v324 = *(a2 + 2696);
      if (v324 < 1)
      {
        v6[2] = 0;
        return result;
      }

      v325 = 0;
      LODWORD(result) = 0;
      v326 = *(a2 + 2732);
      v327 = *(a2 + 2736);
      do
      {
        if (v326 >= 0x40000001)
        {
          v328 = v326;
        }

        else
        {
          v331 = *(a2 + 2744);
          do
          {
            v327 *= 2;
            *(a2 + 2744) = --v331;
            if (!v331)
            {
              v333 = *(a2 + 2720);
              *(a2 + 2720) = v333 + 1;
              v334 = *(a2 + 2704);
              if (v333 + 1 >= v334)
              {
                v335 = 65280;
              }

              else
              {
                v335 = *(*(a2 + 2712) + v333 + 1) << 8;
              }

              v336 = v333 + 2;
              *(a2 + 2720) = v336;
              if (v336 < v334)
              {
                v332 = *(*(a2 + 2712) + v336);
              }

              else
              {
                v332 = 255;
              }

              v327 |= v335 | v332;
              v331 = 16;
              *(a2 + 2744) = 16;
            }

            v328 = 2 * v326;
            v31 = v326 >= 0x20000001;
            v326 *= 2;
          }

          while (!v31);
        }

        v329 = (v328 >> 1) & 0x7FFF0000;
        v326 = v328 - v329;
        v330 = v327 >= v329;
        if (v327 < v329)
        {
          v326 = v329;
          v329 = 0;
        }

        v327 -= v329;
        *(a2 + 2732) = v326;
        *(a2 + 2736) = v327;
        result = ((v330 << v325++) + result);
      }

      while (v325 != v324);
      goto LABEL_392;
    }

    if (a3 != 4)
    {
      return result;
    }

    v13 = 0;
    v14 = a2 + 2752;
    v15 = *a4;
    while (1)
    {
      v18 = *(v15 + 2 * v13);
      v19 = *(a2 + 2732);
      v20 = *(a2 + 2736);
      if (v19 >= 0x40000001)
      {
        v23 = *(a2 + 2732);
      }

      else
      {
        v21 = *(a2 + 2744);
        do
        {
          v20 *= 2;
          *(a2 + 2744) = --v21;
          if (!v21)
          {
            v24 = *(a2 + 2720);
            *(a2 + 2720) = v24 + 1;
            v25 = *(a2 + 2704);
            if (v24 + 1 >= v25)
            {
              v26 = 65280;
            }

            else
            {
              v26 = *(*(a2 + 2712) + v24 + 1) << 8;
            }

            v27 = v24 + 2;
            *(a2 + 2720) = v27;
            if (v27 < v25)
            {
              v22 = *(*(a2 + 2712) + v27);
            }

            else
            {
              v22 = 255;
            }

            v20 |= v26 | v22;
            v21 = 16;
            *(a2 + 2744) = 16;
          }

          v23 = 2 * v19;
          v31 = v19 >= 0x20000001;
          v19 *= 2;
        }

        while (!v31);
      }

      v28 = (HIWORD(v23) * v18) & 0xFFFF0000;
      v29 = v20 < v28 ? 0 : (HIWORD(v23) * v18) & 0xFFFF0000;
      v30 = v20 - v29;
      *(a2 + 2736) = v20 - v29;
      v31 = v20 >= v28;
      v32 = v20 < v28 ? (v18 >> 7) & 0x1FE : ((v18 >> 7) & 0x1FE) + 1;
      v33 = v23 - v28;
      *(v15 + 2 * v13) = *(v14 + 2 * v32) + v18;
      v34 = v31 ? v23 - v28 : (HIWORD(v23) * v18) & 0xFFFF0000;
      *(a2 + 2732) = v34;
      if (v31)
      {
        break;
      }

      v17 = 0;
LABEL_21:
      v6[v13++] = v17;
      if (v13 == 3)
      {
        return result;
      }
    }

    v35 = a4[3];
    v36 = *(v35 + 2 * v13);
    if (v33 >= 0x40000001)
    {
      v39 = v23 - v28;
    }

    else
    {
      v37 = *(a2 + 2744);
      do
      {
        v30 *= 2;
        *(a2 + 2744) = --v37;
        if (!v37)
        {
          v40 = *(a2 + 2720);
          *(a2 + 2720) = v40 + 1;
          v41 = *(a2 + 2704);
          if (v40 + 1 >= v41)
          {
            v42 = 65280;
          }

          else
          {
            v42 = *(*(a2 + 2712) + v40 + 1) << 8;
          }

          v43 = v40 + 2;
          *(a2 + 2720) = v43;
          if (v43 < v41)
          {
            v38 = *(*(a2 + 2712) + v43);
          }

          else
          {
            v38 = 255;
          }

          v30 |= v42 | v38;
          v37 = 16;
          *(a2 + 2744) = 16;
        }

        v39 = 2 * v33;
        v31 = v33 >= 0x20000001;
        v33 *= 2;
      }

      while (!v31);
    }

    v44 = (HIWORD(v39) * v36) & 0xFFFF0000;
    v45 = (v36 >> 7) & 0x1FE;
    v46 = v39 - v44;
    if (v30 >= v44)
    {
      ++v45;
    }

    *(v35 + 2 * v13) = *(v14 + 2 * v45) + v36;
    if (v30 >= v44)
    {
      v47 = (HIWORD(v39) * v36) & 0xFFFF0000;
    }

    else
    {
      v46 = (HIWORD(v39) * v36) & 0xFFFF0000;
      v47 = 0;
    }

    v48 = v30 - v47;
    *(a2 + 2732) = v46;
    *(a2 + 2736) = v30 - v47;
    v49 = (a4[6] + (v13 << 7));
    v50 = *v49;
    if (v46 >= 0x40000001)
    {
      v53 = v46;
    }

    else
    {
      v51 = *(a2 + 2744);
      do
      {
        v48 *= 2;
        *(a2 + 2744) = --v51;
        if (!v51)
        {
          v54 = *(a2 + 2720);
          *(a2 + 2720) = v54 + 1;
          v55 = *(a2 + 2704);
          if (v54 + 1 >= v55)
          {
            v56 = 65280;
          }

          else
          {
            v56 = *(*(a2 + 2712) + v54 + 1) << 8;
          }

          v57 = v54 + 2;
          *(a2 + 2720) = v57;
          if (v57 < v55)
          {
            v52 = *(*(a2 + 2712) + v57);
          }

          else
          {
            v52 = 255;
          }

          v48 |= v56 | v52;
          v51 = 16;
          *(a2 + 2744) = 16;
        }

        v53 = 2 * v46;
        v31 = v46 >= 0x20000001;
        v46 *= 2;
      }

      while (!v31);
    }

    v58 = (HIWORD(v53) * v50) & 0xFFFF0000;
    v59 = (v50 >> 7) & 0x1FE;
    v60 = v53 - v58;
    if (v48 >= v58)
    {
      ++v59;
    }

    v61 = *(v14 + 2 * v59);
    v62 = v48 >= v58;
    *v49 = v61 + v50;
    if (v48 >= v58)
    {
      v63 = v58;
    }

    else
    {
      v60 = v58;
      v63 = 0;
    }

    v64 = v48 - v63;
    *(a2 + 2732) = v60;
    *(a2 + 2736) = v64;
    v65 = &v49[v62 & 0x7FFFFFF];
    v66 = v65[1];
    if (v60 >= 0x40000001)
    {
      v69 = v60;
    }

    else
    {
      v67 = *(a2 + 2744);
      do
      {
        v64 *= 2;
        *(a2 + 2744) = --v67;
        if (!v67)
        {
          v70 = *(a2 + 2720);
          *(a2 + 2720) = v70 + 1;
          v71 = *(a2 + 2704);
          if (v70 + 1 >= v71)
          {
            v72 = 65280;
          }

          else
          {
            result = *(a2 + 2712);
            v72 = *(result + v70 + 1) << 8;
          }

          v73 = v70 + 2;
          *(a2 + 2720) = v73;
          if (v73 < v71)
          {
            v68 = *(*(a2 + 2712) + v73);
          }

          else
          {
            v68 = 255;
          }

          v64 |= v72 | v68;
          v67 = 16;
          *(a2 + 2744) = 16;
        }

        v69 = 2 * v60;
        v31 = v60 >= 0x20000001;
        v60 *= 2;
      }

      while (!v31);
    }

    v74 = 32 * v62;
    v75 = (HIWORD(v69) * v66) & 0xFFFF0000;
    v76 = (v66 >> 7) & 0x1FE;
    v77 = v69 - v75;
    if (v64 >= v75)
    {
      ++v76;
    }

    v65[1] = *(v14 + 2 * v76) + v66;
    if (v64 < v75)
    {
      v78 = v75;
    }

    else
    {
      v78 = v77;
    }

    if (v64 < v75)
    {
      v79 = 0;
    }

    else
    {
      v79 = v75;
    }

    v80 = v64 - v79;
    *(a2 + 2732) = v78;
    *(a2 + 2736) = v80;
    v81 = v74 | (16 * (v64 >= v75));
    v82 = &v49[v81 >> 4];
    v83 = v82[3];
    if (v78 >= 0x40000001)
    {
      v86 = v78;
    }

    else
    {
      v84 = *(a2 + 2744);
      do
      {
        v80 *= 2;
        *(a2 + 2744) = --v84;
        if (!v84)
        {
          v87 = *(a2 + 2720);
          *(a2 + 2720) = v87 + 1;
          v88 = *(a2 + 2704);
          if (v87 + 1 >= v88)
          {
            v89 = 65280;
          }

          else
          {
            result = *(a2 + 2712);
            v89 = *(result + v87 + 1) << 8;
          }

          v90 = v87 + 2;
          *(a2 + 2720) = v90;
          if (v90 < v88)
          {
            v85 = *(*(a2 + 2712) + v90);
          }

          else
          {
            v85 = 255;
          }

          v80 |= v89 | v85;
          v84 = 16;
          *(a2 + 2744) = 16;
        }

        v86 = 2 * v78;
        v31 = v78 >= 0x20000001;
        v78 *= 2;
      }

      while (!v31);
    }

    v91 = (HIWORD(v86) * v83) & 0xFFFF0000;
    v92 = (v83 >> 7) & 0x1FE;
    v93 = v86 - v91;
    v94 = v80 >= v91;
    if (v80 >= v91)
    {
      ++v92;
    }

    v82[3] = *(v14 + 2 * v92) + v83;
    if (v80 < v91)
    {
      v95 = v91;
    }

    else
    {
      v95 = v93;
    }

    if (v80 < v91)
    {
      v96 = 0;
    }

    else
    {
      v96 = v91;
    }

    v97 = v80 - v96;
    *(a2 + 2732) = v95;
    *(a2 + 2736) = v97;
    v98 = v81 | (8 * v94);
    v99 = &v49[v98 >> 3];
    v100 = v99[7];
    if (v95 >= 0x40000001)
    {
      v103 = v95;
    }

    else
    {
      v101 = *(a2 + 2744);
      do
      {
        v97 *= 2;
        *(a2 + 2744) = --v101;
        if (!v101)
        {
          v104 = *(a2 + 2720);
          *(a2 + 2720) = v104 + 1;
          v105 = *(a2 + 2704);
          if (v104 + 1 >= v105)
          {
            v106 = 65280;
          }

          else
          {
            result = *(a2 + 2712);
            v106 = *(result + v104 + 1) << 8;
          }

          v107 = v104 + 2;
          *(a2 + 2720) = v107;
          if (v107 < v105)
          {
            v102 = *(*(a2 + 2712) + v107);
          }

          else
          {
            v102 = 255;
          }

          v97 |= v106 | v102;
          v101 = 16;
          *(a2 + 2744) = 16;
        }

        v103 = 2 * v95;
        v31 = v95 >= 0x20000001;
        v95 *= 2;
      }

      while (!v31);
    }

    v108 = (HIWORD(v103) * v100) & 0xFFFF0000;
    v109 = (v100 >> 7) & 0x1FE;
    v110 = v103 - v108;
    v111 = v97 >= v108;
    if (v97 >= v108)
    {
      ++v109;
    }

    v99[7] = *(v14 + 2 * v109) + v100;
    if (v97 < v108)
    {
      v112 = v108;
    }

    else
    {
      v112 = v110;
    }

    if (v97 < v108)
    {
      v113 = 0;
    }

    else
    {
      v113 = v108;
    }

    v114 = v97 - v113;
    *(a2 + 2732) = v112;
    *(a2 + 2736) = v114;
    v115 = v98 | (4 * v111);
    v116 = &v49[v115 >> 2];
    v117 = v116[15];
    if (v112 >= 0x40000001)
    {
      v120 = v112;
    }

    else
    {
      v118 = *(a2 + 2744);
      do
      {
        v114 *= 2;
        *(a2 + 2744) = --v118;
        if (!v118)
        {
          v121 = *(a2 + 2720);
          *(a2 + 2720) = v121 + 1;
          v122 = *(a2 + 2704);
          if (v121 + 1 >= v122)
          {
            v123 = 65280;
          }

          else
          {
            result = *(a2 + 2712);
            v123 = *(result + v121 + 1) << 8;
          }

          v124 = v121 + 2;
          *(a2 + 2720) = v124;
          if (v124 < v122)
          {
            v119 = *(*(a2 + 2712) + v124);
          }

          else
          {
            v119 = 255;
          }

          v114 |= v123 | v119;
          v118 = 16;
          *(a2 + 2744) = 16;
        }

        v120 = 2 * v112;
        v31 = v112 >= 0x20000001;
        v112 *= 2;
      }

      while (!v31);
    }

    v125 = (HIWORD(v120) * v117) & 0xFFFF0000;
    v126 = (v117 >> 7) & 0x1FE;
    v127 = v120 - v125;
    if (v114 >= v125)
    {
      ++v126;
    }

    v128 = v114 >= v125;
    v116[15] = *(v14 + 2 * v126) + v117;
    if (v114 < v125)
    {
      v129 = v125;
    }

    else
    {
      v129 = v127;
    }

    if (v114 < v125)
    {
      v130 = 0;
    }

    else
    {
      v130 = v125;
    }

    v131 = v114 - v130;
    *(a2 + 2732) = v129;
    *(a2 + 2736) = v131;
    v132 = v115 | (2 * v128);
    v133 = v49 + v132;
    v134 = *(v133 + 31);
    if (v129 >= 0x40000001)
    {
      v137 = v129;
    }

    else
    {
      v135 = *(a2 + 2744);
      do
      {
        v131 *= 2;
        *(a2 + 2744) = --v135;
        if (!v135)
        {
          v138 = *(a2 + 2720);
          *(a2 + 2720) = v138 + 1;
          v139 = *(a2 + 2704);
          if (v138 + 1 >= v139)
          {
            v140 = 65280;
          }

          else
          {
            v140 = *(*(a2 + 2712) + v138 + 1) << 8;
          }

          v141 = v138 + 2;
          *(a2 + 2720) = v141;
          if (v141 < v139)
          {
            v136 = *(*(a2 + 2712) + v141);
          }

          else
          {
            v136 = 255;
          }

          v131 |= v140 | v136;
          v135 = 16;
          *(a2 + 2744) = 16;
        }

        v137 = 2 * v129;
        v31 = v129 >= 0x20000001;
        v129 *= 2;
      }

      while (!v31);
    }

    v142 = (HIWORD(v137) * v134) & 0xFFFF0000;
    v143 = (v134 >> 7) & 0x1FE;
    v144 = v137 - v142;
    v145 = v131 >= v142;
    if (v131 >= v142)
    {
      ++v143;
    }

    *(v133 + 31) = *(v14 + 2 * v143) + v134;
    if (v131 < v142)
    {
      v146 = v142;
    }

    else
    {
      v146 = v144;
    }

    if (v131 < v142)
    {
      v142 = 0;
    }

    if (v145)
    {
      v147 = v132 + 1;
    }

    else
    {
      v147 = v132;
    }

    *(a2 + 2732) = v146;
    *(a2 + 2736) = v131 - v142;
    if (v147 == 63)
    {
      v148 = a4[12];
      result = gcl::ArithmeticDecoder::decodeExpGolomb((a2 + 2704), *(v148 + 4 * v13), (a4[9] + 2 * v13));
      v147 = result + 63;
      v149 = *(v148 + 4 * v13);
      v150 = (result + 63) >> v149;
      v15 = *a4;
      if (v149 && !v150)
      {
        v16 = -1;
LABEL_17:
        *(v148 + 4 * v13) = v149 + v16;
        goto LABEL_18;
      }

      if (v150 >= 2)
      {
        v16 = 1;
        goto LABEL_17;
      }
    }

LABEL_18:
    if (v30 >= v44)
    {
      v17 = v147 + 1;
    }

    else
    {
      v17 = ~v147;
    }

    goto LABEL_21;
  }

  if (a3)
  {
    if (a3 != 2)
    {
      return result;
    }

    v7 = a4[12];
    v8 = gcl::ArithmeticDecoder::decodeSignedExpGolomb((a2 + 2704), *v7, a4[3], a4[9]);
    if (v8 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = -v8;
    }

    v10 = v9 >> *v7;
    if (*v7)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v12 = -1;
    }

    else
    {
      if (v10 < 2)
      {
        goto LABEL_374;
      }

      v12 = 1;
    }

    *v7 += v12;
LABEL_374:
    *v6 = v8;
    v299 = a4[12];
    v300 = gcl::ArithmeticDecoder::decodeSignedExpGolomb((a2 + 2704), *(v299 + 4), (a4[3] + 2), (a4[9] + 2));
    if (v300 >= 0)
    {
      v301 = v300;
    }

    else
    {
      v301 = -v300;
    }

    v302 = *(v299 + 4);
    v303 = v301 >> v302;
    if (!v302 || v303)
    {
      if (v303 < 2)
      {
        goto LABEL_383;
      }

      v304 = 1;
    }

    else
    {
      v304 = -1;
    }

    *(v299 + 4) = v302 + v304;
LABEL_383:
    v6[1] = v300;
    v305 = a4[12];
    result = gcl::ArithmeticDecoder::decodeSignedExpGolomb((a2 + 2704), *(v305 + 8), (a4[3] + 4), (a4[9] + 4));
    if (result >= 0)
    {
      v306 = result;
    }

    else
    {
      v306 = -result;
    }

    v307 = *(v305 + 8);
    v308 = v306 >> v307;
    if (!v307 || v308)
    {
      if (v308 < 2)
      {
LABEL_392:
        v6[2] = result;
        return result;
      }

      v309 = 1;
    }

    else
    {
      v309 = -1;
    }

    *(v305 + 8) = v307 + v309;
    goto LABEL_392;
  }

  v151 = 0;
  v152 = a2 + 2752;
  v153 = *a4;
  do
  {
    v155 = *(v153 + 2 * v151);
    v156 = *(a2 + 2732);
    v157 = *(a2 + 2736);
    if (v156 >= 0x40000001)
    {
      v160 = *(a2 + 2732);
    }

    else
    {
      v158 = *(a2 + 2744);
      do
      {
        v157 *= 2;
        *(a2 + 2744) = --v158;
        if (!v158)
        {
          v161 = *(a2 + 2720);
          *(a2 + 2720) = v161 + 1;
          v162 = *(a2 + 2704);
          if (v161 + 1 >= v162)
          {
            v163 = 65280;
          }

          else
          {
            v163 = *(*(a2 + 2712) + v161 + 1) << 8;
          }

          v164 = v161 + 2;
          *(a2 + 2720) = v164;
          if (v164 < v162)
          {
            v159 = *(*(a2 + 2712) + v164);
          }

          else
          {
            v159 = 255;
          }

          v157 |= v163 | v159;
          v158 = 16;
          *(a2 + 2744) = 16;
        }

        v160 = 2 * v156;
        v31 = v156 >= 0x20000001;
        v156 *= 2;
      }

      while (!v31);
    }

    v165 = (HIWORD(v160) * v155) & 0xFFFF0000;
    if (v157 < v165)
    {
      v166 = 0;
    }

    else
    {
      v166 = (HIWORD(v160) * v155) & 0xFFFF0000;
    }

    v167 = v157 - v166;
    *(a2 + 2736) = v157 - v166;
    v168 = v157 >= v165;
    if (v157 < v165)
    {
      v169 = (v155 >> 7) & 0x1FE;
    }

    else
    {
      v169 = ((v155 >> 7) & 0x1FE) + 1;
    }

    v170 = v160 - v165;
    *(v153 + 2 * v151) = *(v152 + 2 * v169) + v155;
    if (v168)
    {
      v171 = v160 - v165;
    }

    else
    {
      v171 = (HIWORD(v160) * v155) & 0xFFFF0000;
    }

    *(a2 + 2732) = v171;
    if (v168)
    {
      v172 = a4[3];
      v173 = *(v172 + 2 * v151);
      if (v170 >= 0x40000001)
      {
        v176 = v160 - v165;
      }

      else
      {
        v174 = *(a2 + 2744);
        do
        {
          v167 *= 2;
          *(a2 + 2744) = --v174;
          if (!v174)
          {
            v177 = *(a2 + 2720);
            *(a2 + 2720) = v177 + 1;
            v178 = *(a2 + 2704);
            if (v177 + 1 >= v178)
            {
              v179 = 65280;
            }

            else
            {
              v179 = *(*(a2 + 2712) + v177 + 1) << 8;
            }

            v180 = v177 + 2;
            *(a2 + 2720) = v180;
            if (v180 < v178)
            {
              v175 = *(*(a2 + 2712) + v180);
            }

            else
            {
              v175 = 255;
            }

            v167 |= v179 | v175;
            v174 = 16;
            *(a2 + 2744) = 16;
          }

          v176 = 2 * v170;
          v31 = v170 >= 0x20000001;
          v170 *= 2;
        }

        while (!v31);
      }

      v181 = (HIWORD(v176) * v173) & 0xFFFF0000;
      v182 = (v173 >> 7) & 0x1FE;
      if (v167 >= v181)
      {
        ++v182;
      }

      *(v172 + 2 * v151) = *(v152 + 2 * v182) + v173;
      if (v167 < v181)
      {
        v183 = (HIWORD(v176) * v173) & 0xFFFF0000;
      }

      else
      {
        v183 = v176 - v181;
      }

      if (v167 < v181)
      {
        v184 = 0;
      }

      else
      {
        v184 = v181;
      }

      v185 = v167 - v184;
      *(a2 + 2732) = v183;
      *(a2 + 2736) = v167 - v184;
      v186 = (a4[6] + (v151 << 7));
      v187 = *v186;
      if (v183 >= 0x40000001)
      {
        v190 = v183;
      }

      else
      {
        v188 = *(a2 + 2744);
        do
        {
          v185 *= 2;
          *(a2 + 2744) = --v188;
          if (!v188)
          {
            v191 = *(a2 + 2720);
            *(a2 + 2720) = v191 + 1;
            v192 = *(a2 + 2704);
            if (v191 + 1 >= v192)
            {
              v193 = 65280;
            }

            else
            {
              v193 = *(*(a2 + 2712) + v191 + 1) << 8;
            }

            v194 = v191 + 2;
            *(a2 + 2720) = v194;
            if (v194 < v192)
            {
              v189 = *(*(a2 + 2712) + v194);
            }

            else
            {
              v189 = 255;
            }

            v185 |= v193 | v189;
            v188 = 16;
            *(a2 + 2744) = 16;
          }

          v190 = 2 * v183;
          v31 = v183 >= 0x20000001;
          v183 *= 2;
        }

        while (!v31);
      }

      v195 = (HIWORD(v190) * v187) & 0xFFFF0000;
      v196 = (v187 >> 7) & 0x1FE;
      v197 = v190 - v195;
      v198 = v185 >= v195;
      if (v185 >= v195)
      {
        ++v196;
      }

      v199 = *(v152 + 2 * v196);
      v200 = v185 >= v195;
      *v186 = v199 + v187;
      if (v185 < v195)
      {
        v197 = v195;
        v195 = 0;
      }

      if (v198)
      {
        v201 = 2;
      }

      else
      {
        v201 = 1;
      }

      v202 = v185 - v195;
      *(a2 + 2732) = v197;
      *(a2 + 2736) = v202;
      v203 = v186[v201];
      if (v197 >= 0x40000001)
      {
        v206 = v197;
      }

      else
      {
        v204 = *(a2 + 2744);
        do
        {
          v202 *= 2;
          *(a2 + 2744) = --v204;
          if (!v204)
          {
            v207 = *(a2 + 2720);
            *(a2 + 2720) = v207 + 1;
            v208 = *(a2 + 2704);
            if (v207 + 1 >= v208)
            {
              v209 = 65280;
            }

            else
            {
              result = *(a2 + 2712);
              v209 = *(result + v207 + 1) << 8;
            }

            v210 = v207 + 2;
            *(a2 + 2720) = v210;
            if (v210 < v208)
            {
              v205 = *(*(a2 + 2712) + v210);
            }

            else
            {
              v205 = 255;
            }

            v202 |= v209 | v205;
            v204 = 16;
            *(a2 + 2744) = 16;
          }

          v206 = 2 * v197;
          v31 = v197 >= 0x20000001;
          v197 *= 2;
        }

        while (!v31);
      }

      v211 = (HIWORD(v206) * v203) & 0xFFFF0000;
      v212 = (v203 >> 7) & 0x1FE;
      v213 = v206 - v211;
      v214 = v202 >= v211;
      if (v202 >= v211)
      {
        ++v212;
      }

      v186[v201] = *(v152 + 2 * v212) + v203;
      if (v202 < v211)
      {
        v215 = v211;
      }

      else
      {
        v215 = v213;
      }

      if (v202 < v211)
      {
        v216 = 0;
      }

      else
      {
        v216 = v211;
      }

      v217 = v202 - v216;
      *(a2 + 2732) = v215;
      *(a2 + 2736) = v217;
      v218 = v200 | (2 * v214);
      v219 = &v186[v218];
      v220 = v219[3];
      if (v215 >= 0x40000001)
      {
        v223 = v215;
      }

      else
      {
        v221 = *(a2 + 2744);
        do
        {
          v217 *= 2;
          *(a2 + 2744) = --v221;
          if (!v221)
          {
            v224 = *(a2 + 2720);
            *(a2 + 2720) = v224 + 1;
            v225 = *(a2 + 2704);
            if (v224 + 1 >= v225)
            {
              v226 = 65280;
            }

            else
            {
              result = *(a2 + 2712);
              v226 = *(result + v224 + 1) << 8;
            }

            v227 = v224 + 2;
            *(a2 + 2720) = v227;
            if (v227 < v225)
            {
              v222 = *(*(a2 + 2712) + v227);
            }

            else
            {
              v222 = 255;
            }

            v217 |= v226 | v222;
            v221 = 16;
            *(a2 + 2744) = 16;
          }

          v223 = 2 * v215;
          v31 = v215 >= 0x20000001;
          v215 *= 2;
        }

        while (!v31);
      }

      v228 = (HIWORD(v223) * v220) & 0xFFFF0000;
      v229 = (v220 >> 7) & 0x1FE;
      v230 = v223 - v228;
      if (v217 >= v228)
      {
        ++v229;
      }

      v231 = v217 >= v228;
      v219[3] = *(v152 + 2 * v229) + v220;
      if (v217 < v228)
      {
        v232 = v228;
      }

      else
      {
        v232 = v230;
      }

      if (v217 < v228)
      {
        v233 = 0;
      }

      else
      {
        v233 = v228;
      }

      v234 = v217 - v233;
      *(a2 + 2732) = v232;
      *(a2 + 2736) = v234;
      v235 = v218 | (4 * v231);
      v236 = &v186[v235];
      v237 = v236[7];
      if (v232 >= 0x40000001)
      {
        v240 = v232;
      }

      else
      {
        v238 = *(a2 + 2744);
        do
        {
          v234 *= 2;
          *(a2 + 2744) = --v238;
          if (!v238)
          {
            v241 = *(a2 + 2720);
            *(a2 + 2720) = v241 + 1;
            v242 = *(a2 + 2704);
            if (v241 + 1 >= v242)
            {
              v243 = 65280;
            }

            else
            {
              result = *(a2 + 2712);
              v243 = *(result + v241 + 1) << 8;
            }

            v244 = v241 + 2;
            *(a2 + 2720) = v244;
            if (v244 < v242)
            {
              v239 = *(*(a2 + 2712) + v244);
            }

            else
            {
              v239 = 255;
            }

            v234 |= v243 | v239;
            v238 = 16;
            *(a2 + 2744) = 16;
          }

          v240 = 2 * v232;
          v31 = v232 >= 0x20000001;
          v232 *= 2;
        }

        while (!v31);
      }

      v245 = (HIWORD(v240) * v237) & 0xFFFF0000;
      v246 = (v237 >> 7) & 0x1FE;
      v247 = v240 - v245;
      if (v234 >= v245)
      {
        ++v246;
      }

      v248 = v234 >= v245;
      v236[7] = *(v152 + 2 * v246) + v237;
      if (v234 < v245)
      {
        v249 = v245;
      }

      else
      {
        v249 = v247;
      }

      if (v234 < v245)
      {
        v250 = 0;
      }

      else
      {
        v250 = v245;
      }

      v251 = v234 - v250;
      *(a2 + 2732) = v249;
      *(a2 + 2736) = v251;
      v252 = v235 | (8 * v248);
      v253 = &v186[v252];
      v254 = v253[15];
      if (v249 >= 0x40000001)
      {
        v257 = v249;
      }

      else
      {
        v255 = *(a2 + 2744);
        do
        {
          v251 *= 2;
          *(a2 + 2744) = --v255;
          if (!v255)
          {
            v258 = *(a2 + 2720);
            *(a2 + 2720) = v258 + 1;
            v259 = *(a2 + 2704);
            if (v258 + 1 >= v259)
            {
              v260 = 65280;
            }

            else
            {
              result = *(a2 + 2712);
              v260 = *(result + v258 + 1) << 8;
            }

            v261 = v258 + 2;
            *(a2 + 2720) = v261;
            if (v261 < v259)
            {
              v256 = *(*(a2 + 2712) + v261);
            }

            else
            {
              v256 = 255;
            }

            v251 |= v260 | v256;
            v255 = 16;
            *(a2 + 2744) = 16;
          }

          v257 = 2 * v249;
          v31 = v249 >= 0x20000001;
          v249 *= 2;
        }

        while (!v31);
      }

      v262 = (HIWORD(v257) * v254) & 0xFFFF0000;
      v263 = (v254 >> 7) & 0x1FE;
      v264 = v257 - v262;
      if (v251 >= v262)
      {
        ++v263;
      }

      v265 = v251 >= v262;
      v253[15] = *(v152 + 2 * v263) + v254;
      if (v251 < v262)
      {
        v266 = v262;
      }

      else
      {
        v266 = v264;
      }

      if (v251 < v262)
      {
        v267 = 0;
      }

      else
      {
        v267 = v262;
      }

      v268 = v251 - v267;
      *(a2 + 2732) = v266;
      *(a2 + 2736) = v268;
      v269 = v252 | (16 * v265);
      v270 = &v186[v269];
      v271 = v270[31];
      if (v266 >= 0x40000001)
      {
        v274 = v266;
      }

      else
      {
        v272 = *(a2 + 2744);
        do
        {
          v268 *= 2;
          *(a2 + 2744) = --v272;
          if (!v272)
          {
            v275 = *(a2 + 2720);
            *(a2 + 2720) = v275 + 1;
            v276 = *(a2 + 2704);
            if (v275 + 1 >= v276)
            {
              v277 = 65280;
            }

            else
            {
              v277 = *(*(a2 + 2712) + v275 + 1) << 8;
            }

            v278 = v275 + 2;
            *(a2 + 2720) = v278;
            if (v278 < v276)
            {
              v273 = *(*(a2 + 2712) + v278);
            }

            else
            {
              v273 = 255;
            }

            v268 |= v277 | v273;
            v272 = 16;
            *(a2 + 2744) = 16;
          }

          v274 = 2 * v266;
          v31 = v266 >= 0x20000001;
          v266 *= 2;
        }

        while (!v31);
      }

      v279 = (HIWORD(v274) * v271) & 0xFFFF0000;
      v280 = (v271 >> 7) & 0x1FE;
      v281 = v274 - v279;
      if (v268 >= v279)
      {
        ++v280;
      }

      v270[31] = *(v152 + 2 * v280) + v271;
      if (v268 < v279)
      {
        v282 = v279;
      }

      else
      {
        v282 = v281;
      }

      if (v268 < v279)
      {
        v283 = 0;
      }

      else
      {
        v283 = v279;
      }

      *(a2 + 2732) = v282;
      *(a2 + 2736) = v268 - v283;
      v284 = v269 | (32 * (v268 >= v279));
      if (v284 == 63)
      {
        result = gcl::ArithmeticDecoder::decodeExpGolomb((a2 + 2704), *(a4[12] + 4 * v151), (a4[9] + 2 * v151));
        v284 = result + 63;
        v153 = *a4;
      }

      if (v167 >= v181)
      {
        v154 = v284 + 1;
      }

      else
      {
        v154 = ~v284;
      }
    }

    else
    {
      v154 = 0;
    }

    v6[v151++] = v154;
  }

  while (v151 != 3);
  return result;
}

BOOL std::__tree<std::shared_ptr<FeatureStyleAttributes const>,FeatureStyleAttributesSet::FeatureStyleAttributesCompare,std::allocator<std::shared_ptr<FeatureStyleAttributes const>>>::__emplace_unique_key_args<std::shared_ptr<FeatureStyleAttributes const>,std::shared_ptr<FeatureStyleAttributes const> const&>(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (!FeatureStyleAttributesSet::FeatureStyleAttributesCompare::operator()(a2, v6))
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    result = FeatureStyleAttributesSet::FeatureStyleAttributesCompare::operator()(v6, a2);
    if (!result)
    {
      return result;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *FeatureStyleAttributesSet::insert(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a1 + 8;
  v5 = *(a1 + 8);
  v6 = *a2;
  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = a1 + 8;
  do
  {
    v8 = FeatureStyleAttributesSet::FeatureStyleAttributesCompare::operator()(*(v5 + 32), v6);
    if (v8)
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    if (!v8)
    {
      v7 = v5;
    }

    v5 = *(v5 + v9);
  }

  while (v5);
  if (v7 != v4)
  {
    v11 = *(v7 + 32);
    v10 = v7 + 32;
    if (!FeatureStyleAttributesSet::FeatureStyleAttributesCompare::operator()(v6, v11))
    {
      return v10;
    }
  }

LABEL_11:
  std::__tree<std::shared_ptr<FeatureStyleAttributes const>,FeatureStyleAttributesSet::FeatureStyleAttributesCompare,std::allocator<std::shared_ptr<FeatureStyleAttributes const>>>::__emplace_unique_key_args<std::shared_ptr<FeatureStyleAttributes const>,std::shared_ptr<FeatureStyleAttributes const> const&>(a1, v6, v2);
  v12 = *(a1 + 32);
  if (v12 >= *(a1 + 40))
  {
    v14 = std::vector<std::shared_ptr<FeatureStyleAttributes const>,geo::allocator_adapter<std::shared_ptr<FeatureStyleAttributes const>,geo::codec::zone_mallocator>>::__emplace_back_slow_path<std::shared_ptr<FeatureStyleAttributes const> const&>((a1 + 24), v2);
  }

  else
  {
    v13 = v2[1];
    *v12 = *v2;
    v12[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = v12 + 2;
  }

  *(a1 + 32) = v14;
  return v2;
}

void std::vector<char,geo::allocator_adapter<char,geo::codec::zone_mallocator>>::reserve(geo::codec::zone_mallocator *result, size_t a2)
{
  if (*(result + 2) - *result < a2)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v3 = *(result + 1) - *result;
    v5 = geo::codec::zone_mallocator::instance(result);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v5, a2);
    v7 = &v6[v3];
    v8 = &v6[a2];
    v9 = *(result + 1);
    v10 = &v6[v3 + *result - v9];
    v11 = memcpy(v10, *result, v9 - *result);
    v12 = *result;
    *result = v10;
    *(result + 1) = v7;
    *(result + 2) = v8;
    if (v12)
    {
      v13 = geo::codec::zone_mallocator::instance(v11);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v13, v12);
    }
  }
}

uint64_t geo::codec::zone_mallocator::instance(geo::codec::zone_mallocator *this)
{
  v2 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  return geo::codec::zone_mallocator::instance(void)::zone;
}

void sub_1866CF49C(_Unwind_Exception *a1)
{
  if (*v1)
  {
    malloc_destroy_zone(*v1);
    *v1 = 0;
  }

  MEMORY[0x18CFD1E40](v1, 0x1070C4011BAD943);
  _Unwind_Resume(a1);
}

uint64_t geo::codec::chapterReadVarUint32(void *a1, unsigned int *a2)
{
  v3 = a1[6];
  v2 = a1[7];
  v4 = v3 + 1;
  if (v3 + 1 > v2)
  {
    result = 0;
    *a2 = 0;
    return result;
  }

  v6 = a1[5];
  v7 = *(v6 + v3);
  a1[6] = v4;
  v8 = v7 & 0x7F;
  if ((v7 & 0x80) == 0)
  {
    goto LABEL_4;
  }

  v9 = v3 + 2;
  if (v3 + 2 > v2)
  {
    goto LABEL_6;
  }

  v10 = *(v6 + v4);
  a1[6] = v9;
  v8 = v8 & 0xFFFFC07F | ((v10 & 0x7F) << 7);
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v11 = v3 + 3;
  if (v3 + 3 > v2)
  {
LABEL_6:
    result = 0;
    *a2 = v8;
    return result;
  }

  v12 = *(v6 + v9);
  a1[6] = v11;
  v8 = v8 & 0xFFE03FFF | ((v12 & 0x7F) << 14);
  if ((v12 & 0x80000000) == 0)
  {
LABEL_4:
    result = 1;
    *a2 = v8;
    return result;
  }

  v13 = v3 + 4;
  if (v3 + 4 > v2)
  {
    goto LABEL_6;
  }

  v14 = *(v6 + v11);
  a1[6] = v13;
  v8 = v8 & 0xF01FFFFF | ((v14 & 0x7F) << 21);
  if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v15 = v3 + 5;
  if (v3 + 5 > v2)
  {
    goto LABEL_6;
  }

  v16 = *(v6 + v13);
  a1[6] = v15;
  v8 |= v16 << 28;
  if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v17 = v3 + 6;
  if (v3 + 6 > v2)
  {
    goto LABEL_6;
  }

  v18 = *(v6 + v15);
  a1[6] = v17;
  if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v19 = v3 + 7;
  if (v3 + 7 > v2)
  {
    goto LABEL_6;
  }

  v20 = *(v6 + v17);
  a1[6] = v19;
  if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v21 = v3 + 8;
  if (v3 + 8 > v2)
  {
    goto LABEL_6;
  }

  v22 = *(v6 + v19);
  a1[6] = v21;
  if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v23 = v3 + 9;
  if (v3 + 9 > v2)
  {
    goto LABEL_6;
  }

  v24 = *(v6 + v21);
  a1[6] = v23;
  if ((v24 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v25 = v3 + 10;
  if (v25 > v2)
  {
    goto LABEL_6;
  }

  v26 = *(v6 + v23);
  a1[6] = v25;
  if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  return 0;
}

void std::vector<char,geo::allocator_adapter<char,geo::codec::zone_mallocator>>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(geo::codec::zone_mallocator *result, _BYTE *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v7 = *(result + 1);
  v6 = *(result + 2);
  if (v6 - v7 < a5)
  {
    v8 = *result;
    v9 = &v7[a5 - *result];
    if (v9 < 0)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v10 = &__dst[-v8];
    v11 = v6 - v8;
    if (2 * v11 > v9)
    {
      v9 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      v13 = result;
      v14 = __src;
      v15 = a5;
      v16 = geo::codec::zone_mallocator::instance(result);
      v17 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v16, v12);
      a5 = v15;
      __src = v14;
      v18 = v17;
      result = v13;
    }

    else
    {
      v18 = 0;
    }

    v51 = &v10[v18];
    v52 = v18 + v12;
    v53 = &v10[v18 + a5];
    if (a5 < 8 || (&__dst[v18] - __src - v8) < 0x20)
    {
      v54 = __src;
      v55 = &v10[v18];
      goto LABEL_47;
    }

    if (a5 >= 0x20)
    {
      v64 = a5 & 0x7FFFFFFFFFFFFFE0;
      v65 = v18 + v10 + 16;
      v66 = (__src + 16);
      v67 = a5 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v68 = *v66;
        *(v65 - 1) = *(v66 - 1);
        *v65 = v68;
        v65 += 2;
        v66 += 2;
        v67 -= 32;
      }

      while (v67);
      if (v64 == a5)
      {
        goto LABEL_48;
      }

      if ((a5 & 0x18) == 0)
      {
        v55 = &v51[v64];
        v54 = &__src[v64];
        goto LABEL_47;
      }
    }

    else
    {
      v64 = 0;
    }

    v69 = a5 & 0x7FFFFFFFFFFFFFF8;
    v54 = &__src[a5 & 0x7FFFFFFFFFFFFFF8];
    v70 = v64 - (a5 & 0x7FFFFFFFFFFFFFF8);
    v71 = &__dst[v64 - v8 + v18];
    v72 = &__src[v64];
    do
    {
      v73 = *v72++;
      *v71++ = v73;
      v70 += 8;
    }

    while (v70);
    if (v69 == a5)
    {
      goto LABEL_48;
    }

    v55 = &v51[v69];
    do
    {
LABEL_47:
      v56 = *v54++;
      *v55++ = v56;
    }

    while (v55 != v53);
LABEL_48:
    v57 = result;
    memcpy(v53, __dst, *(result + 1) - __dst);
    v58 = *v57;
    v59 = &v53[*(v57 + 1) - __dst];
    *(v57 + 1) = __dst;
    v60 = &v51[v58 - __dst];
    v61 = memcpy(v60, v58, __dst - v58);
    v62 = *v57;
    *v57 = v60;
    *(v57 + 1) = v59;
    *(v57 + 2) = v52;
    if (v62)
    {
      v63 = geo::codec::zone_mallocator::instance(v61);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v63, v62);
    }

    return;
  }

  v19 = *(result + 1);
  v20 = v7 - __dst;
  if (v7 - __dst >= a5)
  {
    v30 = v7 - &__dst[a5];
    v41 = &v7[-a5];
    v42 = *(result + 1);
    if (v7 >= a5)
    {
      v42 = *(result + 1);
      if (a5 <= 0x1F)
      {
        goto LABEL_65;
      }

      v43 = a5 & 0x7FFFFFFFFFFFFFE0;
      v41 += a5 & 0x7FFFFFFFFFFFFFE0;
      v44 = v7 + 16;
      v45 = &v7[-a5 + 16];
      v46 = a5 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v47 = *v45;
        *(v44 - 1) = *(v45 - 1);
        *v44 = v47;
        v44 += 2;
        v45 += 2;
        v46 -= 32;
      }

      while (v46);
      v42 = &v7[v43];
      if (v43 != a5)
      {
LABEL_65:
        do
        {
          v48 = *v41++;
          *v42++ = v48;
        }

        while (v41 != v7);
      }
    }

    *(result + 1) = v42;
    if (v7 == &__dst[a5])
    {
      goto LABEL_40;
    }

LABEL_39:
    v49 = __src;
    v50 = a5;
    memmove(&v19[-v30], __dst, v30);
    a5 = v50;
    __src = v49;
LABEL_40:

    memmove(__dst, __src, a5);
    return;
  }

  v21 = &__src[v20];
  if (&__src[v20] != a4)
  {
    v22 = &__dst[a4] - __src - v7;
    if (v22 < 0x20)
    {
      goto LABEL_66;
    }

    if ((__dst - __src) < 0x20)
    {
      goto LABEL_66;
    }

    v23 = v22 & 0xFFFFFFFFFFFFFFE0;
    v21 += v22 & 0xFFFFFFFFFFFFFFE0;
    v24 = v7 + 16;
    v25 = &__src[v7 + 16 - __dst];
    v26 = v22 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v27 = *v25;
      *(v24 - 1) = *(v25 - 1);
      *v24 = v27;
      v24 += 2;
      v25 += 2;
      v26 -= 32;
    }

    while (v26);
    v19 = &v7[v23];
    if (v22 != v23)
    {
LABEL_66:
      do
      {
        v28 = *v21++;
        *v19++ = v28;
      }

      while (v21 != a4);
    }
  }

  *(result + 1) = v19;
  if (v20 >= 1)
  {
    v29 = &__dst[a5];
    v30 = v19 - &__dst[a5];
    v31 = &v19[-a5];
    v32 = v19;
    if (&v19[-a5] < v7)
    {
      v33 = &v7[a5] - v19;
      v34 = v33 >= 0x20 && a5 > 0x1F;
      v32 = v19;
      if (!v34)
      {
        goto LABEL_67;
      }

      v35 = v33 & 0xFFFFFFFFFFFFFFE0;
      v31 += v33 & 0xFFFFFFFFFFFFFFE0;
      v36 = v19 + 16;
      v37 = &v19[-a5 + 16];
      v38 = v33 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v39 = *v37;
        *(v36 - 1) = *(v37 - 1);
        *v36 = v39;
        v37 += 2;
        v36 += 2;
        v38 -= 32;
      }

      while (v38);
      v32 = &v19[v35];
      if (v33 != v35)
      {
LABEL_67:
        do
        {
          v40 = *v31++;
          *v32++ = v40;
        }

        while (v31 != v7);
      }
    }

    *(result + 1) = v32;
    a5 = v7 - __dst;
    if (v19 == v29)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }
}

void std::__stable_sort<std::_ClassicAlgPolicy,geo::codec::_readLabels(VMP4Tile *,std::shared_ptr<geo::codec::VectorTile> const&)::$_0 &,GeoCodecsLabelLanguageLocale *>(__n128 *result, __n128 *a2, unint64_t a3, __int128 *a4, int64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v7 = a2[-2].n128_u64[1];
      v6 = (a2 - 24);
      if (v7 < result->n128_u64[0])
      {
        v8 = result[1].n128_u64[0];
        v9 = *result;
        v10 = v6[1].n128_u64[0];
        *result = *v6;
        result[1].n128_u64[0] = v10;
        *v6 = v9;
        v6[1].n128_u64[0] = v8;
      }
    }

    else if (a3 > 128)
    {
      v20 = a3 >> 1;
      v21 = (result + 24 * (a3 >> 1));
      v22 = a3 - (a3 >> 1);
      v23 = result;
      if (a3 <= a5)
      {
        v27 = a4;
        v28 = std::__stable_sort_move<std::_ClassicAlgPolicy,geo::codec::_readLabels(VMP4Tile *,std::shared_ptr<geo::codec::VectorTile> const&)::$_0 &,GeoCodecsLabelLanguageLocale *>(result, v21, a3 >> 1, a4, a6);
        v29 = v27 + 24 * v20;
        std::__stable_sort_move<std::_ClassicAlgPolicy,geo::codec::_readLabels(VMP4Tile *,std::shared_ptr<geo::codec::VectorTile> const&)::$_0 &,GeoCodecsLabelLanguageLocale *>(v21, a2, v22, v29, v28);
        v30 = v27 + 24 * a3;
        v31 = v29;
        while (v31 != v30)
        {
          if (*v31 >= *v27)
          {
            v32 = *v27;
            v23[1].n128_u64[0] = *(v27 + 2);
            *v23 = v32;
            v27 = (v27 + 24);
          }

          else
          {
            v33 = *v31;
            v23[1].n128_u64[0] = *(v31 + 16);
            *v23 = v33;
            v31 += 24;
          }

          v23 = (v23 + 24);
          if (v27 == v29)
          {
            while (v31 != v30)
            {
              v35 = *v31;
              v23[1].n128_u64[0] = *(v31 + 16);
              *v23 = v35;
              v23 = (v23 + 24);
              v31 += 24;
            }

            return;
          }
        }

        while (v27 != v29)
        {
          v34 = *v27;
          v23[1].n128_u64[0] = *(v27 + 2);
          *v23 = v34;
          v23 = (v23 + 24);
          v27 = (v27 + 24);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,geo::codec::_readLabels(VMP4Tile *,std::shared_ptr<geo::codec::VectorTile> const&)::$_0 &,GeoCodecsLabelLanguageLocale *>(result, v21, a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,geo::codec::_readLabels(VMP4Tile *,std::shared_ptr<geo::codec::VectorTile> const&)::$_0 &,GeoCodecsLabelLanguageLocale *>(v21, a2, v22, a4, a5);

        std::__inplace_merge<std::_ClassicAlgPolicy,geo::codec::_readLabels(VMP4Tile *,std::shared_ptr<geo::codec::VectorTile> const&)::$_0 &,GeoCodecsLabelLanguageLocale *>(v23, v21, a2, v20, v22, a4, a5);
      }
    }

    else if (result != a2)
    {
      v11 = &result[1].n128_i8[8];
      if (&result[1].n128_i8[8] != a2)
      {
        v12 = 0;
        v13 = result;
        do
        {
          v15 = v11;
          v16 = v13[1].n128_u64[1];
          if (v16 < v13->n128_u64[0])
          {
            v36 = v13[2];
            v17 = v12;
            do
            {
              v18 = result + v17;
              *(v18 + 24) = *(result + v17);
              *(v18 + 5) = *(result[1].n128_u64 + v17);
              if (!v17)
              {
                v14 = result;
                goto LABEL_11;
              }

              v17 -= 24;
            }

            while (v16 < *(v18 - 3));
            v14 = (result + v17 + 24);
LABEL_11:
            v14->n128_u64[0] = v16;
            *(v14 + 8) = v36;
          }

          v11 = &v15[1].n128_i8[8];
          v12 += 24;
          v13 = v15;
        }

        while (&v15[1].n128_i8[8] != a2);
      }
    }
  }
}

uint64_t geo::codec::findLabelLanguageLocal(geo::codec *this, void *a2, const void *a3)
{
  if (*this >= *a2)
  {
    return *this >= a2[1];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t gcl::tmesh::DecoderImpl::decompressPositionsAndConnectivity(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v703 = *MEMORY[0x1E69E9840];
  *(a1 + 3872) = 0;
  if (!a5 || !a6)
  {
    goto LABEL_507;
  }

  v14 = gcl::tmesh::DecoderImpl::parsePositionsAndConnectivityInfo(a2, a3, a1 + 3776);
  if (!v14)
  {
    goto LABEL_16;
  }

  if (v15 < 0)
  {
    goto LABEL_16;
  }

  v16 = *(a1 + 3784);
  if (a3 - v16 < 0)
  {
    goto LABEL_16;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  if (v14 + v15 < a2)
  {
    goto LABEL_16;
  }

  v17 = a2 + v16;
  if (v17 < v14)
  {
    goto LABEL_16;
  }

  v18 = v17 - v14;
  if (v18 < 0)
  {
    goto LABEL_16;
  }

  if (*(a1 + 3780) || (v19 = *(a1 + 3781), (v19 & 0xFC) != 4) || (v20 = *(a1 + 3808), (v19 & 6) == 4) && (v20 | 4) != 4 && *(a1 + 3800) == 1)
  {
    result = 4;
    goto LABEL_508;
  }

  if ((*(a1 + 3812) - 3) < 2 || (v20 | 2) == 3)
  {
LABEL_16:
    result = 3;
LABEL_508:
    *(a1 + 3872) = result;
    return result;
  }

  if (v18 < 4)
  {
    v22 = 0;
    v23 = 0;
LABEL_24:
    v24 = 0;
    v25 = 0;
    v26 = 0;
    goto LABEL_25;
  }

  v23 = *v14;
  if ((v18 & 0x7FFFFFFFFFFFFFFCLL) == 4)
  {
    v22 = 0;
    goto LABEL_24;
  }

  v22 = v14[1];
  if ((v18 & 0x7FFFFFFFFFFFFFFCLL) == 8)
  {
    goto LABEL_24;
  }

  v25 = v18 - 12;
  v26 = v14 + 3;
  v24 = v14[2];
LABEL_25:
  if (*(a1 + 3820) == 1)
  {
    if (v25)
    {
      v27 = *v26;
      if (v25 == 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = *(v26 + 1);
        if (v25 != 2)
        {
          v25 -= 3;
          v29 = *(v26 + 2);
          v26 = (v26 + 3);
          goto LABEL_35;
        }
      }

      v29 = 0;
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v28 = 0;
      v27 = 0;
      v29 = 0;
      v26 = 0;
    }
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
  }

LABEL_35:
  if (!v26)
  {
    goto LABEL_16;
  }

  if (v27 <= v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = v27;
  }

  if (v30 <= v29)
  {
    v30 = v29;
  }

  if (v30 >= 0x1D)
  {
    goto LABEL_16;
  }

  v31 = *(a1 + 104);
  *(a1 + 2688) = v27;
  *(a1 + 2692) = v28;
  *(a1 + 2696) = v29;
  v32 = *(a1 + 3788);
  v33 = *(a1 + 3792);
  v34 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 112) - v31) >> 2);
  v669 = v23;
  v666 = v24;
  v667 = v22;
  v685 = v26;
  __dst = v25;
  if (v32 <= v34)
  {
    if (v32 < v34)
    {
      *(a1 + 112) = v31 + 12 * v32;
    }
  }

  else
  {
    std::vector<gcl::Vector3<int>>::__append(a1 + 104, v32 - v34);
  }

  *a1 = 0;
  v35 = *(a1 + 56);
  v668 = (a1 + 56);
  if (*(a1 + 64) != v35)
  {
    *(a1 + 64) = v35;
  }

  v36 = *(a1 + 128);
  *(a1 + 3836) = 0;
  *(a1 + 3788) = v32;
  *(a1 + 3792) = v33;
  v37 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 136) - v36) >> 2);
  v696 = v32;
  v689 = v32;
  if (v33 <= v37)
  {
    if (v33 < v37)
    {
      *(a1 + 136) = v36 + 12 * v33;
    }
  }

  else
  {
    std::vector<gcl::Vector3<int>>::__append(a1 + 128, v33 - v37);
  }

  v39 = *(a1 + 32);
  v38 = *(a1 + 40);
  v40 = &v38[-v39];
  if (&v38[-v39] > 0x3F)
  {
    if (v40 != 64)
    {
      *(a1 + 40) = v39 + 64;
    }
  }

  else
  {
    v41 = *(a1 + 48);
    if (v41 - v38 < (64 - v40))
    {
      operator new();
    }

    v42 = v39 + 64;
    bzero(v38, 64 - v40);
    *(a1 + 40) = v42;
  }

  v43 = *(a1 + 8);
  v44 = *(a1 + 16) - v43;
  v671 = (a1 + 8);
  if ((v44 >> 2) > 0x3F)
  {
    if (v44 != 256)
    {
      *(a1 + 16) = v43 + 256;
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 8), 64 - (v44 >> 2));
  }

  v46 = *(a1 + 152);
  v45 = *(a1 + 160);
  v47 = v45 - v46;
  v48 = (v45 - v46) >> 4;
  v49 = v696 - v48;
  if (v696 <= v48)
  {
    if (v696 >= v48)
    {
      v54 = v696;
    }

    else
    {
      v54 = v696;
      v45 = &v46[16 * v696];
      *(a1 + 160) = v45;
    }
  }

  else
  {
    v50 = *(a1 + 168);
    if (v49 <= (v50 - v45) >> 4)
    {
      v55 = 16 * v49;
      bzero(*(a1 + 160), v55);
      v45 += v55;
      *(a1 + 160) = v45;
    }

    else
    {
      if (v689 < 0)
      {
        std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
      }

      v51 = v50 - v46;
      v52 = v51 >> 3;
      if (v51 >> 3 <= v696)
      {
        v52 = v696;
      }

      v123 = v51 >= 0x7FFFFFFFFFFFFFF0;
      v53 = 0xFFFFFFFFFFFFFFFLL;
      if (!v123)
      {
        v53 = v52;
      }

      if (v53)
      {
        if (!(v53 >> 60))
        {
          operator new();
        }

        goto LABEL_967;
      }

      __nc = (v45 - v46) >> 4;
      v56 = (16 * v48);
      bzero(v56, 16 * v49);
      v45 = &v56[16 * v49];
      v57 = &v56[-16 * __nc];
      memcpy(v57, v46, v47);
      *(a1 + 152) = v57;
      *(a1 + 160) = v45;
      *(a1 + 168) = 0;
      if (v46)
      {
        operator delete(v46);
        v45 = *(a1 + 160);
      }
    }

    v54 = v696;
    v46 = *(a1 + 152);
  }

  if (v46 != v45)
  {
    memset(v46, 255, ((v45 - v46 - 16) & 0xFFFFFFFFFFFFFFF0) + 16);
  }

  v58 = *(a1 + 176);
  v59 = *(a1 + 184);
  v60 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v58) >> 2);
  if (v54 <= v60)
  {
    if (v54 < v60)
    {
      v59 = &v58[12 * v54];
      *(a1 + 184) = v59;
    }
  }

  else
  {
    std::vector<gcl::Vector3<int>>::__append(a1 + 176, v54 - v60);
    v58 = *(a1 + 176);
    v59 = *(a1 + 184);
  }

  if (v59 - v58 >= 1)
  {
    memset(v58, 255, 12 * ((v59 - v58) / 0xCuLL - ((v59 - v58) > 0xB)) + 12);
  }

  v61 = *(a1 + 200);
  v62 = *(a1 + 208);
  v63 = 0xAAAAAAAAAAAAAAABLL * ((v62 - v61) >> 2);
  if (v54 <= v63)
  {
    if (v54 < v63)
    {
      v62 = &v61[12 * v54];
      *(a1 + 208) = v62;
    }
  }

  else
  {
    std::vector<gcl::Vector3<int>>::__append(a1 + 200, v54 - v63);
    v61 = *(a1 + 200);
    v62 = *(a1 + 208);
  }

  if (v62 - v61 >= 1)
  {
    memset(v61, 255, 12 * ((v62 - v61) / 0xCuLL - ((v62 - v61) > 0xB)) + 12);
  }

  if (*(a1 + 3817) != 1 || (*(a1 + 3816) & 1) == 0)
  {
    v64 = *(a1 + 80);
    v65 = *(a1 + 88);
    v66 = (v65 - v64) >> 2;
    if (v54 <= v66)
    {
      if (v54 < v66)
      {
        v65 = &v64[4 * v54];
        *(a1 + 88) = v65;
      }
    }

    else
    {
      std::vector<int>::__append((a1 + 80), v54 - v66);
      v64 = *(a1 + 80);
      v65 = *(a1 + 88);
    }

    if (v65 - v64 >= 1)
    {
      bzero(v64, v65 - v64);
    }
  }

  if (*(a1 + 3816) == 1)
  {
    v68 = *(a1 + 224);
    v67 = *(a1 + 232);
    v69 = 0xAAAAAAAAAAAAAAABLL * ((v67 - v68) >> 2);
    v70 = v54 - v69;
    if (v54 <= v69)
    {
      if (v54 < v69)
      {
        *(a1 + 232) = v68 + 12 * v54;
      }

      goto LABEL_121;
    }

    v71 = *(a1 + 240);
    if (0xAAAAAAAAAAAAAAABLL * ((v71 - v67) >> 2) < v70)
    {
      if (v689 < 0)
      {
        std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
      }

      v72 = 0xAAAAAAAAAAAAAAABLL * ((v71 - v68) >> 2);
      v73 = 0x5555555555555556 * ((v71 - v68) >> 2);
      if (v73 <= v696)
      {
        v73 = v696;
      }

      if (v72 >= 0xAAAAAAAAAAAAAAALL)
      {
        v74 = 0x1555555555555555;
      }

      else
      {
        v74 = v73;
      }

      if (v74 <= 0x1555555555555555)
      {
        operator new();
      }

      goto LABEL_967;
    }

    v75 = v67 + 12 * v70;
    v76 = 12 * v70 - 12;
    if (v76 >= 0x54)
    {
      v77 = v76 / 0xC + 1;
      v78 = *(a1 + 232);
      v79 = v77 & 0x3FFFFFFFFFFFFFF8;
      do
      {
        *v78 = xmmword_187FBF2B0;
        v78[1] = xmmword_187FBF2A0;
        v78[4] = xmmword_187FBF2A0;
        v78[5] = xmmword_187FBF290;
        v78[2] = xmmword_187FBF290;
        v78[3] = xmmword_187FBF2B0;
        v78 += 6;
        v79 -= 8;
      }

      while (v79);
      if (v77 == (v77 & 0x3FFFFFFFFFFFFFF8))
      {
        goto LABEL_120;
      }

      v67 += 12 * (v77 & 0x3FFFFFFFFFFFFFF8);
    }

    do
    {
      *(v67 + 8) = -1;
      *v67 = 0xFFFFFFFF00000000;
      v67 += 12;
    }

    while (v67 != v75);
LABEL_120:
    *(a1 + 232) = v75;
LABEL_121:
    v80 = *(a1 + 256);
    if (*(a1 + 264) == v80)
    {
      operator new();
    }

    if (((*(a1 + 264) - v80) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_966:
    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
  }

  v672 = a1 + 2048;
  memset_pattern16((a1 + 2048), &unk_187FBF450, 0xAuLL);
  *(a1 + 2058) = 0x8000;
  memset_pattern16((a1 + 2060), &unk_187FBF450, 0x10uLL);
  memset_pattern16((a1 + 2076), &unk_187FBF450, 0x10uLL);
  memset_pattern16((a1 + 2092), &unk_187FBF450, 0x10uLL);
  memset_pattern16((a1 + 2108), &unk_187FBF450, 0x10uLL);
  memset_pattern16((a1 + 2124), &unk_187FBF450, 0x10uLL);
  memset_pattern16((a1 + 2140), &unk_187FBF450, 6uLL);
  memset_pattern16((a1 + 2146), &unk_187FBF450, 6uLL);
  memset_pattern16((a1 + 2152), &unk_187FBF450, 6uLL);
  memset_pattern16((a1 + 2158), &unk_187FBF450, 6uLL);
  memset_pattern16((a1 + 2164), &unk_187FBF450, 6uLL);
  memset_pattern16((a1 + 2170), &unk_187FBF450, 6uLL);
  memset_pattern16((a1 + 2176), &unk_187FBF450, 6uLL);
  memset_pattern16((a1 + 2182), &unk_187FBF450, 6uLL);
  memset_pattern16((a1 + 2188), &unk_187FBF450, 6uLL);
  memset_pattern16((a1 + 2194), &unk_187FBF450, 6uLL);
  memset_pattern16((a1 + 2200), &unk_187FBF450, 6uLL);
  memset_pattern16((a1 + 2206), &unk_187FBF450, 6uLL);
  memset_pattern16((a1 + 2212), &unk_187FBF450, 6uLL);
  memset_pattern16((a1 + 2218), &unk_187FBF450, 6uLL);
  memset_pattern16((a1 + 2224), &unk_187FBF450, 6uLL);
  memset_pattern16((a1 + 2230), &unk_187FBF450, 6uLL);
  memset_pattern16((a1 + 2240), &unk_187FBF450, 0x20uLL);
  *(a1 + 2236) = -2147450880;
  *(a1 + 2272) = 0x8000800080008000;
  memset_pattern16((a1 + 2416), &unk_187FBF450, 6uLL);
  gcl::polyline::ACContext::init((a1 + 2424), 3);
  gcl::polyline::ACContext::init((a1 + 2544), 3);
  if (*(a1 + 3808) == 255)
  {
    return 3;
  }

  v81 = __dst - 4;
  if (__dst < 4)
  {
    v82 = 0;
    v81 = 0;
    v83 = 0;
LABEL_132:
    v84 = 0;
    goto LABEL_133;
  }

  v84 = (v685 + 1);
  v83 = *v685;
  if (v685 == -4)
  {
    v82 = MEMORY[0xFFFFFFFFFFFFFFFC];
    goto LABEL_132;
  }

  v82 = &v84[v83];
LABEL_133:
  if (!v82)
  {
    goto LABEL_16;
  }

  v85 = v81 - v83;
  if (v85 < 0)
  {
    goto LABEL_16;
  }

  v661 = v82;
  v662 = v85;
  *(a1 + 2704) = v83;
  *(a1 + 2712) = v84;
  *&v86 = 0xFFFF000000000000;
  *(&v86 + 1) = 0xFFFF000000000000;
  *(a1 + 2728) = v86;
  *(a1 + 2744) = 16;
  if (!v83)
  {
    v87 = -16777216;
    goto LABEL_141;
  }

  v87 = *v84 << 24;
  *(a1 + 2736) = v87;
  if (v83 == 1)
  {
LABEL_141:
    v88 = v87 | 0xFF0000;
    goto LABEL_142;
  }

  v88 = v87 | (v84[1] << 16);
  *(a1 + 2736) = v88;
  if (v83 <= 2)
  {
LABEL_142:
    v89 = v88 | 0xFF00;
    goto LABEL_143;
  }

  v89 = v88 | (v84[2] << 8);
  *(a1 + 2736) = v89;
  if (v83 == 3)
  {
LABEL_143:
    v90 = 255;
    goto LABEL_144;
  }

  v90 = v84[3];
LABEL_144:
  *(a1 + 2736) = v90 | v89;
  *(a1 + 2720) = 3;
  __dsta = (a1 + 2752);
  memcpy((a1 + 2752), &gcl::ArithmeticDecoder::probUpdateLutInterleaved, 0x400uLL);
  v674 = a6;
  if (*(a1 + 3800))
  {
    v674 = *(a1 + 128);
  }

  v697 = *(a1 + 104);
  if (*(a1 + 3816) == 1)
  {
    v95 = *(a1 + 3792);
    v701 = 0;
    *__b = 0;
    v96 = *(a1 + 3788);
    if (v96 < 1)
    {
      goto LABEL_503;
    }

    v97 = 0;
    v663 = v95 + 1;
    v680 = a1 + 256;
    v690 = a1 + 1792;
    v664 = a1 + 264;
    LODWORD(v670) = -1;
    while (1)
    {
      if (v97 != *__b)
      {
        goto LABEL_232;
      }

      ++*__b;
      if (*(a1 + 3820))
      {
        v153 = -1;
      }

      else
      {
        v153 = v670;
      }

      v154 = 12 * v97;
      *(*(a1 + 176) + 12 * v97) = v153;
      v660 = v97;
      v91 = gcl::tmesh::DecoderImpl::decompressGeometry(a1, v97, v697, v91, v92, v93, v94);
      v155 = (*(a1 + 224) + v154);
      if (*v155 >= 63)
      {
        v156 = 63;
      }

      else
      {
        v156 = *v155;
      }

      v157 = *(a1 + 252);
      if (v156 > v157)
      {
        v157 = v156;
      }

      *(a1 + 252) = v157;
      v158 = v680 + 24 * v156;
      v160 = *v158;
      v159 = *(v158 + 8);
      v161 = v159 - *v158;
      v155[1] = v156;
      v155[2] = v161 >> 3;
      v162 = *(v158 + 16);
      if (v159 >= v162)
      {
        v164 = (v161 >> 3) + 1;
        if (v164 >> 61)
        {
          goto LABEL_966;
        }

        v165 = v162 - v160;
        if (v165 >> 2 > v164)
        {
          v164 = v165 >> 2;
        }

        v123 = v165 >= 0x7FFFFFFFFFFFFFF8;
        v166 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v123)
        {
          v166 = v164;
        }

        if (v166)
        {
          if (!(v166 >> 61))
          {
            operator new();
          }

LABEL_967:
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v167 = (8 * (v161 >> 3));
        *v167 = v155;
        v163 = (v167 + 1);
        memcpy(0, v160, v161);
        *v158 = 0;
        *(v158 + 8) = v163;
        *(v158 + 16) = 0;
        if (v160)
        {
          operator delete(v160);
          v160 = *v158;
        }

        else
        {
          v160 = 0;
        }
      }

      else
      {
        *v159 = v155;
        v163 = (v159 + 1);
      }

      *(v158 + 8) = v163;
      ++*(a1 + 248);
      v168 = (v163 - v160) >> 3;
      if (*(v690 + 4 * v156) > v168)
      {
        LODWORD(v168) = *(v690 + 4 * v156);
      }

      *(v690 + 4 * v156) = v168;
      v169 = *(a1 + 248);
      if (v169)
      {
        break;
      }

LABEL_231:
      v96 = *(a1 + 3788);
      v97 = v660;
LABEL_232:
      if (++v97 >= v96)
      {
        goto LABEL_503;
      }
    }

    while (1)
    {
      v170 = *(a1 + 252);
      if ((v170 & 0x80000000) != 0)
      {
        v173 = 0;
      }

      else
      {
        v171 = v680 + 24 * v170;
        v172 = *(v171 + 8);
        v173 = *(v172 - 8);
        *(v171 + 8) = v172 - 8;
        *(v173 + 8) = -1;
        *(a1 + 248) = --v169;
        if (v169)
        {
          v174 = (v664 + 24 * v170);
          do
          {
            if (*(v174 - 1) != *v174)
            {
              break;
            }

            *(a1 + 252) = v170 - 1;
            v174 -= 3;
            v620 = v170-- <= 0;
          }

          while (!v620);
        }

        else
        {
          *(a1 + 252) = -1;
        }
      }

      v670 = 0xAAAAAAAAAAAAAAABLL * ((v173 - *(a1 + 224)) >> 2);
      v175 = *(*(a1 + 152) + 16 * v670);
      v176 = *(*(a1 + 152) + 16 * v670 + 4);
      v177 = v175 != -1;
      v178 = v176 == v175 && v175 != -1;
      v179 = (v177 | (2 * (v176 != -1))) + v178;
      v180 = *(v672 + 2 * v179);
      v181 = *(a1 + 2732);
      v182 = *(a1 + 2736);
      if (v181 >= 0x40000001)
      {
        v185 = *(a1 + 2732);
      }

      else
      {
        v183 = *(a1 + 2744);
        do
        {
          v182 *= 2;
          *(a1 + 2744) = --v183;
          if (!v183)
          {
            v186 = *(a1 + 2720);
            *(a1 + 2720) = v186 + 1;
            v187 = *(a1 + 2704);
            if (v186 + 1 >= v187)
            {
              v188 = 65280;
            }

            else
            {
              v188 = *(*(a1 + 2712) + v186 + 1) << 8;
            }

            v189 = v186 + 2;
            *(a1 + 2720) = v189;
            if (v189 < v187)
            {
              v184 = *(*(a1 + 2712) + v189);
            }

            else
            {
              v184 = 255;
            }

            v182 |= v188 | v184;
            v183 = 16;
            *(a1 + 2744) = 16;
          }

          v185 = 2 * v181;
          v123 = v181 >= 0x20000001;
          v181 *= 2;
        }

        while (!v123);
      }

      v190 = (HIWORD(v185) * v180) & 0xFFFF0000;
      v191 = v182 < v190 ? 0 : (HIWORD(v185) * v180) & 0xFFFF0000;
      *(a1 + 2736) = v182 - v191;
      v192 = v182 >= v190;
      v193 = v182 < v190 ? (v180 >> 7) & 0x1FE : ((v180 >> 7) & 0x1FE) + 1;
      v194 = v185 - v190;
      *(v672 + 2 * v179) = __dsta[v193] + v180;
      v195 = v192 ? v194 : v190;
      *(a1 + 2732) = v195;
      if (v192)
      {
        break;
      }

LABEL_259:
      if (!v169)
      {
        goto LABEL_231;
      }
    }

    v665 = (v697 + 12 * v670);
    v196 = a1 + 256;
    while (2)
    {
      v700 = 0;
      v204 = gcl::tmesh::DecoderImpl::decompressTFanConnectivity(a1, v670, v179, v674, &v700, __b, &v701);
      v205 = v204;
      if (v204 < 0 || v204 > v663)
      {
        goto LABEL_502;
      }

      if (v700 != 3 && v700 != 5)
      {
        if (v204)
        {
          v209 = 0;
          do
          {
            if (*(*(a1 + 32) + v209))
            {
              v91 = gcl::tmesh::DecoderImpl::decompressGeometry(a1, *(*(a1 + 8) + 4 * v209), v697, v91, v92, v93, v94);
            }

            ++v209;
          }

          while (v205 != v209);
          goto LABEL_325;
        }

LABEL_487:
        if (*(a1 + 3872))
        {
          goto LABEL_503;
        }

        v310 = *(*(a1 + 152) + 16 * v670);
        v311 = *(*(a1 + 152) + 16 * v670 + 4);
        v312 = v311 != -1;
        v313 = v310 != -1;
        v314 = v311 == v310 && v310 != -1;
        v315 = *(a1 + 2732);
        v316 = *(a1 + 2736);
        if (v315 >= 0x40000001)
        {
          v197 = *(a1 + 2732);
        }

        else
        {
          v317 = *(a1 + 2744);
          do
          {
            v316 *= 2;
            *(a1 + 2744) = --v317;
            if (!v317)
            {
              v319 = *(a1 + 2720);
              *(a1 + 2720) = v319 + 1;
              v320 = *(a1 + 2704);
              if (v319 + 1 >= v320)
              {
                v321 = 65280;
              }

              else
              {
                v321 = *(*(a1 + 2712) + v319 + 1) << 8;
              }

              v322 = v319 + 2;
              *(a1 + 2720) = v322;
              if (v322 < v320)
              {
                v318 = *(*(a1 + 2712) + v322);
              }

              else
              {
                v318 = 255;
              }

              v316 |= v321 | v318;
              v317 = 16;
              *(a1 + 2744) = 16;
            }

            v197 = 2 * v315;
            v123 = v315 >= 0x20000001;
            v315 *= 2;
          }

          while (!v123);
        }

        v179 = (v313 | (2 * v312)) + v314;
        v198 = *(a1 + 2058);
        v199 = (HIWORD(v197) * v198) & 0xFFFF0000;
        if (v316 < v199)
        {
          v200 = 0;
        }

        else
        {
          v200 = (HIWORD(v197) * v198) & 0xFFFF0000;
        }

        *(a1 + 2736) = v316 - v200;
        v201 = v316 >= v199;
        if (v316 < v199)
        {
          v202 = (v198 >> 7) & 0x1FE;
        }

        else
        {
          v202 = ((v198 >> 7) & 0x1FE) + 1;
        }

        *(a1 + 2058) = __dsta[v202] + v198;
        if (v201)
        {
          v203 = v197 - v199;
        }

        else
        {
          v203 = (HIWORD(v197) * v198) & 0xFFFF0000;
        }

        *(a1 + 2732) = v203;
        if (!v201)
        {
          v169 = *(a1 + 248);
          goto LABEL_259;
        }

        continue;
      }

      break;
    }

    if (!v204)
    {
      goto LABEL_487;
    }

    v207 = v204 - 1;
    do
    {
      if (*(*(a1 + 32) + v207))
      {
        v91 = gcl::tmesh::DecoderImpl::decompressGeometry(a1, *(*(a1 + 8) + 4 * v207), v697, v91, v92, v93, v94);
      }

      v208 = v207-- + 1;
    }

    while (v208 > 1);
LABEL_325:
    if (v205 > 1)
    {
      v210 = *(a1 + 224);
      if (*(a1 + 3818) == 1)
      {
        v211 = v205 - 1;
        v212 = (*v671 + 4);
        v196 = a1 + 256;
        while (1)
        {
          v214 = *(v212 - 1);
          v213 = *v212;
          v215 = v697 + 12 * v214;
          v216 = v697 + 12 * *v212;
          v217 = *v216;
          v218.i64[0] = *v215;
          v219 = *v216 - *v215;
          v220 = *(v216 + 4);
          v221 = *(v215 + 8);
          v222 = v665[1].i32[0];
          v223 = v222 - v221;
          if (v219 >= 0)
          {
            v224 = v219;
          }

          else
          {
            v224 = -v219;
          }

          *v225.i8 = *v665;
          v225.u64[1] = v220;
          v218.i64[1] = __PAIR64__(v221, v218.u32[1]);
          v93 = vsubq_s32(v225, v218);
          v226 = vabdq_s32(v225, v218);
          v225.i64[0] = 0x100000001000;
          v225.i64[1] = 0x100000001000;
          v94 = vcgtq_u32(v225, v226);
          *v94.i8 = vmovn_s32(v94);
          v227 = (v224 < 0x1000) & v94.i8[4] & v94.i8[6];
          if (v223 >= 0)
          {
            v228 = v222 - v221;
          }

          else
          {
            v228 = v221 - v222;
          }

          if (v227 == 1 && (v94.i8[0] & 1) != 0 && (v94.i8[2] & 1) != 0 && v228 <= 0xFFF)
          {
            v229 = v93.i32[2];
            v230 = v93.i32[3];
            v231 = v93.i32[0] * v219 + v93.i32[1] * v93.i32[2] + v223 * v93.i32[3];
            if (!v231)
            {
              goto LABEL_380;
            }

            v232 = v223 * v93.i32[2] - v93.i32[1] * v93.i32[3];
            if (v232 < 0)
            {
              v232 = v93.i32[1] * v93.i32[3] - v223 * v93.i32[2];
            }

            v233 = v93.i32[0] * v93.i32[3] - v223 * v219;
            if (v233 < 0)
            {
              v233 = -v233;
            }

            v234 = v93.i32[1] * v219 - v93.i32[0] * v93.i32[2];
            if (v234 < 0)
            {
              v234 = v93.i32[0] * v93.i32[2] - v93.i32[1] * v219;
            }

            v235 = v232 + v233;
            if (v233 < v234)
            {
              v236 = v234;
            }

            else
            {
              v235 = v232 + v234;
              v236 = v233;
            }

            v237 = v232 >= v233 && v232 >= v234;
            if (v237)
            {
              v238 = v233 + v234;
            }

            else
            {
              v238 = v235;
            }

            if (v237)
            {
              v239 = v232;
            }

            else
            {
              v239 = v236;
            }

            v240 = v239 + (v238 >> 2);
            if (v231 < 0)
            {
              LODWORD(v241) = -16 * v231 / (v240 - v231) + 16;
            }

            else
            {
              LODWORD(v241) = (16 * v240) / (v240 + v231);
            }
          }

          else
          {
            v229 = v93.i32[2];
            v230 = v93.i32[3];
            v242 = v93.i32[1] * v93.i32[2] + v93.i32[0] * v219 + v223 * v93.i32[3];
            if (!v242)
            {
LABEL_380:
              LODWORD(v241) = 16;
              goto LABEL_383;
            }

            v243 = v223 * v93.i32[2] - v93.i32[1] * v93.i32[3];
            if (v243 < 0)
            {
              v243 = v93.i32[1] * v93.i32[3] - v223 * v93.i32[2];
            }

            v244 = v93.i32[0] * v93.i32[3] - v223 * v219;
            if (v244 < 0)
            {
              v244 = -v244;
            }

            v245 = v93.i32[1] * v219 - v93.i32[0] * v93.i32[2];
            if (v245 < 0)
            {
              v245 = v93.i32[0] * v93.i32[2] - v93.i32[1] * v219;
            }

            v246 = v243 + v244;
            if (v244 < v245)
            {
              v247 = v245;
            }

            else
            {
              v246 = v243 + v245;
              v247 = v244;
            }

            v248 = v243 >= v244 && v243 >= v245;
            if (v248)
            {
              v249 = v244 + v245;
            }

            else
            {
              v249 = v246;
            }

            if (v248)
            {
              v250 = v243;
            }

            else
            {
              v250 = v247;
            }

            v241 = v250 + (v249 >> 2);
            if (v242 < 0)
            {
              LODWORD(v241) = -16 * v242 / (v241 - v242) + 16;
            }

            else
            {
              v241 = 16 * v241 / (v241 + v242);
            }
          }

LABEL_383:
          v251 = *v665 - v217;
          v92.i32[0] = vsub_s32(vdup_lane_s32(*v665, 1), v220).u32[0];
          v253 = v222 - v220.i32[1];
          v252 = v222 - v220.i32[1] < 0;
          v254 = -v219;
          v255 = -v229;
          v256 = -v230;
          v92.i32[1] = v251;
          *v91.i8 = vcgt_u32(0x100000001000, vabs_s32(*v92.i8));
          v257 = v227 & v91.i32[1];
          if (v252)
          {
            v258 = -v253;
          }

          else
          {
            v258 = v253;
          }

          if (v257 == 1 && (v91.i8[0] & 1) != 0 && v258 <= 0xFFF)
          {
            v259 = v251 * v254 + v92.i32[0] * v255 + v253 * v256;
            if (v259)
            {
              v260 = v92.i32[0] * v230 + v253 * v255;
              if (v260 < 0)
              {
                v260 = -v260;
              }

              v261 = v251 * v256 + v253 * v219;
              if (v261 < 0)
              {
                v261 = -v261;
              }

              v262 = v251 * v229 + v92.i32[0] * v254;
              if (v262 < 0)
              {
                v262 = -v262;
              }

              v263 = v260 + v261;
              if (v261 < v262)
              {
                v264 = v262;
              }

              else
              {
                v263 = v260 + v262;
                v264 = v261;
              }

              v265 = v260 >= v261 && v260 >= v262;
              if (v265)
              {
                v266 = v261 + v262;
              }

              else
              {
                v266 = v263;
              }

              if (v265)
              {
                v267 = v260;
              }

              else
              {
                v267 = v264;
              }

              v268 = v267 + (v266 >> 2);
              if (v259 < 0)
              {
                LODWORD(v269) = -16 * v259 / (v268 - v259) + 16;
              }

              else
              {
                LODWORD(v269) = (16 * v268) / (v268 + v259);
              }

              goto LABEL_434;
            }
          }

          else
          {
            v269 = v92.i32[0] * v255 + v251 * v254 + v253 * v256;
            if (v269)
            {
              v270 = v253 * v255 - v92.i32[0] * v256;
              if (v270 < 0)
              {
                v270 = v92.i32[0] * v256 - v253 * v255;
              }

              v271 = v251 * v256 - v253 * v254;
              if (v271 < 0)
              {
                v271 = v253 * v254 - v251 * v256;
              }

              v272 = v92.i32[0] * v254 - v251 * v255;
              if (v272 < 0)
              {
                v272 = -v272;
              }

              v273 = v270 + v271;
              if (v271 < v272)
              {
                v274 = v272;
              }

              else
              {
                v273 = v270 + v272;
                v274 = v271;
              }

              v275 = v270 >= v271 && v270 >= v272;
              if (v275)
              {
                v276 = v271 + v272;
              }

              else
              {
                v276 = v273;
              }

              if (v275)
              {
                v277 = v270;
              }

              else
              {
                v277 = v274;
              }

              v278 = v277 + (v276 >> 2);
              if (v269 < 0)
              {
                LODWORD(v269) = -16 * v269 / (v278 - v269) + 16;
              }

              else
              {
                v269 = (16 * v278) / (v278 + v269);
              }

              goto LABEL_434;
            }
          }

          LODWORD(v269) = 16;
LABEL_434:
          v279 = 12 * v214;
          *(v210 + v279) += v241;
          v280 = 12 * v213;
          v281 = *(v210 + v280) + v269;
          *(v210 + v280) = v281;
          if ((*(v210 + v279) & 0x80000000) != 0 || v281 < 0)
          {
            goto LABEL_502;
          }

          if (*(a1 + 3872))
          {
            goto LABEL_503;
          }

          ++v212;
          if (!--v211)
          {
            goto LABEL_441;
          }
        }
      }

      v282 = v205 - 1;
      v283 = (*v671 + 4);
      v196 = a1 + 256;
      do
      {
        v284 = *v283;
        *(v210 + 12 * *(v283 - 1)) += 8;
        *(v210 + 12 * v284) += 8;
        ++v283;
        --v282;
      }

      while (v282);
    }

LABEL_441:
    if (v205 < 1)
    {
      goto LABEL_487;
    }

    v285 = 0;
    v286 = v205;
    __n = v205;
    while (1)
    {
      v289 = (*(a1 + 224) + 12 * *(*(a1 + 8) + 4 * v285));
      if (*(*(a1 + 32) + v285))
      {
        if (*v289 >= 63)
        {
          v290 = 63;
        }

        else
        {
          v290 = *v289;
        }

        LODWORD(v291) = *(a1 + 252);
        if (v290 > v291)
        {
          LODWORD(v291) = v290;
        }
      }

      else
      {
        v292 = v289[2];
        if ((v292 & 0x80000000) != 0)
        {
          goto LABEL_447;
        }

        v293 = v289[1];
        v295 = *(v196 + 24 * v293);
        v294 = *(v196 + 24 * v293 + 8);
        v296 = ((v294 - v295) >> 3) - 1;
        if (v292 != v296)
        {
          v297 = *(v295 + 8 * v292);
          *(v295 + 8 * v292) = *(v295 + 8 * v296);
          *(v295 + 8 * v296) = v297;
          *(*(v295 + 8 * v292) + 8) = v292;
          *(v297 + 8) = v296;
        }

        v298 = *(v294 - 8);
        *(v196 + 24 * v293 + 8) = v294 - 8;
        *(v298 + 8) = -1;
        v299 = *(a1 + 248) - 1;
        *(a1 + 248) = v299;
        if (v299)
        {
          v291 = *(a1 + 252);
          if ((v291 & 0x80000000) == 0)
          {
            v300 = (v664 + 24 * v291);
            while (*(v300 - 1) == *v300)
            {
              *(a1 + 252) = v291 - 1;
              v300 -= 3;
              v620 = v291-- <= 0;
              if (v620)
              {
                LODWORD(v291) = -1;
                break;
              }
            }

            if (!v298)
            {
              goto LABEL_447;
            }
          }
        }

        else
        {
          LODWORD(v291) = -1;
          *(a1 + 252) = -1;
        }

        if (*v289 >= 63)
        {
          v290 = 63;
        }

        else
        {
          v290 = *v289;
        }

        if (v290 > v291)
        {
          LODWORD(v291) = v290;
        }
      }

      *(a1 + 252) = v291;
      v301 = v196 + 24 * v290;
      v303 = *v301;
      v302 = *(v301 + 8);
      v304 = v302 - *v301;
      v289[1] = v290;
      v289[2] = v304 >> 3;
      v305 = *(v301 + 16);
      if (v302 < v305)
      {
        *v302 = v289;
        v287 = (v302 + 1);
      }

      else
      {
        v306 = (v304 >> 3) + 1;
        if (v306 >> 61)
        {
          goto LABEL_966;
        }

        v307 = v305 - v303;
        if (v307 >> 2 > v306)
        {
          v306 = v307 >> 2;
        }

        if (v307 >= 0x7FFFFFFFFFFFFFF8)
        {
          v308 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v308 = v306;
        }

        v686 = v285;
        if (v308)
        {
          if (!(v308 >> 61))
          {
            operator new();
          }

          goto LABEL_967;
        }

        v309 = (8 * (v304 >> 3));
        *v309 = v289;
        v287 = (v309 + 1);
        memcpy(0, v303, v304);
        *v301 = 0;
        *(v301 + 8) = v287;
        *(v301 + 16) = 0;
        if (v303)
        {
          operator delete(v303);
          v303 = *v301;
        }

        else
        {
          v303 = 0;
        }

        v286 = __n;
        v196 = a1 + 256;
        v285 = v686;
      }

      *(v301 + 8) = v287;
      ++*(a1 + 248);
      v288 = (v287 - v303) >> 3;
      if (*(v690 + 4 * v290) > v288)
      {
        LODWORD(v288) = *(v690 + 4 * v290);
      }

      *(v690 + 4 * v290) = v288;
LABEL_447:
      if (++v285 == v286)
      {
        goto LABEL_487;
      }
    }
  }

  v701 = 0;
  if (*(a1 + 3788) < 1)
  {
    goto LABEL_503;
  }

  v98 = 0;
  v99 = 0;
  v691 = 0;
  LODWORD(v100) = -1;
  while (v99 != v98)
  {
    v101 = v98;
LABEL_229:
    ++v99;
    v98 = v101;
    if (v99 >= *(a1 + 3788))
    {
      goto LABEL_503;
    }
  }

  v101 = (v98 + 1);
  *__b = v98 + 1;
  if (*(a1 + 3820))
  {
    v102 = -1;
  }

  else
  {
    v102 = v100;
  }

  *(*(a1 + 176) + 12 * v99) = v102;
  v91 = gcl::tmesh::DecoderImpl::decompressGeometry(a1, v99, v697, v91, v92, v93, v94);
  if (v691 > v98)
  {
    goto LABEL_229;
  }

  v103 = v691;
  v104 = *(a1 + 152);
  v105 = *(a1 + 2732);
  v106 = *(a1 + 2736);
  while (1)
  {
    v100 = v103;
    v109 = (v104 + 16 * v103);
    v107 = *v109;
    v108 = v109[1];
    v110 = *v109 != -1;
    v111 = v108 == *v109 && v107 != -1;
    v112 = (v110 | (2 * (v108 != -1))) + v111;
    if (v105 >= 0x40000001)
    {
      v115 = v105;
    }

    else
    {
      v113 = *(a1 + 2744);
      do
      {
        v106 *= 2;
        *(a1 + 2744) = --v113;
        if (!v113)
        {
          v116 = *(a1 + 2720);
          *(a1 + 2720) = v116 + 1;
          v117 = *(a1 + 2704);
          if (v116 + 1 >= v117)
          {
            v118 = 65280;
          }

          else
          {
            v118 = *(*(a1 + 2712) + v116 + 1) << 8;
          }

          v119 = v116 + 2;
          *(a1 + 2720) = v119;
          if (v119 < v117)
          {
            v114 = *(*(a1 + 2712) + v119);
          }

          else
          {
            v114 = 255;
          }

          v106 |= v118 | v114;
          v113 = 16;
          *(a1 + 2744) = 16;
        }

        v115 = 2 * v105;
        v123 = v105 >= 0x20000001;
        v105 *= 2;
      }

      while (!v123);
    }

    v120 = *(v672 + 2 * v112);
    v105 = (HIWORD(v115) * v120) & 0xFFFF0000;
    v121 = v106 < v105 ? 0 : (HIWORD(v115) * v120) & 0xFFFF0000;
    v122 = v106 - v121;
    *(a1 + 2736) = v122;
    v123 = v106 >= v105;
    v124 = v106 < v105 ? (v120 >> 7) & 0x1FE : ((v120 >> 7) & 0x1FE) + 1;
    v125 = v115 - v105;
    *(v672 + 2 * v112) = __dsta[v124] + v120;
    v126 = v123 ? v125 : v105;
    *(a1 + 2732) = v126;
    if (v123)
    {
      break;
    }

    v106 = v122;
LABEL_226:
    v103 = v100 + 1;
    if (v100 + 1 >= v101)
    {
      v691 = v100 + 1;
      goto LABEL_229;
    }
  }

  while (1)
  {
    v700 = 0;
    v132 = gcl::tmesh::DecoderImpl::decompressTFanConnectivity(a1, v100, v112, v674, &v700, __b, &v701);
    if ((v132 & 0x80000000) != 0 || v132 > *(a1 + 3792) + 1)
    {
      break;
    }

    if (v700 == 3 || v700 == 5)
    {
      if (v132)
      {
        v134 = v132 - 1;
        do
        {
          if (*(*(a1 + 32) + v134))
          {
            v91 = gcl::tmesh::DecoderImpl::decompressGeometry(a1, *(*(a1 + 8) + 4 * v134), v697, v91, v92, v93, v94);
          }

          v135 = v134-- + 1;
        }

        while (v135 > 1);
      }
    }

    else if (v132)
    {
      v136 = 0;
      v137 = v132;
      do
      {
        if (*(*(a1 + 32) + v136))
        {
          v91 = gcl::tmesh::DecoderImpl::decompressGeometry(a1, *(*(a1 + 8) + 4 * v136), v697, v91, v92, v93, v94);
        }

        ++v136;
      }

      while (v137 != v136);
    }

    v104 = *(a1 + 152);
    v138 = (v104 + 16 * v100);
    v140 = *v138;
    v139 = v138[1];
    v141 = v139 != -1;
    v142 = v140 != -1;
    v143 = v139 == v140 && v140 != -1;
    v144 = *(a1 + 2058);
    v145 = *(a1 + 2732);
    v146 = *(a1 + 2736);
    if (v145 >= 0x40000001)
    {
      v127 = *(a1 + 2732);
    }

    else
    {
      v147 = *(a1 + 2744);
      do
      {
        v146 *= 2;
        *(a1 + 2744) = --v147;
        if (!v147)
        {
          v149 = *(a1 + 2720);
          *(a1 + 2720) = v149 + 1;
          v150 = *(a1 + 2704);
          if (v149 + 1 >= v150)
          {
            v151 = 65280;
          }

          else
          {
            v151 = *(*(a1 + 2712) + v149 + 1) << 8;
          }

          v152 = v149 + 2;
          *(a1 + 2720) = v152;
          if (v152 < v150)
          {
            v148 = *(*(a1 + 2712) + v152);
          }

          else
          {
            v148 = 255;
          }

          v146 |= v151 | v148;
          v147 = 16;
          *(a1 + 2744) = 16;
        }

        v127 = 2 * v145;
        v123 = v145 >= 0x20000001;
        v145 *= 2;
      }

      while (!v123);
    }

    v112 = (v142 | (2 * v141)) + v143;
    v105 = (HIWORD(v127) * v144) & 0xFFFF0000;
    if (v146 < v105)
    {
      v128 = 0;
    }

    else
    {
      v128 = (HIWORD(v127) * v144) & 0xFFFF0000;
    }

    v106 = v146 - v128;
    *(a1 + 2736) = v106;
    v129 = v146 >= v105;
    if (v146 < v105)
    {
      v130 = (v144 >> 7) & 0x1FE;
    }

    else
    {
      v130 = ((v144 >> 7) & 0x1FE) + 1;
    }

    *(a1 + 2058) = __dsta[v130] + v144;
    if (v129)
    {
      v131 = v127 - v105;
    }

    else
    {
      v131 = (HIWORD(v127) * v144) & 0xFFFF0000;
    }

    *(a1 + 2732) = v131;
    if (!v129)
    {
      v101 = *__b;
      goto LABEL_226;
    }
  }

LABEL_502:
  *(a1 + 3872) = 3;
LABEL_503:
  if (*(a1 + 3800) != 1)
  {
    begin = *(a1 + 56);
    v327 = *(a1 + 64) - begin;
    if ((v327 >> 2) > 1)
    {
      if (v327 != 8)
      {
        *(a1 + 64) = begin + 2;
      }
    }

    else
    {
      std::vector<int>::__append(v668, 2 - (v327 >> 2));
      begin = v668->__begin_;
    }

    *begin = 0;
    begin[1] = *(a1 + 3792);
    goto LABEL_515;
  }

  if (!a7)
  {
LABEL_507:
    result = 5;
    goto LABEL_508;
  }

  v323 = v662 - 4;
  if (v662 < 4)
  {
    v324 = 0;
    v323 = 0;
    v325 = 0;
    goto LABEL_533;
  }

  v325 = *v661;
  if (v661 == -4)
  {
    v324 = MEMORY[0xFFFFFFFFFFFFFFFC];
LABEL_533:
    v338 = 0;
  }

  else
  {
    v338 = (v661 + 1);
    v324 = v661 + v325 + 4;
  }

  if (!v324 || v323 < v325)
  {
    goto LABEL_16;
  }

  *(a1 + 2704) = v325;
  *(a1 + 2712) = v338;
  *&v345 = 0xFFFF000000000000;
  *(&v345 + 1) = 0xFFFF000000000000;
  *(a1 + 2728) = v345;
  *(a1 + 2744) = 16;
  if (!v325)
  {
    v346 = -16777216;
    goto LABEL_542;
  }

  v346 = *v338 << 24;
  *(a1 + 2736) = v346;
  if (v325 == 1)
  {
LABEL_542:
    v347 = v346 | 0xFF0000;
    goto LABEL_543;
  }

  v347 = v346 | (v338[1] << 16);
  *(a1 + 2736) = v347;
  if (v325 <= 2)
  {
LABEL_543:
    v348 = v347 | 0xFF00;
    goto LABEL_544;
  }

  v348 = v347 | (v338[2] << 8);
  *(a1 + 2736) = v348;
  if (v325 != 3)
  {
    v349 = v338[3];
    goto LABEL_545;
  }

LABEL_544:
  v349 = 255;
LABEL_545:
  *(a1 + 2736) = v349 | v348;
  *(a1 + 2720) = 3;
  memcpy(__dsta, &gcl::ArithmeticDecoder::probUpdateLutInterleaved, 0x400uLL);
  if (*(a1 + 3808))
  {
    memset_pattern16(__b, &unk_187FBF450, 0x80uLL);
    LOWORD(v701) = 0x8000;
    LODWORD(v350) = *(a1 + 3792);
    if (v350 >= 1)
    {
      v351 = 0;
      v352 = 0;
      v698 = 0x8000;
      v673 = 6;
      v692 = __b[0];
      v353 = 0x8000;
      v354 = a7;
      do
      {
        v356 = *(a1 + 2732);
        v357 = *(a1 + 2736);
        if (v356 >= 0x40000001)
        {
          v360 = *(a1 + 2732);
        }

        else
        {
          v358 = *(a1 + 2744);
          do
          {
            v357 *= 2;
            *(a1 + 2744) = --v358;
            if (!v358)
            {
              v361 = *(a1 + 2720);
              *(a1 + 2720) = v361 + 1;
              v362 = *(a1 + 2704);
              if (v361 + 1 >= v362)
              {
                v363 = 65280;
              }

              else
              {
                v363 = *(*(a1 + 2712) + v361 + 1) << 8;
              }

              v364 = v361 + 2;
              *(a1 + 2720) = v364;
              if (v364 < v362)
              {
                v359 = *(*(a1 + 2712) + v364);
              }

              else
              {
                v359 = 255;
              }

              v357 |= v363 | v359;
              v358 = 16;
              *(a1 + 2744) = 16;
            }

            v360 = 2 * v356;
            v123 = v356 >= 0x20000001;
            v356 *= 2;
          }

          while (!v123);
        }

        v365 = (HIWORD(v360) * v353) & 0xFFFF0000;
        v366 = v360 - v365;
        if (v357 < v365)
        {
          v367 = 0;
        }

        else
        {
          v367 = (HIWORD(v360) * v353) & 0xFFFF0000;
        }

        v368 = v357 - v367;
        *(a1 + 2736) = v357 - v367;
        v369 = v357 >= v365;
        if (v357 < v365)
        {
          v370 = v365;
        }

        else
        {
          v370 = v366;
        }

        *(a1 + 2732) = v370;
        v371 = (v353 >> 7) & 0x1FE;
        if (v369)
        {
          ++v371;
        }

        v372 = __dsta[v371];
        if (v369)
        {
          v683 = v372;
          v687 = v352;
          if (v366 >= 0x40000001)
          {
            v375 = v366;
          }

          else
          {
            v373 = *(a1 + 2744);
            do
            {
              v368 *= 2;
              *(a1 + 2744) = --v373;
              if (!v373)
              {
                v376 = *(a1 + 2720);
                *(a1 + 2720) = v376 + 1;
                v377 = *(a1 + 2704);
                if (v376 + 1 >= v377)
                {
                  v378 = 65280;
                }

                else
                {
                  v378 = *(*(a1 + 2712) + v376 + 1) << 8;
                }

                v379 = v376 + 2;
                *(a1 + 2720) = v379;
                if (v379 < v377)
                {
                  v374 = *(*(a1 + 2712) + v379);
                }

                else
                {
                  v374 = 255;
                }

                v368 |= v378 | v374;
                v373 = 16;
                *(a1 + 2744) = 16;
              }

              v375 = 2 * v366;
              v123 = v366 >= 0x20000001;
              v366 *= 2;
            }

            while (!v123);
          }

          v380 = (HIWORD(v375) * v698) & 0xFFFF0000;
          v381 = (v698 >> 7) & 0x1FE;
          v382 = v375 - v380;
          if (v368 >= v380)
          {
            ++v381;
          }

          __na = __dsta[v381];
          if (v368 < v380)
          {
            v382 = v380;
          }

          v681 = v380;
          if (v368 < v380)
          {
            v383 = 0;
          }

          else
          {
            v383 = v380;
          }

          v384 = v368 - v383;
          *(a1 + 2732) = v382;
          *(a1 + 2736) = v384;
          if (v382 >= 0x40000001)
          {
            v387 = v382;
          }

          else
          {
            v385 = *(a1 + 2744);
            do
            {
              v384 *= 2;
              *(a1 + 2744) = --v385;
              if (!v385)
              {
                v388 = *(a1 + 2720);
                *(a1 + 2720) = v388 + 1;
                v389 = *(a1 + 2704);
                if (v388 + 1 >= v389)
                {
                  v390 = 65280;
                }

                else
                {
                  v390 = *(*(a1 + 2712) + v388 + 1) << 8;
                }

                v391 = v388 + 2;
                *(a1 + 2720) = v391;
                if (v391 < v389)
                {
                  v386 = *(*(a1 + 2712) + v391);
                }

                else
                {
                  v386 = 255;
                }

                v384 |= v390 | v386;
                v385 = 16;
                *(a1 + 2744) = 16;
              }

              v387 = 2 * v382;
              v123 = v382 >= 0x20000001;
              v382 *= 2;
            }

            while (!v123);
          }

          v392 = (HIWORD(v387) * v692) & 0xFFFF0000;
          v393 = (v692 >> 7) & 0x1FE;
          v394 = v387 - v392;
          v395 = v384 >= v392;
          if (v384 >= v392)
          {
            ++v393;
          }

          v675 = __dsta[v393];
          if (v384 < v392)
          {
            v396 = v392;
          }

          else
          {
            v396 = v394;
          }

          if (v384 < v392)
          {
            v392 = 0;
          }

          v397 = v384 - v392;
          *(a1 + 2732) = v396;
          *(a1 + 2736) = v397;
          v398 = (v395 & 0x7FFFFFF) + 1;
          v399 = __b[v398];
          if (v396 >= 0x40000001)
          {
            v402 = v396;
          }

          else
          {
            v400 = *(a1 + 2744);
            do
            {
              v397 *= 2;
              *(a1 + 2744) = --v400;
              if (!v400)
              {
                v403 = *(a1 + 2720);
                *(a1 + 2720) = v403 + 1;
                v404 = *(a1 + 2704);
                if (v403 + 1 >= v404)
                {
                  v405 = 65280;
                }

                else
                {
                  v405 = *(*(a1 + 2712) + v403 + 1) << 8;
                }

                v406 = v403 + 2;
                *(a1 + 2720) = v406;
                if (v406 < v404)
                {
                  v401 = *(*(a1 + 2712) + v406);
                }

                else
                {
                  v401 = 255;
                }

                v397 |= v405 | v401;
                v400 = 16;
                *(a1 + 2744) = 16;
              }

              v402 = 2 * v396;
              v123 = v396 >= 0x20000001;
              v396 *= 2;
            }

            while (!v123);
          }

          v407 = 32 * v395;
          v408 = (HIWORD(v402) * v399) & 0xFFFF0000;
          v409 = (v399 >> 7) & 0x1FE;
          v410 = v402 - v408;
          if (v397 >= v408)
          {
            ++v409;
          }

          __b[v398] = __dsta[v409] + v399;
          v411 = v397 >= v408;
          if (v397 < v408)
          {
            v412 = v408;
          }

          else
          {
            v412 = v410;
          }

          if (v397 < v408)
          {
            v408 = 0;
          }

          v413 = v397 - v408;
          *(a1 + 2732) = v412;
          *(a1 + 2736) = v413;
          v414 = v407 | (16 * v411);
          v415 = (v414 >> 4) + 3;
          v416 = __b[v415];
          if (v412 >= 0x40000001)
          {
            v419 = v412;
          }

          else
          {
            v417 = *(a1 + 2744);
            do
            {
              v413 *= 2;
              *(a1 + 2744) = --v417;
              if (!v417)
              {
                v420 = *(a1 + 2720);
                *(a1 + 2720) = v420 + 1;
                v421 = *(a1 + 2704);
                if (v420 + 1 >= v421)
                {
                  v422 = 65280;
                }

                else
                {
                  v422 = *(*(a1 + 2712) + v420 + 1) << 8;
                }

                v423 = v420 + 2;
                *(a1 + 2720) = v423;
                if (v423 < v421)
                {
                  v418 = *(*(a1 + 2712) + v423);
                }

                else
                {
                  v418 = 255;
                }

                v413 |= v422 | v418;
                v417 = 16;
                *(a1 + 2744) = 16;
              }

              v419 = 2 * v412;
              v123 = v412 >= 0x20000001;
              v412 *= 2;
            }

            while (!v123);
          }

          v424 = (HIWORD(v419) * v416) & 0xFFFF0000;
          v425 = (v416 >> 7) & 0x1FE;
          v426 = v419 - v424;
          if (v413 >= v424)
          {
            ++v425;
          }

          __b[v415] = __dsta[v425] + v416;
          v427 = v413 >= v424;
          if (v413 < v424)
          {
            v428 = v424;
          }

          else
          {
            v428 = v426;
          }

          if (v413 < v424)
          {
            v429 = 0;
          }

          else
          {
            v429 = v424;
          }

          v430 = v413 - v429;
          *(a1 + 2732) = v428;
          *(a1 + 2736) = v430;
          v431 = v414 | (8 * v427);
          v432 = (v431 >> 3) + 7;
          v433 = __b[v432];
          if (v428 >= 0x40000001)
          {
            v436 = v428;
          }

          else
          {
            v434 = *(a1 + 2744);
            do
            {
              v430 *= 2;
              *(a1 + 2744) = --v434;
              if (!v434)
              {
                v437 = *(a1 + 2720);
                *(a1 + 2720) = v437 + 1;
                v438 = *(a1 + 2704);
                if (v437 + 1 >= v438)
                {
                  v439 = 65280;
                }

                else
                {
                  v439 = *(*(a1 + 2712) + v437 + 1) << 8;
                }

                v440 = v437 + 2;
                *(a1 + 2720) = v440;
                if (v440 < v438)
                {
                  v435 = *(*(a1 + 2712) + v440);
                }

                else
                {
                  v435 = 255;
                }

                v430 |= v439 | v435;
                v434 = 16;
                *(a1 + 2744) = 16;
              }

              v436 = 2 * v428;
              v123 = v428 >= 0x20000001;
              v428 *= 2;
            }

            while (!v123);
          }

          v441 = (HIWORD(v436) * v433) & 0xFFFF0000;
          v442 = (v433 >> 7) & 0x1FE;
          v443 = v436 - v441;
          if (v430 >= v441)
          {
            ++v442;
          }

          __b[v432] = __dsta[v442] + v433;
          v444 = v430 >= v441;
          if (v430 < v441)
          {
            v445 = v441;
          }

          else
          {
            v445 = v443;
          }

          if (v430 < v441)
          {
            v446 = 0;
          }

          else
          {
            v446 = v441;
          }

          v447 = v430 - v446;
          *(a1 + 2732) = v445;
          *(a1 + 2736) = v447;
          v448 = v431 | (4 * v444);
          v449 = (v448 >> 2) + 15;
          v450 = __b[v449];
          if (v445 >= 0x40000001)
          {
            v453 = v445;
          }

          else
          {
            v451 = *(a1 + 2744);
            do
            {
              v447 *= 2;
              *(a1 + 2744) = --v451;
              if (!v451)
              {
                v454 = *(a1 + 2720);
                *(a1 + 2720) = v454 + 1;
                v455 = *(a1 + 2704);
                if (v454 + 1 >= v455)
                {
                  v456 = 65280;
                }

                else
                {
                  v456 = *(*(a1 + 2712) + v454 + 1) << 8;
                }

                v457 = v454 + 2;
                *(a1 + 2720) = v457;
                if (v457 < v455)
                {
                  v452 = *(*(a1 + 2712) + v457);
                }

                else
                {
                  v452 = 255;
                }

                v447 |= v456 | v452;
                v451 = 16;
                *(a1 + 2744) = 16;
              }

              v453 = 2 * v445;
              v123 = v445 >= 0x20000001;
              v445 *= 2;
            }

            while (!v123);
          }

          v458 = (HIWORD(v453) * v450) & 0xFFFF0000;
          v459 = (v450 >> 7) & 0x1FE;
          v460 = v453 - v458;
          if (v447 >= v458)
          {
            ++v459;
          }

          __b[v449] = __dsta[v459] + v450;
          v461 = v447 >= v458;
          if (v447 < v458)
          {
            v462 = v458;
          }

          else
          {
            v462 = v460;
          }

          if (v447 < v458)
          {
            v463 = 0;
          }

          else
          {
            v463 = v458;
          }

          v464 = v447 - v463;
          *(a1 + 2732) = v462;
          *(a1 + 2736) = v464;
          v465 = v448 | (2 * v461);
          v466 = (v465 >> 1) + 31;
          v467 = __b[v466];
          if (v462 >= 0x40000001)
          {
            v470 = v462;
          }

          else
          {
            v468 = *(a1 + 2744);
            do
            {
              v464 *= 2;
              *(a1 + 2744) = --v468;
              if (!v468)
              {
                v471 = *(a1 + 2720);
                *(a1 + 2720) = v471 + 1;
                v472 = *(a1 + 2704);
                if (v471 + 1 >= v472)
                {
                  v473 = 65280;
                }

                else
                {
                  v473 = *(*(a1 + 2712) + v471 + 1) << 8;
                }

                v474 = v471 + 2;
                *(a1 + 2720) = v474;
                if (v474 < v472)
                {
                  v469 = *(*(a1 + 2712) + v474);
                }

                else
                {
                  v469 = 255;
                }

                v464 |= v473 | v469;
                v468 = 16;
                *(a1 + 2744) = 16;
              }

              v470 = 2 * v462;
              v123 = v462 >= 0x20000001;
              v462 *= 2;
            }

            while (!v123);
          }

          v475 = (HIWORD(v470) * v467) & 0xFFFF0000;
          v476 = (v467 >> 7) & 0x1FE;
          v477 = v470 - v475;
          if (v464 >= v475)
          {
            ++v476;
          }

          __b[v466] = __dsta[v476] + v467;
          if (v464 < v475)
          {
            v478 = v475;
          }

          else
          {
            v478 = v477;
          }

          if (v464 < v475)
          {
            v479 = 0;
          }

          else
          {
            v479 = v475;
          }

          if (v464 >= v475)
          {
            ++v465;
          }

          *(a1 + 2732) = v478;
          *(a1 + 2736) = v464 - v479;
          if (v465 == 63)
          {
            v480 = gcl::ArithmeticDecoder::decodeExpGolomb((a1 + 2704), v673, &v701);
            v465 = v480 + 63;
            v481 = -63 - v480;
            if (v480 + 63 >= 0)
            {
              v481 = v480 + 63;
            }

            v482 = v481 >> v673;
            if (!v673 || v482)
            {
              v620 = v482 > 1;
              v483 = v673;
              if (v620)
              {
                v483 = v673 + 1;
              }
            }

            else
            {
              v483 = v673 - 1;
            }

            v673 = v483;
          }

          v698 += __na;
          v692 += v675;
          if (v368 >= v681)
          {
            v355 = v465 + 1;
          }

          else
          {
            v355 = ~v465;
          }

          v354 = a7;
          v352 = v687;
          v372 = v683;
        }

        else
        {
          v355 = 0;
        }

        v353 += v372;
        v352 += v355;
        v354[v351++] = v352;
      }

      while (v351 < *(a1 + 3792));
      LODWORD(v350) = *(a1 + 3792);
    }
  }

  else
  {
    memset_pattern16(__b, &unk_187FBF450, 0x80uLL);
    LOWORD(v701) = 0x8000;
    LODWORD(v350) = *(a1 + 3792);
    if (v350 >= 1)
    {
      v484 = 0;
      v485 = 0;
      v699 = 0x8000;
      v693 = __b[0];
      v486 = 0x8000;
      v487 = a7;
      do
      {
        v490 = *(a1 + 2732);
        v491 = *(a1 + 2736);
        if (v490 >= 0x40000001)
        {
          v494 = *(a1 + 2732);
        }

        else
        {
          v492 = *(a1 + 2744);
          do
          {
            v491 *= 2;
            *(a1 + 2744) = --v492;
            if (!v492)
            {
              v495 = *(a1 + 2720);
              *(a1 + 2720) = v495 + 1;
              v496 = *(a1 + 2704);
              if (v495 + 1 >= v496)
              {
                v497 = 65280;
              }

              else
              {
                v497 = *(*(a1 + 2712) + v495 + 1) << 8;
              }

              v498 = v495 + 2;
              *(a1 + 2720) = v498;
              if (v498 < v496)
              {
                v493 = *(*(a1 + 2712) + v498);
              }

              else
              {
                v493 = 255;
              }

              v491 |= v497 | v493;
              v492 = 16;
              *(a1 + 2744) = 16;
            }

            v494 = 2 * v490;
            v123 = v490 >= 0x20000001;
            v490 *= 2;
          }

          while (!v123);
        }

        v499 = (HIWORD(v494) * v486) & 0xFFFF0000;
        v500 = v494 - v499;
        if (v491 < v499)
        {
          v501 = 0;
        }

        else
        {
          v501 = (HIWORD(v494) * v486) & 0xFFFF0000;
        }

        v502 = v491 - v501;
        *(a1 + 2736) = v491 - v501;
        v503 = v491 >= v499;
        if (v491 < v499)
        {
          v504 = v499;
        }

        else
        {
          v504 = v500;
        }

        *(a1 + 2732) = v504;
        v505 = (v486 >> 7) & 0x1FE;
        if (v503)
        {
          ++v505;
        }

        v489 = __dsta[v505];
        if (v503)
        {
          v688 = v489;
          if (v500 >= 0x40000001)
          {
            v508 = v500;
          }

          else
          {
            v506 = *(a1 + 2744);
            do
            {
              v502 *= 2;
              *(a1 + 2744) = --v506;
              if (!v506)
              {
                v509 = *(a1 + 2720);
                *(a1 + 2720) = v509 + 1;
                v510 = *(a1 + 2704);
                if (v509 + 1 >= v510)
                {
                  v511 = 65280;
                }

                else
                {
                  v511 = *(*(a1 + 2712) + v509 + 1) << 8;
                }

                v512 = v509 + 2;
                *(a1 + 2720) = v512;
                if (v512 < v510)
                {
                  v507 = *(*(a1 + 2712) + v512);
                }

                else
                {
                  v507 = 255;
                }

                v502 |= v511 | v507;
                v506 = 16;
                *(a1 + 2744) = 16;
              }

              v508 = 2 * v500;
              v123 = v500 >= 0x20000001;
              v500 *= 2;
            }

            while (!v123);
          }

          v513 = (HIWORD(v508) * v699) & 0xFFFF0000;
          v514 = (v699 >> 7) & 0x1FE;
          v515 = v508 - v513;
          if (v502 >= v513)
          {
            ++v514;
          }

          v682 = __dsta[v514];
          if (v502 < v513)
          {
            v516 = v513;
          }

          else
          {
            v516 = v515;
          }

          v684 = v513;
          if (v502 < v513)
          {
            v517 = 0;
          }

          else
          {
            v517 = v513;
          }

          v518 = v502 - v517;
          *(a1 + 2732) = v516;
          *(a1 + 2736) = v518;
          if (v516 >= 0x40000001)
          {
            v521 = v516;
          }

          else
          {
            v519 = *(a1 + 2744);
            do
            {
              v518 *= 2;
              *(a1 + 2744) = --v519;
              if (!v519)
              {
                v522 = *(a1 + 2720);
                *(a1 + 2720) = v522 + 1;
                v523 = *(a1 + 2704);
                if (v522 + 1 >= v523)
                {
                  v524 = 65280;
                }

                else
                {
                  v524 = *(*(a1 + 2712) + v522 + 1) << 8;
                }

                v525 = v522 + 2;
                *(a1 + 2720) = v525;
                if (v525 < v523)
                {
                  v520 = *(*(a1 + 2712) + v525);
                }

                else
                {
                  v520 = 255;
                }

                v518 |= v524 | v520;
                v519 = 16;
                *(a1 + 2744) = 16;
              }

              v521 = 2 * v516;
              v123 = v516 >= 0x20000001;
              v516 *= 2;
            }

            while (!v123);
          }

          v526 = (HIWORD(v521) * v693) & 0xFFFF0000;
          v527 = (v693 >> 7) & 0x1FE;
          v528 = v521 - v526;
          v529 = v518 >= v526;
          v530 = v518 >= v526;
          if (v518 >= v526)
          {
            ++v527;
          }

          __nb = __dsta[v527];
          if (v518 < v526)
          {
            v531 = v526;
          }

          else
          {
            v531 = v528;
          }

          if (v518 < v526)
          {
            v532 = 0;
          }

          else
          {
            v532 = v526;
          }

          v533 = 1;
          if (v529)
          {
            v533 = 2;
          }

          v534 = v518 - v532;
          *(a1 + 2732) = v531;
          *(a1 + 2736) = v534;
          v535 = __b[v533];
          if (v531 >= 0x40000001)
          {
            v538 = v531;
          }

          else
          {
            v536 = *(a1 + 2744);
            do
            {
              v534 *= 2;
              *(a1 + 2744) = --v536;
              if (!v536)
              {
                v539 = *(a1 + 2720);
                *(a1 + 2720) = v539 + 1;
                v540 = *(a1 + 2704);
                if (v539 + 1 >= v540)
                {
                  v541 = 65280;
                }

                else
                {
                  v541 = *(*(a1 + 2712) + v539 + 1) << 8;
                }

                v542 = v539 + 2;
                *(a1 + 2720) = v542;
                if (v542 < v540)
                {
                  v537 = *(*(a1 + 2712) + v542);
                }

                else
                {
                  v537 = 255;
                }

                v534 |= v541 | v537;
                v536 = 16;
                *(a1 + 2744) = 16;
              }

              v538 = 2 * v531;
              v123 = v531 >= 0x20000001;
              v531 *= 2;
            }

            while (!v123);
          }

          v543 = (HIWORD(v538) * v535) & 0xFFFF0000;
          v544 = (v535 >> 7) & 0x1FE;
          v545 = v538 - v543;
          v546 = v534 >= v543;
          if (v534 >= v543)
          {
            ++v544;
          }

          __b[v533] = __dsta[v544] + v535;
          if (v534 < v543)
          {
            v547 = v543;
          }

          else
          {
            v547 = v545;
          }

          if (v534 < v543)
          {
            v548 = 0;
          }

          else
          {
            v548 = v543;
          }

          v549 = v534 - v548;
          *(a1 + 2732) = v547;
          *(a1 + 2736) = v549;
          v550 = v530 | (2 * v546);
          v551 = __b[v550 + 3];
          if (v547 >= 0x40000001)
          {
            v554 = v547;
          }

          else
          {
            v552 = *(a1 + 2744);
            do
            {
              v549 *= 2;
              *(a1 + 2744) = --v552;
              if (!v552)
              {
                v555 = *(a1 + 2720);
                *(a1 + 2720) = v555 + 1;
                v556 = *(a1 + 2704);
                if (v555 + 1 >= v556)
                {
                  v557 = 65280;
                }

                else
                {
                  v557 = *(*(a1 + 2712) + v555 + 1) << 8;
                }

                v558 = v555 + 2;
                *(a1 + 2720) = v558;
                if (v558 < v556)
                {
                  v553 = *(*(a1 + 2712) + v558);
                }

                else
                {
                  v553 = 255;
                }

                v549 |= v557 | v553;
                v552 = 16;
                *(a1 + 2744) = 16;
              }

              v554 = 2 * v547;
              v123 = v547 >= 0x20000001;
              v547 *= 2;
            }

            while (!v123);
          }

          v559 = (HIWORD(v554) * v551) & 0xFFFF0000;
          v560 = (v551 >> 7) & 0x1FE;
          v561 = v554 - v559;
          v562 = v549 >= v559;
          if (v549 >= v559)
          {
            ++v560;
          }

          __b[v550 + 3] = __dsta[v560] + v551;
          if (v549 < v559)
          {
            v563 = v559;
          }

          else
          {
            v563 = v561;
          }

          if (v549 < v559)
          {
            v564 = 0;
          }

          else
          {
            v564 = v559;
          }

          v565 = v549 - v564;
          *(a1 + 2732) = v563;
          *(a1 + 2736) = v565;
          v566 = v550 | (4 * v562);
          v567 = __b[v566 + 7];
          if (v563 >= 0x40000001)
          {
            v570 = v563;
          }

          else
          {
            v568 = *(a1 + 2744);
            do
            {
              v565 *= 2;
              *(a1 + 2744) = --v568;
              if (!v568)
              {
                v571 = *(a1 + 2720);
                *(a1 + 2720) = v571 + 1;
                v572 = *(a1 + 2704);
                if (v571 + 1 >= v572)
                {
                  v573 = 65280;
                }

                else
                {
                  v573 = *(*(a1 + 2712) + v571 + 1) << 8;
                }

                v574 = v571 + 2;
                *(a1 + 2720) = v574;
                if (v574 < v572)
                {
                  v569 = *(*(a1 + 2712) + v574);
                }

                else
                {
                  v569 = 255;
                }

                v565 |= v573 | v569;
                v568 = 16;
                *(a1 + 2744) = 16;
              }

              v570 = 2 * v563;
              v123 = v563 >= 0x20000001;
              v563 *= 2;
            }

            while (!v123);
          }

          v575 = (HIWORD(v570) * v567) & 0xFFFF0000;
          v576 = (v567 >> 7) & 0x1FE;
          v577 = v570 - v575;
          v578 = v565 >= v575;
          if (v565 >= v575)
          {
            ++v576;
          }

          __b[v566 + 7] = __dsta[v576] + v567;
          if (v565 < v575)
          {
            v579 = v575;
          }

          else
          {
            v579 = v577;
          }

          if (v565 < v575)
          {
            v580 = 0;
          }

          else
          {
            v580 = v575;
          }

          v581 = v565 - v580;
          *(a1 + 2732) = v579;
          *(a1 + 2736) = v581;
          v582 = v566 | (8 * v578);
          v583 = __b[v582 + 15];
          if (v579 >= 0x40000001)
          {
            v586 = v579;
          }

          else
          {
            v584 = *(a1 + 2744);
            do
            {
              v581 *= 2;
              *(a1 + 2744) = --v584;
              if (!v584)
              {
                v587 = *(a1 + 2720);
                *(a1 + 2720) = v587 + 1;
                v588 = *(a1 + 2704);
                if (v587 + 1 >= v588)
                {
                  v589 = 65280;
                }

                else
                {
                  v589 = *(*(a1 + 2712) + v587 + 1) << 8;
                }

                v590 = v587 + 2;
                *(a1 + 2720) = v590;
                if (v590 < v588)
                {
                  v585 = *(*(a1 + 2712) + v590);
                }

                else
                {
                  v585 = 255;
                }

                v581 |= v589 | v585;
                v584 = 16;
                *(a1 + 2744) = 16;
              }

              v586 = 2 * v579;
              v123 = v579 >= 0x20000001;
              v579 *= 2;
            }

            while (!v123);
          }

          v591 = (HIWORD(v586) * v583) & 0xFFFF0000;
          v592 = (v583 >> 7) & 0x1FE;
          v593 = v586 - v591;
          v594 = v581 >= v591;
          if (v581 >= v591)
          {
            ++v592;
          }

          __b[v582 + 15] = __dsta[v592] + v583;
          if (v581 < v591)
          {
            v595 = v591;
          }

          else
          {
            v595 = v593;
          }

          if (v581 < v591)
          {
            v596 = 0;
          }

          else
          {
            v596 = v591;
          }

          v597 = v581 - v596;
          *(a1 + 2732) = v595;
          *(a1 + 2736) = v597;
          v598 = v582 | (16 * v594);
          v599 = __b[v598 + 31];
          if (v595 >= 0x40000001)
          {
            v602 = v595;
          }

          else
          {
            v600 = *(a1 + 2744);
            do
            {
              v597 *= 2;
              *(a1 + 2744) = --v600;
              if (!v600)
              {
                v603 = *(a1 + 2720);
                *(a1 + 2720) = v603 + 1;
                v604 = *(a1 + 2704);
                if (v603 + 1 >= v604)
                {
                  v605 = 65280;
                }

                else
                {
                  v605 = *(*(a1 + 2712) + v603 + 1) << 8;
                }

                v606 = v603 + 2;
                *(a1 + 2720) = v606;
                if (v606 < v604)
                {
                  v601 = *(*(a1 + 2712) + v606);
                }

                else
                {
                  v601 = 255;
                }

                v597 |= v605 | v601;
                v600 = 16;
                *(a1 + 2744) = 16;
              }

              v602 = 2 * v595;
              v123 = v595 >= 0x20000001;
              v595 *= 2;
            }

            while (!v123);
          }

          v607 = (HIWORD(v602) * v599) & 0xFFFF0000;
          v608 = (v599 >> 7) & 0x1FE;
          v609 = v602 - v607;
          if (v597 >= v607)
          {
            ++v608;
          }

          __b[v598 + 31] = __dsta[v608] + v599;
          if (v597 < v607)
          {
            v610 = v607;
          }

          else
          {
            v610 = v609;
          }

          if (v597 < v607)
          {
            v611 = 0;
          }

          else
          {
            v611 = v607;
          }

          *(a1 + 2732) = v610;
          *(a1 + 2736) = v597 - v611;
          v612 = v598 | (32 * (v597 >= v607));
          if (v612 == 63)
          {
            v612 = gcl::ArithmeticDecoder::decodeExpGolomb((a1 + 2704), 6, &v701) + 63;
          }

          v699 += v682;
          v693 += __nb;
          if (v502 >= v684)
          {
            v488 = v612 + 1;
          }

          else
          {
            v488 = ~v612;
          }

          v487 = a7;
          v489 = v688;
        }

        else
        {
          v488 = 0;
        }

        v486 += v489;
        v485 += v488;
        v487[v484++] = v485;
        v350 = *(a1 + 3792);
      }

      while (v484 < v350);
    }
  }

  if (v350)
  {
    v613 = a7;
    v614 = a7;
    if (v350 == 1)
    {
      goto LABEL_931;
    }

    v615 = a7[1];
    v616 = *a7;
    v614 = v615 >= *a7 ? a7 : a7 + 1;
    v613 = v615 >= v616 ? a7 + 1 : a7;
    if (v350 == 2)
    {
      goto LABEL_931;
    }

    if (v615 <= v616)
    {
      v617 = *a7;
    }

    else
    {
      v617 = a7[1];
    }

    if (v615 < v616)
    {
      v616 = a7[1];
    }

    v618 = a7 + 3;
    v619 = 4 * v350 - 12;
    while (1)
    {
      v621 = v618 - 1;
      if (!v619)
      {
        break;
      }

      v623 = *(v618 - 1);
      v622 = *v618;
      if (*v618 >= v623)
      {
        if (v623 < v616)
        {
          v616 = *(v618 - 1);
          v614 = v618 - 1;
        }

        v620 = v622 < v617;
        if (v622 > v617)
        {
          v617 = *v618;
        }

        if (!v620)
        {
          v613 = v618;
        }
      }

      else
      {
        v616 = *v614;
        if (v622 < *v614)
        {
          v616 = *v618;
          v614 = v618;
        }

        v617 = *v613;
        if (v623 > *v613)
        {
          v617 = *(v618 - 1);
        }

        if (v623 >= *v613)
        {
          v613 = v618 - 1;
        }
      }

      v618 += 2;
      v619 -= 8;
      if (v619 == -4)
      {
        goto LABEL_931;
      }
    }

    v624 = *v621;
    if (*v621 >= *v614)
    {
      if (v624 >= *v613)
      {
        v613 = v618 - 1;
      }

LABEL_931:
      v624 = *v614;
    }

    if (v624 < 0)
    {
      goto LABEL_16;
    }

    v625 = *v613;
    v626 = v625 - v624;
    if (v625 - v624 > v350)
    {
      goto LABEL_16;
    }

    v627 = v626 + 2;
    *a1 = v625;
    *(a1 + 4) = v624;
    v628 = *(a1 + 56);
    v629 = *(a1 + 64);
    if (v629 != v628)
    {
      *(a1 + 64) = v628;
      v629 = v628;
    }

    v630 = (v629 - v628) >> 2;
    if (v627 <= v630)
    {
      if (v627 < v630)
      {
        *(a1 + 64) = v628 + 4 * v627;
      }
    }

    else
    {
      std::vector<int>::__append(v668, v627 - v630);
      LODWORD(v350) = *(a1 + 3792);
    }

    if (v350 >= 1)
    {
      v631 = 0;
      v632 = (v668->__begin_ + 1);
      do
      {
        ++*(v632 + 4 * (a7[v631++] - v624));
      }

      while (v631 < *(a1 + 3792));
      LODWORD(v350) = *(a1 + 3792);
    }

    if ((v626 & 0x80000000) == 0)
    {
      v633 = v668->__begin_;
      if (v627 <= 2)
      {
        v634 = 2;
      }

      else
      {
        v634 = v627;
      }

      v637 = *v633;
      v635 = v633 + 1;
      v636 = v637;
      v638 = v634 - 1;
      do
      {
        v636 += *v635;
        *v635++ = v636;
        --v638;
      }

      while (v638);
      LODWORD(v350) = *(a1 + 3792);
    }

    if (v350 >= 1)
    {
      v639 = 0;
      v640 = 0;
      do
      {
        v641 = a7[v640] - v624;
        v642 = *(a1 + 56);
        v643 = *(v642 + 4 * v641);
        *(v642 + 4 * v641) = v643 + 1;
        v644 = (*(a1 + 128) + v639);
        v645 = a6 + 12 * v643;
        v646 = *v644;
        *(v645 + 8) = *(v644 + 2);
        *v645 = v646;
        ++v640;
        v639 += 12;
      }

      while (v640 < *(a1 + 3792));
    }

    if ((v626 & 0x80000000) == 0)
    {
      v647 = 0;
      v648 = 0;
      v649 = v668->__begin_;
      do
      {
        v650 = v649[v647];
        if (v648 < v650)
        {
          v651 = v648;
          v652 = v624 + v647;
          v653 = v650 - v648;
          if (v653 > 7)
          {
            v654 = v653 & 0xFFFFFFFFFFFFFFF8;
            v655 = vdupq_n_s32(v652);
            v656 = &a7[v648 + 4];
            v657 = v653 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v656[-1] = v655;
              *v656 = v655;
              v656 += 2;
              v657 -= 8;
            }

            while (v657);
            if (v653 == v654)
            {
              goto LABEL_956;
            }

            v651 = v654 + v648;
          }

          v658 = v650 - v651;
          v659 = &a7[v651];
          do
          {
            *v659++ = v652;
            --v658;
          }

          while (v658);
        }

LABEL_956:
        v649[v647++] = v648;
        v648 = v650;
      }

      while (v647 != v626 + 1);
    }
  }

LABEL_515:
  result = *(a1 + 3872);
  if (!result)
  {
    if (*(a1 + 3792) >= 1)
    {
      v328 = 0;
      v329 = 0;
      do
      {
        v330 = *(a1 + 128) + v328;
        v331 = *(a6 + v328);
        *(v330 + 8) = *(a6 + v328 + 8);
        *v330 = v331;
        ++v329;
        v328 += 12;
      }

      while (v329 < *(a1 + 3792));
    }

    v332 = *(a1 + 3788);
    if (v669 || v667 || v666)
    {
      if (v332 >= 1)
      {
        v339 = 0;
        v340 = 0;
        v341 = (a5 + 8);
        do
        {
          v342 = (*(a1 + 104) + v339);
          v343 = *v342 + v669;
          v344 = v342[1] + v667;
          LODWORD(v342) = v342[2] + v666;
          *(v341 - 2) = v343;
          *(v341 - 1) = v344;
          *v341 = v342;
          v341 += 3;
          ++v340;
          v339 += 12;
        }

        while (v340 < *(a1 + 3788));
      }
    }

    else if (v332 >= 1)
    {
      v333 = 0;
      v334 = 0;
      do
      {
        v335 = (*(a1 + 104) + v333);
        v336 = a5 + v333;
        v337 = *v335;
        *(v336 + 8) = *(v335 + 2);
        *v336 = v337;
        ++v334;
        v333 += 12;
      }

      while (v334 < *(a1 + 3788));
    }

    result = 0;
    *a4 = *(a1 + 3784);
  }

  return result;
}

void sub_1866D3074(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v10 = 4 * __n;
      bzero(this->__end_, 4 * __n);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v6 = end - this->__begin_;
    v7 = (v6 >> 2) + __n;
    if (v7 >> 62)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - begin;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * __n;
    bzero(v11, 4 * __n);
    memcpy(0, begin, v6);
    this->__begin_ = 0;
    this->__end_ = &v11[v12];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::vector<unsigned long long>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<zilch::StringList::Entry>>(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<zilch::StringList::Entry>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__tree<std::__value_type<unsigned int,_GEOAltitudeTriggerData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,_GEOAltitudeTriggerData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,_GEOAltitudeTriggerData>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,_GEOAltitudeTriggerData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,_GEOAltitudeTriggerData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,_GEOAltitudeTriggerData>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,_GEOAltitudeTriggerData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,_GEOAltitudeTriggerData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,_GEOAltitudeTriggerData>>>::destroy(a1[1]);
    v2 = a1[11];
    if (v2)
    {
      a1[12] = v2;
      operator delete(v2);
    }

    v3 = a1[8];
    if (v3)
    {
      a1[9] = v3;
      operator delete(v3);
    }

    operator delete(a1);
  }
}

void std::vector<gcl::ArithmeticContext>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 1)
  {
    if (a2)
    {
      v10 = 2 * a2;
      memset_pattern16(*(a1 + 8), &unk_187FBF450, 2 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 1) + a2;
    if (v7 < 0)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (v8 > v7)
    {
      v7 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (2 * (v6 >> 1));
    v12 = 2 * a2;
    memset_pattern16(v11, &unk_187FBF450, 2 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void gcl::polyline::ACContext::init(std::vector<int> *this, int a2)
{
  v3 = a2;
  v4 = (this->__end_ - this->__begin_) >> 1;
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {
    std::vector<gcl::ArithmeticContext>::__append(this, v6);
  }

  else if (!v5)
  {
    this->__end_ = (this->__begin_ + 2 * v3);
  }

  begin = this[1].__begin_;
  v8 = (this[1].__end_ - begin) >> 1;
  if (v3 <= v8)
  {
    if (v3 < v8)
    {
      this[1].__end_ = (begin + 2 * v3);
    }
  }

  else
  {
    std::vector<gcl::ArithmeticContext>::__append(&this[1], v3 - v8);
  }

  v9 = this[2].__begin_;
  v10 = (this[2].__end_ - v9) >> 1;
  if (v3 << 6 <= v10)
  {
    if (v3 << 6 < v10)
    {
      this[2].__end_ = &v9[32 * v3];
    }
  }

  else
  {
    std::vector<gcl::ArithmeticContext>::__append(&this[2], (v3 << 6) - v10);
  }

  v11 = this[3].__begin_;
  v12 = (this[3].__end_ - v11) >> 1;
  if (v3 <= v12)
  {
    if (v3 < v12)
    {
      this[3].__end_ = (v11 + 2 * v3);
    }
  }

  else
  {
    std::vector<gcl::ArithmeticContext>::__append(&this[3], v3 - v12);
  }

  v13 = this[4].__begin_;
  end = this[4].__end_;
  v15 = end - v13;
  if (v3 <= v15)
  {
    if (v3 < v15)
    {
      end = &v13[v3];
      this[4].__end_ = end;
    }
  }

  else
  {
    std::vector<int>::__append(this + 4, v3 - v15);
    v13 = this[4].__begin_;
    end = this[4].__end_;
  }

  if (end - v13 >= 1)
  {
    memset_pattern16(v13, &unk_187FBF420, end - v13);
  }

  v16 = this->__end_;
  if (this->__begin_ != v16)
  {
    memset_pattern16(this->__begin_, &unk_187FBF450, v16 - this->__begin_);
  }

  v17 = this[1].__begin_;
  v18 = this[1].__end_;
  if (v17 != v18)
  {
    memset_pattern16(v17, &unk_187FBF450, v18 - v17);
  }

  v19 = this[2].__begin_;
  v20 = this[2].__end_;
  if (v19 != v20)
  {
    memset_pattern16(v19, &unk_187FBF450, v20 - v19);
  }

  v21 = this[3].__begin_;
  v22 = this[3].__end_;
  if (v21 != v22)
  {

    memset_pattern16(v21, &unk_187FBF450, v22 - v21);
  }
}

uint64_t *std::vector<int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1866D3770(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gcl::tmesh::DecoderImpl::decompressVertexAttributes(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, int *a5, BOOL *a6)
{
  if (*(a1 + 3872))
  {
    return 6;
  }

  if (!a2)
  {
    return 5;
  }

  result = 5;
  if (a3 < 0 || !a5)
  {
    return result;
  }

  if (a3 < 4)
  {
    return 3;
  }

  v8 = a3 & 0x7FFFFFFFFFFFFFFCLL;
  if ((a3 & 0x7FFFFFFFFFFFFFFCLL) == 4 || a3 == 8 || a3 == 9 || (a3 & 0x7FFFFFFFFFFFFFFELL) == 0xA || v8 == 12 || v8 == 16 || a3 == 20 || a3 == 21 || a3 == 22 || a3 < 32)
  {
    return 3;
  }

  result = 3;
  if (*a2 != -290009985)
  {
    return result;
  }

  v10 = *(a2 + 4);
  v11 = *(a2 + 8);
  v12 = *(a2 + 9);
  v13 = *(a2 + 10);
  v14 = *(a2 + 12);
  v15 = *(a2 + 16) & 0x7FFFFFFF;
  v16 = *(a2 + 20);
  v17 = *(a2 + 21);
  v18 = *(a2 + 22);
  v19 = *(a2 + 23);
  v20 = *(a2 + 24);
  v21 = *(a2 + 26);
  v22 = *(a2 + 27);
  *(a1 + 3824) = 0;
  *(a1 + 3828) = v11;
  *(a1 + 3829) = v12;
  *(a1 + 3830) = v13;
  *(a1 + 3832) = v14;
  *(a1 + 3836) = v15;
  *(a1 + 3840) = v18;
  *(a1 + 3844) = v17;
  *(a1 + 3848) = v22;
  *(a1 + 3852) = v16;
  *(a1 + 3856) = v21;
  *(a1 + 3860) = v10;
  *(a1 + 3864) = v19;
  *(a1 + 3868) = v20;
  v23 = (a2 + 32);
  if (a2 == -32 || a3 < v14 || a2 + a3 < a2)
  {
    return 3;
  }

  result = 3;
  if (a2 + v14 < v23 || v14 < 0x20)
  {
    return result;
  }

  if (v11)
  {
    return 4;
  }

  result = 4;
  if ((v12 - 5) > 2)
  {
    return result;
  }

  if (v15 != *(a1 + 3788) || !a6 && v21)
  {
    return 3;
  }

  v25 = v14 - 32;
  if ((v20 - 5) <= 1)
  {
    if (v18 == 2)
    {
      result = 3;
      if (v22 - 28 >= 0xFFFFFFE5)
      {
        operator new();
      }

      return result;
    }

    return 3;
  }

  if (v22 > 0x1B)
  {
    return 3;
  }

  if (v18)
  {
    operator new();
  }

  v26 = *(a1 + 2664);
  v27 = (*(a1 + 2672) - v26) >> 2;
  if (v18 <= v27)
  {
    if (v18 < v27)
    {
      *(a1 + 2672) = v26 + 4 * v18;
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 2664), v18 - v27);
  }

  if (!v23 || *(a1 + 3864) == 255)
  {
    return 3;
  }

  v28 = v25 - 4;
  if (v25 < 4)
  {
    v29 = 0;
    v28 = 0;
    v30 = 0;
LABEL_54:
    v31 = 0;
    goto LABEL_55;
  }

  v32 = *v23;
  v31 = (v23 + 1);
  v30 = v32;
  if (!v31)
  {
    v29 = v30;
    goto LABEL_54;
  }

  v29 = &v31[v30];
LABEL_55:
  result = 3;
  if (v29 && v28 >= v30)
  {
    *(a1 + 2704) = v30;
    *(a1 + 2712) = v31;
    *&v33 = 0xFFFF000000000000;
    *(&v33 + 1) = 0xFFFF000000000000;
    *(a1 + 2728) = v33;
    *(a1 + 2744) = 16;
    if (v30)
    {
      v34 = *v31 << 24;
      *(a1 + 2736) = v34;
      if (v30 != 1)
      {
        v35 = v34 | (v31[1] << 16);
        *(a1 + 2736) = v35;
        if (v30 > 2)
        {
          v36 = v35 | (v31[2] << 8);
          *(a1 + 2736) = v36;
          if (v30 != 3)
          {
            v37 = v31[3];
LABEL_66:
            *(a1 + 2736) = v37 | v36;
            *(a1 + 2720) = 3;
            memcpy((a1 + 2752), &gcl::ArithmeticDecoder::probUpdateLutInterleaved, 0x400uLL);
            gcl::tmesh::DecoderImpl::decodeVertexAttributesAC(a1, a5, a6);
            result = 0;
            *a4 = *(a1 + 3832);
            return result;
          }

LABEL_65:
          v37 = 255;
          goto LABEL_66;
        }

LABEL_64:
        v36 = v35 | 0xFF00;
        goto LABEL_65;
      }
    }

    else
    {
      v34 = -16777216;
    }

    v35 = v34 | 0xFF0000;
    goto LABEL_64;
  }

  return result;
}

void sub_1866D41D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t geo::codec::_readDaVinci3DData(geo::codec::zone_mallocator *a1, uint64_t *a2)
{
  v996 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  while (*(*a1 + 16 * v4) != 100)
  {
    v4 = ++v5;
    if (v2 <= v5)
    {
      return 1;
    }
  }

  v6 = geo::codec::chapterAt(a1, v5, 100, (*a2 + 1920));
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  rep = v10.__d_.__rep_;
  v17 = *(v7 + 48);
  v16 = *(v7 + 56);
  v18 = v17 + 4;
  if (v17 + 4 <= v16)
  {
    v21 = *(*(v7 + 40) + v17);
    *(v7 + 48) = v18;
    v11 = v21 == 68;
    v14 = (v21 & 0xFF00) == 22016;
    v13 = (v21 & 0xFF0000) == 6553600;
    v12 = HIBYTE(v21) == 118;
    v17 = v18;
  }

  *v958 = 0u;
  *v959 = 0u;
  v960 = 1065353216;
  *__p = 0u;
  *v956 = 0u;
  v957 = 1065353216;
  v975 = 0;
  v974 = 0;
  v976 = 0;
  v972 = 0;
  v971 = 0;
  v973 = 0;
  if (v18 > v16)
  {
LABEL_15:
    v22 = 1;
    goto LABEL_28;
  }

  if (!v11)
  {
    v24 = *MEMORY[0x1E69E9848];
    v25 = 7938;
    goto LABEL_26;
  }

  if (!v14)
  {
    v24 = *MEMORY[0x1E69E9848];
    v25 = 7939;
    goto LABEL_26;
  }

  if (!v13)
  {
    v24 = *MEMORY[0x1E69E9848];
    v25 = 7940;
    goto LABEL_26;
  }

  if (!v12)
  {
    v24 = *MEMORY[0x1E69E9848];
    v25 = 7941;
    goto LABEL_26;
  }

  v23 = v17 + 4;
  if (v17 + 4 > v16)
  {
    v24 = *MEMORY[0x1E69E9848];
    v25 = 7942;
LABEL_26:
    v10.__d_.__rep_ = fprintf(v24, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v25);
LABEL_27:
    v22 = 0;
    goto LABEL_28;
  }

  v59 = *(v7 + 40);
  v60 = *(v59 + v17);
  *(v7 + 64) = v60;
  *(v7 + 48) = v23;
  if (v60 <= 0xF)
  {
    v24 = *MEMORY[0x1E69E9848];
    v25 = 7943;
    goto LABEL_26;
  }

  v61 = *a2;
  *(*a2 + 2752) = v60;
  v62 = v17 + 8;
  if (v17 + 8 > v16)
  {
    v24 = *MEMORY[0x1E69E9848];
    v25 = 7946;
    goto LABEL_26;
  }

  *(v61 + 1960) = *(v59 + v23);
  *(v7 + 48) = v62;
  *(v61 + 1964) = 0;
  if (*(v7 + 64) >= 0x11u)
  {
    if (v17 + 9 > v16)
    {
      v24 = *MEMORY[0x1E69E9848];
      v25 = 7950;
      goto LABEL_26;
    }

    *(v61 + 1964) = *(v59 + v62);
    v16 = *(v7 + 56);
    v62 = *(v7 + 48) + 1;
    *(v7 + 48) = v62;
    v61 = *a2;
  }

  v63 = v62 + 4;
  if (v62 + 4 > v16)
  {
    v24 = *MEMORY[0x1E69E9848];
    v25 = 7953;
    goto LABEL_26;
  }

  v64 = *(v7 + 40);
  v65 = *(v64 + v62);
  *(v61 + 1968) = v65;
  *(v7 + 48) = v63;
  v66 = v62 + 8;
  if (v66 > v16)
  {
    v24 = *MEMORY[0x1E69E9848];
    v25 = 7955;
    goto LABEL_26;
  }

  v67 = *(v64 + v63);
  *(v7 + 48) = v66;
  v920 = v67;
  v68 = (v67 + v65);
  v69 = *(v61 + 1984);
  v70 = *(v61 + 1976);
  v71 = &v69[-v70];
  v72 = 0xAAAAAAAAAAAAAAABLL * (&v69[-v70] >> 2);
  v73 = v68 - v72;
  v943 = v10.__d_.__rep_;
  v944 = v9;
  if (v68 <= v72)
  {
    if (v68 >= v72)
    {
      goto LABEL_93;
    }

    v88 = (v70 + 12 * v68);
    goto LABEL_92;
  }

  v74 = *(v61 + 1992);
  if (0xAAAAAAAAAAAAAAABLL * ((v74 - v69) >> 2) >= v73)
  {
    bzero(v69, 12 * ((12 * v73 - 12) / 0xC) + 12);
    v88 = &v69[12 * ((12 * v73 - 12) / 0xC) + 12];
LABEL_92:
    *(v61 + 1984) = v88;
    goto LABEL_93;
  }

  v75 = 0xAAAAAAAAAAAAAAABLL * ((v74 - v70) >> 2);
  if (2 * v75 > v68)
  {
    v68 = 2 * v75;
  }

  if (v75 >= 0xAAAAAAAAAAAAAAALL)
  {
    v76 = 0x1555555555555555;
  }

  else
  {
    v76 = v68;
  }

  v77 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
  v78 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsVectorTilePoint3D>(v77, v76);
  v79 = &v71[v78];
  v80 = v78 + 12 * v76;
  bzero(v79, 12 * ((12 * v73 - 12) / 0xC) + 12);
  v81 = &v79[12 * ((12 * v73 - 12) / 0xC) + 12];
  v82 = *(v61 + 1976);
  v83 = *(v61 + 1984) - v82;
  v84 = &v79[-v83];
  v85 = memcpy(v84, v82, v83);
  v86 = *(v61 + 1976);
  *(v61 + 1976) = v84;
  *(v61 + 1984) = v81;
  *(v61 + 1992) = v80;
  if (v86)
  {
    v87 = geo::codec::zone_mallocator::instance(v85);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVectorTilePoint3D>(v87, v86);
  }

LABEL_93:
  v89 = *a2;
  v90 = *(*a2 + 1960);
  v954 = 0;
  __src = v90;
  if ((v90 & 4) == 0)
  {
    v91 = a2[1];
    if (!v91)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  v99 = *(v7 + 48);
  v100 = *(v7 + 56);
  if (v99 + 4 > v100 || (*(v7 + 48) = v99 + 4, v99 + 8 > v100) || (*(v7 + 48) = v99 + 8, v101 = v99 + 12, v101 > v100))
  {
    v102 = *MEMORY[0x1E69E9848];
    v103 = 7967;
LABEL_105:
    v10.__d_.__rep_ = fprintf(v102, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v103);
    rep = v943;
    v9 = v944;
    goto LABEL_27;
  }

  *(v7 + 48) = v101;
  v91 = a2[1];
  if (v91)
  {
LABEL_95:
    atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_96:
  v92.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v942 = v92.__d_.__rep_;
  v934 = *(v7 + 48);
  v94 = *a2;
  if (*(*a2 + 1964) == 1)
  {
    v104 = v934 + 4;
    v105 = *(v7 + 56);
    if (v934 + 4 > v105)
    {
      v106 = 0;
      v107 = 0;
      v108 = 0;
      v104 = *(v7 + 48);
      v909 = *v93.i32;
      goto LABEL_119;
    }

    v109 = *(v7 + 40);
    v893 = *(v109 + v934);
    *(v7 + 48) = v104;
    v110 = v934 + 6;
    if (v934 + 6 > v105)
    {
      v106 = 0;
      v107 = 0;
      v108 = 0;
LABEL_118:
      v909 = *v93.i32;
      goto LABEL_119;
    }

    v108 = *(v109 + v104);
    *(v7 + 48) = v110;
    v104 = v934 + 10;
    if (v934 + 10 > v105)
    {
      v106 = 0;
      v107 = 0;
      v104 = v934 + 6;
      goto LABEL_118;
    }

    v888 = *(v109 + v110);
    *(v7 + 48) = v104;
    v120 = v934 + 12;
    if (v934 + 12 > v105)
    {
      v106 = 0;
      v107 = 0;
LABEL_169:
      v909 = *v93.i32;
      goto LABEL_119;
    }

    v107 = *(v109 + v104);
    *(v7 + 48) = v120;
    v104 = v934 + 16;
    if (v934 + 16 > v105)
    {
      v106 = 0;
      v104 = v934 + 12;
      goto LABEL_169;
    }

    v884 = *(v109 + v120);
    *(v7 + 48) = v104;
    if (v934 + 18 > v105)
    {
      v106 = 0;
LABEL_172:
      v909 = *v93.i32;
      goto LABEL_119;
    }

    v106 = *(v109 + v104);
    *(v7 + 48) = v934 + 18;
    if ((__src & 4) != 0)
    {
      v104 = v934 + 18;
    }

    else
    {
      v104 = v934 + 22;
      if (v934 + 22 > v105)
      {
        v104 = v934 + 18;
        goto LABEL_172;
      }

      *(v7 + 48) = v104;
    }

    v258 = v104 + 1;
    if (v104 + 1 <= v105)
    {
      v259 = *(v109 + v104);
      *(v7 + 48) = v258;
      v260 = v104 + 5;
      if (v104 + 5 <= v105)
      {
        v261 = *(v109 + v258);
        *(v7 + 48) = v260;
        v92.__d_.__rep_ = v104 + 9;
        if (v104 + 9 <= v105)
        {
          v263 = *(v109 + v260);
          *(v7 + 48) = v92;
          v104 += 13;
          if (v104 <= v105)
          {
            v93.i64[0] = __PAIR64__(v263, v261);
            v93.i32[2] = *(v109 + v92.__d_.__rep_);
            *(v7 + 48) = v104;
            v909 = (1 << v259);
            v886 = vmulq_n_f32(vcvtq_f32_s32(v93), v909);
LABEL_119:
            v113 = v104 + 2;
            if (v104 + 2 > v105)
            {
              v98 = 8008;
              goto LABEL_277;
            }

            v114 = *(v7 + 40);
            v898 = *(v114 + v104);
            *(v7 + 48) = v113;
            v115 = v104 + 4;
            if (v104 + 4 > v105)
            {
              v98 = 8009;
              goto LABEL_277;
            }

            v881 = *(v114 + v113);
            *(v7 + 48) = v115;
            v116 = v104 + 8;
            v741 = v105 >= v104 + 8;
            v117 = v105 - (v104 + 8);
            if (!v741)
            {
              v98 = 8011;
              goto LABEL_277;
            }

            v883 = *(v114 + v115);
            *(v7 + 8) = v114 + v116;
            *(v7 + 48) = v116;
            *(v7 + 32) = 1;
            *(v7 + 16) = v117;
            *(v7 + 24) = 0;
            v911 = (v7 + 8);
            if (*(v94 + 1968))
            {
              v121 = 0;
              v122 = 8 * v117;
              v123 = *a2;
              v124 = *(v7 + 24);
              v92.__d_.__rep_ = 8;
              do
              {
                if (v124 + v108 > v122)
                {
                  v98 = 8019;
                  goto LABEL_277;
                }

                v126 = 0;
                if (v108)
                {
                  v127 = *v911;
                  v128 = v108;
                  do
                  {
                    v129 = 8 - (v124 & 7);
                    if (v128 < v129)
                    {
                      v129 = v128;
                    }

                    v126 = (*(v127 + (v124 >> 3)) >> (8 - (v124 & 7) - v129)) & ~(-1 << v129) | (v126 << v129);
                    v124 += v129;
                    *(v7 + 24) = v124;
                    v128 -= v129;
                  }

                  while (v128);
                }

                if (v124 + v107 > v122)
                {
                  v98 = 8022;
                  goto LABEL_277;
                }

                v130 = 0;
                if (v107)
                {
                  v131 = *v911;
                  v132 = v107;
                  do
                  {
                    v133 = 8 - (v124 & 7);
                    if (v132 < v133)
                    {
                      v133 = v132;
                    }

                    v130 = (*(v131 + (v124 >> 3)) >> (8 - (v124 & 7) - v133)) & ~(-1 << v133) | (v130 << v133);
                    v124 += v133;
                    *(v7 + 24) = v124;
                    v132 -= v133;
                  }

                  while (v132);
                }

                if (v124 + v106 > v122)
                {
                  v98 = 8025;
                  goto LABEL_277;
                }

                v134 = 0;
                if (v106)
                {
                  v135 = *v911;
                  v136 = v106;
                  do
                  {
                    v137 = 8 - (v124 & 7);
                    if (v136 < v137)
                    {
                      v137 = v136;
                    }

                    v134 = (*(v135 + (v124 >> 3)) >> (8 - (v124 & 7) - v137)) & ~(-1 << v137) | (v134 << v137);
                    v124 += v137;
                    *(v7 + 24) = v124;
                    v136 -= v137;
                  }

                  while (v136);
                }

                v125 = (*(v123 + 1976) + 12 * v121);
                *v125 = v886.f32[0] + (v909 * (v893 + v126));
                v125[1] = v886.f32[1] + (v909 * (v888 + v130));
                v125[2] = v886.f32[2] + (v909 * (v884 + v134));
                ++v121;
              }

              while (v121 < *(v123 + 1968));
            }

            goto LABEL_189;
          }

          v104 = v92.__d_.__rep_;
        }

        else
        {
          v104 += 5;
        }
      }

      else
      {
        ++v104;
      }
    }

    v909 = *v93.i32;
    goto LABEL_119;
  }

  if (*(*a2 + 1964))
  {
    v98 = 8032;
    goto LABEL_277;
  }

  v92.__d_.__rep_ = geo::codec::MercatorDequantizer::readInfo(v945, v7);
  if (!LODWORD(v92.__d_.__rep_))
  {
    v98 = 7974;
    goto LABEL_277;
  }

  v95 = *(v7 + 48);
  v96 = *(v7 + 56);
  v97 = v95 + 2;
  if (v95 + 2 > v96)
  {
    v98 = 7977;
    goto LABEL_277;
  }

  v111 = *(v7 + 40);
  v898 = *(v111 + v95);
  *(v7 + 48) = v97;
  v112 = v95 + 4;
  if (v95 + 4 > v96)
  {
    v98 = 7978;
    goto LABEL_277;
  }

  v881 = *(v111 + v97);
  *(v7 + 48) = v112;
  v118 = v95 + 8;
  v741 = v96 >= v95 + 8;
  v119 = v96 - (v95 + 8);
  if (!v741)
  {
    v98 = 7979;
    goto LABEL_277;
  }

  v883 = *(v111 + v112);
  *(v7 + 8) = v111 + v118;
  *(v7 + 48) = v118;
  *(v7 + 32) = 1;
  *(v7 + 16) = v119;
  *(v7 + 24) = 0;
  v911 = (v7 + 8);
  v138 = *a2;
  v139 = *(*a2 + 1968);
  if (v139)
  {
    v140 = 0;
    v141 = v945[0];
    v142 = 8 * v119;
    v143 = &v946;
    v144 = v950;
    v145 = *(v7 + 24);
    v146 = vld1_dup_f32(v143);
    do
    {
      if (v145 + v141 > v142)
      {
        v98 = 7987;
        goto LABEL_277;
      }

      v148 = 0;
      if (v141)
      {
        v149 = *v911;
        v150 = v141;
        do
        {
          v151 = 8 - (v145 & 7);
          if (v150 < v151)
          {
            v151 = v150;
          }

          v148 = (*(v149 + (v145 >> 3)) >> (8 - (v145 & 7) - v151)) & ~(-1 << v151) | (v148 << v151);
          v145 += v151;
          *(v7 + 24) = v145;
          v150 -= v151;
        }

        while (v150);
        if (v145 + v141 > v142)
        {
          v98 = 7988;
          goto LABEL_277;
        }

        v147 = 0;
        v152 = *v911;
        v153 = v141;
        do
        {
          v154 = 8 - (v145 & 7);
          if (v153 < v154)
          {
            v154 = v153;
          }

          v147 = (*(v152 + (v145 >> 3)) >> (8 - (v145 & 7) - v154)) & ~(-1 << v154) | (v147 << v154);
          v145 += v154;
          *(v7 + 24) = v145;
          v153 -= v154;
        }

        while (v153);
      }

      else
      {
        v147 = 0;
      }

      *(*(v138 + 1976) + 12 * v140++) = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_s32(vadd_s32(v146, __PAIR64__(v147, v148)))), v144));
    }

    while (v140 != v139);
    v155 = 0;
    v156 = v952;
    v157 = v953;
    v158 = v949;
    v159 = v951 * (v948 - v947);
    v160 = v947;
    v161 = *a2;
    while (v145 + v156 <= v142)
    {
      v92.__d_.__rep_ = 0;
      if (v156)
      {
        v163 = *v911;
        v164 = v156;
        do
        {
          v165 = 8 - (v145 & 7);
          if (v164 < v165)
          {
            v165 = v164;
          }

          v92.__d_.__rep_ = (*(v163 + (v145 >> 3)) >> (8 - (v145 & 7) - v165)) & ~(-1 << v165) | (LODWORD(v92.__d_.__rep_) << v165);
          v145 += v165;
          *(v7 + 24) = v145;
          v164 -= v165;
        }

        while (v164);
      }

      v162 = (v160 + v159 * (v157 + LODWORD(v92.__d_.__rep_))) * v158;
      *(*(v161 + 1976) + 12 * v155++ + 8) = v162;
      if (v155 >= *(v161 + 1968))
      {
        goto LABEL_189;
      }
    }

    v98 = 7997;
LABEL_277:
    fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v98);
    v235 = std::chrono::steady_clock::now().__d_.__rep_;
    v977 = 0x100000004;
    *buf = &v977;
    v10.__d_.__rep_ = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v89 + 1920), &v977, buf);
    v236 = ((v235 - v942) / 1000);
    goto LABEL_278;
  }

LABEL_189:
  v166 = *(v7 + 24);
  if (v166 + 16 > 8 * *(v7 + 16))
  {
    v167 = 8038;
    goto LABEL_191;
  }

  LODWORD(v169) = 0;
  v170 = *v911;
  v171 = 16;
  do
  {
    v172 = 8 - (v166 & 7);
    if (v171 < v172)
    {
      v172 = v171;
    }

    v169 = (*(v170 + (v166 >> 3)) >> (8 - (v166 & 7) - v172)) & ~(-1 << v172) | (v169 << v172);
    v166 += v172;
    *(v7 + 24) = v166;
    v171 -= v172;
  }

  while (v171);
  v173 = geo::codec::zone_mallocator::instance(v92.__d_.__rep_);
  v174 = pthread_rwlock_rdlock((v173 + 32));
  if (v174)
  {
    geo::read_write_lock::logFailure(v174, "read lock", v175);
  }

  v176 = malloc_type_zone_malloc(*v173, 16 * v169, 0x102004052B98188uLL);
  atomic_fetch_add((v173 + 24), 1u);
  v177 = pthread_rwlock_unlock((v173 + 32));
  if (v177)
  {
    geo::read_write_lock::logFailure(v177, "unlock", v178);
  }

  *(*a2 + 2016) = v176;
  v179 = geo::codec::zone_mallocator::instance(v177);
  v180 = pthread_rwlock_rdlock((v179 + 32));
  if (v180)
  {
    geo::read_write_lock::logFailure(v180, "read lock", v181);
  }

  v182 = malloc_type_zone_malloc(*v179, 24 * v169, 0x1000040BC215626uLL);
  atomic_fetch_add((v179 + 24), 1u);
  v183 = pthread_rwlock_unlock((v179 + 32));
  if (v183)
  {
    geo::read_write_lock::logFailure(v183, "unlock", v184);
  }

  v185 = *a2;
  *(*a2 + 2032) = v182;
  if (v169)
  {
    v879 = 0;
    v186 = 1.0 / (1 << (v881 - 1));
    do
    {
      v187 = *(v7 + 24);
      v188 = 8 * *(v7 + 16);
      if (v187 + 32 > v188)
      {
        v167 = 8044;
        goto LABEL_191;
      }

      v189 = 0;
      v190 = *v911;
      v191 = 32;
      do
      {
        v192 = 8 - (v187 & 7);
        if (v191 < v192)
        {
          v192 = v191;
        }

        v189 = (*(v190 + (v187 >> 3)) >> (8 - (v187 & 7) - v192)) & ~(-1 << v192) | (v189 << v192);
        v187 += v192;
        *(v7 + 24) = v187;
        v191 -= v192;
      }

      while (v191);
      if (v187 + 16 > v188)
      {
        v167 = 8045;
        goto LABEL_191;
      }

      LODWORD(v193) = 0;
      v194 = 16;
      do
      {
        v195 = 8 - (v187 & 7);
        if (v194 < v195)
        {
          v195 = v194;
        }

        v193 = (*(v190 + (v187 >> 3)) >> (8 - (v187 & 7) - v195)) & ~(-1 << v195) | (v193 << v195);
        v187 += v195;
        *(v7 + 24) = v187;
        v194 -= v195;
      }

      while (v194);
      if (v187 + 8 > v188)
      {
        v167 = 8047;
        goto LABEL_191;
      }

      v196 = 0;
      v197 = 8;
      do
      {
        v198 = 8 - (v187 & 7);
        if (v197 < v198)
        {
          v198 = v197;
        }

        v196 = (*(v190 + (v187 >> 3)) >> (8 - (v187 & 7) - v198)) & ~(-1 << v198) | (v196 << v198);
        v187 += v198;
        *(v7 + 24) = v187;
        v197 -= v198;
      }

      while (v197);
      if (v196 > 1)
      {
        v167 = 8048;
        goto LABEL_191;
      }

      if (v196)
      {
        v199 = *(*a2 + 2032) + 24 * (*(*a2 + 2024))++;
        *v199 = v189;
        *(v199 + 4) = v193;
        if (v187 + 32 > v188)
        {
          v167 = 8077;
          goto LABEL_191;
        }

        v200 = 0;
        v201 = 32;
        do
        {
          v202 = 8 - (v187 & 7);
          if (v201 < v202)
          {
            v202 = v201;
          }

          v200 = (*(v190 + (v187 >> 3)) >> (8 - (v187 & 7) - v202)) & ~(-1 << v202) | (v200 << v202);
          v187 += v202;
          *(v7 + 24) = v187;
          v201 -= v202;
        }

        while (v201);
        *(v199 + 8) = v200;
        if (v187 + 32 > v188)
        {
          v167 = 8078;
          goto LABEL_191;
        }

        v203 = 0;
        v204 = 32;
        do
        {
          v205 = 8 - (v187 & 7);
          if (v204 < v205)
          {
            v205 = v204;
          }

          v203 = (*(v190 + (v187 >> 3)) >> (8 - (v187 & 7) - v205)) & ~(-1 << v205) | (v203 << v205);
          v187 += v205;
          *(v7 + 24) = v187;
          v204 -= v205;
        }

        while (v204);
        *(v199 + 12) = v203;
        if (v187 + 32 > v188)
        {
          v167 = 8079;
          goto LABEL_191;
        }

        v206 = 0;
        v207 = 32;
        do
        {
          v208 = 8 - (v187 & 7);
          if (v207 < v208)
          {
            v208 = v207;
          }

          v206 = (*(v190 + (v187 >> 3)) >> (8 - (v187 & 7) - v208)) & ~(-1 << v208) | (v206 << v208);
          v187 += v208;
          *(v7 + 24) = v187;
          v207 -= v208;
        }

        while (v207);
        *(v199 + 16) = v206;
        if (v187 + 32 > v188)
        {
          v167 = 8080;
          goto LABEL_191;
        }

        v209 = 0;
        v210 = 32;
        do
        {
          v211 = 8 - (v187 & 7);
          if (v210 < v211)
          {
            v211 = v210;
          }

          v209 = (*(v190 + (v187 >> 3)) >> (8 - (v187 & 7) - v211)) & ~(-1 << v211) | (v209 << v211);
          v187 += v211;
          *(v7 + 24) = v187;
          v210 -= v211;
        }

        while (v210);
        *(v199 + 20) = v209;
      }

      else
      {
        if (!v881)
        {
          v167 = 8051;
          goto LABEL_191;
        }

        v212 = *(*a2 + 2008);
        v213 = *(*a2 + 2016) + 16 * v212;
        *(*a2 + 2008) = v212 + 1;
        *v213 = v189;
        v877 = v213;
        *(v213 + 4) = v193;
        v214 = geo::codec::zone_mallocator::instance(v183);
        v183 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsVectorTilePoint>(v214, v193);
        *(v877 + 8) = v183;
        if (v193)
        {
          v215 = 0;
          v216 = *(v7 + 24);
          v217 = 8 * *(v7 + 16);
          while (v216 + v898 <= v217)
          {
            v222 = v898;
            if (v898)
            {
              v222 = 0;
              v223 = *v911;
              v224 = v898;
              do
              {
                v225 = 8 - (v216 & 7);
                if (v224 < v225)
                {
                  v225 = v224;
                }

                v222 = (*(v223 + (v216 >> 3)) >> (8 - (v216 & 7) - v225)) & ~(-1 << v225) | (v222 << v225);
                v216 += v225;
                *(v7 + 24) = v216;
                v224 -= v225;
              }

              while (v224);
              if (v216 + v898 > v217)
              {
                v167 = 8064;
                goto LABEL_191;
              }

              v218 = 0;
              v226 = *v911;
              v227 = v898;
              do
              {
                v228 = 8 - (v216 & 7);
                if (v227 < v228)
                {
                  v228 = v227;
                }

                v218 = (*(v226 + (v216 >> 3)) >> (8 - (v216 & 7) - v228)) & ~(-1 << v228) | (v218 << v228);
                v216 += v228;
                *(v7 + 24) = v216;
                v227 -= v228;
              }

              while (v227);
            }

            else
            {
              v218 = 0;
            }

            v219 = (v883 + v222);
            v220 = (v183 + 8 * v215);
            *&v219 = v186 * v219;
            v221 = v186 * (v218 + v883);
            *v220 = *&v219;
            v220[1] = v221;
            if (++v215 == v193)
            {
              goto LABEL_264;
            }
          }

          v167 = 8063;
LABEL_191:
          fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v167);
          v168 = std::chrono::steady_clock::now().__d_.__rep_;
          v977 = 0x100000004;
          *buf = &v977;
          v10.__d_.__rep_ = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v89 + 1920), &v977, buf);
          *(v10.__d_.__rep_ + 32) = ((v168 - v942) / 1000) * 0.001;
          if (v91 && !atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v91->__on_zero_shared)(v91);
            std::__shared_weak_count::__release_weak(v91);
          }

          goto LABEL_194;
        }
      }

LABEL_264:
      ++v879;
    }

    while (v879 != v169);
    v185 = *a2;
  }

  v229 = *(v185 + 2008);
  v230 = *(v185 + 2016);
  if (*(v185 + 2008))
  {
    v231 = geo::codec::zone_mallocator::instance(v183);
    v232 = pthread_rwlock_rdlock((v231 + 32));
    if (v232)
    {
      geo::read_write_lock::logFailure(v232, "read lock", v233);
    }

    if (v230)
    {
      atomic_fetch_add((v231 + 24), 0xFFFFFFFF);
    }

    v230 = malloc_type_zone_realloc(*v231, v230, 16 * v229, 0x102004052B98188uLL);
    atomic_fetch_add((v231 + 24), 1u);
    v183 = pthread_rwlock_unlock((v231 + 32));
    if (v183)
    {
      geo::read_write_lock::logFailure(v183, "unlock", v234);
    }
  }

  else
  {
    if (!v230)
    {
      goto LABEL_284;
    }

    v237 = geo::codec::zone_mallocator::instance(v183);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciExplicitTextureMappingData>(v237, v230);
    v230 = 0;
  }

  v185 = *a2;
  *(*a2 + 2016) = v230;
LABEL_284:
  v238 = *(v185 + 2024);
  v239 = *(v185 + 2032);
  if (*(v185 + 2024))
  {
    v240 = geo::codec::zone_mallocator::instance(v183);
    v241 = pthread_rwlock_rdlock((v240 + 32));
    if (v241)
    {
      geo::read_write_lock::logFailure(v241, "read lock", v242);
    }

    if (v239)
    {
      atomic_fetch_add((v240 + 24), 0xFFFFFFFF);
    }

    v243 = malloc_type_zone_realloc(*v240, v239, 24 * v238, 0x1000040BC215626uLL);
    atomic_fetch_add((v240 + 24), 1u);
    v244 = pthread_rwlock_unlock((v240 + 32));
    if (v244)
    {
      geo::read_write_lock::logFailure(v244, "unlock", v245);
    }

    v246 = 2032;
    goto LABEL_294;
  }

  if (v239)
  {
    v247 = geo::codec::zone_mallocator::instance(v183);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciExplicitTextureMappingData>(v247, v230);
    v243 = 0;
    v246 = 2016;
LABEL_294:
    *(*a2 + v246) = v243;
  }

  if ((*(v7 + 24) & 7) != 0)
  {
    v248 = *(v7 + 48) + (*(v7 + 24) >> 3) + 1;
  }

  else
  {
    v248 = *(v7 + 48) + (*(v7 + 24) >> 3);
  }

  *(v7 + 48) = v248;
  *(v7 + 32) = 0;
  v249 = *a2;
  v990 = 0x100000004;
  v993 = &v990;
  std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v249 + 1920), &v990, &v993)[3] = (v248 - v934);
  v250 = std::chrono::steady_clock::now().__d_.__rep_;
  v977 = 0x100000004;
  *buf = &v977;
  v251 = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v89 + 1920), &v977, buf);
  v251[4] = ((v250 - v942) / 1000) * 0.001;
  if (v91 && !atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v91->__on_zero_shared)(v91);
    std::__shared_weak_count::__release_weak(v91);
  }

  v252 = *(v7 + 48);
  v253 = *(v7 + 56);
  v254 = v252 + 4;
  if (v252 + 4 > v253)
  {
    v102 = *MEMORY[0x1E69E9848];
    v103 = 8105;
    goto LABEL_105;
  }

  v255 = *(v7 + 40);
  *(*a2 + 2040) = *(v255 + v252);
  *(v7 + 48) = v254;
  v256 = v252 + 8;
  if (v252 + 8 > v253)
  {
    v102 = *MEMORY[0x1E69E9848];
    v103 = 8106;
    goto LABEL_105;
  }

  v935 = *(v255 + v254);
  *(v7 + 48) = v256;
  if (*(v7 + 64) < 0x16u)
  {
    v262 = 0;
  }

  else
  {
    v257 = v252 + 12;
    if (v252 + 12 > v253)
    {
      v102 = *MEMORY[0x1E69E9848];
      v103 = 8108;
      goto LABEL_105;
    }

    v262 = *(v255 + v256);
    *(v7 + 48) = v257;
  }

  v264 = (v935 + *(*a2 + 2040) + v262);
  *(*a2 + 2056) = v264;
  v265 = geo::codec::zone_mallocator::instance(v251);
  v266 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::callocate<unsigned short>(v265, v264);
  v267 = *a2;
  *(*a2 + 2048) = v266;
  v91 = a2[1];
  if (v91)
  {
    atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v268.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v269 = *(v7 + 48);
  v270 = *a2;
  v271 = *(*a2 + 2040);
  if (v271)
  {
    v272 = 0;
    v273 = *(v7 + 56);
    v274 = 2 * v271;
    v275 = *(v7 + 48);
    while (1)
    {
      v276 = v275 + 2;
      if (v275 + 2 > v273)
      {
        break;
      }

      *(*(v270 + 2048) + v272) = *(*(v7 + 40) + v275);
      *(v7 + 48) = v276;
      v272 += 2;
      v275 += 2;
      if (v274 == v272)
      {
        goto LABEL_332;
      }
    }

    fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 8118);
    v291 = std::chrono::steady_clock::now().__d_.__rep_;
    v977 = 0x100000008;
    *buf = &v977;
    v10.__d_.__rep_ = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v267 + 1920), &v977, buf);
    v236 = ((v291 - v268.__d_.__rep_) / 1000);
LABEL_278:
    *(v10.__d_.__rep_ + 32) = v236 * 0.001;
    rep = v943;
    v9 = v944;
    if (v91 && !atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v91->__on_zero_shared)(v91);
      std::__shared_weak_count::__release_weak(v91);
    }

    goto LABEL_27;
  }

  v276 = *(v7 + 48);
LABEL_332:
  v990 = 0x100000008;
  v993 = &v990;
  std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v270 + 1920), &v990, &v993)[3] = (v276 - v269);
  v277 = std::chrono::steady_clock::now().__d_.__rep_;
  v977 = 0x100000008;
  *buf = &v977;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v267 + 1920), &v977, buf) + 4) = ((v277 - v268.__d_.__rep_) / 1000) * 0.001;
  if (v91 && !atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v91->__on_zero_shared)(v91);
    std::__shared_weak_count::__release_weak(v91);
  }

  v969 = 0;
  v968 = 0;
  v970 = 0;
  Materials = geo::codec::_readMaterials(v7, &v968, &v971, &v974, *a2 + 1120, 0);
  if ((Materials & 1) == 0)
  {
    v10.__d_.__rep_ = fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 8124);
    v289 = v968;
    if (v968)
    {
      goto LABEL_339;
    }

    goto LABEL_194;
  }

  v279 = v968;
  v280 = v969 - v968;
  *(*a2 + 2760) = (v969 - v968) >> 3;
  v281 = geo::codec::zone_mallocator::instance(Materials);
  v282 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long long>(v281, (v280 >> 3));
  v283 = *a2;
  *(v283 + 2784) = v282;
  memcpy(v282, v279, 8 * *(v283 + 2760));
  v284 = *(v7 + 48);
  v285 = *(v7 + 56);
  v286 = v284 + 2;
  if (v284 + 2 > v285)
  {
    v287 = *MEMORY[0x1E69E9848];
    v288 = 8131;
LABEL_351:
    v10.__d_.__rep_ = fprintf(v287, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v288);
    goto LABEL_352;
  }

  v292 = *(v7 + 40);
  v293 = *(v292 + v284);
  *(v7 + 48) = v286;
  v882 = v293;
  *(*a2 + 2060) = v293;
  v294 = v284 + 4;
  if (v284 + 4 > v285)
  {
    v287 = *MEMORY[0x1E69E9848];
    v288 = 8134;
    goto LABEL_351;
  }

  v875 = *(v292 + v286);
  *(v7 + 48) = v294;
  v295 = v284 + 6;
  if (v284 + 6 > v285)
  {
    v287 = *MEMORY[0x1E69E9848];
    v288 = 8135;
    goto LABEL_351;
  }

  v296 = *(v292 + v294);
  *(v7 + 48) = v295;
  if (*(v7 + 64) < 0x16u)
  {
    v298 = 0;
  }

  else
  {
    v297 = v284 + 8;
    if (v297 > v285)
    {
      v287 = *MEMORY[0x1E69E9848];
      v288 = 8137;
      goto LABEL_351;
    }

    v298 = *(v292 + v295);
    *(v7 + 48) = v297;
  }

  v300 = *a2;
  v299 = a2[1];
  if (v299)
  {
    atomic_fetch_add_explicit(&v299->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v912.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v899 = *(v7 + 48);
  v301 = geo::codec::zone_mallocator::instance(v912.__d_.__rep_);
  v302 = pthread_rwlock_rdlock((v301 + 32));
  v304 = v296 + v298;
  if (v302)
  {
    geo::read_write_lock::logFailure(v302, "read lock", v303);
  }

  v305 = malloc_type_zone_calloc(*v301, v875 + v882 + v304, 0x50uLL, 0x1090040C8F67F02uLL);
  atomic_fetch_add((v301 + 24), 1u);
  v306 = pthread_rwlock_unlock((v301 + 32));
  if (v306)
  {
    geo::read_write_lock::logFailure(v306, "unlock", v307);
  }

  v308 = *a2;
  *(*a2 + 2064) = v305;
  v309 = *(v7 + 48);
  if (v882)
  {
    v310 = 0;
    v311 = *(v7 + 56);
    while (1)
    {
      if (v309 + 1 > v311)
      {
        v370 = 8149;
LABEL_454:
        fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v370);
        v371.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        v977 = 0x100000005;
        *buf = &v977;
        v10.__d_.__rep_ = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v300 + 1920), &v977, buf);
        v372 = v912.__d_.__rep_;
LABEL_455:
        v373 = v371.__d_.__rep_ - v372;
        goto LABEL_456;
      }

      v313 = *(*(v7 + 40) + v309);
      v314 = v308[258] + 80 * v310;
      *v314 = v313;
      v315 = *(v7 + 48);
      *(v7 + 48) = v315 + 1;
      if (v313 > 3)
      {
        v370 = 8150;
        goto LABEL_454;
      }

      v316 = v315 + 2;
      v311 = *(v7 + 56);
      if (v315 + 2 > v311)
      {
        v370 = 8152;
        goto LABEL_454;
      }

      v317 = *(v7 + 40);
      v318 = *(v317 + v315 + 1);
      *(v7 + 48) = v316;
      if (v318 > 1)
      {
        v370 = 8153;
        goto LABEL_454;
      }

      *(v314 + 24) = v318;
      v319 = v315 + 6;
      if (v315 + 6 > v311)
      {
        v370 = 8155;
        goto LABEL_454;
      }

      v320 = *(v317 + v316);
      *(v314 + 4) = v320;
      *(v7 + 48) = v319;
      v321 = *a2;
      if (v320 >= *(*a2 + 1968))
      {
        v370 = 8156;
        goto LABEL_454;
      }

      v322 = v315 + 10;
      if (v315 + 10 > v311)
      {
        v370 = 8157;
        goto LABEL_454;
      }

      v323 = *(v317 + v319);
      *(v314 + 12) = v323;
      *(v7 + 48) = v322;
      if (v323 >= *(v321 + 2040))
      {
        v370 = 8158;
        goto LABEL_454;
      }

      v309 = v315 + 14;
      if (v315 + 14 > v311)
      {
        v370 = 8159;
        goto LABEL_454;
      }

      v324 = *(v317 + v322);
      *(v314 + 16) = v324;
      *(v7 + 48) = v309;
      v325 = (v324 + v323);
      v308 = *a2;
      if (v325 > *(*a2 + 2040))
      {
        v370 = 8160;
        goto LABEL_454;
      }

      v326 = v308[256];
      if ((v313 | 2) == 3)
      {
        break;
      }

      if (v323 >= v325)
      {
        goto LABEL_367;
      }

      v331 = v325 - v323;
      if ((v325 - v323) <= 3)
      {
        LOWORD(v312) = 0;
        goto LABEL_402;
      }

      if (v331 >= 0x10)
      {
        v332 = v331 & 0xFFFFFFFFFFFFFFF0;
        v333 = (v326 + 2 * v323 + 16);
        v334 = 0uLL;
        v335 = v331 & 0xFFFFFFFFFFFFFFF0;
        v336 = 0uLL;
        do
        {
          v334 = vmaxq_u16(v334, v333[-1]);
          v336 = vmaxq_u16(v336, *v333);
          v333 += 2;
          v335 -= 16;
        }

        while (v335);
        v337 = vmaxq_u16(v334, v336);
        v337.i16[0] = vmaxvq_u16(v337);
        v312 = v337.i32[0];
        if (v331 == v332)
        {
          goto LABEL_368;
        }

        if ((v331 & 0xC) == 0)
        {
          v323 += v332;
LABEL_402:
          v343 = v325 - v323;
          v344 = (v326 + 2 * v323);
          do
          {
            v346 = *v344++;
            v345 = v346;
            if (v312 <= v346)
            {
              LOWORD(v312) = v345;
            }

            --v343;
          }

          while (v343);
          goto LABEL_368;
        }
      }

      else
      {
        v312 = 0;
        v332 = 0;
      }

      v338 = v331 & 0xFFFFFFFFFFFFFFFCLL;
      v339 = vdup_n_s16(v312);
      v340 = v332 - (v331 & 0xFFFFFFFFFFFFFFFCLL);
      v341 = (v326 + 2 * v332 + 2 * v323);
      do
      {
        v342 = *v341++;
        v339 = vmax_u16(v339, v342);
        v340 += 4;
      }

      while (v340);
      LOWORD(v312) = vmaxv_u16(v339);
      if (v331 != v338)
      {
        v323 += v338;
        goto LABEL_402;
      }

LABEL_368:
      *(v314 + 8) = v312 + 1;
      *(v314 + 32) = 0;
      *(v314 + 40) = 0;
      *(v314 + 48) = 0;
      *(v314 + 56) = 0;
      if (++v310 == v882)
      {
        goto LABEL_407;
      }
    }

    if (v323 < v325)
    {
      LOWORD(v312) = 0;
      v327 = v325 - v323;
      v328 = (v326 + 2 * v323);
      do
      {
        v330 = *v328++;
        v329 = v330;
        if (v330 == 0xFFFF)
        {
          v329 = v312;
        }

        if (v312 <= v329)
        {
          LOWORD(v312) = v329;
        }

        --v327;
      }

      while (v327);
      goto LABEL_368;
    }

LABEL_367:
    LOWORD(v312) = 0;
    goto LABEL_368;
  }

LABEL_407:
  v990 = 0x100000005;
  v993 = &v990;
  std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>(v308 + 240, &v990, &v993)[3] = (v309 - v899);
  v347 = std::chrono::steady_clock::now().__d_.__rep_;
  v977 = 0x100000005;
  *buf = &v977;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v300 + 1920), &v977, buf) + 4) = ((v347 - v912.__d_.__rep_) / 1000) * 0.001;
  if (v299 && !atomic_fetch_add(&v299->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v299->__on_zero_shared)(v299);
    std::__shared_weak_count::__release_weak(v299);
  }

  if (!v875)
  {
    goto LABEL_432;
  }

  LODWORD(v967) = 0;
  v978 = 0;
  v977 = 0;
  v979 = 0;
  v993 = 0;
  v994 = 0;
  v995 = 0;
  v990 = 0;
  v991 = 0;
  v992 = 0;
  std::chrono::steady_clock::now();
  v872 = *a2;
  v874 = a2[1];
  if (v874)
  {
    atomic_fetch_add_explicit(&v874->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v871.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v876 = 0;
  v873 = 0;
  v870 = *(v7 + 48);
  while (1)
  {
    v348 = *(*a2 + 2064);
    ++*(*a2 + 2060);
    v349 = *(v7 + 48);
    v350 = *(v7 + 56);
    v351 = v349 + 4;
    if (v349 + 4 > v350)
    {
      v375 = 8208;
LABEL_421:
      fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v375);
      v356 = 0;
      v357 = 6;
      goto LABEL_422;
    }

    v352 = *(v7 + 40);
    v880 = *(v352 + v349);
    *(v7 + 48) = v351;
    v353 = v349 + 8;
    if (v353 > v350)
    {
      v375 = 8209;
      goto LABEL_421;
    }

    v354 = *(v352 + v351);
    *(v7 + 48) = v353;
    v355 = v348 + 80 * v882 + 80 * v876;
    *v355 = 0;
    *(v355 + 24) = 0;
    *(v355 + 4) = v880;
    *(v355 + 12) = v354;
    *(v355 + 32) = 0;
    *(v355 + 40) = 0;
    *(v355 + 48) = 0;
    *(v355 + 56) = 0;
    if (!geo::codec::chapterReadVarUint32(v7, &v967))
    {
      v375 = 8220;
      goto LABEL_421;
    }

    ++v876;
    if (v967)
    {
      break;
    }

    if (++v873 >= v875)
    {
      v376 = *(v7 + 48);
      v377 = *a2;
      v961 = 0x100000003;
      v966 = &v961;
      v357 = 0;
      std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v377 + 1920), &v961, &v966)[3] = (v376 - v870);
      v356 = 1;
      goto LABEL_422;
    }
  }

  if (*(v7 + 48) + v967 <= *(v7 + 56))
  {
    operator new();
  }

  v356 = 0;
  v357 = 1;
LABEL_422:
  v358 = std::chrono::steady_clock::now().__d_.__rep_;
  *v986 = 0x100000003;
  *buf = v986;
  v10.__d_.__rep_ = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v872 + 1920), v986, buf);
  *(v10.__d_.__rep_ + 32) = ((v358 - v871.__d_.__rep_) / 1000) * 0.001;
  if (v874 && !atomic_fetch_add(&v874->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v874->__on_zero_shared)(v874);
    std::__shared_weak_count::__release_weak(v874);
  }

  v359 = v990;
  if (v990)
  {
    v991 = v990;
    v360 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<int>(v360, v359);
  }

  v361 = v993;
  if (v993)
  {
    v994 = v993;
    v362 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<int,3,1>>(v362, v361);
  }

  v363 = v977;
  if (v977)
  {
    v978 = v977;
    v364 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<int,3,1>>(v364, v363);
  }

  if ((v356 & 1) == 0)
  {
    goto LABEL_439;
  }

LABEL_432:
  v365 = *a2;
  v936 = *(*a2 + 2040) + v935;
  *(*a2 + 2040) = v936;
  if (*(v7 + 64) < 0x16u)
  {
    goto LABEL_469;
  }

  v961 = 0;
  v10.__d_.__rep_ = geo::codec::chapterReadVarInt64(v7, &v961);
  if ((v10.__d_.__rep_ & 1) == 0)
  {
    v366 = *MEMORY[0x1E69E9848];
    v367 = 8366;
LABEL_438:
    v10.__d_.__rep_ = fprintf(v366, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v367);
    v357 = 6;
    goto LABEL_439;
  }

  if (v961)
  {
    if ((*(v7 + 48) + v961) <= *(v7 + 56))
    {
      v878 = a2[1];
      if (v878)
      {
        atomic_fetch_add_explicit((v878 + 8), 1uLL, memory_order_relaxed);
      }

      std::chrono::steady_clock::now();
      operator new();
    }

    v357 = 1;
    goto LABEL_439;
  }

  v365 = *a2;
LABEL_469:
  *(v365 + 2040) = v936;
  *(v365 + 1968) += v920;
  v937 = a2[1];
  if (v937)
  {
    atomic_fetch_add_explicit(&v937->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v378.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  __srca = v378.__d_.__rep_;
  v921 = *(v7 + 48);
  if ((v921 + 2) > *(v7 + 56))
  {
    v379 = 8454;
    goto LABEL_473;
  }

  v382 = *&v921[*(v7 + 40)];
  *(v7 + 48) = v921 + 2;
  v383 = *a2;
  v384 = *(*a2 + 2224);
  v385 = *(*a2 + 2216);
  v386 = &v384[-v385];
  v387 = 0x8E38E38E38E38E39 * (&v384[-v385] >> 3);
  v913 = v382;
  v388 = v382 - v387;
  if (v382 <= v387)
  {
    if (v382 >= v387)
    {
      goto LABEL_508;
    }

    for (i = (v385 + 72 * v382); v384 != i; v384 -= 72)
    {
      v409 = *(v384 - 2);
      if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v409->__on_zero_shared)(v409);
        std::__shared_weak_count::__release_weak(v409);
      }
    }

    goto LABEL_504;
  }

  v389 = v383[279];
  if (0x8E38E38E38E38E39 * ((v389 - v384) >> 3) >= v388)
  {
    bzero(v384, 72 * ((72 * v388 - 72) / 0x48) + 72);
    i = &v384[72 * ((72 * v388 - 72) / 0x48) + 72];
LABEL_504:
    v383[278] = i;
    goto LABEL_508;
  }

  v390 = 0x8E38E38E38E38E39 * ((v389 - v385) >> 3);
  v391 = 2 * v390;
  if (2 * v390 <= v382)
  {
    v391 = v382;
  }

  v741 = v390 >= 0x1C71C71C71C71C7;
  v392 = 0x38E38E38E38E38ELL;
  if (!v741)
  {
    v392 = v391;
  }

  v904 = v392;
  v393 = geo::codec::zone_mallocator::instance(v378.__d_.__rep_);
  v394 = pthread_rwlock_rdlock((v393 + 32));
  if (v394)
  {
    geo::read_write_lock::logFailure(v394, "read lock", v395);
  }

  v396 = malloc_type_zone_malloc(*v393, 72 * v904, 0x1060040E140D2E9uLL);
  atomic_fetch_add((v393 + 24), 1u);
  v397 = pthread_rwlock_unlock((v393 + 32));
  if (v397)
  {
    geo::read_write_lock::logFailure(v397, "unlock", v398);
  }

  v399 = &v386[v396];
  v900 = v396 + 72 * v904;
  bzero(v399, 72 * ((72 * v388 - 72) / 0x48) + 72);
  v894 = &v399[72 * ((72 * v388 - 72) / 0x48) + 72];
  v401 = v383[278];
  v402 = v383[277];
  v905 = &v399[v402 - v401];
  if (v401 != v402)
  {
    v403 = v383[277];
    v404 = &v399[v402 - v401];
    do
    {
      v405 = *v403;
      v406 = v403[1];
      *(v404 + 28) = *(v403 + 28);
      *v404 = v405;
      *(v404 + 1) = v406;
      *(v404 + 3) = v403[3];
      *(v403 + 6) = 0;
      *(v403 + 7) = 0;
      *(v404 + 16) = *(v403 + 16);
      v403 = (v403 + 72);
      v404 += 72;
    }

    while (v403 != v401);
    do
    {
      v407 = *(v402 + 7);
      if (v407 && !atomic_fetch_add(&v407->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v407->__on_zero_shared)(v407);
        std::__shared_weak_count::__release_weak(v407);
      }

      v402 += 72;
    }

    while (v402 != v401);
    v402 = v383[277];
  }

  v383[277] = v905;
  v383[278] = v894;
  v383[279] = v900;
  if (v402)
  {
    v410 = geo::codec::zone_mallocator::instance(v400);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciDecal>(v410, v402);
  }

LABEL_508:
  v411 = *(v7 + 48);
  if (v913)
  {
    v412 = 0;
    v413 = *(v7 + 56);
    v914 = 72 * v913;
    while (v411 + 4 <= v413)
    {
      v414 = *(*a2 + 2216);
      *(v414 + v412 + 8) = *(*(v7 + 40) + v411);
      v415 = *(v7 + 48);
      v416 = *(v7 + 56);
      *(v7 + 48) = v415 + 4;
      if (v415 + 8 > v416)
      {
        v379 = 8459;
        goto LABEL_473;
      }

      *(v414 + v412 + 12) = *(*(v7 + 40) + v415 + 4);
      v417 = *(v7 + 48);
      v418 = *(v7 + 56);
      *(v7 + 48) = v417 + 4;
      if (v417 + 8 > v418)
      {
        v379 = 8460;
        goto LABEL_473;
      }

      *(v414 + v412 + 16) = *(*(v7 + 40) + v417 + 4);
      v419 = *(v7 + 48);
      v420 = *(v7 + 56);
      *(v7 + 48) = v419 + 4;
      if (v419 + 8 > v420)
      {
        v379 = 8461;
        goto LABEL_473;
      }

      *(v414 + v412 + 20) = *(*(v7 + 40) + v419 + 4);
      v421 = *(v7 + 48);
      v422 = *(v7 + 56);
      *(v7 + 48) = v421 + 4;
      if (v421 + 8 > v422)
      {
        v379 = 8462;
        goto LABEL_473;
      }

      *(v414 + v412 + 24) = *(*(v7 + 40) + v421 + 4);
      v423 = *(v7 + 48);
      v424 = *(v7 + 56);
      *(v7 + 48) = v423 + 4;
      if (v423 + 8 > v424)
      {
        v379 = 8463;
        goto LABEL_473;
      }

      *(v414 + v412 + 28) = *(*(v7 + 40) + v423 + 4);
      v425 = *(v7 + 48);
      v426 = *(v7 + 56);
      *(v7 + 48) = v425 + 4;
      if (v425 + 8 > v426)
      {
        v379 = 8464;
        goto LABEL_473;
      }

      *(v414 + v412 + 32) = *(*(v7 + 40) + v425 + 4);
      v427 = *(v7 + 48);
      v428 = *(v7 + 56);
      *(v7 + 48) = v427 + 4;
      if (v427 + 8 > v428)
      {
        v379 = 8465;
        goto LABEL_473;
      }

      *(v414 + v412 + 36) = *(*(v7 + 40) + v427 + 4);
      v429 = *(v7 + 48);
      v430 = *(v7 + 56);
      *(v7 + 48) = v429 + 4;
      if (v429 + 8 > v430)
      {
        v379 = 8466;
        goto LABEL_473;
      }

      *(v414 + v412 + 40) = *(*(v7 + 40) + v429 + 4);
      v431 = *(v7 + 48);
      v432 = *(v7 + 56);
      v433 = v431 + 4;
      *(v7 + 48) = v431 + 4;
      if (*(v7 + 64) <= 0xFu)
      {
        v458 = v431 + 12;
        if (v431 + 12 <= v432)
        {
          *(v414 + v412) = *(*(v7 + 40) + v433);
          v470 = v431 + 14;
          v471 = v431 + 14 > v432;
          if (v431 + 14 > v432)
          {
            v379 = 8470;
          }

          else
          {
            v379 = 8471;
          }

          if (v471)
          {
            v470 = v458;
          }

          *(v7 + 48) = v470;
        }

        else
        {
          v379 = 8468;
        }

        goto LABEL_473;
      }

      v434 = v431 + 6;
      if (v434 > v432)
      {
        v379 = 8477;
        goto LABEL_473;
      }

      v435 = *(*(v7 + 40) + v433);
      *(v7 + 48) = v434;
      v436 = v971;
      v437 = *(*a2 + 1144);
      v438 = *(v437 + 16 * v974[v435]);
      v439 = *(v437 + 16 * v974[v435] + 8);
      if (v439)
      {
        atomic_fetch_add_explicit((v439 + 8), 1uLL, memory_order_relaxed);
      }

      v440 = *(v414 + v412 + 56);
      *(v414 + v412 + 48) = v438;
      if (v440 && !atomic_fetch_add(&v440->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v440->__on_zero_shared)(v440);
        std::__shared_weak_count::__release_weak(v440);
      }

      v441 = &v436[16 * v435];
      if ((v441[8] & 1) == 0)
      {
        v441 = *v441;
      }

      *(v414 + v412) = *v441;
      v442 = *(v7 + 48);
      v413 = *(v7 + 56);
      v443 = v442 + 2;
      if (v442 + 2 > v413)
      {
        v379 = 8488;
        goto LABEL_473;
      }

      v444 = *(v7 + 40);
      *(v414 + v412 + 66) = *(v444 + v442);
      *(v7 + 48) = v443;
      v411 = v442 + 4;
      if (v442 + 4 > v413)
      {
        v379 = 8489;
        goto LABEL_473;
      }

      *(v414 + v412 + 64) = *(v444 + v443);
      *(v7 + 48) = v411;
      v412 += 72;
      if (v914 == v412)
      {
        goto LABEL_531;
      }
    }

    v379 = 8458;
LABEL_473:
    fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v379);
    v380.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v977 = 0x100000006;
    *buf = &v977;
    v10.__d_.__rep_ = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v365 + 1920), &v977, buf);
    goto LABEL_474;
  }

LABEL_531:
  v445 = *a2;
  v990 = 0x100000006;
  v993 = &v990;
  std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v445 + 1920), &v990, &v993)[3] = (v411 - v921);
  v446 = std::chrono::steady_clock::now().__d_.__rep_;
  v977 = 0x100000006;
  *buf = &v977;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v365 + 1920), &v977, buf) + 4) = ((v446 - __srca) / 1000) * 0.001;
  if (v937 && !atomic_fetch_add(&v937->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v937->__on_zero_shared)(v937);
    std::__shared_weak_count::__release_weak(v937);
  }

  v447 = *a2;
  v299 = a2[1];
  if (v299)
  {
    atomic_fetch_add_explicit(&v299->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v448.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v449 = v448.__d_.__rep_;
  v451 = *(v7 + 48);
  v450 = *(v7 + 56);
  v452 = v451 + 4;
  if (v451 + 4 > v450)
  {
    v453 = 8498;
    goto LABEL_582;
  }

  v454 = *(v7 + 40);
  *(*a2 + 2264) = *(v454 + v451);
  *(v7 + 48) = v452;
  v455 = v451 + 8;
  if (v451 + 8 > v450)
  {
    v453 = 8499;
    goto LABEL_582;
  }

  v456 = *a2;
  v457 = *(v454 + v452);
  *(v456 + 2268) = v457;
  *(v7 + 48) = v455;
  if ((v457 + *(v456 + 2264)) > *(v456 + 1968))
  {
    v453 = 8500;
    goto LABEL_582;
  }

  if (v451 + 10 > v450)
  {
    v453 = 8503;
    goto LABEL_582;
  }

  *(v456 + 2304) = *(v454 + v455);
  *(v7 + 48) = v451 + 10;
  v459 = *(*a2 + 2304);
  v460 = geo::codec::zone_mallocator::instance(v448.__d_.__rep_);
  v461 = pthread_rwlock_rdlock((v460 + 32));
  if (v461)
  {
    geo::read_write_lock::logFailure(v461, "read lock", v462);
  }

  v463 = malloc_type_zone_malloc(*v460, 8 * v459, 0x1000040789AEA99uLL);
  atomic_fetch_add((v460 + 24), 1u);
  v464 = pthread_rwlock_unlock((v460 + 32));
  if (v464)
  {
    geo::read_write_lock::logFailure(v464, "unlock", v465);
  }

  v466 = *a2;
  *(v466 + 2312) = v463;
  v468 = *(v7 + 48);
  v467 = *(v7 + 56);
  if (*(v466 + 2304))
  {
    v466 = *a2;
    *v463 = 0;
    v469 = v468 + 2;
    if (v468 + 2 > v467)
    {
      goto LABEL_564;
    }

    v472 = *(*(v7 + 40) + v468);
    v463[2] = v472;
    *(v7 + 48) = v469;
    if (*(v466 + 2268) < v472)
    {
LABEL_572:
      v453 = 8510;
      goto LABEL_582;
    }

    if (*(v466 + 2304) >= 2u)
    {
      v473 = (*(v466 + 2312) + 12);
      v474 = 1;
      while (1)
      {
        *(v473 - 1) = v472;
        v468 = v469 + 2;
        if (v469 + 2 > v467)
        {
          break;
        }

        v475 = *(*(v7 + 40) + v469);
        *v473 = v475;
        *(v7 + 48) = v468;
        v472 += v475;
        if (v472 > *(v466 + 2268))
        {
          goto LABEL_572;
        }

        ++v474;
        v473 += 4;
        v469 = v468;
        if (v474 >= *(v466 + 2304))
        {
          goto LABEL_580;
        }
      }

LABEL_564:
      v453 = 8508;
      goto LABEL_582;
    }

    v468 += 2;
  }

LABEL_580:
  if (v468 + 2 > v467)
  {
    v453 = 8514;
    goto LABEL_582;
  }

  *(v466 + 2320) = *(*(v7 + 40) + v468);
  *(v7 + 48) = v468 + 2;
  v477 = *(*a2 + 2320);
  v478 = geo::codec::zone_mallocator::instance(v464);
  v479 = pthread_rwlock_rdlock((v478 + 32));
  if (v479)
  {
    geo::read_write_lock::logFailure(v479, "read lock", v480);
  }

  v481 = malloc_type_zone_malloc(*v478, 20 * v477, 0x1000040192DCAC0uLL);
  atomic_fetch_add((v478 + 24), 1u);
  v482 = pthread_rwlock_unlock((v478 + 32));
  if (v482)
  {
    geo::read_write_lock::logFailure(v482, "unlock", v483);
  }

  v484 = *a2;
  *(v484 + 2328) = v481;
  v485 = *(v7 + 48);
  v486 = *(v7 + 56);
  if (*(v484 + 2320))
  {
    v487 = 0;
    v488 = 0;
    v489 = 0;
    do
    {
      v490 = v485 + 1;
      if (v485 + 1 > v486)
      {
        v453 = 8519;
        goto LABEL_582;
      }

      v491 = *(v484 + 2328);
      v492 = *(v7 + 40);
      v493 = *(v492 + v485);
      *(v7 + 48) = v490;
      *(v491 + v487) = v493 != 0;
      v494 = v485 + 2;
      if (v485 + 2 > v486)
      {
        v453 = 8521;
        goto LABEL_582;
      }

      v495 = *(v492 + v490);
      *(v7 + 48) = v494;
      v496 = v491 + v487;
      *(v491 + v487 + 1) = v495;
      if (v485 + 6 > v486)
      {
        v453 = 8523;
        goto LABEL_582;
      }

      *(v496 + 4) = *(v492 + v494);
      v497 = *(v7 + 48);
      v498 = v497 + 4;
      *(v7 + 48) = v497 + 4;
      *(v496 + 12) = v489;
      v485 = v497 + 6;
      v486 = *(v7 + 56);
      if (v485 > v486)
      {
        v453 = 8525;
        goto LABEL_582;
      }

      v499 = *(*(v7 + 40) + v498);
      *(v491 + v487 + 16) = v499;
      *(v7 + 48) = v485;
      v489 += v499 + 1;
      v484 = *a2;
      if (*(*a2 + 2304) < v489)
      {
        v453 = 8527;
        goto LABEL_582;
      }

      ++v488;
      v487 += 20;
    }

    while (v488 < *(v484 + 2320));
  }

  if (v485 + 2 > v486)
  {
    v453 = 8532;
    goto LABEL_582;
  }

  v500 = *(*(v7 + 40) + v485);
  *(v7 + 48) = v485 + 2;
  v501 = *(*a2 + 2344);
  __srcb = *a2;
  v502 = *(*a2 + 2336);
  v503 = 0xCCCCCCCCCCCCCCCDLL * ((v501 - v502) >> 3);
  v922 = v500;
  v504 = v500 - v503;
  if (v500 <= v503)
  {
    if (v500 < v503)
    {
      v505 = v502 + 40 * v500;
      v938 = v505;
      while (v501 != v505)
      {
        v506 = *(v501 - 32);
        if (v506 && !atomic_fetch_add(&v506->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v506->__on_zero_shared)(v506, v504);
          std::__shared_weak_count::__release_weak(v506);
        }

        v501 -= 40;
        v505 = v938;
      }

      *(__srcb + 293) = v938;
    }
  }

  else
  {
    std::vector<GeoCodecsDaVinciBuilding,geo::allocator_adapter<GeoCodecsDaVinciBuilding,geo::codec::zone_mallocator>>::__append(__srcb + 292, v504);
  }

  v507 = *a2;
  v508 = *(v7 + 48);
  if (v922)
  {
    v509 = 0;
    __srcc = 0;
    v510 = *(v7 + 56);
    v906 = 40 * v922;
    while (1)
    {
      v511 = v508 + 8;
      if (v508 + 8 > v510)
      {
        v453 = 8538;
        goto LABEL_582;
      }

      v939 = *(v507 + 2336);
      v512 = *(v7 + 40);
      *(v939 + v509 + 24) = *(v512 + v508);
      *(v7 + 48) = v511;
      if (v508 + 10 > v510)
      {
        v453 = 8541;
        goto LABEL_582;
      }

      v513 = *(v512 + v511);
      *(v7 + 48) = v508 + 10;
      v915 = v971;
      v923 = v513;
      v514 = v974[v513];
      v515 = *(*a2 + 1144);
      v516 = *(v515 + 16 * v514);
      v517 = *(v515 + 16 * v514 + 8);
      if (v517)
      {
        atomic_fetch_add_explicit((v517 + 8), 1uLL, memory_order_relaxed);
      }

      v518 = *(v939 + v509 + 8);
      *(v939 + v509) = v516;
      if (v518 && !atomic_fetch_add(&v518->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v518->__on_zero_shared)(v518);
        std::__shared_weak_count::__release_weak(v518);
      }

      v519 = &v915[16 * v923];
      if ((v519[8] & 1) == 0)
      {
        v519 = *v519;
      }

      v520 = *v519;
      v521 = v939 + v509;
      *(v521 + 16) = v520;
      *(v521 + 32) = __srcc;
      v522 = *(v7 + 48);
      v510 = *(v7 + 56);
      v508 = v522 + 2;
      if (v522 + 2 > v510)
      {
        v453 = 8552;
        goto LABEL_582;
      }

      v523 = *(*(v7 + 40) + v522);
      *(v521 + 34) = v523;
      *(v7 + 48) = v508;
      v507 = *a2;
      __srcc += v523;
      if (*(*a2 + 2320) < __srcc)
      {
        break;
      }

      *(v939 + v509 + 36) = 0;
      v509 += 40;
      if (v906 == v509)
      {
        goto LABEL_627;
      }
    }

    v453 = 8554;
LABEL_582:
    fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v453);
    v476.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v977 = 0x100000001;
    *buf = &v977;
    v10.__d_.__rep_ = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v447 + 1920), &v977, buf);
LABEL_583:
    v373 = v476.__d_.__rep_ - v449;
LABEL_456:
    *(v10.__d_.__rep_ + 32) = (v373 / 1000) * 0.001;
    if (v299 && !atomic_fetch_add(&v299->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v299->__on_zero_shared)(v299);
      v374 = v299;
      goto LABEL_459;
    }

    goto LABEL_352;
  }

LABEL_627:
  v990 = 0x100000001;
  v993 = &v990;
  std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v507 + 1920), &v990, &v993)[3] = (v508 - v451);
  v524 = std::chrono::steady_clock::now().__d_.__rep_;
  v977 = 0x100000001;
  *buf = &v977;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v447 + 1920), &v977, buf) + 4) = ((v524 - v449) / 1000) * 0.001;
  if (v299 && !atomic_fetch_add(&v299->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v299->__on_zero_shared)(v299);
    std::__shared_weak_count::__release_weak(v299);
  }

  v525 = *(v7 + 48);
  v526 = *a2;
  v299 = a2[1];
  if (v299)
  {
    atomic_fetch_add_explicit(&v299->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v449 = std::chrono::steady_clock::now().__d_.__rep_;
  v528 = *(v7 + 48);
  v527 = *(v7 + 56);
  v529 = v528 + 2;
  if (v528 + 2 > v527)
  {
    v530 = 8568;
    goto LABEL_634;
  }

  v531 = *(v7 + 40);
  v532 = *(v531 + v528);
  *(v7 + 48) = v529;
  if (v532)
  {
    v533 = 0;
    while (1)
    {
      v534 = v529 + 2;
      if (v529 + 2 > v527)
      {
        v530 = 8571;
        goto LABEL_634;
      }

      *(v7 + 48) = v534;
      v535 = v529 + 6;
      if (v529 + 6 > v527)
      {
        v530 = 8573;
        goto LABEL_634;
      }

      v536 = *(v531 + v534);
      *(v7 + 48) = v535;
      if (v536)
      {
        if (v529 + 14 > v527)
        {
          goto LABEL_763;
        }

        *(v7 + 48) = v529 + 14;
        if (v529 + 16 > v527)
        {
LABEL_764:
          v530 = 8578;
          goto LABEL_634;
        }

        *(v7 + 48) = v529 + 16;
        v535 = v529 + 18;
        if (v529 + 18 > v527)
        {
LABEL_765:
          v530 = 8580;
          goto LABEL_634;
        }

        *(v7 + 48) = v535;
        v537 = v536 - 1;
        if (v536 != 1)
        {
          break;
        }
      }

LABEL_637:
      ++v533;
      v529 = v535;
      if (v533 >= v532)
      {
        goto LABEL_655;
      }
    }

    while (v535 + 8 <= v527)
    {
      *(v7 + 48) = v535 + 8;
      if (v535 + 10 > v527)
      {
        goto LABEL_764;
      }

      *(v7 + 48) = v535 + 10;
      v535 += 12;
      if (v535 > v527)
      {
        goto LABEL_765;
      }

      *(v7 + 48) = v535;
      if (!--v537)
      {
        goto LABEL_637;
      }
    }

LABEL_763:
    v530 = 8576;
LABEL_634:
    fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v530);
    v476.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v977 = 0x10000000ALL;
    *buf = &v977;
    v10.__d_.__rep_ = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v526 + 1920), &v977, buf);
    goto LABEL_583;
  }

  v535 = v529;
LABEL_655:
  v538 = *a2;
  v990 = 0x10000000ALL;
  v993 = &v990;
  std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v538 + 1920), &v990, &v993)[3] = (v535 - v525);
  v539 = std::chrono::steady_clock::now().__d_.__rep_;
  v977 = 0x10000000ALL;
  *buf = &v977;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v526 + 1920), &v977, buf) + 4) = ((v539 - v449) / 1000) * 0.001;
  if (v299 && !atomic_fetch_add(&v299->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v299->__on_zero_shared)(v299);
    std::__shared_weak_count::__release_weak(v299);
  }

  v924 = *(v7 + 48);
  v299 = a2[1];
  __srcd = *a2;
  if (v299)
  {
    atomic_fetch_add_explicit(&v299->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v540.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v940 = v540.__d_.__rep_;
  v541 = *(v7 + 48);
  if ((v541 + 2) > *(v7 + 56))
  {
    v542 = 8589;
    goto LABEL_826;
  }

  v543 = *(*(v7 + 40) + v541);
  *(*a2 + 2168) = v543;
  *(v7 + 48) = v541 + 2;
  v544 = geo::codec::zone_mallocator::instance(v540.__d_.__rep_);
  v545 = pthread_rwlock_rdlock((v544 + 32));
  if (v545)
  {
    geo::read_write_lock::logFailure(v545, "read lock", v546);
  }

  v547 = malloc_type_zone_malloc(*v544, 56 * v543, 0x1030040578B2853uLL);
  atomic_fetch_add((v544 + 24), 1u);
  v548 = pthread_rwlock_unlock((v544 + 32));
  if (v548)
  {
    geo::read_write_lock::logFailure(v548, "unlock", v549);
  }

  v550 = *a2;
  *(v550 + 2176) = v547;
  if (*(v550 + 2168))
  {
    v916 = 0;
    while (1)
    {
      v551 = *(v7 + 48);
      v552 = *(v7 + 56);
      v553 = v551 + 2;
      if (v551 + 2 > v552)
      {
        v542 = 8594;
        goto LABEL_826;
      }

      v554 = *(v550 + 2176) + 56 * v916;
      v555 = *(v7 + 40);
      v556 = *(v555 + v551);
      *(v554 + 40) = v556;
      *(v7 + 48) = v553;
      v557 = v551 + 4;
      if (v551 + 4 > v552)
      {
        v542 = 8595;
        goto LABEL_826;
      }

      *(v554 + 42) = *(v555 + v553);
      *(v7 + 48) = v557;
      v558 = v551 + 6;
      if (v551 + 6 > v552)
      {
        v542 = 8596;
        goto LABEL_826;
      }

      *(v554 + 44) = *(v555 + v557);
      *(v7 + 48) = v558;
      if (v551 + 7 > v552)
      {
        v542 = 8597;
        goto LABEL_826;
      }

      *(v554 + 48) = *(v555 + v558);
      ++*(v7 + 48);
      v559 = geo::codec::zone_mallocator::instance(v548);
      v560 = pthread_rwlock_rdlock((v559 + 32));
      if (v560)
      {
        geo::read_write_lock::logFailure(v560, "read lock", v561);
      }

      v562 = malloc_type_zone_malloc(*v559, 4 * v556, 0x10000407B5B4437uLL);
      atomic_fetch_add((v559 + 24), 1u);
      v563 = pthread_rwlock_unlock((v559 + 32));
      if (v563)
      {
        geo::read_write_lock::logFailure(v563, "unlock", v564);
      }

      *v554 = v562;
      v565 = *(v7 + 48);
      v566 = *(v7 + 56);
      if (*(v554 + 40))
      {
        v567 = 0;
        v568 = 0;
        do
        {
          if (v565 + 1 > v566)
          {
            v542 = 8602;
            goto LABEL_826;
          }

          v569 = *v554;
          *(*v554 + v567) = *(*(v7 + 40) + v565);
          v570 = *(v7 + 48);
          v566 = *(v7 + 56);
          v571 = v570 + 1;
          *(v7 + 48) = v570 + 1;
          v565 = v570 + 3;
          if (v565 > v566)
          {
            v542 = 8603;
            goto LABEL_826;
          }

          *(v569 + v567 + 2) = *(*(v7 + 40) + v571);
          *(v7 + 48) = v565;
          ++v568;
          v567 += 4;
        }

        while (v568 < *(v554 + 40));
      }

      if (v565 + 2 > v566)
      {
        v542 = 8606;
        goto LABEL_826;
      }

      v572 = *(*(v7 + 40) + v565);
      *(v554 + 46) = v572;
      *(v7 + 48) = v565 + 2;
      v573 = geo::codec::zone_mallocator::instance(v563);
      v574 = pthread_rwlock_rdlock((v573 + 32));
      if (v574)
      {
        geo::read_write_lock::logFailure(v574, "read lock", v575);
      }

      v576 = malloc_type_zone_malloc(*v573, 16 * v572, 0x10200405F07FB98uLL);
      atomic_fetch_add((v573 + 24), 1u);
      v577 = pthread_rwlock_unlock((v573 + 32));
      if (v577)
      {
        geo::read_write_lock::logFailure(v577, "unlock", v578);
      }

      *(v554 + 24) = v576;
      if (*(v554 + 46))
      {
        v579 = 0;
        do
        {
          v580 = *(v7 + 48);
          if ((v580 + 1) > *(v7 + 56))
          {
            v542 = 8610;
            goto LABEL_826;
          }

          v581 = *(v554 + 24) + 16 * v579;
          v582 = *(*(v7 + 40) + v580);
          *(v581 + 8) = v582;
          ++*(v7 + 48);
          v583 = geo::codec::zone_mallocator::instance(v577);
          v584 = pthread_rwlock_rdlock((v583 + 32));
          if (v584)
          {
            geo::read_write_lock::logFailure(v584, "read lock", v585);
          }

          v586 = malloc_type_zone_malloc(*v583, 16 * v582, 0x100004090896170uLL);
          atomic_fetch_add((v583 + 24), 1u);
          v577 = pthread_rwlock_unlock((v583 + 32));
          if (v577)
          {
            geo::read_write_lock::logFailure(v577, "unlock", v587);
          }

          *v581 = v586;
          v588 = *(v581 + 8);
          if (*(v581 + 8))
          {
            v589 = v971;
            v590 = v586 + 8;
            v592 = *(v7 + 48);
            v591 = *(v7 + 56);
            do
            {
              if (v592 + 2 > v591)
              {
                v542 = 8614;
                goto LABEL_826;
              }

              v594 = *(v7 + 40);
              *v590 = *(v594 + v592);
              *(v7 + 48) = v592 + 2;
              v595 = v592 + 4;
              if (v592 + 4 > v591)
              {
                v542 = 8617;
                goto LABEL_826;
              }

              v596 = *(v594 + v592 + 2);
              *(v7 + 48) = v595;
              v597 = &v589[16 * v596];
              if (v597[8] == 1)
              {
                v593 = *v597;
                if (!v593)
                {
                  v542 = 8621;
                  goto LABEL_826;
                }
              }

              else
              {
                v593 = **v597;
                if (!v593)
                {
                  v542 = 8624;
                  goto LABEL_826;
                }
              }

              *(v590 - 1) = v593;
              v590 += 8;
              v592 = v595;
              --v588;
            }

            while (v588);
          }

          ++v579;
        }

        while (v579 < *(v554 + 46));
      }

      v598 = *(v554 + 42);
      v599 = geo::codec::zone_mallocator::instance(v577);
      v600 = pthread_rwlock_rdlock((v599 + 32));
      if (v600)
      {
        geo::read_write_lock::logFailure(v600, "read lock", v601);
      }

      v602 = malloc_type_zone_malloc(*v599, 16 * v598, 0x1010040749D3347uLL);
      atomic_fetch_add((v599 + 24), 1u);
      v603 = pthread_rwlock_unlock((v599 + 32));
      if (v603)
      {
        geo::read_write_lock::logFailure(v603, "unlock", v604);
      }

      *(v554 + 8) = v602;
      if (*(v554 + 42))
      {
        v605 = 0;
        do
        {
          v606 = *(v7 + 48);
          if ((v606 + 2) > *(v7 + 56))
          {
            v542 = 8634;
            goto LABEL_826;
          }

          v607 = *(*(v7 + 40) + v606);
          v608 = (*(v554 + 8) + 16 * v605);
          *v608 = v607;
          *(v7 + 48) = v606 + 2;
          v609 = geo::codec::zone_mallocator::instance(v603);
          v603 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned short>(v609, v607);
          *(v608 + 1) = v603;
          if (*v608)
          {
            v610 = 0;
            v612 = *(v7 + 48);
            v611 = *(v7 + 56);
            do
            {
              if (v612 + 2 > v611)
              {
                v542 = 8637;
                goto LABEL_826;
              }

              *(v603 + v610) = *(*(v7 + 40) + v612);
              *(v7 + 48) = v612 + 2;
              ++v610;
              v612 += 2;
            }

            while (v610 < *v608);
          }

          ++v605;
        }

        while (v605 < *(v554 + 42));
      }

      v613 = *(v554 + 44);
      v614 = geo::codec::zone_mallocator::instance(v603);
      v615 = pthread_rwlock_rdlock((v614 + 32));
      if (v615)
      {
        geo::read_write_lock::logFailure(v615, "read lock", v616);
      }

      v617 = malloc_type_zone_malloc(*v614, 32 * v613, 0x1030040C8647386uLL);
      atomic_fetch_add((v614 + 24), 1u);
      v618 = pthread_rwlock_unlock((v614 + 32));
      if (v618)
      {
        geo::read_write_lock::logFailure(v618, "unlock", v619);
      }

      *(v554 + 16) = v617;
      if (*(v554 + 44))
      {
        break;
      }

LABEL_751:
      v688 = *(v554 + 48);
      v689 = geo::codec::zone_mallocator::instance(v618);
      v548 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned short>(v689, v688);
      *(v554 + 32) = v548;
      v690 = *(v554 + 48);
      if (*(v554 + 48))
      {
        v692 = *(v7 + 48);
        v691 = *(v7 + 56);
        while (v692 + 2 <= v691)
        {
          *v548 = *(*(v7 + 40) + v692);
          v548 = (v548 + 2);
          *(v7 + 48) = v692 + 2;
          v692 += 2;
          if (!--v690)
          {
            goto LABEL_755;
          }
        }

        v542 = 8671;
        goto LABEL_826;
      }

LABEL_755:
      v550 = *a2;
      if (++v916 >= *(*a2 + 2168))
      {
        goto LABEL_756;
      }
    }

    v620 = 0;
    while (1)
    {
      v621 = *(v7 + 48);
      if ((v621 + 2) > *(v7 + 56))
      {
        v542 = 8644;
        goto LABEL_826;
      }

      v622 = *(*(v7 + 40) + v621);
      v623 = (*(v554 + 16) + 32 * v620);
      *v623 = v622;
      *(v7 + 48) = v621 + 2;
      v624 = geo::codec::zone_mallocator::instance(v618);
      v625 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned short>(v624, v622);
      *(v623 + 1) = v625;
      v627 = *(v7 + 48);
      v626 = *(v7 + 56);
      if (*v623)
      {
        break;
      }

      v629 = *(v7 + 48);
LABEL_729:
      if (v629 + 2 > v626)
      {
        v542 = 8650;
        goto LABEL_826;
      }

      v630 = *(*(v7 + 40) + v629);
      v623[1] = v630;
      *(v7 + 48) = v629 + 2;
      v631 = geo::codec::zone_mallocator::instance(v625);
      v632 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned short>(v631, v630);
      *(v623 + 2) = v632;
      v634 = *(v7 + 48);
      v633 = *(v7 + 56);
      if (v623[1])
      {
        v635 = 0;
        while (1)
        {
          v636 = v634 + 2;
          if (v634 + 2 > v633)
          {
            break;
          }

          *(v632 + v635) = *(*(v7 + 40) + v634);
          *(v7 + 48) = v636;
          ++v635;
          v634 += 2;
          if (v635 >= v623[1])
          {
            goto LABEL_736;
          }
        }

        v542 = 8653;
        goto LABEL_826;
      }

      v636 = *(v7 + 48);
LABEL_736:
      if (v636 + 1 > v633)
      {
        v542 = 8657;
        goto LABEL_826;
      }

      v637 = *(*(v7 + 40) + v636);
      *(v7 + 48) = v636 + 1;
      v638 = geo::codec::zone_mallocator::instance(v632);
      v618 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::callocate<GeoCodecsMatrix4x3>(v638, 1uLL);
      *(v623 + 3) = v618;
      if (v637)
      {
        v640 = *(v7 + 48);
        v641 = *(v7 + 56);
        v642 = v640 + 4;
        if (v640 + 4 > v641 || (v643 = *(v7 + 40), v644 = *(v643 + v640), *(v7 + 48) = v642, v645 = v640 + 8, v640 + 8 > v641) || (v646 = *(v643 + v642), *(v7 + 48) = v645, v647 = v640 + 12, v640 + 12 > v641) || (v648 = *(v643 + v645), *(v7 + 48) = v647, v649 = v640 + 16, v640 + 16 > v641) || (v650 = *(v643 + v647), *(v7 + 48) = v649, v651 = v640 + 20, v640 + 20 > v641) || (v652 = *(v643 + v649), *(v7 + 48) = v651, v653 = v640 + 24, v640 + 24 > v641) || (v654 = *(v643 + v651), *(v7 + 48) = v653, v655 = v640 + 28, v640 + 28 > v641) || (v656 = *(v643 + v653), *(v7 + 48) = v655, v657 = v640 + 32, v640 + 32 > v641) || (v658 = *(v643 + v655), *(v7 + 48) = v657, v659 = v640 + 36, v640 + 36 > v641) || (v660 = *(v643 + v657), *(v7 + 48) = v659, v661 = v640 + 40, v661 > v641))
        {
          v542 = 8661;
          goto LABEL_826;
        }

        v662 = *(v643 + v659);
        *(v7 + 48) = v661;
        v663 = v658 + v658;
        v664 = (v658 + v658) * v658;
        v665 = (v660 + v660) * v660;
        v666 = v656 + v656;
        v667 = (v656 + v656) * v658;
        v668 = (v660 + v660) * v662;
        v669 = v660 * (v656 + v656);
        v670 = v662 * v663;
        v639.f32[0] = (v662 * v663) + v669;
        v671 = 1.0 - ((v656 + v656) * v656);
        v672 = v663 * v660;
        v673 = v662 * v666;
        v674 = v672 - v673;
        *&v675 = v673 + v672;
        v676.i32[1] = 0;
        v676.f32[0] = v669 - v670;
        v676.i64[1] = __PAIR64__(v671 - v665, v667 - v668);
        v639.f32[1] = v674;
        v639.f32[2] = v671 - v664;
        v677 = vzip1q_s32(v650, v650);
        v678 = vmulq_f32(v677, v676);
        v679.f32[0] = 1.0 - (v664 + v665);
        v679.f32[1] = v668 + v667;
        v679.i64[1] = v675;
        v680 = vmlaq_f32(vextq_s8(v678, v678, 8uLL), v679, v677);
        v677.i32[0] = 0;
        v677.i32[1] = v652;
        v681 = vzip1q_s32(v677.u64[0], v677.u64[0]);
        v682 = vmulq_f32(v681, v676);
        v683 = vmlaq_f32(vextq_s8(v682, v682, 8uLL), v679, v681);
        v684 = vmulq_n_f32(v639, v654);
        v685 = v684.f32[2];
        *v618 = vzip1_s32(*v680.i8, *v683.i8);
        v618[1].i32[0] = v684.i32[0];
        v618[1].i32[1] = v644;
        v618[2] = vzip2_s32(*v680.i8, *v683.i8);
        v618[3].i32[0] = v684.i32[1];
        v618[3].i32[1] = v646;
        v618[4] = vzip1_s32(*&vextq_s8(v680, v680, 8uLL), *&vextq_s8(v683, v683, 8uLL));
        v686 = 10;
        v687 = 11;
      }

      else
      {
        v618->i32[0] = 1065353216;
        v685 = 1.0;
        v686 = 5;
        v687 = 10;
        v648 = 1.0;
      }

      *&v618->i32[v686] = v685;
      *&v618->i32[v687] = v648;
      if (++v620 >= *(v554 + 44))
      {
        goto LABEL_751;
      }
    }

    v628 = 0;
    while (1)
    {
      v629 = v627 + 2;
      if (v627 + 2 > v626)
      {
        break;
      }

      *(v625 + v628) = *(*(v7 + 40) + v627);
      *(v7 + 48) = v629;
      ++v628;
      v627 += 2;
      if (v628 >= *v623)
      {
        goto LABEL_729;
      }
    }

    v542 = 8647;
LABEL_826:
    fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v542);
    v371.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v977 = 0x10000000BLL;
    *buf = &v977;
    v10.__d_.__rep_ = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>(__srcd + 240, &v977, buf);
    v372 = v940;
    goto LABEL_455;
  }

LABEL_756:
  v693 = *(v7 + 48);
  v990 = 0x10000000BLL;
  v993 = &v990;
  std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v550 + 1920), &v990, &v993)[3] = (v693 - v924);
  v694 = std::chrono::steady_clock::now().__d_.__rep_;
  v977 = 0x10000000BLL;
  *buf = &v977;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>(__srcd + 240, &v977, buf) + 4) = ((v694 - v940) / 1000) * 0.001;
  if (v299 && !atomic_fetch_add(&v299->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v299->__on_zero_shared)(v299);
    std::__shared_weak_count::__release_weak(v299);
  }

  v901 = *(v7 + 48);
  v925 = *a2;
  v937 = a2[1];
  if (v937)
  {
    atomic_fetch_add_explicit(&v937->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v695.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  __srce = v695.__d_.__rep_;
  v696 = *(v7 + 48);
  if ((v696 + 2) > *(v7 + 56))
  {
    v697 = 8681;
    goto LABEL_885;
  }

  v698 = *(*(v7 + 40) + v696);
  *(v7 + 48) = v696 + 2;
  v699 = *(*a2 + 2096);
  v917 = *a2;
  v700 = *(*a2 + 2088);
  v701 = &v699[-v700];
  v702 = 0xCCCCCCCCCCCCCCCDLL * (&v699[-v700] >> 3);
  v907 = v698;
  v703 = v698 - v702;
  if (v698 <= v702)
  {
    if (v698 >= v702)
    {
      goto LABEL_831;
    }

    for (j = (v700 + 40 * v698); v699 != j; v699 -= 40)
    {
      v724 = *(v699 - 4);
      if (v724)
      {
        v725 = *(v699 - 3);
        v726 = *(v699 - 4);
        if (v725 != v724)
        {
          do
          {
            v727 = *(v725 - 8);
            if (v727 && !atomic_fetch_add(&v727->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v727->__on_zero_shared)(v727);
              std::__shared_weak_count::__release_weak(v727);
            }

            v725 -= 32;
          }

          while (v725 != v724);
          v726 = *(v699 - 4);
        }

        *(v699 - 3) = v724;
        v728 = geo::codec::zone_mallocator::instance(v695.__d_.__rep_);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciAttributedMesh>(v728, v726);
      }
    }

    goto LABEL_828;
  }

  v704 = v917[263];
  if (0xCCCCCCCCCCCCCCCDLL * ((v704 - v699) >> 3) >= v703)
  {
    v729 = 40 * ((40 * v703 - 40) / 0x28) + 40;
    bzero(v699, v729);
    j = &v699[v729];
LABEL_828:
    v917[262] = j;
    goto LABEL_831;
  }

  v705 = 0xCCCCCCCCCCCCCCCDLL * ((v704 - v700) >> 3);
  v706 = 2 * v705;
  if (2 * v705 <= v698)
  {
    v706 = v698;
  }

  v741 = v705 >= 0x333333333333333;
  v707 = 0x666666666666666;
  if (!v741)
  {
    v707 = v706;
  }

  v895 = v707;
  v708 = geo::codec::zone_mallocator::instance(v695.__d_.__rep_);
  v709 = pthread_rwlock_rdlock((v708 + 32));
  if (v709)
  {
    geo::read_write_lock::logFailure(v709, "read lock", v710);
  }

  v891 = malloc_type_zone_malloc(*v708, 40 * v895, 0x1020040451B5CEBuLL);
  atomic_fetch_add((v708 + 24), 1u);
  v711 = pthread_rwlock_unlock((v708 + 32));
  if (v711)
  {
    geo::read_write_lock::logFailure(v711, "unlock", v712);
  }

  v713 = &v701[v891];
  v885 = 40 * ((40 * v703 - 40) / 0x28) + 40;
  bzero(&v701[v891], v885);
  v714 = v917[262];
  v715 = v917[261];
  v887 = v713;
  v889 = &v713[v715 - v714];
  if (v714 != v715)
  {
    v716 = v917[261];
    v717 = &v713[v715 - v714];
    do
    {
      *v717 = *v716;
      *(v717 + 2) = 0;
      *(v717 + 3) = 0;
      *(v717 + 1) = 0;
      v717[32] = *(v716 + 32);
      *(v717 + 8) = *(v716 + 8);
      *(v717 + 3) = *(v716 + 24);
      *(v716 + 8) = 0;
      *(v716 + 16) = 0;
      *(v716 + 24) = 0;
      v716 += 40;
      v717 += 40;
    }

    while (v716 != v714);
    for (; v715 != v714; v715 += 40)
    {
      v718 = *(v715 + 8);
      if (v718)
      {
        v719 = *(v715 + 16);
        v720 = *(v715 + 8);
        if (v719 != v718)
        {
          do
          {
            v721 = *(v719 - 8);
            if (v721 && !atomic_fetch_add(&v721->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v721->__on_zero_shared)(v721);
              std::__shared_weak_count::__release_weak(v721);
            }

            v719 -= 32;
          }

          while (v719 != v718);
          v720 = *(v715 + 8);
        }

        *(v715 + 16) = v718;
        v722 = geo::codec::zone_mallocator::instance(v695.__d_.__rep_);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciAttributedMesh>(v722, v720);
      }
    }
  }

  *&v730 = &v887[v885];
  *(&v730 + 1) = v891 + 40 * v895;
  v731 = v917[261];
  v917[261] = v889;
  *(v917 + 131) = v730;
  if (v731)
  {
    v732 = geo::codec::zone_mallocator::instance(v695.__d_.__rep_);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciAsset>(v732, v731);
  }

LABEL_831:
  if (v907)
  {
    v918 = 0;
    while (1)
    {
      v733 = *(v7 + 48);
      v734 = v733 + 2;
      if ((v733 + 2) > *(v7 + 56))
      {
        v697 = 8685;
        goto LABEL_885;
      }

      v735 = (*(*a2 + 2088) + 40 * v918);
      v736 = *(*(v7 + 40) + v733);
      *v735 = v736;
      *(v7 + 48) = v734;
      v737 = *(v735 + 1);
      v738 = *(v735 + 2);
      v739 = v738 - v737;
      v740 = (v738 - v737) >> 5;
      v741 = v736 >= v740;
      v742 = v736 - v740;
      if (v742 == 0 || !v741)
      {
        break;
      }

      v743 = *(v735 + 3);
      v744 = 32 * v742;
      if (v742 <= (v743 - v738) >> 5)
      {
        bzero(*(v735 + 2), 32 * v742);
        v757 = v738 + v744;
LABEL_861:
        *(v735 + 2) = v757;
        goto LABEL_865;
      }

      v745 = v743 - v737;
      if (v745 >> 4 > v736)
      {
        v736 = v745 >> 4;
      }

      if (v745 >= 0x7FFFFFFFFFFFFFE0)
      {
        v736 = 0x7FFFFFFFFFFFFFFLL;
      }

      v896 = v736;
      v746 = geo::codec::zone_mallocator::instance(v695.__d_.__rep_);
      v747 = pthread_rwlock_rdlock((v746 + 32));
      if (v747)
      {
        geo::read_write_lock::logFailure(v747, "read lock", v748);
      }

      v892 = malloc_type_zone_malloc(*v746, 32 * v896, 0x1060040205B8ECCuLL);
      atomic_fetch_add((v746 + 24), 1u);
      v749 = pthread_rwlock_unlock((v746 + 32));
      if (v749)
      {
        geo::read_write_lock::logFailure(v749, "unlock", v750);
      }

      v751 = &v892[v739];
      bzero(&v892[v739], v744);
      v752 = *(v735 + 1);
      v753 = *(v735 + 2);
      v890 = &v892[v739 + v752 - v753];
      if (v753 != v752)
      {
        v754 = *(v735 + 1);
        v755 = &v892[v739 + v752 - v753];
        do
        {
          *v755 = *v754;
          *(v755 + 1) = *(v754 + 16);
          *(v754 + 16) = 0;
          *(v754 + 24) = 0;
          v754 += 32;
          v755 += 32;
        }

        while (v754 != v753);
        do
        {
          v756 = *(v752 + 3);
          if (v756 && !atomic_fetch_add(&v756->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v756->__on_zero_shared)(v756);
            std::__shared_weak_count::__release_weak(v756);
          }

          v752 += 32;
        }

        while (v752 != v753);
        v752 = *(v735 + 1);
      }

      *(v735 + 1) = v890;
      *(v735 + 2) = &v751[v744];
      *(v735 + 3) = &v892[32 * v896];
      if (v752)
      {
        v759 = geo::codec::zone_mallocator::instance(v695.__d_.__rep_);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciAttributedMesh>(v759, v752);
      }

LABEL_865:
      if (*v735)
      {
        v760 = 0;
        v761 = 0;
        while (1)
        {
          v762 = *(v7 + 48);
          v763 = *(v7 + 56);
          v764 = v762 + 2;
          if (v762 + 2 > v763)
          {
            break;
          }

          v765 = *(v7 + 40);
          v766 = *(v735 + 1);
          *(v766 + v760) = *(v765 + v762);
          *(v7 + 48) = v764;
          v767 = v762 + 4;
          if (v767 > v763)
          {
            v697 = 8691;
            goto LABEL_885;
          }

          v768 = *(v765 + v764);
          *(v7 + 48) = v767;
          v769 = *(*a2 + 1144);
          v770 = *(v769 + 16 * v974[v768]);
          v771 = *(v769 + 16 * v974[v768] + 8);
          if (v771)
          {
            atomic_fetch_add_explicit((v771 + 8), 1uLL, memory_order_relaxed);
          }

          v772 = *(v766 + v760 + 24);
          *(v766 + v760 + 16) = v770;
          if (v772 && !atomic_fetch_add(&v772->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v772->__on_zero_shared)(v772);
            std::__shared_weak_count::__release_weak(v772);
          }

          v773 = &v971[16 * v768];
          if ((v773[8] & 1) == 0)
          {
            v773 = *v773;
          }

          *(v766 + v760 + 8) = *v773;
          ++v761;
          v760 += 32;
          if (v761 >= *v735)
          {
            goto LABEL_877;
          }
        }

        v697 = 8689;
LABEL_885:
        fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v697);
        v777 = std::chrono::steady_clock::now().__d_.__rep_;
        v977 = 0x10000000CLL;
        *buf = &v977;
        v10.__d_.__rep_ = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>(v925 + 240, &v977, buf);
        v381 = v777 - __srce;
        goto LABEL_475;
      }

LABEL_877:
      if (++v918 == v907)
      {
        goto LABEL_878;
      }
    }

    if (v741)
    {
      goto LABEL_865;
    }

    v757 = v737 + 32 * v736;
    while (v738 != v757)
    {
      v758 = *(v738 - 8);
      if (v758 && !atomic_fetch_add(&v758->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v758->__on_zero_shared)(v758);
        std::__shared_weak_count::__release_weak(v758);
      }

      v738 -= 32;
    }

    goto LABEL_861;
  }

LABEL_878:
  v774 = *a2;
  v775 = *(v7 + 48);
  v990 = 0x10000000CLL;
  v993 = &v990;
  std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v774 + 1920), &v990, &v993)[3] = (v775 - v901);
  v776 = std::chrono::steady_clock::now().__d_.__rep_;
  v977 = 0x10000000CLL;
  *buf = &v977;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>(v925 + 240, &v977, buf) + 4) = ((v776 - __srce) / 1000) * 0.001;
  if (v937 && !atomic_fetch_add(&v937->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v937->__on_zero_shared)(v937);
    std::__shared_weak_count::__release_weak(v937);
  }

  v897 = *a2;
  v937 = a2[1];
  if (v937)
  {
    atomic_fetch_add_explicit(&v937->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v902.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v778 = *(v7 + 56);
  v919 = *(v7 + 48);
  v779 = v919 + 4;
  if (v919 + 4 > v778)
  {
LABEL_898:
    fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 8728);
    v785 = std::chrono::steady_clock::now().__d_.__rep_;
    v977 = 0x100000007;
    *buf = &v977;
    v10.__d_.__rep_ = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v897 + 1920), &v977, buf);
    v381 = v785 - v902.__d_.__rep_;
    goto LABEL_475;
  }

  v780 = *(v7 + 40);
  v781 = *(v780 + v919);
  *(v7 + 48) = v779;
  if (v781)
  {
    v978 = 0;
    v977 = 0;
    v979 = 0;
    v980 = 0;
    v982 = 0;
    v981 = 0;
    v985 = 0;
    v983 = 0;
    v984 = 0;
    v782 = v919 + 8;
    HIDWORD(v961) = v781;
    if (v919 + 8 <= v778)
    {
      v962 = *(v780 + v779);
      *(v7 + 48) = v782;
      v783 = v919 + 12;
      if (v919 + 12 <= v778)
      {
        v963 = *(v780 + v782);
        *(v7 + 48) = v783;
        v784 = v919 + 14;
        if (v919 + 14 <= v778)
        {
          v964 = *(v780 + v783);
          *(v7 + 48) = v784;
          if (v919 + 16 <= v778)
          {
            v965 = *(v780 + v784);
            *(v7 + 48) = v919 + 16;
            if (geo::codec::chapterReadVarUint32(v7, &v961))
            {
              if (*(v7 + 48) + v961 <= *(v7 + 56))
              {
                operator new();
              }
            }
          }
        }
      }
    }

    GeoCodecsPointCloud::~GeoCodecsPointCloud(&v977);
    goto LABEL_898;
  }

  v786 = *a2;
  v990 = 0x100000007;
  v993 = &v990;
  std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v786 + 1920), &v990, &v993)[3] = 4;
  v787 = std::chrono::steady_clock::now().__d_.__rep_;
  v977 = 0x100000007;
  *buf = &v977;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v897 + 1920), &v977, buf) + 4) = ((v787 - v902.__d_.__rep_) / 1000) * 0.001;
  if (v937 && !atomic_fetch_add(&v937->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v937->__on_zero_shared)(v937);
    std::__shared_weak_count::__release_weak(v937);
  }

  v788 = a2[1];
  __srcf = *a2;
  if (v788)
  {
    atomic_fetch_add_explicit(&v788->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v941.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v988 = 0;
  *buf = 0;
  v989 = 0;
  v977 = 0;
  v789 = geo::codec::_decodeDaVinciRenderables(v7, v958, __p, (*a2 + 2192), (*a2 + 2184), buf, &v977);
  if (v789)
  {
    v790 = *a2;
    v791 = v977;
    v990 = 0x100000002;
    v993 = &v990;
    v792 = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v790 + 1920), &v990, &v993);
    v792[3] = v791;
    v793 = *buf;
    v794 = v988 - *buf;
    v795 = (v988 - *buf) >> 3;
    *(*a2 + 2756) = v795;
    v796 = geo::codec::zone_mallocator::instance(v792);
    v797 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long long>(v796, v795);
    *(*a2 + 2768) = v797;
    v798 = memcpy(v797, v793, v794);
    v357 = 0;
  }

  else
  {
    v798 = fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 8740);
    v357 = 6;
    v793 = *buf;
  }

  if (v793)
  {
    v988 = v793;
    v799 = geo::codec::zone_mallocator::instance(v798);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v799, v793);
  }

  v800 = std::chrono::steady_clock::now().__d_.__rep_;
  v977 = 0x100000002;
  *buf = &v977;
  v10.__d_.__rep_ = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>(__srcf + 240, &v977, buf);
  *(v10.__d_.__rep_ + 32) = ((v800 - v941.__d_.__rep_) / 1000) * 0.001;
  if (v788 && !atomic_fetch_add(&v788->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v788->__on_zero_shared)(v788);
    std::__shared_weak_count::__release_weak(v788);
  }

  if (!v789)
  {
    goto LABEL_439;
  }

  if (*(v7 + 64) < 0x12u)
  {
    goto LABEL_1026;
  }

  if ((geo::codec::_decodeMaterialModifiers(v7, a2) & 1) == 0)
  {
    v287 = *MEMORY[0x1E69E9848];
    v288 = 8749;
    goto LABEL_351;
  }

  v903 = *(v7 + 48);
  v926 = *a2;
  v937 = a2[1];
  if (v937)
  {
    atomic_fetch_add_explicit(&v937->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __srca = std::chrono::steady_clock::now().__d_.__rep_;
  *buf = 0;
  if ((geo::codec::chapterReadVarUint32(v7, buf) & 1) == 0)
  {
    v803 = 8754;
    goto LABEL_1033;
  }

  v910 = *buf;
  v801 = *a2;
  prime = vcvtps_u32_f32(*buf / *(*a2 + 2432));
  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v804 = *(v801 + 2408);
  if (prime > *&v804)
  {
    goto LABEL_935;
  }

  if (prime < *&v804)
  {
    v805 = vcvtps_u32_f32(*(v801 + 2424) / *(v801 + 2432));
    if (*&v804 < 3uLL || (v806 = vcnt_s8(v804), v806.i16[0] = vaddlv_u8(v806), v806.u32[0] > 1uLL))
    {
      v805 = std::__next_prime(v805);
    }

    else
    {
      v807 = 1 << -__clz(v805 - 1);
      if (v805 >= 2)
      {
        v805 = v807;
      }
    }

    if (prime <= v805)
    {
      prime = v805;
    }

    if (prime < *&v804)
    {
LABEL_935:
      std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__do_rehash<true>(v801 + 2400, prime);
    }
  }

  if (v910)
  {
    v908 = 0;
LABEL_938:
    v808 = *(v7 + 48);
    v809 = *(v7 + 56);
    v810 = v808 + 2;
    if (v808 + 2 > v809)
    {
      v803 = 8759;
      goto LABEL_1033;
    }

    v811 = *(v7 + 40);
    v812 = *(v811 + v808);
    *(v7 + 48) = v810;
    v813 = v808 + 4;
    if (v813 > v809)
    {
      v803 = 8760;
      goto LABEL_1033;
    }

    v814 = *(v811 + v810);
    *(v7 + 48) = v813;
    v815 = *a2;
    if (0xCCCCCCCCCCCCCCCDLL * ((*(*a2 + 2344) - *(*a2 + 2336)) >> 3) <= v812)
    {
      v803 = 8761;
      goto LABEL_1033;
    }

    if (v814 >= (v815[266] - v815[265]) >> 4)
    {
      v803 = 8762;
      goto LABEL_1033;
    }

    v816 = v815[301];
    if (!*&v816)
    {
      goto LABEL_963;
    }

    v817 = vcnt_s8(v816);
    v817.i16[0] = vaddlv_u8(v817);
    if (v817.u32[0] > 1uLL)
    {
      v818 = v812;
      if (*&v816 <= v812)
      {
        v818 = v812 % v815[301];
      }
    }

    else
    {
      v818 = (v816.i32[0] - 1) & v812;
    }

    v819 = *(v815[300] + 8 * v818);
    if (!v819)
    {
      goto LABEL_963;
    }

    v820 = *v819;
    if (!v820)
    {
      goto LABEL_963;
    }

    if (v817.u32[0] < 2uLL)
    {
      do
      {
        v821 = v820[1];
        if (v821 == v812)
        {
          if (*(v820 + 8) == v812)
          {
            goto LABEL_964;
          }
        }

        else if ((v821 & (*&v816 - 1)) != v818)
        {
          break;
        }

        v820 = *v820;
      }

      while (v820);
LABEL_963:
      operator new();
    }

    while (1)
    {
      v822 = v820[1];
      if (v822 == v812)
      {
        if (*(v820 + 8) == v812)
        {
LABEL_964:
          if (++v908 == v910)
          {
            break;
          }

          goto LABEL_938;
        }
      }

      else
      {
        if (v822 >= *&v816)
        {
          v822 %= *&v816;
        }

        if (v822 != v818)
        {
          goto LABEL_963;
        }
      }

      v820 = *v820;
      if (!v820)
      {
        goto LABEL_963;
      }
    }
  }

  v823 = *a2;
  v824 = *(v7 + 48);
  v990 = 0x10000000DLL;
  v993 = &v990;
  std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v823 + 1920), &v990, &v993)[3] = (v824 - v903);
  v825 = *(*a2 + 2184);
  if (!*(*a2 + 2184))
  {
LABEL_1020:
    v845 = std::chrono::steady_clock::now().__d_.__rep_;
    v977 = 0x10000000DLL;
    *buf = &v977;
    v10.__d_.__rep_ = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>(v926 + 240, &v977, buf);
    *(v10.__d_.__rep_ + 32) = ((v845 - __srca) / 1000) * 0.001;
    if (v937 && !atomic_fetch_add(&v937->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v937->__on_zero_shared)(v937);
      std::__shared_weak_count::__release_weak(v937);
    }

    if (*(v7 + 64) > 0x16u)
    {
      v846 = *(v7 + 48);
      if ((v846 + 1) > *(v7 + 56))
      {
        v366 = *MEMORY[0x1E69E9848];
        v367 = 8801;
        goto LABEL_438;
      }

      v847 = *(*(v7 + 40) + v846);
      *(v7 + 48) = v846 + 1;
      if (!v847)
      {
        if (GEOGetGeoCodecsDecodeLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoCodecsDecodeLog::onceToken, &__block_literal_global_193173);
        }

        v848 = GEOGetGeoCodecsDecodeLog::log;
        v10.__d_.__rep_ = os_log_type_enabled(GEOGetGeoCodecsDecodeLog::log, OS_LOG_TYPE_ERROR);
        LOBYTE(v847) = 15;
        if (LODWORD(v10.__d_.__rep_))
        {
          *buf = 67109120;
          *&buf[4] = 15;
          _os_log_impl(&dword_18660C000, v848, OS_LOG_TYPE_ERROR, "Signed distance resolution cannot be 0. Defaulting to %d", buf, 8u);
        }
      }

      goto LABEL_1039;
    }

LABEL_1026:
    LOBYTE(v847) = 15;
LABEL_1039:
    v849 = *(*a2 + 2060);
    if (!*(*a2 + 2060))
    {
LABEL_1051:
      if (*(v7 + 64) > 0x17u)
      {
        LODWORD(v993) = 0;
        LODWORD(v990) = 0;
        v986[0] = 0;
        LODWORD(v966) = 0;
        if ((geo::codec::chapterReadVarUint32(v7, &v993) & 1) == 0)
        {
          v366 = *MEMORY[0x1E69E9848];
          v367 = 8822;
          goto LABEL_438;
        }

        if ((geo::codec::chapterReadVarUint32(v7, &v990) & 1) == 0)
        {
          v366 = *MEMORY[0x1E69E9848];
          v367 = 8823;
          goto LABEL_438;
        }

        if ((geo::codec::chapterReadVarUint32(v7, v986) & 1) == 0)
        {
          v366 = *MEMORY[0x1E69E9848];
          v367 = 8824;
          goto LABEL_438;
        }

        v10.__d_.__rep_ = geo::codec::chapterReadVarUint32(v7, &v966);
        if ((v10.__d_.__rep_ & 1) == 0)
        {
          v366 = *MEMORY[0x1E69E9848];
          v367 = 8825;
          goto LABEL_438;
        }

        if (v993)
        {
          LODWORD(v961) = 0;
          if (geo::codec::chapterReadVarUint32(v7, &v961))
          {
            v863 = v961;
            v864 = *(v7 + 48);
            v865 = v864 + v961;
            if (v865 <= *(v7 + 56))
            {
              v866 = *(v7 + 40) + v864;
              *(v7 + 48) = v865;
              v988 = 0;
              *buf = 0;
              v989 = 0;
              v867 = 0;
              v868 = 0;
              if (v863 >= 4 && (v863 & 0xFFFFFFFE) != 8)
              {
                v869 = v863 & 0xFFFFFFFC;
                if (v869 != 4 && (v863 & 0xFFFFFFFE) != 0xA && v869 != 12 && v869 != 16 && (v863 - 20) >= 3 && (v863 - 23) >= 3 && v863 >= 0x1C && *v866 == -1214009963 && v866 != -28)
                {
                  v867 = *(v866 + 16) & 0x7FFFFFFF;
                  v868 = *(v866 + 22);
                }
              }

              if (v868 == 1)
              {
                if (v867)
                {
                  std::vector<int,geo::allocator_adapter<int,geo::codec::zone_mallocator>>::__append(buf, v867);
                }

                operator new();
              }

              v366 = *MEMORY[0x1E69E9848];
              v367 = 8835;
            }

            else
            {
              v366 = *MEMORY[0x1E69E9848];
              v367 = 8832;
            }
          }

          else
          {
            v366 = *MEMORY[0x1E69E9848];
            v367 = 8829;
          }

          goto LABEL_438;
        }
      }

      v357 = 0;
LABEL_439:
      v368 = v968;
      if (v968)
      {
        v969 = v968;
        v369 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v369, v368);
      }

      rep = v943;
      v9 = v944;
      if (v357)
      {
        v22 = 0;
        v19 = 0;
        if (v357 == 6)
        {
          goto LABEL_28;
        }

        goto LABEL_49;
      }

      goto LABEL_15;
    }

    v850 = 0;
    v851 = *(*a2 + 2064);
    v852 = 1.0 / ~(-1 << v847);
    while (1)
    {
      v853 = v851 + 80 * v850;
      v854 = *(v853 + 48);
      if (!v854)
      {
        goto LABEL_1050;
      }

      v855 = *(v853 + 8);
      if (!v855)
      {
        goto LABEL_1050;
      }

      if (v855 >= 8)
      {
        v856 = v855 & 0xFFFFFFF8;
        v857 = v854 + 2;
        v858 = v856;
        do
        {
          v859 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v857), v852)), vmulq_n_f64(vcvt_hight_f64_f32(*v857->f32), v852));
          *v857[-2].f32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v857[-2]), v852)), vmulq_n_f64(vcvt_hight_f64_f32(*v857[-2].f32), v852));
          *v857->f32 = v859;
          v857 += 4;
          v858 -= 8;
        }

        while (v858);
        if (v856 == v855)
        {
          goto LABEL_1050;
        }
      }

      else
      {
        v856 = 0;
      }

      v860 = v855 - v856;
      v861 = v854 + v856;
      do
      {
        v862 = *v861 * v852;
        *v861++ = v862;
        --v860;
      }

      while (v860);
LABEL_1050:
      if (++v850 == v849)
      {
        goto LABEL_1051;
      }
    }
  }

  v826 = 0;
LABEL_967:
  if (!__p[1])
  {
    goto LABEL_1019;
  }

  v827 = vcnt_s8(__p[1]);
  v827.i16[0] = vaddlv_u8(v827);
  if (v827.u32[0] > 1uLL)
  {
    v828 = v826;
    if (__p[1] <= v826)
    {
      v828 = v826 % LODWORD(__p[1]);
    }
  }

  else
  {
    v828 = (__p[1] + 0xFFFFFFFF) & v826;
  }

  v829 = *(__p[0] + v828);
  if (!v829)
  {
    goto LABEL_1019;
  }

  v830 = *v829;
  if (!v830)
  {
    goto LABEL_1019;
  }

  if (v827.u32[0] < 2uLL)
  {
    while (1)
    {
      v831 = v830[1];
      if (v831 == v826)
      {
        if (v826 == *(v830 + 4))
        {
          goto LABEL_989;
        }
      }

      else if ((v831 & (__p[1] - 1)) != v828)
      {
        goto LABEL_1019;
      }

      v830 = *v830;
      if (!v830)
      {
        goto LABEL_1019;
      }
    }
  }

  while (2)
  {
    v832 = v830[1];
    if (v832 != v826)
    {
      if (v832 >= __p[1])
      {
        v832 %= __p[1];
      }

      if (v832 != v828)
      {
        goto LABEL_1019;
      }

      goto LABEL_987;
    }

    if (v826 != *(v830 + 4))
    {
LABEL_987:
      v830 = *v830;
      if (!v830)
      {
        goto LABEL_1019;
      }

      continue;
    }

    break;
  }

LABEL_989:
  v833 = *(*a2 + 2192) + 48 * v826;
  if (!*(v833 + 42))
  {
    goto LABEL_1019;
  }

  v834 = 0;
  while (2)
  {
    if (!__p[1])
    {
      goto LABEL_1031;
    }

    v835 = vcnt_s8(__p[1]);
    v835.i16[0] = vaddlv_u8(v835);
    if (v835.u32[0] > 1uLL)
    {
      v836 = v826;
      if (__p[1] <= v826)
      {
        v836 = v826 % LODWORD(__p[1]);
      }
    }

    else
    {
      v836 = (__p[1] + 0xFFFFFFFF) & v826;
    }

    v837 = *(__p[0] + v836);
    if (!v837 || (v838 = *v837) == 0)
    {
LABEL_1031:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (v835.u32[0] < 2uLL)
    {
      while (1)
      {
        v840 = v838[1];
        if (v840 == v826)
        {
          if (v826 == *(v838 + 4))
          {
            goto LABEL_1012;
          }
        }

        else if ((v840 & (__p[1] - 1)) != v836)
        {
          goto LABEL_1031;
        }

        v838 = *v838;
        if (!v838)
        {
          goto LABEL_1031;
        }
      }
    }

    while (2)
    {
      v839 = v838[1];
      if (v839 != v826)
      {
        if (v839 >= __p[1])
        {
          v839 %= __p[1];
        }

        if (v839 != v836)
        {
          goto LABEL_1031;
        }

        goto LABEL_1001;
      }

      if (v826 != *(v838 + 4))
      {
LABEL_1001:
        v838 = *v838;
        if (!v838)
        {
          goto LABEL_1031;
        }

        continue;
      }

      break;
    }

LABEL_1012:
    v841 = *(v838[3] + 4 * v834);
    if (!v841)
    {
      goto LABEL_1018;
    }

    v842 = (v841 - 1);
    v843 = *(*a2 + 2120);
    if (v842 < (*(*a2 + 2128) - v843) >> 4)
    {
      v844 = v843 + 16 * v842;
      if (*(v844 + 12) == 1)
      {
        *(*(v833 + 8) + v834) |= 1u;
      }

      if (*(v844 + 13) == 1)
      {
        *(*(v833 + 8) + v834) |= 2u;
      }

LABEL_1018:
      if (++v834 < *(v833 + 42))
      {
        continue;
      }

LABEL_1019:
      if (++v826 == v825)
      {
        goto LABEL_1020;
      }

      goto LABEL_967;
    }

    break;
  }

  v803 = 8779;
LABEL_1033:
  fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v803);
  v380.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v977 = 0x10000000DLL;
  *buf = &v977;
  v10.__d_.__rep_ = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>(v926 + 240, &v977, buf);
LABEL_474:
  v381 = v380.__d_.__rep_ - __srca;
LABEL_475:
  *(v10.__d_.__rep_ + 32) = (v381 / 1000) * 0.001;
  if (v937 && !atomic_fetch_add(&v937->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v937->__on_zero_shared)(v937);
    v374 = v937;
LABEL_459:
    std::__shared_weak_count::__release_weak(v374);
  }

LABEL_352:
  v289 = v968;
  if (v968)
  {
LABEL_339:
    v969 = v968;
    v290 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v290, v289);
  }

LABEL_194:
  v22 = 0;
  rep = v943;
  v9 = v944;
LABEL_28:
  if (*v7)
  {
    v26 = *(v7 + 40);
    v27 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v27, v26);
  }

  v28 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v28, v7);
  if (v22)
  {
    v19 = 1;
  }

  else
  {
    geo::codec::VectorTile::DaVinciReadDaVinci3DDataDealloc(*a2, v29, v30);
    v31 = v971;
    v32 = v972;
    while (v31 != v32)
    {
      if (v31)
      {
        if ((v31[8] & 1) == 0)
        {
          v33 = *v31;
          if (*v31)
          {
            v34 = v33[2];
            if (v34)
            {
              v35 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciMaterial>(v35, v34);
            }

            v36 = v33[3];
            if (v36)
            {
              v37 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciMaterial>(v37, v36);
            }

            v38 = v33[4];
            if (v38)
            {
              v39 = v38[1];
              if (v39)
              {
                v40 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v40, v39);
                v38 = v33[4];
              }

              v41 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciTextureData>(v41, v38);
            }
          }
        }
      }

      v31 += 16;
    }

    v42 = *(*a2 + 2072);
    if (v42)
    {
      v43 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v43, v42);
      v19 = 0;
      *(*a2 + 2072) = 0;
    }

    else
    {
      v19 = 0;
    }
  }

LABEL_49:
  v44 = v971;
  if (v971)
  {
    v972 = v971;
    v45 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Material>(v45, v44);
  }

  v46 = v974;
  if (v974)
  {
    v975 = v974;
    v47 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long>(v47, v46);
  }

  v48 = v956[0];
  if (v956[0])
  {
    do
    {
      v53 = *v48;
      v54 = v48[3];
      if (v54)
      {
        v48[4] = v54;
        v55 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned int>(v55, v54);
      }

      operator delete(v48);
      v48 = v53;
    }

    while (v53);
  }

  v49 = __p[0];
  __p[0] = 0;
  if (v49)
  {
    operator delete(v49);
  }

  v50 = v959[0];
  if (v959[0])
  {
    do
    {
      v56 = *v50;
      v57 = v50[3];
      if (v57)
      {
        v50[4] = v57;
        v58 = geo::codec::zone_mallocator::instance(v49);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::Transform<float>>(v58, v57);
      }

      operator delete(v50);
      v50 = v56;
    }

    while (v56);
  }

  v51 = v958[0];
  v958[0] = 0;
  if (v51)
  {
    operator delete(v51);
  }

  v52 = std::chrono::steady_clock::now().__d_.__rep_;
  v977 = 100;
  *buf = &v977;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v9 + 1920), &v977, buf) + 4) = ((v52 - rep) / 1000) * 0.001;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  return v19;
}