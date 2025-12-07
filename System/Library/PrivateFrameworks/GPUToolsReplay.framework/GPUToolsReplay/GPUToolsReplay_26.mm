BOOL IsTraceBufferValidV2(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ![v1 storageMode] && objc_msgSend(v2, "length") >= 0x40)
  {
    v5 = [v2 contents];
    v6 = *(v5 + 4);
    v7 = *(v5 + 44);
    v3 = [v2 length] >= 16 * v7 + 24 * v6 + 64;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void DecodeResourceTrackingBufferV2(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v19 = a2;
  if (IsTraceBufferValidV2(v19))
  {
    v20 = [v19 contents];
    v26 = *(v20 + 32);
    v21 = 24 * HIDWORD(*v20);
    if (HIDWORD(*v20))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long>>>(HIDWORD(*v20));
    }

    if (HIDWORD(v26))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(HIDWORD(v26));
    }

    v22 = (v20 + 64);
    memcpy(0, v22, v21);
    memcpy(0, &v22[v21], 16 * HIDWORD(v26));
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    v23 = 0;
    vars0 = 0;
    do
    {
      ++v23;
    }

    while (v23 != 9);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<ResourceUsageEntry>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
    if (v9 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v12 = 8 * (v8 >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = v12 + 24;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

uint64_t PopulateResourceTrackingBufferV2(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  a20 = *MEMORY[0x277D85DE8];
  v33 = a1;
  v21 = 0;
  a15 = 0u;
  a16 = 0u;
  a13 = 0u;
  a14 = 0u;
  LOBYTE(a13) = 2;
  v22 = *(*a2 + 12);
  v23 = *(a2[1] + 48);
  HIDWORD(vars8) = v23;
  DWORD1(a13) = v22;
  HIDWORD(a13) = v23;
  do
  {
    v23 += *(&vars8 + v21 + 8);
    *(&a13 + v21 + 16) = v23;
    v21 += 4;
  }

  while (v21 != 32);
  if (v22)
  {
    if ((v22 & 0x80000000) == 0)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long>>>(v22);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  *&v24 = std::__introsort<std::_ClassicAlgPolicy,PopulateResourceTrackingBufferV2(objc_object  {objcproto9MTLBuffer}*,GTMTLIndirectResources const&,apr_pool_t *)::$_0 &,GTMTLReplayResourceTrackingTracingBufferEntryV2 *,false>(0, 0, 0, 1, 0).n128_u64[0];
  if (HIDWORD(a15))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(HIDWORD(a15));
  }

  v25 = 0;
  v34 = 1;
  do
  {
    v26 = *(a2 + qword_24DA91088[v25]);
    if (v26)
    {
      *(v26 + 24) = 0;
      *(v26 + 32) = 0;
      *(v26 + 16) = v26;
      *(v26 + 40) = 0;
      if (apr_hash_next((v26 + 16)))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(1uLL);
      }

      vars0 = CompareResourceTrackingTracingResourceEntryV2;
      v24 = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLReplayResourceTrackingTracingResourceEntryV2 const&,GTMTLReplayResourceTrackingTracingResourceEntryV2 const&),GTMTLReplayResourceTrackingTracingResourceEntryV2*,false>(0, 0, &vars0, 0, 1, v27);
    }

    else
    {
      v34 = 0;
    }

    ++v25;
  }

  while (v25 != 9);
  if ([v33 length] >= 0x40)
  {
    v30 = [v33 contents];
    v31 = a14;
    *v30 = a13;
    v30[1] = v31;
    v32 = a16;
    v30[2] = a15;
    v30[3] = v32;
    v28 = v34;
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

void sub_24D9383E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p)
{
  if (v16)
  {
    operator delete(v16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,PopulateResourceTrackingBufferV2(objc_object  {objcproto9MTLBuffer}*,GTMTLIndirectResources const&,apr_pool_t *)::$_0 &,GTMTLReplayResourceTrackingTracingBufferEntryV2 *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = &a2[-2].n128_u64[1];
  v10 = a2 - 3;
  v11 = &a2[-5].n128_u64[1];
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (*v9 >= v12->n128_u64[0])
        {
          return result;
        }

LABEL_106:
        v200 = v12[1].n128_u64[0];
        v172 = *v12;
        v94 = *v9;
        v12[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v12 = v94;
        result = v172;
        a2[-1].n128_u64[1] = v200;
LABEL_107:
        *v9 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v91 = (v12 + 24);
      v95 = v12[1].n128_u64[1];
      v96 = v12 + 3;
      v97 = v12[3].n128_u64[0];
      if (v95 >= v12->n128_u64[0])
      {
        if (v97 < v95)
        {
          v142 = v12[2].n128_u64[1];
          result = *v91;
          *v91 = *v96;
          v12[2].n128_u64[1] = v12[4].n128_u64[0];
          *v96 = result;
          v12[4].n128_u64[0] = v142;
          if (v12[1].n128_u64[1] < v12->n128_u64[0])
          {
            v203 = v12[1].n128_u64[0];
            v177 = *v12;
            *v12 = *v91;
            v12[1].n128_u64[0] = v12[2].n128_u64[1];
            result = v177;
            *v91 = v177;
            v12[2].n128_u64[1] = v203;
          }
        }
      }

      else
      {
        if (v97 < v95)
        {
          v201 = v12[1].n128_u64[0];
          v173 = *v12;
          *v12 = *v96;
          v12[1].n128_u64[0] = v12[4].n128_u64[0];
          result = v173;
          *v96 = v173;
          v98 = v201;
          goto LABEL_187;
        }

        v205 = v12[1].n128_u64[0];
        v180 = *v12;
        *v12 = *v91;
        v12[1].n128_u64[0] = v12[2].n128_u64[1];
        result = v180;
        *v91 = v180;
        v12[2].n128_u64[1] = v205;
        if (v97 < v12[1].n128_u64[1])
        {
          v98 = v12[2].n128_u64[1];
          result = *v91;
          *v91 = *v96;
          v12[2].n128_u64[1] = v12[4].n128_u64[0];
          *v96 = result;
LABEL_187:
          v12[4].n128_u64[0] = v98;
        }
      }

      if (*v9 >= v96->n128_u64[0])
      {
        return result;
      }

      result = *v96;
      v148 = v12[4].n128_u64[0];
      v149 = a2[-1].n128_u64[1];
      *v96 = *v9;
      v12[4].n128_u64[0] = v149;
      a2[-1].n128_u64[1] = v148;
      *v9 = result;
      if (v96->n128_u64[0] >= v91->n128_u64[0])
      {
        return result;
      }

      v150 = v12[2].n128_u64[1];
      result = *v91;
      *v91 = *v96;
      v12[2].n128_u64[1] = v12[4].n128_u64[0];
      *v96 = result;
      v12[4].n128_u64[0] = v150;
LABEL_191:
      if (v12[1].n128_u64[1] < v12->n128_u64[0])
      {
        v206 = v12[1].n128_u64[0];
        v181 = *v12;
        *v12 = *v91;
        v12[1].n128_u64[0] = v91[1].n128_u64[0];
        result = v181;
        *v91 = v181;
        v91[1].n128_u64[0] = v206;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,PopulateResourceTrackingBufferV2(objc_object  {objcproto9MTLBuffer}*,GTMTLIndirectResources const&,apr_pool_t *)::$_0 &,GTMTLReplayResourceTrackingTracingBufferEntryV2 *,0>(v12, (v12 + 24), v12[3].n128_u64, &v12[4].n128_i64[1], &a2[-2].n128_i64[1], result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v99 = (v12 + 24);
      v101 = v12 == a2 || v99 == a2;
      if (a4)
      {
        if (!v101)
        {
          v102 = 0;
          v103 = v12;
          do
          {
            v104 = v99;
            v105 = v103[1].n128_u64[1];
            if (v105 < v103->n128_u64[0])
            {
              v174 = v103[2];
              v106 = v102;
              while (1)
              {
                v107 = v12 + v106;
                *(v107 + 24) = *(v12 + v106);
                *(v107 + 5) = *(v12[1].n128_u64 + v106);
                if (!v106)
                {
                  break;
                }

                v106 -= 24;
                if (v105 >= *(v107 - 3))
                {
                  v108 = &v12[1].n128_i64[1] + v106;
                  goto LABEL_126;
                }
              }

              v108 = v12;
LABEL_126:
              *v108 = v105;
              result = v174;
              *(v108 + 8) = v174;
            }

            v99 = (v104 + 24);
            v102 += 24;
            v103 = v104;
          }

          while (&v104[1].n128_i8[8] != a2);
        }
      }

      else if (!v101)
      {
        do
        {
          v143 = v99;
          v144 = a1[1].n128_u64[1];
          if (v144 < a1->n128_u64[0])
          {
            v178 = a1[2];
            do
            {
              *v99 = *(v99 - 24);
              v99[1].n128_u64[0] = v99[-1].n128_u64[1];
              v145 = v99[-3].n128_u64[0];
              v99 = (v99 - 24);
            }

            while (v144 < v145);
            v99->n128_u64[0] = v144;
            result = v178;
            *(v99 + 8) = v178;
          }

          v99 = (v143 + 24);
          a1 = v143;
        }

        while (&v143[1].n128_i8[8] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v109 = (v14 - 2) >> 1;
        v110 = v109;
        do
        {
          v111 = v110;
          if (v109 >= v110)
          {
            v112 = (2 * v110) | 1;
            v113 = &v12->n128_u64[3 * v112];
            if (2 * v111 + 2 >= v14)
            {
              v114 = *v113;
            }

            else
            {
              v114 = v113[3];
              v115 = *v113 >= v114;
              if (*v113 > v114)
              {
                v114 = *v113;
              }

              if (!v115)
              {
                v113 += 3;
                v112 = 2 * v111 + 2;
              }
            }

            v116 = &v12->n128_u64[3 * v111];
            v117 = *v116;
            if (v114 >= *v116)
            {
              v175 = *(v116 + 1);
              do
              {
                v118 = v116;
                v116 = v113;
                v119 = *v113;
                v118[2] = v113[2];
                *v118 = v119;
                if (v109 < v112)
                {
                  break;
                }

                v120 = (2 * v112) | 1;
                v113 = &v12->n128_u64[3 * v120];
                v112 = 2 * v112 + 2;
                if (v112 >= v14)
                {
                  v121 = *v113;
                  v112 = v120;
                }

                else
                {
                  v121 = *v113;
                  v122 = v113[3];
                  if (*v113 <= v122)
                  {
                    v121 = v113[3];
                  }

                  if (*v113 >= v122)
                  {
                    v112 = v120;
                  }

                  else
                  {
                    v113 += 3;
                  }
                }
              }

              while (v121 >= v117);
              *v116 = v117;
              *(v116 + 1) = v175;
            }
          }

          v110 = v111 - 1;
        }

        while (v111);
        v123 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v124 = 0;
          v202 = v12[1].n128_u64[0];
          v176 = *v12;
          v125 = v12;
          do
          {
            v126 = v125 + 24 * v124;
            v127 = (v126 + 24);
            v128 = (2 * v124) | 1;
            v124 = 2 * v124 + 2;
            if (v124 >= v123)
            {
              v124 = v128;
            }

            else
            {
              v130 = *(v126 + 6);
              v129 = v126 + 48;
              if (*(v129 - 3) >= v130)
              {
                v124 = v128;
              }

              else
              {
                v127 = v129;
              }
            }

            v131 = *v127;
            v125[1].n128_u64[0] = v127[1].n128_u64[0];
            *v125 = v131;
            v125 = v127;
          }

          while (v124 <= ((v123 - 2) >> 1));
          a2 = (a2 - 24);
          if (v127 == a2)
          {
            result = v176;
            v127[1].n128_u64[0] = v202;
            *v127 = v176;
          }

          else
          {
            v132 = *a2;
            v127[1].n128_u64[0] = a2[1].n128_u64[0];
            *v127 = v132;
            result = v176;
            a2[1].n128_u64[0] = v202;
            *a2 = v176;
            v133 = v127 - v12 + 24;
            if (v133 >= 25)
            {
              v134 = (-2 - 0x5555555555555555 * (v133 >> 3)) >> 1;
              v135 = (v12 + 24 * v134);
              v136 = v127->n128_u64[0];
              if (v135->n128_u64[0] < v127->n128_u64[0])
              {
                v153 = *(v127 + 8);
                do
                {
                  v137 = v127;
                  v127 = v135;
                  v138 = *v135;
                  v137[1].n128_u64[0] = v135[1].n128_u64[0];
                  *v137 = v138;
                  if (!v134)
                  {
                    break;
                  }

                  v134 = (v134 - 1) >> 1;
                  v135 = (v12 + 24 * v134);
                }

                while (v135->n128_u64[0] < v136);
                v127->n128_u64[0] = v136;
                result = v153;
                *(v127 + 8) = v153;
              }
            }
          }
        }

        while (v123-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = &v12->n128_u64[3 * (v14 >> 1)];
    v17 = *v9;
    if (v13 >= 0xC01)
    {
      v18 = *v16;
      if (*v16 >= v12->n128_u64[0])
      {
        if (v17 < v18)
        {
          v184 = v16[2];
          v156 = *v16;
          v22 = *v9;
          v16[2] = a2[-1].n128_u64[1];
          *v16 = v22;
          a2[-1].n128_u64[1] = v184;
          *v9 = v156;
          if (*v16 < v12->n128_u64[0])
          {
            v185 = v12[1].n128_u64[0];
            v157 = *v12;
            v23 = *v16;
            v12[1].n128_u64[0] = v16[2];
            *v12 = v23;
            v16[2] = v185;
            *v16 = v157;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v182 = v12[1].n128_u64[0];
          v154 = *v12;
          v19 = *v9;
          v12[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v12 = v19;
          goto LABEL_26;
        }

        v188 = v12[1].n128_u64[0];
        v160 = *v12;
        v26 = *v16;
        v12[1].n128_u64[0] = v16[2];
        *v12 = v26;
        v16[2] = v188;
        *v16 = v160;
        if (*v9 < *v16)
        {
          v182 = v16[2];
          v154 = *v16;
          v27 = *v9;
          v16[2] = a2[-1].n128_u64[1];
          *v16 = v27;
LABEL_26:
          a2[-1].n128_u64[1] = v182;
          *v9 = v154;
        }
      }

      v28 = (v12 + 24);
      v29 = v12 + 24 * v15;
      v32 = *(v29 - 3);
      v30 = (v29 - 24);
      v31 = v32;
      v33 = v10->n128_u64[0];
      if (v32 >= v12[1].n128_u64[1])
      {
        if (v33 < v31)
        {
          v189 = v30[1].n128_u64[0];
          v161 = *v30;
          v37 = *v10;
          v30[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v30 = v37;
          a2[-2].n128_u64[0] = v189;
          *v10 = v161;
          if (v30->n128_u64[0] < v28->n128_u64[0])
          {
            v38 = *v28;
            v39 = v12[2].n128_u64[1];
            v40 = v30[1].n128_u64[0];
            *v28 = *v30;
            v12[2].n128_u64[1] = v40;
            v30[1].n128_u64[0] = v39;
            *v30 = v38;
          }
        }
      }

      else
      {
        if (v33 < v31)
        {
          v34 = *v28;
          v35 = v12[2].n128_u64[1];
          v36 = a2[-2].n128_u64[0];
          *v28 = *v10;
          v12[2].n128_u64[1] = v36;
          a2[-2].n128_u64[0] = v35;
          goto LABEL_38;
        }

        v43 = *v28;
        v44 = v12[2].n128_u64[1];
        v45 = v30[1].n128_u64[0];
        *v28 = *v30;
        v12[2].n128_u64[1] = v45;
        v30[1].n128_u64[0] = v44;
        *v30 = v43;
        if (v10->n128_u64[0] < v30->n128_u64[0])
        {
          v191 = v30[1].n128_u64[0];
          v163 = *v30;
          v46 = *v10;
          v30[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v30 = v46;
          v34 = v163;
          a2[-2].n128_u64[0] = v191;
LABEL_38:
          *v10 = v34;
        }
      }

      v47 = v12 + 3;
      v48 = v12 + 24 * v15;
      v51 = *(v48 + 3);
      v49 = (v48 + 24);
      v50 = v51;
      v52 = *v11;
      if (v51 >= v12[3].n128_u64[0])
      {
        if (v52 < v50)
        {
          v192 = v49[1].n128_u64[0];
          v164 = *v49;
          v56 = *v11;
          v49[1].n128_u64[0] = a2[-4].n128_u64[1];
          *v49 = v56;
          a2[-4].n128_u64[1] = v192;
          *v11 = v164;
          if (v49->n128_u64[0] < v47->n128_u64[0])
          {
            v57 = *v47;
            v58 = v12[4].n128_u64[0];
            v59 = v49[1].n128_u64[0];
            *v47 = *v49;
            v12[4].n128_u64[0] = v59;
            v49[1].n128_u64[0] = v58;
            *v49 = v57;
          }
        }
      }

      else
      {
        if (v52 < v50)
        {
          v53 = *v47;
          v54 = v12[4].n128_u64[0];
          v55 = a2[-4].n128_u64[1];
          *v47 = *v11;
          v12[4].n128_u64[0] = v55;
          a2[-4].n128_u64[1] = v54;
          goto LABEL_47;
        }

        v60 = *v47;
        v61 = v12[4].n128_u64[0];
        v62 = v49[1].n128_u64[0];
        *v47 = *v49;
        v12[4].n128_u64[0] = v62;
        v49[1].n128_u64[0] = v61;
        *v49 = v60;
        if (*v11 < v49->n128_u64[0])
        {
          v193 = v49[1].n128_u64[0];
          v165 = *v49;
          v63 = *v11;
          v49[1].n128_u64[0] = a2[-4].n128_u64[1];
          *v49 = v63;
          v53 = v165;
          a2[-4].n128_u64[1] = v193;
LABEL_47:
          *v11 = v53;
        }
      }

      v64 = *v16;
      v65 = v49->n128_u64[0];
      if (*v16 >= v30->n128_u64[0])
      {
        if (v65 < v64)
        {
          v195 = v16[2];
          v167 = *v16;
          *v16 = *v49;
          v16[2] = v49[1].n128_u64[0];
          v49[1].n128_u64[0] = v195;
          *v49 = v167;
          if (*v16 < v30->n128_u64[0])
          {
            v196 = v30[1].n128_u64[0];
            v168 = *v30;
            *v30 = *v16;
            v30[1].n128_u64[0] = v16[2];
            v16[2] = v196;
            *v16 = v168;
          }
        }
      }

      else
      {
        if (v65 < v64)
        {
          v194 = v30[1].n128_u64[0];
          v166 = *v30;
          *v30 = *v49;
          v30[1].n128_u64[0] = v49[1].n128_u64[0];
          goto LABEL_56;
        }

        v197 = v30[1].n128_u64[0];
        v169 = *v30;
        *v30 = *v16;
        v30[1].n128_u64[0] = v16[2];
        v16[2] = v197;
        *v16 = v169;
        if (v49->n128_u64[0] < *v16)
        {
          v194 = v16[2];
          v166 = *v16;
          *v16 = *v49;
          v16[2] = v49[1].n128_u64[0];
LABEL_56:
          v49[1].n128_u64[0] = v194;
          *v49 = v166;
        }
      }

      v198 = v12[1].n128_u64[0];
      v170 = *v12;
      v66 = *v16;
      v12[1].n128_u64[0] = v16[2];
      *v12 = v66;
      v16[2] = v198;
      *v16 = v170;
      goto LABEL_58;
    }

    v20 = v12->n128_u64[0];
    if (v12->n128_u64[0] >= *v16)
    {
      if (v17 < v20)
      {
        v186 = v12[1].n128_u64[0];
        v158 = *v12;
        v24 = *v9;
        v12[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v12 = v24;
        a2[-1].n128_u64[1] = v186;
        *v9 = v158;
        if (v12->n128_u64[0] < *v16)
        {
          v187 = v16[2];
          v159 = *v16;
          v25 = *v12;
          v16[2] = v12[1].n128_u64[0];
          *v16 = v25;
          v12[1].n128_u64[0] = v187;
          *v12 = v159;
        }
      }

      goto LABEL_58;
    }

    if (v17 >= v20)
    {
      v190 = v16[2];
      v162 = *v16;
      v41 = *v12;
      v16[2] = v12[1].n128_u64[0];
      *v16 = v41;
      v12[1].n128_u64[0] = v190;
      *v12 = v162;
      if (*v9 >= v12->n128_u64[0])
      {
        goto LABEL_58;
      }

      v183 = v12[1].n128_u64[0];
      v155 = *v12;
      v42 = *v9;
      v12[1].n128_u64[0] = a2[-1].n128_u64[1];
      *v12 = v42;
    }

    else
    {
      v183 = v16[2];
      v155 = *v16;
      v21 = *v9;
      v16[2] = a2[-1].n128_u64[1];
      *v16 = v21;
    }

    a2[-1].n128_u64[1] = v183;
    *v9 = v155;
LABEL_58:
    --a3;
    v67 = v12->n128_u64[0];
    if ((a4 & 1) != 0 || v12[-2].n128_u64[1] < v67)
    {
      v151 = *(v12 + 8);
      v68 = v12;
      do
      {
        v69 = v68;
        v70 = v68[1].n128_u64[1];
        v68 = (v68 + 24);
      }

      while (v70 < v67);
      v71 = a2;
      if (v69 == v12)
      {
        v71 = a2;
        do
        {
          if (v68 >= v71)
          {
            break;
          }

          v73 = v71[-2].n128_u64[1];
          v71 = (v71 - 24);
        }

        while (v73 >= v67);
      }

      else
      {
        do
        {
          v72 = v71[-2].n128_u64[1];
          v71 = (v71 - 24);
        }

        while (v72 >= v67);
      }

      v12 = v68;
      if (v68 < v71)
      {
        v74 = v71;
        do
        {
          v75 = *v12;
          v76 = v12[1].n128_u64[0];
          v77 = v74[1].n128_u64[0];
          *v12 = *v74;
          v12[1].n128_u64[0] = v77;
          v74[1].n128_u64[0] = v76;
          *v74 = v75;
          do
          {
            v78 = v12[1].n128_u64[1];
            v12 = (v12 + 24);
          }

          while (v78 < v67);
          do
          {
            v79 = v74[-2].n128_u64[1];
            v74 = (v74 - 24);
          }

          while (v79 >= v67);
        }

        while (v12 < v74);
      }

      if (&v12[-2].n128_i8[8] != a1)
      {
        v80 = *(v12 - 24);
        a1[1].n128_u64[0] = v12[-1].n128_u64[1];
        *a1 = v80;
      }

      v12[-2].n128_u64[1] = v67;
      result = v151;
      v12[-1] = v151;
      if (v68 < v71)
      {
        goto LABEL_79;
      }

      v81 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,PopulateResourceTrackingBufferV2(objc_object  {objcproto9MTLBuffer}*,GTMTLIndirectResources const&,apr_pool_t *)::$_0 &,GTMTLReplayResourceTrackingTracingBufferEntryV2 *>(a1, &v12[-2].n128_i8[8], v151);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,PopulateResourceTrackingBufferV2(objc_object  {objcproto9MTLBuffer}*,GTMTLIndirectResources const&,apr_pool_t *)::$_0 &,GTMTLReplayResourceTrackingTracingBufferEntryV2 *>(v12, a2, v82))
      {
        a2 = (v12 - 24);
        if (!v81)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v81)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,PopulateResourceTrackingBufferV2(objc_object  {objcproto9MTLBuffer}*,GTMTLIndirectResources const&,apr_pool_t *)::$_0 &,GTMTLReplayResourceTrackingTracingBufferEntryV2 *,false>(a1, (v12 - 24), a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      v152 = *(v12 + 8);
      if (v67 >= *v9)
      {
        v84 = &v12[1].n128_u64[1];
        do
        {
          v12 = v84;
          if (v84 >= a2)
          {
            break;
          }

          v84 += 24;
        }

        while (v67 >= v12->n128_u64[0]);
      }

      else
      {
        do
        {
          v83 = v12[1].n128_u64[1];
          v12 = (v12 + 24);
        }

        while (v67 >= v83);
      }

      v85 = a2;
      if (v12 < a2)
      {
        v85 = a2;
        do
        {
          v86 = v85[-2].n128_u64[1];
          v85 = (v85 - 24);
        }

        while (v67 < v86);
      }

      while (v12 < v85)
      {
        v199 = v12[1].n128_u64[0];
        v171 = *v12;
        v87 = *v85;
        v12[1].n128_u64[0] = v85[1].n128_u64[0];
        *v12 = v87;
        v85[1].n128_u64[0] = v199;
        *v85 = v171;
        do
        {
          v88 = v12[1].n128_u64[1];
          v12 = (v12 + 24);
        }

        while (v67 >= v88);
        do
        {
          v89 = v85[-2].n128_u64[1];
          v85 = (v85 - 24);
        }

        while (v67 < v89);
      }

      if (&v12[-2].n128_i8[8] != a1)
      {
        v90 = *(v12 - 24);
        a1[1].n128_u64[0] = v12[-1].n128_u64[1];
        *a1 = v90;
      }

      a4 = 0;
      v12[-2].n128_u64[1] = v67;
      result = v152;
      v12[-1] = v152;
    }
  }

  v91 = (v12 + 24);
  v92 = v12[1].n128_u64[1];
  v93 = *v9;
  if (v92 >= v12->n128_u64[0])
  {
    if (v93 >= v92)
    {
      return result;
    }

    result = *v91;
    v140 = v12[2].n128_u64[1];
    v141 = a2[-1].n128_u64[1];
    *v91 = *v9;
    v12[2].n128_u64[1] = v141;
    a2[-1].n128_u64[1] = v140;
    *v9 = result;
    goto LABEL_191;
  }

  if (v93 < v92)
  {
    goto LABEL_106;
  }

  v204 = v12[1].n128_u64[0];
  v179 = *v12;
  *v12 = *v91;
  v12[1].n128_u64[0] = v12[2].n128_u64[1];
  result = v179;
  *v91 = v179;
  v12[2].n128_u64[1] = v204;
  if (*v9 < v12[1].n128_u64[1])
  {
    result = *v91;
    v146 = v12[2].n128_u64[1];
    v147 = a2[-1].n128_u64[1];
    *v91 = *v9;
    v12[2].n128_u64[1] = v147;
    a2[-1].n128_u64[1] = v146;
    goto LABEL_107;
  }

  return result;
}

double std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLReplayResourceTrackingTracingResourceEntryV2 const&,GTMTLReplayResourceTrackingTracingResourceEntryV2 const&),GTMTLReplayResourceTrackingTracingResourceEntryV2*,false>(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 a6)
{
  while (2)
  {
    v10 = a2 - 1;
    v97 = a2 - 3;
    v98 = a2 - 2;
    v11 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v11;
          v12 = a2 - v11;
          v13 = v12 - 2;
          if (v12 <= 2)
          {
            if (v12 < 2)
            {
              return a6.n128_f64[0];
            }

            if (v12 == 2)
            {
              if (!(*a3)(&a2[-1], v11, a6))
              {
                return a6.n128_f64[0];
              }

LABEL_107:
              v102 = *v11;
              *v11 = *v10;
              a6 = v102;
              goto LABEL_108;
            }

            goto LABEL_9;
          }

          switch(v12)
          {
            case 3uLL:
              v47 = (*a3)(&v11[1], v11, a6);
              v48 = (*a3)(a2 - 1, v11 + 1);
              if (v47)
              {
                if (v48)
                {
                  goto LABEL_107;
                }

                v91 = v11[1];
                v102 = *v11;
                *v11 = v91;
                v11[1] = v102;
                if (!(*a3)(a2 - 1, v11 + 1))
                {
                  return a6.n128_f64[0];
                }

                a6 = v11[1];
                v102 = a6;
                v11[1] = *v10;
LABEL_108:
                *v10 = a6;
                return a6.n128_f64[0];
              }

              if (!v48)
              {
                return a6.n128_f64[0];
              }

              v102 = v11[1];
              v84 = v102;
              v11[1] = *v10;
              *v10 = v84;
LABEL_182:
              if ((*a3)(v11 + 1, v11))
              {
                v95 = v11[1];
                v102 = *v11;
                *v11 = v95;
                a6.n128_u64[0] = v102.n128_u64[0];
                v11[1] = v102;
              }

              return a6.n128_f64[0];
            case 4uLL:
              v49 = (*a3)(&v11[1], v11, a6);
              v50 = (*a3)(v11 + 2, v11 + 1);
              if ((v49 & 1) == 0)
              {
                if (v50)
                {
                  v85 = v11[1];
                  v11[1] = v11[2];
                  v11[2] = v85;
                  if ((*a3)(v11 + 1, v11))
                  {
                    v86 = v11[1];
                    v102 = *v11;
                    *v11 = v86;
                    v11[1] = v102;
                  }
                }

                goto LABEL_179;
              }

              if (v50)
              {
                v102 = *v11;
                *v11 = v11[2];
                v51 = v102;
              }

              else
              {
                v92 = v11[1];
                v102 = *v11;
                *v11 = v92;
                v11[1] = v102;
                if (!(*a3)(v11 + 2, v11 + 1))
                {
                  goto LABEL_179;
                }

                v51 = v11[1];
                v11[1] = v11[2];
              }

              v11[2] = v51;
LABEL_179:
              if (!(*a3)(a2 - 1, v11 + 2))
              {
                return a6.n128_f64[0];
              }

              v102 = v11[2];
              v93 = v102;
              v11[2] = *v10;
              *v10 = v93;
              if (!(*a3)(v11 + 2, v11 + 1))
              {
                return a6.n128_f64[0];
              }

              v94 = v11[1];
              v11[1] = v11[2];
              v11[2] = v94;
              goto LABEL_182;
            case 5uLL:

              a6.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLReplayResourceTrackingTracingResourceEntryV2 const&,GTMTLReplayResourceTrackingTracingResourceEntryV2 const&),GTMTLReplayResourceTrackingTracingResourceEntryV2*,0>(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, a3).n128_u64[0];
              return a6.n128_f64[0];
          }

LABEL_9:
          if (v12 <= 23)
          {
            v52 = v11 + 1;
            v54 = v11 == a2 || v52 == a2;
            if (a5)
            {
              if (!v54)
              {
                v55 = 0;
                v56 = v11;
                do
                {
                  v57 = v56;
                  v56 = v52;
                  if ((*a3)(v52, v57, a6))
                  {
                    v102 = *v56;
                    v58 = v55;
                    while (1)
                    {
                      *(v11 + v58 + 16) = *(v11 + v58);
                      if (!v58)
                      {
                        break;
                      }

                      v58 -= 16;
                      if (((*a3)(&v102, (v11 + v58)) & 1) == 0)
                      {
                        v59 = (v11 + v58 + 16);
                        goto LABEL_127;
                      }
                    }

                    v59 = v11;
LABEL_127:
                    a6 = v102;
                    *v59 = v102;
                  }

                  v52 = v56 + 1;
                  v55 += 16;
                }

                while (&v56[1] != a2);
              }
            }

            else if (!v54)
            {
              do
              {
                v87 = a1;
                a1 = v52;
                if ((*a3)(v52, v87, a6))
                {
                  v102 = *a1;
                  v88 = a1;
                  do
                  {
                    v89 = v88 - 1;
                    *v88 = v88[-1];
                    v90 = (*a3)(&v102, v88 - 2);
                    v88 = v89;
                  }

                  while ((v90 & 1) != 0);
                  a6 = v102;
                  *v89 = v102;
                }

                v52 = a1 + 1;
              }

              while (&a1[1] != a2);
            }

            return a6.n128_f64[0];
          }

          if (!a4)
          {
            if (v11 != a2)
            {
              v100 = a2;
              v60 = v13 >> 1;
              v61 = v13 >> 1;
              do
              {
                v62 = v61;
                if (v60 >= v61)
                {
                  v63 = (2 * v61) | 1;
                  v64 = &a1[v63];
                  if (2 * v61 + 2 < v12 && (*a3)(&a1[v63], &v64[1], a6))
                  {
                    ++v64;
                    v63 = 2 * v62 + 2;
                  }

                  v65 = &a1[v62];
                  if (((*a3)(v64, v65) & 1) == 0)
                  {
                    v102 = *v65;
                    do
                    {
                      v66 = v64;
                      *v65 = *v64;
                      if (v60 < v63)
                      {
                        break;
                      }

                      v67 = (2 * v63) | 1;
                      v64 = &a1[v67];
                      v68 = 2 * v63 + 2;
                      if (v68 < v12 && (*a3)(&a1[v67], v64 + 1))
                      {
                        ++v64;
                        v67 = v68;
                      }

                      v65 = v66;
                      v63 = v67;
                    }

                    while (!(*a3)(v64, &v102));
                    a6 = v102;
                    *v66 = v102;
                  }
                }

                v61 = v62 - 1;
              }

              while (v62);
              v69 = v100;
              do
              {
                v70 = v69;
                v71 = 0;
                v101 = *a1;
                v72 = a1;
                do
                {
                  v73 = &v72[v71];
                  v74 = v73 + 1;
                  v75 = (2 * v71) | 1;
                  v76 = 2 * v71 + 2;
                  if (v76 < v12)
                  {
                    v77 = v73 + 2;
                    if ((*a3)(v73 + 1, v73 + 2))
                    {
                      v74 = v77;
                      v75 = v76;
                    }
                  }

                  *v72 = *v74;
                  v72 = v74;
                  v71 = v75;
                }

                while (v75 <= ((v12 - 2) >> 1));
                v69 = v70 - 1;
                if (v74 == &v70[-1])
                {
                  a6.n128_u64[0] = v101.n128_u64[0];
                  *v74 = v101;
                }

                else
                {
                  *v74 = *v69;
                  a6.n128_u64[0] = v101.n128_u64[0];
                  *v69 = v101;
                  v78 = (v74 - a1 + 16) >> 4;
                  v79 = v78 < 2;
                  v80 = v78 - 2;
                  if (!v79)
                  {
                    v81 = v80 >> 1;
                    v82 = &a1[v80 >> 1];
                    if ((*a3)(v82, v74))
                    {
                      v102 = *v74;
                      do
                      {
                        v83 = v82;
                        *v74 = *v82;
                        if (!v81)
                        {
                          break;
                        }

                        v81 = (v81 - 1) >> 1;
                        v82 = &a1[v81];
                        v74 = v83;
                      }

                      while (((*a3)(v82, &v102) & 1) != 0);
                      a6.n128_u64[0] = v102.n128_u64[0];
                      *v83 = v102;
                    }
                  }
                }

                v79 = v12-- <= 2;
              }

              while (!v79);
            }

            return a6.n128_f64[0];
          }

          v14 = &v11[v12 >> 1];
          v15 = *a3;
          if (v12 >= 0x81)
          {
            v16 = (v15)(&v11[v12 >> 1], v11, a6);
            v17 = (*a3)(a2 - 1, &v11[v12 >> 1]);
            if (v16)
            {
              if (v17)
              {
                v102 = *v11;
                *v11 = *v10;
                goto LABEL_26;
              }

              v102 = *v11;
              *v11 = *v14;
              *v14 = v102;
              if ((*a3)(a2 - 1, &v11[v12 >> 1]))
              {
                v102 = *v14;
                *v14 = *v10;
LABEL_26:
                *v10 = v102;
              }
            }

            else if (v17)
            {
              v102 = *v14;
              *v14 = *v10;
              *v10 = v102;
              if ((*a3)(&v11[v12 >> 1], v11))
              {
                v102 = *v11;
                *v11 = *v14;
                *v14 = v102;
              }
            }

            v20 = v14 - 1;
            v21 = (*a3)(v14 - 1, a1 + 1);
            v22 = (*a3)(v98, v14 - 1);
            if (v21)
            {
              if (v22)
              {
                v23 = a1[1];
                v102 = v23;
                v24 = a2 - 2;
                a1[1] = *v98;
                goto LABEL_38;
              }

              v102 = a1[1];
              v26 = v102;
              a1[1] = *v20;
              *v20 = v26;
              if ((*a3)(v98, v14 - 1))
              {
                v102 = *v20;
                v24 = a2 - 2;
                *v20 = *v98;
                v23 = v102;
LABEL_38:
                *v24 = v23;
              }
            }

            else if (v22)
            {
              v102 = *v20;
              *v20 = *v98;
              *v98 = v102;
              if ((*a3)(v14 - 1, a1 + 1))
              {
                v102 = a1[1];
                v25 = v102;
                a1[1] = *v20;
                *v20 = v25;
              }
            }

            v27 = (*a3)(v14 + 1, a1 + 2);
            v28 = (*a3)(v97, v14 + 1);
            if (v27)
            {
              if (v28)
              {
                v29 = a1[2];
                v102 = v29;
                v30 = a2 - 3;
                a1[2] = *v97;
                goto LABEL_47;
              }

              v102 = a1[2];
              v32 = v102;
              a1[2] = v14[1];
              v14[1] = v32;
              if ((*a3)(v97, v14 + 1))
              {
                v102 = v14[1];
                v30 = a2 - 3;
                v14[1] = *v97;
                v29 = v102;
LABEL_47:
                *v30 = v29;
              }
            }

            else if (v28)
            {
              v102 = v14[1];
              v14[1] = *v97;
              *v97 = v102;
              if ((*a3)(v14 + 1, a1 + 2))
              {
                v102 = a1[2];
                v31 = v102;
                a1[2] = v14[1];
                v14[1] = v31;
              }
            }

            v33 = (*a3)(&a1[v12 >> 1], v14 - 1);
            v34 = (*a3)(v14 + 1, &a1[v12 >> 1]);
            if (v33)
            {
              if (v34)
              {
                v102 = *v20;
                *v20 = v14[1];
                goto LABEL_56;
              }

              v102 = *v20;
              *v20 = *v14;
              *v14 = v102;
              if ((*a3)(v14 + 1, &a1[v12 >> 1]))
              {
                v102 = *v14;
                *v14 = v14[1];
LABEL_56:
                v14[1] = v102;
              }
            }

            else if (v34)
            {
              v102 = *v14;
              *v14 = v14[1];
              v14[1] = v102;
              if ((*a3)(&a1[v12 >> 1], v14 - 1))
              {
                v102 = *v20;
                *v20 = *v14;
                *v14 = v102;
              }
            }

            v102 = *a1;
            *a1 = *v14;
            *v14 = v102;
            goto LABEL_58;
          }

          v18 = (v15)(v11, &v11[v12 >> 1], a6);
          v19 = (*a3)(a2 - 1, v11);
          if (v18)
          {
            if (v19)
            {
              v102 = *v14;
              *v14 = *v10;
LABEL_35:
              *v10 = v102;
              goto LABEL_58;
            }

            v102 = *v14;
            *v14 = *v11;
            *v11 = v102;
            if ((*a3)(a2 - 1, v11))
            {
              v102 = *v11;
              *v11 = *v10;
              goto LABEL_35;
            }
          }

          else if (v19)
          {
            v102 = *v11;
            *v11 = *v10;
            *v10 = v102;
            if ((*a3)(v11, &v11[v12 >> 1]))
            {
              v102 = *v14;
              *v14 = *v11;
              *v11 = v102;
            }
          }

LABEL_58:
          --a4;
          if (a5 & 1) != 0 || ((*a3)(a1 - 1, a1))
          {
            break;
          }

          v101 = *a1;
          if ((*a3)(&v101, a2 - 1))
          {
            v11 = a1;
            do
            {
              ++v11;
            }

            while (((*a3)(&v101, v11) & 1) == 0);
          }

          else
          {
            v42 = a1 + 1;
            do
            {
              v11 = v42;
              if (v42 >= a2)
              {
                break;
              }

              v43 = (*a3)(&v101, v42);
              v42 = v11 + 1;
            }

            while (!v43);
          }

          v44 = a2;
          if (v11 < a2)
          {
            v44 = a2;
            do
            {
              --v44;
            }

            while (((*a3)(&v101, v44) & 1) != 0);
          }

          while (v11 < v44)
          {
            v102 = *v11;
            *v11 = *v44;
            *v44 = v102;
            do
            {
              ++v11;
            }

            while (!(*a3)(&v101, v11));
            do
            {
              --v44;
            }

            while (((*a3)(&v101, v44) & 1) != 0);
          }

          v45 = v11 - 1;
          if (&v11[-1] != a1)
          {
            *a1 = *v45;
          }

          a5 = 0;
          a6 = v101;
          *v45 = v101;
        }

        v101 = *a1;
        v35 = a1;
        do
        {
          v36 = v35++;
        }

        while (((*a3)(v35, &v101) & 1) != 0);
        v37 = a2;
        if (v36 == a1)
        {
          v37 = a2;
          do
          {
            if (v35 >= v37)
            {
              break;
            }

            --v37;
          }

          while (((*a3)(v37, &v101) & 1) == 0);
        }

        else
        {
          do
          {
            --v37;
          }

          while (!(*a3)(v37, &v101));
        }

        if (v35 < v37)
        {
          v38 = v35;
          v39 = v37;
          do
          {
            v102 = *v38;
            v40 = v102;
            *v38 = *v39;
            *v39 = v40;
            do
            {
              v36 = v38++;
            }

            while (((*a3)(v38, &v101) & 1) != 0);
            do
            {
              --v39;
            }

            while (!(*a3)(v39, &v101));
          }

          while (v38 < v39);
        }

        if (v36 != a1)
        {
          *a1 = *v36;
        }

        a6 = v101;
        *v36 = v101;
        if (v35 >= v37)
        {
          break;
        }

LABEL_79:
        a6.n128_f64[0] = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLReplayResourceTrackingTracingResourceEntryV2 const&,GTMTLReplayResourceTrackingTracingResourceEntryV2 const&),GTMTLReplayResourceTrackingTracingResourceEntryV2*,false>(a1, v36, a3, a4, a5 & 1, a6);
        a5 = 0;
        v11 = v36 + 1;
      }

      v41 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLReplayResourceTrackingTracingResourceEntryV2 const&,GTMTLReplayResourceTrackingTracingResourceEntryV2 const&),GTMTLReplayResourceTrackingTracingResourceEntryV2*>(a1, v36, a3);
      v11 = v36 + 1;
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLReplayResourceTrackingTracingResourceEntryV2 const&,GTMTLReplayResourceTrackingTracingResourceEntryV2 const&),GTMTLReplayResourceTrackingTracingResourceEntryV2*>(v36 + 1, a2, a3))
      {
        break;
      }

      if (!v41)
      {
        goto LABEL_79;
      }
    }

    a2 = v36;
    if (!v41)
    {
      continue;
    }

    return a6.n128_f64[0];
  }
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLReplayResourceTrackingTracingResourceEntryV2 const&,GTMTLReplayResourceTrackingTracingResourceEntryV2 const&),GTMTLReplayResourceTrackingTracingResourceEntryV2*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v14;
      goto LABEL_10;
    }

    v17 = *a1;
    *a1 = *a2;
    *a2 = v17;
    if ((*a6)(a3, a2))
    {
      v14 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    if ((*a6)(a2, a1))
    {
      v16 = *a1;
      *a1 = *a2;
      *a2 = v16;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v18 = *a3;
    *a3 = *a4;
    *a4 = v18;
    if ((*a6)(a3, a2))
    {
      v19 = *a2;
      *a2 = *a3;
      *a3 = v19;
      if ((*a6)(a2, a1))
      {
        v20 = *a1;
        *a1 = *a2;
        *a2 = v20;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v22 = *a4;
    *a4 = *a5;
    *a5 = v22;
    if ((*a6)(a4, a3))
    {
      v23 = *a3;
      *a3 = *a4;
      *a4 = v23;
      if ((*a6)(a3, a2))
      {
        v24 = *a2;
        *a2 = *a3;
        *a3 = v24;
        if ((*a6)(a2, a1))
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLReplayResourceTrackingTracingResourceEntryV2 const&,GTMTLReplayResourceTrackingTracingResourceEntryV2 const&),GTMTLReplayResourceTrackingTracingResourceEntryV2*>(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v9 = a2 - 1;
      v10 = (*a3)(a1 + 1, a1);
      v11 = (*a3)(v9, a1 + 1);
      if (v10)
      {
        if (v11)
        {
          v12 = *a1;
          *a1 = *v9;
        }

        else
        {
          v26 = *a1;
          *a1 = a1[1];
          a1[1] = v26;
          if (!(*a3)(v9, a1 + 1))
          {
            return 1;
          }

          v12 = a1[1];
          a1[1] = *v9;
        }

        *v9 = v12;
        return 1;
      }

      if (!v11)
      {
        return 1;
      }

      v21 = a1[1];
      a1[1] = *v9;
      *v9 = v21;
LABEL_50:
      if ((*a3)(a1 + 1, a1))
      {
        v37 = *a1;
        *a1 = a1[1];
        a1[1] = v37;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLReplayResourceTrackingTracingResourceEntryV2 const&,GTMTLReplayResourceTrackingTracingResourceEntryV2 const&),GTMTLReplayResourceTrackingTracingResourceEntryV2*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v17 = a2 - 1;
    v18 = (*a3)(a1 + 1, a1);
    v19 = (*a3)(a1 + 2, a1 + 1);
    if ((v18 & 1) == 0)
    {
      if (v19)
      {
        v24 = a1[1];
        a1[1] = a1[2];
        a1[2] = v24;
        if ((*a3)(a1 + 1, a1))
        {
          v25 = *a1;
          *a1 = a1[1];
          a1[1] = v25;
        }
      }

      goto LABEL_47;
    }

    if (v19)
    {
      v20 = *a1;
      *a1 = a1[2];
    }

    else
    {
      v34 = *a1;
      *a1 = a1[1];
      a1[1] = v34;
      if (!(*a3)(a1 + 2, a1 + 1))
      {
        goto LABEL_47;
      }

      v20 = a1[1];
      a1[1] = a1[2];
    }

    a1[2] = v20;
LABEL_47:
    if (!(*a3)(v17, a1 + 2))
    {
      return 1;
    }

    v35 = a1[2];
    a1[2] = *v17;
    *v17 = v35;
    if (!(*a3)(a1 + 2, a1 + 1))
    {
      return 1;
    }

    v36 = a1[1];
    a1[1] = a1[2];
    a1[2] = v36;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = (*a3)(a1 + 1, a1);
  v15 = (*a3)(a1 + 2, a1 + 1);
  if (v14)
  {
    if (v15)
    {
      v16 = *a1;
      *a1 = *v13;
    }

    else
    {
      v27 = *a1;
      *a1 = a1[1];
      a1[1] = v27;
      if (!(*a3)(a1 + 2, a1 + 1))
      {
        goto LABEL_33;
      }

      v16 = a1[1];
      a1[1] = *v13;
    }

    *v13 = v16;
  }

  else if (v15)
  {
    v22 = a1[1];
    a1[1] = *v13;
    *v13 = v22;
    if ((*a3)(a1 + 1, a1))
    {
      v23 = *a1;
      *a1 = a1[1];
      a1[1] = v23;
    }
  }

LABEL_33:
  v28 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v29 = 0;
  v30 = 0;
  while (1)
  {
    if ((*a3)(v28, v13))
    {
      v39[0] = *v28;
      v31 = v29;
      while (1)
      {
        v32 = (a1 + v31);
        *(a1 + v31 + 48) = *(a1 + v31 + 32);
        if (v31 == -32)
        {
          break;
        }

        v31 -= 16;
        if (((*a3)(v39, v32 + 1) & 1) == 0)
        {
          v33 = (a1 + v31 + 48);
          goto LABEL_41;
        }
      }

      v33 = a1;
LABEL_41:
      *v33 = v39[0];
      if (++v30 == 8)
      {
        return &v28[1] == a2;
      }
    }

    v13 = v28;
    v29 += 16;
    if (++v28 == a2)
    {
      return 1;
    }
  }
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,PopulateResourceTrackingBufferV2(objc_object  {objcproto9MTLBuffer}*,GTMTLIndirectResources const&,apr_pool_t *)::$_0 &,GTMTLReplayResourceTrackingTracingBufferEntryV2 *,0>(__n128 *a1, __n128 *a2, unint64_t *a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[2] = v10;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[2];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[2] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (*a3 < a2->n128_u64[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    v17 = a3[2];
    result = *a3;
    v18 = *(a4 + 16);
    *a3 = *a4;
    a3[2] = v18;
    *a4 = result;
    *(a4 + 16) = v17;
    if (*a3 < a2->n128_u64[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[2] = v19;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (*a5 < *a4)
  {
    v23 = *(a4 + 16);
    result = *a4;
    v24 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v24;
    *a5 = result;
    *(a5 + 16) = v23;
    if (*a4 < *a3)
    {
      v25 = a3[2];
      result = *a3;
      v26 = *(a4 + 16);
      *a3 = *a4;
      a3[2] = v26;
      *a4 = result;
      *(a4 + 16) = v25;
      if (*a3 < a2->n128_u64[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[2];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[2] = v27;
        if (a2->n128_u64[0] < a1->n128_u64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,PopulateResourceTrackingBufferV2(objc_object  {objcproto9MTLBuffer}*,GTMTLIndirectResources const&,apr_pool_t *)::$_0 &,GTMTLReplayResourceTrackingTracingBufferEntryV2 *>(uint64_t a1, _OWORD *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v9 = *(a2 - 3);
      v4 = a2 - 24;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (*v4 < *(a1 + 24))
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = *(v4 + 2);
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            *(v4 + 2) = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = *(v4 + 2);
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        *(v4 + 2) = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = *(v4 + 2);
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      *(v4 + 2) = v27;
LABEL_48:
      if (*(a1 + 24) < *a1)
      {
        v61 = *(a1 + 16);
        v62 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v62;
        v6[1].n128_u64[0] = v61;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,PopulateResourceTrackingBufferV2(objc_object  {objcproto9MTLBuffer}*,GTMTLIndirectResources const&,apr_pool_t *)::$_0 &,GTMTLReplayResourceTrackingTracingBufferEntryV2 *,0>(a1, (a1 + 24), (a1 + 48), a1 + 72, a2 - 24, a3);
      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_u64[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v22 >= v20)
    {
      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v55;
      *(a1 + 40) = v54;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_45:
    if (v23->n128_u64[0] >= v21->n128_u64[0])
    {
      return 1;
    }

    v56 = *(a1 + 64);
    v57 = *v21;
    v58 = *(a2 - 1);
    *v21 = *v23;
    *(a1 + 64) = v58;
    *v23 = v57;
    *(a2 - 1) = v56;
    if (v21->n128_u64[0] >= v6->n128_u64[0])
    {
      return 1;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 3);
    v4 = a2 - 24;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_u64[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (v14 < *(a1 + 24))
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 < v13->n128_u64[0])
    {
      v64 = *(v47 + 8);
      v51 = v48;
      while (1)
      {
        v52 = a1 + v51;
        *(v52 + 72) = *(a1 + v51 + 48);
        *(v52 + 88) = *(a1 + v51 + 64);
        if (v51 == -48)
        {
          break;
        }

        v51 -= 24;
        if (v50 >= *(v52 + 24))
        {
          v53 = a1 + v51 + 72;
          goto LABEL_39;
        }
      }

      v53 = a1;
LABEL_39:
      *v53 = v50;
      *(v53 + 8) = v64;
      if (++v49 == 8)
      {
        return (v47 + 24) == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 = (v47 + 24);
    if (v47 == a2)
    {
      return 1;
    }
  }
}

void MakeRootResourceAliasable(void *a1)
{
  v6 = a1;
  v1 = [v6 heap];
  v2 = v1;
  if (v1 && ![v1 type])
  {
    if (![v6 conformsToProtocol:&unk_2860F5FC0])
    {
      goto LABEL_7;
    }

    v3 = v6;
    v4 = [v3 parentTexture];
    if (v4)
    {

      goto LABEL_8;
    }

    v5 = [v3 buffer];

    if (!v5)
    {
LABEL_7:
      [v6 makeAliasable];
    }
  }

LABEL_8:
}

id GTPostVertexDataError(unsigned int a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CBEB38];
  v10 = a2;
  v11 = [v9 alloc];
  v12 = [v11 initWithObjectsAndKeys:{v10, *MEMORY[0x277CCA450], 0}];

  if (v7)
  {
    [v12 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA498]];
  }

  if (v8)
  {
    [v12 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GTPostVertexDumpErrorDomain" code:a1 userInfo:v12];

  return v13;
}

id GTMTLReplayController_generatePostMeshData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  v300[1] = *MEMORY[0x277D85DE8];
  v272 = a2;
  v271 = a11;
  v15 = *(a10 + 96);
  [v15 device];
  v290 = 0;
  v16 = v289 = 0;
  v17 = a8[9];
  if (v17)
  {
    memcpy(__dst, v17, sizeof(__dst));
    v18 = 0;
    v19 = BYTE6(__dst[63]);
    do
    {
      v20 = &__dst[v18];
      *v20 = 0;
      *(v20 + 3) = 0;
      v18 += 2;
    }

    while (v18 != 16);
    LOWORD(__dst[50]) = 0;
    v265 = v19 != 0;
    LOWORD(__dst[51]) = 0;
    HIBYTE(__dst[63]) = 0;
    LOWORD(__dst[0]) = 70;
    memset(&__dst[16], 0, 64);
    __dst[43] = 0;
    __dst[47] = 0;
    v21 = [*(a1 + 8) renderPipelineDescriptorMap];
    v22 = MakeMTLMeshRenderPipelineDescriptorWithoutResourceIndex(__dst, v21);

    v23 = [v22 objectFunction];
    LODWORD(v21) = v23 != 0;

    [v22 setRasterizationEnabled:0];
    [v22 setLabel:@"GPUToolsInternalPostTransformPipelineStateLabel"];
    v257 = v21;
    if (objc_opt_respondsToSelector())
    {
      v297 = 0;
      v24 = [v16 newRenderPipelineStateWithMeshDescriptor:v22 options:1 reflection:&v290 error:&v297];
      v25 = v297;
      if (v24)
      {
        v260 = a1;
        v299 = @"enable-post-mesh-dump-instrumentation";
        v26 = [MEMORY[0x277CBEB68] null];
        v300[0] = v26;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v300 forKeys:&v299 count:1];
        [v22 setGpuCompilerSPIOptions:v27];

        v291 = v25;
        v28 = [v16 newRenderPipelineStateWithMeshDescriptor:v22 options:0x200000001 reflection:&v289 error:&v291];
        v29 = v291;

        goto LABEL_17;
      }

      *a12 = GTPostVertexDataError(2u, @"Post-transform geometry data fetch pipeline reflection error", 0, v25);
    }

    else
    {
      *a12 = GTPostVertexDataError(3u, @"Post-transform geometry data fetch for mesh stage is not supported", @"Update target OS to the latest version", 0);
    }

LABEL_29:
    v28 = 0;
    goto LABEL_30;
  }

  v30 = a8[11];
  if (!v30)
  {
    GTPostVertexDataError(1u, @"Internal error: Pipeline descriptor error", 0, 0);
    v265 = 0;
    v257 = 0;
    *a12 = v28 = 0;
    goto LABEL_30;
  }

  if (v30[1016] != 4)
  {
    v265 = 0;
    v257 = 0;
    goto LABEL_29;
  }

  memcpy(__dst, v30, 0x158uLL);
  v31 = 0;
  v32 = BYTE5(__dst[41]);
  do
  {
    v33 = &__dst[v31];
    *v33 = 0;
    *(v33 + 3) = 0;
    v31 += 2;
  }

  while (v31 != 16);
  v265 = v32 != 0;
  LOWORD(__dst[0]) = 70;
  __dst[39] = 0;
  v34 = [*(a1 + 8) libraries];
  v22 = MakeMTL4MeshRenderPipelineDescriptor(__dst, v34);

  v35 = [v22 objectFunctionDescriptor];
  v36 = v35 != 0;

  [v22 setFragmentFunctionDescriptor:0];
  [v22 setRasterizationEnabled:0];
  [v22 setLabel:@"GPUToolsInternalPostTransformPipelineStateLabel"];
  v37 = [v22 options];

  if (!v37)
  {
    v38 = objc_opt_new();
    [v22 setOptions:v38];
  }

  v39 = [v22 options];
  [v39 setShaderReflection:1];

  v40 = a8[12];
  if (v40)
  {
    v41 = [*(a1 + 8) dynamicLibraries];
    v40 = MakeMTL4RenderPipelineDynamicLinkingDescriptor(v40, v41);
  }

  v257 = v36;
  v42 = [*(a1 + 8) defaultCompiler];
  v297 = 0;
  v269 = v40;
  v43 = [v42 newRenderPipelineStateWithDescriptor:v22 dynamicLinkingDescriptor:v40 compilerTaskOptions:0 error:&v297];
  v44 = a1;
  v45 = v43;
  v46 = v297;

  if (v45)
  {
    v290 = [v45 reflection];
    v47 = [v22 options];
    [v47 setEnablePostMeshDump:1];

    v48 = [v22 options];
    [v48 setShaderReflection:1];

    v260 = v44;
    [*(v44 + 8) defaultCompiler];
    v49 = v245 = a7;
    v300[0] = v46;
    v28 = [v49 newRenderPipelineStateWithDescriptor:v22 dynamicLinkingDescriptor:v269 compilerTaskOptions:0 error:v300];
    v29 = v300[0];

    a7 = v245;
    v289 = [v28 reflection];

LABEL_17:
    if (v28)
    {

      a1 = v260;
      goto LABEL_30;
    }

    v50 = [v29 domain];
    a1 = v260;
    if ([v50 hasPrefix:@"AGXMetal"])
    {
      v51 = [v29 localizedDescription];
      v52 = [v51 containsString:@"Payload size >"];

      if (v52)
      {
        v53 = @"Maximum tools-supported payload size exceeded";
        v54 = @"Reduce your object data payload to 16368 bytes or less";
        v55 = 3;
        v56 = 0;
LABEL_28:
        *a12 = GTPostVertexDataError(v55, v53, v54, v56);

        goto LABEL_29;
      }
    }

    else
    {
    }

    v53 = @"Post-transform geometry data fetch pipeline error";
    v55 = 2;
    v54 = 0;
    v56 = v29;
    goto LABEL_28;
  }

  *a12 = GTPostVertexDataError(2u, @"Post-transform geometry data fetch pipeline reflection error", 0, v46);

  v28 = 0;
  a1 = v44;
LABEL_30:

  v57 = v290;
  v58 = v289;
  v59 = v58;
  if (!v28)
  {
    v69 = 0;
    v70 = v271;
    v71 = v272;
    goto LABEL_131;
  }

  v268 = v16;
  v270 = v58;
  v261 = a1;
  v262 = v28;
  v264 = v15;
  v298 = 0;
  v297 = 0;
  v60 = [MEMORY[0x277CBEB38] dictionary];
  v61 = [MEMORY[0x277CBEB38] dictionary];
  v263 = v57;
  [v57 meshBuiltInArguments];
  v285 = 0u;
  v286 = 0u;
  v287 = 0u;
  v62 = v288 = 0u;
  v63 = [v62 countByEnumeratingWithState:&v285 objects:v296 count:16];
  v64 = a7;
  v242 = a8;
  if (v63)
  {
    v65 = v63;
    v66 = *v286;
    while (2)
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v286 != v66)
        {
          objc_enumerationMutation(v62);
        }

        v68 = *(*(&v285 + 1) + 8 * i);
        if ([v68 builtInType] == 24)
        {
          v267 = [v68 meshVertexCount];
          v72 = [v68 meshPrimitiveCount];
          v73 = [v68 meshTopologyType] - 1;
          v246 = v64;
          v247 = v72;
          if (v73 > 2)
          {
            v222 = 0;
          }

          else
          {
            v222 = dword_24DA910D0[v73];
          }

          v74 = [v68 meshVertexStruct];
          v253 = [v68 meshPrimitiveStruct];
          v281 = 0u;
          v282 = 0u;
          v283 = 0u;
          v284 = 0u;
          v243 = v74;
          v75 = [v74 members];
          v76 = [v75 countByEnumeratingWithState:&v281 objects:v295 count:16];
          if (v76)
          {
            v77 = v76;
            v78 = *v282;
            do
            {
              for (j = 0; j != v77; ++j)
              {
                if (*v282 != v78)
                {
                  objc_enumerationMutation(v75);
                }

                v80 = *(*(&v281 + 1) + 8 * j);
                v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v80, "dataType")}];
                v82 = [v80 name];
                [v60 setObject:v81 forKeyedSubscript:v82];
              }

              v77 = [v75 countByEnumeratingWithState:&v281 objects:v295 count:16];
            }

            while (v77);
          }

          v279 = 0u;
          v280 = 0u;
          v277 = 0u;
          v278 = 0u;
          v83 = [v253 members];
          v84 = [v83 countByEnumeratingWithState:&v277 objects:v294 count:16];
          if (v84)
          {
            v85 = v84;
            v86 = *v278;
            do
            {
              for (k = 0; k != v85; ++k)
              {
                if (*v278 != v86)
                {
                  objc_enumerationMutation(v83);
                }

                v88 = *(*(&v277 + 1) + 8 * k);
                v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v88, "dataType")}];
                v90 = [v88 name];
                [v61 setObject:v89 forKeyedSubscript:v90];
              }

              v85 = [v83 countByEnumeratingWithState:&v277 objects:v294 count:16];
            }

            while (v85);
          }

          v254 = 1;
          goto LABEL_61;
        }
      }

      v65 = [v62 countByEnumeratingWithState:&v285 objects:v296 count:16];
      if (v65)
      {
        continue;
      }

      break;
    }
  }

  if (!v265)
  {
    v246 = v64;
    v222 = 0;
    v267 = 0;
    v247 = 0;
    v254 = 0;
LABEL_61:
    [v270 meshBindings];
    v273 = 0u;
    v274 = 0u;
    v275 = 0u;
    v91 = v276 = 0u;
    v92 = [v91 countByEnumeratingWithState:&v273 objects:v293 count:16];
    if (v92)
    {
      v93 = v92;
      v94 = *v274;
LABEL_63:
      v95 = 0;
      while (1)
      {
        if (*v274 != v94)
        {
          objc_enumerationMutation(v91);
        }

        v96 = *(*(&v273 + 1) + 8 * v95);
        v97 = [v96 name];
        if ([v97 isEqualToString:@"__post_mesh_dump_impl_trace_buffer"])
        {
          v98 = [v96 type];

          if (!v98)
          {
            v201 = [v96 index];
            v99 = [v96 bufferStructType];
            v100 = [v99 memberByName:@"size"];
            v200 = [v100 offset];
            v101 = [v99 memberByName:@"os_tg_bounds"];
            v198 = [v101 offset];
            v102 = [v101 arrayType];
            v199 = [v102 stride];
            v103 = [v99 memberByName:@"num_dumped_mesh_threadgroups"];
            v219 = [v103 offset];
            v104 = [v99 memberByName:@"max_ms_tg_ids"];
            v215 = [v104 offset];

            v258 = v99;
            v105 = [v99 memberByName:@"mesh_data"];
            v223 = [v105 offset];
            v240 = v105;
            v106 = [v105 arrayType];
            v244 = [v106 stride];
            v238 = v106;
            v107 = [v106 elementStructType];
            v235 = [v107 memberByName:@"primitive_count"];
            v108 = [v235 offset];
            v231 = [v107 memberByName:@"amplification_id"];
            v109 = [v231 offset];
            v229 = [v107 memberByName:@"object_threadgroup_position_in_grid"];
            v216 = [v229 offset];
            v228 = [v107 memberByName:@"threadgroup_position_in_grid"];
            v214 = [v228 offset];
            v227 = [v107 memberByName:@"indices"];
            v110 = [v227 offset];
            v226 = [v107 memberByName:@"indices_present"];
            v111 = [v226 offset];
            v112 = [v107 memberByName:@"indices_thread_id"];
            v211 = [v112 offset];
            v212 = v111;
            v213 = v110;
            if (v247)
            {
              v113 = [v112 arrayType];
              v210 = [v113 stride];
            }

            else
            {
              v210 = 0;
            }

            v224 = [v107 memberByName:@"vertices_present"];
            v209 = [v224 offset];
            v114 = [v107 memberByName:@"vertices_thread_id"];
            v208 = [v114 offset];
            v218 = v108;
            if (v267)
            {
              v115 = [v114 arrayType];
              v207 = [v115 stride];
            }

            else
            {
              v207 = 0;
            }

            v116 = [v107 memberByName:@"vertices"];
            v206 = [v116 offset];
            v217 = v109;
            if (v267)
            {
              v117 = [v116 arrayType];
              v221 = [v117 stride];
              v255 = [v117 elementStructType];
            }

            else
            {
              v221 = 0;
              v255 = 0;
            }

            v225 = v112;
            v118 = [v107 memberByName:@"primitives_present"];
            v205 = [v118 offset];
            v119 = [v107 memberByName:@"primitives_thread_id"];
            v204 = [v119 offset];
            if (v247)
            {
              v120 = [v119 arrayType];
              v203 = [v120 stride];
            }

            else
            {
              v203 = 0;
            }

            v121 = [v107 memberByName:@"primitives"];
            v202 = [v121 offset];
            if (v247)
            {
              v122 = [v121 arrayType];
              v220 = [v122 stride];
              v266 = [v122 elementStructType];
            }

            else
            {
              v220 = 0;
              v266 = 0;
            }

            v123 = 0;
            v124 = 1;
            v125 = v271;
            v71 = v272;
            v126 = a12;
            v57 = v263;
            v127 = v255;
            if (!v255)
            {
              goto LABEL_92;
            }

            goto LABEL_93;
          }
        }

        else
        {
        }

        if (v93 == ++v95)
        {
          v93 = [v91 countByEnumeratingWithState:&v273 objects:v293 count:16];
          if (v93)
          {
            goto LABEL_63;
          }

          break;
        }
      }
    }

    if ((v265 | v254) == 1)
    {
      GTPostVertexDataError(1u, @"Internal error: Post-transform geometry data buffer binding is missing", 0, 0);
      v69 = 0;
      *a12 = v70 = v271;
      v71 = v272;
      v57 = v263;
LABEL_129:

      v28 = v262;
      v59 = v270;
      goto LABEL_130;
    }

    v205 = 0;
    v206 = 0;
    v220 = 0;
    v221 = 0;
    v202 = 0;
    v203 = 0;
    v244 = 0;
    v217 = 0;
    v218 = 0;
    v216 = 0;
    v213 = 0;
    v214 = 0;
    v208 = 0;
    v209 = 0;
    v211 = 0;
    v212 = 0;
    v207 = 0;
    v204 = 0;
    v210 = 0;
    v200 = 0;
    v201 = 0;
    v127 = 0;
    v266 = 0;
    v124 = 0;
    v198 = 4;
    v199 = 0;
    v219 = 36;
    v215 = 40;
    v223 = 44;
    v125 = v271;
    v71 = v272;
    v126 = a12;
    v57 = v263;
    v123 = v257;
LABEL_92:
    if (v267)
    {
      goto LABEL_95;
    }

LABEL_93:
    if (!v266 && v247)
    {
LABEL_95:
      *v126 = GTPostVertexDataError(1u, @"Internal error: Post-transform geometry data buffer binding is missing", 0, 0);

      v69 = 0;
LABEL_128:
      v70 = v125;
      goto LABEL_129;
    }

    v259 = v123;
    v128 = [v264 contents];
    v239 = [v264 length];
    v241 = v128;
    bzero(v128, v239);
    v256 = v127;
    if (v124)
    {
      v129 = *(a4 + 24) + (*GroupBuilder_getCommandBuffer(*(*(a3 + 120) + 12), *(*(a3 + 120) + 24), a5) << 6);
      GTMTLReplayController_defaultDispatchFunction(v261, v129);
      v130 = *(GTTraceFunc_argumentBytesWithMap(v129, *(v129 + 13), *(a3 + 16)) + 1);
      if (!GTFenum_isMTL4CommandBufferRelated(*(v129 + 8)))
      {
        v146 = [v71 commandBufferForKey:v130];
        if (v146)
        {
          v174 = objc_alloc_init(MEMORY[0x277CD6F48]);
          [v174 setRenderTargetWidth:*(v261 + 22544)];
          [v174 setRenderTargetHeight:*(v261 + 22552)];
          v175 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:70 width:*(v261 + 22544) height:*(v261 + 22552) mipmapped:0];
          [v175 setUsage:4];
          [v175 setStorageMode:2];
          if ([v268 supportsMemorylessRenderTargets])
          {
            [v175 setStorageMode:3];
          }

          v176 = [v268 newTextureWithDescriptor:v175];
          v177 = [v174 colorAttachments];
          v178 = [v177 objectAtIndexedSubscript:0];
          [v178 setTexture:v176];

          v179 = [v174 colorAttachments];
          v180 = [v179 objectAtIndexedSubscript:0];
          [v180 setLoadAction:0];

          v181 = [v174 colorAttachments];
          v182 = [v181 objectAtIndexedSubscript:0];
          [v182 setStoreAction:0];

          if ((GT_SUPPORT_0 & 0x40) != 0)
          {
            [v174 setDefaultRasterSampleCount:1];
          }

          CommandEncoder = GroupBuilder_getCommandEncoder(*(*(a3 + 120) + 12), *(*(a3 + 120) + 24), a5);
          v184 = [v146 renderCommandEncoderWithDescriptor:v174];
          v185 = *(a4 + 24) + (*CommandEncoder << 6);
          v71 = v272;
          [v272 setRenderCommandEncoder:v184 forKey:{*(GTTraceFunc_argumentBytesWithMap(v185, *(v185 + 13), *(a3 + 16)) + 1)}];
          v237 = v146;
          if (!RestoreCommandEncoder())
          {
            *a12 = GTPostVertexDataError(1u, @"Internal error: Encoder restore failed", 0, 0);

            v146 = 0;
            v69 = 0;
LABEL_127:

            v57 = v263;
            goto LABEL_128;
          }

          [v184 setRenderPipelineState:v262];
          v186 = [v125 length];
          v187 = [v125 bytes];
          *&v241[v200] = v239;
          v188 = &v241[v198];
          v189 = &v241[v198 + v199];
          bzero(&v241[v198], 2 * v199);
          if (v186)
          {
            v190 = *v187;
            *(v188 + 2) = *(v187 + 8);
            *v188 = v190;
            v191 = *(v187 + 12);
            *(v189 + 8) = *(v187 + 20);
            *v189 = v191;
          }

          else
          {
            *(v188 + 2) = 0;
            *v188 = 0;
            *v189 = -1;
            *(v189 + 8) = -1;
          }

          v234 = v174;
          *&v241[v219] = 0;
          [v184 setMeshBuffer:v264 offset:0 atIndex:v201];
          if (*(a6 + 8) >> 2 == 1073737833)
          {
            v194 = *(a9 + 360);
            v195 = v272;
            v196 = [v272 executeIndirectCommandBufferMap];
            DYMTLDrawRenderCommandEncoder(v184, a9 + 40, v194, a9 + 256, v196);

            apr_pool_clear(*(a9 + 368));
            v126 = a12;
            v197 = v261;
          }

          else
          {
            v197 = v261;
            GTMTLReplayController_defaultDispatchFunction(v261, a6);
            v126 = a12;
            v195 = v272;
          }

          GTMTLReplayController_restoreIndirectResourceUsageForCommandBuffer(v197, a5);
          [v195 commitCommandBuffers];
          [v146 waitUntilCompleted];

          v146 = 0;
          v71 = v195;
LABEL_108:
          v157 = *&v241[v219];
          v158 = v223 + v244 * v157;
          v159 = [v268 maxBufferLength];
          if (v159 >= v158)
          {
            v160 = v223 + v244 * v157;
          }

          else
          {
            v160 = v159;
          }

          if (v160 >= 0x20000000)
          {
            v161 = 0x20000000;
          }

          else
          {
            v161 = v160;
          }

          if (v161 > v239 && v161 < MEMORY[0x253033EF0]() - 0x10000000 && (v162 = [v268 newBufferWithLength:v161 options:0]) != 0)
          {
            v163 = *(a10 + 96);
            *(a10 + 96) = v162;

            memcpy(__dst, a9, 0x178uLL);
            v125 = v271;
            v69 = GTMTLReplayController_generatePostMeshData(v261, v71, a3, a4, a5, a6, v246, v242, __dst, a10, v271, v126);
          }

          else
          {
            v233 = v146;
            v164 = SaveObjectStruct(v221, v256, v60, 0, 0);
            v165 = SaveObjectStruct(v220, v266, v61, 0, 0);
            v166 = (v164 + v165 + 380) & 0xFFFFFFFFFFFFFF00;
            v252 = v239 < v158;
            if (v239 < v158)
            {
              v157 = (v239 - v223) / v244;
            }

            v167 = &v241[v215];
            if (v259)
            {
              v168 = [v262 maxTotalThreadgroupsPerMeshGrid];
              v169 = 0xFFFFFFFFLL;
              if (v168 < 0xFFFFFFFF)
              {
                v169 = v168;
              }

              if (v169 <= 1)
              {
                LODWORD(v169) = 1;
              }

              v170 = v169 - 1;
              *v167 = v170;
              *(v167 + 1) = v170;
              *(v167 + 2) = v170;
            }

            v297 = *v167;
            v298 = *(v167 + 2);
            v69 = [v268 newBufferWithLength:((v157 * v244 + 255) & 0xFFFFFFFFFFFFFF00) + v166 options:0];
            v171 = [v69 contents];
            *v171 = 2;
            *(v171 + 4) = v166;
            *(v171 + 8) = 125;
            *(v171 + 12) = v164;
            *(v171 + 16) = v165;
            *(v171 + 20) = v222;
            *(v171 + 24) = v267;
            *(v171 + 28) = v206;
            *(v171 + 32) = v221;
            *(v171 + 36) = v247;
            *(v171 + 40) = v202;
            *(v171 + 44) = v220;
            *(v171 + 48) = v157;
            *(v171 + 52) = v244;
            *(v171 + 56) = v218;
            *(v171 + 60) = v217;
            *(v171 + 64) = v216;
            *(v171 + 68) = v214;
            *(v171 + 72) = v213;
            v172 = v298;
            *(v171 + 76) = v297;
            *(v171 + 84) = v172;
            *(v171 + 88) = v209;
            *(v171 + 92) = v205;
            *(v171 + 96) = v212;
            *(v171 + 100) = v208;
            *(v171 + 104) = v207;
            *(v171 + 108) = v204;
            *(v171 + 112) = v203;
            *(v171 + 116) = v211;
            *(v171 + 120) = v210;
            *(v171 + 124) = v252;
            SaveObjectStruct(v221, v256, v60, (v171 + 125), v164);
            SaveObjectStruct(v220, v266, v61, (v171 + 125 + v164), v165);
            memcpy((v171 + v166), &v241[v223], v157 * v244);
            v125 = v271;
            v71 = v272;
            v146 = v233;
          }

          goto LABEL_127;
        }

LABEL_107:
        v237 = 0;
        goto LABEL_108;
      }

      v131 = [v71 mtl4CommandBufferForKey:v130];
      if (v131)
      {
        v132 = v131;
        v133 = objc_opt_new();
        v134 = [v71 defaultDevice];
        v236 = v133;
        v135 = [v134 newResidencySetWithDescriptor:v133 error:0];

        [v135 addAllocation:v264];
        [v135 commit];
        v230 = v135;
        v232 = v132;
        [v132 useResidencySet:v135];
        v136 = objc_alloc_init(MEMORY[0x277CD6BA8]);
        [v136 setRenderTargetWidth:*(v261 + 22544)];
        [v136 setRenderTargetHeight:*(v261 + 22552)];
        v137 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:70 width:*(v261 + 22544) height:*(v261 + 22552) mipmapped:0];
        [v137 setUsage:4];
        [v137 setStorageMode:2];
        if ([v268 supportsMemorylessRenderTargets])
        {
          [v137 setStorageMode:3];
        }

        v138 = [v268 newTextureWithDescriptor:v137];
        v139 = [v136 colorAttachments];
        v140 = [v139 objectAtIndexedSubscript:0];
        [v140 setTexture:v138];

        v141 = [v136 colorAttachments];
        v142 = [v141 objectAtIndexedSubscript:0];
        [v142 setLoadAction:0];

        v143 = [v136 colorAttachments];
        v144 = [v143 objectAtIndexedSubscript:0];
        [v144 setStoreAction:0];

        if ((GT_SUPPORT_0 & 0x40) != 0)
        {
          [v136 setDefaultRasterSampleCount:1];
        }

        v145 = GroupBuilder_getCommandEncoder(*(*(a3 + 120) + 12), *(*(a3 + 120) + 24), a5);
        v146 = v132;
        v147 = [v132 renderCommandEncoderWithDescriptor:v136];
        v148 = *(a4 + 24) + (*v145 << 6);
        [v272 setMTL4RenderCommandEncoder:v147 forKey:{*(GTTraceFunc_argumentBytesWithMap(v148, *(v148 + 13), *(a3 + 16)) + 1)}];
        v149 = [v272 mtl4ArgumentTableForKey:*(v246 + 96)];
        [v149 setAddress:objc_msgSend(v264 atIndex:{"gpuAddress"), v201}];

        v150 = RestoreCommandEncoder();
        v125 = v271;
        if (v150)
        {
          [v147 setRenderPipelineState:v262];
          v151 = [v271 length];
          v152 = [v271 bytes];
          *&v241[v200] = v239;
          v153 = &v241[v198];
          v154 = &v241[v198 + v199];
          bzero(&v241[v198], 2 * v199);
          if (v151)
          {
            v155 = *v152;
            *(v153 + 2) = *(v152 + 8);
            *v153 = v155;
            v156 = *(v152 + 12);
            *(v154 + 8) = *(v152 + 20);
            *v154 = v156;
          }

          else
          {
            *(v153 + 2) = 0;
            *v153 = 0;
            *v154 = -1;
            *(v154 + 8) = -1;
          }

          *&v241[v219] = 0;
          GTMTLReplayController_defaultDispatchFunction(v261, a6);
          GTMTLReplayController_restoreIndirectResourceUsageForCommandBuffer(v261, a5);
          [v272 commitCommandBuffers:v261 + 40];
          v192 = *(v261 + 40);
          v193 = atomic_load((v261 + 48));
          [v192 waitUntilSignaledValue:v193 - 1 timeoutMS:-1];

          v125 = v271;
          v146 = v232;
        }

        else
        {
          *a12 = GTPostVertexDataError(1u, @"Internal error: Encoder restore failed", 0, 0);
        }

        v237 = 0;
        v69 = 0;
        v126 = a12;
        v71 = v272;
        if (!v150)
        {
          goto LABEL_127;
        }

        goto LABEL_108;
      }
    }

    v146 = 0;
    goto LABEL_107;
  }

  GTPostVertexDataError(1u, @"Internal error: Missing mesh reflection", 0, 0);
  v69 = 0;
  *a12 = v59 = v270;
  v57 = v263;
  v70 = v271;
  v71 = v272;
LABEL_130:

  v15 = v264;
  v16 = v268;
LABEL_131:

  return v69;
}

id GTMTLReplayController_generatePostVertexData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v16 = a2;
  v17 = 63 - __clz(~(*(a8 + 152) | *(a8 + 144)) & 0x7FFFFFFF);
  v18 = *(a10 + 96);
  v19 = [v18 device];
  if ([v19 maxVertexBuffers] <= v17)
  {
    GTPostVertexDataError(1u, @"Internal error: Post-transform geometry data buffer binding error", 0, 0);
    *a11 = v50 = 0;
    goto LABEL_43;
  }

  v98 = a5;
  v94 = a6;
  v96 = a7;
  v102 = 0;
  v103[0] = 0;
  v20 = GTMTLReplayController_createPostVertexPipeline(a1, a8, v19, v17, v103, &v102);
  v21 = v103[0];
  v22 = v102;
  v23 = v22;
  if (v20)
  {
    v95 = v20;
    v97 = v19;
    v93 = v22;
    v24 = [v21 postVertexDumpStride];
    v25 = [v18 contents];
    *v25 = 0;
    v92 = v24;
    v25[1] = ([v18 length] - 8) / v24;
    v26 = *(a4 + 24) + (*GroupBuilder_getCommandBuffer(*(*(a3 + 120) + 12), *(*(a3 + 120) + 24), v98) << 6);
    GTMTLReplayController_defaultDispatchFunction(a1, v26);
    v27 = *(GTTraceFunc_argumentBytesWithMap(v26, *(v26 + 13), *(a3 + 16)) + 1);
    if (GTFenum_isMTL4CommandBufferRelated(*(v26 + 8)))
    {
      v28 = [v16 mtl4CommandBufferForKey:v27];
      if (v28)
      {
        v86 = v25;
        v88 = v21;
        v29 = v28;
        v30 = objc_opt_new();
        v90 = v16;
        v31 = [v16 defaultDevice];
        v32 = [v31 newResidencySetWithDescriptor:v30 error:0];

        [v32 addAllocation:v18];
        [v32 commit];
        v84 = v29;
        v83 = v32;
        [v29 useResidencySet:v32];
        v33 = objc_alloc_init(MEMORY[0x277CD6BA8]);
        [v33 setRenderTargetWidth:*(a1 + 22544)];
        [v33 setRenderTargetHeight:*(a1 + 22552)];
        v34 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:70 width:*(a1 + 22544) height:*(a1 + 22552) mipmapped:0];
        [v34 setUsage:4];
        [v34 setStorageMode:2];
        if ([v97 supportsMemorylessRenderTargets])
        {
          [v34 setStorageMode:3];
        }

        v35 = [v97 newTextureWithDescriptor:v34];
        v36 = [v33 colorAttachments];
        v37 = [v36 objectAtIndexedSubscript:0];
        [v37 setTexture:v35];

        v38 = [v33 colorAttachments];
        v39 = [v38 objectAtIndexedSubscript:0];
        [v39 setLoadAction:0];

        v40 = [v33 colorAttachments];
        v41 = [v40 objectAtIndexedSubscript:0];
        [v41 setStoreAction:0];

        if ((GT_SUPPORT_0 & 0x40) != 0)
        {
          [v33 setDefaultRasterSampleCount:1];
        }

        CommandEncoder = GroupBuilder_getCommandEncoder(*(*(a3 + 120) + 12), *(*(a3 + 120) + 24), v98);
        v43 = [v84 renderCommandEncoderWithDescriptor:v33];
        v44 = *(a4 + 24) + (*CommandEncoder << 6);
        v16 = v90;
        [v90 setMTL4RenderCommandEncoder:v43 forKey:{*(GTTraceFunc_argumentBytesWithMap(v44, *(v44 + 13), *(a3 + 16)) + 1)}];
        v45 = [v90 mtl4ArgumentTableForKey:*(v96 + 64)];
        [v45 setAddress:objc_msgSend(v18 atIndex:{"gpuAddress"), v17}];

        v46 = RestoreCommandEncoder();
        v47 = a11;
        if (v46)
        {
          [v43 setRenderPipelineState:v95];
          GTMTLReplayController_defaultDispatchFunction(a1, v94);
          GTMTLReplayController_restoreIndirectResourceUsageForCommandBuffer(a1, v98);
          [v90 commitCommandBuffers:a1 + 40];
          v48 = *(a1 + 40);
          v49 = atomic_load((a1 + 48));
          [v48 waitUntilSignaledValue:v49 - 1 timeoutMS:-1];
        }

        else
        {
          *a11 = GTPostVertexDataError(1u, @"Internal error: Encoder restore failed", 0, 0);
        }

        v21 = v88;

        if (v46)
        {
          v67 = 0;
          v51 = v84;
          v25 = v86;
LABEL_34:

          v69 = *v25;
          if (v69 <= v25[1] || (v70 = v92 * v69 + 8, v70 >= MEMORY[0x253033EF0]() - 0x10000000))
          {
            v73 = [v21 postVertexDumpOutputs];
            v74 = (SaveObject(v92, v73, 0, 0) + 259) & 0xFFFFFFFFFFFFFF00;
            LODWORD(v75) = *v25;
            v76 = v25[1];
            if (*v25 >= v76)
            {
              v75 = v76;
            }

            else
            {
              v75 = v75;
            }

            v77 = v21;
            v78 = (v92 * v75 + 263) & 0xFFFFFFFFFFFFFF00;
            v19 = v97;
            v50 = [v97 newBufferWithLength:v78 + v74 options:0];
            v79 = [v50 contents];
            *v79 = v74;
            SaveObject(v92, v73, (v79 + 4), v74 - 4);
            v80 = [v18 contents];
            v81 = v78;
            v21 = v77;
            memcpy((v79 + v74), v80, v81);
          }

          else
          {
            v19 = v97;
            v71 = [v97 newBufferWithLength:v70 options:0];
            v72 = *(a10 + 96);
            *(a10 + 96) = v71;

            memcpy(__dst, a9, sizeof(__dst));
            v50 = GTMTLReplayController_generatePostVertexData(a1, v16, a3, a4, v98, v94, v96, a8, __dst, a10, v47);
          }

          v23 = v93;
          v20 = v95;
          goto LABEL_42;
        }

        v20 = v95;
        v23 = v93;
        v68 = v84;
        goto LABEL_31;
      }

      v67 = 0;
      v51 = 0;
    }

    else
    {
      v51 = [v16 commandBufferForKey:v27];
      if (v51)
      {
        v87 = v25;
        v89 = v21;
        v91 = v16;
        v52 = objc_alloc_init(MEMORY[0x277CD6F48]);
        [v52 setRenderTargetWidth:*(a1 + 22544)];
        [v52 setRenderTargetHeight:*(a1 + 22552)];
        v53 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:70 width:*(a1 + 22544) height:*(a1 + 22552) mipmapped:0];
        [v53 setStorageMode:2];
        [v53 setUsage:4];
        if ([v97 supportsMemorylessRenderTargets])
        {
          [v53 setStorageMode:3];
        }

        v54 = [v97 newTextureWithDescriptor:v53];
        [v52 colorAttachments];
        v55 = v85 = v52;
        v56 = [v55 objectAtIndexedSubscript:0];
        [v56 setTexture:v54];

        v57 = [v52 colorAttachments];
        v58 = [v57 objectAtIndexedSubscript:0];
        [v58 setLoadAction:0];

        v59 = [v52 colorAttachments];
        v60 = [v59 objectAtIndexedSubscript:0];
        [v60 setStoreAction:0];

        if ((GT_SUPPORT_0 & 0x40) != 0)
        {
          [v52 setDefaultRasterSampleCount:1];
        }

        v61 = GroupBuilder_getCommandEncoder(*(*(a3 + 120) + 12), *(*(a3 + 120) + 24), v98);
        v62 = [v51 renderCommandEncoderWithDescriptor:v52];
        v63 = *(a4 + 24) + (*v61 << 6);
        v16 = v91;
        [v91 setRenderCommandEncoder:v62 forKey:{*(GTTraceFunc_argumentBytesWithMap(v63, *(v63 + 13), *(a3 + 16)) + 1)}];
        v20 = v95;
        if (RestoreCommandEncoder())
        {
          if ((GT_SUPPORT_0 & 0x20) != 0)
          {
            LODWORD(v64) = 925353388;
            [v62 setTessellationFactorScale:v64];
          }

          [v62 setRenderPipelineState:v95];
          [v62 setVertexBuffer:v18 offset:0 atIndex:v17];
          v25 = v87;
          if (*(v94 + 8) >> 2 == 1073737833)
          {
            v65 = *(a9 + 360);
            v66 = [v91 executeIndirectCommandBufferMap];
            DYMTLDrawRenderCommandEncoder(v62, a9 + 40, v65, a9 + 256, v66);

            apr_pool_clear(*(a9 + 368));
          }

          else
          {
            GTMTLReplayController_defaultDispatchFunction(a1, v94);
          }

          v21 = v89;
          v47 = a11;
          GTMTLReplayController_restoreIndirectResourceUsageForCommandBuffer(a1, v98);
          [v91 commitCommandBuffers];
          [v51 waitUntilCompleted];

          v67 = v51;
          v51 = 0;
          goto LABEL_34;
        }

        *a11 = GTPostVertexDataError(1u, @"Internal error: Encoder restore failed", 0, 0);

        v68 = 0;
        v21 = v89;
        v23 = v93;
LABEL_31:

        v50 = 0;
        v19 = v97;
        goto LABEL_42;
      }

      v67 = 0;
    }

    v47 = a11;
    goto LABEL_34;
  }

  GTPostVertexDataError(2u, @"Post-transform geometry data fetch pipeline error", 0, v22);
  *a11 = v50 = 0;
LABEL_42:

LABEL_43:

  return v50;
}

id GTMTLReplayController_createPostVertexPipeline(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a2[6];
  if (v12)
  {
    memcpy(__dst, v12, sizeof(__dst));
    for (i = 0; i != 16; i += 2)
    {
      v14 = &__dst[i];
      *(v14 + 372) = 0;
      *(v14 + 747) = 0;
    }

    WORD2(__dst[167]) = 0;
    LOWORD(__dst[169]) = 0;
    BYTE4(__dst[187]) = 0;
    LOWORD(__dst[93]) = 70;
    __dst[147] = 0;
    memset(&__dst[109], 0, 64);
    v15 = [*(a1 + 8) renderPipelineDescriptorMap];
    v16 = MakeMTLRenderPipelineDescriptorWithoutResourceIndex(__dst, v15);

    [v16 setLabel:@"GPUToolsInternalPostTransformPipelineStateLabel"];
    [v16 setRasterizationEnabled:0];
    if ((GT_SUPPORT_0 & 0x20) != 0)
    {
      [v16 setTessellationPartitionMode:1];
      [v16 setMaxTessellationFactor:1];
      [v16 setTessellationFactorScaleEnabled:1];
    }

    [v16 setPostVertexDumpBufferIndex:a4];
    v34 = 0;
    v17 = [v11 newRenderPipelineStateWithDescriptor:v16 options:0x80000 reflection:a5 error:&v34];
    v18 = v34;
  }

  else
  {
    v20 = a2[11];
    if (v20)
    {
      if (v20[1016] == 2)
      {
        memcpy(__dst, v20, 0x3C8uLL);
        for (j = 0; j != 16; j += 2)
        {
          v22 = &__dst[j];
          *(v22 + 372) = 0;
          *(v22 + 747) = 0;
        }

        LOWORD(__dst[93]) = 70;
        BYTE4(__dst[120]) = 0;
        v23 = a2[12];
        if (v23)
        {
          v24 = [*(a1 + 8) dynamicLibraries];
          v23 = MakeMTL4RenderPipelineDynamicLinkingDescriptor(v23, v24);
        }

        v25 = [*(a1 + 8) libraries];
        v26 = MakeMTL4RenderPipelineDescriptor(__dst, v25);

        [v26 setLabel:@"GPUToolsInternalPostTransformPipelineStateLabel"];
        [v26 setFragmentFunctionDescriptor:0];
        v27 = [v26 options];

        if (!v27)
        {
          v28 = objc_opt_new();
          [v26 setOptions:v28];
        }

        v29 = [v26 options];
        [v29 setEnablePostVertexDump:1];

        v30 = [v26 options];
        [v30 setPostVertexDumpBufferIndex:a4];

        v31 = [*(a1 + 8) defaultCompiler];
        v33 = 0;
        v17 = [v31 newRenderPipelineStateWithDescriptor:v26 dynamicLinkingDescriptor:v23 compilerTaskOptions:0 error:&v33];
        v32 = v33;

        if (a5)
        {
          *a5 = [v17 reflection];
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      GTPostVertexDataError(1u, @"Internal error: Pipeline descriptor error", 0, 0);
      *a6 = v17 = 0;
    }
  }

  return v17;
}

uint64_t RestoreCommandEncoder()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v10[1389] = *MEMORY[0x277D85DE8];
  v5 = v0;
  v6 = *(v2 + 8);
  v7 = *(v4 + 11168);
  if (v7 == 98)
  {
    memcpy(v10, (v4 + 56), 0x758uLL);
    v10[7] = 0;
    v10[170] = 0;
    LOBYTE(v10[234]) = 0;
    LODWORD(v10[233]) = 0;
    GTMTLReplayController_restoreDefaultRenderCommandEncoder4(v5, *(v2 + 22544), *(v2 + 22552), v10, v6);
  }

  else
  {
    if (v7 != 70)
    {
      v8 = 0;
      goto LABEL_7;
    }

    memcpy(v10, (v4 + 56), 0x2B68uLL);
    v10[1068] = 0;
    v10[1231] = 0;
    BYTE5(v10[1387]) = 0;
    HIDWORD(v10[1386]) = 0;
    GTMTLReplayController_restoreDefaultRenderCommandEncoder();
  }

  v8 = 1;
LABEL_7:

  return v8;
}

uint64_t SaveObject(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  v27 = a3;
  v29 = a4;
  if (a4 >= 8 && (*a3 = 115, a4 > 0xF))
  {
    a3[1] = a1;
    v22 = [v7 count];
    if (a4 >= 0x18)
    {
      a3[2] = v22;
    }
  }

  else
  {
    [v7 count];
  }

  v9 = 24;
  v28 = 24;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v15 airMDType];
        WriteDynamicBufferString(&v27, [v16 UTF8String]);

        v17 = [v15 dataType];
        v18 = v28 + 8;
        if (v28 + 8 <= v29)
        {
          *(v27 + v28) = v17;
        }

        v28 = v18;
        v19 = [v15 name];
        WriteDynamicBufferString(&v27, [v19 UTF8String]);

        v20 = [v15 offset];
        v9 = v28 + 8;
        if (v28 + 8 <= v29)
        {
          *(v27 + v28) = v20;
        }

        v28 = v9;
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v12);
  }

  return v9;
}

void WriteDynamicBufferString(void *a1, const char *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "";
  }

  v4 = strlen(v3);
  v5 = v4 + 1;
  v7 = a1[1];
  v6 = a1[2];
  v8 = v7 + v4 + 1;
  if (v8 <= v6)
  {
    memcpy((*a1 + v7), v3, v5);
    v6 = a1[2];
    v8 = a1[1] + v5;
  }

  a1[1] = v8;
  v9 = (v4 & 0xFFFFFFFFFFFFFFF8) + ~v4;
  v10 = v9 + 8;
  v11 = v6 > v8;
  v12 = v6 - v8;
  if (v11)
  {
    if (v12 >= v10)
    {
      v13 = v9 + 8;
    }

    else
    {
      v13 = v12;
    }

    bzero((*a1 + v8), v13);
    v8 = a1[1];
  }

  a1[1] = v8 + v10;
}

uint64_t SaveObjectStruct(uint64_t a1, void *a2, void *a3, void *a4, unint64_t a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v45 = a4;
  v47 = a5;
  if (a5 >= 8)
  {
    *a4 = 115;
    if (a5 >= 0x10)
    {
      a4[1] = a1;
    }
  }

  v11 = [v9 members];
  v12 = [v11 count];
  if (a5 >= 0x18)
  {
    a4[2] = v12;
  }

  v13 = 24;
  v46 = 24;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [v9 members];
  v39 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v39)
  {
    v35 = v9;
    v36 = v10;
    v38 = *v42;
    v14 = obj;
    while (1)
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v42 != v38)
        {
          objc_enumerationMutation(v14);
        }

        v16 = *(*(&v41 + 1) + 8 * i);
        v17 = [v16 name];
        v18 = [v17 componentsSeparatedByString:@"/"];
        v19 = [v18 objectAtIndexedSubscript:0];
        v20 = &stru_2860BD438;
        if ([v18 count] >= 2)
        {
          v20 = [v18 objectAtIndexedSubscript:1];
        }

        v40 = v17;
        if (-[__CFString length](v20, "length") || [v19 isEqualToString:@"air.position"])
        {
          v21 = [v10 objectForKeyedSubscript:v20];
          if ([v16 dataType] != 2)
          {
            if (v21)
            {
              v24 = [v21 unsignedIntegerValue];
            }

            else
            {
LABEL_33:
              v24 = [v16 dataType];
              v21 = 0;
            }

LABEL_34:
            WriteDynamicBufferString(&v45, [v19 UTF8String]);
            v31 = v46 + 8;
            if (v46 + 8 <= v47)
            {
              *(v45 + v46) = v24;
            }

            v46 = v31;
            WriteDynamicBufferString(&v45, [(__CFString *)v20 UTF8String]);
            v32 = [v16 offset];
            v33 = v46 + 8;
            if (v46 + 8 <= v47)
            {
              *(v45 + v46) = v32;
            }

            v23 = 0;
            v46 = v33;
            goto LABEL_39;
          }
        }

        else
        {
          if ([v16 dataType] != 2)
          {
            goto LABEL_33;
          }

          v21 = 0;
        }

        v22 = [v16 arrayType];
        v23 = v22;
        if (v21)
        {
          v24 = [v21 unsignedIntegerValue];
          if (!v23)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (!v22)
          {
            goto LABEL_33;
          }

          v24 = [v22 elementType];
        }

        if ([v23 arrayLength])
        {
          v25 = 0;
          do
          {
            WriteDynamicBufferString(&v45, [v19 UTF8String]);
            v26 = v46 + 8;
            if (v46 + 8 <= v47)
            {
              *(v45 + v46) = v24;
            }

            v46 = v26;
            v27 = [(__CFString *)v20 stringByAppendingFormat:@"[%lu]", v25];
            WriteDynamicBufferString(&v45, [v27 UTF8String]);

            v28 = [v16 offset];
            v29 = [v23 stride];
            v30 = v46 + 8;
            if (v46 + 8 <= v47)
            {
              *(v45 + v46) = v28 + v29 * v25;
            }

            v46 = v30;
            ++v25;
          }

          while (v25 < [v23 arrayLength]);
          v10 = v36;
          v14 = obj;
        }

LABEL_39:
      }

      v39 = [v14 countByEnumeratingWithState:&v41 objects:v48 count:16];
      if (!v39)
      {
        v13 = v46;
        v9 = v35;
        break;
      }
    }
  }

  return v13;
}

