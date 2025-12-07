uint64_t **md::FrameGraphPassBuilder::addAttachmentInput(md::FrameGraphPassBuilder *this, md::FrameGraphLogicalResource *a2)
{
  result = std::__tree<md::FrameGraphLogicalResource *,md::FrameGraphLogicalResourceLessThan,std::allocator<md::FrameGraphLogicalResource *>>::__find_equal<md::FrameGraphLogicalResource *>(this + 80, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void sub_1B306DF34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B306E0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B306E1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B306F77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_72c39_ZTSN3geo12Coordinate3DINS_7RadiansEdEE(__n128 *a1, __n128 *a2)
{
  a1[4].n128_u64[1] = a2[4].n128_u64[1];
  result = a2[5];
  a1[5] = result;
  return result;
}

void sub_1B3070170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B3070F98(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 168);
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *std::vector<geo::Coordinate2D<geo::Radians,double>>::__emplace_back_slow_path<geo::Coordinate2D<geo::Radians,double>>(uint64_t a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 4;
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v7)
  {
    v7 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(16 * v6) = *a2;
  if (v3 != v4)
  {
    v10 = v3;
    v11 = (16 * v6 + v3 - v4);
    do
    {
      *v11 = *v10;
      v11[1] = *(v10 + 1);
      v10 += 16;
      v11 += 2;
    }

    while (v10 != v4);
  }

  *a1 = 16 * v6 + v3 - v4;
  *(a1 + 8) = 16 * v6 + 16;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return (16 * v6 + 16);
}

void sub_1B3071F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  objc_destroyWeak(v38);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B30722CC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B30723E0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

double __copy_helper_block_ea8_40c40_ZTSN3gdc11CameraFrameIN3geo7RadiansEdEE96c40_ZTSN3gdc11CameraFrameIN3geo7RadiansEdEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  result = *(a2 + 144);
  *(a1 + 144) = result;
  return result;
}

double __copy_helper_block_ea8_88c39_ZTSN3geo12Coordinate2DINS_7RadiansEdEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = *(a2 + 88);
  result = *(a2 + 96);
  *(a1 + 96) = result;
  return result;
}

void sub_1B3073F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, ...)
{
  va_start(va, location);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1B30743C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, ...)
{
  va_start(va, location);

  objc_destroyWeak((v28 + 40));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3074A8C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B307504C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelTile>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void sub_1B30765C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a29, 8);
  std::vector<RouteJunctionInfo,geo::allocator_adapter<RouteJunctionInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a35);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__26788(uint64_t a1, __n128 *a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2[4].n128_u8[8];
  result = a2[3];
  *(a1 + 48) = result;
  *(a1 + 64) = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

__n128 __Block_byref_object_copy__18_26791(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,false>(__n128 *result, __n128 *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = &a2[-1];
  i = result;
  while (1)
  {
    result = i;
    v11 = (a2 - i) >> 4;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(i, (i + 16), &a2[-1], a5);
          return;
        case 4:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(i, i + 16, i + 32, &a2[-1], a5);
          return;
        case 5:

          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(i, i + 16, i + 32, i + 48, &a2[-1], a5);
          return;
      }
    }

    else
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v58 = *v9 >= *i;
        if (*v9 == *i)
        {
          v59 = a2[-1].n128_f32[1];
          v60 = *(i + 4);
          if (vabds_f32(v59, v60) >= 0.00000011921)
          {
            if (v59 >= v60)
            {
              return;
            }

            goto LABEL_273;
          }

          v58 = a2[-1].n128_u64[1] >= *(i + 8);
        }

        if (v58)
        {
          return;
        }

LABEL_273:
        v135 = *i;
        *i = *v9;
        *v9 = v135;
        return;
      }
    }

    if (v11 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return;
      }

      v76 = (v11 - 2) >> 1;
      v77 = v76;
      while (1)
      {
        v78 = v77;
        if (v76 < v77)
        {
          goto LABEL_213;
        }

        v79 = (2 * v77) | 1;
        v80 = i + 16 * v79;
        if (2 * v78 + 2 >= v11)
        {
          goto LABEL_187;
        }

        v81 = *(v80 + 16);
        v82 = *v80 >= v81;
        if (*v80 == v81)
        {
          v83 = *(v80 + 4);
          v84 = *(v80 + 20);
          if (vabds_f32(v83, v84) >= 0.00000011921)
          {
            if (v83 >= v84)
            {
              goto LABEL_187;
            }

LABEL_186:
            v80 += 16;
            v79 = 2 * v78 + 2;
            goto LABEL_187;
          }

          v82 = *(v80 + 8) >= *(v80 + 24);
        }

        if (!v82)
        {
          goto LABEL_186;
        }

LABEL_187:
        v85 = i + 16 * v78;
        v86 = *v85;
        if (*v80 == *v85)
        {
          v87 = *(v80 + 4);
          v88 = *(v85 + 4);
          if (vabds_f32(v87, v88) >= 0.00000011921)
          {
            if (v87 < v88)
            {
              goto LABEL_213;
            }
          }

          else if (*(v80 + 8) < *(v85 + 8))
          {
            goto LABEL_213;
          }
        }

        else
        {
          if (*v80 < v86)
          {
            goto LABEL_213;
          }

          v88 = *(v85 + 4);
        }

        v89 = *(v85 + 8);
        do
        {
          while (1)
          {
            *v85 = *v80;
            if (v76 < v79)
            {
              goto LABEL_212;
            }

            v85 = v80;
            v90 = 2 * v79;
            v79 = (2 * v79) | 1;
            v80 = i + 16 * v79;
            v91 = v90 + 2;
            if (v91 < v11)
            {
              v92 = *(v80 + 16);
              v93 = *v80 >= v92;
              if (*v80 != v92)
              {
                goto LABEL_200;
              }

              v94 = *(v80 + 4);
              v95 = *(v80 + 20);
              if (vabds_f32(v94, v95) < 0.00000011921)
              {
                v93 = *(v80 + 8) >= *(v80 + 24);
LABEL_200:
                if (v93)
                {
                  goto LABEL_202;
                }

LABEL_201:
                v80 += 16;
                v79 = v91;
                goto LABEL_202;
              }

              if (v94 < v95)
              {
                goto LABEL_201;
              }
            }

LABEL_202:
            v96 = *v80 >= v86;
            if (*v80 == v86)
            {
              break;
            }

LABEL_205:
            if (!v96)
            {
              goto LABEL_211;
            }
          }

          v97 = *(v80 + 4);
          if (vabds_f32(v97, v88) < 0.00000011921)
          {
            v96 = *(v80 + 8) >= v89;
            goto LABEL_205;
          }
        }

        while (v97 >= v88);
LABEL_211:
        v80 = v85;
LABEL_212:
        *v80 = v86;
        *(v80 + 4) = v88;
        *(v80 + 8) = v89;
LABEL_213:
        v77 = v78 - 1;
        if (!v78)
        {
LABEL_217:
          v98 = 0;
          v134 = *i;
          v99 = i;
          while (1)
          {
            v100 = v99;
            v101 = v99 + 16 * v98;
            v99 = v101 + 16;
            v102 = 2 * v98;
            v98 = (2 * v98) | 1;
            v103 = v102 + 2;
            if (v103 < v11)
            {
              v104 = *(v101 + 32);
              v105 = *(v101 + 16);
              v106 = v105 >= v104;
              if (v105 == v104)
              {
                v107 = *(v101 + 20);
                v108 = *(v101 + 36);
                if (vabds_f32(v107, v108) >= 0.00000011921)
                {
                  if (v107 >= v108)
                  {
                    goto LABEL_224;
                  }

LABEL_223:
                  v99 = v101 + 32;
                  v98 = v103;
                  goto LABEL_224;
                }

                v106 = *(v101 + 24) >= *(v101 + 40);
              }

              if (!v106)
              {
                goto LABEL_223;
              }
            }

LABEL_224:
            *v100 = *v99;
            if (v98 > (v11 - 2) / 2)
            {
              if (v99 == --a2)
              {
                *v99 = v134;
                goto LABEL_250;
              }

              *v99 = *a2;
              *a2 = v134;
              v109 = (v99 - i + 16) >> 4;
              v110 = v109 - 2;
              if (v109 < 2)
              {
                goto LABEL_250;
              }

              v111 = v110 >> 1;
              v112 = (i + 16 * (v110 >> 1));
              v113 = *v99;
              if (*v112 == *v99)
              {
                v114 = v112[1];
                v115 = *(v99 + 4);
                if (vabds_f32(v114, v115) >= 0.00000011921)
                {
                  if (v114 >= v115)
                  {
                    goto LABEL_250;
                  }
                }

                else if (*(v112 + 1) >= *(v99 + 8))
                {
                  goto LABEL_250;
                }
              }

              else
              {
                if (*v112 >= LODWORD(v113))
                {
                  goto LABEL_250;
                }

                v115 = *(v99 + 4);
              }

              v116 = *(v99 + 8);
              *v99 = *v112;
              if (v110 < 2)
              {
                goto LABEL_249;
              }

              while (2)
              {
                v117 = v112;
                v118 = v111 - 1;
                v111 = (v111 - 1) >> 1;
                v112 = (i + 16 * v111);
                v119 = *v112 >= LODWORD(v113);
                if (*v112 != LODWORD(v113))
                {
LABEL_242:
                  if (v119)
                  {
                    break;
                  }

                  goto LABEL_246;
                }

                v120 = v112[1];
                if (vabds_f32(v120, v115) < 0.00000011921)
                {
                  v119 = *(v112 + 1) >= v116;
                  goto LABEL_242;
                }

                if (v120 < v115)
                {
LABEL_246:
                  *v117 = *v112;
                  if (v118 <= 1)
                  {
                    goto LABEL_249;
                  }

                  continue;
                }

                break;
              }

              v112 = v117;
LABEL_249:
              *v112 = v113;
              v112[1] = v115;
              *(v112 + 1) = v116;
LABEL_250:
              if (v11-- <= 2)
              {
                return;
              }

              goto LABEL_217;
            }
          }
        }
      }
    }

    v12 = v11 >> 1;
    v13 = (i + 16 * (v11 >> 1));
    if (v11 < 0x81)
    {
      a5 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(&result[v11 >> 1], result, &a2[-1], a5);
    }

    else
    {
      v14 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(result, &result[v11 >> 1], &a2[-1], a5);
      v15 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(&result[1], v13 - 4, &a2[-2], v14);
      v16 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(&result[2], &result[v12 + 1], &a2[-3], v15);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>((v13 - 4), v13, &result[v12 + 1], v16);
      v131 = *result;
      *result = *v13;
      a5 = v131;
      *v13 = v131;
    }

    --a3;
    if (a4)
    {
      v17 = result->n128_f32[0];
      goto LABEL_23;
    }

    v17 = result[-1].n128_f32[0];
    v18 = result->n128_f32[0];
    if (LODWORD(v17) == result->n128_u32[0])
    {
      v19 = result[-1].n128_f32[1];
      a5.n128_u32[0] = result->n128_u32[1];
      if (vabds_f32(v19, a5.n128_f32[0]) >= 0.00000011921)
      {
        if (v19 >= a5.n128_f32[0])
        {
          goto LABEL_80;
        }

        goto LABEL_23;
      }

      if (result[-1].n128_u64[1] < result->n128_u64[1])
      {
        goto LABEL_23;
      }

LABEL_80:
      v40 = result->n128_u64[1];
      v41 = *v9;
      v42 = LODWORD(v18) >= *v9;
      if (LODWORD(v18) != *v9)
      {
        goto LABEL_83;
      }

      v43 = a2[-1].n128_f32[1];
      if (vabds_f32(a5.n128_f32[0], v43) < 0.00000011921)
      {
        v42 = v40 >= a2[-1].n128_u64[1];
LABEL_83:
        if (!v42)
        {
          goto LABEL_84;
        }

        goto LABEL_93;
      }

      if (a5.n128_f32[0] < v43)
      {
LABEL_84:
        for (i = result[1].n128_u64; ; i += 16)
        {
          v44 = LODWORD(v18) >= *i;
          if (LODWORD(v18) != *i)
          {
            goto LABEL_88;
          }

          v45 = *(i + 4);
          if (vabds_f32(a5.n128_f32[0], v45) < 0.00000011921)
          {
            break;
          }

          if (a5.n128_f32[0] < v45)
          {
            goto LABEL_102;
          }

LABEL_91:
          ;
        }

        v44 = v40 >= *(i + 8);
LABEL_88:
        if (!v44)
        {
          goto LABEL_102;
        }

        goto LABEL_91;
      }

LABEL_93:
      for (i = result[1].n128_u64; i < a2; i += 16)
      {
        v46 = LODWORD(v18) >= *i;
        if (LODWORD(v18) != *i)
        {
          goto LABEL_98;
        }

        v47 = *(i + 4);
        if (vabds_f32(a5.n128_f32[0], v47) < 0.00000011921)
        {
          v46 = v40 >= *(i + 8);
LABEL_98:
          if (!v46)
          {
            break;
          }

          continue;
        }

        if (a5.n128_f32[0] < v47)
        {
          break;
        }
      }

LABEL_102:
      j = a2;
      if (i < a2)
      {
        for (j = &a2[-1]; ; j -= 4)
        {
          v49 = LODWORD(v18) >= v41;
          if (LODWORD(v18) != v41)
          {
            goto LABEL_107;
          }

          v50 = j[1];
          if (vabds_f32(a5.n128_f32[0], v50) < 0.00000011921)
          {
            break;
          }

          if (a5.n128_f32[0] >= v50)
          {
            goto LABEL_126;
          }

LABEL_111:
          v51 = *(j - 4);
          v41 = v51;
        }

        v49 = v40 >= *(j + 1);
LABEL_107:
        if (v49)
        {
          goto LABEL_126;
        }

        goto LABEL_111;
      }

LABEL_126:
      if (i < j)
      {
        v133 = *i;
        *i = *j;
        *j = v133;
        do
        {
          while (1)
          {
            v52 = *(i + 16);
            i += 16;
            v53 = LODWORD(v18) >= v52;
            if (LODWORD(v18) == v52)
            {
              break;
            }

LABEL_116:
            if (!v53)
            {
              goto LABEL_121;
            }
          }

          v54 = *(i + 4);
          if (vabds_f32(a5.n128_f32[0], v54) < 0.00000011921)
          {
            v53 = v40 >= *(i + 8);
            goto LABEL_116;
          }
        }

        while (a5.n128_f32[0] >= v54);
        while (1)
        {
LABEL_121:
          v55 = *(j - 4);
          j -= 4;
          v56 = LODWORD(v18) >= v55;
          if (LODWORD(v18) == v55)
          {
            v57 = j[1];
            if (vabds_f32(a5.n128_f32[0], v57) >= 0.00000011921)
            {
              if (a5.n128_f32[0] >= v57)
              {
                goto LABEL_126;
              }

              continue;
            }

            v56 = v40 >= *(j + 1);
          }

          if (v56)
          {
            goto LABEL_126;
          }
        }
      }

      if ((i - 16) != result)
      {
        *result = *(i - 16);
      }

      a4 = 0;
      *(i - 16) = v18;
      *(i - 12) = a5.n128_u32[0];
      *(i - 8) = v40;
    }

    else
    {
      if (LODWORD(v17) >= LODWORD(v18))
      {
        a5.n128_u32[0] = result->n128_u32[1];
        goto LABEL_80;
      }

      v17 = result->n128_f32[0];
LABEL_23:
      a5.n128_u32[0] = result->n128_u32[1];
      v20 = result->n128_u64[1];
      for (k = result[1].n128_u64; ; k += 16)
      {
        v22 = *k >= LODWORD(v17);
        if (*k != LODWORD(v17))
        {
          goto LABEL_27;
        }

        v23 = *(k + 4);
        if (vabds_f32(v23, a5.n128_f32[0]) >= 0.00000011921)
        {
          break;
        }

        v22 = *(k + 8) >= v20;
LABEL_27:
        if (v22)
        {
          goto LABEL_32;
        }

LABEL_31:
        ;
      }

      if (v23 < a5.n128_f32[0])
      {
        goto LABEL_31;
      }

LABEL_32:
      m = &a2[-1];
      if ((k - 16) != result)
      {
        while (2)
        {
          v25 = *m >= LODWORD(v17);
          if (*m == LODWORD(v17))
          {
            v26 = m[1];
            if (vabds_f32(v26, a5.n128_f32[0]) < 0.00000011921)
            {
              v25 = *(m + 1) >= v20;
              goto LABEL_36;
            }

            if (v26 < a5.n128_f32[0])
            {
              goto LABEL_56;
            }
          }

          else
          {
LABEL_36:
            if (!v25)
            {
              goto LABEL_56;
            }
          }

          m -= 4;
          continue;
        }
      }

      m = a2;
      if (k < a2)
      {
        for (m = &a2[-1]; ; m -= 4)
        {
          v27 = *m >= LODWORD(v17);
          if (*m != LODWORD(v17))
          {
            goto LABEL_45;
          }

          v28 = m[1];
          if (vabds_f32(v28, a5.n128_f32[0]) < 0.00000011921)
          {
            break;
          }

          if (v28 < a5.n128_f32[0] || k >= m)
          {
            goto LABEL_56;
          }

LABEL_55:
          ;
        }

        v27 = *(m + 1) >= v20;
LABEL_45:
        if (!v27 || k >= m)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }

LABEL_56:
      i = k;
      if (k >= m)
      {
        goto LABEL_73;
      }

      i = k;
      v31 = m;
      do
      {
        v132 = *i;
        *i = *v31;
        *v31 = v132;
        do
        {
          while (1)
          {
            v32 = *(i + 16);
            i += 16;
            v33 = v32 >= LODWORD(v17);
            if (v32 == LODWORD(v17))
            {
              break;
            }

LABEL_62:
            if (v33)
            {
              goto LABEL_68;
            }
          }

          v34 = *(i + 4);
          if (vabds_f32(v34, a5.n128_f32[0]) < 0.00000011921)
          {
            v33 = *(i + 8) >= v20;
            goto LABEL_62;
          }
        }

        while (v34 < a5.n128_f32[0]);
        do
        {
          while (1)
          {
LABEL_68:
            v35 = *(v31 - 4);
            v31 -= 4;
            v36 = v35 >= LODWORD(v17);
            if (v35 != LODWORD(v17))
            {
              goto LABEL_71;
            }

            v37 = v31[1];
            if (vabds_f32(v37, a5.n128_f32[0]) < 0.00000011921)
            {
              break;
            }

            if (v37 < a5.n128_f32[0])
            {
              goto LABEL_72;
            }
          }

          v36 = *(v31 + 1) >= v20;
LABEL_71:
          ;
        }

        while (v36);
LABEL_72:
        ;
      }

      while (i < v31);
LABEL_73:
      if ((i - 16) != result)
      {
        *result = *(i - 16);
      }

      *(i - 16) = v17;
      *(i - 12) = a5.n128_u32[0];
      *(i - 8) = v20;
      if (k < m)
      {
LABEL_78:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,false>(result, (i - 16), a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v38 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *>(result, (i - 16), a5);
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *>(i, a2, v39))
        {
          a2 = (i - 16);
          if (v38)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v38)
        {
          goto LABEL_78;
        }
      }
    }
  }

  v61 = (i + 16);
  v63 = i == a2 || v61 == a2;
  if ((a4 & 1) == 0)
  {
    if (v63)
    {
      return;
    }

    while (1)
    {
      v122 = result;
      result = v61;
      v123 = *(v122 + 16);
      if (v123 == *v122)
      {
        v124 = *(v122 + 20);
        v125 = *(v122 + 4);
        if (vabds_f32(v124, v125) < 0.00000011921)
        {
          if (*(v122 + 24) >= *(v122 + 8))
          {
            goto LABEL_270;
          }

LABEL_261:
          v126 = *(v122 + 24);
          while (1)
          {
LABEL_262:
            v127 = v122;
            *(v122 + 16) = *v122;
            v128 = *(v122 - 16);
            v122 -= 16;
            v129 = v123 >= v128;
            if (v123 != v128)
            {
              goto LABEL_265;
            }

            v130 = *(v127 - 12);
            if (vabds_f32(v124, v130) < 0.00000011921)
            {
              break;
            }

            if (v124 >= v130)
            {
LABEL_269:
              *v127 = v123;
              *(v127 + 4) = v124;
              *(v127 + 8) = v126;
              goto LABEL_270;
            }
          }

          v129 = v126 >= *(v127 - 8);
LABEL_265:
          if (v129)
          {
            goto LABEL_269;
          }

          goto LABEL_262;
        }

        if (v124 < v125)
        {
          goto LABEL_261;
        }
      }

      else if (v123 < *v122)
      {
        v124 = *(v122 + 20);
        goto LABEL_261;
      }

LABEL_270:
      v61 = &result[1];
      if (&result[1] == a2)
      {
        return;
      }
    }
  }

  if (v63)
  {
    return;
  }

  v64 = 0;
  v65 = i;
  while (2)
  {
    v66 = v65;
    v65 = v61;
    v67 = *(v66 + 16);
    if (v67 == *v66)
    {
      v68 = *(v66 + 20);
      v69 = *(v66 + 4);
      if (vabds_f32(v68, v69) >= 0.00000011921)
      {
        if (v68 >= v69)
        {
          goto LABEL_176;
        }
      }

      else if (*(v66 + 24) >= *(v66 + 8))
      {
        goto LABEL_176;
      }
    }

    else
    {
      if (v67 >= *v66)
      {
        goto LABEL_176;
      }

      v68 = *(v66 + 20);
    }

    v70 = *(v66 + 24);
    *v65 = *v66;
    v71 = i;
    if (v66 == i)
    {
      goto LABEL_175;
    }

    v72 = v64;
    while (2)
    {
      v73 = (i + v72);
      v74 = *(i + v72 - 16);
      if (v67 != v74)
      {
        if (v67 >= v74)
        {
          v71 = i + v72;
          goto LABEL_175;
        }

        goto LABEL_172;
      }

      v75 = *(v73 - 3);
      if (vabds_f32(v68, v75) < 0.00000011921)
      {
        if (v70 >= *(i + v72 - 8))
        {
          break;
        }

        goto LABEL_172;
      }

      if (v68 < v75)
      {
LABEL_172:
        v66 -= 16;
        *v73 = *(i + v72 - 16);
        v72 -= 16;
        if (!v72)
        {
          v71 = i;
          goto LABEL_175;
        }

        continue;
      }

      break;
    }

    v71 = v66;
LABEL_175:
    *v71 = v67;
    *(v71 + 4) = v68;
    *(v71 + 8) = v70;
LABEL_176:
    v61 = (v65 + 16);
    v64 += 16;
    if ((v65 + 16) != a2)
    {
      continue;
    }

    break;
  }
}