id getRenderPipelineBinaries(void *a1)
{
  v1 = DEVICEOBJECT(a1);
  if (qword_27F09CF90 & 0x200) != 0 && (objc_opt_respondsToSelector())
  {
    v2 = [v1 pipelineBinaries];
  }

  else
  {
    v2 = MEMORY[0x277CBEC10];
  }

  return v2;
}

void GTMTLReplayController_dispatchForUSCSampling(const char ****a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v26 = a3;
  v11 = a5;
  if ((qword_27F09CF90 & 0x200) == 0)
  {
    goto LABEL_2;
  }

  v12 = *(a2 + 8);
  if (v12 <= -16286)
  {
    if (v12 != -16337)
    {
      if (v12 == -16325)
      {
        v19 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a4);
        v14 = [v26 computeCommandEncoderForKey:*v19];
        v15 = [v14 endEncodingAndRetrieveProgramAddressTable];
        [v11 addProgramAddressTable:v15 forEncoder:objc_msgSend(v26 atEncoderIndex:{"globalTraceIdForEncoder:ofType:", *v19, 0), a6}];
        [v26 removeComputeCommandEncoderForKey:*v19];
LABEL_13:

        goto LABEL_16;
      }

      goto LABEL_2;
    }

    v22 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a4);
    v23 = [v26 computeCommandEncoderForKey:*v22];
    v24 = [v26 computePipelineStateForKey:*(v22 + 1)];
    GTMTLReplayController_defaultDispatchFunction(a1, a2);
    v25 = getRenderPipelineBinaries(v24);
    [v11 addBinaries:v25];
  }

  else
  {
    if (v12 == -16285)
    {
      v13 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a4);
      v14 = [v26 parallelRenderCommandEncoderForKey:*v13];
      v15 = [v14 endEncodingAndRetrieveProgramAddressTable];
      v16 = *v13;
      v17 = v26;
      v18 = 1;
      goto LABEL_12;
    }

    if (v12 != -16279)
    {
      if (v12 == -16246)
      {
        v13 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a4);
        v14 = [v26 renderCommandEncoderForKey:*v13];
        v15 = [v14 endEncodingAndRetrieveProgramAddressTable];
        v16 = *v13;
        v17 = v26;
        v18 = 0;
LABEL_12:
        [v11 addProgramAddressTable:v15 forEncoder:objc_msgSend(v17 atEncoderIndex:{"globalTraceIdForEncoder:ofType:", v16, v18), a6}];
        [v26 removeRenderCommandEncoderForKey:*v13];
        goto LABEL_13;
      }

LABEL_2:
      GTMTLReplayController_defaultDispatchFunction(a1, a2);
      goto LABEL_16;
    }

    v20 = [v26 renderPipelineStateForKey:{*(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a4) + 1)}];
    v21 = getRenderPipelineBinaries(v20);
    [v11 addBinaries:v21];

    GTMTLReplayController_defaultDispatchFunction(a1, a2);
  }

LABEL_16:
}

id GTShaderProfilerAnalyzeBinaryLLVM(void *a1, uint64_t a2, void *a3)
{
  v82 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v41 = a3;
  v40 = v5;
  if (a2 <= 0x7FFFFFFE)
  {
    if (GTShaderProfilerAnalyzeBinaryLLVM(NSData *,int,objc_object  {objcproto26GTShaderProfilerISAPrinter}*)::onceToken != -1)
    {
      dispatch_once(&GTShaderProfilerAnalyzeBinaryLLVM(NSData *,int,objc_object  {objcproto26GTShaderProfilerISAPrinter}*)::onceToken, &__block_literal_global_5461);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    memset(v45, 0, sizeof(v45));
    v44 = 0u;
    v6 = v5;
    v39 = v6;
    [v39 bytes];
    [v6 length];
    LOWORD(v68) = 257;
    llvm::MemoryBuffer::getMemBufferCopy();
    llvm::MemoryBuffer::getMemBufferRef(v67, v66);
    llvm::object::createBinary();
    if (v78)
    {
      v7 = 0;
    }

    else
    {
      v8 = v77;
      v77 = 0;
      v9 = v66;
      v66 = 0;
      v10 = v44;
      *&v44 = v8;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      v11 = *(&v44 + 1);
      *(&v44 + 1) = v9;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      std::string::basic_string[abi:nn200100]<0>(&v65, "g");
      std::to_string(v67, a2 + 10);
      if (v67[23] >= 0)
      {
        v12 = v67;
      }

      else
      {
        v12 = *v67;
      }

      if (v67[23] >= 0)
      {
        v13 = v67[23];
      }

      else
      {
        v13 = *&v67[8];
      }

      std::string::append(&v65, v12, v13);
      if ((v67[23] & 0x80000000) != 0)
      {
        operator delete(*v67);
      }

      v14 = v44;
      if ((*(v44 + 8) - 9) >= 0xF)
      {
        v14 = 0;
      }

      v43 = v14;
      if (v14)
      {
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        llvm::Triple::setArch();
        (*(*v43 + 384))(v67);
        llvm::SubtargetFeatures::getString(v63, v67);
        v50[0] = v67;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v50);
        v60 = 0;
        v61 = 0;
        v62 = 0;
        v15 = llvm::TargetRegistry::lookupTarget();
        v42 = v15;
        if (!v15)
        {
          goto LABEL_39;
        }

        v18 = *(v15 + 288);
        if (v18)
        {
          v18();
          v15 = v42;
        }

        v19 = *(v15 + 80);
        if (v19)
        {
          v20 = BYTE7(v75);
          if (SBYTE7(v75) < 0)
          {
            v20 = *(&v74 + 1);
          }

          v21 = &v74;
          if (SBYTE7(v75) < 0)
          {
            v21 = v74;
          }

          LOWORD(v51) = 261;
          v50[0] = v21;
          v50[1] = v20;
          MEMORY[0x253032E50](v67, v50);
          v19 = v19(v67);
          if ((v67[23] & 0x80000000) != 0)
          {
            operator delete(*v67);
          }
        }

        std::unique_ptr<llvm::MCRegisterInfo const>::reset[abi:nn200100](v45, v19, v16, v17);
        if (*&v45[0])
        {
          llvm::MCTargetOptions::MCTargetOptions(v50);
          v22 = *(v42 + 48);
          if (v22)
          {
            v23 = *&v45[0];
            v24 = BYTE7(v75);
            if (SBYTE7(v75) < 0)
            {
              v24 = *(&v74 + 1);
            }

            v25 = &v74;
            if (SBYTE7(v75) < 0)
            {
              v25 = v74;
            }

            v81 = 261;
            v79 = v25;
            v80 = v24;
            MEMORY[0x253032E50](v67, &v79);
            v26 = v22(v23, v67, v50);
            if ((v67[23] & 0x80000000) != 0)
            {
              operator delete(*v67);
            }
          }

          else
          {
            v26 = 0;
          }

          v27 = *(&v45[0] + 1);
          *(&v45[0] + 1) = v26;
          if (v27)
          {
            (*(*v27 + 8))(v27);
          }

          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = &v65;
          }

          else
          {
            v28 = v65.__r_.__value_.__r.__words[0];
          }

          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(v65.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v65.__r_.__value_.__l.__size_;
          }

          if (v64 >= 0)
          {
            v30 = v63;
          }

          else
          {
            v30 = v63[0];
          }

          if (v64 >= 0)
          {
            v31 = v64;
          }

          else
          {
            v31 = v63[1];
          }

          v32 = *(v42 + 88);
          if (v32)
          {
            v33 = BYTE7(v75);
            if (SBYTE7(v75) < 0)
            {
              v33 = *(&v74 + 1);
            }

            v34 = &v74;
            if (SBYTE7(v75) < 0)
            {
              v34 = v74;
            }

            v81 = 261;
            v79 = v34;
            v80 = v33;
            MEMORY[0x253032E50](v67, &v79);
            v35 = v32(v67, v28, size, v30, v31);
            if ((v67[23] & 0x80000000) != 0)
            {
              operator delete(*v67);
            }
          }

          else
          {
            v35 = 0;
          }

          v36 = v46;
          *&v46 = v35;
          if (v36)
          {
            (*(*v36 + 8))(v36);
          }

          v7 = BYTE8(v45[0]);
          if (*(&v45[0] + 1))
          {
            if (v46)
            {
              v72 = 0;
              v73 = 0u;
              *v67 = MEMORY[0x277D821E0] + 16;
              *&v67[8] = 0;
              *&v67[16] = 0;
              bzero(&v67[24], 0x329uLL);
              v69 = 0u;
              v71 = 0;
              v70 = 0;
              operator new();
            }

            v7 = 0;
          }

          *v67 = &v59;
          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v67);
          if (v58 < 0)
          {
            operator delete(v57);
          }

          if (v56 < 0)
          {
            operator delete(v55);
          }

          if (v54 < 0)
          {
            operator delete(v53);
          }

          if (v52 < 0)
          {
            operator delete(v50[2]);
          }
        }

        else
        {
LABEL_39:
          v7 = 0;
        }

        if (SHIBYTE(v62) < 0)
        {
          operator delete(v60);
        }

        if (v64 < 0)
        {
          operator delete(v63[0]);
        }

        if (SBYTE7(v75) < 0)
        {
          operator delete(v74);
        }
      }

      else
      {
        v7 = 0;
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }
    }

    llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v77);
    v37 = v66;
    v66 = 0;
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    if (v7)
    {
      if (([v41 setupBinary:v39 targetIndex:a2] & 1) == 0)
      {
      }

      operator new();
    }

    GTShaderProfilerLLVMContext::~GTShaderProfilerLLVMContext(&v42);
  }

  return 0;
}