void std::vector<RouteJunctionInfo,geo::allocator_adapter<RouteJunctionInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<RouteJunctionInfo>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<RouteJunctionInfo>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

uint64_t VectorTileMapper::mapNodeJunctionToTile(geo::MapNode **a1, uint64_t a2)
{
  v4 = geo::MapNode::tile(*a1);
  v5 = v4;
  if (v4)
  {
    objc_msgSend_vectorTilePtr(v4);
    v6 = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }
  }

  else
  {
    v6 = 0;
  }

  if (!geo::codec::TileKeyEquals((a2 + 4), (v6 + 4)) || *a2 != *v6)
  {
    return 0;
  }

  result = geo::MapNode::junction(*a1);
  if (!result)
  {
    return result;
  }

  v8 = result - *(v6 + 696);
  if (*(a2 + 704) > (v8 >> 5))
  {
    return *(a2 + 696) + v8;
  }

  else
  {
    return 0;
  }
}

void std::vector<RouteJunctionInfo,geo::allocator_adapter<RouteJunctionInfo,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, _OWORD *a2)
{
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(result);
      v12 = pthread_rwlock_rdlock((v11 + 32));
      if (v12)
      {
        geo::read_write_lock::logFailure(v12, "read lock", v13);
      }

      v14 = malloc_type_zone_malloc(*v11, 16 * v10, 0x10200405730B0C9uLL);
      atomic_fetch_add((v11 + 24), 1u);
      geo::read_write_lock::unlock((v11 + 32));
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[16 * v7];
    v16 = &v14[16 * v10];
    *v15 = *a2;
    v6 = v15 + 16;
    v17 = *(result + 1) - *result;
    v18 = &v15[-v17];
    v19 = memcpy(&v15[-v17], *result, v17);
    v20 = *result;
    *result = v18;
    *(result + 1) = v6;
    *(result + 2) = v16;
    if (v20)
    {
      v21 = mdm::zone_mallocator::instance(v19);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<RouteJunctionInfo>(v21, v20);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(result + 1) = v6;
}

__n128 std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(uint64_t a1, float *a2, uint64_t a3, __n128 result)
{
  v4 = *a2;
  v5 = *a2 >= *a1;
  if (*a2 != *a1)
  {
LABEL_4:
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    v10 = *a3 >= LODWORD(v4);
    if (*a3 == LODWORD(v4))
    {
      result.n128_u32[0] = *(a3 + 4);
      v11 = a2[1];
      if (vabds_f32(result.n128_f32[0], v11) >= 0.00000011921)
      {
        if (result.n128_f32[0] >= v11)
        {
          return result;
        }

        goto LABEL_25;
      }

      v10 = *(a3 + 8) >= *(a2 + 1);
    }

    if (v10)
    {
      return result;
    }

LABEL_25:
    result = *a2;
    *a2 = *a3;
    *a3 = result;
    v14 = *a2 >= *a1;
    if (*a2 == *a1)
    {
      result.n128_f32[0] = a2[1];
      v15 = *(a1 + 4);
      if (vabds_f32(result.n128_f32[0], v15) >= 0.00000011921)
      {
        if (result.n128_f32[0] >= v15)
        {
          return result;
        }

        goto LABEL_35;
      }

      v14 = *(a2 + 1) >= *(a1 + 8);
    }

    if (v14)
    {
      return result;
    }

LABEL_35:
    result = *a1;
    *a1 = *a2;
    *a2 = result;
    return result;
  }

  result.n128_f32[0] = a2[1];
  v6 = *(a1 + 4);
  if (vabds_f32(result.n128_f32[0], v6) < 0.00000011921)
  {
    v5 = *(a2 + 1) >= *(a1 + 8);
    goto LABEL_4;
  }

  if (result.n128_f32[0] >= v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  v7 = *a3 >= LODWORD(v4);
  if (*a3 != LODWORD(v4))
  {
    goto LABEL_8;
  }

  v8 = *(a3 + 4);
  v9 = a2[1];
  if (vabds_f32(v8, v9) < 0.00000011921)
  {
    v7 = *(a3 + 8) >= *(a2 + 1);
LABEL_8:
    if (!v7)
    {
LABEL_9:
      result = *a1;
      *a1 = *a3;
LABEL_33:
      *a3 = result;
      return result;
    }

    goto LABEL_18;
  }

  if (v8 < v9)
  {
    goto LABEL_9;
  }

LABEL_18:
  result = *a1;
  *a1 = *a2;
  *a2 = result;
  v12 = *a3 >= *a2;
  if (*a3 == *a2)
  {
    result.n128_u32[0] = *(a3 + 4);
    v13 = a2[1];
    if (vabds_f32(result.n128_f32[0], v13) >= 0.00000011921)
    {
      if (result.n128_f32[0] >= v13)
      {
        return result;
      }

      goto LABEL_32;
    }

    v12 = *(a3 + 8) >= *(a2 + 1);
  }

  if (!v12)
  {
LABEL_32:
    result = *a2;
    *a2 = *a3;
    goto LABEL_33;
  }

  return result;
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  result.n128_u64[0] = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(a1, a2, a3, a5).n128_u64[0];
  v10 = *a4 >= *a3;
  if (*a4 != *a3)
  {
LABEL_4:
    if (v10)
    {
      return result;
    }

    goto LABEL_8;
  }

  result.n128_u32[0] = *(a4 + 4);
  v11 = *(a3 + 4);
  if (vabds_f32(result.n128_f32[0], v11) < 0.00000011921)
  {
    v10 = *(a4 + 8) >= *(a3 + 8);
    goto LABEL_4;
  }

  if (result.n128_f32[0] >= v11)
  {
    return result;
  }

LABEL_8:
  result = *a3;
  *a3 = *a4;
  *a4 = result;
  v12 = *a3 >= *a2;
  if (*a3 != *a2)
  {
    goto LABEL_11;
  }

  result.n128_u32[0] = *(a3 + 4);
  v13 = *(a2 + 4);
  if (vabds_f32(result.n128_f32[0], v13) < 0.00000011921)
  {
    v12 = *(a3 + 8) >= *(a2 + 8);
LABEL_11:
    if (v12)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (result.n128_f32[0] >= v13)
  {
    return result;
  }

LABEL_15:
  result = *a2;
  *a2 = *a3;
  *a3 = result;
  v14 = *a2 >= *a1;
  if (*a2 != *a1)
  {
    goto LABEL_18;
  }

  result.n128_u32[0] = *(a2 + 4);
  v15 = *(a1 + 4);
  if (vabds_f32(result.n128_f32[0], v15) < 0.00000011921)
  {
    v14 = *(a2 + 8) >= *(a1 + 8);
LABEL_18:
    if (v14)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (result.n128_f32[0] >= v15)
  {
    return result;
  }

LABEL_19:
  result = *a1;
  *a1 = *a2;
  *a2 = result;
  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  result.n128_u64[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(a1, a2, a3, a4, a6).n128_u64[0];
  v12 = *a5 >= *a4;
  if (*a5 != *a4)
  {
LABEL_4:
    if (v12)
    {
      return result;
    }

    goto LABEL_8;
  }

  result.n128_u32[0] = *(a5 + 4);
  v13 = *(a4 + 4);
  if (vabds_f32(result.n128_f32[0], v13) < 0.00000011921)
  {
    v12 = *(a5 + 8) >= *(a4 + 8);
    goto LABEL_4;
  }

  if (result.n128_f32[0] >= v13)
  {
    return result;
  }

LABEL_8:
  result = *a4;
  *a4 = *a5;
  *a5 = result;
  v14 = *a4 >= *a3;
  if (*a4 != *a3)
  {
    goto LABEL_11;
  }

  result.n128_u32[0] = *(a4 + 4);
  v15 = *(a3 + 4);
  if (vabds_f32(result.n128_f32[0], v15) < 0.00000011921)
  {
    v14 = *(a4 + 8) >= *(a3 + 8);
LABEL_11:
    if (v14)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (result.n128_f32[0] >= v15)
  {
    return result;
  }

LABEL_15:
  result = *a3;
  *a3 = *a4;
  *a4 = result;
  v16 = *a3 >= *a2;
  if (*a3 != *a2)
  {
    goto LABEL_18;
  }

  result.n128_u32[0] = *(a3 + 4);
  v17 = *(a2 + 4);
  if (vabds_f32(result.n128_f32[0], v17) < 0.00000011921)
  {
    v16 = *(a3 + 8) >= *(a2 + 8);
LABEL_18:
    if (v16)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (result.n128_f32[0] >= v17)
  {
    return result;
  }

LABEL_22:
  result = *a2;
  *a2 = *a3;
  *a3 = result;
  v18 = *a2 >= *a1;
  if (*a2 != *a1)
  {
    goto LABEL_25;
  }

  result.n128_u32[0] = *(a2 + 4);
  v19 = *(a1 + 4);
  if (vabds_f32(result.n128_f32[0], v19) < 0.00000011921)
  {
    v18 = *(a2 + 8) >= *(a1 + 8);
LABEL_25:
    if (v18)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (result.n128_f32[0] >= v19)
  {
    return result;
  }

LABEL_26:
  result = *a1;
  *a1 = *a2;
  *a2 = result;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *>(float *a1, __int128 *a2, __n128 a3)
{
  v5 = (a2 - a1) >> 4;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(a1, a1 + 4, (a2 - 1), a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(a1, (a1 + 4), (a1 + 8), (a2 - 1), a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(a1, (a1 + 4), (a1 + 8), (a1 + 12), (a2 - 1), a3);
        return 1;
    }
  }

  else
  {
    if (v5 < 2)
    {
      return 1;
    }

    if (v5 == 2)
    {
      v6 = a2 - 1;
      v7 = *(a2 - 4);
      v8 = v7 >= *a1;
      if (v7 == *a1)
      {
        v9 = *(a2 - 3);
        v10 = a1[1];
        if (vabds_f32(v9, v10) >= 0.00000011921)
        {
          if (v9 >= v10)
          {
            return 1;
          }

          goto LABEL_40;
        }

        v8 = *(a2 - 1) >= *(a1 + 1);
      }

      if (v8)
      {
        return 1;
      }

LABEL_40:
      v23 = *a1;
      *a1 = *v6;
      *v6 = v23;
      return 1;
    }
  }

  v11 = (a1 + 8);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,0>(a1, a1 + 4, (a1 + 8), a3);
  v12 = (a1 + 12);
  if (a1 + 12 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (2)
  {
    v15 = *v12;
    if (*v12 == *v11)
    {
      v16 = *(v12 + 4);
      v17 = *(v11 + 4);
      if (vabds_f32(v16, v17) >= 0.00000011921)
      {
        if (v16 >= v17)
        {
          goto LABEL_36;
        }
      }

      else if (*(v12 + 8) >= *(v11 + 8))
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v15 >= *v11)
      {
        goto LABEL_36;
      }

      v16 = *(v12 + 4);
    }

    v18 = *(v12 + 8);
    *v12 = *v11;
    v19 = v13;
    while (1)
    {
      v20 = *(a1 + v19 + 16);
      v21 = v15 >= v20;
      if (v15 != v20)
      {
        goto LABEL_28;
      }

      v22 = *(a1 + v19 + 20);
      if (vabds_f32(v16, v22) < 0.00000011921)
      {
        v21 = v18 >= *(a1 + v19 + 24);
LABEL_28:
        if (v21)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      if (v16 >= v22)
      {
        break;
      }

LABEL_32:
      v11 -= 16;
      *(a1 + v19 + 32) = *(a1 + v19 + 16);
      v19 -= 16;
      if (v19 == -32)
      {
        v11 = a1;
        goto LABEL_35;
      }
    }

    v11 = a1 + v19 + 32;
LABEL_35:
    *v11 = v15;
    *(v11 + 4) = v16;
    *(v11 + 8) = v18;
    if (++v14 != 8)
    {
LABEL_36:
      v11 = v12;
      v13 += 16;
      v12 += 16;
      if (v12 == a2)
      {
        return 1;
      }

      continue;
    }

    return v12 + 16 == a2;
  }
}

void sub_1B3078080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, mdm::zone_mallocator *a14)
{
  std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::hash<GeoCodecsConnectivityJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::equal_to<GeoCodecsConnectivityJunction *>,std::hash<GeoCodecsConnectivityJunction *>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,mdm::zone_mallocator>>::__deallocate_node(a14);
  if (a11)
  {
    v16 = mdm::zone_mallocator::instance(v15);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *>(v16, a11);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::hash<GeoCodecsConnectivityJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::equal_to<GeoCodecsConnectivityJunction *>,std::hash<GeoCodecsConnectivityJunction *>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,mdm::zone_mallocator>>::find<GeoCodecsConnectivityJunction *>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(a2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= a2)
    {
      v7 = v5 % a2;
    }
  }

  else
  {
    v7 = v5 & (a2 - 1);
  }

  v8 = *(a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == a3)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= a2)
        {
          v10 %= a2;
        }
      }

      else
      {
        v10 &= a2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::hash<GeoCodecsConnectivityJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::equal_to<GeoCodecsConnectivityJunction *>,std::hash<GeoCodecsConnectivityJunction *>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,mdm::zone_mallocator>>::__emplace_unique_key_args<GeoCodecsConnectivityJunction *,std::piecewise_construct_t const&,std::tuple<GeoCodecsConnectivityJunction * const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 1);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }
    }

    else
    {
      v3 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if (i[2] == a2)
          {
            return i;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v14 = mdm::zone_mallocator::instance(a1);
  v15 = pthread_rwlock_rdlock((v14 + 32));
  if (v15)
  {
    geo::read_write_lock::logFailure(v15, "read lock", v16);
  }

  i = malloc_type_zone_malloc(*v14, 0x20uLL, 0x106004009C49B2EuLL);
  atomic_fetch_add((v14 + 24), 1u);
  geo::read_write_lock::unlock((v14 + 32));
  *i = 0;
  i[1] = v8;
  i[2] = **a3;
  i[3] = 0;
  v18 = (*(a1 + 5) + 1);
  v19 = a1[12];
  if (!v9 || (v19 * v9) < v18)
  {
    v20 = 1;
    if (v9 >= 3)
    {
      v20 = (v9 & (v9 - 1)) != 0;
    }

    v21 = v20 | (2 * v9);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    if (v23 == 1)
    {
      v23 = 2;
    }

    else if ((v23 & (v23 - 1)) != 0)
    {
      prime = std::__next_prime(v23);
      v23 = prime;
    }

    v9 = *(a1 + 1);
    if (v23 > v9)
    {
      goto LABEL_32;
    }

    if (v23 < v9)
    {
      prime = vcvtps_u32_f32(*(a1 + 5) / a1[12]);
      if (v9 < 3 || (v32 = vcnt_s8(v9), v32.i16[0] = vaddlv_u8(v32), v32.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v33 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v33;
        }
      }

      if (v23 <= prime)
      {
        v23 = prime;
      }

      if (v23 >= v9)
      {
        v9 = *(a1 + 1);
      }

      else
      {
        if (v23)
        {
LABEL_32:
          v24 = mdm::zone_mallocator::instance(prime);
          v25 = pthread_rwlock_rdlock((v24 + 32));
          if (v25)
          {
            geo::read_write_lock::logFailure(v25, "read lock", v26);
          }

          v27 = malloc_type_zone_malloc(*v24, 8 * v23, 0x2004093837F09uLL);
          atomic_fetch_add((v24 + 24), 1u);
          geo::read_write_lock::unlock((v24 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> **,0>(a1, v27);
          v28 = 0;
          *(a1 + 1) = v23;
          do
          {
            *(*a1 + 8 * v28++) = 0;
          }

          while (v23 != v28);
          v29 = *(a1 + 3);
          if (v29)
          {
            v30 = v29[1];
            v31 = vcnt_s8(v23);
            v31.i16[0] = vaddlv_u8(v31);
            if (v31.u32[0] > 1uLL)
            {
              if (v30 >= v23)
              {
                v30 %= v23;
              }
            }

            else
            {
              v30 &= v23 - 1;
            }

            *(*a1 + 8 * v30) = a1 + 6;
            v34 = *v29;
            if (*v29)
            {
              do
              {
                v35 = v34[1];
                if (v31.u32[0] > 1uLL)
                {
                  if (v35 >= v23)
                  {
                    v35 %= v23;
                  }
                }

                else
                {
                  v35 &= v23 - 1;
                }

                if (v35 != v30)
                {
                  v36 = *a1;
                  if (!*(*a1 + 8 * v35))
                  {
                    *(v36 + 8 * v35) = v29;
                    goto LABEL_56;
                  }

                  *v29 = *v34;
                  *v34 = **(v36 + 8 * v35);
                  **(v36 + 8 * v35) = v34;
                  v34 = v29;
                }

                v35 = v30;
LABEL_56:
                v29 = v34;
                v34 = *v34;
                v30 = v35;
              }

              while (v34);
            }
          }

          v9 = v23;
          goto LABEL_60;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> **,0>(a1, 0);
        v9 = 0;
        *(a1 + 1) = 0;
      }
    }

LABEL_60:
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v37 = *a1;
  v38 = *(*a1 + 8 * v3);
  if (v38)
  {
    *i = *v38;
LABEL_73:
    *v38 = i;
    goto LABEL_74;
  }

  *i = *(a1 + 3);
  *(a1 + 3) = i;
  *(v37 + 8 * v3) = a1 + 6;
  if (*i)
  {
    v39 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v39 >= v9)
      {
        v39 %= v9;
      }
    }

    else
    {
      v39 &= v9 - 1;
    }

    v38 = (*a1 + 8 * v39);
    goto LABEL_73;
  }

LABEL_74:
  ++*(a1 + 5);
  return i;
}

void sub_1B3078618(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 32));
  v5 = mdm::zone_mallocator::instance(v4);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *>>(v5, v1);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::hash<GeoCodecsConnectivityJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::equal_to<GeoCodecsConnectivityJunction *>,std::hash<GeoCodecsConnectivityJunction *>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,mdm::zone_mallocator>>::__deallocate_node(mdm::zone_mallocator *result)
{
  if (result)
  {
    v1 = result;
    do
    {
      v2 = *v1;
      v3 = mdm::zone_mallocator::instance(result);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *>>(v3, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> **,0>(mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *>(v3, v2);
  }
}

void sub_1B3079004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{
  a16 = &a39;
  std::vector<std::pair<std::string,VKLabelNavJunction * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&a16);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,VKLabelNavJunction * {__strong}>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 32;
        std::__destroy_at[abi:nn200100]<std::pair<std::string,VKLabelNavJunction * {__strong}>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string,VKLabelNavJunction * {__strong}>,0>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

std::string *std::pair<std::string,VKLabelNavJunction * {__strong}>::pair[abi:nn200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  return this;
}

uint64_t std::__split_buffer<std::pair<std::string,VKLabelNavJunction * {__strong}>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__destroy_at[abi:nn200100]<std::pair<std::string,VKLabelNavJunction * {__strong}>,0>(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B307A5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, std::__shared_weak_count *a57)
{
  if (a57)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a57);
  }

  _Unwind_Resume(a1);
}

void sub_1B307AC34(_Unwind_Exception *a1)
{
  *(v2 - 96) = v1;

  _Unwind_Resume(a1);
}

void geo::_retain_ptr<GEORoadEdge * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2A6E8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GEORoadEdge * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2A6E8;

  return a1;
}

uint64_t std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::erase(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 3)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[5];
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::shared_ptr<md::LabelTile>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, a2);
  return v4;
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::shared_ptr<md::LabelTile>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](std::__shared_weak_count *a1, void *a2)
{
  if (a1)
  {
    a1 = a2[3];
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
    }
  }

  v3 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelTile>,void *>>(v3, a2);
}

void sub_1B307E514(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  v69 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v69, v67);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v66);
  }

  md::NavLabel::~NavLabel(v63);

  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v64);
  }

  std::__shared_weak_count::~__shared_weak_count(v61);
  operator delete(v70);

  if (a60 < 0)
  {
    v72 = mdm::zone_mallocator::instance(v71);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v72, a55);
  }

  if (a53 < 0)
  {
    v73 = mdm::zone_mallocator::instance(v71);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v73, a48);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a33);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v60);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::NavCurrentRoadSign>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2A668;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B307EC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  _Unwind_Resume(a1);
}