void sub_24D94ADD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__function::__value_func<void ()(llvm::Error)>::~__value_func[abi:nn200100](&STACK[0x240]);
  std::__function::__value_func<void ()(llvm::Error)>::~__value_func[abi:nn200100](v67 - 160);
  if (a50 < 0)
  {
    operator delete(__p);
  }

  llvm::MCObjectFileInfo::~MCObjectFileInfo(&STACK[0x260]);
  llvm::MCTargetOptions::~MCTargetOptions(&a52);
  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a67);
  }

  if (*(v67 - 201) < 0)
  {
    operator delete(*(v67 - 224));
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected((v67 - 176));
  v69 = STACK[0x238];
  STACK[0x238] = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  GTShaderProfilerLLVMContext::~GTShaderProfilerLLVMContext(&a29);
  _Unwind_Resume(a1);
}

void GTShaderProfilerLLVMContext::~GTShaderProfilerLLVMContext(GTShaderProfilerLLVMContext *this)
{
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<llvm::MCContext>::reset[abi:nn200100](this + 12, 0);
  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 10);
  *(this + 10) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 8);
  *(this + 8) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 7);
  *(this + 7) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 6);
  *(this + 6) = 0;
  if (v12)
  {
    MEMORY[0x2530332C0](v12, 0x10F0C40CB53E019);
  }

  v13 = *(this + 5);
  *(this + 5) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  std::unique_ptr<llvm::MCRegisterInfo const>::reset[abi:nn200100](this + 4, 0, v5, v6);
  v14 = *(this + 3);
  *(this + 3) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 2);
  *(this + 2) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }
}

uint64_t std::unique_ptr<llvm::MCContext>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x253032EC0]();

    JUMPOUT(0x2530332C0);
  }

  return result;
}

uint64_t *std::unique_ptr<llvm::MCRegisterInfo const>::reset[abi:nn200100](uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *result;
  *result = a2;
  if (v4)
  {
    llvm::deallocate_buffer(*(v4 + 184), (8 * *(v4 + 200)));
    llvm::deallocate_buffer(*(v4 + 160), (8 * *(v4 + 176)));

    JUMPOUT(0x2530332C0);
  }

  return result;
}

uint64_t GTShaderProfilerLLVMTargetClauseAnalysis::addString(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 1);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = v7;
    v10 = vcnt_s8(v8);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v12 = v7;
      if (v7 >= *&v8)
      {
        v12 = v7 % *&v8;
      }
    }

    else
    {
      v12 = (*&v8 - 1) & v7;
    }

    v13 = *(*(a1 + 160) + 8 * v12);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          if (std::equal_to<std::string>::operator()[abi:nn200100](i + 2, a2))
          {
            return *(i + 10);
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v15 >= *&v8)
            {
              v15 %= *&v8;
            }
          }

          else
          {
            v15 &= *&v8 - 1;
          }

          if (v15 != v12)
          {
            break;
          }
        }
      }
    }
  }

  v17 = *(a1 + 136);
  v18 = *(a1 + 144);
  v16 = (a1 + 136);
  v19 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v20 = v19;
  if (!*&v8)
  {
    goto LABEL_40;
  }

  v21 = vcnt_s8(v8);
  v21.i16[0] = vaddlv_u8(v21);
  v22 = v21.u32[0];
  if (v21.u32[0] > 1uLL)
  {
    v23 = v19;
    if (v19 >= *&v8)
    {
      v23 = v19 % *&v8;
    }
  }

  else
  {
    v23 = (*&v8 - 1) & v19;
  }

  v24 = *(*(a1 + 160) + 8 * v23);
  if (!v24 || (v25 = *v24) == 0)
  {
LABEL_40:
    operator new();
  }

  while (1)
  {
    v26 = v25[1];
    if (v26 == v20)
    {
      break;
    }

    if (v22 > 1)
    {
      if (v26 >= *&v8)
      {
        v26 %= *&v8;
      }
    }

    else
    {
      v26 &= *&v8 - 1;
    }

    if (v26 != v23)
    {
      goto LABEL_40;
    }

LABEL_39:
    v25 = *v25;
    if (!v25)
    {
      goto LABEL_40;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v25 + 2, a2))
  {
    goto LABEL_39;
  }

  v44 = -1431655765 * ((v18 - v17) >> 3);
  *(v25 + 10) = v44;
  v27 = *(a1 + 152);
  if (v18 >= v27)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * ((v18 - *v16) >> 3);
    if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v30 = 0xAAAAAAAAAAAAAAABLL * ((v27 - *v16) >> 3);
    v31 = 2 * v30;
    if (2 * v30 <= v29 + 1)
    {
      v31 = v29 + 1;
    }

    if (v30 >= 0x555555555555555)
    {
      v32 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v32 = v31;
    }

    v45.__end_cap_.__value_ = (a1 + 136);
    if (v32)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v32);
    }

    begin = (24 * v29);
    v45.__first_ = 0;
    v45.__begin_ = begin;
    value = 0;
    v45.__end_ = begin;
    v45.__end_cap_.__value_ = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
      begin = v45.__begin_;
      end = v45.__end_;
      value = v45.__end_cap_.__value_;
    }

    else
    {
      v36 = *a2;
      begin->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&begin->__r_.__value_.__l.__data_ = v36;
      end = begin;
    }

    v33 = end + 1;
    v38 = *(a1 + 136);
    v39 = *(a1 + 144) - v38;
    v40 = begin - v39;
    memcpy(begin - v39, v38, v39);
    v41 = *(a1 + 136);
    *(a1 + 136) = v40;
    *(a1 + 144) = v33;
    v42 = *(a1 + 152);
    *(a1 + 152) = value;
    v45.__end_ = v41;
    v45.__end_cap_.__value_ = v42;
    v45.__first_ = v41;
    v45.__begin_ = v41;
    std::__split_buffer<std::string>::~__split_buffer(&v45);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v18, *a2, *(a2 + 1));
    }

    else
    {
      v28 = *a2;
      v18->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v18->__r_.__value_.__l.__data_ = v28;
    }

    v33 = v18 + 1;
    *(a1 + 144) = v18 + 1;
  }

  *(a1 + 144) = v33;
  return v44;
}

void std::vector<GTShaderProfilerDebugBinaryLocation>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v8 = v3 - *a1;
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::vector<GTShaderProfilerDebugBinaryRange>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 2);
    v8 = v7 + 1;
    if ((v7 + 1) > 0x924924924924924)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x492492492492492)
    {
      v10 = 0x924924924924924;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<GTShaderProfilerDebugBinaryRange>>(v10);
    }

    v11 = 28 * v7;
    v12 = *a2;
    *(v11 + 12) = *(a2 + 12);
    *v11 = v12;
    v6 = 28 * v7 + 28;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 12) = *(a2 + 12);
    *v4 = v5;
    v6 = v4 + 28;
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<GTShaderProfilerDebugBinaryRange>>(unint64_t a1)
{
  if (a1 < 0x924924924924925)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<GTShaderProfilerShaderTargetClause>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

uint64_t *llvm::Expected<std::unique_ptr<llvm::agxclauseanalyzer::InstrStream>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t llvm::Expected<std::vector<llvm::iterator_range<llvm::agxclauseanalyzer::AnalyzerInput::InstIteratorImpl<llvm::agxclauseanalyzer::AnalyzerInput const>>>>::~Expected(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  if (v2)
  {
    *a1 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (v3)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<llvm::Error>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v7 = *(v4 - 1);
        v4 -= 8;
        v6 = v7;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *llvm::agxclauseanalyzer::AnalyzerInput::InstIteratorImpl<llvm::agxclauseanalyzer::AnalyzerInput>::operator++(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v4);
  v2 = v4;
  if (v5)
  {
    ++a1[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    a1[1] += *(v4 + 16);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<GTShaderProfilerShaderInstructionInfo>>(unint64_t a1)
{
  if (a1 < 0x71C71C71C71C71DLL)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

uint64_t *llvm::Expected<std::unique_ptr<llvm::agxclauseanalyzer::AnalyzerInput>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(llvm::Error)>::~__value_func[abi:nn200100](uint64_t a1)
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

void llvm::MCTargetOptions::~MCTargetOptions(void **this)
{
  v2 = this + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v2);
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

uint64_t *llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t std::__function::__func<void (*)(llvm::Error),std::allocator<void (*)(llvm::Error)>,void ()(llvm::Error)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  *a2 = 0;
  v2(&v4);
  result = v4;
  if (v4)
  {
    return (*(*v4 + 8))(v4);
  }

  return result;
}

void sub_24D94C4E0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<void (*)(llvm::Error),std::allocator<void (*)(llvm::Error)>,void ()(llvm::Error)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2860BC288;
  a2[1] = v2;
  return result;
}

uint64_t ___Z33GTShaderProfilerAnalyzeBinaryLLVMP6NSDataiPU37objcproto26GTShaderProfilerISAPrinter11objc_object_block_invoke()
{
  LLVMInitializeAGX2TargetInfo();
  LLVMInitializeAGX2TargetMC();
  v0 = LLVMInitializeAGX2Disassembler();

  return MEMORY[0x2821F1740](v0);
}

uint64_t AddResourceRestoreRequest(apr_array_header_t *a1, const char ***a2, uint64_t a3, unint64_t a4)
{
  result = 0;
  v7 = a2[3];
  v8 = *(a3 + 4);
  if (v8 <= -10238)
  {
    if (v8 > -14804)
    {
      if (v8 == -14803)
      {
        goto LABEL_28;
      }

      if (v8 == -10240)
      {
        v60 = a3 + 36;
        *&v115[8] = *(a3 + 56);
        v119[0] = 28;
        appended = AppendString_13794(&v115[16], a3 + 36, v119);
        *&v115[24] = *(v60 + ((v119[0] + 3) & 0xFFFFFFFFFFFFFFFCLL));
        AliasStream = GetAliasStream(v7, *&v115[8], a4);
        if (AliasStream)
        {
          v63 = *AliasStream;
        }

        else
        {
          v63 = 0;
        }

        v98 = apr_pstrdup(a1->pool, appended);
        v99 = GetAliasStream(v7, *&v115[8], a4);
        if (GTFenum_getConstructorType(*(*(v99 + 32) + 72)) == 50)
        {
          v100 = 50;
        }

        else
        {
          v100 = 22;
        }

        v101 = apr_array_push(a1);
        v101[3] = v98;
        v102 = *&v115[24];
        *v101 = v100;
        v101[1] = v63;
        v101[2] = a4;
        *(v101 + 2) = v102;
        *(v101 + 3) = 0u;
        *(v101 + 4) = 0u;
        *(v101 + 5) = 0u;
        *(v101 + 6) = 0u;
        *(v101 + 7) = 0u;
        *(v101 + 8) = 0u;
        *(v101 + 9) = 0u;
        *(v101 + 10) = 0u;
        *(v101 + 11) = 0u;
        *(v101 + 12) = 0u;
        *(v101 + 13) = 0u;
        *(v101 + 14) = 0u;
        *(v101 + 15) = 0u;
        *(v101 + 16) = 0u;
        *(v101 + 17) = 0u;
        *(v101 + 18) = 0u;
        *(v101 + 19) = 0u;
        *(v101 + 20) = 0u;
        *(v101 + 21) = 0u;
        *(v101 + 22) = 0u;
        *(v101 + 23) = 0u;
        *(v101 + 24) = 0u;
        *(v101 + 25) = 0u;
        result = 1;
        *(v101 + 26) = 0u;
        *(v101 + 27) = 0u;
        return result;
      }

      if (v8 != -10238)
      {
        return result;
      }
    }

    else
    {
      if (v8 == -16313)
      {
        goto LABEL_30;
      }

      if (v8 != -16236)
      {
        if (v8 == -16234)
        {
          memset(v115, 0, 80);
          DYTraceDecode_MTLTexture_replaceRegion_mipmapLevel_withBytes_bytesPerRow(v115, a3, (*a3 - 36), 0);
          v14 = GetAliasStream(v7, *v115, a4);
          if (v14)
          {
            v15 = *v14;
          }

          else
          {
            v15 = 0;
          }

          v106 = apr_pstrdup(a1->pool, *&v115[64]);
          v107 = apr_array_push(a1);
          v108 = *&v115[40];
          v109 = *&v115[48];
          v110 = *&v115[72];
          *(v107 + 3) = v106;
          v111 = vmovn_s32(vuzp1q_s32(*&v115[8], *&v115[24]));
          *v107 = 80;
          *(v107 + 1) = v15;
          *(v107 + 2) = a4;
          *(v107 + 16) = 0;
          *(v107 + 17) = WORD4(v109);
          *(v107 + 36) = v111;
          *(v107 + 22) = v108;
          *(v107 + 23) = v109;
          *(v107 + 12) = v110;
          *(v107 + 68) = 0u;
          *(v107 + 84) = 0u;
          *(v107 + 100) = 0u;
          *(v107 + 116) = 0u;
          *(v107 + 132) = 0u;
          *(v107 + 148) = 0u;
          *(v107 + 164) = 0u;
          *(v107 + 180) = 0u;
          *(v107 + 196) = 0u;
          *(v107 + 212) = 0u;
          *(v107 + 228) = 0u;
          *(v107 + 244) = 0u;
          *(v107 + 27) = 0u;
          *(v107 + 52) = 0u;
          v112 = v107 + 52;
          *(v107 + 260) = 0u;
          *(v107 + 276) = 0u;
          *(v107 + 292) = 0u;
          *(v107 + 308) = 0u;
          *(v107 + 324) = 0u;
          *(v107 + 340) = 0u;
          *(v107 + 356) = 0u;
          *(v107 + 372) = 0u;
          *(v107 + 388) = 0u;
          *(v107 + 404) = 0u;
          result = 1;
          *(v112 + 23) = 0u;
        }

        return result;
      }
    }

LABEL_24:
    memset(v115, 0, 104);
    DYTraceDecode_MTLTexture_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage(v115, a3, (*a3 - 36), 0);
    v22 = GetAliasStream(v7, *v115, a4);
    if (v22)
    {
      v23 = *v22;
    }

    else
    {
      v23 = 0;
    }

    v39 = apr_pstrdup(a1->pool, *&v115[72]);
    v40 = apr_array_push(a1);
    v42 = *&v115[56];
    v41 = *&v115[64];
    v43 = *&v115[40];
    v44 = *&v115[48];
    v45 = *&v115[96];
    *(v40 + 3) = v39;
    v46 = vmovn_s64(*&v115[80]);
    v47 = vmovn_s32(vuzp1q_s32(*&v115[8], *&v115[24]));
    *v40 = 80;
    *(v40 + 1) = v23;
    *(v40 + 2) = a4;
    *(v40 + 16) = v41;
    *(v40 + 17) = v42;
    *(v40 + 36) = v47;
    *(v40 + 22) = v43;
    *(v40 + 23) = v44;
    *(v40 + 6) = v46;
    *(v40 + 14) = v45;
    *(v40 + 60) = 0u;
    v48 = v40 + 60;
    *(v40 + 111) = 0;
    *(v40 + 412) = 0u;
    *(v40 + 428) = 0u;
    *(v40 + 380) = 0u;
    *(v40 + 396) = 0u;
    *(v40 + 348) = 0u;
    *(v40 + 364) = 0u;
    *(v40 + 316) = 0u;
    *(v40 + 332) = 0u;
    *(v40 + 284) = 0u;
    *(v40 + 300) = 0u;
    *(v40 + 252) = 0u;
    *(v40 + 268) = 0u;
    *(v40 + 220) = 0u;
    *(v40 + 236) = 0u;
    *(v40 + 188) = 0u;
    *(v40 + 204) = 0u;
    *(v40 + 156) = 0u;
    *(v40 + 172) = 0u;
    *(v40 + 124) = 0u;
    *(v40 + 140) = 0u;
    *(v40 + 92) = 0u;
    *(v40 + 108) = 0u;
    result = 1;
    *(v48 + 1) = 0u;
    return result;
  }

  if (v8 <= -10220)
  {
    if (v8 != -10237)
    {
      if (v8 != -10236)
      {
        if (v8 != -10232)
        {
          return result;
        }

        v16 = a3 + 36;
        v17 = strcmp((a3 + 36), "CUulul");
        v18 = 12;
        if (!v17)
        {
          v18 = 8;
        }

        *v115 = *(v16 + v18);
        v119[0] = v18 + 8;
        v19 = AppendString_13794(&v115[8], v16, v119);
        *&v115[16] = *(v16 + ((v119[0] + 3) & 0xFFFFFFFFFFFFFFFCLL));
        v20 = GetAliasStream(v7, *v115, a4);
        if (v20)
        {
          v21 = *v20;
        }

        else
        {
          v21 = 0;
        }

        v103 = apr_pstrdup(a1->pool, v19);
        v96 = apr_array_push(a1);
        v97 = v96;
        *(v96 + 3) = v103;
        v104 = vmovn_s64(*&v115[16]);
        *v96 = 86;
        *(v96 + 1) = v21;
        *(v96 + 2) = a4;
        *(v96 + 4) = v104;
        goto LABEL_70;
      }

      goto LABEL_24;
    }

LABEL_30:
    memset(v115, 0, 48);
    DYTraceDecode_MTLDevice_newBufferWithBytes_length_options(v115, a3, (*a3 - 36), 0);
    v37 = GetAliasStream(v7, *&v115[8], a4);
    if (v37)
    {
      v38 = *v37;
    }

    else
    {
      v38 = 0;
    }

    v64 = apr_pstrdup(a1->pool, *&v115[16]);
    v65 = apr_array_push(a1);
    v66 = *&v115[24];
    *v65 = 22;
    v65[1] = v38;
    v65[2] = a4;
    v65[3] = v64;
    v65[4] = 0;
    v65[5] = v66;
    *(v65 + 3) = 0u;
    *(v65 + 4) = 0u;
    *(v65 + 5) = 0u;
    *(v65 + 6) = 0u;
    *(v65 + 7) = 0u;
    *(v65 + 8) = 0u;
    *(v65 + 9) = 0u;
    *(v65 + 10) = 0u;
    *(v65 + 11) = 0u;
    *(v65 + 12) = 0u;
    *(v65 + 13) = 0u;
    *(v65 + 14) = 0u;
    *(v65 + 15) = 0u;
    *(v65 + 16) = 0u;
    *(v65 + 17) = 0u;
    *(v65 + 18) = 0u;
    *(v65 + 19) = 0u;
    *(v65 + 20) = 0u;
    *(v65 + 21) = 0u;
    *(v65 + 22) = 0u;
    *(v65 + 23) = 0u;
    *(v65 + 24) = 0u;
    *(v65 + 25) = 0u;
    *(v65 + 26) = 0u;
    result = 1;
    *(v65 + 27) = 0u;
    return result;
  }

  if (v8 > -10191)
  {
    if (v8 == -10190)
    {
      v53 = a3 + 36;
      *v115 = *(a3 + 52);
      v119[0] = 24;
      v54 = AppendString_13794(&v115[8], a3 + 36, v119);
      v55 = (v119[0] + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v56 = *(v53 + v55);
      *&v115[8] = v54;
      *&v115[16] = v56;
      v119[0] = v55 + 8;
      v57 = AppendString_13794(&v115[24], v53, v119);
      v58 = *(v53 + ((v119[0] + 3) & 0xFFFFFFFFFFFFFFFCLL));
      v59 = GetAliasStream(v7, *v115, a4);
      if (v59)
      {
        v114 = *v59;
      }

      else
      {
        v114 = 0;
      }

      v113 = apr_pstrdup(a1->pool, *&v115[8]);
      v79 = *a2;
      v80 = a2[1];
      v81 = *v80;
      Data = GTCaptureArchive_readData(v79, v80, v57, *v80, 0);
      if (v58)
      {
        LODWORD(v84) = v58;
      }

      else
      {
        v84 = v82 >> 3;
      }

      v85 = apr_palloc(a1->pool, 8 * v84);
      v86 = v85;
      if (v84)
      {
        v87 = 0;
        v88 = v84;
        v89 = v85;
        do
        {
          v90 = *Data;
          Data += 8;
          v91 = GetAliasStream(v7, v90, a4);
          if (v91)
          {
            v92 = *v91;
          }

          else
          {
            v92 = 0;
          }

          *v89++ = v92;
          v87 |= v92 == 0;
          --v88;
        }

        while (v88);
        apr_pool_clear(v81);
        if (v87)
        {
          return 1;
        }
      }

      else
      {
        apr_pool_clear(v81);
      }

      v93 = apr_array_push(a1);
      v94 = *&v115[16];
      *v93 = 16;
      *(v93 + 1) = v114;
      *(v93 + 2) = a4;
      *(v93 + 3) = v113;
      *(v93 + 4) = v94;
      *(v93 + 5) = v86;
      *(v93 + 12) = v84;
      *(v93 + 68) = 0u;
      *(v93 + 84) = 0u;
      *(v93 + 100) = 0u;
      *(v93 + 116) = 0u;
      *(v93 + 132) = 0u;
      *(v93 + 148) = 0u;
      *(v93 + 164) = 0u;
      *(v93 + 180) = 0u;
      *(v93 + 196) = 0u;
      *(v93 + 212) = 0u;
      *(v93 + 228) = 0u;
      *(v93 + 244) = 0u;
      *(v93 + 27) = 0u;
      *(v93 + 52) = 0u;
      v93 += 52;
      *(v93 + 13) = 0u;
      *(v93 + 14) = 0u;
      *(v93 + 15) = 0u;
      *(v93 + 16) = 0u;
      *(v93 + 17) = 0u;
      *(v93 + 18) = 0u;
      *(v93 + 19) = 0u;
      *(v93 + 20) = 0u;
      *(v93 + 21) = 0u;
      *(v93 + 22) = 0u;
      *(v93 + 23) = 0u;
      return 1;
    }

    if (v8 != -10142)
    {
      return result;
    }

LABEL_28:
    v24 = a3 + 36;
    *v115 = *(a3 + 60);
    *&v115[88] = *(a3 + 148);
    *&v115[104] = *(a3 + 164);
    *&v115[120] = *(a3 + 180);
    *&v115[136] = *(a3 + 196);
    *&v115[24] = *(a3 + 84);
    *&v115[40] = *(a3 + 100);
    *&v115[56] = *(a3 + 116);
    *&v115[72] = *(a3 + 132);
    *&v115[8] = *(a3 + 68);
    v25 = *(a3 + 316);
    *&v116[96] = *(a3 + 300);
    *&v116[112] = v25;
    *&v116[128] = *(a3 + 332);
    v26 = *(a3 + 220);
    v27 = *(a3 + 252);
    *&v116[32] = *(a3 + 236);
    *&v116[48] = v27;
    v28 = *(a3 + 284);
    *&v116[64] = *(a3 + 268);
    *&v116[80] = v28;
    *v116 = *(a3 + 204);
    *&v116[16] = v26;
    v119[0] = 304;
    v29 = AppendString_13794(&v117, a3 + 36, v119);
    v30 = v24 + ((v119[0] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v31 = *(v30 + 112);
    *&v118[96] = *(v30 + 96);
    *&v118[112] = v31;
    *&v118[128] = *(v30 + 128);
    v32 = *(v30 + 48);
    *&v118[32] = *(v30 + 32);
    *&v118[48] = v32;
    v33 = *(v30 + 80);
    *&v118[64] = *(v30 + 64);
    *&v118[80] = v33;
    v34 = *(v30 + 16);
    *v118 = *v30;
    *&v118[16] = v34;
    v35 = GetAliasStream(v7, *v115, a4);
    if (v35)
    {
      v36 = *v35;
    }

    else
    {
      v36 = 0;
    }

    v67 = apr_pstrdup(a1->pool, v29);
    v68 = *&v115[8];
    v69 = *v116;
    v70 = apr_array_push(a1);
    v71 = *v118;
    *v70 = 101;
    *(v70 + 1) = v36;
    *(v70 + 2) = a4;
    *(v70 + 3) = v67;
    *(v70 + 4) = v68;
    v72 = *&v115[16];
    *(v70 + 104) = *&v115[80];
    *(v70 + 120) = *&v115[96];
    *(v70 + 136) = *&v115[112];
    *(v70 + 152) = *&v115[128];
    *(v70 + 40) = v72;
    *(v70 + 56) = *&v115[32];
    *(v70 + 72) = *&v115[48];
    *(v70 + 88) = *&v115[64];
    *(v70 + 21) = v69;
    *(v70 + 15) = *&v116[72];
    *(v70 + 16) = *&v116[88];
    *(v70 + 17) = *&v116[104];
    *(v70 + 18) = *&v116[120];
    *(v70 + 11) = *&v116[8];
    *(v70 + 12) = *&v116[24];
    *(v70 + 13) = *&v116[40];
    *(v70 + 14) = *&v116[56];
    *(v70 + 38) = v71;
    v73 = *&v118[120];
    *(v70 + 408) = *&v118[104];
    *(v70 + 424) = v73;
    v74 = *&v118[88];
    *(v70 + 376) = *&v118[72];
    *(v70 + 392) = v74;
    v75 = *&v118[56];
    *(v70 + 344) = *&v118[40];
    *(v70 + 360) = v75;
    v76 = *&v118[24];
    *(v70 + 312) = *&v118[8];
    *(v70 + 328) = v76;
    v70[440] = -1;
    *(v70 + 111) = 0;
    *(v70 + 441) = 0;
    return 1;
  }

  if (v8 != -10219)
  {
    if (v8 != -10194)
    {
      return result;
    }

    v9 = a3 + 36;
    *v115 = *(a3 + 44);
    v119[0] = 16;
    v10 = AppendString_13794(&v115[8], a3 + 36, v119);
    v11 = *(v9 + ((v119[0] + 3) & 0xFFFFFFFFFFFFFFFCLL));
    v12 = GetAliasStream(v7, *v115, a4);
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v13 = 0;
    }

    v95 = apr_pstrdup(a1->pool, v10);
    v96 = apr_array_push(a1);
    v97 = v96;
    *v96 = 16;
    *(v96 + 1) = v13;
    *(v96 + 2) = a4;
    *(v96 + 3) = v95;
    *(v96 + 4) = v11;
LABEL_70:
    *(v96 + 56) = 0u;
    *(v96 + 72) = 0u;
    *(v96 + 88) = 0u;
    *(v96 + 104) = 0u;
    *(v96 + 120) = 0u;
    *(v96 + 136) = 0u;
    *(v96 + 152) = 0u;
    *(v96 + 168) = 0u;
    *(v96 + 184) = 0u;
    *(v96 + 200) = 0u;
    *(v96 + 216) = 0u;
    *(v96 + 232) = 0u;
    *(v96 + 248) = 0u;
    *(v96 + 55) = 0;
    *(v97 + 40) = 0u;
    v105 = v97 + 40;
    v105[14] = 0u;
    v105[15] = 0u;
    v105[16] = 0u;
    v105[17] = 0u;
    v105[18] = 0u;
    v105[19] = 0u;
    v105[20] = 0u;
    v105[21] = 0u;
    v105[22] = 0u;
    v105[23] = 0u;
    result = 1;
    v105[24] = 0u;
    return result;
  }

  *v115 = *(a3 + 40);
  v119[0] = 12;
  v49 = AppendString_13794(&v115[8], a3 + 36, v119);
  v50 = GetAliasStream(v7, *v115, a4);
  if (v50)
  {
    v51 = *v50;
  }

  else
  {
    v51 = 0;
  }

  v77 = apr_pstrdup(a1->pool, v49);
  v78 = apr_array_push(a1);
  *v78 = 57;
  v78[1] = v51;
  v78[2] = a4;
  v78[3] = v77;
  *(v78 + 2) = 0u;
  *(v78 + 3) = 0u;
  *(v78 + 4) = 0u;
  *(v78 + 5) = 0u;
  *(v78 + 6) = 0u;
  *(v78 + 7) = 0u;
  *(v78 + 8) = 0u;
  *(v78 + 9) = 0u;
  *(v78 + 10) = 0u;
  *(v78 + 11) = 0u;
  *(v78 + 12) = 0u;
  *(v78 + 13) = 0u;
  *(v78 + 14) = 0u;
  *(v78 + 15) = 0u;
  *(v78 + 16) = 0u;
  *(v78 + 17) = 0u;
  *(v78 + 18) = 0u;
  *(v78 + 19) = 0u;
  *(v78 + 20) = 0u;
  *(v78 + 21) = 0u;
  *(v78 + 22) = 0u;
  *(v78 + 23) = 0u;
  *(v78 + 24) = 0u;
  *(v78 + 25) = 0u;
  result = 1;
  *(v78 + 26) = 0u;
  *(v78 + 27) = 0u;
  return result;
}

uint64_t GetRestoreSortingOrder(uint64_t a1)
{
  v1 = *a1;
  if (*a1 > 59)
  {
    if (v1 <= 82)
    {
      if (v1 == 60)
      {
        return 2;
      }

      if (v1 == 80)
      {
        return 6;
      }
    }

    else
    {
      switch(v1)
      {
        case 'S':
          return 3;
        case 'V':
          return 5;
        case 'e':
          return 10;
      }
    }

    return 0;
  }

  if (v1 > 49)
  {
    if (v1 == 50)
    {
      return 1;
    }

    if (v1 == 57)
    {
      return 9;
    }

    return 0;
  }

  if (v1 != 16)
  {
    if (v1 == 22)
    {
      return 4;
    }

    return 0;
  }

  if (*(a1 + 48))
  {
    return 8;
  }

  else
  {
    return 7;
  }
}

void __destructor_8_s0_s8_s16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

id SharedBufferArray_retainArray(uint64_t a1)
{
  v2 = [*(a1 + 8) copy];
  [*(a1 + 8) removeAllObjects];
  v3 = [v2 lastObject];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 16);
    v6 = [v3 buffer];
    v7 = [v6 length];

    if (v5 < v7)
    {
      [*(a1 + 8) addObject:v4];
    }
  }

  return v2;
}

void SharedCommandBuffer_clearCommandBuffer(uint64_t a1)
{
  [*(a1 + 16) endEncoding];
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
}

id SharedCommandBuffer_commandBuffer(void **a1, uint64_t a2)
{
  pthread_mutex_lock(&SharedBlitLock);
  if (!a1[1])
  {
    v4 = InternalCommandBuffer(*a1, @"SharedCommandBuffer", a2);
    v5 = a1[1];
    a1[1] = v4;
  }

  pthread_mutex_unlock(&SharedBlitLock);
  v6 = a1[1];

  return v6;
}

id InternalCommandBuffer(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if ([v5 isStatEnabled])
  {
    v7 = [v5 getStatLocations];
    [v5 setStatLocations:0];
    v8 = NewCommandBuffer(v5);
    [v5 setStatLocations:v7];
  }

  else
  {
    v8 = NewCommandBuffer(v5);
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", v6];

  [v8 setLabel:v9];
  v10 = *a3;
  v11 = atomic_load((a3 + 8));
  [v8 encodeWaitForEvent:v10 value:v11 - 1];

  return v8;
}

id InternalBlitCommandEncoder(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 isStatEnabled])
  {
    v5 = [v4 getStatLocations];
    [v4 setStatLocations:0];
    v6 = [v3 blitCommandEncoder];
    [v4 setStatLocations:v5];
  }

  else
  {
    v6 = [v3 blitCommandEncoder];
  }

  return v6;
}

void verifyPerCounterCommandData(void *a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (g_runningValidationCI == 1)
  {
    v8 = [a1 objectForKeyedSubscript:v6];
    if (v8)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v30 = v7;
      obj = v7;
      v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = &unk_27F09C000;
        v12 = *v35;
        v13 = "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_CLI.m";
        v14 = "verifyPerCounterCommandData";
        do
        {
          v15 = 0;
          v31 = v10;
          do
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v34 + 1) + 8 * v15);
            v17 = [v8 objectForKeyedSubscript:v16];
            v18 = v17;
            if (v17)
            {
              if ([v17 count] != a4)
              {
                v19 = v12;
                v20 = v8;
                v21 = v14;
                v22 = v13;
                v23 = v11;
                if (v11[3992])
                {
                  v24 = "#CI_ERROR# ";
                }

                else
                {
                  v24 = "";
                }

                v27 = v24;
                v11 = v23;
                v13 = v22;
                v14 = v21;
                v8 = v20;
                v12 = v19;
                v10 = v31;
                GTMTLReplay_handleError(101, v13, v14, 578, 1, "%s%s %u: Counter %@ had incorrect number of results when validating %@ dictionary, size was %lu should be %lu\n", v27, "void verifyPerCounterCommandData(NSDictionary *__strong, NSString *__strong, NSArray *__strong, NSUInteger)", 578, v16, v6, [v18 count], a4);
              }
            }

            else
            {
              v25 = "";
              if (v11[3992])
              {
                v25 = "#CI_ERROR# ";
              }

              GTMTLReplay_handleError(101, v13, v14, 574, 1, "%s%s %u: Counter %@ not found when validating %@ dictionary\n", v25, "void verifyPerCounterCommandData(NSDictionary *__strong, NSString *__strong, NSArray *__strong, NSUInteger)", 574, v16, v6, v28, v29);
            }

            ++v15;
          }

          while (v10 != v15);
          v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v10);
      }

      v7 = v30;
    }

    else
    {
      if (g_runningInCI)
      {
        v26 = "#CI_ERROR# ";
      }

      else
      {
        v26 = "";
      }

      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_CLI.m", "verifyPerCounterCommandData", 566, 1, "%s%s %u: Dictionary %@ not found in JSON dictionary\n", v26, "void verifyPerCounterCommandData(NSDictionary *__strong, NSString *__strong, NSArray *__strong, NSUInteger)", 566, v6);
    }
  }
}

void __BatchIdFilteredCounters_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"batchfiltered"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"vendorCounters"];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

          [*(a1 + 32) addObject:*(*(&v12 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

id GenerateSimplePriorityList(void *a1, unint64_t *a2)
{
  v2 = a1;
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v4 = 0;
  if ([v2 count])
  {
    v5 = 0;
    do
    {
      v6 = [v2 objectAtIndexedSubscript:v5];
      v7 = [v6 unsignedIntValue];

      if (v7)
      {
        v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7];
        for (i = 0; i != v7; ++i)
        {
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
          [v8 addObject:v10];
        }

        [v3 addObject:v8];
        if (v4 <= v7)
        {
          v4 = v7;
        }
      }

      ++v5;
    }

    while (v5 < [v2 count]);
  }

  if (g_runningInCI)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Batch ID filtering will require %lu batches", v4];
    v12 = [v11 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v12 UTF8String]);
  }

  if (a2)
  {
    *a2 = v4;
  }

  return v3;
}

id RemoveUnfilterableCounters(void *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 mutableCopy];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5902;
  v24 = __Block_byref_object_dispose__5903;
  v25 = objc_opt_new();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __RemoveUnfilterableCounters_block_invoke;
  v17[3] = &unk_2796583D0;
  v6 = v4;
  v18 = v6;
  v19 = &v20;
  [v5 enumerateKeysAndObjectsUsingBlock:v17];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v21[5];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v26 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [v5 removeObjectForKey:{*(*(&v13 + 1) + 8 * i), v13}];
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v26 count:16];
    }

    while (v8);
  }

  v11 = [v5 copy];
  _Block_object_dispose(&v20, 8);

  return v11;
}

void sub_24D94F714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5902(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __RemoveUnfilterableCounters_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  }
}