void sub_1B308014C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24)
{
  std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__deallocate_node(a17);
  if (a14)
  {
    v27 = mdm::zone_mallocator::instance(v26);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *>(v27, a14);
  }

  std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__deallocate_node(a24);
  if (a21)
  {
    v29 = mdm::zone_mallocator::instance(v28);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *>(v29, a21);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__erase_unique<std::shared_ptr<md::LabelTile>>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2)
  {
    v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
    v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
    v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    v6 = vcnt_s8(v2);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
      if (v5 >= *&v2)
      {
        v7 = v5 % *&v2;
      }
    }

    else
    {
      v7 = v5 & (*&v2 - 1);
    }

    v8 = *(*result + 8 * v7);
    if (v8)
    {
      for (i = *v8; i; i = *i)
      {
        v10 = i[1];
        if (v10 == v5)
        {
          if (i[2] == a2)
          {
            return std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::erase(result, i);
          }
        }

        else
        {
          if (v6.u32[0] > 1uLL)
          {
            if (v10 >= *&v2)
            {
              v10 %= *&v2;
            }
          }

          else
          {
            v10 &= *&v2 - 1;
          }

          if (v10 != v7)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::shared_ptr<md::LabelTile>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x20uLL, 0x10200404161829EuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::PrefilteredLine::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::PrefilteredLine::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::PrefilteredLine::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::PrefilteredLine::DefaultVbo>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::PrefilteredLine::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::PrefilteredLine::DefaultVbo>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2A838;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::PrefilteredLine::PrefilteredLineMesh::~PrefilteredLineMesh(ggl::PrefilteredLine::PrefilteredLineMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::PrefilteredLine::PrefilteredLineMesh::~PrefilteredLineMesh(ggl::PrefilteredLine::PrefilteredLineMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::PrefilteredLine::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::PrefilteredLine::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::PrefilteredLine::PrefilteredLinePipelineSetup::~PrefilteredLinePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::SelectedTransitLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v12 = vrev64_s32(*(a2 + 4));
  v13 = *(a2 + 1);
  v14 = [*(a1 + 832) muid];
  v15 = GEOTransitLineSelectionAdditionalInfoMake();
  v16 = v9;
  if ((a4 & 0x100000000) != 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = 2147483646;
  }

  return gdc::ResourceKey::ResourceKey(a5, *(a1 + 592), &v12, 40, a3, v10);
}

void md::SelectedTransitLayerDataSource::createLayerData(uint64_t a1, const gdc::LayerDataRequestKey **a2, uint64_t *a3)
{
  gdc::LayerDataSource::getResourceFromMap<md::GEOVectorTileResource>(&v12, *(a1 + 592), *a3, a3[1]);
  if (v12)
  {
    v6 = *(v12 + 152);
    v10 = *(v12 + 144);
    v11 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  std::atomic_load[abi:nn200100]<md::RegistryManager>(&v9, (a1 + 800));
  memset(__p, 0, sizeof(__p));
  gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], __p);
  atomic_load((a1 + 816));
  v7 = *(a1 + 768);
  operator new();
}

void sub_1B30810F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v21);

  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(a1);
}

void md::SelectedTransitLayerDataSource::constructRequests(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v14 = v3;
    v15 = v4;
    v6 = a2;
    do
    {
      v8 = *v6;
      *&v9 = gdc::Tiled::tileFromLayerDataKey(v13, (*v6)[2]);
      if (*(a1 + 832) && *(a1 + 848) > v13[1])
      {
        (*(*a1 + 144))(&v10, a1, *v8, v13, *(v8 + 14), *(v8 + 12) & 0xFFFFFFFFFFLL, v9);
        gdc::LayerDataRequest::request(*v6, &v10, 0);
        if (v11 != v12)
        {
          free(v11);
        }
      }

      v6 += 2;
    }

    while (v6 != a3);
  }
}

void md::SelectedTransitLayerDataSource::~SelectedTransitLayerDataSource(md::SelectedTransitLayerDataSource *this)
{
  *this = &unk_1F2A2A8B0;
  *(this + 103) = &unk_1F2A2A958;

  v2 = *(this + 101);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 99);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2A8B0;
  *(this + 103) = &unk_1F2A2A958;

  v2 = *(this + 101);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 99);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

void geo::_retain_ptr<GEOMapItemIdentifier * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2A958;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GEOMapItemIdentifier * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2A958;

  return a1;
}

void md::SelectedTransitLayerDataSource::setSelectedLine(gdc::LayerDataStore **this, GEOMapItemIdentifier *a2, int a3)
{
  v10 = a2;
  if (![(GEOMapItemIdentifier *)v10 isEqual:this[104]]|| *(this + 212) != a3)
  {
    gdc::LayerDataStore::clearAllData(this[2]);
    v5 = v10;
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = this[104];
    this[104] = v6;

    *(this + 212) = a3;
  }
}

id initAVCaptureSessionInterruptionReasonKey(void)
{
  if (LoadAVFoundation(void)::loadPredicate != -1)
  {
    dispatch_once(&LoadAVFoundation(void)::loadPredicate, &__block_literal_global_117);
  }

  v0 = dlsym(LoadAVFoundation(void)::frameworkLibrary, "AVCaptureSessionInterruptionReasonKey");
  objc_storeStrong(&constantAVCaptureSessionInterruptionReasonKey, *v0);
  getAVCaptureSessionInterruptionReasonKey = AVCaptureSessionInterruptionReasonKeyFunction;
  v1 = constantAVCaptureSessionInterruptionReasonKey;

  return v1;
}

void ___ZL16LoadAVFoundationv_block_invoke()
{
  LoadAVFoundation(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/AVFoundation.framework/AVFoundation", 2);
  if (!LoadAVFoundation(void)::frameworkLibrary)
  {
    NSLog(@"### Failed to Soft Linked: /System/Library/Frameworks/AVFoundation.framework/AVFoundation");
  }
}

void sub_1B3081D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MDARController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B3081F38(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id initAVCaptureSessionWasInterruptedNotification(void)
{
  if (LoadAVFoundation(void)::loadPredicate != -1)
  {
    dispatch_once(&LoadAVFoundation(void)::loadPredicate, &__block_literal_global_117);
  }

  v0 = dlsym(LoadAVFoundation(void)::frameworkLibrary, "AVCaptureSessionWasInterruptedNotification");
  objc_storeStrong(&constantAVCaptureSessionWasInterruptedNotification, *v0);
  getAVCaptureSessionWasInterruptedNotification = AVCaptureSessionWasInterruptedNotificationFunction;
  v1 = constantAVCaptureSessionWasInterruptedNotification;

  return v1;
}

Class initARPositionalTrackingConfiguration(void)
{
  if (LoadARKit(void)::loadPredicate != -1)
  {
    dispatch_once(&LoadARKit(void)::loadPredicate, &__block_literal_global_27012);
  }

  result = objc_getClass("ARPositionalTrackingConfiguration");
  classARPositionalTrackingConfiguration = result;
  getARPositionalTrackingConfigurationClass = ARPositionalTrackingConfigurationFunction;
  return result;
}

Class initARSession(void)
{
  if (LoadARKit(void)::loadPredicate != -1)
  {
    dispatch_once(&LoadARKit(void)::loadPredicate, &__block_literal_global_27012);
  }

  result = objc_getClass("ARSession");
  classARSession = result;
  getARSessionClass = ARSessionFunction;
  return result;
}

void ___ZL9LoadARKitv_block_invoke_27019()
{
  LoadARKit(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/ARKit.framework/ARKit", 2);
  if (!LoadARKit(void)::frameworkLibrary)
  {
    NSLog(@"### Failed to Soft Linked: /System/Library/Frameworks/ARKit.framework/ARKit");
  }
}

void ___ZN2md16RouteRenderLayer28startArrowAnimationsIfNeededENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke_8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    *(v2 + 204) = 1065353216;
  }

  v3 = *(v2 + 184);
  *(v2 + 184) = 0;
}

float ___ZN2md16RouteRenderLayer28startArrowAnimationsIfNeededENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke_13(uint64_t a1, float a2)
{
  result = 1.0 - a2;
  *(*(a1 + 32) + 204) = result;
  return result;
}

void ___ZN2md16RouteRenderLayer28startArrowAnimationsIfNeededENSt3__110shared_ptrINS_16RouteLineOverlayEEE_block_invoke_2(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    *(v2 + 204) = 0;
  }

  v3 = *(v2 + 184);
  *(v2 + 184) = 0;
}

void __destroy_helper_block_ea8_32c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_32c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN2md16RouteRenderLayer29layoutArrowsAndManeuverPointsERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEEfbPN3ggl13CommandBufferE_block_invoke(uint64_t a1, float a2)
{
  v2 = *(a1 + 32);
  *(*(a1 + 40) + 528) = *(a1 + 56) + ((*(*(a1 + 40) + 520) - *(a1 + 56)) * a2);
  v3 = **(*(v2 + 40) + 88);
  if (v3)
  {
    v4 = 7;
    md::MapEngine::setNeedsTick(v3, &v4);
  }
}

void ___ZN2md16RouteRenderLayer29layoutArrowsAndManeuverPointsERKNS_13LayoutContextENSt3__110shared_ptrINS_16RouteLineOverlayEEEfbPN3ggl13CommandBufferE_block_invoke_15(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  *(v1 + 528) = *(v1 + 520);
  v3 = *(v1 + 192);
  *(v1 + 192) = 0;

  v4 = **(*(v2 + 40) + 88);
  if (v4)
  {
    v5 = 7;
    md::MapEngine::setNeedsTick(v4, &v5);
  }
}

void *md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::collectRenderItemsForPasses(void *result, void *a2, uint64_t a3)
{
  v82 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *v5;
      std::__function::__value_func<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v79, v3);
      if (*(v6 + 272) == 1)
      {
        ggl::Batcher::reset((v6 + 144));
        md::RenderItemPool::reset((v6 + 224));
        std::__function::__value_func<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v80, v79);
        if (*(v6 + 272) == 1)
        {
          memset(&v70, 0, sizeof(v70));
          std::vector<unsigned int>::reserve(&v70, 5uLL);
          end = v70.__end_;
          v65 = v5;
          if (*(v6 + 136))
          {
            if (v70.__end_ >= v70.__end_cap_.__value_)
            {
              begin = v70.__begin_;
              v11 = v70.__end_ - v70.__begin_;
              v12 = v70.__end_ - v70.__begin_;
              v13 = v12 + 1;
              if ((v12 + 1) >> 62)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v14 = v70.__end_cap_.__value_ - v70.__begin_;
              if ((v70.__end_cap_.__value_ - v70.__begin_) >> 1 > v13)
              {
                v13 = v14 >> 1;
              }

              if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v15 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v15 = v13;
              }

              if (v15)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v15);
              }

              v16 = (4 * v12);
              *v16 = 0;
              end = v16 + 1;
              memcpy(0, begin, v11);
              v70.__begin_ = 0;
              v70.__end_cap_.__value_ = 0;
              if (begin)
              {
                operator delete(begin);
              }
            }

            else
            {
              *v70.__end_ = 0;
              ++end;
            }

            v70.__end_ = end;
            v17 = *(*(v6 + 8) + 56);
            *(v6 + 40) = v17;
            v18 = *(v17 + 58) == 1;
            v9 = 16;
            if (v18)
            {
              v9 = 32;
            }
          }

          else
          {
            v9 = 16;
          }

          v67 = v9;
          v19 = v70.__begin_;
          if (v70.__begin_ != end)
          {
            v21 = *(v6 + 248);
            v20 = *(v6 + 256);
            if (v21 == v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = 0;
              v66 = *(v6 + 256);
              do
              {
                v23 = *v21;
                if (*(*v21 + 48) == 1)
                {
                  if (*(v23 + 88) != v22)
                  {
                    v68 = v22;
                    if (v22)
                    {
                      v24 = ggl::Batcher::commit((v6 + 144), 0xC8u, v7);
                      if (v24[1] != *v24)
                      {
                        v26 = v70.__begin_;
                        v25 = v70.__end_;
                        if (v70.__begin_ != v70.__end_)
                        {
                          v27 = v24;
                          do
                          {
                            v28 = *v26;
                            v71 = &off_1F2A5D8B8;
                            v29 = v6 + 16 + (v28 << 7);
                            v30 = *(v29 + 8);
                            v31 = *(v29 + 24);
                            v74 = *(v29 + 40);
                            v73 = v31;
                            v72 = v30;
                            v32 = *(v29 + 56);
                            v33 = *(v29 + 72);
                            v34 = *(v29 + 88);
                            v78 = *(v29 + 104);
                            v77 = v34;
                            v76 = v33;
                            v75 = v32;
                            v35 = *(v6 + 232);
                            v36 = v35[1];
                            if (v36 == *(v6 + 240))
                            {
                              v35 = *v35;
                              if (!v35)
                              {
                                v35 = malloc_type_malloc(120 * v36 + 16, 0x1020040EDED9539uLL);
                                *v35 = 0;
                                v35[1] = 0;
                                **(v6 + 232) = v35;
                              }

                              *(v6 + 232) = v35;
                              v36 = v35[1];
                            }

                            v37 = &v35[15 * v36];
                            v35[1] = v36 + 1;
                            v37[2] = &off_1F2A5D8B8;
                            v38 = v72;
                            v39 = v73;
                            *(v37 + 7) = v74;
                            *(v37 + 5) = v39;
                            *(v37 + 3) = v38;
                            v40 = v75;
                            v41 = v76;
                            v42 = v77;
                            *(v37 + 15) = v78;
                            *(v37 + 13) = v42;
                            *(v37 + 11) = v41;
                            *(v37 + 9) = v40;
                            ggl::RenderItem::~RenderItem(&v71);
                            v37[10] = v68;
                            v43 = *v27;
                            v37[13] = *v27;
                            v37[14] = (v27[1] - v43) >> 4;
                            std::function<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v81, v28, (v37 + 2));
                            ++v26;
                          }

                          while (v26 != v25);
                        }
                      }
                    }

                    v23 = *v21;
                    v22 = *(*v21 + 88);
                    v20 = v66;
                  }

                  ggl::Batcher::addRange(v6 + 144, (v23 + v67));
                }

                ++v21;
              }

              while (v21 != v20);
              v19 = v70.__begin_;
            }

            v44 = ggl::Batcher::commit((v6 + 144), 0xC8u, v7);
            if (v44[1] != *v44)
            {
              v45 = v70.__end_;
              if (v19 != v70.__end_)
              {
                v46 = v44;
                v69 = v22;
                do
                {
                  v47 = *v19;
                  v71 = &off_1F2A5D8B8;
                  v48 = v6 + 16 + (v47 << 7);
                  v49 = *(v48 + 8);
                  v50 = *(v48 + 24);
                  v74 = *(v48 + 40);
                  v73 = v50;
                  v72 = v49;
                  v51 = *(v48 + 56);
                  v52 = *(v48 + 72);
                  v53 = *(v48 + 88);
                  v78 = *(v48 + 104);
                  v77 = v53;
                  v76 = v52;
                  v75 = v51;
                  v54 = *(v6 + 232);
                  v55 = v54[1];
                  if (v55 == *(v6 + 240))
                  {
                    v54 = *v54;
                    if (!v54)
                    {
                      v54 = malloc_type_malloc(120 * v55 + 16, 0x1020040EDED9539uLL);
                      *v54 = 0;
                      v54[1] = 0;
                      **(v6 + 232) = v54;
                    }

                    *(v6 + 232) = v54;
                    v55 = v54[1];
                  }

                  v56 = &v54[15 * v55];
                  v54[1] = v55 + 1;
                  v56[2] = &off_1F2A5D8B8;
                  v57 = v72;
                  v58 = v73;
                  *(v56 + 7) = v74;
                  *(v56 + 5) = v58;
                  *(v56 + 3) = v57;
                  v59 = v75;
                  v60 = v76;
                  v61 = v77;
                  *(v56 + 15) = v78;
                  *(v56 + 13) = v61;
                  *(v56 + 11) = v60;
                  *(v56 + 9) = v59;
                  ggl::RenderItem::~RenderItem(&v71);
                  v56[10] = v69;
                  v62 = *v46;
                  v56[13] = *v46;
                  v56[14] = (v46[1] - v62) >> 4;
                  std::function<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v81, v47, (v56 + 2));
                  ++v19;
                }

                while (v19 != v45);
                v19 = v70.__begin_;
              }
            }
          }

          if (v19)
          {
            v70.__end_ = v19;
            operator delete(v19);
          }

          v4 = a2;
          v3 = a3;
          v5 = v65;
        }

        std::__function::__value_func<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v80);
      }

      result = std::__function::__value_func<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v79);
      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