uint64_t GTMTLReplay_CLI(const char *a1, uint64_t a2, uint64_t a3, apr_allocator_t *a4)
{
  v703 = *MEMORY[0x277D85DE8];
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, a4);
  v659 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v660 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v661 = 0;
  [v660 setName:@"gputools.MTLReplayer.parallelQueue"];
  [v659 setName:@"gputools.MTLReplayer.serialQueue"];
  [v659 setMaxConcurrentOperationCount:1];
  if (g_runningInCI == 1)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLReplayer attempting to open capture archive: %s", a1];
    v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v6 UTF8String]);
  }

  v7 = newpool;
  DataSource = GTMTLReplayController_makeDataSource(a1, newpool);
  if (!DataSource)
  {
    if (g_runningInCI)
    {
      v13 = "#CI_ERROR# ";
    }

    else
    {
      v13 = "";
    }

    v14 = 1;
    GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_CLI.m", "GTMTLReplay_CLI", 672, 1, "%s%s %u: Failed to open capture archive: %s\n", v13, "int GTMTLReplay_CLI(const char *, GTMTLReplayCLIOptions, void (*)(NSData *__strong, NSURL *__strong))", 672, a1);
    goto LABEL_402;
  }

  if (g_runningInCI)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLReplayer opened capture archive: %s", a1];
    v10 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v10 UTF8String]);
  }

  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v658 = 0;
  [v11 createDirectoryAtPath:@"/tmp/com.apple.gputools.profiling" withIntermediateDirectories:1 attributes:0 error:&v658];
  v567 = v658;

  v571 = [MEMORY[0x277CCACA8] stringWithUTF8String:{*(GTMTLSMContext_getDevice(**(DataSource + 5), *(DataSource + 11))[5] + 64)}];
  v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v573 = [v12 stringForKey:@"GPUMTLOverrideDeviceFamily"];

  if (*(a2 + 40))
  {
    v566 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    if (!v573 || (v15 = [v571 hasPrefix:v573], v16 = v573, v15))
    {
      v16 = v571;
    }

    v566 = v16;
  }

  v17 = *(GTMTLSMContext_getDevice(**(DataSource + 5), *(DataSource + 11))[5] + 16);
  v18 = dlsym(0xFFFFFFFFFFFFFFFDLL, "MTLOverrideDeviceCreationFlags");
  if (v18)
  {
    v18(v17);
  }

  if (g_runningInCI == 1)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Creating system default device"];
    v20 = [v19 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v21 = *MEMORY[0x277D85E08];
    v22 = v20;
    fprintf(v21, "#CI-INFO# %s\n", [v20 UTF8String]);
  }

  v584 = MTLCreateSystemDefaultDevice();
  if (g_runningInCI == 1)
  {
    v23 = MEMORY[0x277CCACA8];
    v24 = [v584 name];
    v25 = [v23 stringWithFormat:@"Selected default device %@", v24];

    v26 = [v25 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v27 = *MEMORY[0x277D85E08];
    v28 = v26;
    fprintf(v27, "#CI-INFO# %s\n", [v26 UTF8String]);
  }

  v29 = DEVICEOBJECT(v584);
  v30 = [v29 acceleratorPort];

  v657 = 0x7FFFFFFF;
  v577 = GetMetalPluginName(v30, &v657);
  obj = v657;
  if (v657 == 0x80000000)
  {
    obj = MetalPluginTarget(v577);
  }

  v594 = IsAGXMetalPlugin(v577, v31);
  if (v594)
  {
    v32 = DEVICEOBJECT(v584);
    v33 = objc_opt_respondsToSelector();

    if (v33)
    {
      [v584 setShaderDebugInfoCaching:1];
      if (g_runningInCI == 1)
      {
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enabled shaderDebugInfoCaching on device"];
        v35 = [v34 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

        v36 = *MEMORY[0x277D85E08];
        v37 = v35;
        fprintf(v36, "#CI-INFO# %s\n", [v35 UTF8String]);
      }
    }

    if ((*(a2 + 186) & 0x20) != 0)
    {
      v38 = GTProfilerConfigurationVariables(v30);
      v39 = [v38 objectForKeyedSubscript:@"num_cores"];
      v40 = [v39 unsignedIntValue];

      if (obj > 5 || obj == 5 && v40 >= 7)
      {
        *(a2 + 184) = *(a2 + 184) & 0xFF9FFFFF | 0x400000;
      }
    }
  }

  if (g_runningInCI == 1)
  {
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Calling GTMTLReplaySupport_init()"];
    v42 = [v41 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v43 = *MEMORY[0x277D85E08];
    v44 = v42;
    fprintf(v43, "#CI-INFO# %s\n", [v42 UTF8String]);
  }

  v582 = [[GTMTLReplayObjectMap alloc] initWithDevice:v584];
  GTMTLReplaySupport_init(v584);
  GTMTLReplayController_initializeArgumentBufferSupport(DataSource, v584, v582);
  GTMTLReplayController_populateUnusedResources(DataSource, v582);
  if (g_runningInCI == 1)
  {
    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Calling GTMTLReplayController_makeController()"];
    v46 = [v45 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v47 = *MEMORY[0x277D85E08];
    v48 = v46;
    fprintf(v47, "#CI-INFO# %s\n", [v46 UTF8String]);
  }

  Controller = GTMTLReplayController_makeController(DataSource, v7, v584, v582, 0, 0);
  if ((*(a2 + 186) & 0x78) != 0)
  {
    v49 = MEMORY[0x253033EF0]();
    v50 = v49 - 0x10000000;
    if (v49 - 0x10000000 >= 0x18000000)
    {
      v50 = 402653184;
    }

    if (v49 >> 28)
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    if (g_runningInCI == 1)
    {
      v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"OptimizingRestores, maxBufferLen = %zu, availableMemory = %zu\n", v51, MEMORY[0x253033EF0]()];
      v53 = [v52 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

      v54 = *MEMORY[0x277D85E08];
      v55 = v53;
      fprintf(v54, "#CI-INFO# %s\n", [v53 UTF8String]);
    }

    GTMTLReplayController_optimizeRestores(Controller, v51);
  }

  if (g_runningInCI == 1)
  {
    v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"Creating GTMTLReplayWireframeRenderer"];
    v57 = [v56 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v58 = MEMORY[0x277D85E08];
    v59 = *MEMORY[0x277D85E08];
    v60 = v57;
    fprintf(v59, "#CI-INFO# %s\n", [v57 UTF8String]);

    v646 = 0;
    v645 = 0;
    v647 = 0;
    v648 = 0u;
    v649 = 0u;
    v650 = 0u;
    v651 = 0u;
    v652 = 0u;
    v653 = 0u;
    v654 = 0u;
    v655 = 0u;
    v656 = 0;
    if (g_runningInCI)
    {
      v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"Calling GTMTLReplayWireframeRenderer_initWithDevice()"];
      v62 = [v61 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

      v63 = *v58;
      v64 = v62;
      fprintf(v63, "#CI-INFO# %s\n", [v62 UTF8String]);
    }
  }

  else
  {
    v646 = 0;
    v645 = 0;
    v647 = 0;
    v648 = 0u;
    v649 = 0u;
    v650 = 0u;
    v651 = 0u;
    v652 = 0u;
    v653 = 0u;
    v654 = 0u;
    v655 = 0u;
    v656 = 0;
  }

  v65 = [Controller[1] defaultDevice];
  GTMTLReplayWireframeRenderer_initWithDevice(&v645, v65);

  v66 = getenv("ATF_RESULTSDIRECTORY");
  if (!v66)
  {
    if ((g_runningInCI & 1) == 0)
    {
      goto LABEL_56;
    }

LABEL_55:
    v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.saveDestination=%s", *(a2 + 48)];
    v68 = [v67 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v69 = *MEMORY[0x277D85E08];
    v70 = v68;
    fprintf(v69, "#CI-INFO# %s\n", [v68 UTF8String]);

    goto LABEL_56;
  }

  if (g_runningInCI)
  {
    goto LABEL_55;
  }

  *(a2 + 48) = v66;
  *(a2 + 184) |= 0x40u;
LABEL_56:
  v71 = MEMORY[0x277CBEBC0];
  v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a2 + 48)];
  v576 = [v71 fileURLWithPath:v72 isDirectory:1];

  v73 = [MEMORY[0x277CCAA00] defaultManager];
  [v73 createDirectoryAtURL:v576 withIntermediateDirectories:1 attributes:0 error:0];

  v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v75 = [v74 lastPathComponent];
  v572 = [v75 stringByDeletingPathExtension];

  v77 = *(a2 + 184);
  if (v77)
  {
    if (g_runningInCI == 1)
    {
      v119 = [MEMORY[0x277CCACA8] stringWithFormat:@"Calling GenerateThumbnails"];
      v120 = [v119 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

      v121 = *MEMORY[0x277D85E08];
      v122 = v120;
      fprintf(v121, "#CI-INFO# %s\n", [v120 UTF8String]);
    }

    v638 = MEMORY[0x277D85DD0];
    v639 = 3221225472;
    v640 = __GTMTLReplay_CLI_block_invoke;
    v641 = &unk_2796583F8;
    v642 = v572;
    v644 = a3;
    v643 = v576;
    v637 = 0;
    Thumbnails = GenerateThumbnails();
    v574 = 0;
    if ((Thumbnails & 1) == 0)
    {
      GTMTLReplay_handleNSError(v574);
      if (g_runningInCI)
      {
        v124 = "#CI_ERROR# ";
      }

      else
      {
        v124 = "";
      }

      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_CLI.m", "GTMTLReplay_CLI", 807, 1, "%s%s %u: Failed to generate thumbnails!\n", v124, "int GTMTLReplay_CLI(const char *, GTMTLReplayCLIOptions, void (*)(NSData *__strong, NSURL *__strong))", 807);
    }

    v90 = v642;
    goto LABEL_396;
  }

  if ((v77 & 0x620000) == 0x20000)
  {
    if (g_runningInCI == 1)
    {
      v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"profileBatchIdFilter"];
      v79 = [v78 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

      v80 = *MEMORY[0x277D85E08];
      v81 = v79;
      fprintf(v80, "#CI-INFO# %s\n", [v79 UTF8String]);
    }

    if (v594)
    {
      v82 = g_runningInCI;
      if ((obj & 0x80000000) == 0)
      {
        if (g_runningInCI)
        {
          v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"targetIndex=%d", obj];
          v84 = [v83 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

          v85 = *MEMORY[0x277D85E08];
          v86 = v84;
          fprintf(v85, "#CI-INFO# %s\n", [v84 UTF8String]);
        }

        v87 = [Controller[1] defaultDevice];
        v88 = DYMTLReplayFrameProfiler_loadAnalysis(v87);
        v574 = [v88 mutableCopy];

        v89 = [v574 objectForKeyedSubscript:@"DerivedCounterDictionary"];
        v90 = [v89 mutableCopy];

        verifyCounterDictionary(v90);
        v600 = [v90 objectForKeyedSubscript:@"DerivedCounters"];
        v91 = [MEMORY[0x277CCA8D8] mainBundle];
        v92 = [v91 pathForResource:@"GPUCounterGraph" ofType:@"plist"];

        v93 = v92;
        v614 = objc_opt_new();
        if (v93)
        {
          v94 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v93];
          v95 = v94;
          if (v94)
          {
            v96 = [v94 objectForKey:@"counters"];
            v695 = MEMORY[0x277D85DD0];
            v696 = 3221225472;
            v697 = __BatchIdFilteredCounters_block_invoke;
            v698 = &unk_2796583A8;
            v699 = v614;
            [v96 enumerateKeysAndObjectsUsingBlock:&v695];
          }
        }

        [v614 addObject:@"GPUTime"];
        v97 = RemoveUnfilterableCounters(v600, v614);
        [v90 setObject:v97 forKeyedSubscript:@"DerivedCounters"];
        [v574 setObject:v90 forKeyedSubscript:@"DerivedCounterDictionary"];
        if (g_runningInCI == 1)
        {
          v98 = [MEMORY[0x277CCACA8] stringWithFormat:@"Filtered counter list from %lu to %lu counters", objc_msgSend(v600, "count"), objc_msgSend(v97, "count")];
          v99 = [v98 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

          v100 = *MEMORY[0x277D85E08];
          v101 = v99;
          fprintf(v100, "#CI-INFO# %s\n", [v99 UTF8String]);
        }

        v595 = GTMTLReplayHost_rawCounters(v97);
        v102 = GTMTLReplayHost_generateDerivedDataPayload(*Controller, 1);
        v103 = [v102 mutableCopy];

        v104 = GTMTLReplayHost_rawCountersToNormalizeSet(v97);
        [v103 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"NoBlitSampling"];
        [v103 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SampleEncoders"];
        [v103 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"SplitEncoderData"];
        [v103 setObject:v104 forKeyedSubscript:@"NormalizedCounters"];
        v105 = [v103 objectForKeyedSubscript:@"activePerEncoderDrawCallCount"];
        if (v105)
        {
          [v103 setObject:v574 forKeyedSubscript:@"derivedCounterInfo"];
          v106 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(*(a2 + 184) >> 17) & 1];
          [v103 setObject:v106 forKeyedSubscript:@"profileBatchIdFilter"];

          [v103 setObject:v595 forKeyedSubscript:@"profileCounters"];
          [v103 setObject:v577 forKeyedSubscript:@"MetalPluginName"];
          v107 = [MEMORY[0x277CCABB0] numberWithInt:obj];
          [v103 setObject:v107 forKeyedSubscript:@"gpuTarget"];

          v108 = GenerateSimplePriorityList(v105, 0);
          [v103 setObject:v108 forKeyedSubscript:@"encoderBatchPriorityList"];

          [v103 setObject:0 forKeyedSubscript:@"pause"];
          [v103 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"resume"];
          [v103 setObject:v577 forKeyedSubscript:@"MetalPluginName"];
          v109 = [v576 path];
          v110 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
          GTMTLReplayClient_streamBatchFilteredData(Controller, &v659, v103, &__block_literal_global_5948);
          if (g_runningInCI == 1)
          {
            v111 = [MEMORY[0x277CCACA8] stringWithFormat:@"Waiting for batch ID streaming..."];
            v112 = [v111 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

            v113 = *MEMORY[0x277D85E08];
            v114 = v112;
            fprintf(v113, "#CI-INFO# %s\n", [v112 UTF8String]);
          }

          [v660 waitUntilAllOperationsAreFinished];
          if (g_runningInCI == 1)
          {
            v115 = [MEMORY[0x277CCACA8] stringWithFormat:@"Finished"];
            v116 = [v115 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

            v117 = *MEMORY[0x277D85E08];
            v118 = v116;
            fprintf(v117, "#CI-INFO# %s\n", [v116 UTF8String]);
          }
        }

        else
        {
          if (g_runningInCI)
          {
            v243 = "#CI_ERROR# ";
          }

          else
          {
            v243 = "";
          }

          GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_CLI.m", "GTMTLReplay_CLI", 853, 1, "%s%s %u: activePerEncoderDrawCallCount missing in payload\n", v243, "int GTMTLReplay_CLI(const char *, GTMTLReplayCLIOptions, void (*)(NSData *__strong, NSURL *__strong))", 853);
        }

        goto LABEL_396;
      }

      v195 = "%s%s %u: -profileBatchIdFilter only supported on recent AGX devices\n";
      v196 = 820;
    }

    else
    {
      v82 = g_runningInCI;
      v195 = "%s%s %u: -profileBatchIdFilter only supported on AGX devices\n";
      v196 = 816;
    }

    if (v82)
    {
      v209 = "#CI_ERROR# ";
    }

    else
    {
      v209 = "";
    }

    GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_CLI.m", "GTMTLReplay_CLI", v196, 1, v195, v209, "int GTMTLReplay_CLI(const char *, GTMTLReplayCLIOptions, void (*)(NSData *__strong, NSURL *__strong))", v196);
    goto LABEL_397;
  }

  if ((v77 & 0x100) == 0)
  {
    if ((v594 & ((v77 & 0x400000u) >> 22)) == 1)
    {
      v125 = [Controller[1] defaultDevice];
      v126 = DYMTLReplayFrameProfiler_loadAnalysis(v125);
      v574 = [v126 mutableCopy];

      v127 = GTShaderProfilerStreamDataFromReplayDataSource();
      [v127 setMetalPluginName:v577];
      v128 = [v584 name];
      [v127 setMetalDeviceName:v128];

      v129 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
      v130 = [v129 lastPathComponent];
      [v127 setTraceName:v130];

      [v127 setSupportsFileFormatV2:1];
      v131 = [v574 objectForKeyedSubscript:@"DerivedCounterDictionary"];
      v132 = v131;
      if (v131)
      {
        verifyCounterDictionary(v131);
        v133 = [v132 objectForKeyedSubscript:@"DerivedCounters"];
        v134 = GTMTLReplayHost_rawCounters(v133);
        [v574 setObject:v134 forKeyedSubscript:@"profileCounters"];

        if (g_runningInCI == 1)
        {
          v135 = MEMORY[0x277CCACA8];
          v136 = [v574 description];
          v137 = [v135 stringWithFormat:@"Derived Counters %@", v136];

          v138 = [v137 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

          v139 = *MEMORY[0x277D85E08];
          v140 = v138;
          fprintf(v139, "#CI-INFO# %s\n", [v138 UTF8String]);
        }

        v615 = GTMTLReplayHost_rawCountersToNormalizeSet(v133);
      }

      else
      {
        v615 = 0;
      }

      v602 = [[GTGPUAPSConfig alloc] initForProfiling];
      v244 = [[GTGPUAPSConfig alloc] initForCounters];
      v245 = objc_opt_new();
      [v245 setObject:v577 forKeyedSubscript:@"MetalPluginName"];
      [v245 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CoalesceComputeEncoders"];
      [v245 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CoalesceBlitEncoders"];
      v246 = [MEMORY[0x277CCABB0] numberWithInt:obj];
      [v245 setObject:v246 forKeyedSubscript:@"gpuTarget"];

      v247 = v615;
      if (!v615)
      {
        v247 = objc_opt_new();
      }

      [v245 setObject:v247 forKeyedSubscript:@"NormalizedCounters"];
      if (!v615)
      {
      }

      [v245 setObject:v574 forKeyedSubscript:@"derivedCounterInfo"];
      [v245 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UseKicktimestamps"];
      v248 = [v602 toDictionary];
      [v245 setObject:v248 forKeyedSubscript:@"ProfilingConfig"];

      v249 = [v244 toDictionary];
      [v245 setObject:v249 forKeyedSubscript:@"CounterConfig"];

      [v245 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"useOverlap"];
      v250 = MEMORY[0x277CCABB0];
      v251 = [MEMORY[0x277CCAC38] processInfo];
      v252 = [v250 numberWithUnsignedLongLong:{objc_msgSend(v251, "physicalMemory")}];
      [v245 setObject:v252 forKeyedSubscript:@"PhysicalMemory"];

      [v245 setObject:&unk_2860D6AB8 forKeyedSubscript:@"DataExpansionFactor"];
      v253 = [v245 objectForKeyedSubscript:@"GPUState"];

      if (v253)
      {
        v254 = [v245 objectForKeyedSubscript:@"GPUState"];
        [v127 setProfiledPerformanceState:{objc_msgSend(v254, "intValue")}];
      }

      else
      {
        [v127 setProfiledPerformanceState:2];
      }

      v255 = [v245 objectForKeyedSubscript:@"useOverlap"];

      if (v255)
      {
        v256 = [v245 objectForKeyedSubscript:@"useOverlap"];
        v257 = [v256 BOOLValue];

        [v127 setProfiledExecutionMode:v257 ^ 1u];
      }

      else
      {
        [v127 setProfiledExecutionMode:0];
      }

      v258 = GTMTLReplayHost_generateDerivedDataPayload(*Controller, 1);
      [v245 addEntriesFromDictionary:v258];
      if (v127)
      {
        if (g_runningInCI == 1)
        {
          v259 = [MEMORY[0x277CCACA8] stringWithFormat:@"Collecting APS Data..."];
          v260 = [v259 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

          v261 = *MEMORY[0x277D85E08];
          v262 = v260;
          fprintf(v261, "#CI-INFO# %s\n", [v260 UTF8String]);
        }

        v695 = 0;
        v696 = &v695;
        v697 = 0x2020000000;
        LOBYTE(v698) = 0;
        v691 = 0;
        v692 = &v691;
        v693 = 0x2020000000;
        LOBYTE(v694) = 0;
        v687 = 0;
        v688 = &v687;
        v689 = 0x2020000000;
        LOBYTE(v690) = 0;
        v263 = dispatch_semaphore_create(0);
        v631[0] = MEMORY[0x277D85DD0];
        v631[1] = 3221225472;
        v631[2] = __GTMTLReplay_CLI_block_invoke_289;
        v631[3] = &unk_279658440;
        v264 = v263;
        v632 = v264;
        v634 = &v695;
        v635 = &v691;
        v636 = &v687;
        v265 = v127;
        v633 = v265;
        GTMTLReplayClient_collectAPSData(Controller, &v659, v245, v631);
        if (g_runningInCI == 1)
        {
          v266 = [MEMORY[0x277CCACA8] stringWithFormat:@"Waiting for APS Data..."];
          v267 = [v266 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

          v268 = *MEMORY[0x277D85E08];
          v269 = v267;
          fprintf(v268, "#CI-INFO# %s\n", [v267 UTF8String]);
        }

        dispatch_semaphore_wait(v264, 0xFFFFFFFFFFFFFFFFLL);
        [v660 waitUntilAllOperationsAreFinished];
        [v265 addPipelinePerformanceStatisticsData:Controller[8]];

        _Block_object_dispose(&v687, 8);
        _Block_object_dispose(&v691, 8);
        _Block_object_dispose(&v695, 8);
      }

      if ((*(a2 + 186) & 2) != 0)
      {
        v270 = BatchIdFiterableCounters();
        NSLog(&cfstr_FilteredBatchI.isa, v270);
        v271 = GTMTLReplayHost_generateDerivedDataPayload(*Controller, 1);
        v272 = [v271 mutableCopy];

        v273 = objc_opt_new();
        [v272 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"NoBlitSampling"];
        [v272 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SampleEncoders"];
        [v272 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"SplitEncoderData"];
        [v272 setObject:v273 forKeyedSubscript:@"NormalizedCounters"];
        v274 = [v272 objectForKeyedSubscript:@"activePerEncoderDrawCallCount"];
        v691 = 0;
        [v272 setObject:v574 forKeyedSubscript:@"derivedCounterInfo"];
        v275 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(*(a2 + 184) >> 17) & 1];
        [v272 setObject:v275 forKeyedSubscript:@"profileBatchIdFilter"];

        [v272 setObject:v270 forKeyedSubscript:@"profileCounters"];
        [v272 setObject:v577 forKeyedSubscript:@"MetalPluginName"];
        v276 = [MEMORY[0x277CCABB0] numberWithInt:obj];
        [v272 setObject:v276 forKeyedSubscript:@"gpuTarget"];

        v277 = GenerateSimplePriorityList(v274, &v691);
        [v272 setObject:v277 forKeyedSubscript:@"encoderBatchPriorityList"];

        [v272 setObject:0 forKeyedSubscript:@"pause"];
        [v272 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"resume"];
        [v272 setObject:v577 forKeyedSubscript:@"MetalPluginName"];
        v695 = 0;
        v696 = &v695;
        v697 = 0x2020000000;
        v698 = 0;
        v630[0] = MEMORY[0x277D85DD0];
        v630[1] = 3221225472;
        v630[2] = __GTMTLReplay_CLI_block_invoke_2_317;
        v630[3] = &unk_279658468;
        v630[4] = &v695;
        v630[5] = v691;
        GTMTLReplayClient_streamBatchFilteredData(Controller, &v659, v272, v630);
        if (g_runningInCI == 1)
        {
          v278 = [MEMORY[0x277CCACA8] stringWithFormat:@"Waiting for batch ID streaming..."];
          v279 = [v278 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

          v280 = *MEMORY[0x277D85E08];
          v281 = v279;
          fprintf(v280, "#CI-INFO# %s\n", [v279 UTF8String]);
        }

        [v660 waitUntilAllOperationsAreFinished];
        v282 = [v127 archivedBatchIdFilteredCounterData];
        v283 = [v282 count];
        v284 = v283 == v691;

        if (!v284 && g_runningInCI == 1)
        {
          v285 = MEMORY[0x277CCACA8];
          v286 = v691;
          v287 = [v127 archivedBatchIdFilteredCounterData];
          v288 = [v285 stringWithFormat:@"Invalid batch ID fitering counter count, expected max batches: %lu, got: %lu", v286, objc_msgSend(v287, "count")];

          v289 = [v288 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-ERROR# "];

          v290 = *MEMORY[0x277D85E08];
          v291 = v289;
          fprintf(v290, "#CI-ERROR# %s\n", [v289 UTF8String]);
        }

        _Block_object_dispose(&v695, 8);
      }

      if (g_runningInCI == 1)
      {
        v292 = [MEMORY[0x277CCACA8] stringWithFormat:@"Finished"];
        v293 = [v292 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

        v294 = *MEMORY[0x277D85E08];
        v295 = v293;
        fprintf(v294, "#CI-INFO# %s\n", [v293 UTF8String]);
      }

      if (*(a2 + 48))
      {
        v296 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
        v297 = [v296 stringByStandardizingPath];

        LOBYTE(v695) = 0;
        v298 = [MEMORY[0x277CCAA00] defaultManager];
        [v298 createDirectoryAtPath:v297 withIntermediateDirectories:1 attributes:0 error:0];

        v299 = [MEMORY[0x277CCAA00] defaultManager];
        v300 = [v299 fileExistsAtPath:v297 isDirectory:&v695];

        if (v300 && v695 == 1)
        {
          v301 = MEMORY[0x277CCACA8];
          v302 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
          v303 = [v302 lastPathComponent];
          v304 = [v303 stringByDeletingPathExtension];
          v305 = [v301 stringWithFormat:@"%@.gpuprofiler_raw", v304];
          v306 = [v297 stringByAppendingPathComponent:v305];

          v297 = v306;
        }

        v307 = [v297 pathExtension];
        v308 = [v307 isEqualToString:@"gpuprofiler_raw"];

        if ((v308 & 1) == 0)
        {
          v309 = [v297 stringByAppendingPathExtension:@"gpuprofiler_raw"];

          v297 = v309;
        }

        NSLog(&cfstr_SaveDestinatio.isa, v297);
        v310 = [MEMORY[0x277CCAA00] defaultManager];
        v311 = [v310 fileExistsAtPath:v297];

        if (v311)
        {
          v312 = [MEMORY[0x277CCAA00] defaultManager];
          [v312 removeItemAtPath:v297 error:0];
        }

        v313 = [MEMORY[0x277CBEBC0] fileURLWithPath:v297];
        v314 = [v127 encode:v313 error:0];

        v315 = [MEMORY[0x277CCAA00] defaultManager];
        NSLog(&cfstr_WrittenUAtDest.isa, [v315 fileExistsAtPath:v297], v297);

        [v127 cleanupLocalFiles];
      }
    }

    else
    {
      if ((v594 & ((v77 & 0x200000u) >> 21)) == 1)
      {
        v197 = objc_opt_new();
        [v197 setObject:v577 forKeyedSubscript:@"MetalPluginName"];
        v198 = [MEMORY[0x277CCABB0] numberWithInt:obj];
        [v197 setObject:v198 forKeyedSubscript:@"gpuTarget"];
        v574 = v197;

        [v197 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UseMTLCounters"];
        [v197 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UseKicktimestamps"];
        [v197 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CoalesceComputeEncoders"];
        [v197 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CoalesceBlitEncoders"];
        v199 = *(a2 + 164);
        if ((v199 & 0x80000000) == 0)
        {
          if (v199 <= 2)
          {
            v200 = 2;
          }

          else
          {
            v200 = v199;
          }

          v201 = [MEMORY[0x277CCABB0] numberWithInt:v200];
          [v197 setObject:v201 forKeyedSubscript:@"GPUState"];
        }

        v202 = GTMTLReplayHost_generateDerivedDataPayload(*Controller, 1);
        [v574 addEntriesFromDictionary:v202];
        v563 = v202;
        v203 = GTShaderProfilerStreamDataFromReplayDataSource();
        [v203 setMetalPluginName:v577];
        v204 = [v584 name];
        [v203 setMetalDeviceName:v204];

        v205 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
        v206 = [v205 lastPathComponent];
        [v203 setTraceName:v206];

        v207 = [v574 objectForKeyedSubscript:@"GPUState"];

        if (v207)
        {
          v208 = [v574 objectForKeyedSubscript:@"GPUState"];
          [v203 setProfiledPerformanceState:{objc_msgSend(v208, "intValue")}];
        }

        else
        {
          [v203 setProfiledPerformanceState:2];
        }

        v420 = [v574 objectForKeyedSubscript:@"useOverlap"];

        if (v420)
        {
          v421 = [v574 objectForKeyedSubscript:@"useOverlap"];
          v422 = [v421 BOOLValue];

          [v203 setProfiledExecutionMode:v422 ^ 1u];
        }

        else
        {
          [v203 setProfiledExecutionMode:0];
        }

        [v203 setProfiledProfilerMode:0];
        v695 = 0;
        v696 = &v695;
        v697 = 0x2020000000;
        v698 = 0;
        v691 = 0;
        v692 = &v691;
        v693 = 0x2020000000;
        v694 = 0;
        v687 = 0;
        v688 = &v687;
        v689 = 0x2020000000;
        v690 = 0;
        if (v203)
        {
          if (g_runningInCI == 1)
          {
            v423 = [MEMORY[0x277CCACA8] stringWithFormat:@"Collecting Timeline Data..."];
            v424 = [v423 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

            v425 = *MEMORY[0x277D85E08];
            v426 = v424;
            fprintf(v425, "#CI-INFO# %s\n", [v424 UTF8String]);
          }

          v627[0] = MEMORY[0x277D85DD0];
          v627[1] = 3221225472;
          v627[2] = __GTMTLReplay_CLI_block_invoke_3;
          v627[3] = &unk_279658490;
          v427 = v203;
          v628 = v427;
          v629 = &v695;
          GTMTLReplayClient_collectGPUShaderTimelineData(Controller, &v659, v574, v627);
          if (g_runningInCI == 1)
          {
            v428 = [MEMORY[0x277CCACA8] stringWithFormat:@"Waiting for GPU Timeline..."];
            v429 = [v428 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

            v430 = *MEMORY[0x277D85E08];
            v431 = v429;
            fprintf(v430, "#CI-INFO# %s\n", [v429 UTF8String]);
          }

          [v660 waitUntilAllOperationsAreFinished];
          if (g_runningInCI == 1)
          {
            v432 = [MEMORY[0x277CCACA8] stringWithFormat:@"Collecting Shader Profiler Data..."];
            v433 = [v432 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

            v434 = *MEMORY[0x277D85E08];
            v435 = v433;
            fprintf(v434, "#CI-INFO# %s\n", [v433 UTF8String]);
          }

          v624[0] = MEMORY[0x277D85DD0];
          v624[1] = 3221225472;
          v624[2] = __GTMTLReplay_CLI_block_invoke_4;
          v624[3] = &unk_279658490;
          v436 = v427;
          v625 = v436;
          v626 = &v691;
          GTMTLReplayClient_streamShaderProfilingData(Controller, &v659, v574, v624);
          if (g_runningInCI == 1)
          {
            v437 = [MEMORY[0x277CCACA8] stringWithFormat:@"Waiting for Shader Profiler..."];
            v438 = [v437 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

            v439 = *MEMORY[0x277D85E08];
            v440 = v438;
            fprintf(v439, "#CI-INFO# %s\n", [v438 UTF8String]);
          }

          [v660 waitUntilAllOperationsAreFinished];
          [v436 addPipelinePerformanceStatisticsData:Controller[8]];
          if (g_runningInCI == 1)
          {
            v441 = [MEMORY[0x277CCACA8] stringWithFormat:@"Colleting Batch ID Filtered Countersr..."];
            v442 = [v441 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

            v443 = *MEMORY[0x277D85E08];
            v444 = v442;
            fprintf(v443, "#CI-INFO# %s\n", [v442 UTF8String]);
          }

          if ((*(a2 + 186) & 2) != 0)
          {
            v445 = [Controller[1] defaultDevice];
            v446 = DYMTLReplayFrameProfiler_loadAnalysis(v445);
            v620 = [v446 mutableCopy];

            v447 = [v620 objectForKeyedSubscript:@"DerivedCounterDictionary"];
            v448 = [v447 mutableCopy];

            verifyCounterDictionary(v448);
            v598 = [v448 objectForKeyedSubscript:@"DerivedCounters"];
            v449 = MEMORY[0x277CBEB58];
            v450 = BatchIdFiterableCounters();
            v451 = [v449 setWithArray:v450];

            [v451 addObject:@"GPUTime"];
            v605 = RemoveUnfilterableCounters(v598, v451);
            [v448 setObject:v605 forKeyedSubscript:@"DerivedCounters"];
            [v620 setObject:v448 forKeyedSubscript:@"DerivedCounterDictionary"];
            v592 = GTMTLReplayHost_rawCounters(v605);
            v452 = GTMTLReplayHost_generateDerivedDataPayload(*Controller, 1);
            v453 = [v452 mutableCopy];

            v454 = GTMTLReplayHost_rawCountersToNormalizeSet(v605);
            [v453 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"NoBlitSampling"];
            [v453 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SampleEncoders"];
            [v453 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"SplitEncoderData"];
            [v453 setObject:v454 forKeyedSubscript:@"NormalizedCounters"];
            v580 = [v453 objectForKeyedSubscript:@"activePerEncoderDrawCallCount"];
            *&v671 = 0;
            [v453 setObject:v620 forKeyedSubscript:@"derivedCounterInfo"];
            v455 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(*(a2 + 184) >> 17) & 1];
            [v453 setObject:v455 forKeyedSubscript:@"profileBatchIdFilter"];

            [v453 setObject:v592 forKeyedSubscript:@"profileCounters"];
            [v453 setObject:v577 forKeyedSubscript:@"MetalPluginName"];
            v456 = [MEMORY[0x277CCABB0] numberWithInt:obj];
            [v453 setObject:v456 forKeyedSubscript:@"gpuTarget"];

            v457 = GenerateSimplePriorityList(v580, &v671);
            [v453 setObject:v457 forKeyedSubscript:@"encoderBatchPriorityList"];

            [v453 setObject:0 forKeyedSubscript:@"pause"];
            [v453 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"resume"];
            [v453 setObject:v577 forKeyedSubscript:@"MetalPluginName"];
            if (g_runningInCI == 1)
            {
              v458 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tBatch ID Filterable Counters: %@", v451];
              v459 = [v458 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

              v460 = *MEMORY[0x277D85E08];
              v461 = v459;
              fprintf(v460, "#CI-INFO# %s\n", [v459 UTF8String]);
            }

            v462 = [v451 allObjects];
            [v436 setBatchIdFilterableCounters:v462];

            v623[0] = MEMORY[0x277D85DD0];
            v623[1] = 3221225472;
            v623[2] = __GTMTLReplay_CLI_block_invoke_5;
            v623[3] = &unk_279658468;
            v623[4] = &v687;
            v623[5] = v671;
            GTMTLReplayClient_streamBatchFilteredData(Controller, &v659, v453, v623);
            if (g_runningInCI == 1)
            {
              v463 = [MEMORY[0x277CCACA8] stringWithFormat:@"Waiting for batch ID streaming..."];
              v464 = [v463 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

              v465 = *MEMORY[0x277D85E08];
              v466 = v464;
              fprintf(v465, "#CI-INFO# %s\n", [v464 UTF8String]);
            }

            [v660 waitUntilAllOperationsAreFinished];
            v467 = [v436 archivedBatchIdFilteredCounterData];
            v468 = [v467 count];
            v469 = v468 == v671;

            if (!v469 && g_runningInCI == 1)
            {
              v470 = MEMORY[0x277CCACA8];
              v471 = v671;
              v472 = [v436 archivedBatchIdFilteredCounterData];
              v473 = [v470 stringWithFormat:@"Invalid batch ID fitering counter count, expected max batches: %lu, got: %lu", v471, objc_msgSend(v472, "count")];

              v474 = [v473 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-ERROR# "];

              v475 = *MEMORY[0x277D85E08];
              v476 = v474;
              fprintf(v475, "#CI-ERROR# %s\n", [v474 UTF8String]);
            }
          }
        }

        if (g_runningInCI == 1)
        {
          v477 = [MEMORY[0x277CCACA8] stringWithFormat:@"Finished"];
          v478 = [v477 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

          v479 = *MEMORY[0x277D85E08];
          v480 = v478;
          fprintf(v479, "#CI-INFO# %s\n", [v478 UTF8String]);
        }

        if (*(a2 + 48))
        {
          v481 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
          LOBYTE(v671) = 0;
          v482 = [MEMORY[0x277CCAA00] defaultManager];
          v483 = [v482 fileExistsAtPath:v481 isDirectory:&v671];

          if (v483 && v671 == 1)
          {
            v484 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a2 + 48)];
            v485 = MEMORY[0x277CCACA8];
            v486 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
            v487 = [v486 lastPathComponent];
            v488 = [v487 stringByDeletingPathExtension];
            v489 = [v485 stringWithFormat:@"%@.gpuprofiler_raw", v488];
            v490 = [v484 stringByAppendingPathComponent:v489];

            v481 = v490;
          }

          v491 = [v481 pathExtension];
          v492 = [v491 isEqualToString:@"gpuprofiler_raw"];

          if (v492)
          {
            v493 = [v481 stringByAppendingPathExtension:@"gpuprofiler_raw"];

            v481 = v493;
          }

          v622 = v567;
          v494 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v203 requiringSecureCoding:1 error:&v622];
          v495 = v622;

          [v494 writeToFile:v481 atomically:0];
          v567 = v495;
        }

        _Block_object_dispose(&v687, 8);
        _Block_object_dispose(&v691, 8);
        _Block_object_dispose(&v695, 8);

        goto LABEL_395;
      }

      if ((v77 & 0x80000) != 0)
      {
        if (v594)
        {
          v411 = objc_opt_new();
          [v411 setObject:v577 forKeyedSubscript:@"MetalPluginName"];
          [v411 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UseMTLCounters"];
          [v411 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UseKicktimestamps"];
          [v411 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CoalesceComputeEncoders"];
          [v411 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CoalesceBlitEncoders"];
          v574 = v411;
          v412 = GTMTLReplayHost_generateDerivedDataPayload(*Controller, 1);
          [v574 addEntriesFromDictionary:v412];
          v413 = [v576 path];
          v414 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
          v415 = v412;
          if (g_runningInCI == 1)
          {
            v416 = [MEMORY[0x277CCACA8] stringWithFormat:@"Creating Streaming Shader Profiler Helper"];
            v417 = [v416 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

            v418 = *MEMORY[0x277D85E08];
            v419 = v417;
            fprintf(v418, "#CI-INFO# %s\n", [v417 UTF8String]);
          }

          GTMTLReplayClient_collectGPUShaderTimelineData(Controller, &v659, v574, &__block_literal_global_372);
          [v660 waitUntilAllOperationsAreFinished];

          v90 = v415;
          goto LABEL_396;
        }

        goto LABEL_397;
      }

      if ((v77 & 0x200) == 0)
      {
        if ((v77 & 0x80) == 0)
        {
          if ((v77 & 0x4000) != 0)
          {
            if (!strcmp(*(a2 + 128), "all"))
            {
              v522 = [Controller[1] defaultCommandQueue];
              v574 = [v522 availableCounters];
              v524 = MEMORY[0x277CBEBC0];
              v525 = [v572 stringByAppendingString:@"_allCountersInfo.plist"];
              v526 = [v524 fileURLWithPath:v525 isDirectory:0 relativeToURL:v576];
              [v574 writeToURL:v526 error:0];
            }

            else
            {
              v521 = objc_alloc(MEMORY[0x277CBEA60]);
              v522 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a2 + 128)];
              v574 = [v521 initWithContentsOfFile:v522];
            }

            v675 = @"profileCounters";
            v676 = v574;
            v527 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v676 forKeys:&v675 count:1];
            v528 = GTMTLReplayClient_derivedCounterData(Controller, &v659, v527);
            v529 = MEMORY[0x277CBEBC0];
            v530 = [v572 stringByAppendingPathExtension:@".csv"];
            v531 = [v529 fileURLWithPath:v530 isDirectory:0 relativeToURL:v576];
            WriteToCSVFromCounterData(v528, v531);

            v532 = MEMORY[0x277CBEBC0];
            v533 = [v572 stringByAppendingPathExtension:@".plist"];
            v534 = [v532 fileURLWithPath:v533 isDirectory:0 relativeToURL:v576];
            WriteToPlistFromCounterData(v528, v534);

            v90 = v527;
            goto LABEL_396;
          }

          if ((v77 & 0x8000) != 0)
          {
            v575 = GTMTLReplayHost_generateDerivedDataPayload(*Controller, v594);
            v523 = GTMTLReplayClient_queryShaderInfo(Controller, &v659, v575);
          }

          else
          {
            if ((v77 & 0x40000) != 0)
            {
              v574 = GTMTLReplayClient_collectPipelinePerformanceStatistics(Controller, v76);
              v535 = [v574 description];
              v536 = [v535 stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];

              v537 = MEMORY[0x277CBEBC0];
              v538 = [v572 stringByAppendingPathExtension:@"txt"];
              v539 = [v537 fileURLWithPath:v538 isDirectory:0 relativeToURL:v576];
              [v536 writeToURL:v539 atomically:0 encoding:4 error:0];

              v90 = v536;
              goto LABEL_396;
            }

            if ((v77 & 0x10000) == 0)
            {
              v232 = *(a2 + 24);
              if (v232 >= 1)
              {
                v233 = 0;
                v234 = MEMORY[0x277D85E08];
                v235 = v567;
                do
                {
                  if (g_runningInCI == 1)
                  {
                    v236 = [MEMORY[0x277CCACA8] stringWithFormat:@"replayCapture, loop count=%d/%d", v233, v232];
                    v237 = [v236 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

                    v238 = *v234;
                    v239 = v237;
                    fprintf(v238, "#CI-INFO# %s\n", [v237 UTF8String]);
                  }

                  v240 = objc_alloc_init(MEMORY[0x277CD6CC8]);
                  v241 = [Controller[1] defaultDevice];
                  [v240 setCaptureObject:v241];

                  GTMTLReplayController_debugSubCommandStop(Controller, *(*(*Controller + 16) + 12), 0);
                  if (*(a2 + 37) == 1)
                  {
                    v242 = [Controller[1] defaultCommandQueue];
                    [v242 finish];
                  }

                  GTMTLReplayController_rewind(Controller);

                  v235 = 0;
                  v567 = 0;
                  v233 = (v233 + 1);
                  v232 = *(a2 + 24);
                }

                while (v233 < v232);
              }
            }
          }
        }

        goto LABEL_397;
      }

      if (!v594)
      {
        goto LABEL_397;
      }

      v506 = objc_opt_new();
      [v506 setObject:v577 forKeyedSubscript:@"MetalPluginName"];
      [v506 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CollectLimiters"];
      v127 = GTMTLReplayHost_generateDerivedDataPayload(*Controller, 1);
      [v506 addEntriesFromDictionary:v127];
      v574 = v506;
      v507 = GTMTLReplayClient_embeddedQueryShaderInfo(Controller, &v659, v506);
      v508 = [v507 mutableCopy];

      [v508 setObject:v506 forKeyedSubscript:@"payload"];
      v509 = [v508 objectForKeyedSubscript:@"LimiterCounters"];
      if (v509)
      {
        v510 = [v508 objectForKeyedSubscript:@"limiter sample data"];
        v511 = v510 == 0;

        if (v511)
        {
          v621 = [v508 objectForKeyedSubscript:@"LimiterCounters"];
          v613 = [v621 objectForKeyedSubscript:@"DerivedCounterDictionary"];
          v512 = [v613 objectForKeyedSubscript:@"DerivedCounters"];
          v606 = GTMTLReplayHost_rawCountersToNormalizeSet(v512);

          [v574 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"NoBlitSampling"];
          [v574 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SampleEncoders"];
          [v574 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"SplitEncoderData"];
          v513 = [v613 objectForKeyedSubscript:@"counters"];
          [v574 setObject:v513 forKeyedSubscript:@"profileCounters"];

          [v574 setObject:v606 forKeyedSubscript:@"NormalizedCounters"];
          v514 = [v508 objectForKeyedSubscript:@"gputime"];
          v515 = [v508 objectForKeyedSubscript:@"consistent time"];
          v516 = v515;
          if (v515)
          {
            v517 = [v515 objectForKeyedSubscript:@"gputime"];
            v518 = v517;
            if (v517)
            {
              v519 = v517;

              v514 = v519;
            }
          }

          if (v514)
          {
            v520 = [v514 unsignedLongLongValue];
          }

          else
          {
            v520 = 0;
          }

          v540 = [v508 objectForKeyedSubscript:@"encoder time data"];
          objc = v516;
          v581 = v514;
          v541 = [v508 objectForKeyedSubscript:@"kick time data"];
          v599 = ProcessEncoderTimeData(v540, v541, v574, v520);
          v593 = v541;

          v542 = [v599 objectAtIndexedSubscript:1];
          v543 = ProcessDerivedCounterDataFromDevice(v621, v574, v542);

          v544 = GTMTLReplayHost_collectSoftwareEncoderCounters(*Controller, 1);
          v545 = ComputeDerivedCounters(v621, v543, v544);
          if (v545)
          {
            [v508 setObject:v545 forKeyedSubscript:@"LimiterCounterData"];
            v546 = [v545 objectForKeyedSubscript:@"derivedCounterDataForBottleneckAnalysis"];
            v570 = [v546 objectForKeyedSubscript:@"counters"];

            v677[0] = @"PerCounterEncoderCallData";
            v547 = [v545 objectForKeyedSubscript:@"derivedCounterDataForBottleneckAnalysis"];
            v548 = [v547 objectForKeyedSubscript:@"AverageSamples"];
            v549 = GTMTLReplayHost_createPerCounterCommandData(v570, v548);
            v677[1] = @"MetalPluginName";
            v678[0] = v549;
            v678[1] = v577;
            v550 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v678 forKeys:v677 count:2];

            v551 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v550 options:1 error:0];
            v552 = MEMORY[0x277CBEBC0];
            v553 = [v572 stringByAppendingPathExtension:@"json"];
            v554 = [v552 fileURLWithPath:v553 isDirectory:0 relativeToURL:v576];
            [v551 writeToURL:v554 atomically:0];
          }
        }
      }

      v555 = [v576 path];
      v556 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
    }

    v90 = v127;
    goto LABEL_396;
  }

  if (g_runningInCI == 1)
  {
    v141 = [MEMORY[0x277CCACA8] stringWithFormat:@"collectDerivedCounters"];
    v142 = [v141 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v143 = *MEMORY[0x277D85E08];
    v144 = v142;
    fprintf(v143, "#CI-INFO# %s\n", [v142 UTF8String]);
  }

  v145 = *Controller;
  v574 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v601 = v145[15];
  v146 = *(v601 + 12);
  if (v146 < 1)
  {
    v150 = &stru_2860BD438;
    v151 = &stru_2860BD438;
    v578 = &stru_2860BD438;
    goto LABEL_223;
  }

  v147 = 0;
  v148 = 0;
  v149 = v145[2];
  v616 = v145[16];
  v150 = &stru_2860BD438;
  v151 = &stru_2860BD438;
  v578 = &stru_2860BD438;
  do
  {
    v152 = (*(v601 + 24) + 24 * v148);
    v153 = *v152;
    if (!GTFenum_isBeginCommandBuffer(*(v616[3] + (v153 << 6) + 8)))
    {
      goto LABEL_206;
    }

    v589 = v148;
    v154 = v152[1];
    if (v153 + 1 >= v154)
    {
      goto LABEL_205;
    }

    v155 = v153 + 1;
    do
    {
      v156 = v616[3] + (v155 << 6);
      v157 = *(v156 + 8);
      if (v157 <= -15795)
      {
        if (v157 > -16124)
        {
          if ((v157 + 16123) <= 0x3C && ((1 << (v157 - 5)) & 0x1000000000000011) != 0)
          {
            goto LABEL_140;
          }

          v159 = (v157 + 15925) > 0x2D || ((1 << (v157 + 53)) & 0x200800000001) == 0;
          v160 = -15974;
        }

        else
        {
          if ((v157 + 0x4000) <= 0x2D && ((1 << v157) & 0x200800081001) != 0)
          {
            goto LABEL_140;
          }

          v159 = (v157 + 16292) > 0x34 || ((1 << (v157 - 92)) & 0x10000000000811) == 0;
          v160 = -16136;
        }

        goto LABEL_135;
      }

      if (v157 <= -15314)
      {
        if (v157 > -15608)
        {
          v162 = v157 == -15607 || v157 == -15570;
          v163 = -15491;
        }

        else
        {
          v162 = (v157 + 15676) <= 0x1C && ((1 << (v157 + 60)) & 0x10008101) != 0 || v157 == -15794;
          v163 = -15743;
        }

        if (!v162 && v157 != v163)
        {
          goto LABEL_165;
        }

LABEL_140:
        if (v157 > -16289)
        {
          if (v157 != -16288 && v157 != -16281 && v157 != -15890)
          {
            goto LABEL_194;
          }
        }

        else if (v157 != -16384)
        {
          if (v157 == -16365)
          {
            v171 = GTTraceFunc_argumentBytesWithMap((v616[3] + (v155 << 6)), *(v156 + 13), v149);
            v172 = GTTraceFunc_argumentBytesWithMap(v156, v171[8], v149);
            if (v172)
            {
              v173 = [MEMORY[0x277CCACA8] stringWithUTF8String:v172];
              v170 = v150;
            }

            else
            {
LABEL_202:
              v170 = v150;
              v173 = &stru_2860BD438;
            }

LABEL_196:

            v154 = v152[1];
            v150 = v173;
            goto LABEL_197;
          }

          if (v157 != -16339)
          {
LABEL_194:
            v170 = v151;
            v151 = &stru_2860BD438;
            goto LABEL_195;
          }
        }

        v168 = GTTraceFunc_argumentBytesWithMap((v616[3] + (v155 << 6)), *(v156 + 13), v149);
        v169 = GTTraceFunc_argumentBytesWithMap(v156, v168[8], v149);
        if (!v169)
        {
          goto LABEL_194;
        }

        [MEMORY[0x277CCACA8] stringWithUTF8String:v169];
        v151 = v170 = v151;
LABEL_195:
        v173 = v150;
        goto LABEL_196;
      }

      if (v157 > -15069)
      {
        v159 = (v157 + 14950) > 0x2D || ((1 << (v157 + 102)) & 0x280000000001) == 0;
        v160 = -15068;
      }

      else
      {
        v159 = (v157 + 15313) > 0x17 || ((1 << (v157 - 47)) & 0x800041) == 0;
        v160 = -15127;
      }

LABEL_135:
      if (!v159 || v157 == v160)
      {
        goto LABEL_140;
      }

LABEL_165:
      if (GTFenumIsSampledCall(*(v156 + 8), v594))
      {
        InclusiveRange = GroupBuilder_findInclusiveRange(*(v601 + 12), *(v601 + 24), v155);
        if (v147 == InclusiveRange)
        {
          v176 = v147;
        }

        else
        {
          v176 = InclusiveRange;
          v177 = objc_alloc_init(MEMORY[0x277CBEB18]);
          if (v176)
          {
            v178 = v176;
            do
            {
              v179 = v616[3] + (*v178 << 6);
              v180 = *(v179 + 8);
              if (GTFenum_isPushDebugGroup(v180))
              {
                if (v180 <= -16245)
                {
                  v181 = v180 == -16374 || v180 == -16323;
                  v182 = -16283;
                }

                else if (v180 > -15883)
                {
                  v181 = v180 == -15786;
                  v182 = -15882;
                }

                else
                {
                  v181 = v180 == -16244;
                  v182 = -16065;
                }

                if (v181 || v180 == v182)
                {
                  v184 = GTTraceFunc_argumentBytesWithMap(v179, *(v179 + 13), v149);
                  v185 = GTTraceFunc_argumentBytesWithMap(v179, v184[8], v149);
                  if (v185)
                  {
                    v186 = [MEMORY[0x277CCACA8] stringWithUTF8String:v185];
                    [v177 addObject:v186];
                  }
                }
              }

              v187 = v178[2];
              if (v187)
              {
                v178 -= 6 * v187;
              }

              else
              {
                v178 = 0;
              }
            }

            while (v187);
          }

          v188 = v177;
          v189 = [v188 count];
          if (v189 >= 2)
          {
            v190 = 0;
            v191 = v189 >> 1;
            v192 = v189 - 1;
            do
            {
              [v188 exchangeObjectAtIndex:v190++ withObjectAtIndex:v192--];
            }

            while (v191 != v190);
          }

          v193 = [v188 componentsJoinedByString:@"->"];

          v578 = v193;
        }

        v170 = [MEMORY[0x277CCABB0] numberWithInt:v155];
        v695 = v170;
        v696 = v150;
        v697 = v151;
        v698 = v578;
        v194 = [MEMORY[0x277CBEA60] arrayWithObjects:&v695 count:4];
        [v574 addObject:v194];

        v147 = v176;
        goto LABEL_195;
      }

      if (GTFenum_isEndEncoding(v157))
      {
        goto LABEL_194;
      }

      if (GTFenum_isEndCommandBuffer(v157))
      {
        goto LABEL_202;
      }

      v170 = v150;
      v173 = &stru_2860BD438;
      if (v157 == -15343)
      {
        goto LABEL_196;
      }

LABEL_197:
      ++v155;
    }

    while (v155 < v154);
    v146 = *(v601 + 12);
LABEL_205:
    v148 = v152[3] + v589;
LABEL_206:
    ++v148;
  }

  while (v148 < v146);
LABEL_223:

  if ((v594 & 1) == 0)
  {
    v685[0] = @"MetalPluginName";
    v685[1] = @"GPUState";
    v686[0] = v577;
    v686[1] = &unk_2860D67D0;
    v223 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v686 forKeys:v685 count:2];
    v563 = GTMTLReplayClient_queryShaderInfo(Controller, &v659, v223);

    v224 = [v563 objectForKeyedSubscript:@"derivedCounterData"];
    v225 = [v224 mutableCopy];

    if (*(a2 + 56))
    {
      v226 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
      v227 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a2 + 56)];
      v228 = GTMTLReplayClient_loadDerivedCounterInfo(v226, v227);

      v229 = GTMTLReplayClient_mergeDerivedCounterInfo(v225, v228);
      v230 = [v229 mutableCopy];

      v231 = v230;
    }

    else
    {
      v231 = v225;
    }

    v561 = v231;
    v316 = [v231 objectForKeyedSubscript:@"DerivedCounterDictionary"];
    v317 = [v316 mutableCopy];

    verifyCounterDictionary(v317);
    v564 = v317;
    v318 = [v564 objectForKeyedSubscript:@"DerivedCounters"];
    v217 = [v318 mutableCopy];

    v319 = [v564 objectForKeyedSubscript:@"Instruments"];
    v617 = v319;
    if (v319)
    {
      v320 = [v319 objectForKeyedSubscript:@"Profiles"];
      v321 = v320;
      if (v320)
      {
        v322 = [v320 allKeys];
        v323 = v322;
        if (v322)
        {
          v673 = 0u;
          v674 = 0u;
          v671 = 0u;
          v672 = 0u;
          v324 = [v322 countByEnumeratingWithState:&v671 objects:&v695 count:16];
          if (v324)
          {
            v603 = *v672;
            v608 = v321;
            obja = v323;
            do
            {
              v611 = 0;
              v590 = v324;
              do
              {
                if (*v672 != v603)
                {
                  objc_enumerationMutation(obja);
                }

                v325 = [v608 objectForKeyedSubscript:*(*(&v671 + 1) + 8 * v611)];
                v326 = v325;
                if (v325)
                {
                  v327 = [v325 objectForKeyedSubscript:@"DerivedCounters"];
                  v669 = 0u;
                  v670 = 0u;
                  v667 = 0u;
                  v668 = 0u;
                  v328 = [v327 countByEnumeratingWithState:&v667 objects:&v691 count:16];
                  v596 = v326;
                  if (v328)
                  {
                    v329 = *v668;
                    do
                    {
                      for (i = 0; i != v328; ++i)
                      {
                        if (*v668 != v329)
                        {
                          objc_enumerationMutation(v327);
                        }

                        v331 = [*(*(&v667 + 1) + 8 * i) allValues];
                        v665 = 0u;
                        v666 = 0u;
                        v663 = 0u;
                        v664 = 0u;
                        v332 = [v331 countByEnumeratingWithState:&v663 objects:&v687 count:16];
                        if (v332)
                        {
                          v333 = *v664;
                          do
                          {
                            for (j = 0; j != v332; ++j)
                            {
                              if (*v664 != v333)
                              {
                                objc_enumerationMutation(v331);
                              }

                              [v217 removeObjectForKey:*(*(&v663 + 1) + 8 * j)];
                            }

                            v332 = [v331 countByEnumeratingWithState:&v663 objects:&v687 count:16];
                          }

                          while (v332);
                        }
                      }

                      v328 = [v327 countByEnumeratingWithState:&v667 objects:&v691 count:16];
                    }

                    while (v328);
                  }

                  v326 = v596;
                }

                ++v611;
              }

              while (v611 != v590);
              v323 = obja;
              v324 = [obja countByEnumeratingWithState:&v671 objects:&v695 count:16];
              v321 = v608;
            }

            while (v324);
          }
        }
      }

      v319 = v617;
    }

    [v564 setObject:v217 forKeyedSubscript:@"DerivedCounters"];
    verifyCounterDictionary(v564);
    [v561 setObject:v564 forKeyedSubscript:@"DerivedCounterDictionary"];
    v335 = MEMORY[0x277CBEBC0];
    v336 = [v572 stringByAppendingString:@"_derivedCounterInfoResult.plist"];
    v337 = [v335 fileURLWithPath:v336 isDirectory:0 relativeToURL:v576];
    [v561 writeToURL:v337 atomically:0];

    v560 = GTMTLReplayHost_rawCounters(v217);
    if (![v560 count])
    {
      if (g_runningInCI)
      {
        v338 = "#CI_ERROR# ";
      }

      else
      {
        v338 = "";
      }

      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_CLI.m", "GTMTLReplay_CLI", 917, 1, "%s%s %u: No raw counters remain from derived counter list: %@\n", v338, "int GTMTLReplay_CLI(const char *, GTMTLReplayCLIOptions, void (*)(NSData *__strong, NSURL *__strong))", 917, v217);
    }

    v339 = GTMTLReplayHost_rawCountersToNormalizeSet(v217);
    v683[0] = @"NoBlitSampling";
    v683[1] = @"SampleEncoders";
    v684[0] = MEMORY[0x277CBEC38];
    v684[1] = MEMORY[0x277CBEC38];
    v683[2] = @"SplitEncoderData";
    v683[3] = @"profileCounters";
    v684[2] = MEMORY[0x277CBEC28];
    v684[3] = v560;
    v683[4] = @"NormalizedCounters";
    v558 = v339;
    v684[4] = v339;
    v557 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v684 forKeys:v683 count:5];
    v340 = GTMTLReplayClient_derivedCounterData(Controller, &v659, v557);
    v562 = [v340 mutableCopy];

    v681 = @"frameProfile";
    v341 = [v563 objectForKeyedSubscript:?];
    v682 = v341;
    v342 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v682 forKeys:&v681 count:1];
    [v562 setObject:v342 forKeyedSubscript:@"Timing Data"];

    v343 = [v562 objectForKeyedSubscript:@"EncoderData"];
    if (!v343)
    {
      if (g_runningInCI)
      {
        v344 = "#CI_ERROR# ";
      }

      else
      {
        v344 = "";
      }

      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_CLI.m", "GTMTLReplay_CLI", 936, 1, "%s%s %u: encoderData is nil\n", v344, "int GTMTLReplay_CLI(const char *, GTMTLReplayCLIOptions, void (*)(NSData *__strong, NSURL *__strong))", 936);
    }

    v345 = GTMTLReplayHost_collectSoftwareEncoderCounters(*Controller, 0);
    v346 = ComputeDerivedCounters(v561, v343, v345);
    v347 = [v346 mutableCopy];

    [v347 setObject:v574 forKeyedSubscript:@"TraceInformation"];
    v559 = [v347 copy];
    v348 = MEMORY[0x277CBEBC0];
    v349 = [v572 stringByAppendingString:@"_encoder_derivedComputedData.plist"];
    v350 = [v348 fileURLWithPath:v349 isDirectory:0 relativeToURL:v576];
    [v559 writeToURL:v350 atomically:0];

    v351 = *Controller;
    v609 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v569 = v351;
    v565 = v351[15];
    v352 = *(v565 + 12);
    if (v352 < 1)
    {
LABEL_353:
      v384 = [v609 copy];

      v385 = ComputeDerivedCounters(v561, v562, v384);
      v386 = [v385 mutableCopy];

      [v386 setObject:v574 forKeyedSubscript:@"TraceInformation"];
      v619 = [v386 copy];
      v387 = MEMORY[0x277CBEBC0];
      v388 = [v572 stringByAppendingString:@"_derivedComputedData.plist"];
      v389 = [v387 fileURLWithPath:v388 isDirectory:0 relativeToURL:v576];
      [v619 writeToURL:v389 atomically:0];

      v390 = MEMORY[0x277CBEBC0];
      v391 = [v572 stringByAppendingString:@"_derivedCounterDataFromDeviceResult.plist"];
      v392 = [v390 fileURLWithPath:v391 isDirectory:0 relativeToURL:v576];
      [v562 writeToURL:v392 atomically:0];

      v393 = [v619 objectForKeyedSubscript:@"derivedCounterDataForBottleneckAnalysis"];
      v394 = [v393 objectForKeyedSubscript:@"counters"];

      v679[0] = @"PerCounterDrawCallData";
      v395 = [v619 objectForKeyedSubscript:@"derivedCounterDataForBottleneckAnalysis"];
      v396 = [v395 objectForKeyedSubscript:@"AverageSamples"];
      v397 = GTMTLReplayHost_createPerCounterCommandData(v394, v396);
      v680[0] = v397;
      v679[1] = @"PerCounterEncoderCallData";
      v398 = [v559 objectForKeyedSubscript:@"derivedCounterDataForBottleneckAnalysis"];
      v399 = [v398 objectForKeyedSubscript:@"AverageSamples"];
      v400 = GTMTLReplayHost_createPerCounterCommandData(v394, v399);
      v680[1] = v400;
      v679[2] = @"MetalPluginName";
      v401 = [v561 objectForKeyedSubscript:?];
      v680[2] = v401;
      v402 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v680 forKeys:v679 count:3];

      v403 = [v619 objectForKeyedSubscript:@"derivedCounterDataForBottleneckAnalysis"];
      v404 = [v403 objectForKeyedSubscript:@"AverageSamples"];
      verifyPerCounterCommandData(v402, @"PerCounterDrawCallData", v394, [v404 count]);

      v405 = [v559 objectForKeyedSubscript:@"derivedCounterDataForBottleneckAnalysis"];
      v406 = [v405 objectForKeyedSubscript:@"AverageSamples"];
      verifyPerCounterCommandData(v402, @"PerCounterEncoderCallData", v394, [v406 count]);

      v407 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v402 options:1 error:0];
      v408 = MEMORY[0x277CBEBC0];
      v409 = [v572 stringByAppendingPathExtension:@"json"];
      v410 = [v408 fileURLWithPath:v409 isDirectory:0 relativeToURL:v576];
      [v407 writeToURL:v410 atomically:0];

      goto LABEL_355;
    }

    v353 = 0;
    v579 = v351[2];
    v591 = v351[16];
    while (1)
    {
      v568 = v353;
      v354 = (*(v565 + 24) + 24 * v353);
      if (GTMTLReplayHost_IsFuncEnumSampledEncoder(*(*(v591 + 24) + (*v354 << 6) + 8), 0, 0))
      {
        RenderPassDescriptor = GetRenderPassDescriptor();
        v612 = RenderPassDescriptorContainsClear(RenderPassDescriptor);
        v356 = *v354;
        objb = v354;
        if (v356 + 1 < v354[1])
        {
          v357 = v356 + 1;
          while (1)
          {
            v597 = v357;
            v358 = *(v591 + 24) + (v357 << 6);
            v359 = *(v358 + 8);
            if (!GTFenumIsSampledCall(v359, 0))
            {
              break;
            }

            v360 = SoftwareCounterForFunc(v358, v579);
            v362 = v361;
            v363 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v612];
            v691 = v363;
            v364 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v360];
            v692 = v364;
            v365 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v362];
            v693 = v365;
            v366 = [MEMORY[0x277CBEA60] arrayWithObjects:&v691 count:3];
            [v609 addObject:v366];

LABEL_349:
            v357 = v597 + 1;
            if (v597 + 1 >= objb[1])
            {
              goto LABEL_350;
            }
          }

          if (v359 >> 2 != 1073737833)
          {
            goto LABEL_349;
          }

          GetExecuteCommandsInBufferArgs(&v695, v358, v569[2]);
          v702 = 0;
          v701 = 0u;
          memset(v700, 0, sizeof(v700));
          Object = GTMTLSMContext_getObject(*v569[5], v695, *v358);
          GTMTLCreateIndirectCommandEncoder(v700, Object[14]);
          v368 = v697;
          if (!v697)
          {
            goto LABEL_349;
          }

          v369 = 0;
          v618 = v698;
          v370 = v702;
          v371 = v700[1];
          v604 = *(&v701 + 1);
          v372 = v696 << 32;
          while (2)
          {
            v373 = 0;
            v374 = v618 + v370 * (v372 >> 32);
            v375 = *&v374[v371];
            if (v375 <= 1)
            {
              if (!v375)
              {
                goto LABEL_348;
              }

              v376 = 0;
              if (v375 != 1)
              {
                goto LABEL_347;
              }

              v373 = 0;
              v377 = &v374[v604 + 24];
            }

            else if (v375 == 2)
            {
              v378 = &v374[v604];
              v373 = *(v378 + 1);
              v377 = v378 + 32;
            }

            else
            {
              if (v375 != 4)
              {
                v376 = 0;
                if (v375 == 8)
                {
                  v373 = 0;
                  v377 = &v374[v604 + 64];
                  break;
                }

LABEL_347:
                v379 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v612];
                v687 = v379;
                v380 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v373];
                v688 = v380;
                v381 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v376];
                v689 = v381;
                v382 = [MEMORY[0x277CBEA60] arrayWithObjects:&v687 count:3];
                [v609 addObject:v382];

LABEL_348:
                ++v369;
                v372 += 0x100000000;
                if (v368 <= v369)
                {
                  goto LABEL_349;
                }

                continue;
              }

              v373 = 0;
              v377 = &v374[v604 + 56];
            }

            break;
          }

          v376 = *v377;
          goto LABEL_347;
        }

LABEL_350:
        v383 = objb[3] + v568;
        v352 = *(v565 + 12);
      }

      else
      {
        v383 = v568;
      }

      v353 = v383 + 1;
      if (v353 >= v352)
      {
        goto LABEL_353;
      }
    }
  }

  v210 = [Controller[1] defaultDevice];
  v211 = DYMTLReplayFrameProfiler_loadAnalysis(v210);
  v563 = [v211 mutableCopy];

  v212 = [v563 objectForKeyedSubscript:@"DerivedCounterDictionary"];
  verifyCounterDictionary(v212);
  v561 = v212;
  v564 = [v212 objectForKeyedSubscript:@"DerivedCounters"];
  v213 = GTMTLReplayHost_rawCounters(v564);
  [v563 setObject:v213 forKeyedSubscript:@"profileCounters"];

  v214 = GTMTLReplayHost_generateDerivedDataPayload(*Controller, 1);
  v215 = [v214 mutableCopy];

  v560 = GTMTLReplayHost_rawCountersToNormalizeSet(v564);
  [v215 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"NoBlitSampling"];
  [v215 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SampleEncoders"];
  [v215 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"SplitEncoderData"];
  [v215 setObject:v560 forKeyedSubscript:@"NormalizedCounters"];
  [v215 setObject:v563 forKeyedSubscript:@"derivedCounterInfo"];
  [v215 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UseMTLCounters"];
  [v215 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UseKicktimestamps"];
  v216 = [MEMORY[0x277CCABB0] numberWithInt:obj];
  [v215 setObject:v216 forKeyedSubscript:@"gpuTarget"];

  if ((obj & 0x80000000) != 0)
  {
    GTMTLReplayClient_embeddedDerivedCounterData(Controller, &v659, v563);
  }

  v217 = v215;
  [v217 setObject:v577 forKeyedSubscript:@"MetalPluginName"];
  v562 = [v576 path];
  v557 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  if (g_runningInCI == 1)
  {
    v218 = v217;
    v219 = [MEMORY[0x277CCACA8] stringWithFormat:@"Creating Streaming Derived Counters Helper"];
    v220 = [v219 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v221 = *MEMORY[0x277D85E08];
    v222 = v220;
    fprintf(v221, "#CI-INFO# %s\n", [v220 UTF8String]);

    v217 = v218;
  }

  GTMTLReplayClient_streamDerivedCounterData(Controller, &v659, v217);
  [v660 waitUntilAllOperationsAreFinished];
  v558 = v217;
LABEL_355:

LABEL_395:
  v90 = v563;
LABEL_396:

LABEL_397:
  if (g_runningInCI == 1)
  {
    v496 = [MEMORY[0x277CCACA8] stringWithFormat:@"commandQueue finish"];
    v497 = [v496 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v498 = *MEMORY[0x277D85E08];
    v499 = v497;
    fprintf(v498, "#CI-INFO# %s\n", [v497 UTF8String]);
  }

  v500 = [Controller[1] defaultCommandQueue];
  [v500 finish];
  [v660 waitUntilAllOperationsAreFinished];
  if (g_runningInCI == 1)
  {
    v501 = [MEMORY[0x277CCACA8] stringWithFormat:@"normal exit"];
    v502 = [v501 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v503 = *MEMORY[0x277D85E08];
    v504 = v502;
    fprintf(v503, "#CI-INFO# %s\n", [v502 UTF8String]);
  }

  __destructor_8_s0_S_s8_s16_s40_s48_s56_s64_s80_s88_s96_s104_s112_s120_s128_s136_s144_s152_s160_s168_s176(&v645);
  v14 = 0;
LABEL_402:

  return v14;
}

void sub_24D954D18(_Unwind_Exception *a1)
{
  __destructor_8_s0_S_s8_s16_s40_s48_s56_s64_s80_s88_s96_s104_s112_s120_s128_s136_s144_s152_s160_s168_s176(&STACK[0x268]);
  __destructor_8_s0_s8_s16(&STACK[0x330]);
  _Unwind_Resume(a1);
}

uint64_t GenerateThumbnails()
{
  v1 = MEMORY[0x28223BE20]();
  v347 = v2;
  v4 = v3;
  v339 = v5;
  v368 = v6;
  v423 = v1;
  v541 = *MEMORY[0x277D85DE8];
  v340 = v7;
  v8 = objc_alloc(MEMORY[0x277CBEB38]);
  v471[0] = MEMORY[0x277CBEC38];
  v470[0] = @"enable";
  v470[1] = @"resolution";
  v9 = v4[46];
  v352 = v4;
  if ((v9 & 8) != 0)
  {
    v10 = &unk_2860D6218;
  }

  else
  {
    v468[0] = @"width";
    v4 = [MEMORY[0x277CCABB0] numberWithInt:v4[39]];
    v469[0] = v4;
    v468[1] = @"height";
    v0 = [MEMORY[0x277CCABB0] numberWithInt:v352[40]];
    v469[1] = v0;
    v468[2] = @"format";
    v469[2] = &unk_2860D6818;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v469 forKeys:v468 count:3];
  }

  v11 = (v9 & 8) == 0;
  v471[1] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v471 forKeys:v470 count:2];
  v367 = [v8 initWithDictionary:v12];

  if (v11)
  {
  }

  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, v13);
  v355 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:64];
  v422 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  v15 = v352[46];
  if ((v15 & 4) != 0)
  {
    v425 = *v423;
    parent[0] = 0;
    v502[0] = 0;
    apr_pool_create_ex(parent, 0, 0, v14);
    v391 = parent[0];
    apr_pool_create_ex(v502, parent[0], 0, v142);
    v360 = objc_alloc_init(MEMORY[0x277CBEB38]);
    obja = objc_alloc_init(MEMORY[0x277CBEB18]);
    v143 = v425[15];
    if (*(v143 + 12) >= 1)
    {
      v144 = 0;
      pb = v502[0];
      do
      {
        v408 = (*(v143 + 24) + 24 * v144);
        v145 = *(v425[16] + 24) + (*v408 << 6);
        v146 = *(v145 + 8);
        if (v146 != -16286)
        {
          ConstructorType = GTFenum_getConstructorType(v146);
          if (GTFenum_isMTLCommandEncoder(ConstructorType))
          {
            v509 = *(v425 + 1);
            v510 = pb;
            v148 = GTResourceTrackerMakeWithDescriptor(&v509);
            GTResourceTrackerProcessFunction();
            bzero(&v509, 0x2BA0uLL);
            GTMTLSMCommandEncoder_processTraceFunc(&v509, v145, v425[2]);
            if (v509 == 70)
            {
              v149 = 0;
              v150 = v512;
              v151 = v512;
              do
              {
                AddAttachmentToArray(obja, v151, v149++, v148[5], v425[1]);
                v151 += 8;
              }

              while (v149 != 8);
              AddAttachmentToArray(obja, (v150 + 672), 8, v148[5], v425[1]);
              AddAttachmentToArray(obja, (v150 + 720), 9, v148[5], v425[1]);
            }

            v415 = [obja copy];
            v152 = v148[5];
            *(v152 + 24) = 0;
            *(v152 + 32) = 0;
            *(v152 + 16) = v152;
            *(v152 + 40) = 0;
            for (i = (v152 + 16); ; i = v155)
            {
              v154 = apr_hash_next(i);
              v155 = v154;
              if (!v154)
              {
                break;
              }

              v156 = *(*(v154 + 1) + 32);
              if (*(v156 + 10) == 80 && (v156[4] & 0x8000000000000000) == 0)
              {
                v157 = *v156;
                v158 = v415;
                v473 = 0u;
                v474 = 0u;
                v475 = 0u;
                v476 = 0u;
                v159 = v158;
                v160 = [v159 countByEnumeratingWithState:&v473 objects:&v525 count:16];
                if (v160)
                {
                  v161 = *v474;
                  while (2)
                  {
                    for (j = 0; j != v160; ++j)
                    {
                      if (*v474 != v161)
                      {
                        objc_enumerationMutation(v159);
                      }

                      v163 = [*(*(&v473 + 1) + 8 * j) objectForKeyedSubscript:@"DependencyGraphRequestedTextureID"];
                      v164 = [v163 unsignedLongLongValue] == v157;

                      if (v164)
                      {

                        goto LABEL_161;
                      }
                    }

                    v160 = [v159 countByEnumeratingWithState:&v473 objects:&v525 count:16];
                    if (v160)
                    {
                      continue;
                    }

                    break;
                  }
                }

                *&v493 = @"DependencyGraphRequestedTextureID";
                v165 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v157];
                *&v498 = v165;
                v166 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v498 forKeys:&v493 count:1];
                [obja addObject:v166];
              }

LABEL_161:
              ;
            }

            if ([obja count])
            {
              v167 = v408[1];
              v168 = [obja copy];
              v169 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v167];
              [v360 setObject:v168 forKeyedSubscript:v169];

              [obja removeAllObjects];
            }

            apr_pool_clear(pb);

            v143 = v425[15];
          }
        }

        ++v144;
      }

      while (v144 < *(v143 + 12));
    }

    apr_pool_destroy(v391);

    [v367 setObject:v360 forKeyedSubscript:@"DependencyGraphRequestedTexturesForThumbnail"];
    v426 = *v423;
    v170 = v367;
    v392 = v355;
    v343 = v170;
    v365 = [v170 objectForKeyedSubscript:@"DependencyGraphRequestedTexturesForThumbnail"];
    v377 = [v170 objectForKeyedSubscript:@"resolution"];
    v350 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v365, "count")}];
    v171 = [v365 allKeys];
    v172 = [v171 sortedArrayUsingSelector:sel_compare_];

    v508 = 0u;
    v507 = 0u;
    v506 = 0u;
    *parent = 0u;
    v348 = v172;
    v353 = [v348 countByEnumeratingWithState:parent objects:&v509 count:16];
    if (v353)
    {
      v345 = *v506;
      v370 = *MEMORY[0x277CCA450];
      do
      {
        for (k = 0; k != v353; ++k)
        {
          if (*v506 != v345)
          {
            objc_enumerationMutation(v348);
          }

          v358 = *(parent[1] + k);
          v416 = [v358 unsignedLongLongValue];
          v173 = [v365 objectForKeyedSubscript:v358];
          v380 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v504 = 0u;
          v503 = 0u;
          memset(v502, 0, sizeof(v502));
          v373 = v173;
          v386 = [v373 countByEnumeratingWithState:v502 objects:&v525 count:16];
          if (v386)
          {
            v383 = *v502[2];
            do
            {
              for (m = 0; m != v386; ++m)
              {
                if (*v502[2] != v383)
                {
                  objc_enumerationMutation(v373);
                }

                v175 = *(v502[1] + m);
                objb = [v175 objectForKeyedSubscript:@"DependencyGraphRequestedTextureID"];
                AliasStream = GetAliasStream(v426[3], [objb unsignedLongLongValue], v426[11] + v416);
                if (AliasStream)
                {
                  v177 = *AliasStream;
                }

                else
                {
                  v177 = 0;
                }

                v496 = 0;
                v495 = 0u;
                v494 = 0u;
                v493 = 0u;
                GTMTLSMContext_getTextureDescriptor(v426[5], v177, v426[11] + v416, &v493);
                if (DWORD2(v494))
                {
                  v178 = WORD1(v495);
                  if (WORD1(v495) - 261 >= 2)
                  {
                    if (WORD1(v495) == 1)
                    {
                      v178 = 10;
                    }
                  }

                  else
                  {
                    v178 = 253;
                  }

                  v182 = [v175 objectForKeyedSubscript:@"DependencyGraphRequestedTextureAttachmentIndex"];
                  v181 = v182;
                  if (v182 && (v178 == 260 || v178 == 255) && [v182 unsignedIntegerValue] == 9)
                  {
                    WORD1(v495) = 253;
                    v178 = 253;
                  }

                  v409 = [v175 mutableCopy];
                  pc = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v392, "count")}];
                  v529 = @"DependencyGraphRequestedThumbnailTextureID";
                  v530 = @"format";
                  v531 = pc;
                  v183 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:ResizeFormat(v178)];
                  v532 = v183;
                  v184 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v531 forKeys:&v529 count:2];
                  [v409 addEntriesFromDictionary:v184];

                  [v380 addObject:v409];
                  v477 = @"type";
                  v478 = @"object";
                  v485 = &unk_2860D6758;
                  v486 = objb;
                  v479 = @"functionIndex";
                  v185 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v416 + 1];
                  v487 = v185;
                  v488 = v377;
                  v480 = @"resolution";
                  v481 = @"DependencyGraphRequestedThumbnailTextureID";
                  v489 = pc;
                  v186 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v485 forKeys:&v477 count:5];
                  v187 = [v186 mutableCopy];

                  v501 = 0u;
                  v500 = 0u;
                  v499 = 0u;
                  v498 = 0u;
                  v188 = [&unk_2860D5B58 countByEnumeratingWithState:&v498 objects:&v473 count:16];
                  if (v188)
                  {
                    v189 = *v499;
                    do
                    {
                      for (n = 0; n != v188; ++n)
                      {
                        if (*v499 != v189)
                        {
                          objc_enumerationMutation(&unk_2860D5B58);
                        }

                        v191 = *(*(&v498 + 1) + 8 * n);
                        v192 = [v175 objectForKeyedSubscript:v191];
                        if (v192)
                        {
                          [v187 setObject:v192 forKeyedSubscript:v191];
                        }
                      }

                      v188 = [&unk_2860D5B58 countByEnumeratingWithState:&v498 objects:&v473 count:16];
                    }

                    while (v188);
                  }

                  [v392 addObject:v187];
                }

                else
                {
                  v537 = @"Failed to generate dependency graph thumbnail";
                  v533 = v370;
                  v534 = @"GTErrorKeyTraceStreamID";
                  v179 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v177];
                  v538 = v179;
                  v180 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v537 forKeys:&v533 count:2];
                  v181 = MakeNSError(101, v180);

                  GTMTLReplay_handleNSError(v181);
                }
              }

              v386 = [v373 countByEnumeratingWithState:v502 objects:&v525 count:16];
            }

            while (v386);
          }

          [v350 setObject:v380 forKeyedSubscript:v358];
        }

        v353 = [v348 countByEnumeratingWithState:parent objects:&v509 count:16];
      }

      while (v353);
    }

    v193 = v426[1];
    *&v493 = 1;
    entry = find_entry(v193, &v493, 8uLL, 0);
    if (*entry && (v195 = *(*entry + 32)) != 0)
    {
      v196 = atomic_load((v195 + 56));
      v197 = v195 + (~(v196 >> 2) & 8);
    }

    else
    {
      v197 = 8;
    }

    v222 = *v197;
    v472[0] = @"device";
    v223 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v222];
    *&v493 = v223;
    v472[1] = @"object";
    v224 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v350];
    *(&v493 + 1) = v224;
    v374 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v493 forKeys:v472 count:2];

    v412 = [v374 objectForKeyedSubscript:@"object"];
    v225 = [v412 allKeys];
    v226 = [v225 sortedArrayUsingSelector:?];

    objc = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v412, "count")}];
    v476 = 0u;
    v475 = 0u;
    v474 = 0u;
    v473 = 0u;
    v395 = v226;
    v419 = [v395 countByEnumeratingWithState:&v473 objects:&v509 count:16];
    if (v419)
    {
      pf = *v474;
      do
      {
        v227 = 0;
        do
        {
          if (*v474 != pf)
          {
            v228 = v227;
            objc_enumerationMutation(v395);
            v227 = v228;
          }

          v429 = v227;
          v229 = [v412 objectForKeyedSubscript:*(*(&v473 + 1) + 8 * v227)];
          v508 = 0u;
          v507 = 0u;
          v506 = 0u;
          *parent = 0u;
          v230 = [v229 countByEnumeratingWithState:parent objects:&v525 count:16];
          if (v230)
          {
            v231 = *v506;
            do
            {
              for (ii = 0; ii != v230; ++ii)
              {
                if (*v506 != v231)
                {
                  objc_enumerationMutation(v229);
                }

                v233 = *(parent[1] + ii);
                *&v498 = @"context";
                v234 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
                v502[0] = v234;
                v502[1] = &unk_2860D67D0;
                *(&v498 + 1) = @"type";
                *&v499 = @"object";
                v235 = [v233 objectForKeyedSubscript:@"DependencyGraphRequestedThumbnailTextureID"];
                *(&v499 + 1) = @"functionIndex";
                v502[2] = v235;
                v502[3] = &unk_2860D6830;
                v236 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v502 forKeys:&v498 count:4];
                [objc addObject:v236];
              }

              v230 = [v229 countByEnumeratingWithState:parent objects:&v525 count:16];
            }

            while (v230);
          }

          v227 = v429 + 1;
        }

        while (v429 + 1 != v419);
        v419 = [v395 countByEnumeratingWithState:&v473 objects:&v509 count:16];
      }

      while (v419);
    }

    v237 = [v374 objectForKeyedSubscript:@"object"];
    v428 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v237, "count")}];
    v476 = 0u;
    v475 = 0u;
    v474 = 0u;
    v473 = 0u;
    v411 = v237;
    pg = [(apr_pool_t *)v411 countByEnumeratingWithState:&v473 objects:&v509 count:16];
    if (pg)
    {
      v396 = *v474;
      do
      {
        v238 = 0;
        do
        {
          if (*v474 != v396)
          {
            v239 = v238;
            objc_enumerationMutation(v411);
            v238 = v239;
          }

          v420 = v238;
          v240 = *(*(&v473 + 1) + 8 * v238);
          *parent = 0u;
          v506 = 0u;
          v507 = 0u;
          v508 = 0u;
          v241 = [(apr_pool_t *)v411 objectForKeyedSubscript:v240];
          v242 = [v241 countByEnumeratingWithState:parent objects:&v525 count:16];
          if (v242)
          {
            v243 = *v506;
            do
            {
              for (jj = 0; jj != v242; ++jj)
              {
                if (*v506 != v243)
                {
                  objc_enumerationMutation(v241);
                }

                v245 = *(parent[1] + jj);
                v246 = [v245 objectForKeyedSubscript:@"DependencyGraphRequestedThumbnailTextureID"];
                v247 = [v245 objectForKeyedSubscript:@"DependencyGraphRequestedTextureAttachmentIndex"];
                v248 = v247;
                v502[0] = v240;
                if (v247)
                {
                  [&unk_2860D5B40 objectAtIndexedSubscript:{objc_msgSend(v247, "unsignedIntegerValue")}];
                }

                else
                {
                  [v245 objectForKeyedSubscript:@"DependencyGraphRequestedTextureID"];
                }
                v249 = ;
                v502[1] = v249;
                v250 = [MEMORY[0x277CBEA60] arrayWithObjects:v502 count:2];
                [v428 setObject:v250 forKeyedSubscript:v246];
              }

              v242 = [v241 countByEnumeratingWithState:parent objects:&v525 count:16];
            }

            while (v242);
          }

          v238 = v420 + 1;
        }

        while ((v420 + 1) != pg);
        pg = [(apr_pool_t *)v411 countByEnumeratingWithState:&v473 objects:&v509 count:16];
      }

      while (pg);
    }
  }

  else
  {
    if ((v15 & 2) != 0)
    {
      v16 = @"All";
    }

    else
    {
      v16 = @"First";
    }

    v360 = [&unk_2860D5B40 arrayByAddingObject:v16];
    [v367 setObject:v360 forKeyedSubscript:@"attachments"];
    v414 = *v423;
    v17 = v367;
    v379 = v355;
    v357 = v17;
    v18 = [v17 objectForKeyedSubscript:@"attachments"];
    v390 = [v357 objectForKeyedSubscript:@"resolution"];
    v372 = v414[2];
    v376 = v414[16];
    v364 = v414[15];
    v473 = 0u;
    v474 = 0u;
    v475 = 0u;
    v476 = 0u;
    obj = v18;
    v19 = 0;
    v20 = [obj countByEnumeratingWithState:&v473 objects:&v525 count:16];
    if (v20)
    {
      v21 = *v474;
      do
      {
        for (kk = 0; kk != v20; ++kk)
        {
          if (*v474 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = [&unk_2860D5B40 indexOfObject:*(*(&v473 + 1) + 8 * kk)];
          v24 = 1 << v23;
          if (v23 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v24 = 0;
          }

          v19 |= v24;
        }

        v20 = [obj countByEnumeratingWithState:&v473 objects:&v525 count:16];
      }

      while (v20);
    }

    v385 = [obj containsObject:@"All"];
    v382 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v407 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
    v25 = v376;
    if (*(v376 + 12) >= 1)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        v28 = *(v25 + 24) + (v26 << 6);
        v29 = *(v28 + 8);
        v424 = v28;
        if (v29 <= -16359)
        {
          if (v29 <= -20446)
          {
            if (v29 != -20474)
            {
              if (v29 != -20457)
              {
                goto LABEL_53;
              }

              v28 = *(v25 + 24) + (v26 << 6);
LABEL_43:
              v36 = GTTraceFunc_argumentBytesWithMap(v28, *(v28 + 13), v372);
              Object = GTMTLSMContext_getObject(*v414[5], *v36, *v28);
              if (!Object)
              {
                goto LABEL_53;
              }

              v30 = Object + 12;
              goto LABEL_49;
            }

            v38 = GTTraceFunc_argumentBytesWithMap(v28, *(v28 + 13), v372);
            v39 = GTMTLSMContext_getObject(*v414[5], *v38, *v28);
            if (!v39)
            {
              goto LABEL_53;
            }

            v30 = v39 + 9;
          }

          else
          {
            if (v29 == -20445)
            {
              goto LABEL_43;
            }

            if (v29 != -20420)
            {
              if (v29 != -16359)
              {
                goto LABEL_53;
              }

              v28 = *(v25 + 24) + (v26 << 6);
LABEL_32:
              v31 = GTTraceFunc_argumentBytesWithMap(v28, *(v28 + 13), v372);
              v32 = v414[5];
              v33 = *(v31 + 1);
LABEL_38:
              v35 = GTMTLSMContext_getObject(*v32, v33, *v28);
              if (!v35)
              {
                goto LABEL_53;
              }

              v30 = v35 + 6;
              goto LABEL_49;
            }

            v40 = GTTraceFunc_argumentBytesWithMap(v28, *(v28 + 13), v372);
            v41 = GTMTLSMContext_getObject(*v414[5], *v40, *v28);
            if (!v41)
            {
              goto LABEL_53;
            }

            v30 = v41 + 18;
          }
        }

        else
        {
          if (v29 > -7159)
          {
            if (v29 != -7156 && v29 != -7157)
            {
              if (v29 != -7158)
              {
                goto LABEL_53;
              }

              v28 = *(v25 + 24) + (v26 << 6);
            }

            v34 = GTTraceFunc_argumentBytesWithMap(v28, *(v28 + 13), v372);
            v32 = v414[5];
            v33 = *v34;
            goto LABEL_38;
          }

          if (v29 == -16358 || v29 == -16133)
          {
            goto LABEL_32;
          }

          if (v29 != -15310)
          {
            goto LABEL_53;
          }

          v30 = (GTTraceFunc_argumentBytesWithMap(v28, *(v28 + 13), v372) + 8);
        }

LABEL_49:
        v42 = *v30;
        if (*v30)
        {
          v43 = v390;
          v44 = v379;
          memset(v511, 0, sizeof(v511));
          v510 = 0u;
          v509 = 0u;
          GTMTLSMContext_getTextureDescriptor(v414[5], v42, *v424, &v509);
          v45 = v414[1];
          v537 = v42;
          v46 = *find_entry(v45, &v537, 8uLL, 0);
          p = v27;
          if (v46 && (v47 = *(v46 + 32)) != 0)
          {
            v48 = v26;
            v49 = atomic_load((v47 + 56));
            v50 = v47 + (~(v49 >> 2) & 8);
          }

          else
          {
            v48 = v26;
            v50 = 8;
          }

          v55 = *v50;
          v537 = &unk_2860D6758;
          v533 = @"type";
          v534 = @"object";
          v56 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v55];
          v538 = v56;
          v539 = v43;
          v535 = @"resolution";
          v536 = @"format";
          v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:ResizeFormat(*&v511[2])];
          v540 = v57;
          v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v537 forKeys:&v533 count:4];

          v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v44, "count")}];
          v60 = [v58 objectForKeyedSubscript:@"format"];
          InclusiveRange = GroupBuilder_findInclusiveRange(*(v364 + 12), *(v364 + 24), v48);
          if (InclusiveRange)
          {
            while ((GTFenum_isBeginCommandBuffer(InclusiveRange[5]) & 1) == 0)
            {
              v62 = InclusiveRange[2];
              if (v62)
              {
                InclusiveRange -= 6 * v62;
              }

              else
              {
                InclusiveRange = 0;
              }

              if (!v62)
              {
                goto LABEL_69;
              }
            }

            v63 = [v58 mutableCopy];
            v64 = InclusiveRange[1];
          }

          else
          {
LABEL_69:
            v63 = [v58 mutableCopy];
            v64 = v48;
          }

          v65 = [MEMORY[0x277CCABB0] numberWithInt:(v64 + 1)];
          [v63 setObject:v65 forKeyedSubscript:@"functionIndex"];

          [v63 setObject:v59 forKeyedSubscript:@"DependencyGraphRequestedThumbnailTextureID"];
          [v44 addObject:v63];

          v529 = @"object";
          v530 = @"format";
          v531 = v59;
          v532 = v60;
          v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v531 forKeys:&v529 count:2];

          v67 = [MEMORY[0x277CCABB0] numberWithInt:v48];
          [v382 setObject:v66 forKeyedSubscript:v67];

          v25 = v376;
          v26 = v48;
          v27 = p;
          goto LABEL_135;
        }

LABEL_53:
        v51 = *(v424 + 8);
        if ((GTFenum_isDrawCall(v51) & 1) == 0 && (v51 & 0xFFFFFFFC) != 0xFFFFC1A4)
        {
          goto LABEL_73;
        }

        v369 = v26;
        if (!v27 || v26 < *v27 || v26 > *(v27 + 1))
        {
          v52 = GroupBuilder_findInclusiveRange(*(v364 + 12), *(v364 + 24), v26);
          v53 = GroupRange_encoderWithAttachments(v52);
          if (!v53)
          {
            v27 = 0;
LABEL_73:
            v25 = v376;
            goto LABEL_135;
          }

          v54 = v53;
          bzero(&v509, 0x2BA0uLL);
          GTMTLSMCommandEncoder_processTraceFunc(&v509, (*(v376 + 24) + (*v54 << 6)), v372);
          pa = v54;
          if (v509 == 70 || v509 == 65)
          {
            v361 = v512;
          }

          else
          {
            v361 = 0;
          }

          [v407 removeAllObjects];
          v68 = 0;
          v69 = v361;
          v27 = v54;
          while (1)
          {
            if (((v19 >> v68) & 1) != 0 && v69[1])
            {
              v70 = *v69;
              if (*v69)
              {
                v71 = *v69;
              }

              else
              {
                v71 = v69[1];
              }

              memset(v511, 0, sizeof(v511));
              v510 = 0u;
              v509 = 0u;
              GTMTLSMContext_getTextureDescriptor(v414[5], v71, *v424, &v509);
              v72 = v414[1];
              v537 = v71;
              v73 = find_entry(v72, &v537, 8uLL, 0);
              if (*v73 && (v74 = *(*v73 + 32)) != 0)
              {
                v75 = atomic_load((v74 + 56));
                v76 = v74 + (~(v75 >> 2) & 8);
              }

              else
              {
                v76 = 8;
              }

              v77 = v70 == 0;
              v78 = *v76;
              parent[0] = &unk_2860D6758;
              v502[0] = @"type";
              v502[1] = @"DependencyGraphRequestedTextureAttachmentIndex";
              v79 = [MEMORY[0x277CCABB0] numberWithInt:v68];
              parent[1] = v79;
              v502[2] = @"object";
              v80 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v78];
              *&v506 = v80;
              *(&v506 + 1) = v390;
              v502[3] = @"resolution";
              *&v503 = @"DependencyGraphRequestedTextureSlice";
              v81 = 20;
              if (v77)
              {
                v81 = 22;
              }

              v82 = [MEMORY[0x277CCABB0] numberWithInt:*(v69 + v81)];
              *&v507 = v82;
              *(&v503 + 1) = @"DependencyGraphRequestedTextureLevel";
              v83 = 26;
              if (v77)
              {
                v83 = 24;
              }

              v84 = [MEMORY[0x277CCABB0] numberWithInt:*(v69 + v83)];
              *(&v507 + 1) = v84;
              *&v504 = @"DependencyGraphRequestedTextureDepthPlane";
              v85 = 18;
              if (v77)
              {
                v85 = 16;
              }

              v86 = [MEMORY[0x277CCABB0] numberWithInt:*(v69 + v85)];
              *&v508 = v86;
              *(&v504 + 1) = @"format";
              v87 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:ResizeFormat(*&v511[2])];
              *(&v508 + 1) = v87;
              v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:parent forKeys:v502 count:8];
              [v407 addObject:v88];

              v27 = pa;
              if (!v385)
              {
                break;
              }
            }

            ++v68;
            v69 += 8;
            if (v68 == 8)
            {
              v89 = v361;
              if ((v19 & 0x100) == 0 || !v361[85])
              {
                goto LABEL_345;
              }

              v90 = v361[84];
              if (v90)
              {
                v91 = v361[84];
              }

              else
              {
                v91 = v361[85];
              }

              memset(v511, 0, sizeof(v511));
              v510 = 0u;
              v509 = 0u;
              GTMTLSMContext_getTextureDescriptor(v414[5], v91, *v424, &v509);
              v92 = v414[1];
              v537 = v91;
              v93 = find_entry(v92, &v537, 8uLL, 0);
              if (*v93 && (v94 = *(*v93 + 32)) != 0)
              {
                v95 = atomic_load((v94 + 56));
                v96 = v94 + (~(v95 >> 2) & 8);
              }

              else
              {
                v96 = 8;
              }

              v97 = v90 == 0;
              v98 = *v96;
              *&v493 = @"type";
              *(&v493 + 1) = @"DependencyGraphRequestedTextureAttachmentIndex";
              *&v498 = &unk_2860D6758;
              *(&v498 + 1) = &unk_2860D6770;
              *&v494 = @"object";
              v99 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v98];
              *&v499 = v99;
              *(&v499 + 1) = v390;
              *(&v494 + 1) = @"resolution";
              *&v495 = @"DependencyGraphRequestedTextureSlice";
              v100 = 692;
              if (v97)
              {
                v100 = 694;
              }

              v101 = [MEMORY[0x277CCABB0] numberWithInt:*(v361 + v100)];
              *&v500 = v101;
              *(&v495 + 1) = @"DependencyGraphRequestedTextureLevel";
              v102 = 698;
              if (v97)
              {
                v102 = 696;
              }

              v103 = [MEMORY[0x277CCABB0] numberWithInt:*(v361 + v102)];
              *(&v500 + 1) = v103;
              v496 = @"DependencyGraphRequestedTextureDepthPlane";
              v104 = 690;
              if (v97)
              {
                v104 = 688;
              }

              v105 = [MEMORY[0x277CCABB0] numberWithInt:*(v361 + v104)];
              *&v501 = v105;
              v497 = @"format";
              v106 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:ResizeFormat(*&v511[2])];
              *(&v501 + 1) = v106;
              v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v498 forKeys:&v493 count:8];
              [v407 addObject:v107];

              v27 = pa;
              v89 = v361;
              if (v385)
              {
LABEL_345:
                if ((v19 & 0x200) != 0 && v89[91])
                {
                  v108 = v89[90];
                  if (v108)
                  {
                    v109 = v89[90];
                  }

                  else
                  {
                    v109 = v89[91];
                  }

                  memset(v511, 0, sizeof(v511));
                  v510 = 0u;
                  v509 = 0u;
                  GTMTLSMContext_getTextureDescriptor(v414[5], v109, *v424, &v509);
                  v110 = v414[1];
                  v537 = v109;
                  v111 = find_entry(v110, &v537, 8uLL, 0);
                  if (*v111 && (v112 = *(*v111 + 32)) != 0)
                  {
                    v113 = atomic_load((v112 + 56));
                    v114 = v112 + (~(v113 >> 2) & 8);
                  }

                  else
                  {
                    v114 = 8;
                  }

                  v115 = v108 == 0;
                  v116 = *v114;
                  v477 = @"type";
                  v478 = @"DependencyGraphRequestedTextureAttachmentIndex";
                  v485 = &unk_2860D6758;
                  v486 = &unk_2860D6788;
                  v479 = @"object";
                  v117 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v116];
                  v487 = v117;
                  v488 = v390;
                  v480 = @"resolution";
                  v481 = @"DependencyGraphRequestedTextureSlice";
                  v118 = 740;
                  if (v115)
                  {
                    v118 = 742;
                  }

                  v119 = [MEMORY[0x277CCABB0] numberWithInt:*(v361 + v118)];
                  v489 = v119;
                  v482 = @"DependencyGraphRequestedTextureLevel";
                  v120 = 746;
                  if (v115)
                  {
                    v120 = 744;
                  }

                  v121 = [MEMORY[0x277CCABB0] numberWithInt:*(v361 + v120)];
                  v490 = v121;
                  v483 = @"DependencyGraphRequestedTextureDepthPlane";
                  v122 = 738;
                  if (v115)
                  {
                    v122 = 736;
                  }

                  v123 = [MEMORY[0x277CCABB0] numberWithInt:*(v361 + v122)];
                  v491 = v123;
                  v484 = @"format";
                  v124 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:ResizeFormat(*&v511[2])];
                  v492 = v124;
                  v125 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v485 forKeys:&v477 count:8];
                  [v407 addObject:v125];

                  v27 = pa;
                }
              }

              break;
            }
          }
        }

        v126 = v27;
        if ([v407 count])
        {
          if (*(v424 + 8) >> 2 == 1073737833)
          {
            GetExecuteCommandsInBufferArgs(&v509, *(v376 + 24) + (v369 << 6), v414[2]);
            v524 = 0;
            v523 = 0u;
            v522 = 0u;
            v521 = 0u;
            v520 = 0u;
            v519 = 0u;
            v518 = 0u;
            v517 = 0u;
            v516 = 0u;
            v515 = 0u;
            v514 = 0u;
            v513 = 0u;
            v512 = 0u;
            *&v511[8] = 0u;
            v127 = GTMTLSMContext_getObject(*v414[5], v509, *v424);
            GTMTLCreateIndirectCommandEncoder(&v511[8], v127[14]);
            v128 = v510;
            if (v510)
            {
              v129 = 0;
              v130 = v524;
              v131 = v369 + (*(&v509 + 1) << 32);
              v132 = (*(&v510 + 1) + *&v511[16] + *(&v509 + 1) * v524);
              do
              {
                if (*v132)
                {
                  v133 = _processThumbnailAttachments(v379, v407, v131);
                  v134 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v131];
                  [v382 setObject:v133 forKeyedSubscript:v134];

                  v27 = v126;
                }

                v132 = (v132 + v130);
                ++v129;
                v131 += 0x100000000;
              }

              while (v128 > v129);
            }

            v25 = v376;
            v26 = v369;
            goto LABEL_135;
          }

          v135 = _processThumbnailAttachments(v379, v407, v369);
          v136 = [MEMORY[0x277CCABB0] numberWithInt:v369];
          [v382 setObject:v135 forKeyedSubscript:v136];
        }

        v25 = v376;
        v26 = v369;