void sub_1B308286C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v17 - 128);
  std::__function::__value_func<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v17 - 160);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void sub_1B308323C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x1B8C62190](v35, 0x1020C40A59E487DLL, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_40c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_40c49_ZTSNSt3__110shared_ptrIN2md16RouteLineOverlayEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

ggl::zone_mallocator *std::function<void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v8 = a2;
  v7 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v8, &v7);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v4, v5, v6);
}

ggl::zone_mallocator *std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(ggl::zone_mallocator *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(result + 1);
  v6 = v4[10];
  v5 = v4[11];
  if (v6 >= v5)
  {
    v8 = v4[9];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v22[4] = v4 + 12;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(result);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderItem *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v4[9];
    v18 = v4[10] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v4[9];
    v4[9] = v19;
    v4[10] = v7;
    v21 = v4[11];
    v4[11] = v16;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = std::__split_buffer<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator> &>::~__split_buffer(v22);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v4[10] = v7;
  return result;
}

uint64_t std::__function::__func<md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::Ribbons::RibbonLayer<md::Ribbons::RouteLineArrowRibbonDescriptor>::collectRenderItemsForPasses(unsigned int,ggl::CommandBuffer *,unsigned int)::{lambda(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::RouteLineArrowRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A2AAB8;
  a2[1] = v2;
  return result;
}

uint64_t __Block_byref_object_copy__27085(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

void std::vector<gm::Matrix<float,3,1>>::push_back[abi:nn200100](void **a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v10);
    }

    v11 = 12 * v7;
    v12 = *a2;
    *(v11 + 8) = *(a2 + 2);
    *v11 = v12;
    v6 = 12 * v7 + 12;
    v13 = *a1;
    v14 = a1[1];
    v15 = *a1 + 12 * v7 - v14;
    if (*a1 != v14)
    {
      v16 = *a1 + 12 * v7 - v14;
      do
      {
        v17 = *v13;
        *(v16 + 8) = v13[2];
        *v16 = v17;
        v16 += 12;
        v13 += 3;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v6;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
  }

  a1[1] = v6;
}

uint64_t std::__split_buffer<std::unique_ptr<md::RouteLineArrowLayer>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t (****std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RouteLineArrowRibbon>(v4, v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RouteLineArrowBatchKey,std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RouteLineArrowBatchKey>,std::equal_to<md::RouteLineArrowBatchKey>,true>,std::__unordered_map_equal<md::RouteLineArrowBatchKey,std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RouteLineArrowBatchKey>,std::hash<md::RouteLineArrowBatchKey>,true>,std::allocator<std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<md::RouteLineArrowBatchKey const,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<md::RouteLineArrowBatchKey const,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,0>(uint64_t a1)
{
  v3 = a1 + 16;
  std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::RouteLineArrowBatchKey,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<md::RouteLineArrowBatchKey const,std::vector<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineArrowRibbon,mdm::TypeDeleter<md::RouteLineArrowRibbon>>,mdm::zone_mallocator>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void md::RouteLineArrowRibbon::~RouteLineArrowRibbon(md::RouteLineArrowRibbon *this)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::~StandardModeRibbonUsingPositionType(this);

  JUMPOUT(0x1B8C62190);
}

unint64_t md::TrafficSkeletonResourceFetcher::tileKey(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a3 + 8);
  gdc::ResourceKey::getInt32(v6, 0);
  gdc::ResourceKey::getInt32(v6, 1u);
  gdc::ResourceKey::getInt32(v6, 2u);
  [v5 size];
  [v5 scale];
  v7 = *(a1 + 712);
  v8 = GEOTileKeyMake();
  if (v7 <= 0x19 && ((1 << v7) & 0x200101C) != 0)
  {
    v9 = 128;
  }

  else
  {
    v9 = (v7 == 26) << 7;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFF7FLL;

  return v9 | v10;
}

void md::TrafficSkeletonResourceFetcher::~TrafficSkeletonResourceFetcher(md::TrafficSkeletonResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::TrafficSkeletonTileDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2ABD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MeshSetStorage::prepareStorage(md::MeshSetStorage *this, ResourceAccessor *a2)
{
  if ((*(this + 40) & 1) == 0 && *(this + 4) && *this && *(this + 1))
  {
    v2 = *(this + 2);
    if (v2 != (this + 24))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(v2 + 4);
        v6 = (v3 + v5[1] - 1) / v5[1] * v5[1];
        v3 = v6 + v5[2];
        v5[4] = v6;
        v5[5] = v3;
        v7 = v5[3] + v4;
        v5[6] = v4;
        v5[7] = v7;
        v8 = *(v2 + 1);
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = *(v2 + 2);
            v10 = *v9 == v2;
            v2 = v9;
          }

          while (!v10);
        }

        v4 = v7;
        v2 = v9;
      }

      while (v9 != (this + 24));
    }

    operator new();
  }
}

void std::__shared_ptr_emplace<ggl::BufferData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5CD00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::MeshSetStorage::buildSubVertexData(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if ((*(a2 + 40) & 1) != 0 && a3 && *a3 == a2 && (v5 = a3[1] * a5, v6 = a3[8], v7 = a3[4], v6 + v5 <= (a3[5] - v7)))
  {
    v15[0] = v7 + v6;
    v15[1] = v7 + v6 + v5;
    a3[8] = v6 + v5;
    v8 = *(a2 + 48);
    v16 = a4;
    v9 = a3[14];
    if (v9)
    {
      return (*(*v9 + 48))(a3[14], &v16, v8, v15);
    }

    else
    {
      v10 = std::__throw_bad_function_call[abi:nn200100]();
      return md::MeshSetStorage::buildSubIndexData(v10, v11, v12, v13, v14);
    }
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  return result;
}

void *md::MeshSetStorage::buildSubIndexData(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 40))
  {
    if (a3)
    {
      if (*a3 == a2)
      {
        v5 = a3[9];
        v6 = a3[6];
        if (v5 + a5 <= (a3[7] - v6))
        {
          v7 = v6 + v5;
          v8 = v6 + v5 + a5;
          a3[9] = v5 + a5;
          operator new();
        }
      }
    }
  }

  *result = 0;
  result[1] = 0;
  return result;
}

void md::MeshSetStorage::finalize(md::MeshSetStorage *this)
{
  ggl::BufferMemory::BufferMemory(v3);
  ggl::BufferMemory::operator=(this + 80, v3);
  ggl::BufferMemory::~BufferMemory(v3);
  ggl::BufferMemory::BufferMemory(v3);
  ggl::BufferMemory::operator=(this + 128, v3);
  ggl::BufferMemory::~BufferMemory(v3);
  v2 = *(this + 3);
  this = (this + 24);
  std::__tree<gdc::LayerDataWithWorld>::destroy(v2);
  *this = 0;
  *(this + 1) = 0;
  *(this - 1) = this;
}

void md::mun::MuninViewData::~MuninViewData(md::mun::MuninViewData *this)
{
  md::mun::MuninViewData::~MuninViewData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2AC38;
  v2 = *(this + 65);
  if (v2)
  {
    *(this + 66) = v2;
    operator delete(v2);
  }

  v3 = *(this + 60);
  if (v3 != *(this + 62))
  {
    free(v3);
  }

  v5 = (this + 176);
  std::vector<md::mun::MuninViewMesh>::__destroy_vector::operator()[abi:nn200100](&v5);
  *this = &unk_1F2A60328;
  v4 = *(this + 4);
  if (v4 != *(this + 6))
  {
    free(v4);
  }
}

__n128 md::stringFromLabelOutcome(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  switch(a2)
  {
    case 0:
      *(a1 + 23) = 10;
      *(a1 + 8) = 28271;
      v2 = "NoPosition";
      goto LABEL_45;
    case 1:
      *(a1 + 23) = 7;
      *a1 = 1951625038;
      v9 = 1701607796;
      goto LABEL_30;
    case 2:
      *(a1 + 23) = 9;
      *(a1 + 8) = 110;
      v2 = "OffScreen";
      goto LABEL_45;
    case 3:
      *(a1 + 23) = 7;
      *a1 = 1885957187;
      v8 = 28784;
      goto LABEL_27;
    case 4:
      *(a1 + 23) = 9;
      *(a1 + 8) = 118;
      v2 = "HideInNav";
      goto LABEL_45;
    case 5:
      *(a1 + 23) = 9;
      *(a1 + 8) = 101;
      v2 = "DebugHide";
      goto LABEL_45;
    case 6:
      *(a1 + 23) = 7;
      *a1 = 540811386;
      v9 = 1852402976;
      goto LABEL_30;
    case 7:
      *(a1 + 23) = 7;
      *a1 = 540942458;
      v9 = 2019650848;
      goto LABEL_30;
    case 8:
      *(a1 + 23) = 10;
      *(a1 + 8) = 25964;
      v2 = "NotVisible";
      goto LABEL_45;
    case 9:
      *(a1 + 23) = 12;
      *(a1 + 8) = 1684630625;
      v2 = "HikerInvalid";
      goto LABEL_45;
    case 10:
      *(a1 + 23) = 13;
      v5 = "MatrixInvalid";
      goto LABEL_34;
    case 11:
      *(a1 + 23) = 17;
      *(a1 + 16) = 115;
      v3 = "LoadingGlyphInfos";
      goto LABEL_49;
    case 12:
      *(a1 + 23) = 12;
      *(a1 + 8) = 1936680558;
      v2 = "NoGlyphInfos";
      goto LABEL_45;
    case 13:
      *(a1 + 23) = 7;
      *a1 = 1968271182;
      v9 = 1935958389;
      goto LABEL_30;
    case 14:
      *(a1 + 23) = 6;
      *a1 = 1700032334;
      v4 = 29816;
      goto LABEL_32;
    case 15:
      *(a1 + 23) = 14;
      v7 = "LoadingArtwork";
      goto LABEL_38;
    case 16:
      *(a1 + 23) = 9;
      *(a1 + 8) = 107;
      v2 = "NoArtwork";
      goto LABEL_45;
    case 17:
      *(a1 + 23) = 16;
      v3 = "DuplicateArtwork";
      goto LABEL_49;
    case 18:
      *(a1 + 23) = 6;
      *a1 = 1802398027;
      v4 = 25701;
LABEL_32:
      *(a1 + 4) = v4;
      return result;
    case 19:
      *(a1 + 23) = 12;
      *(a1 + 8) = 1684370529;
      v2 = "Extrapolated";
      goto LABEL_45;
    case 20:
      *(a1 + 23) = 8;
      v11 = 0x64696C6C6F43;
      goto LABEL_40;
    case 21:
      *(a1 + 23) = 7;
      *a1 = 1969513796;
      v8 = 28789;
LABEL_27:
      v9 = v8 | 0x64650000;
LABEL_30:
      *(a1 + 3) = v9;
      return result;
    case 22:
      *(a1 + 23) = 8;
      v11 = 0x64756C63634FLL;
LABEL_40:
      v10 = v11 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      goto LABEL_46;
    case 23:
      *(a1 + 23) = 16;
      v3 = "BuildingOccluded";
      goto LABEL_49;
    case 24:
      *(a1 + 23) = 14;
      v7 = "GroundOccluded";
      goto LABEL_38;
    case 25:
      *(a1 + 23) = 22;
      result.n128_u64[0] = *"RequestingExternalMesh";
      qmemcpy(a1, "RequestingExternalMesh", 22);
      return result;
    case 26:
      *(a1 + 23) = 18;
      *(a1 + 16) = 26739;
      v3 = "FailedExternalMesh";
      goto LABEL_49;
    case 27:
      *(a1 + 23) = 12;
      *(a1 + 8) = 1702521171;
      v2 = "ZeroTextSize";
      goto LABEL_45;
    case 28:
      *(a1 + 23) = 10;
      *(a1 + 8) = 28261;
      v2 = "Overridden";
      goto LABEL_45;
    case 29:
      *(a1 + 23) = 9;
      *(a1 + 8) = 101;
      v2 = "SceneHide";
      goto LABEL_45;
    case 30:
      *(a1 + 23) = 14;
      v7 = "DeactivateHide";
      goto LABEL_38;
    case 31:
      *(a1 + 23) = 8;
      v10 = 0x7973754268746150;
      goto LABEL_46;
    case 32:
      *(a1 + 23) = 14;
      v7 = "NotDisplayable";
LABEL_38:
      *a1 = *v7;
      *(a1 + 6) = *(v7 + 6);
      return result;
    case 33:
      *(a1 + 23) = 13;
      v5 = "FeatureHidden";
LABEL_34:
      *a1 = *v5;
      *(a1 + 5) = *(v5 + 5);
      return result;
    case 34:
      *(a1 + 23) = 9;
      *(a1 + 8) = 103;
      v2 = "NotFacing";
LABEL_45:
      v10 = *v2;
LABEL_46:
      *a1 = v10;
      return result;
    case 35:
      *(a1 + 23) = 16;
      v3 = "CurvedUpsideDown";
      goto LABEL_49;
    case 36:
      *(a1 + 23) = 16;
      v3 = "MaxLabelsReached";
LABEL_49:
      result = *v3;
      *a1 = *v3;
      break;
    case 37:
      *(a1 + 23) = 2;
      *a1 = 19279;
      break;
    case 38:
      *(a1 + 23) = 4;
      *a1 = 1701736270;
      break;
    default:
      return result;
  }

  return result;
}

void mre::GGLResourceStore::~GGLResourceStore(mre::GGLResourceStore *this)
{
  mre::GGLResourceStore::~GGLResourceStore(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2AC68;
  v2 = *(this + 119);
  v3 = *(this + 120);
  while (v2 != v3)
  {
    if (!v2[24])
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }
    }

    v2 += 32;
  }

  v4 = *(this + 105) - *(this + 104);
  if (v4)
  {
    v5 = 0;
    v6 = v4 >> 4;
    do
    {
      v7 = (*(*(this + 107) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 40 * (v5 & 0x3F));
      if (!v7[32] && *v7)
      {
        (*(**v7 + 8))(*v7);
      }

      ++v5;
    }

    while (v6 != v5);
  }

  v8 = *(this + 122);
  if (v8)
  {
    *(this + 123) = v8;
    operator delete(v8);
  }

  v9 = *(this + 119);
  if (v9)
  {
    *(this + 120) = v9;
    operator delete(v9);
  }

  v10 = *(this + 116);
  if (v10)
  {
    *(this + 117) = v10;
    operator delete(v10);
  }

  v11 = *(this + 113);
  if (v11)
  {
    *(this + 114) = v11;
    operator delete(v11);
  }

  ecs2::storage<mre::TextureHandle,mre::TextureStorage,64ul>::~storage(this + 100);
  ecs2::storage<mre::TextureHandle,mre::TextureStorage,64ul>::~storage(this + 87);
  v12 = *(this + 84);
  if (v12)
  {
    *(this + 85) = v12;
    operator delete(v12);
  }

  v13 = *(this + 81);
  if (v13)
  {
    *(this + 82) = v13;
    operator delete(v13);
  }

  *(this + 55) = &unk_1F2A2ACD0;
  v14 = *(this + 78);
  if (v14)
  {
    *(this + 79) = v14;
    operator delete(v14);
  }

  v15 = *(this + 75);
  if (v15)
  {
    *(this + 76) = v15;
    operator delete(v15);
  }

  ecs2::group_storage<mre::TextureHandle,md::Counter,mre::TextureStorage>::~group_storage(this + 55);
  std::condition_variable::~condition_variable(this + 8);
  std::condition_variable::~condition_variable(this + 7);
  std::mutex::~mutex((this + 272));
  std::condition_variable::~condition_variable((this + 216));
  std::condition_variable::~condition_variable((this + 168));
  std::mutex::~mutex((this + 104));
  v16 = *(this + 10);
  if (v16)
  {
    do
    {
      v17 = *v16;
      operator delete(v16);
      v16 = v17;
    }

    while (v17);
  }

  v18 = *(this + 8);
  *(this + 8) = 0;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = *(this + 5);
  if (v19)
  {
    do
    {
      v20 = *v19;
      operator delete(v19);
      v19 = v20;
    }

    while (v20);
  }

  v21 = *(this + 3);
  *(this + 3) = 0;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = *(this + 2);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }
}

void *ecs2::storage<mre::TextureHandle,mre::TextureStorage,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A2AD30;
    ;
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<mre::TextureHandle,64ul>::~sparse_set(a1);
}

void *ecs2::group_storage<mre::TextureHandle,md::Counter,mre::TextureStorage>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A2ACF0;
    ;
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 13));
  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<mre::TextureHandle,64ul>::~sparse_set(a1);
}

void *ecs2::sparse_set<mre::TextureHandle,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A2AD10;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<mre::TextureHandle,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<mre::TextureHandle,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<mre::TextureHandle,md::Counter,mre::TextureStorage>::~group_storage(void *a1)
{
  ecs2::group_storage<mre::TextureHandle,md::Counter,mre::TextureStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<mre::TextureHandle,mre::TextureStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A2ACD0;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<mre::TextureHandle,md::Counter,mre::TextureStorage>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<mre::TextureHandle,mre::TextureStorage>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A2ACD0;
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    a1[21] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<mre::TextureHandle,md::Counter,mre::TextureStorage>::~group_storage(a1);
}