LABEL_135:
        ++v26;
      }

      while (v26 < *(v25 + 12));
    }

    v137 = v414[1];
    *&v509 = 1;
    v138 = find_entry(v137, &v509, 8uLL, 0);
    if (*v138 && (v139 = *(*v138 + 32)) != 0)
    {
      v140 = atomic_load((v139 + 56));
      v141 = v139 + (~(v140 >> 2) & 8);
    }

    else
    {
      v141 = 8;
    }

    v198 = *v141;
    v537 = @"device";
    v199 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v198];
    v538 = @"object";
    *&v509 = v199;
    *(&v509 + 1) = v382;
    v374 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v509 forKeys:&v537 count:2];

    pd = [v374 objectForKeyedSubscript:@"object"];
    v200 = [(apr_pool_t *)pd allKeys];
    v201 = [v200 sortedArrayUsingSelector:?];

    objc = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[apr_pool_t count](pd, "count")}];
    v476 = 0u;
    v475 = 0u;
    v474 = 0u;
    v473 = 0u;
    v387 = v201;
    v410 = [v387 countByEnumeratingWithState:&v473 objects:&v509 count:16];
    if (v410)
    {
      v393 = *v474;
      do
      {
        for (mm = 0; mm != v410; mm = mm + 1)
        {
          if (*v474 != v393)
          {
            objc_enumerationMutation(v387);
          }

          v417 = [(apr_pool_t *)pd objectForKeyedSubscript:*(*(&v473 + 1) + 8 * mm)];
          v202 = [v417 objectForKeyedSubscript:@"target"];
          v508 = 0u;
          v507 = 0u;
          v506 = 0u;
          *parent = 0u;
          v203 = [v202 countByEnumeratingWithState:parent objects:&v525 count:16];
          if (v203)
          {
            v204 = *v506;
            do
            {
              for (nn = 0; nn != v203; ++nn)
              {
                if (*v506 != v204)
                {
                  objc_enumerationMutation(v202);
                }

                v206 = [v202 objectForKeyedSubscript:*(parent[1] + nn)];
                *&v498 = @"context";
                v207 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
                v502[0] = v207;
                v502[1] = &unk_2860D67D0;
                *(&v498 + 1) = @"type";
                *&v499 = @"object";
                v208 = [v206 objectForKeyedSubscript:@"object"];
                *(&v499 + 1) = @"functionIndex";
                v502[2] = v208;
                v502[3] = &unk_2860D6830;
                v209 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v502 forKeys:&v498 count:4];
                [objc addObject:v209];
              }

              v203 = [v202 countByEnumeratingWithState:parent objects:&v525 count:16];
            }

            while (v203);
          }
        }

        v410 = [v387 countByEnumeratingWithState:&v473 objects:&v509 count:16];
      }

      while (v410);
    }

    v210 = pd;
    v428 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[apr_pool_t count](v210, "count")}];
    v476 = 0u;
    v475 = 0u;
    v474 = 0u;
    v473 = 0u;
    v411 = v210;
    v394 = [(apr_pool_t *)v411 countByEnumeratingWithState:&v473 objects:&v509 count:16];
    if (v394)
    {
      v388 = *v474;
      do
      {
        v211 = 0;
        do
        {
          if (*v474 != v388)
          {
            v212 = v211;
            objc_enumerationMutation(v411);
            v211 = v212;
          }

          pe = v211;
          v213 = *(*(&v473 + 1) + 8 * v211);
          v418 = [(apr_pool_t *)v411 objectForKeyedSubscript:v213];
          v214 = [v418 objectForKeyedSubscript:@"target"];
          v508 = 0u;
          v507 = 0u;
          v506 = 0u;
          *parent = 0u;
          v215 = [v214 countByEnumeratingWithState:parent objects:&v525 count:16];
          if (v215)
          {
            v216 = *v506;
            do
            {
              for (i1 = 0; i1 != v215; ++i1)
              {
                if (*v506 != v216)
                {
                  objc_enumerationMutation(v214);
                }

                v218 = *(parent[1] + i1);
                v219 = [v214 objectForKeyedSubscript:v218];
                v220 = [v219 objectForKeyedSubscript:@"object"];
                v502[0] = v213;
                v502[1] = v218;
                v221 = [MEMORY[0x277CBEA60] arrayWithObjects:v502 count:2];
                [v428 setObject:v221 forKeyedSubscript:v220];
              }

              v215 = [v214 countByEnumeratingWithState:parent objects:&v525 count:16];
            }

            while (v215);
          }

          v211 = (pe + 1);
        }

        while (pe + 1 != v394);
        v394 = [(apr_pool_t *)v411 countByEnumeratingWithState:&v473 objects:&v509 count:16];
      }

      while (v394);
    }
  }

  v251 = objc;
  v252 = v355;
  v421 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v528 = 0u;
  v527 = 0u;
  v526 = 0u;
  v525 = 0u;
  v413 = v251;
  v253 = [v413 countByEnumeratingWithState:&v525 objects:&v509 count:16];
  if (v253)
  {
    v254 = *v526;
    do
    {
      for (i2 = 0; i2 != v253; ++i2)
      {
        if (*v526 != v254)
        {
          objc_enumerationMutation(v413);
        }

        v256 = *(*(&v525 + 1) + 8 * i2);
        v257 = [v256 objectForKeyedSubscript:@"functionIndex"];
        if ([v257 unsignedIntValue] == -1)
        {
          v258 = [v256 objectForKeyedSubscript:@"object"];
          v259 = [v258 unsignedLongLongValue];

          v260 = [v252 objectAtIndexedSubscript:v259];
          v261 = [v260 objectForKeyedSubscript:@"functionIndex"];

          v257 = v261;
        }

        v262 = [v421 objectForKeyedSubscript:v257];
        if (!v262)
        {
          v262 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v421 setObject:v262 forKeyedSubscript:v257];
        }

        [v262 addObject:v256];
      }

      v253 = [v413 countByEnumeratingWithState:&v525 objects:&v509 count:16];
    }

    while (v253);
  }

  v502[0] = &v509;
  *&v502[1] = xmmword_24DA8BC70;
  v502[2] = [MEMORY[0x277CBEB28] dataWithCapacity:4096];
  v338 = *(v423 + 24);
  v263 = [v421 allKeys];
  v264 = [v263 sortedArrayUsingSelector:sel_compare_];

  if ((v352[46] & 0x10) != 0 && [v264 count])
  {
    v265 = [v264 subarrayWithRange:{objc_msgSend(v264, "count") - 1, 1}];

    v264 = v265;
  }

  v458 = 0u;
  v459 = 0u;
  v456 = 0u;
  v457 = 0u;
  v341 = v264;
  v344 = [v341 countByEnumeratingWithState:&v456 objects:v467 count:16];
  if (v344)
  {
    v337 = v436;
    v342 = *v457;
    v346 = *MEMORY[0x277CCA7E8];
    while (2)
    {
      for (i3 = 0; i3 != v344; ++i3)
      {
        if (*v457 != v342)
        {
          objc_enumerationMutation(v341);
        }

        v266 = *(*(&v456 + 1) + 8 * i3);
        GTMTLReplayController_debugSubCommandStop(v423, [v266 unsignedIntegerValue], 0);
        v267 = [v421 objectForKeyedSubscript:v266];
        v268 = [v267 count];
        v354 = [MEMORY[0x277CBEB18] arrayWithCapacity:v268];
        v356 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v268];
        [v422 removeAllObjects];
        v269 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v454 = 0u;
        v455 = 0u;
        v452 = 0u;
        v453 = 0u;
        objd = v267;
        v270 = [objd countByEnumeratingWithState:&v452 objects:v466 count:16];
        if (v270)
        {
          v271 = *v453;
          do
          {
            for (i4 = 0; i4 != v270; ++i4)
            {
              if (*v453 != v271)
              {
                objc_enumerationMutation(objd);
              }

              v273 = [*(*(&v452 + 1) + 8 * i4) objectForKeyedSubscript:@"object"];
              v274 = [v273 unsignedIntegerValue];

              v275 = [v252 objectAtIndexedSubscript:v274];
              [v422 addObject:v275];
              v276 = [v275 objectForKeyedSubscript:@"object"];
              v277 = [v276 unsignedLongLongValue];

              v278 = [v275 objectForKeyedSubscript:@"functionIndex"];
              v279 = [v278 unsignedIntValue];

              v280 = GetAliasStream(*(*v423 + 24), v277, *(*v423 + 88) + v279 - 1);
              if (v280)
              {
                v281 = *v280;
              }

              else
              {
                v281 = 0;
              }

              v282 = *(v423 + 56);
              v283 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v281];
              v284 = [v282 objectForKeyedSubscript:v283];

              if (!v284)
              {
                v284 = [*(v423 + 8) textureForKey:v281];
              }

              [v269 addObject:v284];
            }

            v270 = [objd countByEnumeratingWithState:&v452 objects:v466 count:16];
          }

          while (v270);
        }

        GTMTLReplayClient_waitForUntrackedWritesToComplete(v423, v269);
        v451 = 0;
        v349 = GTMTLReplayClient_retrieveTexturesForResize(v423, v422, v269, 1, &v451);
        v285 = v451;
        if (v285)
        {
          v286 = v285;
          v464 = v346;
          v465 = v285;
          v384 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v465 forKeys:&v464 count:1];
          GTMTLReplay_fillError(v347, 101, v384);
          if (v347)
          {
            v287 = *v347;
          }

          else
          {
            v287 = 0;
          }

          GTMTLReplay_handleNSError(v287);
          v331 = 0;
        }

        else
        {
          v384 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v349, "count")}];
          v288 = [*(v423 + 8) defaultCommandQueue];
          v381 = [v288 commandBuffer];

          v289 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"TextureResize", v337];
          [v381 setLabel:v289];

          v449 = 0u;
          v450 = 0u;
          v447 = 0u;
          v448 = 0u;
          v290 = v349;
          v371 = [v290 countByEnumeratingWithState:&v447 objects:v463 count:16];
          if (v371)
          {
            v363 = v290;
            v366 = *v448;
            while (2)
            {
              for (ph = 0; ph != v371; ph = (ph + 1))
              {
                if (*v448 != v366)
                {
                  objc_enumerationMutation(v290);
                }

                v291 = *(*(&v447 + 1) + 8 * ph);
                v292 = [v291 width];
                v293 = [v291 height];
                v498 = 0uLL;
                *&v499 = 0;
                v294 = [v367 objectForKeyedSubscript:@"resolution"];
                *&v525 = v292;
                *(&v525 + 1) = v293;
                *&v526 = 1;
                GTMTLReplayClient_resizeResolution(&v498, v294, &v525);

                *&v508 = 0;
                v507 = 0u;
                v506 = 0u;
                *parent = 0u;
                v295 = [v291 device];
                [v291 pixelFormat];
                MTLPixelFormatGetInfoForDevice();

                v296 = parent[1];
                v297 = *(v423 + 16);
                v446 = 0;
                v298 = GTMTLReplayController_resizeTexture(v297, v368, v381, v291, v498, *(&v498 + 1), &v446);
                v389 = v446;
                if ((v296 & 0x20000) != 0)
                {
                  v360 = v360 & 0xFFFFFFFF00000000 | 0x1040302;
                  v300 = [v298 newTextureViewWithPixelFormat:objc_msgSend(v298 textureType:"pixelFormat") levels:2 slices:0 swizzle:objc_msgSend(v291, "mipmapLevelCount"), 0, 1, v360];

                  if ((v352[46] & 0x20) != 0)
                  {
                    v301 = 70;
                  }

                  else
                  {
                    v301 = 125;
                  }

                  v302 = *(v423 + 16);
                  v375 = v381;
                  v303 = v300;
                  v304 = v302;
                  v305 = v303;
                  v378 = [v303 device];
                  [v303 pixelFormat];
                  *&v528 = 0;
                  v527 = 0u;
                  v526 = 0u;
                  v525 = 0u;
                  GTMTLPixelFormatGetInfoForDevice(&v525, v378, v301);
                  v397 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:v301 width:objc_msgSend(v303 height:"width") mipmapped:objc_msgSend(v303, "height"), 0];
                  [v397 setUsage:5];
                  [v397 setResourceOptions:32];
                  *&v493 = 0;
                  v298 = [v304 newTextureWithDescriptor:v397 error:&v493];

                  v306 = v493;
                  v359 = v306;
                  if (v298)
                  {
                    v307 = objc_alloc_init(MEMORY[0x277CD6F48]);
                    v308 = [v307 colorAttachments];
                    v309 = [v308 objectAtIndexedSubscript:0];
                    [v309 setTexture:v298];

                    v310 = [v375 renderCommandEncoderWithDescriptor:v307];
                    v473 = v525;
                    v474 = v526;
                    v475 = v527;
                    *&v476 = v528;
                    v311 = GTMTLReplayController_getResizeRenderPipelineState(v368, &v473, v301);
                    [v310 setRenderPipelineState:v311];

                    [v310 setVertexBuffer:*(v368 + 168) offset:0 atIndex:0];
                    [v310 setVertexBuffer:*(v368 + 168) offset:96 atIndex:1];
                    [v310 setFragmentSamplerState:*(v368 + 152) atIndex:0];
                    [v310 setFragmentTexture:v305 atIndex:0];
                    [v310 drawPrimitives:3 vertexStart:0 vertexCount:6];
                    [v310 endEncoding];
                    v312 = v298;

                    v313 = v389;
                  }

                  else
                  {
                    if (v306)
                    {
                      v485 = v346;
                      *&v473 = v306;
                      v314 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v473 forKeys:&v485 count:1];
                    }

                    else
                    {
                      v314 = 0;
                    }

                    v307 = v314;
                    v313 = MakeNSError(101, v314);
                    v315 = v313;
                    GTMTLReplay_handleNSError(v313);
                  }

                  v316 = v313;
                  v299 = v316;
                  if (v316)
                  {
LABEL_332:
                    v461 = v346;
                    v462 = v299;
                    v333 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v462 forKeys:&v461 count:1];
                    GTMTLReplay_fillError(v347, 101, v333);
                    if (v347)
                    {
                      v334 = *v347;
                    }

                    else
                    {
                      v334 = 0;
                    }

                    GTMTLReplay_handleNSError(v334);
                    v286 = v299;

                    v331 = 0;
                    v332 = v363;
                    goto LABEL_336;
                  }
                }

                else
                {
                  v299 = v389;
                  if (v389)
                  {
                    goto LABEL_332;
                  }
                }

                [v384 addObject:v298];

                v290 = v363;
              }

              v371 = [v363 countByEnumeratingWithState:&v447 objects:v463 count:16];
              if (v371)
              {
                continue;
              }

              break;
            }
          }

          GTMTLReplay_commitCommandBuffer(v381);
          v317 = [v422 count];
          if (v317)
          {
            for (i5 = 0; i5 != v317; ++i5)
            {
              v319 = [v384 objectAtIndexedSubscript:i5];
              v320 = [objd objectAtIndexedSubscript:i5];
              v321 = [v320 objectForKeyedSubscript:@"object"];
              v322 = [v321 unsignedIntegerValue];

              [(apr_pool_t *)v502[2] setLength:0];
              [(apr_pool_t *)v502[2] appendBytes:"MTSP" length:8];
              v443 = 0u;
              v444 = 0u;
              v445 = 0u;
              DWORD2(v443) = 7;
              LODWORD(v444) = 2;
              DYTraceEncode_InternalData(&v443, v502[0]);
              v323 = *v502[0];
              if ((*(v502[0] + 33) & 0x10) != 0)
              {
                v324 = v502[0];
                v325 = *v502[0];
                do
                {
                  v324 = (v324 + v323);
                  v323 = *v324;
                  v325 += v323;
                }

                while ((*(v324 + 33) & 0x20) == 0);
              }

              [apr_pool_t appendBytes:"appendBytes:length:" length:?];
              *&v525 = v502;
              v326 = v356;
              *(&v525 + 1) = v326;
              *&v526 = 0;
              v327 = *(v423 + 24);
              v442 = 0;
              GTMTLReplayClient_harvestTexture(v368, v327, v319, v322, &v525, 0xFFFFFFFFFFFFFFFFLL, 0, 0, &v442);
              v328 = v442;
              v329 = [(apr_pool_t *)v502[2] copy];
              [v354 addObject:v329];
            }
          }

          v330 = [v338 commandBuffer];
          v435[0] = MEMORY[0x277D85DD0];
          v435[1] = 3221225472;
          v436[0] = __GenerateThumbnails_block_invoke;
          v436[1] = &unk_2796584E0;
          v437 = v354;
          v438 = v428;
          v439 = v356;
          v441 = v339;
          v440 = v340;
          [v330 addCompletedHandler:v435];

          [v338 commitCommandBuffer];
          v286 = 0;
          v331 = 1;
          v332 = v437;
LABEL_336:
        }

        if (!v331)
        {

          v335 = 0;
          goto LABEL_342;
        }
      }

      v344 = [v341 countByEnumeratingWithState:&v456 objects:v467 count:16];
      if (v344)
      {
        continue;
      }

      break;
    }
  }

  apr_pool_destroy(newpool);
  v335 = 1;
LABEL_342:

  return v335;
}