void ecs2::storage<mre::TextureHandle,mre::TextureStorage,64ul>::~storage(void *a1)
{
  ecs2::storage<mre::TextureHandle,mre::TextureStorage,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t mre::GGLResourceStore::getBuffer(uint64_t a1, unint64_t a2)
{
  BufferStorage = mre::GGLResourceStore::getBufferStorage(a1, a2);
  if (BufferStorage)
  {
    return BufferStorage + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mre::GGLResourceStore::getTexture(mre::GGLResourceStore *this, TextureHandle a2, int a3)
{
  if (a3)
  {
    TextureStorageTracked = mre::GGLResourceStore::getTextureStorageTracked(this, a2);
  }

  else
  {
    TextureStorageTracked = mre::GGLResourceStore::getTextureStorage(this, a2, 0);
  }

  if (TextureStorageTracked)
  {
    return TextureStorageTracked + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mre::GGLResourceStore::getBufferDescriptor(uint64_t a1, unint64_t a2)
{
  BufferStorage = mre::GGLResourceStore::getBufferStorage(a1, a2);
  if (BufferStorage)
  {
    return BufferStorage + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t mre::GGLResourceStore::getTextureDescriptor(mre::GGLResourceStore *this, TextureHandle a2)
{
  TextureStorage = mre::GGLResourceStore::getTextureStorage(this, a2, 0);
  if (TextureStorage)
  {
    return TextureStorage + 16;
  }

  else
  {
    return 0;
  }
}

void mre::GGLResourceStore::createTexture(uint64_t a1, uint64_t *a2)
{
  operator new();
}

{
  operator new();
}

void std::vector<mre::TextureHandle>::reserve(void *a1)
{
  if (a1[2] - *a1 <= 0x3FFuLL)
  {
    operator new();
  }
}

uint64_t ***std::__hash_table<std::__hash_value_type<mre::TextureKey,mre::TextureHandle>,std::__unordered_map_hasher<mre::TextureKey,std::__hash_value_type<mre::TextureKey,mre::TextureHandle>,mre::TextureKeyHasher,std::equal_to<mre::TextureKey>,true>,std::__unordered_map_equal<mre::TextureKey,std::__hash_value_type<mre::TextureKey,mre::TextureHandle>,std::equal_to<mre::TextureKey>,mre::TextureKeyHasher,true>,std::allocator<std::__hash_value_type<mre::TextureKey,mre::TextureHandle>>>::find<mre::TextureKey>(void *a1, uint64_t **a2, unsigned __int8 a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = (&a2[8 * a3 - 0xE44323405AC1F58] - 0x3A3AA7D820E2E4E6) ^ (a3 - 0x61C8864680B583EBLL);
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (&a2[8 * a3 - 0xE44323405AC1F58] - 0x3A3AA7D820E2E4E6) ^ (a3 - 0x61C8864680B583EBLL);
    if (v4 >= *&v3)
    {
      v6 = v4 % *&v3;
    }
  }

  else
  {
    v6 = v4 & (*&v3 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (result[2] == a2 && *(result + 24) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v3)
        {
          v9 %= *&v3;
        }
      }

      else
      {
        v9 &= *&v3 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t md::LabelSettingsStyleCache::muninPointStyle(md::LabelSettingsStyleCache *this)
{
  result = *(this + 2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1B3088294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t overrideValueWithStyle<(gss::PropertyID)346,unsigned int>(uint64_t a1, _DWORD *a2)
{
  result = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*a1 + 24), 0x15Au, 1u);
  if (result)
  {
    result = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(346, 1, *(*a1 + 24));
    *a2 = result;
  }

  return result;
}

uint64_t overrideValueWithStyle<(gss::PropertyID)357,float>(uint64_t a1, _DWORD *a2)
{
  result = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*a1 + 24), 0x165u, 1u);
  if (result)
  {
    result = gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(357, 1, *(*a1 + 24), 0);
    *a2 = v5;
  }

  return result;
}

uint64_t overrideValueWithStyle<(gss::PropertyID)359,float>(uint64_t a1, _DWORD *a2)
{
  result = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*a1 + 24), 0x167u, 1u);
  if (result)
  {
    result = gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(359, 1, *(*a1 + 24), 0);
    *a2 = v5;
  }

  return result;
}

uint64_t overrideValueWithStyle<(gss::PropertyID)360,float>(uint64_t a1, _DWORD *a2)
{
  result = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*a1 + 24), 0x168u, 1u);
  if (result)
  {
    result = gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(360, 1, *(*a1 + 24), 0);
    *a2 = v5;
  }

  return result;
}

uint64_t overrideValueWithStyle<(gss::PropertyID)361,float>(uint64_t a1, _DWORD *a2)
{
  result = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*a1 + 24), 0x169u, 1u);
  if (result)
  {
    result = gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(361, 1, *(*a1 + 24), 0);
    *a2 = v5;
  }

  return result;
}

uint64_t md::LabelSettingsStyleCache::muninRoadStyle(md::LabelSettingsStyleCache *this)
{
  v2 = *MEMORY[0x1E69E9840];
  result = *(this + 3);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1B3088914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t overrideValueWithStyle<(gss::PropertyID)347,float>(uint64_t a1, _DWORD *a2)
{
  result = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*a1 + 24), 0x15Bu, 1u);
  if (result)
  {
    result = gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(347, 1, *(*a1 + 24), 0);
    *a2 = v5;
  }

  return result;
}

uint64_t md::RoadTileData::estimatedCost(md::RoadTileData *this)
{
  v2 = *(this + 91);
  if (v2)
  {
    v3 = md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::estimatedCost(*(v2 + 32), *(v2 + 40));
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 92);
  if (v4)
  {
    v3 += md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::estimatedCost(*(v4 + 32), *(v4 + 40));
  }

  v5 = *(this + 93);
  if (v5)
  {
    v3 += md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::estimatedCost(*(v5 + 32), *(v5 + 40));
  }

  v6 = *(this + 94);
  if (v6)
  {
    v3 += md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::estimatedCost(*(v6 + 32), *(v6 + 40));
  }

  return v3;
}

uint64_t md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::estimatedCost(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = **(*a1 + 64);
    if (v3)
    {
      v3 = *(v3 + 48) - *(v3 + 40);
    }

    v4 = *(*a1 + 96);
    if (v4)
    {
      v3 = *(v4 + 48) + v3 - *(v4 + 40);
    }

    v2 += v3;
    a1 += 8;
  }

  while (a1 != a2);
  return v2;
}

void md::RoadTileData::~RoadTileData(md::RoadTileData *this)
{
  md::RoadTileData::~RoadTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2AD50;
  *(this + 80) = &unk_1F2A2AD90;
  v2 = *(this + 116);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 114);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v11 = (this + 880);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v11);
  v4 = *(this + 109);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 832));
  std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::~__hash_table(this + 776);
  v5 = *(this + 96);
  *(this + 96) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 95);
  *(this + 95) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 94);
  *(this + 94) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 93);
  *(this + 93) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 92);
  *(this + 92) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 91);
  *(this + 91) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  md::MapTileData::~MapTileData(this);
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::__deallocate_node(*(a1 + 24));
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v4 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,void *> *> *>(v4, v3);
  }

  return a1;
}

void md::RoadTileData::updateWithContext(uint64_t a1, md::LayoutContext *a2, int a3, uint64_t *a4)
{
  v8 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
  v9 = 1 << *(a1 + 169);
  v10 = 1.0 / v9;
  v11 = *(a1 + 172);
  v12 = *(a1 + 176);
  v13 = md::LayoutContext::cameraType(a2);
  if (gdc::ToCoordinateSystem(v13))
  {
    v14 = 1 << *(a1 + 169);
    v15 = *(a1 + 176);
    v16 = 1.0 / v14;
    v17 = v14 + ~*(a1 + 172);
    v49 = v16 * v15;
    *&v50 = v16 * v17;
    *(&v50 + 1) = v16 + v15 * v16;
    *&v51 = v16 + v17 * v16;
    gdc::GlobeTileUtils::boundsFromMercatorRect(v46, &v49, 0.0, 0.0);
    geo::OrientedBox<double,3u,double,double>::toMatrix(&v49, v46);
  }

  else
  {
    v51 = 0u;
    v50 = 0u;
    v53 = 0u;
    v54 = 0u;
    v49 = 1.0 / v9;
    v52 = v49;
    v55 = v49;
    v56 = 0;
    v57 = a3 + v10 * v12;
    v58 = v10 * (v9 + ~v11);
    v59 = xmmword_1B33B0740;
  }

  v18 = 0;
  v19 = v8 + 101;
  do
  {
    v20 = 0;
    v21 = &v49;
    do
    {
      v22 = 0;
      v23 = 0.0;
      v24 = v19;
      do
      {
        v25 = *v24;
        v24 += 4;
        v23 = v23 + v21[v22++] * v25;
      }

      while (v22 != 4);
      *(&v46[2 * v20++] + v18) = v23;
      v21 += 4;
    }

    while (v20 != 4);
    ++v18;
    ++v19;
  }

  while (v18 != 4);
  v26 = 0;
  v27 = v46;
  do
  {
    v29 = *v27;
    v28 = v27[1];
    v27 += 2;
    v48[v26++] = vcvt_hight_f32_f64(vcvt_f32_f64(v29), v28);
  }

  while (v26 != 4);
  ggl::DataAccess<ggl::Tile::View>::DataAccess(v46, *(a1 + 904), 1);
  v30 = v47;
  v31 = v48[1];
  *v47 = v48[0];
  *(v30 + 1) = v31;
  v32 = v48[3];
  *(v30 + 2) = v48[2];
  *(v30 + 3) = v32;
  v33 = v8[471] * v8[173] / (v8[171] * v10);
  v30[16] = v33;
  ggl::BufferMemory::~BufferMemory(v46);
  v34 = *a4;
  ggl::BufferMemory::BufferMemory(v45);
  ggl::ResourceAccessor::accessConstantData(v46, 0, v34, 0);
  ggl::BufferMemory::operator=(v45, v46);
  ggl::BufferMemory::~BufferMemory(v46);
  v35 = *(a1 + 920);
  ggl::BufferMemory::BufferMemory(v44);
  ggl::ResourceAccessor::accessConstantData(v46, 0, v35, 1);
  ggl::BufferMemory::operator=(v44, v46);
  ggl::BufferMemory::~BufferMemory(v46);
  v36 = 0;
  v37 = v45[5];
  v38 = v44[5];
  do
  {
    *(v38 + v36) = *(v37 + v36);
    v36 += 4;
  }

  while (v36 != 16);
  for (i = 0; i != 12; i += 4)
  {
    *(v38 + 16 + i) = *(v37 + 16 + i);
  }

  v40 = 0;
  v41 = v37 + 32;
  v42 = v38 + 32;
  do
  {
    for (j = 0; j != 16; j += 4)
    {
      *(v42 + j) = *(v41 + j);
    }

    ++v40;
    v42 += 16;
    v41 += 16;
  }

  while (v40 != 16);
  ggl::BufferMemory::~BufferMemory(v44);
  ggl::BufferMemory::~BufferMemory(v45);
}

uint64_t md::ARAssetOcclusionMeshLayerDataSource::descriptionForKey@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  UInt64 = gdc::ResourceKey::getUInt64(v4, 0);
  v6 = gdc::ResourceKey::getUInt64(v4, 1u);
  v7 = gdc::ResourceKey::getUInt64(v4, 2u);
  std::ostringstream::basic_ostringstream[abi:nn200100](&v20);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, "gdc::LayerDataRequestKey<Type:", 30);
  v8 = *(a1 + 8);
  if (v8 > 0x51)
  {
    v9 = "<Invalid>";
  }

  else
  {
    v9 = off_1E7B30210[v8];
  }

  v10 = strlen(v9);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v9, v10);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, ", Asset ID: ", 12);
  v11 = MEMORY[0x1B8C61CF0](&v20, UInt64);
  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ", Type: ", 8);
  v13 = MEMORY[0x1B8C61C90](v12, v6);
  v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, ", UniqueId: ", 12);
  v15 = MEMORY[0x1B8C61CF0](v14, v7);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, ">", 1);
  if ((v27 & 0x10) != 0)
  {
    v17 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v17 = v23;
    }

    locale = v22[4].__locale_;
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v16 = 0;
      a2[23] = 0;
      goto LABEL_17;
    }

    locale = v22[1].__locale_;
    v17 = v22[3].__locale_;
  }

  v16 = v17 - locale;
  if ((v17 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v16 >= 0x17)
  {
    operator new();
  }

  a2[23] = v16;
  if (v16)
  {
    memmove(a2, locale, v16);
  }

LABEL_17:
  a2[v16] = 0;
  v20 = *MEMORY[0x1E69E54E8];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v28);
}

void sub_1B3089314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v27 + *(*MEMORY[0x1E69E54E8] - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a12);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a27);
  _Unwind_Resume(a1);
}

void md::ARAssetOcclusionMeshLayerDataSource::createLayerData(unsigned __int16 **a2@<X2>, void *a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  gdc::LayerDataSource::getResourceFromMap(&v9, 28, *a2, a2[1]);
  v6 = v9;
  v5 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  gdc::LayerDataSource::getResourceFromMap(&v9, 42, *a2, a2[1]);
  v8 = v9;
  v7 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (v6 | v8)
  {
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

void sub_1B3089794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<md::ARAssetOcclusionMeshData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2AE48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::ARAssetOcclusionMeshLayerDataSource::constructRequests(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      gdc::LayerDataRequestKey::LayerDataRequestKey(v14, *v4);
      v5 = v15;
      UInt64 = gdc::ResourceKey::getUInt64(v15, 0);
      v7 = gdc::ResourceKey::getUInt64(v5, 1u);
      v8 = **v4;
      v9 = *(*v4 + 112);
      v17[0] = UInt64;
      v17[1] = 0;
      gdc::ResourceKey::ResourceKey(v11, v8, v7, v17, 2, v9);
      v10 = *v4;
      v4 += 2;
      gdc::LayerDataRequest::request(v10, v11, 0);
      if (v12 != v13)
      {
        free(v12);
      }

      if (v15 != v16)
      {
        free(v15);
      }
    }

    while (v4 != a3);
  }
}

void md::ARAssetOcclusionMeshLayerDataSource::~ARAssetOcclusionMeshLayerDataSource(md::ARAssetOcclusionMeshLayerDataSource *this)
{
  gdc::LayerDataSource::~LayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::DaVinciDecalBuilder::DecalDescription>::push_back[abi:nn200100](void **a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v10 = *a1;
    v11 = v3 - *a1;
    v12 = 0x6DB6DB6DB6DB6DB7 * (v11 >> 3) + 1;
    if (v12 > 0x492492492492492)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = 0x6DB6DB6DB6DB6DB7 * ((v4 - v10) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x249249249249249)
    {
      v14 = 0x492492492492492;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v15 = 8 * (v11 >> 3);
    *v15 = *a2;
    *(v15 + 8) = *(a2 + 4);
    *(v15 + 12) = *(a2 + 12);
    *(v15 + 20) = *(a2 + 5);
    *(v15 + 24) = a2[3];
    *(v15 + 32) = *(a2 + 8);
    *(v15 + 36) = *(a2 + 9);
    *(v15 + 48) = *(a2 + 12);
    v9 = v15 + 56;
    v16 = v15 - v11;
    *(v15 + 40) = a2[5];
    if (v10 != v3)
    {
      v17 = v16;
      do
      {
        v18 = *v10;
        *(v17 + 8) = *(v10 + 4);
        *v17 = v18;
        v19 = *(v10 + 12);
        *(v17 + 20) = *(v10 + 5);
        *(v17 + 12) = v19;
        v20 = *(v10 + 3);
        *(v17 + 32) = *(v10 + 8);
        *(v17 + 24) = v20;
        *(v17 + 36) = *(v10 + 9);
        v21 = *(v10 + 5);
        *(v17 + 48) = *(v10 + 12);
        *(v17 + 40) = v21;
        v10 += 56;
        v17 += 56;
      }

      while (v10 != v3);
      v10 = *a1;
    }

    *a1 = v16;
    a1[1] = v9;
    a1[2] = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 4);
    *v3 = v5;
    v6 = *(a2 + 12);
    *(v3 + 20) = *(a2 + 5);
    *(v3 + 12) = v6;
    v7 = a2[3];
    *(v3 + 32) = *(a2 + 8);
    *(v3 + 24) = v7;
    *(v3 + 36) = *(a2 + 9);
    v8 = a2[5];
    *(v3 + 48) = *(a2 + 12);
    *(v3 + 40) = v8;
    v9 = v3 + 56;
  }

  a1[1] = v9;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const,std::vector<gm::Matrix<float,3,1>>>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void md::DaVinciDecalBuilder::buildBatch(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, uint64_t a5, uint64_t a6)
{
  v49 = *MEMORY[0x1E69E9840];
  v42 = 0;
  *v41 = 0u;
  v40 = 0;
  __p = 0u;
  v38 = 0;
  *__src = 0u;
  v8 = a4[1] - *a4;
  v9 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
  if (v8)
  {
    if (v9 <= 0x2E8BA2E8BA2E8BALL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::DaVinciDecal>>(v9);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  std::vector<unsigned short>::reserve(v41, 0);
  v10 = 0xB6DB6DB6DB6DB6DCLL * ((a4[1] - *a4) >> 3);
  if (v10 > (v40 - __p) >> 3)
  {
    if (!(v10 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = (*(&__p + 1) - __p) >> 3;
  if (v11 > (v38 - __src[0]) >> 2)
  {
    if (!(v11 >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v11);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v12 = *a4;
  if (*a4 != a4[1])
  {
    v13 = 0;
    v36 = *(*a5 + 1976) + 12 * *(*v12 + 4);
    do
    {
      *(&v46 + v13) = -*&v12[v13 + 24];
      v13 += 4;
    }

    while (v13 != 12);
    v22 = *(v12 + 9);
    __n = v46;
    v21 = v47;
    v48 = v22;
    v14 = gm::Quaternion<float>::operator*(&v46, (v12 + 12));
    v15 = 0;
    v28[0] = __PAIR64__(v16, LODWORD(v14));
    LODWORD(v28[1]) = v17;
    do
    {
      *(&v29 + v15) = -*(v28 + v15);
      v15 += 4;
    }

    while (v15 != 12);
    v33 = v29;
    v34 = v30;
    *&v18 = __n;
    *(&v18 + 1) = __PAIR64__(v22, v21);
    v35 = v18;
    gm::Quaternion<float>::toMatrix(&v29, &v35);
    gm::Matrix<float,4,4>::Matrix<4,void>(&v46, &v29, &v33);
    for (i = 0; i != 12; i += 4)
    {
      *(&v29 + i) = *&v12[i + 40] * 0.5;
    }

    v31 = v29;
    v32 = v30;
    memset(&v44[5], 0, 28);
    *&v44[1] = 0u;
    v44[0] = 1065353216;
    v44[5] = 1065353216;
    v44[10] = 1065353216;
    v45 = xmmword_1B33B0C60;
    v26 = 0;
    v25 = 0u;
    memset(&v24[4], 0, 32);
    v27 = 1065353216;
    *v24 = 0.5 / *&v29;
    *&v24[20] = -0.5 / *(&v29 + 1);
    *(&v25 + 1) = 0.5 / v30;
    gm::operator*<float,4,4,4>(v28, v44, v24);
    gm::operator*<float,4,4,4>(&v29, v28, &v46);
    for (j = 0; j != 12; j += 4)
    {
      *(v28 + j) = -*(&v31 + j);
    }

    memset(v24, 0, 32);
    *&v24[32] = 1065353216;
    v43 = 0;
    operator new();
  }

  operator new();
}

void sub_1B308B464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  v29 = STACK[0x230];
  if (STACK[0x230])
  {
    STACK[0x238] = v29;
    operator delete(v29);
  }

  v30 = STACK[0x248];
  if (STACK[0x248])
  {
    STACK[0x250] = v30;
    operator delete(v30);
  }

  v31 = STACK[0x260];
  if (STACK[0x260])
  {
    STACK[0x268] = v31;
    operator delete(v31);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void std::vector<md::DaVinciDecalBatch>::push_back[abi:nn200100](uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (v8 + 1 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v10;
    }

    v23 = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::DaVinciDecalBatch>>(v11);
    }

    v12 = 48 * v8;
    v20 = 0;
    v21 = v12;
    v22 = v12;
    v13 = a2[1];
    *v12 = *a2;
    *(v12 + 8) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = a2[2];
    *(v12 + 24) = 0;
    *(v12 + 16) = v14;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    std::vector<md::DaVinciDecal>::__init_with_size[abi:nn200100]<md::DaVinciDecal*,md::DaVinciDecal*>(v12 + 24, a2[3], a2[4], 0x2E8BA2E8BA2E8BA3 * ((a2[4] - a2[3]) >> 3));
    *&v22 = v22 + 48;
    v15 = a1[1];
    v16 = v21 + *a1 - v15;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::DaVinciDecalBatch>,md::DaVinciDecalBatch*>(*a1, v15, v16);
    v17 = *a1;
    *a1 = v16;
    v18 = a1[2];
    v19 = v22;
    *(a1 + 1) = v22;
    *&v22 = v17;
    *(&v22 + 1) = v18;
    v20 = v17;
    v21 = v17;
    std::__split_buffer<md::DaVinciDecalBatch>::~__split_buffer(&v20);
    v7 = v19;
  }

  else
  {
    v5 = a2[1];
    *v4 = *a2;
    v4[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = a2[2];
    v4[3] = 0;
    v4[2] = v6;
    v4[4] = 0;
    v4[5] = 0;
    std::vector<md::DaVinciDecal>::__init_with_size[abi:nn200100]<md::DaVinciDecal*,md::DaVinciDecal*>((v4 + 3), a2[3], a2[4], 0x2E8BA2E8BA2E8BA3 * ((a2[4] - a2[3]) >> 3));
    v7 = v4 + 6;
    a1[1] = (v4 + 6);
  }

  a1[1] = v7;
}

void sub_1B308B704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v9 = *(v7 + 8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  std::__split_buffer<md::DaVinciDecalBatch>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<md::DaVinciDecalBatch>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 6;
        std::__destroy_at[abi:nn200100]<md::DaVinciDecalBatch,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:nn200100]<md::DaVinciDecalBatch,0>(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::DaVinciDecalBatch>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<md::DaVinciDecal>::__init_with_size[abi:nn200100]<md::DaVinciDecal*,md::DaVinciDecal*>(uint64_t result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x2E8BA2E8BA2E8BBLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::DaVinciDecal>>(a4);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::DaVinciDecalBatch>,md::DaVinciDecalBatch*>(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *v5 = 0;
      v5[1] = 0;
      v6 = v5[2];
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 16) = v6;
      *(a3 + 24) = 0;
      *(a3 + 24) = *(v5 + 3);
      *(a3 + 40) = v5[5];
      v5[3] = 0;
      v5[4] = 0;
      v5[5] = 0;
      v5 += 6;
      a3 += 48;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<md::DaVinciDecalBatch,0>(v4);
      v4 += 6;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<md::DaVinciDecalBatch>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__destroy_at[abi:nn200100]<md::DaVinciDecalBatch,0>((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::DaVinciDecal>>(unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__function::__value_func<BOOL ()(unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__shared_ptr_emplace<ggl::DaVinci::TexturedPositionCompressedMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2AF40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::__hash_table<std::__hash_value_type<GeoCodecsDaVinciMesh *,std::shared_ptr<md::TriConnectivity>>,std::__unordered_map_hasher<GeoCodecsDaVinciMesh *,std::__hash_value_type<GeoCodecsDaVinciMesh *,std::shared_ptr<md::TriConnectivity>>,std::hash<GeoCodecsDaVinciMesh *>,std::equal_to<GeoCodecsDaVinciMesh *>,true>,std::__unordered_map_equal<GeoCodecsDaVinciMesh *,std::__hash_value_type<GeoCodecsDaVinciMesh *,std::shared_ptr<md::TriConnectivity>>,std::equal_to<GeoCodecsDaVinciMesh *>,std::hash<GeoCodecsDaVinciMesh *>,true>,std::allocator<std::__hash_value_type<GeoCodecsDaVinciMesh *,std::shared_ptr<md::TriConnectivity>>>>::__emplace_unique_key_args<GeoCodecsDaVinciMesh *,std::piecewise_construct_t const&,std::tuple<GeoCodecsDaVinciMesh * const&>,std::tuple<>>(float *a1, unint64_t a2, uint64_t **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_1B308BFAC(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::deque<unsigned int>::push_back(unint64_t *a1, _DWORD *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x400)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v4 - v5 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(v13);
    }

    a1[4] = v8 - 1024;
    v14 = *v5;
    a1[1] = (v5 + 1);
    std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, &v14);
    v5 = a1[1];
    v7 = a1[5];
    v9 = a1[4] + v7;
  }

  *(*(v5 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  a1[5] = v7 + 1;
}

void sub_1B308C490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<unsigned int>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 1024;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<md::TriConnectivity>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<md::TriConnectivity>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2AF78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::DaVinciDecalBuilder::buildBatch(std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,unsigned long long,std::vector<md::DaVinciDecalBuilder::DecalDescription> const&,std::shared_ptr<geo::codec::VectorTile> const&,ggl::ResourceAccessor *)::$_0,std::allocator<md::DaVinciDecalBuilder::buildBatch(std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,unsigned long long,std::vector<md::DaVinciDecalBuilder::DecalDescription> const&,std::shared_ptr<geo::codec::VectorTile> const&,ggl::ResourceAccessor *)::$_0>,BOOL ()(unsigned int)>::operator()(uint64_t a1, _DWORD *a2)
{
  v3 = 0;
  v105 = *MEMORY[0x1E69E9840];
  v4 = *(**(a1 + 8) + 12) + 3 * *a2;
  v5 = *(**(a1 + 16) + 2048);
  v6 = *(a1 + 32);
  v7 = **(a1 + 24);
  do
  {
    v8 = 0;
    v9 = v7 + 12 * *(v5 + 2 * (v4 + v3));
    v10 = *(v9 + 8);
    *&v97 = *v9;
    *(&v97 + 1) = v10 | 0x3F80000000000000;
    v11 = v6;
    do
    {
      v12 = 0;
      v13 = 0.0;
      do
      {
        v13 = v13 + (*(&v97 + v12) * *(v11 + 4 * v12));
        v12 += 4;
      }

      while (v12 != 16);
      *(&__p + v8++) = v13;
      v11 += 4;
    }

    while (v8 != 4);
    v14 = &v104[3 * v3];
    v15 = v100;
    *v14 = __p;
    v14[2] = v15;
    ++v3;
  }

  while (v3 != 3);
  v16 = 0;
  v97 = xmmword_1B33AFF10;
  v98 = 0x80000000800000;
  v17 = v104;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v19 = (&v97 + i * 4);
      v20 = *&v17[i];
      *v19 = fminf(v20, *(&v97 + i * 4));
      v19[3] = fmaxf(*(&v97 + i * 4 + 12), v20);
    }

    ++v16;
    v17 += 3;
  }

  while (v16 != 3);
  v21 = *(a1 + 40);
  if (v21[3] <= *&v97 || *v21 >= *(&v97 + 3))
  {
LABEL_19:
    result = 0;
    v30 = *(a1 + 48);
    v31 = *v30;
    if (*v30)
    {
      goto LABEL_82;
    }

    v94 = 0;
  }

  else
  {
    v22 = 0;
    v23 = &v98;
    v24 = v21 + 1;
    while (v22 != 2)
    {
      v25 = v22;
      if (v24[3] > *(v23 - 3))
      {
        v26 = *v24++;
        v27 = v26;
        v28 = *v23++;
        ++v22;
        if (v27 < v28)
        {
          continue;
        }
      }

      if (v25 <= 1)
      {
        goto LABEL_19;
      }

      break;
    }

    v94 = 1;
  }

  for (j = 0; j != 3; ++j)
  {
    v33 = *(*(**(a1 + 16) + 2048) + 2 * (v4 + j));
    v96 = *(*(**(a1 + 16) + 2048) + 2 * (v4 + j));
    v34 = *(a1 + 56);
    v35 = *(v34 + 8);
    if (v35)
    {
      v36 = vcnt_s8(v35);
      v36.i16[0] = vaddlv_u8(v36);
      if (v36.u32[0] > 1uLL)
      {
        v37 = v33;
        if (*&v35 <= v33)
        {
          v37 = v33 % *(v34 + 8);
        }
      }

      else
      {
        v37 = (v35.i32[0] - 1) & v33;
      }

      v38 = *(*v34 + 8 * v37);
      if (v38)
      {
        for (k = *v38; k; k = *k)
        {
          v40 = k[1];
          if (v40 == v33)
          {
            if (*(k + 8) == v33)
            {
              goto LABEL_67;
            }
          }

          else
          {
            if (v36.u32[0] > 1uLL)
            {
              if (v40 >= *&v35)
              {
                v40 %= *&v35;
              }
            }

            else
            {
              v40 &= *&v35 - 1;
            }

            if (v40 != v37)
            {
              break;
            }
          }
        }
      }
    }

    v41 = 0;
    v42 = **(a1 + 24) + 12 * v33;
    v44 = *v42;
    v43 = *(v42 + 4);
    v45 = *(v42 + 8);
    v46 = *(a1 + 64);
    *v95 = v44;
    *&v95[1] = v43;
    v95[2] = v45;
    v95[3] = 1065353216;
    do
    {
      v47 = 0;
      v48 = 0.0;
      do
      {
        v48 = v48 + (*&v95[v47] * *(v46 + 1 * v47));
        ++v47;
      }

      while (v47 != 4);
      *(&__p + v41++) = v48;
      v46 += 4;
    }

    while (v41 != 4);
    _KR00_8 = __p;
    v50 = *(a1 + 72);
    v52 = *v50;
    v51 = v50[1];
    __p = &v96;
    v53 = (v44 * 16804.0) | ((v43 * 16804.0) << 16);
    *(std::__hash_table<std::__hash_value_type<unsigned short,unsigned short>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v34, v33, &__p) + 9) = (v51 - v52) >> 3;
    v54 = *(a1 + 72);
    v56 = v54[1];
    v55 = v54[2];
    if (v56 >= v55)
    {
      v58 = (v56 - *v54) >> 3;
      v59 = v58 + 1;
      if ((v58 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v60 = v55 - *v54;
      if (v60 >> 2 > v59)
      {
        v59 = v60 >> 2;
      }

      if (v60 >= 0x7FFFFFFFFFFFFFF8)
      {
        v61 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v61 = v59;
      }

      v103 = *(a1 + 72);
      if (v61)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v61);
      }

      v62 = (8 * v58);
      __p = 0;
      v100 = v62;
      *v62 = v53;
      v62[1] = v45;
      v101 = 8 * v58 + 8;
      v102 = 0;
      std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(v54, &__p);
      v57 = v54[1];
      if (__p)
      {
        operator delete(__p);
      }
    }

    else
    {
      *v56 = v53;
      v56[1] = v45;
      v57 = v56 + 2;
    }

    __asm
    {
      FCVT            H10, S10
      FCVT            H9, S11
    }

    v54[1] = v57;
    v69 = *(a1 + 80);
    v71 = *(v69 + 8);
    v70 = *(v69 + 16);
    if (v71 >= v70)
    {
      v73 = (v71 - *v69) >> 2;
      v74 = v73 + 1;
      if ((v73 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v75 = v70 - *v69;
      if (v75 >> 1 > v74)
      {
        v74 = v75 >> 1;
      }

      if (v75 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v76 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v76 = v74;
      }

      v103 = *(a1 + 80);
      if (v76)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v76);
      }

      v77 = (4 * v73);
      __p = 0;
      v100 = v77;
      *v77 = _H10;
      *(v77 + 1) = _H9;
      v101 = 4 * v73 + 4;
      v102 = 0;
      _ZNSt3__16vectorIN2gm6MatrixIDF16_Li2ELi1EEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE(v69, &__p);
      v72 = *(v69 + 8);
      if (__p)
      {
        operator delete(__p);
      }
    }

    else
    {
      *v71 = _H10;
      v71[1] = _H9;
      v72 = v71 + 2;
    }

    *(v69 + 8) = v72;
    v34 = *(a1 + 56);
    LOWORD(v33) = v96;
LABEL_67:
    v78 = *(a1 + 88);
    __p = &v96;
    v79 = std::__hash_table<std::__hash_value_type<unsigned short,unsigned short>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v34, v33, &__p);
    v80 = v79;
    v82 = *(v78 + 8);
    v81 = *(v78 + 16);
    if (v82 >= v81)
    {
      v84 = *v78;
      v85 = v82 - *v78;
      v86 = v85 >> 1;
      if (v85 >> 1 <= -2)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v87 = v81 - v84;
      if (v87 <= v86 + 1)
      {
        v88 = v86 + 1;
      }

      else
      {
        v88 = v87;
      }

      if (v87 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v89 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v89 = v88;
      }

      if (v89)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(v89);
      }

      v90 = (2 * v86);
      v91 = *(v80 + 9);
      v92 = &v90[-(v85 >> 1)];
      *v90 = v91;
      v83 = v90 + 1;
      memcpy(v92, v84, v85);
      v93 = *v78;
      *v78 = v92;
      *(v78 + 8) = v83;
      *(v78 + 16) = 0;
      if (v93)
      {
        operator delete(v93);
      }
    }

    else
    {
      *v82 = *(v79 + 9);
      v83 = v82 + 1;
    }

    *(v78 + 8) = v83;
  }

  v30 = *(a1 + 48);
  v31 = *v30;
  result = v94;
LABEL_82:
  *v30 = v31 + result;
  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,unsigned short>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(float *a1, unsigned __int16 a2, _WORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % *(a1 + 1);
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 8) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

int **_ZNSt3__16vectorIN2gm6MatrixIDF16_Li2ELi1EEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE(int **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      v6 = *v2++;
      *v5++ = v6;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

__n128 std::__function::__func<md::DaVinciDecalBuilder::buildBatch(std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,unsigned long long,std::vector<md::DaVinciDecalBuilder::DecalDescription> const&,std::shared_ptr<geo::codec::VectorTile> const&,ggl::ResourceAccessor *)::$_0,std::allocator<md::DaVinciDecalBuilder::buildBatch(std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,unsigned long long,std::vector<md::DaVinciDecalBuilder::DecalDescription> const&,std::shared_ptr<geo::codec::VectorTile> const&,ggl::ResourceAccessor *)::$_0>,BOOL ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2AE80;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::TexturedPositionCompressedVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2AEC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__shared_ptr_emplace<md::weak_interface_ptr<md::LabelImageLoader>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2AFB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelImageLoader::enqueueIconForRendering(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (*(*a2 + 140))
  {
    return;
  }

  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  if (v5 == v6)
  {
    goto LABEL_10;
  }

  v7 = 0;
  do
  {
    v8 = atomic_load((*v5 + 142));
    if ((v8 & 1) == 0)
    {
      ++v7;
      if ((*(*v5 + 140) & 1) == 0)
      {
        md::LabelImageLoader::enqueueIconForRendering(a1, v5);
      }
    }

    v5 += 2;
  }

  while (v5 != v6);
  if (!v7)
  {
    v2 = *a2;
LABEL_10:
    *(v2 + 140) = 1;
    v9 = atomic_load((v2 + 142));
    if ((v9 & 1) == 0)
    {
      v10 = *(a1 + 112);
      v11 = *(v10 + 256);
      if (*(v11 + 184) == 1)
      {
        v12 = *(v11 + 16);
      }

      else
      {
        v12 = 0;
      }

      gdc::ServiceLocator::resolveWeak<mre::GraphicsResourceStore>(&v21, **(v10 + 112), *(*(v10 + 112) + 8));
      if (*(*(a1 + 112) + 3417) != 1)
      {
        atomic_fetch_add((a1 + 140), 1u);
        v15 = a2[1];
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v16 = *(a1 + 128);
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }

        std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v17, *(*(a1 + 112) + 8), *(*(a1 + 112) + 16));
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }

        v23 = 0;
        operator new();
      }

      v13 = *a2;
      v14 = v22;
      v19 = v21;
      v20 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v13 + 16))(v13, 0, v12, &v19);
      if (v20)
      {
        std::__shared_weak_count::__release_weak(v20);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }
    }
  }
}

void sub_1B308D6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
    if (!v21)
    {
LABEL_3:
      if (!v20)
      {
LABEL_8:
        if (v19)
        {
          std::__shared_weak_count::__release_weak(v19);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      std::__shared_weak_count::__release_shared[abi:nn200100](v20);
      goto LABEL_8;
    }
  }

  else if (!v21)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  if (!v20)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0,std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0>,void ()(void)>::operator()(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v3 = a1[3];
  v4 = a1[5];
  v8 = a1[4];
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, 1, v3, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  v5 = a1[7];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[2];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a1[9];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B308D94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[1];
  std::recursive_mutex::lock((v2 + 24));
  v3 = a1[3];
  if (*(v3 + 16))
  {
    atomic_store(1u, (v3 + 143));
    atomic_store(1u, (v3 + 144));
  }

  atomic_store(1u, (v3 + 142));
  v4 = a1[5];
  std::mutex::lock(v4);
  sig = v4[1].__m_.__sig;
  if (sig)
  {
    atomic_fetch_add((sig + 140), 0xFFFFFFFF);
    v6 = (sig + 136);
    atomic_fetch_add((sig + 136), 1u);
    v7 = atomic_load((sig + 140));
    if (!v7 || (v8 = atomic_load(v6), v8 >= 0x14))
    {
      atomic_store(0, v6);
      v9 = a1[1];
      *(v9 + 3038) = 1;
      *(v9 + 3040) = 1;
      v10 = atomic_load((v9 + 3053));
      if (v10)
      {
        v11 = *(v9 + 136);
        if (v11)
        {
          v12 = *(v11 + 56);
          if (v12)
          {
            std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v12, v9, 9);
          }
        }
      }
    }
  }

  std::mutex::unlock(v4);

  std::recursive_mutex::unlock((v2 + 24));
}

void sub_1B308DA9C(_Unwind_Exception *a1)
{
  std::mutex::unlock(v1);
  std::recursive_mutex::unlock((v2 + 24));
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = __p[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  operator delete(__p);
}

void std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void *std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F2A2B030;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = result[6];
  a2[5] = result[5];
  a2[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2B030;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2B030;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return a1;
}

void std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0,std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = __p[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = __p[5];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = __p[2];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  operator delete(__p);
}

void std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0,std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[5];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[2];
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

uint64_t std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0,std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A2AFE8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(result + 24);
  v4 = *(result + 40);
  *(a2 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 56);
  *(a2 + 48) = *(result + 48);
  *(a2 + 56) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(result + 72);
  *(a2 + 64) = *(result + 64);
  *(a2 + 72) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0,std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2AFE8;
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[5];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0,std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2AFE8;
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[5];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,true>,std::__unordered_map_equal<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,mdm::zone_mallocator>>::erase(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 3)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[5];
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, a2);
  return v4;
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](mdm::zone_mallocator *a1, void *a2)
{
  if (a1)
  {
    std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::LabelImageKey const> const,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,0>(a2 + 16);
  }

  v3 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *>>(v3, a2);
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> **,0>(mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *>(v3, v2);
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x30uLL, 0x60040F4D52C6FuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void sub_1B308E3F0(_Unwind_Exception *a1)
{
  shared_weak_owners = v1[7].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_weak_owners);
  }

  md::LabelIcon::~LabelIcon(v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v6);
  _Unwind_Resume(a1);
}

double md::LabelIcon::LabelIcon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_1F2A43D38;
  *(a1 + 8) = &unk_1F2A43EB8;
  *(a1 + 16) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  result = 1.40444743e306;
  *(a1 + 48) = xmmword_1B33B0730;
  *(a1 + 64) = xmmword_1B33B0730;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a5;
  *(a1 + 104) = a4;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0;
  return result;
}

void std::__shared_ptr_emplace<md::ShieldLabelIcon>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2B078;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::PointLabelIcon>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2B0B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::vector<geo::_retain_ptr<VKImage * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 3;
      v7 = v4 - 3;
      v8 = v4 - 3;
      do
      {
        v9 = *v8;
        v8 -= 3;
        (*v9)(v7);
        v6 -= 3;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::pair<unsigned int,unsigned int>,std::less<std::pair<unsigned int,unsigned int>>,geo::allocator_adapter<std::pair<unsigned int,unsigned int>,mdm::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<std::pair<unsigned int,unsigned int>,std::less<std::pair<unsigned int,unsigned int>>,geo::allocator_adapter<std::pair<unsigned int,unsigned int>,mdm::zone_mallocator>>::destroy(*result);
    v2 = std::__tree<std::pair<unsigned int,unsigned int>,std::less<std::pair<unsigned int,unsigned int>>,geo::allocator_adapter<std::pair<unsigned int,unsigned int>,mdm::zone_mallocator>>::destroy(result[1]);
    v3 = mdm::zone_mallocator::instance(v2);
    v4 = pthread_rwlock_rdlock((v3 + 32));
    if (v4)
    {
      geo::read_write_lock::logFailure(v4, "read lock", v5);
    }

    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, result);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

void md::HighlightHelper::debugTileToString(std::string *this, const geo::QuadTile *a2)
{
  std::to_string(&v17, *(a2 + 2));
  v4 = std::string::append(&v17, ".", 1uLL);
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v16, *(a2 + 1));
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v18, v6, size);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v19, ".", 1uLL);
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v15, *(a2 + 1));
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v15;
  }

  else
  {
    v12 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v15.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v20, v12, v13);
  *this = *v14;
  v14->__r_.__value_.__r.__words[0] = 0;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_1B308E91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (*(v30 - 73) < 0)
  {
    operator delete(*(v30 - 96));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void md::HighlightHelper::debugTileToString(std::string *a1, uint64_t a2)
{
  std::to_string(&v17, *(a2 + 1) >> 6);
  v4 = std::string::append(&v17, ".", 1uLL);
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v16, *(a2 + 5) & 0x3FFFFFF);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v18, v6, size);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v19, ".", 1uLL);
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v15, *(a2 + 1) & 0x3F);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v15;
  }

  else
  {
    v12 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v15.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v20, v12, v13);
  *a1 = *v14;
  v14->__r_.__value_.__r.__words[0] = 0;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_1B308EB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (*(v30 - 73) < 0)
  {
    operator delete(*(v30 - 96));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void md::HighlightHelper::tileToScreenPoints(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v8 = *(*a1 + 169);
  v9 = *(*a1 + 172);
  v10 = *(*a1 + 176);
  std::vector<gm::Matrix<double,2,1>>::reserve(&v51, a3);
  v11 = v52;
  if (a3)
  {
    v12 = 0;
    v13 = 1.0 / (1 << v8);
    v14 = v13 * v10;
    v15 = v13 * ((1 << v8) + ~v9);
    v16 = fmax(v13, 0.0);
    do
    {
      v17 = (a2 + 8 * v12);
      v18 = v14 + v16 * *v17;
      v19 = v15 + v16 * v17[1];
      if (v11 >= v53)
      {
        v20 = v51;
        v21 = (v11 - v51) >> 4;
        v22 = v21 + 1;
        if ((v21 + 1) >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v23 = v53 - v51;
        if ((v53 - v51) >> 3 > v22)
        {
          v22 = v23 >> 3;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF0)
        {
          v24 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v24);
        }

        v25 = (16 * v21);
        *v25 = v18;
        v25[1] = v19;
        if (v20 != v11)
        {
          v26 = v20;
          v27 = 0;
          do
          {
            v28 = *v26++;
            *v27++ = v28;
          }

          while (v26 != v11);
        }

        v11 = v25 + 2;
        v51 = 0;
        v53 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v11 = v18;
        v11[1] = v19;
        v11 += 2;
      }

      ++v12;
    }

    while (v12 != a3);
  }

  v29 = v51;
  std::vector<gm::Matrix<float,2,1>>::reserve(a4, ((v11 - v51) >> 4) + ((a4[1] - *a4) >> 3));
  if (v29 != v11)
  {
    v30 = v29;
    do
    {
      if (*(a1 + 16) == 1)
      {
        v31 = *(a1 + 8);
        *__p = *v30;
        v55 = 0.0;
      }

      else
      {
        v32 = *v30 * 6.28318531;
        v33 = exp(v30[1] * 6.28318531 + -3.14159265);
        v34 = atan(v33) * 2.0 + -1.57079633;
        v35 = fmod(v32, 6.28318531);
        v36 = fmod(v35 + 6.28318531, 6.28318531) + -3.14159265;
        v37 = __sincos_stret(v34);
        v38 = 6378137.0 / sqrt(v37.__sinval * v37.__sinval * -0.00669437999 + 1.0);
        v39 = __sincos_stret(v36);
        v31 = *(a1 + 8);
        *__p = v38 * v37.__cosval * v39.__cosval;
        *&__p[1] = v38 * v37.__cosval * v39.__sinval;
        v55 = v37.__sinval * 0.99330562 * v38;
      }

      v40 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v31, __p);
      v42 = v41;
      v44 = a4[1];
      v43 = a4[2];
      if (v44 >= v43)
      {
        v46 = (v44 - *a4) >> 3;
        v47 = v46 + 1;
        if ((v46 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v48 = v43 - *a4;
        if (v48 >> 2 > v47)
        {
          v47 = v48 >> 2;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF8)
        {
          v49 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v47;
        }

        v57 = a4;
        if (v49)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v49);
        }

        v50 = (8 * v46);
        __p[0] = 0;
        __p[1] = v50;
        *v50 = v40;
        v50[1] = v42;
        *&v55 = 8 * v46 + 8;
        v56 = 0;
        std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(a4, __p);
        v45 = a4[1];
        if (__p[0])
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *v44 = v40;
        v44[1] = v42;
        v45 = v44 + 2;
      }

      a4[1] = v45;
      v30 += 2;
    }

    while (v30 != v11);
  }

  if (v29)
  {

    operator delete(v29);
  }
}

void sub_1B308EF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::HighlightHelper::hitTest(float32x2_t *a1, float32x2_t *a2, float *a3, float a4, float a5, float a6)
{
  v12 = __PAIR64__(LODWORD(a5), LODWORD(a4));
  if (a1 == a2)
  {
    return 0;
  }

  v8 = a2 - a1 == 8 ? ((a4 - a1->f32[0]) * (a4 - a1->f32[0])) + ((a5 - a1->f32[1]) * (a5 - a1->f32[1])) : gm::Matrix<float,2,1>::distanceSquaredToPolyline<int,void>(&v12, a2 - a1, a1, &v11, &v10);
  if (v8 >= a6)
  {
    return 0;
  }

  *a3 = v8;
  return 1;
}

id md::HighlightHelper::debugAttributesToString(int **this, const gss::FeatureAttributeSet *a2)
{
  gss::attributesToString(__p, this, 0, 0, 0x1000uLL);
  if (v6 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1B308F064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id md::HighlightHelper::debugAttributesToString(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = *(*a1 + 33);
  v16 = 0;
  v17 = 0;
  v15 = 0;
  if (v2)
  {
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__vallocate[abi:nn200100](&v15, v2);
    v4 = v16;
    v5 = v16 + 8 * v2;
    do
    {
      *v4 = 0;
      *(v4 + 4) = 0;
      v4 += 8;
    }

    while (v4 != v5);
    v16 = v5;
    v6 = *(*a1 + 33);
    if (*(*a1 + 33))
    {
      v7 = v15 + 1;
      v8 = (**a1 + 4);
      do
      {
        *(v7 - 1) = *(v8 - 1);
        v9 = *v8;
        v8 += 2;
        *v7 = v9;
        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  gss::attributesToString(__p, &v15, 0, 0, 0x1000uLL);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v15);
  if (v14 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  v11 = [v1 stringWithUTF8String:v10];
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return v11;
}

id md::HighlightHelper::debugClientAttributesToString(uint64_t a1)
{
  if (a1)
  {
    gss::StylesheetQuery<gss::PropertyID>::debugClientAttributes(v4, a1);
    gss::attributesToString(__p, v4, 0, 0x1000uLL);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v4);
    if (v6 >= 0)
    {
      v1 = __p;
    }

    else
    {
      v1 = __p[0];
    }

    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v1];
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1B308F298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void md::HighlightHelper::appendLinesUsingPrefix(md::HighlightHelper *this, NSString *a2, NSString *a3, NSMutableString *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = this;
  v7 = a3;
  v8 = [(NSString *)a2 componentsSeparatedByString:@"\n"];
  v9 = [v8 lastObject];
  v10 = [v9 isEqualToString:&stru_1F2A61C40];

  if (v10)
  {
    v11 = [v8 subarrayWithRange:{0, objc_msgSend(v8, "count") - 1}];

    v8 = v11;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v13)
  {
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [(NSString *)v7 appendFormat:@"%@%@\n", v6, *(*(&v16 + 1) + 8 * v15++), v16];
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

uint64_t md::HighlightHelper::to_string(md::HighlightHelper *this, const geo::QuadTile *a2)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v12);
  v4 = MEMORY[0x1B8C61C80](&v12, *(a2 + 2));
  v21 = 46;
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, &v21, 1);
  v6 = MEMORY[0x1B8C61C80](v5, *(a2 + 1));
  v21 = 46;
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, &v21, 1);
  MEMORY[0x1B8C61C90](v7, *(a2 + 1));
  if ((v19 & 0x10) != 0)
  {
    v9 = v18;
    if (v18 < v15)
    {
      v18 = v15;
      v9 = v15;
    }

    locale = v14[4].__locale_;
  }

  else
  {
    if ((v19 & 8) == 0)
    {
      v8 = 0;
      *(this + 23) = 0;
      goto LABEL_14;
    }

    locale = v14[1].__locale_;
    v9 = v14[3].__locale_;
  }

  v8 = v9 - locale;
  if ((v9 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v8;
  if (v8)
  {
    memmove(this, locale, v8);
  }

LABEL_14:
  *(this + v8) = 0;
  v12 = *MEMORY[0x1E69E54E8];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(__p);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v20);
}

void sub_1B308F6DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *(v26 + *(*MEMORY[0x1E69E54E8] - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a11);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a26);
  _Unwind_Resume(a1);
}

void md::DaVinciElevationRasterLayerDataSource::createLayerData(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 **a3@<X2>, void *a4@<X8>)
{
  gdc::LayerDataSource::getResourceFromMap(&v16, *(a1 + 592), *a3, a3[1]);
  v7 = v16;
  v6 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v8 = v7[18];
  v9 = *(v8 + 2840);
  v10 = *(v8 + 2836);
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  if (md::ElevationRaster::decodePngElevationRaster(v9, v10, __p, &v13, &v12))
  {
    gdc::Tiled::tileFromLayerDataKey(&v11, *(a2 + 16));
    operator new();
  }

  *a4 = 0;
  a4[1] = 0;
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B308FC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *__p)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a30);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a28);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a35)
  {
    operator delete(a35);
  }

  shared_weak_owners = v43[32].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_weak_owners);
  }

  v47 = v43[31].__shared_weak_owners_;
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  md::MapTileData::~MapTileData(v44);
  std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  std::__shared_weak_count::~__shared_weak_count(v43);
  operator delete(v48);
  if (a10)
  {
    operator delete(a10);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  }

  _Unwind_Resume(a1);
}

void sub_1B308FD4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B308FD38);
}

void std::__shared_ptr_emplace<md::DaVinciElevationRaster>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2B200;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciElevationRasterLayerDataSource::~DaVinciElevationRasterLayerDataSource(md::DaVinciElevationRasterLayerDataSource *this)
{
  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

void md::StandardLabeler::debugHighlightFeatureMarker(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(v2 + 296);
    v7 = *(v2 + 288);
    v8 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v3 = 0;
    v7 = 0;
    v8 = 0;
  }

  v4[1] = 0;
  v5[0] = 0;
  v4[0] = 0;
  *&v5[1] = -1;
  v5[3] = -1;
  v6 = 0;
  md::StandardLabeler::setDebugHighlight(a1, &v7, v4);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void sub_1B308FED8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

id GEOGetVectorKitLabelHighlightLog(void)
{
  if (GEOGetVectorKitLabelHighlightLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitLabelHighlightLog(void)::onceToken, &__block_literal_global_27401);
  }

  v1 = GEOGetVectorKitLabelHighlightLog(void)::log;

  return v1;
}

void ___ZL32GEOGetVectorKitLabelHighlightLogv_block_invoke_27405()
{
  v0 = os_log_create("com.apple.VectorKit", "LabelHighlight");
  v1 = GEOGetVectorKitLabelHighlightLog(void)::log;
  GEOGetVectorKitLabelHighlightLog(void)::log = v0;
}

BOOL md::StandardLabeler::debugHighlightLabelAtPixel(std::__shared_weak_count *a1, float *a2)
{
  md::StandardLabeler::labelAtPixel(&v14, a1, a2, 0, 0);
  v4 = v14;
  if (v14)
  {
    v5 = *(v14 + 16);
    v8 = *(v14 + 8);
    v9 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(v4 + 48);
    v11 = -1;
    v12 = -1;
    v13 = 0;
    md::StandardLabeler::setDebugHighlight(a1, &v14, &v8);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = -1;
    v12 = -1;
    v13 = 0;
    md::StandardLabeler::hitRoadFeatureAtPixel(a1, a2, &v14, &v8, 1);
    v6 = v8 != 0;
    if (v8)
    {
      md::StandardLabeler::setDebugHighlight(a1, &v14, &v8);
    }

    else
    {
      (a1->__vftable[7].~__shared_weak_count)(a1);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  return v6;
}

void sub_1B30900D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v14 = *(v12 - 24);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::StandardLabeler::debugString@<X0>(md::StandardLabeler *this@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v176[19] = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v160);
  v6 = *(*(this + 3) + 288);
  if ((a2 & 1) == 0)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "MapTiles: ", 10);
    v28 = MEMORY[0x1B8C61CB0](&v160, (*(*(this + 6) + 24) - *(*(this + 6) + 16)) >> 4);
    v29 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v28, " Labels: ", 9);
    v30 = MEMORY[0x1B8C61CB0](v29, *(*(this + 6) + 248));
    v31 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, " Labels shown: ", 15);
    v32 = MEMORY[0x1B8C61C90](v31, *(this + 91));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, "\nFeature Pool: ", 15);
    std::mutex::lock(v6);
    v33 = *(v6 + 104);
    std::mutex::unlock(v6);
    v34 = MEMORY[0x1B8C61CB0](v32, v33);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v34, " roads, ", 8);
    std::mutex::lock(v6);
    v35 = *(v6 + 160);
    std::mutex::unlock(v6);
    v36 = MEMORY[0x1B8C61CB0](v34, v35);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v36, " unnamed roads, ", 16);
    std::mutex::lock(v6);
    v37 = *(v6 + 384);
    std::mutex::unlock(v6);
    v38 = MEMORY[0x1B8C61CB0](v36, v37);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v38, " points ", 8);
    std::mutex::lock(v6);
    v39 = *(v6 + 216);
    std::mutex::unlock(v6);
    v40 = MEMORY[0x1B8C61CB0](v38, v39);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, " physical, ", 11);
    std::mutex::lock(v6);
    v41 = *(v6 + 440);
    std::mutex::unlock(v6);
    v42 = MEMORY[0x1B8C61CB0](v40, v41);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v42, " transit line", 13);
    std::ostringstream::str[abi:nn200100](a3, &v160);
    goto LABEL_127;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "Feature Pool: tiles=", 20);
  std::mutex::lock(v6);
  v7 = *(v6 + 496);
  std::mutex::unlock(v6);
  v8 = MEMORY[0x1B8C61CB0](&v160, v7);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, " points=", 8);
  std::mutex::lock(v6);
  v9 = *(v6 + 384);
  std::mutex::unlock(v6);
  v10 = MEMORY[0x1B8C61CB0](v8, v9);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, " roads=", 7);
  std::mutex::lock(v6);
  v11 = *(v6 + 104);
  std::mutex::unlock(v6);
  v12 = MEMORY[0x1B8C61CB0](v10, v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, " unnamed roads=", 15);
  std::mutex::lock(v6);
  v13 = *(v6 + 160);
  std::mutex::unlock(v6);
  v14 = MEMORY[0x1B8C61CB0](v12, v13);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, " physical=", 10);
  std::mutex::lock(v6);
  v15 = *(v6 + 216);
  std::mutex::unlock(v6);
  v16 = MEMORY[0x1B8C61CB0](v14, v15);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, " transit lines=", 15);
  std::mutex::lock(v6);
  v17 = *(v6 + 440);
  std::mutex::unlock(v6);
  v18 = MEMORY[0x1B8C61CB0](v16, v17);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "Total TextDataStrings: ", 23);
  v19 = atomic_load(&md::TextDataString::_totalLabelTextData);
  v20 = MEMORY[0x1B8C61C90](&v160, v19);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, "\n", 1);
  v21 = *(this + 6);
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  if (v22 == v23)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    LODWORD(v24) = 0;
    LODWORD(v25) = 0;
    LODWORD(v26) = 0;
    do
    {
      v27 = *v22;
      v22 += 2;
      v26 = (v26 + v27[24]);
      v24 = (v24 + v27[25]);
      v25 = (v25 + v27[26]);
    }

    while (v22 != v23);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "MapTiles: tiles=", 16);
  v43 = MEMORY[0x1B8C61CB0](&v160, (*(*(this + 6) + 24) - *(*(this + 6) + 16)) >> 4);
  v44 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v43, ", label-fail(noFeature=", 23);
  v45 = MEMORY[0x1B8C61C90](v44, v26);
  v46 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v45, ", noStyle=", 10);
  v47 = MEMORY[0x1B8C61C90](v46, v24);
  v48 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v47, ", zRange=", 9);
  v49 = MEMORY[0x1B8C61C90](v48, v25);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v49, ")\n", 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "Labels: active=", 15);
  v50 = MEMORY[0x1B8C61CB0](&v160, *(*(this + 6) + 248));
  v51 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, "(", 1);
  v52 = MEMORY[0x1B8C61CB0](v51, (*(this + 10) - *(this + 9)) >> 4);
  v53 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v52, ") cached=", 9);
  v54 = MEMORY[0x1B8C61CB0](v53, *(*(this + 6) + 216));
  v55 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v54, " custom=", 8);
  v56 = MEMORY[0x1B8C61CB0](v55, *(*(this + 6) + 568));
  v57 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v56, " overridden=", 12);
  v58 = MEMORY[0x1B8C61CB0](v57, *(*(this + 6) + 616));
  v59 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v58, " exist=", 7);
  v60 = atomic_load(md::Label::_totalLabels);
  v61 = MEMORY[0x1B8C61C90](v59, v60);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v61, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "DisplayLabels: total=", 21);
  v62 = MEMORY[0x1B8C61CB0](&v160, (*(this + 14) - *(this + 13)) >> 4);
  v63 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v62, " active=", 8);
  v64 = *(this + 13);
  v65 = *(this + 14);
  if (v64 == v65)
  {
    v66 = 0;
  }

  else
  {
    LODWORD(v66) = 0;
    do
    {
      v67 = *v64;
      v64 += 2;
      v66 = v66 + *(v67 + 1340);
    }

    while (v64 != v65);
  }

  v68 = MEMORY[0x1B8C61C90](v63, v66);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v68, "\n", 1);
  v69 = *(this + 4);
  v70 = *(v69 + 72);
  v71 = (v69 + 80);
  if (v70 != v71)
  {
    v72 = 0;
    do
    {
      v73 = v70[1];
      v74 = v70;
      if (v73)
      {
        do
        {
          v75 = v73;
          v73 = *v73;
        }

        while (v73);
      }

      else
      {
        do
        {
          v75 = v74[2];
          v76 = *v75 == v74;
          v74 = v75;
        }

        while (!v76);
      }

      v72 += v70[33];
      v70 = v75;
    }

    while (v75 != v71);
    if (v72)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "Custom features: ", 17);
      v77 = MEMORY[0x1B8C61CB0](&v160, v72);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v77, "\n", 1);
    }
  }

  if ((*(*this + 352))(this))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "ExternalObjects: ", 17);
    v78 = (*(*this + 352))(this);
    std::ostringstream::basic_ostringstream[abi:nn200100](&v165);
    v79 = *(v78 + 96);
    if (v79)
    {
      v80 = 0;
      do
      {
        v80 += *(v79[2] + 68);
        v79 = *v79;
      }

      while (v79);
    }

    else
    {
      v80 = 0;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v165, "Icon updateCount(active)=", 25);
    v81 = MEMORY[0x1B8C61CB0](&v165, *(v78 + 112));
    v82 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v81, "(", 1);
    v83 = MEMORY[0x1B8C61CB0](v82, v80);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v83, ")", 1);
    if ((v175 & 0x10) != 0)
    {
      v86 = v174;
      if (v174 < v171)
      {
        v174 = v171;
        v86 = v171;
      }

      v87 = __src;
    }

    else
    {
      if ((v175 & 8) == 0)
      {
        v84 = this;
        v85 = 0;
        v159 = 0;
LABEL_42:
        *(__dst + v85) = 0;
        v165 = *MEMORY[0x1E69E54E8];
        *(&v165 + *(v165 - 3)) = *(MEMORY[0x1E69E54E8] + 24);
        v166 = (MEMORY[0x1E69E5548] + 16);
        if (v173 < 0)
        {
          operator delete(__p);
        }

        v166 = (MEMORY[0x1E69E5538] + 16);
        std::locale::~locale(&v167);
        std::ostream::~ostream();
        MEMORY[0x1B8C620C0](v176);
        if ((v159 & 0x80u) == 0)
        {
          v88 = __dst;
        }

        else
        {
          v88 = __dst[0];
        }

        if ((v159 & 0x80u) == 0)
        {
          v89 = v159;
        }

        else
        {
          v89 = __dst[1];
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, v88, v89);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "\n", 1);
        this = v84;
        if (v159 < 0)
        {
          operator delete(__dst[0]);
        }

        goto LABEL_52;
      }

      v87 = v168;
      v86 = v169;
    }

    v85 = v86 - v87;
    if (v86 - v87 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (v85 >= 0x17)
    {
      operator new();
    }

    v159 = v86 - v87;
    v84 = this;
    if (v85)
    {
      memmove(__dst, v87, v85);
    }

    goto LABEL_42;
  }

LABEL_52:
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "Count Pushed Labels: ", 21);
  v90 = MEMORY[0x1B8C61C90](&v160, *(this + 91));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v90, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "StagingState: ", 14);
  for (i = 0; i != 3; ++i)
  {
    v92 = *(this + 9);
    v93 = *(this + 10);
    if (v92 == v93)
    {
      v94 = 0;
    }

    else
    {
      LODWORD(v94) = 0;
      do
      {
        v95 = *v92;
        v92 += 2;
        if (*(v95 + 844) == i)
        {
          v94 = (v94 + 1);
        }

        else
        {
          v94 = v94;
        }
      }

      while (v92 != v93);
    }

    v96 = strlen(off_1E7B39578[i]);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, off_1E7B39578[i], v96);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "=", 1);
    v97 = MEMORY[0x1B8C61C90](&v160, v94);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v97, " ", 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "LabelDisplayState: ", 19);
  for (j = 0; j != 4; ++j)
  {
    v99 = *(this + 13);
    v100 = *(this + 14);
    if (v99 == v100)
    {
      v101 = 0;
    }

    else
    {
      LODWORD(v101) = 0;
      do
      {
        v102 = *v99;
        v99 += 2;
        if (*(v102 + 1152) == j)
        {
          v101 = (v101 + 1);
        }

        else
        {
          v101 = v101;
        }
      }

      while (v99 != v100);
    }

    v103 = strlen(off_1E7B39590[j]);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, off_1E7B39590[j], v103);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "=", 1);
    v104 = MEMORY[0x1B8C61C90](&v160, v101);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v104, " ", 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "Collision Tested: Items=", 24);
  v105 = MEMORY[0x1B8C61C90](&v160, *(this + 96));
  v106 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v105, " ReserveSpace=", 14);
  v107 = MEMORY[0x1B8C61C90](v106, *(this + 97));
  v108 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v107, " Lines=", 7);
  v109 = MEMORY[0x1B8C61C90](v108, *(this + 95));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v109, "\n", 1);
  v168 = 0;
  v165 = &v166;
  v166 = 0;
  v110 = *(this + 9);
  v156 = *(this + 10);
  if (v110 != v156)
  {
    v154 = this;
    v155 = a3;
    do
    {
      v157 = v110;
      v111 = (*(**(*v110 + 8) + 576))(*(*v110 + 8));
      v112 = *v111;
      v113 = v111[1];
      while (v112 != v113)
      {
        v114 = *v112;
        v115 = v166;
        v116 = &v166;
        v117 = &v166;
        if (v166)
        {
          while (1)
          {
            while (1)
            {
              v117 = v115;
              v118 = v115[4];
              if (v114 >= v118)
              {
                break;
              }

              v115 = *v117;
              v116 = v117;
              if (!*v117)
              {
                goto LABEL_83;
              }
            }

            if (v118 >= v114)
            {
              break;
            }

            v115 = v117[1];
            if (!v115)
            {
              v116 = v117 + 1;
              goto LABEL_83;
            }
          }
        }

        else
        {
LABEL_83:
          v119 = mdm::zone_mallocator::instance(v111);
          v120 = pthread_rwlock_rdlock((v119 + 32));
          if (v120)
          {
            geo::read_write_lock::logFailure(v120, "read lock", v121);
          }

          v122 = malloc_type_zone_malloc(*v119, 0x28uLL, 0x10600400E88909FuLL);
          atomic_fetch_add((v119 + 24), 1u);
          geo::read_write_lock::unlock((v119 + 32));
          v122[4] = v114;
          *v122 = 0;
          v122[1] = 0;
          v122[2] = v117;
          *v116 = v122;
          if (*v165)
          {
            v165 = *v165;
            v122 = *v116;
          }

          v111 = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v166, v122);
          ++v168;
        }

        v112 += 2;
      }

      v110 = v157 + 16;
    }

    while (v157 + 16 != v156);
    this = v154;
    a3 = v155;
  }

  std::__tree<md::LabelStyle const*,std::less<md::LabelStyle const*>,geo::allocator_adapter<md::LabelStyle const*,mdm::zone_mallocator>>::destroy(v166);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "LabelsPerStyle:", 15);
  v123 = v160;
  *(&v160 + *(v160 - 24) + 8) = *(&v160 + *(v160 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v162[0].__locale_ + *(v123 - 24)) = 1;
  v124 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v124, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "\nOutcome: (Staging, Display)\n", 29);
  v125 = a3;
  for (k = 0; k != 38; ++k)
  {
    md::stringFromLabelOutcome(&v165, k);
    v127 = *(this + 9);
    v128 = *(this + 10);
    if (v127 == v128)
    {
      v129 = 0;
    }

    else
    {
      LODWORD(v129) = 0;
      do
      {
        v130 = *v127;
        v127 += 2;
        if (*(v130 + 845) == k)
        {
          v129 = (v129 + 1);
        }

        else
        {
          v129 = v129;
        }
      }

      while (v127 != v128);
    }

    v131 = *(this + 13);
    v132 = *(this + 14);
    if (v131 == v132)
    {
      v133 = 0;
    }

    else
    {
      LODWORD(v133) = 0;
      do
      {
        v134 = *v131;
        v131 += 2;
        if (*(v134 + 1153) == k)
        {
          v133 = (v133 + 1);
        }

        else
        {
          v133 = v133;
        }
      }

      while (v131 != v132);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "   ", 3);
    if (SHIBYTE(v167.__locale_) >= 0)
    {
      v135 = &v165;
    }

    else
    {
      v135 = v165;
    }

    if (SHIBYTE(v167.__locale_) >= 0)
    {
      locale_high = HIBYTE(v167.__locale_);
    }

    else
    {
      locale_high = v166;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, v135, locale_high);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, ":(", 2);
    v137 = MEMORY[0x1B8C61C90](&v160, v129);
    v138 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v137, ", ", 2);
    v139 = MEMORY[0x1B8C61C90](v138, v133);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v139, ")\n", 2);
    if (SHIBYTE(v167.__locale_) < 0)
    {
      operator delete(v165);
    }
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "\nFade:\n", 7);
  v140 = v125;
  v141 = *(this + 9);
  v142 = *(this + 10);
  if (v141 == v142)
  {
    v143 = 0;
    v149 = 0;
  }

  else
  {
    v143 = 0;
    v144 = 0;
    v145 = 0;
    do
    {
      v146 = *(*v141 + 296);
      if (v146)
      {
        v144 += (*(*v146 + 696))(v146);
        v147 = *(*v141 + 296);
        if (v147)
        {
          v145 = v145 + (*(*v147 + 688))(v147);
          v148 = *(*v141 + 296);
          if (v148)
          {
            v143 = v143 + (*(*v148 + 704))(v148);
          }
        }
      }

      v141 += 16;
    }

    while (v141 != v142);
    v149 = v144 | (v145 << 32);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "   Cross Fade Parts: ", 21);
  v150 = MEMORY[0x1B8C61C90](&v160, v149);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v150, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "   Style Fade Parts: ", 21);
  v151 = MEMORY[0x1B8C61C90](&v160, HIDWORD(v149));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v151, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "   Parts Cross Fading: ", 23);
  v152 = MEMORY[0x1B8C61C90](&v160, v143);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v152, "\n", 1);
  std::ostringstream::str[abi:nn200100](v140, &v160);
LABEL_127:
  v160 = *MEMORY[0x1E69E54E8];
  *(&v160 + *(v160 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v161 = MEMORY[0x1E69E5548] + 16;
  if (v163 < 0)
  {
    operator delete(v162[7].__locale_);
  }

  v161 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v162);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v164);
}

void sub_1B3091258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::locale a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a17 = *MEMORY[0x1E69E54E8];
  *(&a17 + *(a17 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a18 = MEMORY[0x1E69E5548] + 16;
  if (a31 < 0)
  {
    operator delete(__p);
  }

  a18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a19);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a34);
  _Unwind_Resume(a1);
}

void std::__tree<md::LabelStyle const*,std::less<md::LabelStyle const*>,geo::allocator_adapter<md::LabelStyle const*,mdm::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<md::LabelStyle const*,std::less<md::LabelStyle const*>,geo::allocator_adapter<md::LabelStyle const*,mdm::zone_mallocator>>::destroy(*result);
    v2 = std::__tree<md::LabelStyle const*,std::less<md::LabelStyle const*>,geo::allocator_adapter<md::LabelStyle const*,mdm::zone_mallocator>>::destroy(result[1]);
    v3 = mdm::zone_mallocator::instance(v2);
    v4 = pthread_rwlock_rdlock((v3 + 32));
    if (v4)
    {
      geo::read_write_lock::logFailure(v4, "read lock", v5);
    }

    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, result);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

void md::StandardLabeler::populateDebugNode(uint64_t a1, void *a2, _BYTE *a3)
{
  if (*(a1 + 200))
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "Selected Feature");
    ChildNode = gdc::DebugTreeNode::createChildNode(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    (*(**(a1 + 200) + 472))(*(a1 + 200), ChildNode, *(a1 + 24));
  }

  if (*(a1 + 184))
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "Selected Label");
    v8 = gdc::DebugTreeNode::createChildNode(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    md::Label::populateDebugNode(*(a1 + 184), v8, v7);
  }

  if ((*a3 & 0x80) != 0)
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "All Labels");
    v9 = gdc::DebugTreeNode::createChildNode(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 80) != *(a1 + 72))
    {
      std::to_string(&v13, 0);
      v10 = std::string::insert(&v13, 0, "Label ", 6uLL);
      __p = *v10;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = gdc::DebugTreeNode::createChildNode(v9, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      md::Label::populateDebugNode(**(a1 + 72), v12, v11);
    }
  }
}

void sub_1B3091758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void md::StandardLabeler::debugDraw(md::StandardLabeler *this, NSMutableString *a2, md::DebugConsole *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v35 = a3;
  v6 = *(this + 3);
  if (*(v6 + 3656) == 1)
  {
    v7 = *(this + 6);
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    if (v8 != v9)
    {
      do
      {
        v10 = *(this + 3);
        if ((*(v10 + 3677) & 1) == 0)
        {
          v11 = *v8;
          __p = &unk_1F2A2B258;
          v37 = this;
          v38 = &v35;
          p_p = &__p;
          md::LabelMapTile::enumerateLineFeatures(v11, &__p);
          std::__function::__value_func<void ()(std::shared_ptr<md::LabelFeature> const&)>::~__value_func[abi:nn200100](&__p);
          v10 = *(this + 3);
        }

        if ((*(v10 + 3679) & 1) == 0)
        {
          v12 = *v8;
          __p = &unk_1F2A2B2A0;
          v37 = this;
          v38 = &v35;
          p_p = &__p;
          md::LabelMapTile::enumeratePhysicalLineFeatures(*(v12 + 192), &__p);
          std::__function::__value_func<void ()(std::shared_ptr<md::LabelFeature> const&)>::~__value_func[abi:nn200100](&__p);
        }

        v8 += 2;
      }

      while (v8 != v9);
      v6 = *(this + 3);
    }
  }

  if (*(v6 + 3663) == 1)
  {
    v13 = *(this + 6);
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    while (v14 != v15)
    {
      v16 = *v14;
      v17 = *(*v14 + 448);
      if (v17)
      {
        md::LabelMapTileCollisionInfo::debugDraw(v17, *(*(this + 3) + 424), v35, *(*(*(this + 3) + 232) + 64));
        v16 = *v14;
      }

      v18 = v16[58];
      if (v18)
      {
        md::LabelMapTileCollisionInfo::debugDraw(v18, *(*(this + 3) + 424), v35, *(*(*(this + 3) + 232) + 64));
        v16 = *v14;
      }

      v19 = v16[60];
      if (v19)
      {
        md::LabelMapTileCollisionInfo::debugDraw(v19, *(*(this + 3) + 424), v35, *(*(*(this + 3) + 232) + 64));
        v16 = *v14;
      }

      v20 = v16[62];
      v21 = v16 + 63;
      if (v20 != v16 + 63)
      {
        do
        {
          md::LabelMapTileCollisionInfo::debugDraw(v20[5], *(*(this + 3) + 424), v35, *(*(*(this + 3) + 232) + 64));
          v22 = v20[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v20[2];
              v24 = *v23 == v20;
              v20 = v23;
            }

            while (!v24);
          }

          v20 = v23;
        }

        while (v23 != v21);
      }

      v14 += 16;
    }
  }

  v25 = *(this + 23);
  if (v25 || *(this + 25))
  {
    v26 = *(this + 3);
    if (*(v26 + 3683) == 1)
    {
      v27 = *(this + 25);
      if (v27)
      {
        (*(*v27 + 464))(*(this + 25));
        v25 = *(this + 23);
      }

      if (v25)
      {
        md::Label::debugDraw(v25, v35);
      }
    }

    else
    {
      [(NSMutableString *)v5 appendFormat:@"LayoutZoom:%.2f\n", *(v26 + 464)];
      v28 = *(this + 25);
      if (v28)
      {
        (*(*v28 + 464))(v28);
        (*(**(this + 25) + 456))(&__p);
        if (SHIBYTE(v38) >= 0)
        {
          v29 = &__p;
        }

        else
        {
          v29 = __p;
        }

        v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v29];
        if (v30)
        {
          [(NSMutableString *)v5 appendString:v30];
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(__p);
        }
      }

      v31 = *(this + 23);
      if (v31)
      {
        md::Label::debugDraw(v31, v35);
        v32 = MEMORY[0x1E696AEC0];
        md::Label::debugString(&__p, *(this + 23), *(this + 3));
        v33 = SHIBYTE(v38) >= 0 ? &__p : __p;
        v34 = [v32 stringWithUTF8String:v33];
        [(NSMutableString *)v5 appendString:v34];

        if (SHIBYTE(v38) < 0)
        {
          operator delete(__p);
        }
      }
    }
  }
}

void sub_1B3091B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::StandardLabeler::debugDraw(NSMutableString *,md::DebugConsole *)::$_1,std::allocator<md::StandardLabeler::debugDraw(NSMutableString *,md::DebugConsole *)::$_1>,void ()(std::shared_ptr<md::LabelFeature> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*(a1 + 8) + 24);
  v4 = **(a1 + 16);
  v6 = xmmword_1B33B0640;
  v7 = 0;
  return (*(*v2 + 464))(v2, v3, v4, &v6, 0);
}

__n128 std::__function::__func<md::StandardLabeler::debugDraw(NSMutableString *,md::DebugConsole *)::$_1,std::allocator<md::StandardLabeler::debugDraw(NSMutableString *,md::DebugConsole *)::$_1>,void ()(std::shared_ptr<md::LabelFeature> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2B2A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::StandardLabeler::debugDraw(NSMutableString *,md::DebugConsole *)::$_0,std::allocator<md::StandardLabeler::debugDraw(NSMutableString *,md::DebugConsole *)::$_0>,void ()(std::shared_ptr<md::LabelFeature> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*(a1 + 8) + 24);
  v4 = **(a1 + 16);
  v6 = xmmword_1B33B0640;
  v7 = 0;
  return (*(*v2 + 464))(v2, v3, v4, &v6, 0);
}

__n128 std::__function::__func<md::StandardLabeler::debugDraw(NSMutableString *,md::DebugConsole *)::$_0,std::allocator<md::StandardLabeler::debugDraw(NSMutableString *,md::DebugConsole *)::$_0>,void ()(std::shared_ptr<md::LabelFeature> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2B258;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void ggl::Sky::SkyPipelineSetup::~SkyPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B30927E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VKMapSnapshot;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void releaseIOSurface(void *a1, const void *a2)
{
  cf = a1;
  if (cf)
  {
    [cf unlockWithOptions:1 seed:0];
    [cf decrementUseCount];
    CFRelease(cf);
  }
}

void md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_updateSubTileMaskForRenderable(uint64_t a1, int8x8_t **a2, uint64_t a3)
{
  v5 = *(a3 + 392);
  v6 = *(a3 + 400);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a3 + 56);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = md::SceneContext::subtileClipMask(*a2, v5, v7);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = md::SceneContext::subtileClipMask(*a2, v5, *(a3 + 56));
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v8[4] == v8[3] * v8[3])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

LABEL_8:
  md::BaseMapTileDataRenderable::setSubtileClipMask(a3, v9);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B3093850(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(void *a1)
{
  v2 = a1[34];
  v1 = a1[35];
  if (v2 != v1)
  {
    while ((md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, *v2) & 1) != 0)
    {
      ++v2;
LABEL_4:
      if (v2 == v1)
      {
        return v1;
      }
    }

    v4 = v1 - 1;
    while (v4 != v2)
    {
      v1 = v4;
      v5 = *v4--;
      if (md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, v5))
      {
        v6 = *v2;
        *v2++ = *v1;
        *v1 = v6;
        goto LABEL_4;
      }
    }
  }

  return v2;
}

void md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineEnteringRenderables(uint64_t a1@<X0>, md::LayoutContext *a2@<X1>, uint64_t *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v14 = gdc::Context::get<md::GeometryContext>(*(a2 + 1));
  if (v14)
  {
    v5 = *(a1 + 192);
    if (v5)
    {
      if (!(v5 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v5);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if ((*(*a1 + 208))(a1))
    {
      v6 = *(a1 + 34);
    }

    else
    {
      v6 = -1;
    }

    v7 = *(a1 + 176);
    if (v7 != a1 + 184)
    {
      v13 = v6;
      v9 = *(v7 + 32);
      v8 = *(v7 + 40);
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = *(v9 + 172);
      v16[0] = *(v9 + 168);
      v18 = *(v9 + 184);
      v19 = *(v9 + 192);
      v10 = *(v9 + 608);
      v11 = *(v9 + 616);
      v12 = md::LayoutContext::cameraType(a2);
      gdc::ToCoordinateSystem(v12);
      md::GeometryContext::transformConstantData(&v15, v14, v16, v12, v13, v10, v11);
    }
  }
}