BOOL re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 80 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 80 * v5) = *(v6 + 80 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::free(a1, v8);
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 80 * v9) = *(*(a1 + 16) + 80 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

void re::HashSetBase<re::SharedPtr<re::TransformOp>,re::SharedPtr<re::TransformOp>,re::internal::ValueAsKey<re::SharedPtr<re::TransformOp>>,re::Hash<re::SharedPtr<re::TransformOp>>,re::EqualTo<re::SharedPtr<re::TransformOp>>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v22, 0, 36);
      *&v22[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::SharedPtr<re::TransformOp>,re::SharedPtr<re::TransformOp>,re::internal::ValueAsKey<re::SharedPtr<re::TransformOp>>,re::Hash<re::SharedPtr<re::TransformOp>>,re::EqualTo<re::SharedPtr<re::TransformOp>>,true,false>::init(v22, v4, v2);
      v5 = *a1;
      *a1 = *v22;
      v6 = a1[2];
      v7 = *&v22[8];
      *v22 = v5;
      *&v22[16] = v6;
      *(a1 + 1) = v7;
      v9 = *&v22[24];
      *&v22[24] = *(a1 + 3);
      v8 = *&v22[32];
      *(a1 + 3) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = DWORD1(v9);
        v12 = v7;
        v13 = (v6 + 16);
        do
        {
          if ((*(v13 - 1) & 0x80000000) != 0)
          {
            v14 = *(v13 - 2);
            v15 = *(a1 + 6);
            v16 = v14 % v15;
            v17 = *(a1 + 9);
            if (v17 == 0x7FFFFFFF)
            {
              v17 = *(a1 + 8);
              v18 = v17;
              if (v17 == v15)
              {
                re::HashSetBase<re::SharedPtr<re::TransformOp>,re::SharedPtr<re::TransformOp>,re::internal::ValueAsKey<re::SharedPtr<re::TransformOp>>,re::Hash<re::SharedPtr<re::TransformOp>>,re::EqualTo<re::SharedPtr<re::TransformOp>>,true,false>::setCapacity(a1, (2 * v11));
                v16 = v14 % *(a1 + 6);
                v18 = *(a1 + 8);
                v12 = a1[1];
              }

              *(a1 + 8) = v18 + 1;
              v19 = a1[2];
              v20 = *(v19 + 24 * v17 + 8);
            }

            else
            {
              v19 = a1[2];
              v20 = *(v19 + 24 * v17 + 8);
              *(a1 + 9) = v20 & 0x7FFFFFFF;
            }

            *(v19 + 24 * v17 + 8) = v20 | 0x80000000;
            *(a1[2] + 24 * v17 + 8) = *(a1[2] + 24 * v17 + 8) & 0x80000000 | *(v12 + 4 * v16);
            *(a1[2] + 24 * v17) = v14;
            *(a1[2] + 24 * v17 + 16) = *v13;
            *v13 = 0;
            *(v12 + 4 * v16) = v17;
            v11 = *(a1 + 7) + 1;
            *(a1 + 7) = v11;
          }

          v13 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v22);
    }
  }

  else
  {
    if (v2)
    {
      v21 = v2;
    }

    else
    {
      v21 = 3;
    }
  }
}

void re::HashSetBase<re::SharedPtr<re::TransformOp>,re::SharedPtr<re::TransformOp>,re::internal::ValueAsKey<re::SharedPtr<re::TransformOp>>,re::Hash<re::SharedPtr<re::TransformOp>>,re::EqualTo<re::SharedPtr<re::TransformOp>>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_9, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

uint64_t re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 9);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    v6 = v5;
    if (v5 == *(a1 + 6))
    {
      v7 = *(a1 + 7);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = a1[2];
          *&v25[16] = v13;
          a1[2] = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 3);
          v14 = *&v25[32];
          *(a1 + 3) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v17[1] % *(a1 + 6), v17[1]);
                *(v18 + 8) = *(v17 - 1);
                *(v18 + 16) = *v17;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v19 = a1[2];
    v20 = *(v19 + 32 * v5);
  }

  else
  {
    v19 = a1[2];
    v20 = *(v19 + 32 * v5);
    *(a1 + 9) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 32 * v5;
  *v22 = v20 | 0x80000000;
  v23 = a1[1];
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 24) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 7);
  return v19 + 32 * v5;
}

void re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_9, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,false>(const re::TransformOp **a1, const re::TransformOp **a2, re::TransformService **a3, uint64_t a4, char a5)
{
  while (2)
  {
    v160 = a2 - 1;
    v162 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = a1;
          v10 = a2 - a1;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:

                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(a1, a1 + 1, v160, a3);
                return;
              case 4:

                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(a1, a1 + 1, a1 + 2, v160, a3);
                return;
              case 5:

                std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, v160, a3);
                return;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            if (v10 == 2)
            {
              v66 = *a1;
              v67 = *a3;
              v68 = re::TransformService::opExecutionOrder(v67, *(a2 - 1));
              v69 = re::TransformService::opExecutionOrder(v67, v66);
              if (v68 < v69)
              {
                v70 = *a1;
                *a1 = 0;
                *a1 = *(a2 - 1);
                *(a2 - 1) = v70;
              }

              return;
            }
          }

          if (v10 <= 23)
          {
            v71 = a1 + 1;
            v73 = a1 == a2 || v71 == a2;
            if (a5)
            {
              if (!v73)
              {
                v74 = 0;
                v75 = a1;
                do
                {
                  v77 = *v75;
                  v76 = v75[1];
                  v75 = v71;
                  v78 = *a3;
                  v79 = re::TransformService::opExecutionOrder(*a3, v76);
                  if (v79 < re::TransformService::opExecutionOrder(v78, v77))
                  {
                    v80 = *v75;
                    *v75 = 0;
                    v81 = v74;
                    while (1)
                    {
                      v82 = (a1 + v81);
                      v84 = *(a1 + v81);
                      v83 = *(a1 + v81 + 8);
                      *v82 = v83;
                      v82[1] = v84;
                      if (!v81)
                      {
                        break;
                      }

                      v85 = *(v82 - 1);
                      v86 = *a3;
                      v87 = re::TransformService::opExecutionOrder(*a3, v80);
                      v81 -= 8;
                      if (v87 >= re::TransformService::opExecutionOrder(v86, v85))
                      {
                        v88 = (a1 + v81 + 8);
                        v83 = *v88;
                        goto LABEL_87;
                      }
                    }

                    v88 = a1;
LABEL_87:
                    *v88 = v80;
                    a2 = v162;
                    if (v83)
                    {
                    }
                  }

                  v71 = v75 + 1;
                  v74 += 8;
                }

                while (v75 + 1 != a2);
              }
            }

            else if (!v73)
            {
              do
              {
                v147 = *v9;
                v146 = v9[1];
                v9 = v71;
                v148 = *a3;
                v149 = re::TransformService::opExecutionOrder(*a3, v146);
                if (v149 < re::TransformService::opExecutionOrder(v148, v147))
                {
                  v150 = *v9;
                  *v9 = 0;
                  v151 = v9;
                  v152 = v9;
                  do
                  {
                    v153 = *v151;
                    v154 = *--v152;
                    *v151 = v154;
                    *v152 = v153;
                    v155 = *(v151 - 2);
                    v156 = *a3;
                    v157 = re::TransformService::opExecutionOrder(*a3, v150);
                    v158 = re::TransformService::opExecutionOrder(v156, v155);
                    v151 = v152;
                  }

                  while (v157 < v158);
                  v159 = *v152;
                  *v152 = v150;
                  if (v159)
                  {
                  }
                }

                v71 = v9 + 1;
              }

              while (v9 + 1 != a2);
            }

            return;
          }

          v167 = a1;
          if (!a4)
          {
            if (a1 != a2)
            {
              v89 = (v10 - 2) >> 1;
              v165 = v89;
              v168 = (a2 - a1);
              do
              {
                v90 = v89;
                if (v165 >= v89)
                {
                  v91 = (2 * v89) | 1;
                  v92 = &v9[v91];
                  if (2 * v89 + 2 < v10)
                  {
                    v93 = v92[1];
                    v94 = *a3;
                    v95 = re::TransformService::opExecutionOrder(*a3, *v92);
                    v96 = re::TransformService::opExecutionOrder(v94, v93);
                    if (v95 < v96)
                    {
                      ++v92;
                    }

                    a2 = v162;
                    if (v95 < v96)
                    {
                      v91 = 2 * v90 + 2;
                    }
                  }

                  v97 = &v9[v90];
                  v98 = *v97;
                  v99 = *a3;
                  v100 = re::TransformService::opExecutionOrder(*a3, *v92);
                  v101 = re::TransformService::opExecutionOrder(v99, v98);
                  v10 = v168;
                  if (v100 >= v101)
                  {
                    v161 = v90;
                    v102 = *v97;
                    *v97 = 0;
                    while (1)
                    {
                      v103 = v92;
                      v104 = *v97;
                      *v97 = *v92;
                      *v92 = v104;
                      if (v165 < v91)
                      {
                        break;
                      }

                      v105 = (2 * v91) | 1;
                      v92 = &v9[v105];
                      v106 = 2 * v91 + 2;
                      if (v106 < v10)
                      {
                        v107 = v92[1];
                        v108 = *a3;
                        v109 = re::TransformService::opExecutionOrder(*a3, *v92);
                        v110 = re::TransformService::opExecutionOrder(v108, v107);
                        if (v109 < v110)
                        {
                          ++v92;
                        }

                        v9 = v167;
                        if (v109 < v110)
                        {
                          v105 = v106;
                        }
                      }

                      v111 = *a3;
                      v112 = re::TransformService::opExecutionOrder(*a3, *v92);
                      v113 = re::TransformService::opExecutionOrder(v111, v102);
                      v97 = v103;
                      v91 = v105;
                      v10 = v168;
                      if (v112 < v113)
                      {
                        v104 = *v103;
                        break;
                      }
                    }

                    *v103 = v102;
                    v90 = v161;
                    a2 = v162;
                    if (v104)
                    {
                    }
                  }
                }

                v89 = v90 - 1;
              }

              while (v90);
              do
              {
                v114 = 0;
                v115 = 0;
                v163 = a2;
                v166 = *v9;
                *v9 = 0;
                v116 = (v10 - 2) >> 1;
                v117 = v9;
                do
                {
                  v118 = &v117[v115];
                  v119 = v118 + 1;
                  v120 = (2 * v115) | 1;
                  v121 = 2 * v115 + 2;
                  if (v121 >= v10)
                  {
                    v115 = (2 * v115) | 1;
                  }

                  else
                  {
                    v123 = v118[2];
                    v122 = v118 + 2;
                    v124 = v10;
                    v125 = *a3;
                    v126 = v116;
                    v127 = re::TransformService::opExecutionOrder(*a3, *(v122 - 1));
                    v128 = v125;
                    v10 = v124;
                    v129 = re::TransformService::opExecutionOrder(v128, v123);
                    v116 = v126;
                    if (v127 >= v129)
                    {
                      v115 = v120;
                    }

                    else
                    {
                      v119 = v122;
                      v115 = v121;
                    }

                    v114 = *v117;
                  }

                  *v117 = *v119;
                  *v119 = v114;
                  v117 = v119;
                }

                while (v115 <= v116);
                v130 = v163 - 1;
                if (v119 == v163 - 1)
                {
                  v131 = v163 - 1;
                  *v119 = v166;
                }

                else
                {
                  *v119 = *v130;
                  v131 = v163 - 1;
                  *v130 = v166;
                  v132 = (v119 - v167 + 8) >> 3;
                  v133 = v132 < 2;
                  v134 = v132 - 2;
                  if (!v133)
                  {
                    v135 = v134 >> 1;
                    v136 = &v167[v134 >> 1];
                    v137 = *v119;
                    v169 = v10;
                    v138 = *a3;
                    v139 = re::TransformService::opExecutionOrder(*a3, *v136);
                    v140 = v138;
                    v10 = v169;
                    if (v139 < re::TransformService::opExecutionOrder(v140, v137))
                    {
                      v141 = *v119;
                      *v119 = 0;
                      while (1)
                      {
                        v142 = v136;
                        v143 = *v119;
                        *v119 = *v136;
                        *v136 = v143;
                        if (!v135)
                        {
                          break;
                        }

                        v135 = (v135 - 1) >> 1;
                        v136 = &v167[v135];
                        v144 = *a3;
                        v145 = re::TransformService::opExecutionOrder(*a3, *v136);
                        v119 = v142;
                        if (v145 >= re::TransformService::opExecutionOrder(v144, v141))
                        {
                          v143 = *v142;
                          break;
                        }
                      }

                      v10 = v169;
                      *v142 = v141;
                      if (v143)
                      {
                      }
                    }
                  }
                }

                if (v114)
                {
                }

                v133 = v10-- <= 2;
                a2 = v131;
                v9 = v167;
              }

              while (!v133);
            }

            return;
          }

          v11 = &a1[v10 >> 1];
          if (v10 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(&v9[v10 >> 1], v9, v160, a3);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(v9, &v9[v10 >> 1], v160, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(v9 + 1, v11 - 1, a2 - 2, a3);
            v12 = &v9[(v10 >> 1) + 1];
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(v167 + 2, v12, a2 - 3, a3);
            v9 = v167;
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(v11 - 1, v11, v12, a3);
            v13 = *v167;
            *v167 = 0;
            *v167 = *v11;
            *v11 = v13;
          }

          --a4;
          if (a5)
          {
            break;
          }

          v14 = *v9;
          v15 = *a3;
          v16 = re::TransformService::opExecutionOrder(*a3, *(v9 - 1));
          v17 = v16 >= re::TransformService::opExecutionOrder(v15, v14);
          v9 = v167;
          if (!v17)
          {
            break;
          }

          v42 = *v167;
          *v167 = 0;
          v43 = *v160;
          v44 = *a3;
          v45 = re::TransformService::opExecutionOrder(*a3, v42);
          if (v45 >= re::TransformService::opExecutionOrder(v44, v43))
          {
            v49 = v167 + 1;
            do
            {
              a1 = v49;
              if (v49 >= a2)
              {
                break;
              }

              ++v49;
              v50 = *a1;
              v51 = *a3;
              v52 = re::TransformService::opExecutionOrder(*a3, v42);
            }

            while (v52 >= re::TransformService::opExecutionOrder(v51, v50));
          }

          else
          {
            a1 = v167;
            do
            {
              v46 = a1[1];
              ++a1;
              v47 = *a3;
              v48 = re::TransformService::opExecutionOrder(*a3, v42);
            }

            while (v48 >= re::TransformService::opExecutionOrder(v47, v46));
          }

          v53 = a2;
          if (a1 < a2)
          {
            v53 = a2;
            do
            {
              v54 = *--v53;
              v55 = *a3;
              v56 = re::TransformService::opExecutionOrder(*a3, v42);
            }

            while (v56 < re::TransformService::opExecutionOrder(v55, v54));
          }

          while (a1 < v53)
          {
            v57 = *a1;
            *a1 = 0;
            *a1 = *v53;
            *v53 = v57;
            do
            {
              v58 = a1[1];
              ++a1;
              v59 = *a3;
              v60 = re::TransformService::opExecutionOrder(*a3, v42);
            }

            while (v60 >= re::TransformService::opExecutionOrder(v59, v58));
            do
            {
              v61 = *--v53;
              v62 = *a3;
              v63 = re::TransformService::opExecutionOrder(*a3, v42);
            }

            while (v63 < re::TransformService::opExecutionOrder(v62, v61));
          }

          v64 = a1 - 1;
          v65 = *v167;
          if (a1 - 1 != v167)
          {
            *v167 = *v64;
          }

          a5 = 0;
          *v64 = v42;
          if (v65)
          {

            a5 = 0;
          }
        }

        v18 = 0;
        v19 = *v9;
        *v9 = 0;
        do
        {
          v20 = *a3;
          v21 = re::TransformService::opExecutionOrder(*a3, v9[++v18]);
        }

        while (v21 < re::TransformService::opExecutionOrder(v20, v19));
        v22 = &v9[v18];
        v23 = a2;
        if (v18 == 1)
        {
          v23 = a2;
          do
          {
            if (v22 >= v23)
            {
              break;
            }

            v27 = *--v23;
            v28 = *a3;
            v29 = re::TransformService::opExecutionOrder(*a3, v27);
          }

          while (v29 >= re::TransformService::opExecutionOrder(v28, v19));
        }

        else
        {
          do
          {
            v24 = *--v23;
            v25 = *a3;
            v26 = re::TransformService::opExecutionOrder(*a3, v24);
          }

          while (v26 >= re::TransformService::opExecutionOrder(v25, v19));
        }

        if (v22 >= v23)
        {
          v39 = v22 - 1;
        }

        else
        {
          v30 = &v9[v18];
          v31 = v23;
          do
          {
            v32 = *v30;
            *v30 = 0;
            *v30 = *v31;
            *v31 = v32;
            do
            {
              v33 = v30[1];
              ++v30;
              v34 = *a3;
              v35 = re::TransformService::opExecutionOrder(*a3, v33);
            }

            while (v35 < re::TransformService::opExecutionOrder(v34, v19));
            do
            {
              v36 = *--v31;
              v37 = *a3;
              v38 = re::TransformService::opExecutionOrder(*a3, v36);
            }

            while (v38 >= re::TransformService::opExecutionOrder(v37, v19));
          }

          while (v30 < v31);
          v39 = v30 - 1;
        }

        v40 = *v167;
        if (v39 != v167)
        {
          *v167 = *v39;
        }

        *v39 = v19;
        if (v40)
        {
        }

        if (v22 >= v23)
        {
          break;
        }

LABEL_39:
        std::__introsort<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,false>(v167, v39, a3, a4, a5 & 1);
        a5 = 0;
        a1 = v39 + 1;
      }

      v41 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*>(v167, v39, a3);
      a1 = v39 + 1;
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*>(v39 + 1, a2, a3))
      {
        break;
      }

      if (!v41)
      {
        goto LABEL_39;
      }
    }

    a2 = v39;
    a1 = v167;
    if (!v41)
    {
      continue;
    }

    break;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(const re::TransformOp **a1, const re::TransformOp **a2, const re::TransformOp **a3, re::TransformService **a4)
{
  v8 = *a1;
  v9 = *a4;
  v10 = re::TransformService::opExecutionOrder(*a4, *a2);
  LODWORD(v8) = re::TransformService::opExecutionOrder(v9, v8);
  v11 = *a2;
  v12 = *a4;
  v13 = re::TransformService::opExecutionOrder(*a4, *a3);
  result = re::TransformService::opExecutionOrder(v12, v11);
  if (v10 >= v8)
  {
    if (v13 < result)
    {
      v16 = *a2;
      *a2 = 0;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a1;
      v18 = *a4;
      v19 = re::TransformService::opExecutionOrder(v18, *a2);
      result = re::TransformService::opExecutionOrder(v18, v17);
      if (v19 < result)
      {
        v20 = *a1;
        *a1 = 0;
        *a1 = *a2;
        *a2 = v20;
      }
    }
  }

  else
  {
    v15 = *a1;
    *a1 = 0;
    if (v13 >= result)
    {
      *a1 = *a2;
      *a2 = v15;
      v21 = *a4;
      v22 = re::TransformService::opExecutionOrder(*a4, *a3);
      result = re::TransformService::opExecutionOrder(v21, v15);
      if (v22 < result)
      {
        v23 = *a2;
        *a2 = 0;
        *a2 = *a3;
        *a3 = v23;
      }
    }

    else
    {
      *a1 = *a3;
      *a3 = v15;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(const re::TransformOp **a1, const re::TransformOp **a2, const re::TransformOp **a3, const re::TransformOp **a4, re::TransformService **a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(a1, a2, a3, a5);
  v10 = *a3;
  v11 = *a5;
  v12 = re::TransformService::opExecutionOrder(*a5, *a4);
  result = re::TransformService::opExecutionOrder(v11, v10);
  if (v12 < result)
  {
    v14 = *a3;
    *a3 = 0;
    *a3 = *a4;
    *a4 = v14;
    v15 = *a2;
    v16 = *a5;
    v17 = re::TransformService::opExecutionOrder(*a5, *a3);
    result = re::TransformService::opExecutionOrder(v16, v15);
    if (v17 < result)
    {
      v18 = *a2;
      *a2 = 0;
      *a2 = *a3;
      *a3 = v18;
      v19 = *a1;
      v20 = *a5;
      v21 = re::TransformService::opExecutionOrder(v20, *a2);
      result = re::TransformService::opExecutionOrder(v20, v19);
      if (v21 < result)
      {
        v22 = *a1;
        *a1 = 0;
        *a1 = *a2;
        *a2 = v22;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(const re::TransformOp **a1, const re::TransformOp **a2, const re::TransformOp **a3, const re::TransformOp **a4, const re::TransformOp **a5, re::TransformService **a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(a1, a2, a3, a4, a6);
  v12 = *a4;
  v13 = *a6;
  v14 = re::TransformService::opExecutionOrder(*a6, *a5);
  result = re::TransformService::opExecutionOrder(v13, v12);
  if (v14 < result)
  {
    v16 = *a4;
    *a4 = 0;
    *a4 = *a5;
    *a5 = v16;
    v17 = *a3;
    v18 = *a6;
    v19 = re::TransformService::opExecutionOrder(*a6, *a4);
    result = re::TransformService::opExecutionOrder(v18, v17);
    if (v19 < result)
    {
      v20 = *a3;
      *a3 = 0;
      *a3 = *a4;
      *a4 = v20;
      v21 = *a2;
      v22 = *a6;
      v23 = re::TransformService::opExecutionOrder(*a6, *a3);
      result = re::TransformService::opExecutionOrder(v22, v21);
      if (v23 < result)
      {
        v24 = *a2;
        *a2 = 0;
        *a2 = *a3;
        *a3 = v24;
        v25 = *a1;
        v26 = *a6;
        v27 = re::TransformService::opExecutionOrder(v26, *a2);
        result = re::TransformService::opExecutionOrder(v26, v25);
        if (v27 < result)
        {
          v28 = *a1;
          *a1 = 0;
          *a1 = *a2;
          *a2 = v28;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*>(const re::TransformOp **a1, const re::TransformOp **a2, re::TransformService **a3)
{
  v4 = a2;
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a1;
        v8 = *a3;
        v9 = re::TransformService::opExecutionOrder(*a3, *(a2 - 1));
        if (v9 < re::TransformService::opExecutionOrder(v8, v7))
        {
          v10 = *a1;
          *a1 = 0;
          *a1 = *(v4 - 1);
          *(v4 - 1) = v10;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v11 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TransformService::sortAndProcessArray(re::DynamicArray<re::SharedPtr<re::TransformOp>> &,unsigned int &)::$_0 &,re::SharedPtr<re::TransformOp>*,0>(a1, a1 + 1, a1 + 2, a3);
  v12 = a1 + 3;
  if (a1 + 3 == v4)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  v28 = v4;
  while (1)
  {
    v15 = *v11;
    v16 = *a3;
    v17 = re::TransformService::opExecutionOrder(*a3, *v12);
    if (v17 < re::TransformService::opExecutionOrder(v16, v15))
    {
      v18 = *v12;
      *v12 = 0;
      v19 = v13;
      while (1)
      {
        v20 = (a1 + v19);
        v22 = *(a1 + v19 + 16);
        v21 = *(a1 + v19 + 24);
        v20[2] = v21;
        v20[3] = v22;
        if (v19 == -16)
        {
          break;
        }

        v23 = v20[1];
        v24 = *a3;
        v25 = re::TransformService::opExecutionOrder(*a3, v18);
        v19 -= 8;
        if (v25 >= re::TransformService::opExecutionOrder(v24, v23))
        {
          v26 = (a1 + v19 + 24);
          v21 = *v26;
          goto LABEL_19;
        }
      }

      v26 = a1;
LABEL_19:
      v4 = v28;
      *v26 = v18;
      if (v21)
      {
      }

      if (++v14 == 8)
      {
        return v12 + 1 == v28;
      }
    }

    v11 = v12;
    v13 += 8;
    if (++v12 == v4)
    {
      return 1;
    }
  }
}

uint64_t re::EventBus::getTypeId<re::RenderingWorldTransformCacheDirtyEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<re::RenderingWorldTransformCacheDirtyEvent>(void)const::s_id = re::EventBus::typeStringToId(("N2re38RenderingWorldTransformCacheDirtyEventE" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[5];
}

void *re::ecs2::allocInfo_AssetStateComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_164, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_164))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A06E8, "AssetStateComponent");
    __cxa_guard_release(&_MergedGlobals_164);
  }

  return &unk_1EE1A06E8;
}

void re::ecs2::initInfo_AssetStateComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v28[0] = 0xB31548095A8B4CB8;
  v28[1] = "AssetStateComponent";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE1A06C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A06C0))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A06C8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint64_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "assetId";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A06D0 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_uint64_t(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "peerId";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2800000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1A06D8 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_uint8_t(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "loadState";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x3000000003;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1A06E0 = v26;
    __cxa_guard_release(&qword_1EE1A06C0);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A06C8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AssetStateComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AssetStateComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AssetStateComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AssetStateComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs219AssetStateComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v27 = v29;
}

void re::internal::defaultConstruct<re::ecs2::AssetStateComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CB7EC8;
}

void re::internal::defaultConstructV2<re::ecs2::AssetStateComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CB7EC8;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs219AssetStateComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 6;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_VisualProxyComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_165, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_165))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A07B0, "VisualProxyComponent");
    __cxa_guard_release(&_MergedGlobals_165);
  }

  return &unk_1EE1A07B0;
}

void re::ecs2::initInfo_VisualProxyComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xECFE882C7DB64B5ELL;
  v16[1] = "VisualProxyComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A0788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A0788))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A0780 = v14;
    __cxa_guard_release(&qword_1EE1A0788);
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A0780;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VisualProxyComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VisualProxyComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VisualProxyComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VisualProxyComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220VisualProxyComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::VisualProxyComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD7128;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 256;
  *(v3 + 56) = 0;
}

void *re::internal::defaultDestruct<re::ecs2::VisualProxyComponent>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 56) == 1)
  {
    objc_destroyWeak((a3 + 64));
    *(a3 + 64) = 0;
  }

  re::TextureHandle::invalidate((a3 + 32));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance((a3 + 8));
}

void re::internal::defaultConstructV2<re::ecs2::VisualProxyComponent>(uint64_t a1)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD7128;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 256;
  *(v1 + 56) = 0;
}

void *re::internal::defaultDestructV2<re::ecs2::VisualProxyComponent>(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    objc_destroyWeak((a1 + 64));
    *(a1 + 64) = 0;
  }

  re::TextureHandle::invalidate((a1 + 32));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance((a1 + 8));
}

void *re::ecs2::allocInfo_VisualProxyFilterComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A0790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A0790))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A0840, "VisualProxyFilterComponent");
    __cxa_guard_release(&qword_1EE1A0790);
  }

  return &unk_1EE1A0840;
}

void re::ecs2::initInfo_VisualProxyFilterComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x762868B3B6AA272ELL;
  v16[1] = "VisualProxyFilterComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A07A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A07A0))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A0798 = v14;
    __cxa_guard_release(&qword_1EE1A07A0);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A0798;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VisualProxyFilterComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VisualProxyFilterComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VisualProxyFilterComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VisualProxyFilterComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226VisualProxyFilterComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::VisualProxyFilterComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD71B0;
}

void re::internal::defaultConstructV2<re::ecs2::VisualProxyFilterComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD71B0;
}

void *re::ecs2::allocInfo_VisualProxySystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A07A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A07A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A08D0, "VisualProxySystem");
    __cxa_guard_release(&qword_1EE1A07A8);
  }

  return &unk_1EE1A08D0;
}

void re::ecs2::initInfo_VisualProxySystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xA52B53AD6A44ED7ALL;
  v8[1] = "VisualProxySystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x26800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_VisualProxySystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VisualProxySystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VisualProxySystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::VisualProxySystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::VisualProxySystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VisualProxySystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VisualProxySystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::VisualProxySystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 46);
  a3[41] = &unk_1F5CD6ED0;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 43);
  v4 = a3[40];
  if (v4)
  {

    a3[40] = 0;
  }

  re::AssetHandle::~AssetHandle((a3 + 37));

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::VisualProxySystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 46);
  a1[41] = &unk_1F5CD6ED0;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 43);
  v2 = a1[40];
  if (v2)
  {

    a1[40] = 0;
  }

  re::AssetHandle::~AssetHandle((a1 + 37));

  re::ecs2::System::~System(a1);
}

os_log_t ___ZN2re4ecs220VisualProxyComponent3logEv_block_invoke()
{
  result = os_log_create("com.apple.re", "VisualProxyComponent");
  re::ecs2::VisualProxyComponent::log(void)::log = result;
  return result;
}

BOOL re::ecs2::VisualProxyComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v19, a5, 0);
  v8 = v19;
  v9 = v20;
  v10 = v20;
  v19 = a4;
  v20 = v8;
  v21 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v19);
      v13 = a3 + 4;
      if ((*(v12 + 48) & 1) == 0)
      {
        if (*(v12 + 49))
        {
          v13 = a3 + 5;
        }

        else
        {
          v13 = a3 + 4;
        }
      }

      v14 = v19;
      v15 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
      re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v14, v15, *v13);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v20);
    }

    while (v20 != a5 || v21 != 0xFFFF || HIWORD(v21) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

uint64_t re::ecs2::VisualProxyComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = re::AssetHandle::loadedAsset<re::MaterialAsset>((*(a1 + 8) + 296));
  v11 = v9;
  v12 = *(*(a1 + 8) + 304);
  if (v12)
  {
    v13 = atomic_load((v12 + 896));
    if ((v9 != 0) != (v13 == 1))
    {
      if (v13 == 1)
      {
        return *(a5 + 40) != 0;
      }

LABEL_6:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v23, a5, 0);
      v14 = v23;
      v15 = v24;
      v16 = v24;
      v23 = a4;
      v24 = v14;
      v25 = v15;
      if (v14 != a5 || v16 != 0xFFFFFFFFLL)
      {
        if (v11)
        {
          do
          {
            v18 = v23;
            v19 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v24);
            re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v18, v19, *(a3 + 48));
            re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v24);
          }

          while (v24 != a5 || v25 != 0xFFFF || HIWORD(v25) != 0xFFFF);
        }

        else
        {
          re::AssetHandle::loadAsync((*(a1 + 8) + 296));
        }
      }

      return *(a5 + 40) != 0;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Asset loaded/loading state is messed up.", "assetLoaded != assetLoading", "processPreparingComponents", 105);
  result = _os_crash("assertion failure: (assetLoaded != assetLoading) Asset loaded/loading state is messed up.");
  __break(1u);
  return result;
}

BOOL re::ecs2::VisualProxyComponentStateImpl::processUpdatingComponents(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v171 = *MEMORY[0x1E69E9840];
  v8 = *(*(a1 + 8) + 232);
  v9 = *(v8 + 14);
  if (v9)
  {
    v10 = re::RenderFrameBox::get((v9 + 328), 0xFFFFFFFFFFFFFFFuLL);
    v8 = *(*(v7 + 8) + 232);
  }

  else
  {
    v10 = 0;
  }

  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  v128 = 0x7FFFFFFFLL;
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v124 = 0x7FFFFFFFLL;
  v11 = re::RenderManager::perFrameAllocator(v8);
  re::MeshAssetLoader::sharedBillboardPlane(*(*(v7 + 8) + 240), 1, v120);
  v102 = (*(**(*(v7 + 8) + 256) + 24))(*(*(v7 + 8) + 256));
  v12 = re::AssetHandle::loadedAsset<re::MeshAsset>(v120);
  if (!v12)
  {
    goto LABEL_79;
  }

  v13 = v12;
  v101 = (*(**(*(v7 + 8) + 608) + 16))(*(*(v7 + 8) + 608));
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&__src, a5, 0);
  v117 = a4;
  v118 = __src.i64[0];
  v119 = __src.i32[2];
  if (__src.i64[0] == a5 && __src.u32[2] == 0xFFFFFFFFLL)
  {
    goto LABEL_79;
  }

  v98 = v10;
  v14.i64[0] = 0x7F0000007FLL;
  v14.i64[1] = 0x7F0000007FLL;
  v99 = vnegq_f32(v14);
  __asm { FMOV            V8.2S, #1.0 }

  v100 = a5;
  do
  {
    v19 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v117);
    v20 = v19;
    v21 = v19[2];
    v22 = v21;
    do
    {
      v23 = v22;
      v22 = *(v22 + 32);
    }

    while (v22);
    v24 = *(v23 + 24);
    v116 = v19[2];
    if (!*(v21 + 256) || !v19[5] || !v19[4])
    {
      goto LABEL_47;
    }

    v25 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((*(v7 + 8) + 296));
    v26 = *(*(v7 + 8) + 320);
    re::MaterialParameterBlock::setTextureHandle(v115, v26, "textureBaseColor", (v20 + 32));
    v115[0] = 0;
    PerspectiveCameraInScene = re::ecs2::PerspectiveCameraComponent::firstPerspectiveCameraInScene(v24);
    if (PerspectiveCameraInScene)
    {
      re::ecs2::PerspectiveCameraComponent::calculateWorldPose(PerspectiveCameraInScene, 0, &__src);
      v106 = v130;
      v28 = v13;
      goto LABEL_20;
    }

    OrthographicCameraInScene = re::ecs2::OrthographicCameraComponent::firstOrthographicCameraInScene(v24);
    v28 = v13;
    if (OrthographicCameraInScene)
    {
      re::ecs2::OrthographicCameraComponent::calculateWorldPose(OrthographicCameraInScene, 0, &__src);
    }

    else
    {
      CustomMatrixCameraInScene = re::ecs2::CustomMatrixCameraComponent::firstCustomMatrixCameraInScene(v24);
      v106 = xmmword_1E30474D0;
      if (!CustomMatrixCameraInScene)
      {
        goto LABEL_20;
      }

      re::ecs2::CustomMatrixCameraComponent::calculateWorldPose(CustomMatrixCameraInScene, 0, &__src);
    }

    v106 = v130;
LABEL_20:
    re::TransformService::worldTransform(*(*(v7 + 8) + 288), v116, 0, &v112);
    if (!*(v28 + 608))
    {
      v107 = 0;
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      __src = 0u;
      v91 = MEMORY[0x1E69E9C10];
      v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v169[0].i32[0] = 136315906;
      *(v169[0].i64 + 4) = "operator[]";
      v169[0].i16[6] = 1024;
      if (v92)
      {
        v93 = 3;
      }

      else
      {
        v93 = 2;
      }

      *(&v169[0].i32[3] + 2) = 797;
      v169[1].i16[1] = 2048;
      *(v169[1].i64 + 4) = 0;
      v169[1].i16[6] = 2048;
      *(&v169[1].i64[1] + 6) = 0;
      _os_log_send_and_compose_impl(v93, &v107, &__src, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v169, 38, v97, v98);
      _os_crash_msg();
      __break(1u);
LABEL_84:
      v107 = 0;
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      __src = 0u;
      v94 = MEMORY[0x1E69E9C10];
      v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v169[0].i32[0] = 136315906;
      *(v169[0].i64 + 4) = "operator[]";
      v169[0].i16[6] = 1024;
      if (v95)
      {
        v96 = 3;
      }

      else
      {
        v96 = 2;
      }

      *(&v169[0].i32[3] + 2) = 797;
      v169[1].i16[1] = 2048;
      *(v169[1].i64 + 4) = v7;
      v169[1].i16[6] = 2048;
      *(&v169[1].i64[1] + 6) = v20;
      _os_log_send_and_compose_impl(v96, &v107, &__src, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v169, 38, v97, v98);
      _os_crash_msg();
      __break(1u);
    }

    v31 = v7;
    v32 = *(*(*(v7 + 8) + 232) + 32);
    v7 = WORD1(**(v28 + 624));
    v20 = *(v32 + 24);
    if (v20 <= v7)
    {
      goto LABEL_84;
    }

    v105 = v25;
    v104 = v114;
    v33 = *&v112;
    v34 = v113;
    v35 = *(*(v32 + 40) + 16 * WORD1(**(v28 + 624))) + 864 * **(v28 + 624);
    v36 = HIDWORD(v112);
    memset(v169, 0, sizeof(v169));
    v170 = 0u;
    v169[1].i32[1] = HIDWORD(v112);
    v169[0].i32[0] = v112;
    v169[2].i32[2] = v113;
    HIDWORD(v170) = 1065353216;
    re::AABB::transform(v35 + 16, v169, v111);
    v131 = 0u;
    v132 = 0u;
    __src = 0u;
    v130 = 0u;
    v133 = 0u;
    v134 = v99;
    v37.i64[0] = 0x7F0000007FLL;
    v37.i64[1] = 0x7F0000007FLL;
    v135 = v37;
    v151[80] = 0;
    v151[96] = 0;
    v152 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0;
    memset(v151, 0, 76);
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
    {
      dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
    }

    v103 = v33;
    v38 = *(&v106 + 1);
    v153 = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
    v154 = _D8;
    v155 = 1065353216;
    v156 = 0u;
    memset(v157, 0, sizeof(v157));
    v158 = 0xFFFFFFFF00000001;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v163 = 65537;
    v39 = 1;
    v164 = 1;
    v165 = xmmword_1E3060D60;
    v166 = 16788070;
    v168 = 0;
    v167 = 0;
    re::MeshScene::setRenderModel(&__src, v11, v35, 0);
    v107 = v111;
    *&v108 = 1;
    v40 = (*(*v11 + 32))(v11, 72, 8);
    *&v136 = re::MeshBoundingBoxes::MeshBoundingBoxes(v40, v11, &v107, 1);
    v107 = v111;
    *&v108 = 1;
    v41 = (*(*v11 + 32))(v11, 72, 8);
    v42 = re::MeshBoundingBoxes::MeshBoundingBoxes(v41, v11, &v107, 1);
    v43 = *&v106;
    v44 = v43 + v43;
    v45 = v43 * (v43 + v43);
    v46 = v38 * (v38 + v38);
    v47 = *(&v106 + 2) * (*(&v106 + 2) + *(&v106 + 2));
    v48 = *(&v106 + 1) * v44;
    v49 = *(&v106 + 2) * v44;
    v50 = *(&v106 + 2) * (*(&v106 + 1) + *(&v106 + 1));
    v51 = *(&v106 + 3) * (v38 + v38);
    v52 = *(&v106 + 3) * (*(&v106 + 2) + *(&v106 + 2));
    v53.i32[3] = 0;
    v53.f32[0] = 1.0 - (v46 + v47);
    v53.f32[1] = (*(&v106 + 1) * v44) + v52;
    v53.f32[2] = (*(&v106 + 2) * v44) - v51;
    v54 = *(&v106 + 3) * v44;
    v55.i32[3] = 0;
    v55.f32[0] = v48 - v52;
    v55.f32[1] = 1.0 - (v45 + v47);
    v55.f32[2] = v50 + v54;
    *&v56 = 1.0 - (v45 + v46);
    v57.f32[0] = v49 + v51;
    v57.f32[1] = v50 - v54;
    v57.i64[1] = v56;
    *(&v136 + 1) = v42;
    v58 = vmulq_laneq_f32(v57, vdupq_n_s64(v34), 2);
    v59 = v104;
    HIDWORD(v59) = 1.0;
    v137 = vmulq_n_f32(v53, v103);
    v138 = vmulq_n_f32(v55, *&v36);
    v139 = v58;
    v140 = v59;
    v60 = *(v105 + 1776);
    v61 = (*(*v11 + 32))(v11, 8, 8);
    *v61 = v60;
    *&v141 = v61;
    *(&v141 + 1) = 1;
    v62 = re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(v26, v11);
    v63 = (*(*v11 + 32))(v11, 8, 8);
    *v63 = v62;
    *&v147 = v63;
    *(&v147 + 1) = 1;
    *&v157[8] = *(v116 + 39);
    v64 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v101, &v116);
    if (v64)
    {
      v39 = *v64;
    }

    a5 = v100;
    LODWORD(v158) = v39;
    v134 = v111[0];
    v135 = v111[1];
    (*(*v102 + 8))(&v107);
    if (v107)
    {
      v65 = v108;
    }

    else
    {
      v65 = 0;
    }

    v108 = 0uLL;
    v109 = 0;
    v110 = 0;
    v107 = v11;
    re::DynamicArray<re::MeshScene>::setCapacity(&v107, 0);
    ++v109;
    v66 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v65 ^ (v65 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v65 ^ (v65 >> 30))) >> 27));
    v67 = v66 ^ (v66 >> 31);
    if (!v125)
    {
      LODWORD(v68) = 0;
      v7 = v31;
LABEL_35:
      v70 = re::HashTable<unsigned long long,re::MeshSceneCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v125, v68, v67);
      *(v70 + 16) = v107;
      v71 = (v70 + 16);
      *(v70 + 8) = v65;
      *(v70 + 24) = v108;
      v107 = 0;
      v108 = 0uLL;
      *(v70 + 48) = v110;
      v110 = 0;
      ++v109;
      *(v70 + 40) = 1;
      ++HIDWORD(v128);
      goto LABEL_37;
    }

    v68 = v67 % DWORD2(v126);
    v69 = *(*(&v125 + 1) + 4 * v68);
    v7 = v31;
    if (v69 == 0x7FFFFFFF)
    {
      goto LABEL_35;
    }

    while (*(v126 + (v69 << 6) + 8) != v65)
    {
      v69 = *(v126 + (v69 << 6)) & 0x7FFFFFFF;
      if (v69 == 0x7FFFFFFF)
      {
        goto LABEL_35;
      }
    }

    v71 = (v126 + (v69 << 6) + 16);
LABEL_37:
    re::DynamicArray<re::MeshScene>::deinit(&v107);
    if (*v71)
    {
      re::DynamicArray<re::MeshScene>::add(v71, &__src);
    }

    if (v121)
    {
      v72 = v67 % DWORD2(v122);
      v73 = *(*(&v121 + 1) + 4 * v72);
      if (v73 != 0x7FFFFFFF)
      {
        while (*(v122 + 32 * v73 + 8) != v65)
        {
          v73 = *(v122 + 32 * v73) & 0x7FFFFFFF;
          if (v73 == 0x7FFFFFFF)
          {
            goto LABEL_45;
          }
        }

        goto LABEL_46;
      }
    }

    else
    {
      LODWORD(v72) = 0;
    }

LABEL_45:
    v74 = re::HashTable<unsigned long long,re::ecs2::Scene const*,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v121, v72, v67);
    *(v74 + 8) = v65;
    *(v74 + 16) = v24;
    ++HIDWORD(v124);
LABEL_46:
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v151[8]);
LABEL_47:
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v118);
  }

  while (v118 != a5 || v119 != 0xFFFF || HIWORD(v119) != 0xFFFF);
  v77 = v127;
  if (v127)
  {
    v78 = 0;
    v79 = v126;
    v80 = v98;
    while (1)
    {
      v81 = *v79;
      v79 += 16;
      if (v81 < 0)
      {
        break;
      }

      if (v127 == ++v78)
      {
        LODWORD(v78) = v127;
        break;
      }
    }
  }

  else
  {
    LODWORD(v78) = 0;
    v80 = v98;
  }

  if (v78 != v127)
  {
    v82 = v126;
    do
    {
      v83 = *(v82 + (v78 << 6) + 8);
      v84 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v83 ^ (v83 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v83 ^ (v83 >> 30))) >> 27));
        ;
      }

      re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(&__src, *(v122 + 32 * i + 16), v83, v80);
      v169[0].i64[0] = __src.i64[0] >> 1;
      v86 = **(re::RenderFrameData::stream((v80 + 33), v169) + 48);
      v87 = (*(v86 + 504))();
      if (__src.i8[0])
      {
        if (__src.i8[0])
        {
        }
      }

      if (v127 <= v78 + 1)
      {
        v88 = v78 + 1;
      }

      else
      {
        v88 = v127;
      }

      v82 = v126;
      while (v88 - 1 != v78)
      {
        LODWORD(v78) = v78 + 1;
        if ((*(v126 + (v78 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_78;
        }
      }

      LODWORD(v78) = v88;
LABEL_78:
      ;
    }

    while (v78 != v77);
  }

LABEL_79:
  v89 = *(a5 + 40) != 0;
  re::AssetHandle::~AssetHandle(v120);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v121);
  re::HashTable<unsigned long long,re::MeshSceneCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v125);
  return v89;
}

re::ecs2::VisualProxySystem *re::ecs2::VisualProxySystem::VisualProxySystem(re::ecs2::VisualProxySystem *this)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 288) = 0;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *v2 = &unk_1F5CD6F10;
  v3 = v2 + 328;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = &unk_1F5CD6ED0;
  *(v2 + 336) = v2;
  *(v2 + 352) = 0;
  *(v2 + 360) = 0;
  *(v2 + 344) = 0;
  v9[1] = 1;
  v10[0] = re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v9[0] = v10;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 344), v9);
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 96) = 1;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 49) = 0;
  *(this + 104) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 126) = 1;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 68) = 0;
  *(this + 138) = 1;
  *(this + 585) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 488), 0);
  *(this + 126) += 2;
  *(this + 66) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 536), 0);
  *(this + 138) += 2;
  *(this + 72) = 0;
  *(this + 73) = this;
  *(this + 74) = v3;
  *(this + 600) = 1;
  *(this + 76) = 0;
  return this;
}

_anonymous_namespace_ *re::ecs2::VisualProxySystem::willAddSystemToECSService(_anonymous_namespace_ **this)
{
  result = re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v4 = this[28];
  if (v4 && (*(v4 + 432) & 0x10) == 0)
  {
    return result;
  }

  v5 = this[30];
  if (!v5)
  {
    re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) ", "m_assetService", "willAddSystemToECSService", 249);
    _os_crash("assertion failure: (m_assetService) ");
    __break(1u);
    goto LABEL_11;
  }

  v6 = this[29];
  if (!v6)
  {
LABEL_11:
    re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "willAddSystemToECSService", 250);
    result = _os_crash("assertion failure: (m_renderManager) ");
    __break(1u);
    return result;
  }

  (*(*v5 + 8))(v12, this[30], "engine:visualProxy.rematerialdefinition");
  re::MaterialAsset::makeMaterialMemoryAsset(v5, v6, v12, 0, 0);
  v7 = *(this + 37);
  *(this + 37) = v13;
  v13 = v7;
  v8 = this[39];
  this[39] = v14;
  v14 = v8;
  re::AssetHandle::~AssetHandle(&v13);
  re::AssetHandle::~AssetHandle(v12);
  if (re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 37)))
  {
    *&v13 = this[29];
    re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(&v13, &v11);
    v9 = this[40];
    this[40] = v11;
    v11 = v9;
    if (v9)
    {
    }
  }

  v10 = (*(*this[5] + 32))(this[5]);
  result = re::ServiceLocator::serviceOrNull<re::ecs2::VisualProxyScopeService>(v10);
  this[76] = result;
  return result;
}

double re::ecs2::VisualProxySystem::willRemoveSystemFromECSService(re::ecs2::VisualProxySystem *this)
{
  v2 = *(this + 296);
  v3 = *(this + 39);
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 37) = 0;
  v6 = v2;
  v7 = v3;
  re::AssetHandle::~AssetHandle(&v6);
  v4 = *(this + 40);
  if (v4)
  {

    *(this + 40) = 0;
  }

  *(this + 76) = 0;
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 36) = 0;
  return result;
}

unint64_t re::ecs2::VisualProxySystem::willAddSceneToECSService(re::ecs2::VisualProxySystem *this, re::ecs2::Scene *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v4 = *(this + 62);
  v5 = *(this + 126);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 512);
    }

    else
    {
      v6 = *(this + 65);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (this + 512);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 65);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v44 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 488, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 368, v44);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::init(v12, this + 368, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 53, &v52, &v44);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 488, v44);
    v13 = v44;
    goto LABEL_49;
  }

LABEL_17:
  v51 = 0u;
  v44 = 0u;
  *&v45 = 0;
  v46 = 0u;
  v47 = 0u;
  *(&v45 + 1) = -1;
  v48 = 0;
  v49 = 1;
  v50 = 0uLL;
  v14 = *(this + 51);
  *&v51 = 0;
  v15 = *(this + 47);
  DWORD2(v51) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>,4ul>::setBucketsCapacity((this + 368), (v14 + 4) >> 2);
    v15 = *(this + 47);
  }

  if (v15 <= v14 >> 2)
  {
    v53 = 0;
    memset(v62, 0, sizeof(v62));
    v40 = MEMORY[0x1E69E9C10];
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v57 = 858;
    v58 = 2048;
    v59 = v14 >> 2;
    v60 = 2048;
    v61 = v15;
    _os_log_send_and_compose_impl(v41, &v53, v62, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v42, v43);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(this + 384))
  {
    v16 = this + 392;
  }

  else
  {
    v16 = *(this + 50);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 51);
  ++*(this + 104);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v44;
  v20 = v45;
  v21 = v46;
  *(v18 + 48) = v47;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v47 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v44);
  v23 = *(this + 51);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 368, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::init(v24, this + 368, v52);
  *&v62[0] = *(this + 51) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 53, &v52, v62);
  v25 = *(this + 51);
  v26 = *(this + 66);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 66) = v25;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 488), v27, &v44);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 66) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 504))
    {
      v30 = this + 512;
    }

    else
    {
      v30 = *(this + 65);
    }

    *&v30[8 * *(this + 62) - 8] &= v28;
  }

  v31 = *(this + 51);
  v32 = *(this + 72);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 72) = v31;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 536), v33, &v44);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 72) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 552))
    {
      v36 = this + 560;
    }

    else
    {
      v36 = *(this + 71);
    }

    *&v36[8 * *(this + 68) - 8] &= v34;
  }

  v13 = *&v62[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 536, v13);
  if (*(this + 600) == 1)
  {
    v38 = *(this + 73);
    v39 = *(v52 + 47);
    LOWORD(v44) = 257;
    DWORD1(v44) = 1023969417;
    BYTE8(v44) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v44);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 368);
  }

  return result;
}

uint64_t re::ecs2::VisualProxySystem::willRemoveSceneFromECSService(re::ecs2::VisualProxySystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 53, &v15);
  if (result != -1)
  {
    v4 = *(this + 54) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 488, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 536, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 368, *(v4 + 8));
    if (*v5)
    {
      v6 = v5;
      *v5 = 0;
      v7 = v5 + 1;
      v8 = *(v5[1] + 288);
      if (v8)
      {
        v9 = v5[12];
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 7), i);
            re::EventBus::unsubscribe(v8, *v11, v11[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v6 + 7));
      v12 = 0;
      v13 = v6 + 3;
      do
      {
        v14 = v6[2];
        if (*v14)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v14, v13[v12]);
        }

        v13[v12++] = -1;
      }

      while (v12 != 4);
      *v7 = 0;
      v7[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 424, &v15);
  }

  return result;
}

void re::ecs2::VisualProxySystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v5 = a1[28];
  if (v5 && (*(v5 + 432) & 0x10) == 0)
  {
    return;
  }

  if (!a1[30])
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_assetService", "update", 289, v31, v32);
    _os_crash("assertion failure: (m_assetService) ");
    __break(1u);
    goto LABEL_43;
  }

  if (!a1[29])
  {
LABEL_43:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "update", 290);
    _os_crash("assertion failure: (m_renderManager) ");
    __break(1u);
    return;
  }

  re::StackScratchAllocator::StackScratchAllocator(v44);
  v40 = 1;
  v41 = 0;
  v42 = 0;
  v38 = v44;
  v39 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v38, 0);
  v40 += 2;
  v6 = a1[72];
  if ((v6 & 0x3F) != 0)
  {
    v7 = (v6 >> 6) + 1;
  }

  else
  {
    v7 = v6 >> 6;
  }

  v43 = a1[72];
  v33[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v38, v7, v33);
  v8 = *(a3 + 200);
  if (v8)
  {
    v9 = *(a3 + 216);
    v10 = 8 * v8;
    do
    {
      v11 = *v9++;
      v33[0] = v11;
      v12 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 53, v33);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v38, *(a1[54] + 16 * v12 + 8));
      v10 -= 8;
    }

    while (v10);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v38, (a1 + 67));
  v34 = 1;
  v35 = 0;
  v36 = 0;
  v33[0] = v44;
  v33[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v33, 0);
  v34 += 2;
  v13 = a1[72];
  if ((v13 & 0x3F) != 0)
  {
    v14 = (v13 >> 6) + 1;
  }

  else
  {
    v14 = v13 >> 6;
  }

  v37 = a1[72];
  v45 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v33, v14, &v45);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 67), &v38);
  v15 = v42;
  if (v40)
  {
    v15 = &v41;
  }

  v16 = v39;
  if ((v39 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v17 = 0;
    while (1)
    {
      v19 = *v15++;
      v18 = v19;
      if (v19)
      {
        break;
      }

      v17 -= 64;
      if (!--v16)
      {
        goto LABEL_34;
      }
    }

    v20 = __clz(__rbit64(v18));
    if (v20 + 1 != v17)
    {
      FirstBitSet = v20 - v17;
      do
      {
        v22 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 46), FirstBitSet);
        v23 = *(*v22 + 224);
        v24 = v22[3];
        v25 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v24);
        if (*(v25 + 40))
        {
          v26 = (*(*v23 + 24))(v23, &v31, v22, v24, v25, 0);
        }

        else
        {
          v26 = 0;
        }

        v27 = v22[5];
        v28 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v27);
        if (*(v28 + 40))
        {
          v26 |= (*(*v23 + 32))(v23, &v31, v22, v27, v28, 0);
        }

        v29 = v22[6];
        v30 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v29);
        if (*(v30 + 40))
        {
          if (((v26 | (*(*v23 + 40))(v23, &v31, v22, v29, v30, 0)) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else if (!v26)
        {
LABEL_32:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v33, FirstBitSet);
          goto LABEL_33;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v33, FirstBitSet);
LABEL_33:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v38, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_34:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 67), v33);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 46));
  if (v33[0] && (v34 & 1) == 0)
  {
    (*(*v33[0] + 40))();
  }

  if (v38)
  {
    if ((v40 & 1) == 0)
    {
      (*(*v38 + 40))();
    }
  }

  re::StackScratchAllocator::~StackScratchAllocator(v44);
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::VisualProxyComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 24;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v6), v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v6 += 8;
    }

    while (v6 != 56);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

void re::ecs2::VisualProxySystem::~VisualProxySystem(re::ecs2::VisualProxySystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 46);
  *(this + 41) = &unk_1F5CD6ED0;
  re::FixedArray<CoreIKTransform>::deinit(this + 43);
  v2 = *(this + 40);
  if (v2)
  {

    *(this + 40) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 296));

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 46);
  *(this + 41) = &unk_1F5CD6ED0;
  re::FixedArray<CoreIKTransform>::deinit(this + 43);
  v2 = *(this + 40);
  if (v2)
  {

    *(this + 40) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 296));
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::VisualProxyComponent::~VisualProxyComponent(id *this)
{
  if (*(this + 56) == 1)
  {
    objc_destroyWeak(this + 8);
    this[8] = 0;
  }

  re::TextureHandle::invalidate(this + 4);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  if (*(this + 56) == 1)
  {
    objc_destroyWeak(this + 8);
    this[8] = 0;
  }

  re::TextureHandle::invalidate(this + 4);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs220VisualProxyComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 5;
  *(a2 + 8) = 0;
  return result;
}

void re::ecs2::VisualProxyFilterComponent::~VisualProxyFilterComponent(re::ecs2::VisualProxyFilterComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs226VisualProxyFilterComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 9;
  *(a2 + 8) = 0;
  return result;
}

double re::HashTable<unsigned long long,re::MeshSceneCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicArray<re::MeshScene>::deinit(v6 + v4 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 64;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::MeshBoundingBoxes::MeshBoundingBoxes(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v4 = a3;
  v5 = a2;
  v6 = a1;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (!a4)
  {
    goto LABEL_10;
  }

  v7 = a3[1];
  if (!v7)
  {
    v13 = 0;
    v9 = 0;
LABEL_9:
    memcpy(v9, *v4, v13);
    v14 = *(v4 + 8);
    v18[0] = v9;
    v18[1] = v14;
    a3 = v18;
    a1 = v6;
    a2 = v5;
LABEL_10:
    re::MeshBoundingBoxes::init(a1, a2, a3);
    return v6;
  }

  if (!(v7 >> 59))
  {
    v8 = (*(*a2 + 32))(a2, (32 * v7) | 0x1F, 0);
    v9 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF0);
    v9[-1].i64[0] = v7;
    v9[-1].i64[1] = v8;
    v10 = v9 + 1;
    v11.i64[0] = 0x7F0000007FLL;
    v11.i64[1] = 0x7F0000007FLL;
    v12 = vnegq_f32(v11);
    do
    {
      v10[-1] = v12;
      *v10 = v11;
      v10 += 2;
      --v7;
    }

    while (v7);
    v13 = 32 * *(v4 + 8);
    goto LABEL_9;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 32, v7);
  result = _os_crash("assertion failure: (!overflow) Size overflow in allocateArray. Element size = %zu, count = %zu", v16, v17);
  __break(1u);
  return result;
}

uint64_t re::HashTable<unsigned long long,re::MeshSceneCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::MeshSceneCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 24) % *(a1 + 24), *(v17 + 24));
                v19 = *(v17 - 24);
                *(v18 + 48) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 8) = v19;
                *(v18 + 16) = 0;
                v20 = *(v17 - 8);
                *(v18 + 16) = *(v17 - 16);
                *(v18 + 24) = v20;
                *(v17 - 16) = 0;
                *(v17 - 8) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *v17;
                *v17 = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *(v17 + 16);
                *(v17 + 16) = v22;
                ++*(v17 + 8);
                ++*(v18 + 40);
              }

              v17 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::MeshSceneCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + (v5 << 6);
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v26 + 56) = a3;
  *(v27 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v23 + (v5 << 6);
}

uint64_t re::HashTable<unsigned long long,re::ecs2::Scene const*,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::ecs2::Scene const*,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24), v17[1]);
                v19 = *v17;
                *(v18 + 8) = *(v17 - 1);
                *(v18 + 16) = v19;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v20 + 32 * v5;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 448, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent> *,2ul>::setCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent> *,2ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = *(result + 3);
  }

  if (v8 != a2)
  {
    v9 = *(result + 1);
    if (v9 <= a2 && (a2 > 2 || (v7 & 1) == 0))
    {
      if (a2 < 3)
      {
        v14 = (result + 24);
        v15 = *(v4 + 4);
        if (v7)
        {
          v16 = v4 + 24;
        }

        else
        {
          v16 = *(v4 + 4);
        }

        memcpy(v14, v16, 8 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        v10 = (*(*v5 + 32))(*result, 8 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (*(v4 + 16))
          {
            v13 = v4 + 24;
          }

          else
          {
            v13 = *(v4 + 4);
          }

          result = memcpy(v10, v13, 8 * *(v4 + 1));
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, *(v4 + 4));
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          *(v4 + 3) = a2;
          *(v4 + 4) = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
      __break(1u);
    }
  }

  return result;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CD6FC8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD7020;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD7078;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD70D0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CD6FC8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CD7020;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CD7078;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CD70D0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD6FC8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD6FC8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD7020;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD7020;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD7078;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD7078;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD70D0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD70D0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

re::Constraint *re::ecs2::PhysicsRuntimeJointFactory::createRuntimeJoint(re::ecs2::PhysicsRuntimeJointFactory *this, const re::ecs2::PhysicsJointDefinition *a2, re::PhysicsSimulation *a3, re::ecs2::Scene *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = re::ecs2::EntityHandle::resolve(this + 16, a3);
  v8 = v7;
  if (v7)
  {
    v9 = *(v7 + 37);
  }

  else
  {
    v9 = "null";
  }

  v10 = re::ecs2::EntityHandle::resolve(this + 128, a3);
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 37);
  }

  else
  {
    v12 = "null";
  }

  v37 = 0;
  v34 = 0uLL;
  v35 = 0;
  v36 = 0x3F80000000000000;
  v33 = 0;
  v30 = 0uLL;
  v31 = 0;
  v32 = 0x3F80000000000000;
  DataToCreateRuntimeJoint = re::ecs2::PhysicsJointDefinition::getDataToCreateRuntimeJoint(this, a2, a3, 0, &v37, &v34, &v33, &v30);
  v15 = 0;
  if (DataToCreateRuntimeJoint)
  {
    return v15;
  }

  v17 = *this;
  if (*this > 3)
  {
    switch(LODWORD(v17))
    {
      case 4:
        v22 = re::PhysicsFactory::defaultFactory(DataToCreateRuntimeJoint, v14);
        v15 = (*(*v22 + 64))(v22, re::PhysicsFactory::m_defaultAllocator, v37, &v34, v33, &v30, *(this + 240));
        *(v15 + 7) = *(this + 244);
        (*(*v15 + 56))(v15);
        break;
      case 5:
        v27 = re::PhysicsFactory::defaultFactory(DataToCreateRuntimeJoint, v14);
        v15 = (*(*v27 + 80))(v27, re::PhysicsFactory::m_defaultAllocator, v37, &v34, v33, &v30, *(this + 240));
        *buf = *(this + 244);
        re::DistanceJoint::setDistanceRange(v15, buf);
        *(v15 + 16) = fmaxf(*(this + 73), 0.0);
        (*(*v15 + 64))(v15);
        break;
      case 6:
        v20 = re::PhysicsFactory::defaultFactory(DataToCreateRuntimeJoint, v14);
        v15 = (*(*v20 + 88))(v20, re::PhysicsFactory::m_defaultAllocator, v37, &v34, v33, &v30, *(this + 240));
        *(v15 + 7) = *(this + 244);
        (*(*v15 + 56))(v15);
        *(v15 + 8) = *(this + 252);
        (*(*v15 + 56))(v15);
        *(v15 + 9) = *(this + 260);
        (*(*v15 + 56))(v15);
        *(v15 + 10) = *(this + 268);
        (*(*v15 + 56))(v15);
        *(v15 + 11) = *(this + 276);
        (*(*v15 + 56))(v15);
        *(v15 + 12) = *(this + 284);
        (*(*v15 + 56))(v15);
        break;
      default:
        return v15;
    }

    goto LABEL_32;
  }

  if (LODWORD(v17) == 1)
  {
    v21 = re::PhysicsFactory::defaultFactory(DataToCreateRuntimeJoint, v14);
    v15 = (*(*v21 + 56))(v21, re::PhysicsFactory::m_defaultAllocator, v37, &v34, v33, &v30, 0);
LABEL_19:
    if (!v15)
    {
      return v15;
    }

    goto LABEL_32;
  }

  if (LODWORD(v17) != 2)
  {
    if (LODWORD(v17) != 3)
    {
      return v15;
    }

    v18 = re::PhysicsFactory::defaultFactory(DataToCreateRuntimeJoint, v14);
    v15 = (*(*v18 + 48))(v18, re::PhysicsFactory::m_defaultAllocator, v37, &v34, v33, &v30, *(this + 240));
    LODWORD(v19) = *(this + 67);
    re::HingeJoint::setAngularLimit(v15, v19, *(this + 68));
    goto LABEL_19;
  }

  v23 = re::PhysicsFactory::defaultFactory(DataToCreateRuntimeJoint, v14);
  v24 = (*(*v23 + 72))(v23, re::PhysicsFactory::m_defaultAllocator, v37, &v34, v33, &v30, *(this + 240));
  v15 = v24;
  v25 = *(this + 70);
  v26 = *(this + 72);
  if (v25 > 3.1416)
  {
    v25 = 3.1416;
  }

  if (v25 < -1.0)
  {
    v25 = -1.0;
  }

  if (v26 > 3.1416)
  {
    v26 = 3.1416;
  }

  if (v26 < -1.0)
  {
    v26 = -1.0;
  }

  v24[14] = v25;
  v24[15] = v26;
  (*(*v24 + 56))(v24);
LABEL_32:
  re::PhysicsJointCollection::add((a2 + 136), v15);
  v29 = *re::physicsLogObjects(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = v9;
    v39 = 2048;
    v40 = v8;
    v41 = 2080;
    v42 = v12;
    v43 = 2048;
    v44 = v11;
    _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "PhysicsRuntimeJointFactory::createRuntimeJoint(): Runtime joint created, Entity %s (%p), Entity %s (%p)", buf, 0x2Au);
  }

  return v15;
}

re::ecs2::ImagePresentationComponent *re::ecs2::ImagePresentationComponent::ImagePresentationComponent(re::ecs2::ImagePresentationComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CD7238;
  *(v2 + 28) = 1065353216;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 1;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 104) = 0;
  *(v2 + 128) = 1;
  *(v2 + 132) = 0;
  *(v2 + 134) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 148) = 1;
  *(v2 + 152) = 1110966272;
  *(v2 + 220) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 0;
  *(v2 + 312) = 0x80000000040;
  *(v2 + 320) = 2048;
  *(v2 + 324) = 1;
  *(v2 + 328) = 0;
  *(v2 + 336) = 0;
  *(v2 + 344) = 0;
  *(v2 + 352) = 0;
  *(v2 + 360) = 0;
  v3 = *re::imagePresentationLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "[ImagePresentationComponent] Component initialized.", v5, 2u);
  }

  return this;
}

void re::ecs2::ImagePresentationComponent::~ImagePresentationComponent(id *this)
{
  *this = &unk_1F5CD7238;

  re::AssetHandle::~AssetHandle((this + 34));
  re::AssetHandle::~AssetHandle((this + 31));
  re::DynamicArray<re::AssetHandle>::deinit((this + 26));
  re::AssetHandle::~AssetHandle((this + 23));
  re::AssetHandle::~AssetHandle((this + 20));
  re::AssetHandle::~AssetHandle((this + 13));
  re::AssetHandle::~AssetHandle((this + 8));
  re::AssetHandle::~AssetHandle((this + 5));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  re::ecs2::ImagePresentationComponent::~ImagePresentationComponent(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ImagePresentationComponent::setLoadingImageTextureAsset(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2[1] && !re::AssetHandle::blockUntilLoaded<re::TextureAsset>(a2))
  {
    v4 = *re::imagePresentationLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 16) + 312);
      v6 = 134217984;
      v7 = v5;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[ImagePresentationComponent] Unable to set the loading image texture asset because the asset handle does not reference a texture. [entityID: %llu]", &v6, 0xCu);
    }
  }

  else
  {

    re::AssetHandle::operator=(a1 + 40, a2);
  }
}

void re::ecs2::ImagePresentationComponent::setMonoImageTextureAsset(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2[1] && !re::AssetHandle::blockUntilLoaded<re::TextureAsset>(a2))
  {
    v4 = *re::imagePresentationLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 16) + 312);
      v6 = 134217984;
      v7 = v5;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[ImagePresentationComponent] Unable to set the mono image texture asset because the asset handle does not reference a texture. [entityID: %llu]", &v6, 0xCu);
    }
  }

  else
  {

    re::AssetHandle::operator=(a1 + 64, a2);
  }
}

void re::ecs2::ImagePresentationComponent::setStereoImageTextureAsset(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2[1] && !re::AssetHandle::blockUntilLoaded<re::TextureAsset>(a2))
  {
    v4 = *re::imagePresentationLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 16) + 312);
      v6 = 134217984;
      v7 = v5;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[ImagePresentationComponent] Unable to set the stereo image texture asset because the asset handle does not reference a texture. [entityID: %llu]", &v6, 0xCu);
    }
  }

  else
  {

    re::AssetHandle::operator=(a1 + 104, a2);
  }
}

void re::ecs2::ImagePresentationComponent::onSpatial3DImageGenerationStarted(re::ecs2::ImagePresentationComponent *this)
{
  v2 = *re::imagePresentationLogObjects(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponent]: Received notification that Spatial3DImage generation has started", v4, 2u);
  }

  *(this + 344) = 1;
  v3 = *(*(this + 2) + 216);
  if (v3)
  {
    re::ecs2::NetworkComponent::markDirty(v3, this);
  }
}

void re::ecs2::ImagePresentationComponent::onSpatial3DImageGenerationCompleted(re::ecs2::ImagePresentationComponent *this)
{
  v2 = *re::imagePresentationLogObjects(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponent]: Received notification that Spatial3DImage generation has completed", v5, 2u);
  }

  *(this + 344) = 0;
  v3 = *(this + 42);
  *(this + 42) = 0;

  v4 = *(*(this + 2) + 216);
  if (v4)
  {
    re::ecs2::NetworkComponent::markDirty(v4, this);
  }
}

void re::ecs2::ImagePresentationComponent::onSpatial3DImageGenerationFailed(re::ecs2::ImagePresentationComponent *this)
{
  v2 = *re::imagePresentationLogObjects(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponent]: Received notification that Spatial3DImage generation has failed", v4, 2u);
  }

  *(this + 344) = 0;
  v3 = *(*(this + 2) + 216);
  if (v3)
  {
    re::ecs2::NetworkComponent::markDirty(v3, this);
  }
}

void re::ecs2::ImagePresentationComponent::onSpatial3DImageGenerationCancelled(re::ecs2::ImagePresentationComponent *this)
{
  v2 = *re::imagePresentationLogObjects(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponent]: Received notification that Spatial3DImage generation was cancelled", v4, 2u);
  }

  *(this + 344) = 0;
  v3 = *(*(this + 2) + 216);
  if (v3)
  {
    re::ecs2::NetworkComponent::markDirty(v3, this);
  }
}

void re::ecs2::ImagePresentationComponent::onSpatial3DImageGenerationProgress(re::ecs2::ImagePresentationComponent *this, float a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *re::imagePresentationLogObjects(this);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = (a2 * 100.0);
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponent]: Received notification that Spatial3DImage generation has reached %f percent completion", &v4, 0xCu);
  }
}

uint64_t re::ecs2::ImagePresentationComponent::tryToNotifySpatial3DImageOfAddEvent(uint64_t this, re::ecs2::Entity *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 336))
  {
    v2 = this;
    if (*(this + 360))
    {
      if (*(this + 16) == a2)
      {
        v4 = *re::imagePresentationLogObjects(this);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v5 = *(a2 + 39);
          v6 = 134217984;
          v7 = v5;
          _os_log_debug_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEBUG, "[ImagePresentationComponent] notify Spatial3DImage to add back to the owner list. [entityID: %llu]", &v6, 0xCu);
        }

        return (*(*(v2 + 360) + 16))();
      }
    }
  }

  return this;
}

uint64_t re::ecs2::ImagePresentationComponent::tryToNotifySpatial3DImageOfRemoveEvent(uint64_t this, re::ecs2::Entity *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 336))
  {
    v2 = this;
    if (*(this + 352))
    {
      if (*(this + 16) == a2)
      {
        v4 = *re::imagePresentationLogObjects(this);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v5 = *(a2 + 39);
          v6 = 134217984;
          v7 = v5;
          _os_log_debug_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEBUG, "[ImagePresentationComponent] notify Spatial3DImage to remove from the owner list. [entityID: %llu]", &v6, 0xCu);
        }

        return (*(*(v2 + 352) + 16))();
      }
    }
  }

  return this;
}

void *re::ecs2::allocInfo_ImagePresentationComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A0968, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A0968))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A0970, "ImagePresentationComponent");
    __cxa_guard_release(&qword_1EE1A0968);
  }

  return &unk_1EE1A0970;
}

void re::ecs2::initInfo_ImagePresentationComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v139[0] = 0x8B06A5456527A910;
  v139[1] = "ImagePresentationComponent";
  if (v139[0])
  {
    if (v139[0])
    {
    }
  }

  *(this + 2) = v140;
  if ((atomic_load_explicit(&_MergedGlobals_166, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_166))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A0A00 = v14;
    v15 = re::introspectionAllocator();
    v16 = re::introspect_Vector2F(1);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "m_contentDimensionHint";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x2000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1A0A08 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_AssetHandle(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "m_loadingImageTextureAsset";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x2800000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1A0A10 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_AssetHandle(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "m_monoImageTextureAsset";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x4000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1A0A18 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_long(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "m_monoImageTextureIndex";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x5800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1A0A20 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_uint32_t(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "m_monoImageOrientation";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x6000000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1A0A28 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::introspect_AssetHandle(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "m_stereoImageTextureAsset";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x6800000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE1A0A30 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::introspect_uint32_t(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "m_stereoImageOrientation";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x8000000007;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE1A0A38 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::ecs2::introspect_ImageViewingMode(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "m_desiredViewingMode";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0x8400000008;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE1A0A40 = v45;
    v46 = re::introspectionAllocator();
    v48 = re::ecs2::introspect_ImageContentType(1, v47);
    v49 = (*(*v46 + 32))(v46, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "m_detectedContentType";
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0x8600000009;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE1A0A48 = v49;
    v50 = re::introspectionAllocator();
    v52 = re::introspect_float(1, v51);
    v53 = (*(*v50 + 32))(v50, 72, 8);
    *v53 = 1;
    *(v53 + 8) = "m_stereoBaselineFromMetadata";
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0x880000000ALL;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = 0;
    *(v53 + 64) = 0;
    qword_1EE1A0A50 = v53;
    v54 = re::introspectionAllocator();
    v56 = re::introspect_float(1, v55);
    v57 = (*(*v54 + 32))(v54, 72, 8);
    *v57 = 1;
    *(v57 + 8) = "m_disparityAdjustmentFromMetadata";
    *(v57 + 16) = v56;
    *(v57 + 24) = 0;
    *(v57 + 32) = 0x8C0000000BLL;
    *(v57 + 40) = 0;
    *(v57 + 48) = 0;
    *(v57 + 56) = 0;
    *(v57 + 64) = 0;
    qword_1EE1A0A58 = v57;
    v58 = re::introspectionAllocator();
    v60 = re::introspect_float(1, v59);
    v61 = (*(*v58 + 32))(v58, 72, 8);
    *v61 = 1;
    *(v61 + 8) = "m_horizontalFOVFromMetadata";
    *(v61 + 16) = v60;
    *(v61 + 24) = 0;
    *(v61 + 32) = 0x900000000CLL;
    *(v61 + 40) = 0;
    *(v61 + 48) = 0;
    *(v61 + 56) = 0;
    *(v61 + 64) = 0;
    qword_1EE1A0A60 = v61;
    v62 = re::introspectionAllocator();
    v64 = re::introspect_AssetHandle(1, v63);
    v65 = (*(*v62 + 32))(v62, 72, 8);
    *v65 = 1;
    *(v65 + 8) = "m_mxiMeshHandle";
    *(v65 + 16) = v64;
    *(v65 + 24) = 0;
    *(v65 + 32) = 0xA00000000DLL;
    *(v65 + 40) = 0;
    *(v65 + 48) = 0;
    *(v65 + 56) = 0;
    *(v65 + 64) = 0;
    qword_1EE1A0A68 = v65;
    v66 = re::introspectionAllocator();
    v68 = re::introspect_AssetHandle(1, v67);
    v69 = (*(*v66 + 32))(v66, 72, 8);
    *v69 = 1;
    *(v69 + 8) = "m_mxiTextureHandle";
    *(v69 + 16) = v68;
    *(v69 + 24) = 0;
    *(v69 + 32) = 0xB80000000ELL;
    *(v69 + 40) = 0;
    *(v69 + 48) = 0;
    *(v69 + 56) = 0;
    *(v69 + 64) = 0;
    qword_1EE1A0A70 = v69;
    v70 = re::introspectionAllocator();
    v72 = re::ecs2::introspect_ImageImmersiveViewingMode(1, v71);
    v73 = (*(*v70 + 32))(v70, 72, 8);
    *v73 = 1;
    *(v73 + 8) = "m_desiredImmersiveViewingMode";
    *(v73 + 16) = v72;
    *(v73 + 24) = 0;
    *(v73 + 32) = 0x850000000FLL;
    *(v73 + 40) = 0;
    *(v73 + 48) = 0;
    *(v73 + 56) = 0;
    *(v73 + 64) = 0;
    qword_1EE1A0A78 = v73;
    v74 = re::introspectionAllocator();
    v76 = re::introspect_BOOL(1, v75);
    v77 = (*(*v74 + 32))(v74, 72, 8);
    *v77 = 1;
    *(v77 + 8) = "m_shouldLockMeshToImageAspectRatio";
    *(v77 + 16) = v76;
    *(v77 + 24) = 0;
    *(v77 + 32) = 0x9400000010;
    *(v77 + 40) = 0;
    *(v77 + 48) = 0;
    *(v77 + 56) = 0;
    *(v77 + 64) = 0;
    qword_1EE1A0A80 = v77;
    v78 = re::introspectionAllocator();
    v80 = re::introspect_float(1, v79);
    v81 = (*(*v78 + 32))(v78, 72, 8);
    *v81 = 1;
    *(v81 + 8) = "m_mxiAspectRatio";
    *(v81 + 16) = v80;
    *(v81 + 24) = 0;
    *(v81 + 32) = 0x12800000011;
    *(v81 + 40) = 0;
    *(v81 + 48) = 0;
    *(v81 + 56) = 0;
    *(v81 + 64) = 0;
    qword_1EE1A0A88 = v81;
    v82 = re::introspectionAllocator();
    v84 = re::introspect_float(1, v83);
    v85 = (*(*v82 + 32))(v82, 72, 8);
    *v85 = 1;
    *(v85 + 8) = "m_mxiVerticalFOV";
    *(v85 + 16) = v84;
    *(v85 + 24) = 0;
    *(v85 + 32) = 0x12C00000012;
    *(v85 + 40) = 0;
    *(v85 + 48) = 0;
    *(v85 + 56) = 0;
    *(v85 + 64) = 0;
    qword_1EE1A0A90 = v85;
    v86 = re::introspectionAllocator();
    v88 = re::introspect_float(1, v87);
    v89 = (*(*v86 + 32))(v86, 72, 8);
    *v89 = 1;
    *(v89 + 8) = "m_mxiNearDistance";
    *(v89 + 16) = v88;
    *(v89 + 24) = 0;
    *(v89 + 32) = 0x13000000013;
    *(v89 + 40) = 0;
    *(v89 + 48) = 0;
    *(v89 + 56) = 0;
    *(v89 + 64) = 0;
    qword_1EE1A0A98 = v89;
    v90 = re::introspectionAllocator();
    v92 = re::introspect_float(1, v91);
    v93 = (*(*v90 + 32))(v90, 72, 8);
    *v93 = 1;
    *(v93 + 8) = "m_mxiFarDistance";
    *(v93 + 16) = v92;
    *(v93 + 24) = 0;
    *(v93 + 32) = 0x13400000014;
    *(v93 + 40) = 0;
    *(v93 + 48) = 0;
    *(v93 + 56) = 0;
    *(v93 + 64) = 0;
    qword_1EE1A0AA0 = v93;
    v94 = re::introspectionAllocator();
    v96 = re::introspect_float(1, v95);
    v97 = (*(*v94 + 32))(v94, 72, 8);
    *v97 = 1;
    *(v97 + 8) = "m_cornerRadiusInPoints";
    *(v97 + 16) = v96;
    *(v97 + 24) = 0;
    *(v97 + 32) = 0x9800000015;
    *(v97 + 40) = 0;
    *(v97 + 48) = 0;
    *(v97 + 56) = 0;
    *(v97 + 64) = 0;
    qword_1EE1A0AA8 = v97;
    v98 = re::introspectionAllocator();
    v100 = re::introspect_BOOL(1, v99);
    v101 = (*(*v98 + 32))(v98, 72, 8);
    *v101 = 1;
    *(v101 + 8) = "m_isSpatial3DImageGenerating";
    *(v101 + 16) = v100;
    *(v101 + 24) = 0;
    *(v101 + 32) = 0x15800000017;
    *(v101 + 40) = 0;
    *(v101 + 48) = 0;
    *(v101 + 56) = 0;
    *(v101 + 64) = 0;
    qword_1EE1A0AB0 = v101;
    v102 = re::introspectionAllocator();
    v104 = re::introspect_BOOL(1, v103);
    v105 = (*(*v102 + 32))(v102, 72, 8);
    *v105 = 1;
    *(v105 + 8) = "m_hasGeneratedSpatial3DImage";
    *(v105 + 16) = v104;
    *(v105 + 24) = 0;
    *(v105 + 32) = 0x15900000018;
    *(v105 + 40) = 0;
    *(v105 + 48) = 0;
    *(v105 + 56) = 0;
    *(v105 + 64) = 0;
    qword_1EE1A0AB8 = v105;
    v106 = re::introspectionAllocator();
    v108 = re::introspect_BOOL(1, v107);
    v109 = (*(*v106 + 32))(v106, 72, 8);
    *v109 = 1;
    *(v109 + 8) = "m_mxiPremultipliedAlpha";
    *(v109 + 16) = v108;
    *(v109 + 24) = 0;
    *(v109 + 32) = 0x14400000019;
    *(v109 + 40) = 0;
    *(v109 + 48) = 0;
    *(v109 + 56) = 0;
    *(v109 + 64) = 0;
    qword_1EE1A0AC0 = v109;
    v110 = re::introspectionAllocator();
    v112 = re::introspect_float(1, v111);
    v113 = (*(*v110 + 32))(v110, 72, 8);
    *v113 = 1;
    *(v113 + 8) = "m_mxiCollapseStrength";
    *(v113 + 16) = v112;
    *(v113 + 24) = 0;
    *(v113 + 32) = 0x1480000001ALL;
    *(v113 + 40) = 0;
    *(v113 + 48) = 0;
    *(v113 + 56) = 0;
    *(v113 + 64) = 0;
    qword_1EE1A0AC8 = v113;
    v114 = re::introspectionAllocator();
    v116 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v115);
    v117 = (*(*v114 + 32))(v114, 72, 8);
    *v117 = 1;
    *(v117 + 8) = "m_mxiTextureHandles";
    *(v117 + 16) = v116;
    *(v117 + 24) = 0;
    *(v117 + 32) = 0xD00000001BLL;
    *(v117 + 40) = 0;
    *(v117 + 48) = 0;
    *(v117 + 56) = 0;
    *(v117 + 64) = 0;
    qword_1EE1A0AD0 = v117;
    v118 = re::introspectionAllocator();
    v120 = re::introspect_uint32_t(1, v119);
    v121 = (*(*v118 + 32))(v118, 72, 8);
    *v121 = 1;
    *(v121 + 8) = "m_mxiLayerCount";
    *(v121 + 16) = v120;
    *(v121 + 24) = 0;
    *(v121 + 32) = 0x1380000001CLL;
    *(v121 + 40) = 0;
    *(v121 + 48) = 0;
    *(v121 + 56) = 0;
    *(v121 + 64) = 0;
    qword_1EE1A0AD8 = v121;
    v122 = re::introspectionAllocator();
    v124 = re::introspect_uint32_t(1, v123);
    v125 = (*(*v122 + 32))(v122, 72, 8);
    *v125 = 1;
    *(v125 + 8) = "m_mxiResolutionWidth";
    *(v125 + 16) = v124;
    *(v125 + 24) = 0;
    *(v125 + 32) = 0x13C0000001DLL;
    *(v125 + 40) = 0;
    *(v125 + 48) = 0;
    *(v125 + 56) = 0;
    *(v125 + 64) = 0;
    qword_1EE1A0AE0 = v125;
    v126 = re::introspectionAllocator();
    v128 = re::introspect_uint32_t(1, v127);
    v129 = (*(*v126 + 32))(v126, 72, 8);
    *v129 = 1;
    *(v129 + 8) = "m_mxiResolutionHeight";
    *(v129 + 16) = v128;
    *(v129 + 24) = 0;
    *(v129 + 32) = 0x1400000001ELL;
    *(v129 + 40) = 0;
    *(v129 + 48) = 0;
    *(v129 + 56) = 0;
    *(v129 + 64) = 0;
    qword_1EE1A0AE8 = v129;
    v130 = re::introspectionAllocator();
    v132 = re::introspect_AssetHandle(1, v131);
    v133 = (*(*v130 + 32))(v130, 72, 8);
    *v133 = 1;
    *(v133 + 8) = "m_mxiBackgroundTextureHandle";
    *(v133 + 16) = v132;
    *(v133 + 24) = 0;
    *(v133 + 32) = 0xF80000001FLL;
    *(v133 + 40) = 0;
    *(v133 + 48) = 0;
    *(v133 + 56) = 0;
    *(v133 + 64) = 0;
    qword_1EE1A0AF0 = v133;
    v134 = re::introspectionAllocator();
    v136 = re::introspect_float(1, v135);
    v137 = (*(*v134 + 32))(v134, 72, 8);
    *v137 = 1;
    *(v137 + 8) = "m_screenHeight";
    *(v137 + 16) = v136;
    *(v137 + 24) = 0;
    *(v137 + 32) = 0x1C00000020;
    *(v137 + 40) = 0;
    *(v137 + 48) = 0;
    *(v137 + 56) = 0;
    *(v137 + 64) = 0;
    qword_1EE1A0AF8 = v137;
    __cxa_guard_release(&_MergedGlobals_166);
  }

  *(this + 2) = 0x17000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 32;
  *(this + 8) = &qword_1EE1A0A00;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ImagePresentationComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ImagePresentationComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ImagePresentationComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ImagePresentationComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226ImagePresentationComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v138 = v140;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs226ImagePresentationComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 15;
    *(a2 + 8) = 0;
  }
}

void *re::allocInfo_PeerVideoStreamingService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_167, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_167))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A0B08, "PeerVideoStreamingService");
    __cxa_guard_release(&_MergedGlobals_167);
  }

  return &unk_1EE1A0B08;
}

void re::initInfo_PeerVideoStreamingService(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xDE22D8C2CFA78C58;
  v8[1] = "PeerVideoStreamingService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_PeerVideoStreamingService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

unint64_t re::PeerVideoStreamId::hash(re::PeerVideoStreamId *this)
{
  v1 = 0xBF58476D1CE4E5B9 * (*this ^ (*this >> 30));
  v2 = (0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) ^ ((0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) >> 31);
  v3 = 0xBF58476D1CE4E5B9 * (*(this + 1) ^ (*(this + 1) >> 30));
  return (((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31)) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
}

void re::PeerVideoStreamHandle::~PeerVideoStreamHandle(re::PeerVideoStreamHandle *this)
{
  *this = &unk_1F5CD72C0;
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 104))(v2, *(this + 3), *(this + 4));
    *(this + 5) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::PeerVideoStreamHandle::~PeerVideoStreamHandle(this);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::remoteEffectsLogObjects(re *this)
{
  {
    re::remoteEffectsLogObjects(void)::logObjects = os_log_create("com.apple.re", "RemoteEffects");
  }

  return &re::remoteEffectsLogObjects(void)::logObjects;
}

void ___ZN2re31RemoteEffectsSystemDebugEnabledEv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::BOOLValue(&var2, "RemoteEffectsDebugEnabled", a2);
  if (var2)
  {
    v2 = BYTE1(var2);
  }

  else
  {
    v2 = 0;
  }

  re::RemoteEffectsSystemDebugEnabled(void)::isEnabled = v2;
}

double re::ecs2::UISorterPerFrameGatherer::gatherDirtyEntitiesToSort(const re::ecs2::Entity **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 32);
  if (v10)
  {
    v11 = 0;
    v12 = (*(a2 + 16) + 8);
    while (1)
    {
      v13 = *v12;
      v12 += 6;
      if (v13 < 0)
      {
        break;
      }

      if (v10 == ++v11)
      {
        LODWORD(v11) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v11 != v10)
  {
    v14 = *(a2 + 16);
    do
    {
      re::ecs2::UISorterPerFrameGatherer::addDirtyEntityIfSortable(a1, *(v14 + 24 * v11 + 16), a3);
      v15 = *(a2 + 32);
      v14 = *(a2 + 16);
      if (v15 <= v11 + 1)
      {
        v15 = v11 + 1;
      }

      while (v15 - 1 != v11)
      {
        LODWORD(v11) = v11 + 1;
        if ((*(v14 + 24 * v11 + 8) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v11) = v15;
LABEL_15:
      ;
    }

    while (v11 != v10);
  }

  v16 = *a1;
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  v47 = 0x7FFFFFFFLL;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(v45, v16, 128);
  if (*(a3 + 28))
  {
    v17 = *(a3 + 32);
    if (v17)
    {
      v18 = 0;
      v19 = (*(a3 + 16) + 8);
      while (1)
      {
        v20 = *v19;
        v19 += 6;
        if (v20 < 0)
        {
          break;
        }

        if (v17 == ++v18)
        {
          LODWORD(v18) = *(a3 + 32);
          break;
        }
      }
    }

    else
    {
      LODWORD(v18) = 0;
    }

    if (v18 != v17)
    {
      v21 = *(a3 + 16);
      do
      {
        re::ecs2::UISorterPerFrameGatherer::addDirtyTransformHierarchy(a1, *(v21 + 24 * v18 + 16), v45);
        v22 = *(a3 + 32);
        v21 = *(a3 + 16);
        if (v22 <= v18 + 1)
        {
          v22 = v18 + 1;
        }

        while (v22 - 1 != v18)
        {
          LODWORD(v18) = v18 + 1;
          if ((*(v21 + 24 * v18 + 8) & 0x80000000) != 0)
          {
            goto LABEL_31;
          }
        }

        LODWORD(v18) = v22;
LABEL_31:
        ;
      }

      while (v18 != v17);
    }
  }

  if (*(a4 + 28))
  {
    v23 = *(a4 + 32);
    if (v23)
    {
      v24 = 0;
      v25 = (*(a4 + 16) + 8);
      while (1)
      {
        v26 = *v25;
        v25 += 6;
        if (v26 < 0)
        {
          break;
        }

        if (v23 == ++v24)
        {
          LODWORD(v24) = *(a4 + 32);
          break;
        }
      }
    }

    else
    {
      LODWORD(v24) = 0;
    }

    if (v24 != v23)
    {
      v27 = *(a4 + 16);
      do
      {
        re::ecs2::UISorterPerFrameGatherer::addDirtyTransformHierarchy(a1, *(v27 + 24 * v24 + 16), v45);
        v28 = *(a4 + 32);
        v27 = *(a4 + 16);
        if (v28 <= v24 + 1)
        {
          v28 = v24 + 1;
        }

        while (v28 - 1 != v24)
        {
          LODWORD(v24) = v24 + 1;
          if ((*(v27 + 24 * v24 + 8) & 0x80000000) != 0)
          {
            goto LABEL_47;
          }
        }

        LODWORD(v24) = v28;
LABEL_47:
        ;
      }

      while (v24 != v23);
    }
  }

  if (*(a5 + 28))
  {
    v29 = *(a5 + 32);
    if (v29)
    {
      v30 = 0;
      v31 = (*(a5 + 16) + 8);
      while (1)
      {
        v32 = *v31;
        v31 += 6;
        if (v32 < 0)
        {
          break;
        }

        if (v29 == ++v30)
        {
          LODWORD(v30) = *(a5 + 32);
          break;
        }
      }
    }

    else
    {
      LODWORD(v30) = 0;
    }

    if (v30 != v29)
    {
      v33 = *(a5 + 16);
      do
      {
        v55[0] = *(v33 + 24 * v30 + 16);
        if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(v45, v55) && (*(v55[0] + 304) & 1) != 0)
        {
          v34 = *a1;
          v52 = 1;
          v53 = 0;
          v54 = 0;
          v50 = v34;
          v51 = 0;
          re::DynamicOverflowArray<unsigned long long,64ul>::setCapacity(&v50, 0);
          v52 += 2;
          re::DynamicOverflowArray<re::ecs2::Entity *,64ul>::add(&v50, v55);
          v35 = v51;
          while (v35)
          {
            v36 = v54;
            if (v52)
            {
              v36 = &v53;
            }

            v49 = v36[--v35];
            v51 = v35;
            v52 += 2;
            v37 = re::ecs2::EntityComponentCollection::get((v49 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (!v37 || *(v37 + 80) != 3)
            {
              re::ecs2::UISorterPerFrameGatherer::addDirtyEntityIfSortable(a1, v49, v38);
            }

            re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v45, &v49);
            v39 = *(v49 + 43);
            if (v39)
            {
              v40 = *(v49 + 45);
              v41 = 8 * v39;
              do
              {
                v48 = *v40;
                if ((*(v48 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(v45, &v48))
                {
                  v42 = re::ecs2::EntityComponentCollection::get((v48 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                  if (!v42 || *(v42 + 80) != 3)
                  {
                    re::DynamicOverflowArray<re::ecs2::Entity *,64ul>::add(&v50, &v48);
                  }
                }

                ++v40;
                v41 -= 8;
              }

              while (v41);
              v35 = v51;
            }
          }

          if (v50 && (v52 & 1) == 0)
          {
            (*(*v50 + 40))();
          }
        }

        v43 = *(a5 + 32);
        v33 = *(a5 + 16);
        if (v43 <= v30 + 1)
        {
          v43 = v30 + 1;
        }

        while (v43 - 1 != v30)
        {
          LODWORD(v30) = v30 + 1;
          if ((*(v33 + 24 * v30 + 8) & 0x80000000) != 0)
          {
            goto LABEL_84;
          }
        }

        LODWORD(v30) = v43;
LABEL_84:
        ;
      }

      while (v30 != v29);
    }
  }

  return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v45);
}

uint64_t re::ecs2::UISorterPerFrameGatherer::addDirtyEntityIfSortable(const re::ecs2::Entity **this, re::ecs2::Entity *a2, re::ecs2::UISorterTransformCache *a3)
{
  v12 = a2;
  result = re::ecs2::UISorterUtil::shouldSort(a2, this[6], a3);
  if (result)
  {
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    v7 = v6 ^ (v6 >> 31);
    v8 = *(this + 6);
    if (v8)
    {
      v9 = v7 % v8;
      v10 = *(this[1] + v7 % v8);
      if (v10 != 0x7FFFFFFF)
      {
        v11 = this[2];
        if (*(v11 + 3 * v10 + 2) == a2)
        {
          return result;
        }

        while (1)
        {
          LODWORD(v10) = *(v11 + 6 * v10 + 2) & 0x7FFFFFFF;
          if (v10 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v11 + 3 * v10 + 2) == a2)
          {
            return result;
          }
        }
      }
    }

    else
    {
      LODWORD(v9) = 0;
    }

    result = re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addAsCopy(this, v9, v7, &v12, &v12);
    ++*(this + 10);
  }

  return result;
}

uint64_t re::ecs2::UISorterPerFrameGatherer::addDirtyTransformHierarchy(const re::ecs2::Entity **a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  result = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a3, &v20);
  if (result & 1) == 0 && (*(v20 + 304))
  {
    v6 = *a1;
    v17 = 1;
    v18 = 0;
    v19 = 0;
    v15 = v6;
    v16 = 0;
    re::DynamicOverflowArray<unsigned long long,64ul>::setCapacity(&v15, 0);
    v17 += 2;
    re::DynamicOverflowArray<re::ecs2::Entity *,64ul>::add(&v15, &v20);
    v8 = v16;
    while (v8)
    {
      v9 = v19;
      if (v17)
      {
        v9 = &v18;
      }

      v14 = v9[--v8];
      v16 = v8;
      v17 += 2;
      re::ecs2::UISorterPerFrameGatherer::addDirtyEntityIfSortable(a1, v14, v7);
      re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a3, &v14);
      v10 = v14[43];
      if (v10)
      {
        v11 = v14[45];
        v12 = 8 * v10;
        do
        {
          v13 = *v11;
          if ((*(v13 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a3, &v13))
          {
            re::DynamicOverflowArray<re::ecs2::Entity *,64ul>::add(&v15, &v13);
          }

          ++v11;
          v12 -= 8;
        }

        while (v12);
        v8 = v16;
      }
    }

    result = v15;
    if (v15)
    {
      if ((v17 & 1) == 0)
      {
        return (*(*v15 + 40))();
      }
    }
  }

  return result;
}

void *re::ecs2::UISorterPerFrameGatherer::filterDirtyEntitiesToSortByWorld@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(result + 7))
  {
    v5 = result;
    v6 = *result;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    *(a3 + 36) = 0x7FFFFFFFLL;
    re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a3, v6, 1);
    if (a2)
    {
      result = (*(*a2 + 24))(a2);
      v7 = result;
      v8 = *(v5 + 8);
      if (v8)
      {
        v9 = 0;
        v10 = (v5[2] + 8);
        while (1)
        {
          v11 = *v10;
          v10 += 6;
          if (v11 < 0)
          {
            break;
          }

          if (v8 == ++v9)
          {
            LODWORD(v9) = *(v5 + 8);
            break;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }

      while (v9 != v8)
      {
        v27 = *(v5[2] + 24 * v9 + 16);
        (*(*v7 + 8))(v28, v7);
        if (LOBYTE(v28[0]))
        {
          v17 = v28[1];
        }

        else
        {
          v17 = 0;
        }

        v28[0] = v17;
        if (!*a3 || (v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27)), v19 = *(*(a3 + 8) + 4 * ((v18 ^ (v18 >> 31)) % *(a3 + 24))), v19 == 0x7FFFFFFF))
        {
LABEL_26:
          v26 = *v5;
          v25 = 8;
          re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::emplace<re::Allocator *,unsigned int>(a3, v28, &v26, &v25);
        }

        else
        {
          v20 = *(a3 + 16);
          while (*(v20 + (v19 << 6) + 8) != v17)
          {
            v19 = *(v20 + (v19 << 6)) & 0x7FFFFFFF;
            if (v19 == 0x7FFFFFFF)
            {
              goto LABEL_26;
            }
          }
        }

        v21 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a3, v28);
        result = re::DynamicArray<re::TransitionCondition *>::add(v21, &v27);
        v22 = *(v5 + 8);
        if (v22 <= v9 + 1)
        {
          v22 = v9 + 1;
        }

        while (v22 - 1 != v9)
        {
          LODWORD(v9) = v9 + 1;
          if ((*(v5[2] + 24 * v9 + 8) & 0x80000000) != 0)
          {
            goto LABEL_33;
          }
        }

        LODWORD(v9) = v22;
LABEL_33:
        ;
      }
    }

    else
    {
      v28[0] = *v5;
      v12 = *(v5 + 7);
      if (v12 <= 1)
      {
        v12 = 1;
      }

      LODWORD(v27) = v12;
      result = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::emplace<re::Allocator *,unsigned int>(a3, &re::kDefaultWorldRootId, v28, &v27);
      v13 = *(v5 + 8);
      if (v13)
      {
        v14 = 0;
        v15 = (v5[2] + 8);
        while (1)
        {
          v16 = *v15;
          v15 += 6;
          if (v16 < 0)
          {
            break;
          }

          if (v13 == ++v14)
          {
            LODWORD(v14) = *(v5 + 8);
            break;
          }
        }
      }

      else
      {
        LODWORD(v14) = 0;
      }

      while (v14 != v13)
      {
        v28[0] = *(v5[2] + 24 * v14 + 16);
        v23 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a3, &re::kDefaultWorldRootId);
        result = re::DynamicArray<re::TransitionCondition *>::add(v23, v28);
        v24 = *(v5 + 8);
        if (v24 <= v14 + 1)
        {
          v24 = v14 + 1;
        }

        while (v24 - 1 != v14)
        {
          LODWORD(v14) = v14 + 1;
          if ((*(v5[2] + 24 * v14 + 8) & 0x80000000) != 0)
          {
            goto LABEL_43;
          }
        }

        LODWORD(v14) = v24;
LABEL_43:
        ;
      }
    }
  }

  else
  {
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 36) = 0x7FFFFFFF;
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::emplace<re::Allocator *,unsigned int>(uint64_t a1, unint64_t *a2, void *a3, unsigned int *a4)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31), &v14);
  if (HIDWORD(v15) == 0x7FFFFFFF)
  {
    v10 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v15, v14);
    v11 = *a2;
    *(v10 + 16) = *a3;
    v12 = v10 + 16;
    *(v10 + 8) = v11;
    v13 = *a4;
    *(v10 + 48) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0;
    result = re::DynamicArray<float *>::setCapacity((v10 + 16), v13);
    ++*(v12 + 24);
    ++*(a1 + 40);
  }

  return result;
}

unint64_t re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + (v6 << 6) + 16;
}

void re::ecs2::UISorterPerFrameGatherer::filterEntitiesByMappingFunc(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0;
  *(a4 + 36) = 0x7FFFFFFFLL;
  re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a4, v7, 1);
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = *a2;
    v10 = 8 * v8;
    do
    {
      v11 = *v9++;
      v13 = v11;
      v14 = v11;
      v14 = (*(**(a3 + 32) + 16))(*(a3 + 32), &v14);
      v12 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(a4, &v14);
      re::DynamicArray<re::TransitionCondition *>::add(v12, &v13);
      v10 -= 8;
    }

    while (v10);
  }
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(uint64_t a1, unint64_t *a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + (HIDWORD(v9) << 6) + 16;
  }

  v5 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v9, v8);
  v6 = *a2;
  *(v5 + 16) = 0;
  result = v5 + 16;
  *(result - 8) = v6;
  *(result + 32) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  ++*(a1 + 40);
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::ecs2::Entity *,64ul>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  if (!*result)
  {
    v10 = *(v3 + 1);
    result = re::DynamicOverflowArray<unsigned long long,64ul>::setCapacity(v3, v10 + 1);
    v5 = *(v3 + 4) + 2;
    *(v3 + 4) = v5;
    goto LABEL_15;
  }

  v4 = *(result + 1);
  v5 = *(result + 4);
  if (v5)
  {
    if (v4 - 64 >= 0xFFFFFFFFFFFFFFBFLL)
    {
      goto LABEL_15;
    }

    v7 = v4 + 1;
    v9 = 128;
    goto LABEL_11;
  }

  v6 = *(result + 3);
  v8 = v4 >= v6;
  v7 = v4 + 1;
  v8 = !v8 || v6 >= v7;
  if (!v8)
  {
    v9 = 2 * v6;
LABEL_11:
    if (v9 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }

    result = re::DynamicOverflowArray<unsigned long long,64ul>::setCapacity(result, v11);
    v5 = *(v3 + 4);
  }

LABEL_15:
  if (v5)
  {
    v12 = v3 + 24;
  }

  else
  {
    v12 = *(v3 + 4);
  }

  v13 = *(v3 + 1);
  *&v12[8 * v13] = *a2;
  *(v3 + 1) = v13 + 1;
  *(v3 + 4) += 2;
  return result;
}

void re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + (v10 << 6), 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_19, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          *&v30[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v13 = *&v30[32];
          *(a1 + 24) = v14;
          ++*&v30[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 0;
            do
            {
              if ((*(*&v30[16] + v16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(*&v30[16] + v16 + 56) % *(a1 + 24), *(*&v30[16] + v16 + 56));
                v19 = *&v30[16] + v16;
                v20 = *(*&v30[16] + v16 + 8);
                *(v18 + 48) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 8) = v20;
                *(v18 + 16) = 0;
                v21 = *(v19 + 24);
                *(v18 + 16) = *(v19 + 16);
                *(v18 + 24) = v21;
                *(v19 + 16) = 0;
                *(v19 + 24) = 0;
                v22 = *(v18 + 32);
                *(v18 + 32) = *(v19 + 32);
                *(v19 + 32) = v22;
                v23 = *(v18 + 48);
                *(v18 + 48) = *(v19 + 48);
                *(v19 + 48) = v23;
                ++*(v19 + 40);
                ++*(v18 + 40);
                v15 = *&v30[32];
              }

              ++v17;
              v16 += 64;
            }

            while (v17 < v15);
          }

          re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + (v5 << 6));
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + (v5 << 6));
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + (v5 << 6);
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v27 + 56) = a3;
  *(v28 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v24 + (v5 << 6);
}

void *re::ecs2::allocInfo_MeshSceneComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A0BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A0BA0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A0C88, "MeshSceneComponent");
    __cxa_guard_release(&qword_1EE1A0BA0);
  }

  return &unk_1EE1A0C88;
}

void re::ecs2::initInfo_MeshSceneComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v25[0] = 0xD072249390F27A7CLL;
  v25[1] = "MeshSceneComponent";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&qword_1EE1A0BA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A0BA8))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A0BC8 = v14;
    v15 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>>::get(v15, v16);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "instanceNames";
    *(v17 + 16) = &qword_1EE1A0BE8;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x2000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1A0BD0 = v17;
    v18 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>>::get(v18, v19);
    v20 = (*(*v18 + 32))(v18, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "instanceModelNames";
    *(v20 + 16) = &qword_1EE1A0BE8;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x5000000002;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1A0BD8 = v20;
    v21 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>>::get(v21, v22);
    v23 = (*(*v21 + 32))(v21, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "instanceTransforms";
    *(v23 + 16) = qword_1EE1A0C38;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x8000000003;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE1A0BE0 = v23;
    __cxa_guard_release(&qword_1EE1A0BA8);
  }

  *(this + 2) = 0x2C000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A0BC8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshSceneComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshSceneComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshSceneComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshSceneComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218MeshSceneComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v24 = v26;
}

void re::IntrospectionInfo<re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A0BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A0BB8))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A0BE8);
    qword_1EE1A0BE8 = &unk_1F5CD7500;
    __cxa_guard_release(&qword_1EE1A0BB8);
  }

  if ((_MergedGlobals_168 & 1) == 0)
  {
    v2 = re::introspect_uint32_t(1, a2);
    v4 = re::IntrospectionInfo<re::StringID>::get(1, v3);
    if ((_MergedGlobals_168 & 1) == 0)
    {
      v5 = v4;
      _MergedGlobals_168 = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1A0BE8, 0);
      qword_1EE1A0BF8 = 0x3000000007;
      dword_1EE1A0C00 = v6;
      word_1EE1A0C04 = 0;
      *&xmmword_1EE1A0C08 = 0;
      *(&xmmword_1EE1A0C08 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A0C18 = v2;
      unk_1EE1A0C20 = 0;
      qword_1EE1A0C28 = v5;
      unk_1EE1A0C30 = 0;
      qword_1EE1A0BE8 = &unk_1F5CD7500;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, &qword_1EE1A0BE8);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1A0C08 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A0BC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A0BC0))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(qword_1EE1A0C38);
    qword_1EE1A0C38[0] = &unk_1F5CD75A0;
    __cxa_guard_release(&qword_1EE1A0BC0);
  }

  if ((byte_1EE1A0B99 & 1) == 0)
  {
    v2 = re::introspect_uint32_t(1, a2);
    v3 = re::introspect_SRT(1);
    if ((byte_1EE1A0B99 & 1) == 0)
    {
      v4 = v3;
      byte_1EE1A0B99 = 1;
      v5 = *(v3 + 24);
      ArcSharedObject::ArcSharedObject(qword_1EE1A0C38, 0);
      unk_1EE1A0C48 = 0x3000000007;
      unk_1EE1A0C50 = v5;
      unk_1EE1A0C54 = 0;
      *&xmmword_1EE1A0C58 = 0;
      *(&xmmword_1EE1A0C58 + 1) = 0xFFFFFFFFLL;
      unk_1EE1A0C68 = v2;
      unk_1EE1A0C70 = 0;
      unk_1EE1A0C78 = v4;
      unk_1EE1A0C80 = 0;
      qword_1EE1A0C38[0] = &unk_1F5CD75A0;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v22, qword_1EE1A0C38);
      if (BYTE8(v22))
      {
        v8 = v23;
      }

      else
      {
        v8 = &v22 + 9;
      }

      if (v22 && (BYTE8(v22) & 1) != 0)
      {
        (*(*v22 + 40))();
      }

      v9 = v2[2];
      v17 = *(v4 + 32);
      v18 = v9;
      if (v29)
      {
        v16 = v29;
      }

      else
      {
        *&v22 = 0x449AD97C4B77BED4;
        *(&v22 + 1) = "_CompareFunc";
        if (v22)
        {
          if (v22)
          {
          }
        }

        if (!v28)
        {
          v24[0] = 0x449AD97C4B77BED4;
          v24[1] = "_CompareFunc";
          v28 = v22;
          if (v24[0])
          {
            if (v24[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v27, &v22 + 8);
        if (!v28 || (v13 = *v27[2], *&v22 = *(&v28 + 1), *(&v22 + 1) = v13, LODWORD(v23) = -1, (v14 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v27[0] + 768, &v22)) == 0) || !*v14)
        {
          v25 = v28;
          v26 = v18;
        }

        re::StackScratchAllocator::StackScratchAllocator(v24);
        re::TypeBuilder::TypeBuilder(&v22, v24);
        v20 = v17;
        v21 = v18;
        re::TypeBuilder::beginDictionaryType(&v22, &v19, 1, 0x30uLL, 8uLL, &v21, &v20);
        re::TypeBuilder::setConstructor(&v22, re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v22, re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v22, re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v22, re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v22, v15);
        re::StackScratchAllocator::~StackScratchAllocator(v24);
      }

      xmmword_1EE1A0C58 = v16;
      if (v19)
      {
        if (v19)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_MeshSceneSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A0BB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A0BB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A0D18, "MeshSceneSystem");
    __cxa_guard_release(&qword_1EE1A0BB0);
  }

  return &unk_1EE1A0D18;
}

void re::ecs2::initInfo_MeshSceneSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xBC654CEB7856431CLL;
  v8[1] = "MeshSceneSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x24000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MeshSceneSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshSceneSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshSceneSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MeshSceneSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MeshSceneSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshSceneSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshSceneSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::MeshSceneSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a3 + 64));
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 34);
  a3[29] = &unk_1F5CD7380;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 31);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::MeshSceneSystem>(uint64_t *a1)
{
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 64));
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 34);
  a1[29] = &unk_1F5CD7380;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 31);

  re::ecs2::System::~System(a1);
}

void re::ecs2::MeshSceneComponent::~MeshSceneComponent(re::ecs2::MeshSceneComponent *this)
{
  v4[5] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CD7328;
  inited = objc_initWeak(&location, 0);
  memset(v4, 0, 24);
  v4[3] = re::globalAllocators(inited)[2];
  v4[4] = 0;
  re::FramePersistentPtr<re::ecs2::MeshSceneComponent::FramePersistentMeshSceneData,re::FrameManager>::reset(this + 80, &location, 0, v4);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v4);
  objc_destroyWeak(&location);
  location = 0;
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(this + 656);
  objc_destroyWeak(this + 80);
  *(this + 80) = 0;
  re::MeshNameMap::~MeshNameMap((this + 216));
  re::DynamicArray<unsigned long>::deinit(this + 176);
  re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 16);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 10);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 4);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::MeshSceneComponent::~MeshSceneComponent(this);

  JUMPOUT(0x1E6906520);
}

re::ecs2::MeshSceneComponent *re::ecs2::MeshSceneComponent::ensureCachedDataUpToDate(re::ecs2::MeshSceneComponent *this, re::MeshManager *a2)
{
  v2 = this;
  v197 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  if (v3 && (v4 = *(v3 + 192)) != 0 && (v5 = *(v4 + 40)) != 0 && (v6 = atomic_load((v5 + 896)), v6 == 2))
  {
    if (*(this + 174) != *(this + 175))
    {
      v7 = re::ecs2::MeshSceneComponent::resetCachedInstances(this, a2);
      v8 = *(v2 + 15);
      if (v8 <= *(v2 + 27))
      {
        v8 = *(v2 + 27);
      }

      v9 = *(v2 + 39);
      if (v8 <= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      v166 = 0;
      v167 = 0;
      v168 = 1;
      v169 = 0;
      v170 = 0;
      if (v10)
      {
        re::DynamicOverflowArray<unsigned int,8ul>::setCapacity(&v166, v10);
        v11 = v168;
        v168 += 2;
        v12 = (v11 & 1) == 0;
        v13 = 8;
        if (v12)
        {
          v13 = v169;
        }

        if (v13 < v10)
        {
          re::DynamicOverflowArray<unsigned int,8ul>::setCapacity(&v166, v10);
        }

        v14 = v167;
        if (v167 < v10)
        {
          do
          {
            if (v168)
            {
              v15 = &v169;
            }

            else
            {
              v15 = v170;
            }

            *(v15 + v14++) = -1;
          }

          while (v10 != v14);
        }

        v167 = v10;
        v168 += 2;
      }

      v151 = v10;
      *(v2 + 175) = *(v2 + 174);
      v16 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v4 + 32));
      v17 = v16;
      v157 = 0;
      v154[1] = 0;
      v155 = 0;
      v154[0] = 0;
      v156 = 0;
      v148 = *(v16 + 624);
      v150 = *(v16 + 608);
      v18 = *(v2 + 15);
      if (v18 <= *(v2 + 27))
      {
        v18 = *(v2 + 27);
      }

      if (v18 <= *(v2 + 39))
      {
        v19 = *(v2 + 39);
      }

      else
      {
        v19 = v18;
      }

      v159 = xmmword_1E3047670;
      v160 = xmmword_1E3047680;
      v161 = xmmword_1E30476A0;
      v162 = xmmword_1E30474D0;
      v172 = 0u;
      memset(v171, 0, sizeof(v171));
      v158 = 0;
      if (v19)
      {
        v20 = 0;
        v21 = 0xBF58476D1CE4E5B9;
        v146 = v19;
        while (1)
        {
          v22 = re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v2 + 32, &v158);
          v23 = re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v2 + 80, &v158);
          v24 = (v158 ^ (v158 >> 30)) * v21;
          v16 = re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v2 + 128, &v158, (0x94D049BB133111EBLL * (v24 ^ (v24 >> 27))) ^ ((0x94D049BB133111EBLL * (v24 ^ (v24 >> 27))) >> 31), buf);
          if (HIDWORD(v181) == 0x7FFFFFFF)
          {
            v25 = 0;
            if (!v22)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v25 = (*(v2 + 18) + 80 * HIDWORD(v181) + 16);
            if (!v22)
            {
              goto LABEL_35;
            }
          }

          if (v23)
          {
            v16 = re::MeshNameMap::modelIndex((v17 + 640), v23);
            if (v16 != 0xFFFF)
            {
              v27 = v16;
              if (v25)
              {
                v28 = v25[1].f32[0];
                v29 = v25[1].f32[1];
                v30 = v28 + v28;
                v31 = v29 + v29;
                v32 = v25[1].f32[2];
                v33 = v25[1].f32[3];
                v34 = v32 + v32;
                v35 = v28 * (v28 + v28);
                v36 = v29 * (v29 + v29);
                v37 = v32 * (v32 + v32);
                v38 = v30 * v29;
                v39 = v30 * v32;
                v40 = v31 * v32;
                v41 = v30 * v33;
                v42 = v31 * v33;
                v43 = v34 * v33;
                v44.i32[3] = 0;
                v44.f32[0] = 1.0 - (v36 + v37);
                v44.f32[1] = v38 + v43;
                v44.f32[2] = v39 - v42;
                v45.i32[3] = 0;
                v45.i64[0] = __PAIR64__(1.0 - (v35 + v37), v38 - v43);
                v45.f32[2] = v40 + v41;
                v46.i32[3] = 0;
                v46.f32[0] = v39 + v42;
                v46.f32[1] = v40 - v41;
                v46.f32[2] = 1.0 - (v35 + v36);
                v47 = vmulq_laneq_f32(v46, *v25, 2);
                v48 = v25[2];
                v48.i32[3] = 1.0;
                v49 = vmulq_n_f32(v45, COERCE_FLOAT(HIDWORD(v25->i64[0])));
                v171[0] = vmulq_n_f32(v44, COERCE_FLOAT(*v25));
                v171[1] = v49;
                v171[2] = v47;
                v172 = v48;
                v50 = v171;
              }

              else
              {
                v50 = &v159;
              }

              v51 = v16;
              if (v150 <= v16)
              {
                goto LABEL_128;
              }

              v52 = v21;
              v53 = v17;
              v17 = v158;
              v54 = *(v148 + v16);
              re::StringID::StringID(&v163, v22);
              *buf = v163;
              v181 = v164;
              v163 = 0;
              v164 = &str_67;
              v182 = 0xFFFFFFFFLL;
              v184 = 0u;
              v185 = 0u;
              v186 = 0u;
              v187 = 0u;
              v188 = 0u;
              memset(v189, 0, sizeof(v189));
              v55 = re::DataArray<re::MeshModel>::tryGet(a2 + 8, v54);
              v56 = v50[1];
              v184 = *v50;
              v185 = v56;
              v57 = v50[3];
              v186 = v50[2];
              v187 = v57;
              v182 = v54;
              if (v163)
              {
                if (v163)
                {
                }
              }

              v163 = 0;
              v164 = &str_67;
              v173.n128_u64[0] = re::DataArray<re::MeshInstance>::create<re::MeshInstance>(a2 + 72, buf);
              re::DynamicArray<re::DataArrayHandle<re::MeshModel>>::add((v2 + 176), &v173);
              v21 = v167;
              if (v167 <= v17)
              {
LABEL_129:
                v165 = 0;
                v176 = 0u;
                v177 = 0u;
                v174 = 0u;
                v175 = 0u;
                v173 = 0u;
                v133 = MEMORY[0x1E69E9C10];
                v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v190 = 136315906;
                *&v190[4] = "operator[]";
                v191 = 1024;
                if (v134)
                {
                  v135 = 3;
                }

                else
                {
                  v135 = 2;
                }

                v192 = 858;
                v193 = 2048;
                v194 = v17;
                v195 = 2048;
                v196 = v21;
                _os_log_send_and_compose_impl(v135, &v165, &v173, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v141, v142);
                _os_crash_msg();
                __break(1u);
LABEL_133:
                *v190 = 0;
                v176 = 0u;
                v177 = 0u;
                v174 = 0u;
                v175 = 0u;
                v173 = 0u;
                v136 = MEMORY[0x1E69E9C10];
                v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v171[0]) = 136315906;
                *(v171 + 4) = "operator[]";
                WORD6(v171[0]) = 1024;
                if (v137)
                {
                  v138 = 3;
                }

                else
                {
                  v138 = 2;
                }

                *(v171 + 14) = 468;
                WORD1(v171[1]) = 2048;
                *(&v171[1] + 4) = v22;
                WORD6(v171[1]) = 2048;
                *(&v171[1] + 14) = v27;
                _os_log_send_and_compose_impl(v138, v190, &v173, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v171, 38, v141, v142);
                _os_crash_msg();
                __break(1u);
              }

              v58 = &v169;
              if ((v168 & 1) == 0)
              {
                v58 = v170;
              }

              *(v58 + v17) = *(v2 + 48) - 1;
              re::StringID::StringID(&v173, v22);
              v59 = v50[1];
              v174 = *v50;
              v175 = v59;
              v60 = v50[3];
              v176 = v50[2];
              v177 = v60;
              LODWORD(v178) = v27;
              re::DynamicArray<re::MeshAssetInstance>::add(v154, &v173);
              if (v173.n128_u8[0])
              {
                if (v173.n128_u8[0])
                {
                }
              }

              re::FixedArray<re::SharedPtr<re::MaterialParameterBlock>>::deinit(&v189[1]);
              v16 = v188;
              v17 = v53;
              v21 = v52;
              v19 = v146;
              if (v188)
              {
                if (*(&v188 + 1))
                {
                  v16 = (*(*v188 + 40))();
                  *(&v188 + 1) = 0;
                  v189[0] = 0;
                }

                *&v188 = 0;
              }

              if (buf[0])
              {
                if (buf[0])
                {
                }
              }

              goto LABEL_36;
            }
          }

LABEL_35:
          ++v20;
LABEL_36:
          if (++v158 >= v19)
          {
            if (v20 >= 1)
            {
              v62 = *re::ecsComponentsLogObjects(v16);
              v16 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
              if (v16)
              {
                *buf = 67109120;
                *&buf[4] = v20;
                _os_log_impl(&dword_1E1C61000, v62, OS_LOG_TYPE_DEFAULT, "MeshSceneComponent has %d invalid instances", buf, 8u);
              }
            }

            break;
          }
        }
      }

      v63 = v157;
      v64 = v155;
      v65 = *(*a2 + 144);
      if (v65)
      {
        v66 = (v65 + 8);
      }

      else
      {
        v66 = 0;
      }

      inited = objc_initWeak(&location, v66);
      v68 = re::globalAllocators(inited);
      v69 = (*(*v68[2] + 32))(v68[2], 168, 8);
      *v69 = 0u;
      *(v69 + 16) = 0u;
      *(v69 + 32) = 0u;
      *(v69 + 48) = 0u;
      *(v69 + 64) = 0u;
      *(v69 + 80) = 0u;
      *(v69 + 96) = 0u;
      *(v69 + 112) = 0u;
      *(v69 + 128) = 0u;
      *(v69 + 144) = 0u;
      *(v69 + 160) = 0;
      v181 = 0;
      *buf = 0;
      v182 = 0;
      v183 = re::globalAllocators(v69)[2];
      *&v184 = 0;
      re::FramePersistentPtr<re::ecs2::MeshSceneComponent::FramePersistentMeshSceneData,re::FrameManager>::reset(v2 + 80, &location, v69, buf);
      re::FunctionBase<24ul,void ()(void *)>::destroyCallable(buf);
      objc_destroyWeak(&location);
      location = 0;
      v70 = *(v2 + 81);
      v72 = *(v2 + 72);
      v21 = v151;
      v73 = &v169;
      if (v72)
      {
        v74 = *(*(v2 + 73) + 4 * v72 - 4);
      }

      else
      {
        v74 = 0;
      }

      v75 = re::DynamicArray<float *>::setCapacity(v70, v74);
      ++*(v70 + 24);
      v76 = *(v2 + 81);
      v149 = (v76 + 40);
      v77 = re::DynamicArray<re::RigJoint>::setCapacity((v76 + 40), *(v2 + 24));
      v147 = v76;
      ++*(v76 + 64);
      v78 = *(v2 + 81);
      v78 += 80;
      v79 = re::DynamicArray<float *>::setCapacity(v78, *(v2 + 24));
      v145 = v78;
      ++*(v78 + 24);
      v80 = *(v2 + 81);
      v150 = v80;
      v82 = *(v2 + 81);
      v83 = *(v2 + 69);
      if (v83)
      {
        v84 = *(*(v2 + 70) + 4 * v83 - 4);
      }

      else
      {
        v84 = 0;
      }

      re::StackScratchAllocator::StackScratchAllocator(buf);
      v85 = 2 * *(v2 + 48);
      v159 = 0u;
      v160 = 0u;
      LODWORD(v161) = 0;
      *(&v161 + 4) = 0x7FFFFFFFLL;
      re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::init(&v159, buf, v85);
      v86 = v80;
      if (v151)
      {
        v17 = 0;
        v87 = 0;
        v88.i64[0] = 0x7F0000007FLL;
        v88.i64[1] = 0x7F0000007FLL;
        v144 = vnegq_f32(v88);
        do
        {
          v22 = v167;
          if (v167 <= v87)
          {
            goto LABEL_108;
          }

          v89 = v170;
          if (v168)
          {
            v89 = &v169;
          }

          v22 = *(v89 + v87);
          if (v22 != -1)
          {
            v27 = *(v2 + 24);
            if (v27 <= v22)
            {
              goto LABEL_112;
            }

            v90 = *(v2 + 26) + 8 * v22;
            if ((*(v90 + 4) & 0xFFFFFF) != 0)
            {
              v91 = *v90;
              v27 = WORD1(v91);
              v21 = *(a2 + 11);
              if (v21 <= WORD1(v91))
              {
                goto LABEL_116;
              }

              v21 = *(*(a2 + 13) + 16 * WORD1(v91)) + 144 * v91;
              v27 = (v21 + 16);
              v92 = WORD1(*(v21 + 16));
              v73 = *(a2 + 3);
              if (v73 <= v92)
              {
                goto LABEL_120;
              }

              v73 = *(v86 + 128);
              if (v73 <= v22)
              {
                goto LABEL_124;
              }

              v93 = *(*(a2 + 5) + 16 * v92) + 864 * *(v21 + 16);
              v94 = (*(v86 + 136) + 32 * v22);
              v95 = *(v93 + 32);
              *v94 = *(v93 + 16);
              v94[1] = v95;
              v96 = re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::tryGet(&v159, v27);
              if (v96)
              {
                v97 = *v96;
              }

              else
              {
                v100 = *(v70 + 16);
                v101 = *(v93 + 56);
                v102 = v100;
                if (v101)
                {
                  v143 = *(v70 + 16);
                  v103 = *(v93 + 64);
                  v104 = 544 * v101;
                  do
                  {
                    v173.n128_u64[0] = v103;
                    re::DynamicArray<re::TransitionCondition *>::add(v70, &v173);
                    v103 += 544;
                    v104 -= 544;
                  }

                  while (v104);
                  v102 = *(v70 + 16);
                  v100 = v143;
                }

                *&v171[0] = v100;
                *(&v171[0] + 1) = v102;
                re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::addNew(&v159, v27, v171);
                v97 = v171[0];
              }

              v173 = v97;
              v174 = xmmword_1E3047670;
              v175 = xmmword_1E3047680;
              v176 = xmmword_1E30476A0;
              v177 = xmmword_1E30474D0;
              v178 = 0;
              v179 = 0;
              re::DynamicArray<re::RigJoint>::add(v149, &v173);
              v105 = *(v147 + 72) + 96 * *(v147 + 56);
              v106 = *(v21 + 32);
              v107 = *(v21 + 48);
              v108 = *(v21 + 80);
              *(v105 - 48) = *(v21 + 64);
              *(v105 - 32) = v108;
              *(v105 - 80) = v106;
              *(v105 - 64) = v107;
              v173.n128_u64[0] = v93 + 80;
              re::DynamicArray<re::TransitionCondition *>::add(v145, &v173);
              v109 = *(v93 + 56);
              v21 = v151;
              v73 = &v169;
              if (v109)
              {
                v110 = 32 * v17;
                v111 = 544 * v109;
                v112 = (*(v93 + 64) + 416);
                v86 = v150;
                while (1)
                {
                  v22 = v82[9].u64[1];
                  if (v22 <= v17)
                  {
                    break;
                  }

                  ++v17;
                  v113 = (v82[10].i64[0] + v110);
                  v114 = *v112;
                  v115 = v112[1];
                  v112 += 34;
                  *v113 = v114;
                  v113[1] = v115;
                  v110 += 32;
                  v111 -= 544;
                  if (!v111)
                  {
                    goto LABEL_99;
                  }
                }

                *v190 = 0;
                v176 = 0u;
                v177 = 0u;
                v174 = 0u;
                v175 = 0u;
                v173 = 0u;
                v116 = MEMORY[0x1E69E9C10];
                v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v171[0]) = 136315906;
                *(v171 + 4) = "operator[]";
                WORD6(v171[0]) = 1024;
                if (v117)
                {
                  v118 = 3;
                }

                else
                {
                  v118 = 2;
                }

                *(v171 + 14) = 468;
                WORD1(v171[1]) = 2048;
                *(&v171[1] + 4) = v17;
                WORD6(v171[1]) = 2048;
                *(&v171[1] + 14) = v22;
                _os_log_send_and_compose_impl(v118, v190, &v173, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v171, 38, v141, v142);
                _os_crash_msg();
                __break(1u);
LABEL_108:
                *v190 = 0;
                v176 = 0u;
                v177 = 0u;
                v174 = 0u;
                v175 = 0u;
                v173 = 0u;
                v119 = MEMORY[0x1E69E9C10];
                v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v171[0]) = 136315906;
                *(v171 + 4) = "operator[]";
                WORD6(v171[0]) = 1024;
                if (v120)
                {
                  v121 = 3;
                }

                else
                {
                  v121 = 2;
                }

                *(v171 + 14) = 858;
                WORD1(v171[1]) = 2048;
                *(&v171[1] + 4) = v87;
                WORD6(v171[1]) = 2048;
                *(&v171[1] + 14) = v22;
                _os_log_send_and_compose_impl(v121, v190, &v173, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v171, 38, v141, v142);
                _os_crash_msg();
                __break(1u);
LABEL_112:
                *v190 = 0;
                v176 = 0u;
                v177 = 0u;
                v174 = 0u;
                v175 = 0u;
                v173 = 0u;
                v122 = MEMORY[0x1E69E9C10];
                v123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v171[0]) = 136315906;
                *(v171 + 4) = "operator[]";
                WORD6(v171[0]) = 1024;
                if (v123)
                {
                  v124 = 3;
                }

                else
                {
                  v124 = 2;
                }

                *(v171 + 14) = 789;
                WORD1(v171[1]) = 2048;
                *(&v171[1] + 4) = v22;
                WORD6(v171[1]) = 2048;
                *(&v171[1] + 14) = v27;
                _os_log_send_and_compose_impl(v124, v190, &v173, 80, &dword_1E1C61000, v122, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v171, 38, v141, v142);
                _os_crash_msg();
                __break(1u);
LABEL_116:
                *v190 = 0;
                v176 = 0u;
                v177 = 0u;
                v174 = 0u;
                v175 = 0u;
                v173 = 0u;
                v92 = MEMORY[0x1E69E9C10];
                v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v171[0]) = 136315906;
                *(v171 + 4) = "operator[]";
                WORD6(v171[0]) = 1024;
                if (v125)
                {
                  v126 = 3;
                }

                else
                {
                  v126 = 2;
                }

                *(v171 + 14) = 797;
                WORD1(v171[1]) = 2048;
                *(&v171[1] + 4) = v27;
                WORD6(v171[1]) = 2048;
                *(&v171[1] + 14) = v21;
                _os_log_send_and_compose_impl(v126, v190, &v173, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v171, 38, v141, v142);
                _os_crash_msg();
                __break(1u);
LABEL_120:
                *v190 = 0;
                v17 = v171;
                v176 = 0u;
                v177 = 0u;
                v174 = 0u;
                v175 = 0u;
                v173 = 0u;
                v127 = MEMORY[0x1E69E9C10];
                v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v171[0]) = 136315906;
                *(v171 + 4) = "operator[]";
                WORD6(v171[0]) = 1024;
                if (v128)
                {
                  v129 = 3;
                }

                else
                {
                  v129 = 2;
                }

                *(v171 + 14) = 797;
                WORD1(v171[1]) = 2048;
                *(&v171[1] + 4) = v92;
                WORD6(v171[1]) = 2048;
                *(&v171[1] + 14) = v73;
                _os_log_send_and_compose_impl(v129, v190, &v173, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v171, 38, v141, v142);
                _os_crash_msg();
                __break(1u);
LABEL_124:
                *v190 = 0;
                v176 = 0u;
                v177 = 0u;
                v174 = 0u;
                v175 = 0u;
                v173 = 0u;
                v130 = MEMORY[0x1E69E9C10];
                v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v171[0]) = 136315906;
                *(v171 + 4) = "operator[]";
                WORD6(v171[0]) = 1024;
                if (v131)
                {
                  v132 = 3;
                }

                else
                {
                  v132 = 2;
                }

                *(v171 + 14) = 468;
                WORD1(v171[1]) = 2048;
                *(&v171[1] + 4) = v22;
                WORD6(v171[1]) = 2048;
                *(&v171[1] + 14) = v73;
                _os_log_send_and_compose_impl(v132, v190, &v173, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v171, 38, v141, v142);
                _os_crash_msg();
                __break(1u);
LABEL_128:
                re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v51, v150);
                _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v139, v140);
                __break(1u);
                goto LABEL_129;
              }

              v86 = v150;
            }

            else
            {
              v27 = *(v86 + 128);
              if (v27 <= v22)
              {
                goto LABEL_133;
              }

              v98 = (*(v86 + 136) + 32 * v22);
              v99.i64[0] = 0x7F0000007FLL;
              v99.i64[1] = 0x7F0000007FLL;
              *v98 = v144;
              v98[1] = v99;
            }
          }

LABEL_99:
          ++v87;
        }

        while (v87 != v21);
      }

      re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v159);
      re::StackScratchAllocator::~StackScratchAllocator(buf);
      re::DynamicArray<re::MeshAssetInstance>::deinit(v154);
      this = v166;
      if (v166)
      {
        if ((v168 & 1) == 0)
        {
          return (*(*v166 + 40))();
        }
      }
    }
  }

  else
  {

    return re::ecs2::MeshSceneComponent::resetCachedInstances(this, a2);
  }

  return this;
}

uint64_t re::ecs2::MeshSceneComponent::resetCachedInstances(re::ecs2::MeshSceneComponent *this, re::MeshManager *a2)
{
  v3 = *(this + 24);
  if (v3)
  {
    v5 = *(this + 26);
    v6 = 8 * v3;
    do
    {
      v7 = *v5++;
      re::MeshManager::destroyInstance(a2, v7);
      v6 -= 8;
    }

    while (v6);
  }

  *(this + 24) = 0;
  ++*(this + 50);

  return re::MeshNameMap::deinit((this + 216));
}

uint64_t re::FramePersistentPtr<re::ecs2::MeshSceneComponent::FramePersistentMeshSceneData,re::FrameManager>::reset(id *location, id *a2, void *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  if (location[1])
  {
    WeakRetained = objc_loadWeakRetained(location);
    if (WeakRetained)
    {
      v9 = WeakRetained;

      if (!location[6])
      {
        v11 = re::globalAllocators(v10)[2];
        v18[0] = &unk_1F5CD7640;
        v18[3] = v11;
        v18[4] = v18;
        re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), v18);
        v10 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v18);
      }

      v12 = re::globalAllocators(v10);
      v13 = v9[2] & 0xFFFFFFFFFFFFFFFLL | (v9[1] << 60);
      v14 = location[1];
      v15 = re::PerFrameAllocatorManager::perFrameAllocator(v12[6], v13);
      (*(*v15 + 16))(v15, v14, location + 2);
    }

    else
    {
      v16 = location[6];
      if (v16)
      {
        v18[0] = location[1];
        (*(*v16 + 16))(v16, v18);
      }

      else
      {
        re::internal::destroyPersistent<re::ecs2::MeshSceneComponent::FramePersistentMeshSceneData>(location[1]);
      }
    }
  }

  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(location, a2);
  location[1] = a3;
  return re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), a4);
}

uint64_t re::ecs2::MeshSceneComponentStateImpl::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    ++*(result + 696);
  }

  return result;
}

uint64_t re::ecs2::MeshSceneComponentStateImpl::didSetDirty(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  result = re::ecs2::ComponentBucketsBase::component(*(a2 + 16), a3, a4);
  if (result)
  {
    ++*(result + 696);
  }

  return result;
}

BOOL re::ecs2::MeshSceneComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*(a1 + 8) + 224);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v20, a5, 0);
  v9 = v20;
  v10 = v21;
  v11 = v21;
  v20 = a4;
  v21 = v9;
  v22 = v10;
  if (v9 != a5 || v11 != 0xFFFFFFFFLL)
  {
    do
    {
      v13 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v20);
      v14 = *(*(v13 + 16) + 192);
      v15 = a3 + 4;
      if (!v14 || (v15 = a3 + 4, !*(v14 + 40)) || (v15 = a3 + 5, v16 = a3 + 6, *(v13 + 696) != *(v13 + 700)))
      {
        re::ecs2::MeshSceneComponent::resetCachedInstances(v13, v8);
        v16 = v15;
      }

      v17 = v20;
      v18 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v21);
      re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v17, v18, *v16);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v21);
    }

    while (v21 != a5 || v22 != 0xFFFF || HIWORD(v22) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSceneComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

BOOL re::ecs2::MeshSceneComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*(a1 + 8) + 224);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v26, a5, 0);
  v9 = v26;
  v10 = v27;
  v11 = v27;
  v26 = a4;
  v27 = v9;
  v28 = v10;
  if (v9 != a5 || v11 != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v13 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v26);
      v14 = *(*(v13 + 2) + 192);
      v15 = *(v14 + 40);
      if (!v15)
      {
        break;
      }

      v16 = atomic_load((v15 + 896));
      if (v16 == 3)
      {
        re::ecs2::MeshSceneComponent::resetCachedInstances(v13, v8);
        v17 = v26;
        v18 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v27);
        v19 = a3[2];
        v20 = a3[4];
      }

      else
      {
        v21 = *(v14 + 40);
        if (!v21)
        {
          break;
        }

        v22 = atomic_load((v21 + 896));
        if (v22 != 2)
        {
          break;
        }

        re::ecs2::MeshSceneComponent::ensureCachedDataUpToDate(v13, v8);
        v17 = v26;
        v18 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v27);
        v19 = a3[2];
        v20 = a3[6];
      }

      re::ecs2::ComponentBucketsBase::moveComponent(v19, v17, v18, v20);
LABEL_13:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v27);
      if (v27 == a5 && v28 == 0xFFFF && HIWORD(v28) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }

    re::AssetHandle::loadAsync((v14 + 32));
    goto LABEL_13;
  }

  return *(a5 + 40) != 0;
}

void re::ecs2::MeshSceneSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v30[0] = a2;
  v30[1] = a3;
  if (a1[28])
  {
    re::StackScratchAllocator::StackScratchAllocator(v42);
    v38 = 1;
    v39 = 0;
    v40 = 0;
    v36 = v42;
    v37 = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v36, 0);
    v38 += 2;
    v5 = a1[60];
    if ((v5 & 0x3F) != 0)
    {
      v6 = (v5 >> 6) + 1;
    }

    else
    {
      v6 = v5 >> 6;
    }

    v41 = a1[60];
    v31[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v36, v6, v31);
    v7 = *(a3 + 200);
    if (v7)
    {
      v8 = *(a3 + 216);
      v9 = 8 * v7;
      do
      {
        v10 = *v8++;
        v31[0] = v10;
        v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 41, v31);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v36, *(a1[42] + 16 * v11 + 8));
        v9 -= 8;
      }

      while (v9);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v36, (a1 + 55));
    v32 = 1;
    v33 = 0;
    v34 = 0;
    v31[0] = v42;
    v31[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v31, 0);
    v32 += 2;
    v12 = a1[60];
    if ((v12 & 0x3F) != 0)
    {
      v13 = (v12 >> 6) + 1;
    }

    else
    {
      v13 = v12 >> 6;
    }

    v35 = a1[60];
    v43 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v31, v13, &v43);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 55), &v36);
    v14 = v40;
    if (v38)
    {
      v14 = &v39;
    }

    v15 = v37;
    if ((v37 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v16 = 0;
      while (1)
      {
        v18 = *v14++;
        v17 = v18;
        if (v18)
        {
          break;
        }

        v16 -= 64;
        if (!--v15)
        {
          goto LABEL_31;
        }
      }

      v19 = __clz(__rbit64(v17));
      if (v19 + 1 != v16)
      {
        FirstBitSet = v19 - v16;
        do
        {
          v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 34), FirstBitSet);
          v22 = *(*v21 + 224);
          v23 = v21[3];
          v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
          if (*(v24 + 40))
          {
            v25 = (*(*v22 + 24))(v22, v30, v21, v23, v24, 0);
          }

          else
          {
            v25 = 0;
          }

          v26 = v21[5];
          v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
          if (*(v27 + 40))
          {
            v25 |= (*(*v22 + 32))(v22, v30, v21, v26, v27, 0);
          }

          v28 = v21[6];
          v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
          if (*(v29 + 40))
          {
            if (((v25 | (*(*v22 + 40))(v22, v30, v21, v28, v29, 0)) & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else if (!v25)
          {
LABEL_29:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v31, FirstBitSet);
            goto LABEL_30;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v31, FirstBitSet);
LABEL_30:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v36, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_31:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 55), v31);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 34));
    if (v31[0] && (v32 & 1) == 0)
    {
      (*(*v31[0] + 40))(v31[0], v34);
    }

    if (v36)
    {
      if ((v38 & 1) == 0)
      {
        (*(*v36 + 40))(v36, v40);
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v42);
  }
}

_anonymous_namespace_ *re::ecs2::MeshSceneSystem::willAddSystemToECSService(re::ecs2::MeshSceneSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::RenderManager>(v2);
  if (result && *(result + 205) == 1)
  {
    v4 = *(result + 4);
  }

  else
  {
    v4 = 0;
  }

  *(this + 28) = v4;
  return result;
}

void re::ecs2::MeshSceneSystem::willAddSceneToECSService(re::ecs2::MeshSceneSystem *this, re::EventBus **a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v48 = a2;
  v49 = a2;
  v4 = *(this + 50);
  v5 = *(this + 102);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 416);
    }

    else
    {
      v6 = *(this + 53);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (this + 416);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 53);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v54 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 392, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 272, v54);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSceneComponent>::init(v12, this + 272, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 41, &v49, &v54);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 392, v54);
    v13 = v54;
    goto LABEL_49;
  }

LABEL_17:
  v61 = 0u;
  v54 = 0u;
  *&v55 = 0;
  v56 = 0u;
  v57 = 0u;
  *(&v55 + 1) = -1;
  v58 = 0;
  v59 = 1;
  v60 = 0uLL;
  v14 = *(this + 39);
  *&v61 = 0;
  v15 = *(this + 35);
  DWORD2(v61) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSceneComponent>,4ul>::setBucketsCapacity((this + 272), (v14 + 4) >> 2);
    v15 = *(this + 35);
  }

  if (v15 <= v14 >> 2)
  {
    v50 = 0;
    memset(v70, 0, sizeof(v70));
    v44 = MEMORY[0x1E69E9C10];
    v62 = 136315906;
    v63 = "operator[]";
    v64 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    v65 = 858;
    v66 = 2048;
    v67 = v14 >> 2;
    v68 = 2048;
    v69 = v15;
    _os_log_send_and_compose_impl(v45, &v50, v70, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v62, 38, v46, v47);
    _os_crash_msg();
    __break(1u);
LABEL_58:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768, v48);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(this + 288))
  {
    v16 = this + 296;
  }

  else
  {
    v16 = *(this + 38);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 39);
  ++*(this + 80);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v54;
  v20 = v55;
  v21 = v56;
  *(v18 + 48) = v57;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v57 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v54);
  v23 = *(this + 39);
  if (!v23)
  {
    goto LABEL_58;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 272, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSceneComponent>::init(v24, this + 272, v49);
  *&v70[0] = *(this + 39) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 41, &v49, v70);
  v25 = *(this + 39);
  v26 = *(this + 54);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 54) = v25;
  *&v54 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 392), v27, &v54);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 54) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 408))
    {
      v30 = this + 416;
    }

    else
    {
      v30 = *(this + 53);
    }

    *&v30[8 * *(this + 50) - 8] &= v28;
  }

  v31 = *(this + 39);
  v32 = *(this + 60);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 60) = v31;
  *&v54 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 440), v33, &v54);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 60) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 456))
    {
      v36 = this + 464;
    }

    else
    {
      v36 = *(this + 59);
    }

    *&v36[8 * *(this + 56) - 8] &= v34;
  }

  v13 = *&v70[0];
LABEL_49:
  re::DynamicBitset<unsigned long long,64ul>::setBit(this + 440, v13);
  if (*(this + 504) == 1)
  {
    v37 = *(this + 61);
    v38 = *(v49 + 47);
    LOWORD(v54) = 257;
    DWORD1(v54) = 1023969417;
    BYTE8(v54) = 0;
    re::ecs2::System::setTaskOptions(v37, v38, &v54);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 272);
  }

  v39 = re::ecs2::SceneComponentTable::get((a2 + 25), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v54 = this;
  *(&v54 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::MeshSceneComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::MeshSceneSystem::willRemoveComponents,re::ecs2::MeshSceneSystem>;
  *&v55 = 0;
  *(&v55 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::MeshSceneComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::MeshSceneComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::MeshSceneComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v39 + 272), &v54);
  v41 = a2[36];
  if (v41)
  {
    v52 = re::globalAllocators(v40)[2];
    v42 = (*(*v52 + 32))(v52, 32, 0);
    *v42 = &unk_1F5CD74A8;
    v42[1] = this;
    v42[2] = re::ecs2::MeshSceneSystem::componentDidChangeHandler;
    v42[3] = 0;
    v53 = v42;
    *&v54 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v41, v51, re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    *(&v54 + 1) = v43;
    re::HashBrown<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::addNew(this + 64, &v48, &v54);
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v51);
  }
}

void *re::HashBrown<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::addNew(uint64_t *a1, unint64_t *a2, _OWORD *a3)
{
  v6 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return (a1[1] + 24 * v6 + 8);
  }

  return re::HashBrown<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::internalAdd(a1, a2, a3);
}

uint64_t re::ecs2::MeshSceneSystem::componentDidChangeHandler(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v2)
  {
    ++*(v2 + 696);
  }

  return 0;
}

uint64_t re::ecs2::MeshSceneSystem::willRemoveSceneFromECSService(re::ecs2::MeshSceneSystem *this, re::ecs2::Scene *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = a2;
  *&v19 = a2;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 41, &v19);
  if (v4 != -1)
  {
    v5 = *(this + 42) + 16 * v4;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 392, *(v5 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 440, *(v5 + 8));
    v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 272, *(v5 + 8));
    if (*v6)
    {
      v7 = v6;
      *v6 = 0;
      v8 = v6 + 1;
      v9 = *(v6[1] + 288);
      if (v9)
      {
        v10 = v6[12];
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v7 + 7), i);
            re::EventBus::unsubscribe(v9, *v12, v12[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v7 + 7));
      v13 = 0;
      v14 = v7 + 3;
      do
      {
        v15 = v7[2];
        if (*v15)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v15, v14[v13]);
        }

        v14[v13++] = -1;
      }

      while (v13 != 4);
      *v8 = 0;
      v8[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 328, &v19);
  }

  v16 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v19 = this;
  *(&v19 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::MeshSceneComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::MeshSceneSystem::willRemoveComponents,re::ecs2::MeshSceneSystem>;
  v20 = 0;
  v21 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::MeshSceneComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::MeshSceneComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::MeshSceneComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::GeometricObjectBase>::removeSubscription(v16 + 272, &v19);
  result = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(this + 64, &v18);
  if (result != -1)
  {
    if (*(v18 + 36))
    {
      re::EventBus::unsubscribe(*(v18 + 36), *(*(this + 65) + 24 * result + 8), *(*(this + 65) + 24 * result + 16));
    }

    return re::HashBrown<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::remove(this + 512, &v18);
  }

  return result;
}

BOOL re::HashBrown<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::remove(uint64_t a1, unint64_t *a2)
{
  v3 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0x80;
    }

    v5->i8[v3 & 0xF] = v8;
    v9 = *(a1 + 16);
    v10 = *(*(a1 + 8) + 24 * v3);
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
    *(a1 + 40) ^= (v11 >> 31) ^ v11;
    v6.i64[1] = *&v7 != 0;
    v12 = vaddq_s64(*(a1 + 24), v6);
    *(a1 + 24) = v12;
    if (v9 >= 0x11 && v12.i64[0] < v9 >> 2)
    {
      re::HashBrown<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

void re::ecs2::MeshSceneSystem::~MeshSceneSystem(re::ecs2::MeshSceneSystem *this)
{
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 512);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 34);
  *(this + 29) = &unk_1F5CD7380;
  re::FixedArray<CoreIKTransform>::deinit(this + 31);

  re::ecs2::System::~System(this);
}

{
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 512);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 34);
  *(this + 29) = &unk_1F5CD7380;
  re::FixedArray<CoreIKTransform>::deinit(this + 31);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshSceneSystem,REEventHandlerResult (re::ecs2::MeshSceneSystem::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshSceneSystem,REEventHandlerResult (re::ecs2::MeshSceneSystem::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD74A8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshSceneSystem,REEventHandlerResult (re::ecs2::MeshSceneSystem::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD74A8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::IntrospectionHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, _DWORD *a5)
{
  v11[0] = 0;
  v11[1] = &str_67;
  v8 = re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addOrReplace(a4, a5, v11);
  v9 = v8;
  if (v11[0])
  {
  }

  re::introspectionInitElement(a2, a3, *(a1 + 64), v9);
  return v9;
}

uint64_t re::IntrospectionHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 8;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 32 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 4, v10 + 8);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 32 * v6) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24), *(v7 + v5 + 24));
        v8 = *(a2 + 16) + v5;
        *(result + 4) = *(v8 + 4);
        v9 = *(v8 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
        *(result + 8) = *(v8 + 8) & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
        *(result + 16) = *(v8 + 16);
        *(v8 + 8) = 0;
        *(v8 + 16) = &str_67;
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

_anonymous_namespace_ *re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addOrReplace(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v13, v12);
    v10 = *(v8 + 8);
    result = (v8 + 8);
    *(result - 1) = *a2;
    v11 = *a3;
    *result = v10 & 0xFFFFFFFFFFFFFFFELL | *a3 & 1;
    *result = *a3 & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
    *(result + 1) = a3[1];
    *a3 = 0;
    a3[1] = &str_67;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    return re::StringID::operator=((*(a1 + 16) + 32 * v7 + 8), a3);
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + 32 * v6 + 4) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 32 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 32 * v8 + 4) == *a2)
      {
        break;
      }

      v8 = *(v7 + 32 * v8) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

void re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

_anonymous_namespace_ *re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, _DWORD *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, _DWORD *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 8;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 32 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 8;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 4;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void *re::IntrospectionHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, _DWORD *a5)
{
  v11[0] = 0x3F8000003F800000;
  v11[1] = 1065353216;
  v11[2] = 0;
  v11[3] = 0x3F80000000000000;
  v11[4] = 0;
  v11[5] = 0;
  re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addOrReplace(a4, a5, v11);
  v9 = v8;
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v9;
}

uint64_t re::IntrospectionHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 20;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 80 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 4, v10 + 16);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 80 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(v4, *(v7 + v5 + 64) % *(v4 + 24), *(v7 + v5 + 64));
        v8 = *(a2 + 16) + v5;
        *(result + 4) = *(v8 + 4);
        v10 = *(v8 + 32);
        v9 = *(v8 + 48);
        *(result + 16) = *(v8 + 16);
        *(result + 32) = v10;
        *(result + 48) = v9;
        v2 = *(a2 + 32);
      }

      v5 += 80;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 80 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 64) = a3;
  ++*(a1 + 28);
  return v7 + 80 * v5;
}

void re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 20;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

__n128 re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addOrReplace(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v14);
  v7 = HIDWORD(v15);
  if (HIDWORD(v15) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v15, v14);
    *(v8 + 4) = *a2;
    v10 = *a3;
    result = *(a3 + 16);
    v11 = *(a3 + 32);
    *(v8 + 32) = result;
    *(v8 + 48) = v11;
    *(v8 + 16) = v10;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v12 = *(a1 + 16) + 80 * v7;
    result = *a3;
    v13 = *(a3 + 32);
    *(v12 + 32) = *(a3 + 16);
    *(v12 + 48) = v13;
    *(v12 + 16) = result;
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + 80 * v6 + 4) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 80 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 80 * v8 + 4) == *a2)
      {
        break;
      }

      v8 = *(v7 + 80 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

void re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);

  return re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);

    re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, _DWORD *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v13);
  re::TypeInfo::TypeInfo(v12, v14);
  Instance = re::TypeInfo::createInstance(v12, a3, 0);
  re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addOrReplace(a1, a4, Instance);
  v10 = v9;
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v13);
  re::TypeInfo::TypeInfo(v12, v14);
  re::TypeInfo::releaseInstance(v12, Instance, a3, 0);
  return v10;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, _DWORD *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 80 * v6 + 16;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 80 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 20;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 80 * *(a1 + 32) + 4;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 80 * *(a1 + 32) + 16;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned int,re::GenericSRT<float>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void *re::make::shared::unsafelyInplace<re::ecs2::MeshSceneComponent>(void *a1)
{
  bzero(a1, 0x2C0uLL);
  ArcSharedObject::ArcSharedObject(a1, 0);
  a1[2] = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F5CD7328;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 16) = 0;
  *(a1 + 68) = 0x7FFFFFFFLL;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 28) = 0;
  *(a1 + 116) = 0x7FFFFFFFLL;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 164) = 0x7FFFFFFFLL;
  a1[26] = 0;
  a1[22] = 0;
  *(a1 + 23) = 0u;
  *(a1 + 50) = 0;
  *(a1 + 54) = 0;
  *(a1 + 14) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 252) = 0u;
  *(a1 + 268) = 0x7FFFFFFFLL;
  *(a1 + 35) = 0u;
  *(a1 + 37) = 0u;
  *(a1 + 78) = 0;
  *(a1 + 316) = 0x7FFFFFFFLL;
  *(a1 + 41) = 0u;
  *(a1 + 43) = 0u;
  *(a1 + 45) = 0u;
  *(a1 + 47) = 0u;
  *(a1 + 49) = 0u;
  *(a1 + 51) = 0u;
  *(a1 + 53) = 0u;
  *(a1 + 55) = 0u;
  *(a1 + 57) = 0u;
  *(a1 + 59) = 0u;
  *(a1 + 61) = 0u;
  *(a1 + 63) = 0u;
  *(a1 + 65) = 0u;
  *(a1 + 67) = 0u;
  *(a1 + 69) = 0u;
  *(a1 + 71) = 0u;
  *(a1 + 73) = 0u;
  *(a1 + 75) = 0u;
  *(a1 + 77) = 0u;
  a1[79] = 0;
  inited = objc_initWeak(a1 + 80, 0);
  a1[81] = 0;
  a1[85] = re::globalAllocators(inited)[2];
  *(a1 + 43) = 0u;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs218MeshSceneComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 5;
    *(a2 + 8) = 0;
  }
}

re::ecs2::MeshSceneSystem *re::ecs2::MeshSceneSystem::MeshSceneSystem(re::ecs2::MeshSceneSystem *this)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CD73E8;
  v3 = v2 + 29;
  v2[28] = 0;
  v2[29] = &unk_1F5CD7380;
  v2[30] = v2;
  v2[32] = 0;
  v2[33] = 0;
  v2[31] = 0;
  v9[1] = 1;
  v10[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v9[0] = v10;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 31), v9);
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 72) = 1;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 37) = 0;
  *(this + 80) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 102) = 1;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 56) = 0;
  *(this + 114) = 1;
  *(this + 489) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 392), 0);
  *(this + 102) += 2;
  *(this + 54) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 440), 0);
  *(this + 114) += 2;
  *(this + 60) = 0;
  *(this + 61) = this;
  *(this + 62) = v3;
  *(this + 504) = 1;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  return this;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSceneComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSceneComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSceneComponent>,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 448, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned int,8ul>::setCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<unsigned int,8ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 8;
  }

  else
  {
    v8 = *(result + 3);
  }

  if (v8 != a2)
  {
    v9 = *(result + 1);
    if (v9 <= a2 && (a2 > 8 || (v7 & 1) == 0))
    {
      if (a2 < 9)
      {
        v14 = (result + 24);
        v15 = *(v4 + 4);
        if (v7)
        {
          v16 = v4 + 24;
        }

        else
        {
          v16 = *(v4 + 4);
        }

        memcpy(v14, v16, 4 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 62)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 4, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
        __break(1u);
      }

      else
      {
        v2 = 4 * a2;
        v10 = (*(*v5 + 32))(*result, 4 * a2, 4);
        if (v10)
        {
          v12 = v10;
          if (*(v4 + 16))
          {
            v13 = v4 + 24;
          }

          else
          {
            v13 = *(v4 + 4);
          }

          result = memcpy(v10, v13, 4 * *(v4 + 1));
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, *(v4 + 4));
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          *(v4 + 3) = a2;
          *(v4 + 4) = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
      __break(1u);
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(uint64_t a1, _DWORD *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,re::StringID,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 8;
  }
}

re *re::internal::destroyPersistent<re::ecs2::MeshSceneComponent::FramePersistentMeshSceneData>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::FixedArray<CoreIKTransform>::deinit(v1 + 18);
    re::FixedArray<CoreIKTransform>::deinit(v1 + 15);
    v3 = *(v1 + 10);
    if (v3)
    {
      if (*(v1 + 14))
      {
        (*(*v3 + 40))(v3);
      }

      *(v1 + 14) = 0;
      *(v1 + 11) = 0;
      *(v1 + 12) = 0;
      *(v1 + 10) = 0;
      ++*(v1 + 26);
    }

    re::DynamicArray<unsigned long>::deinit(v1 + 40);
    re::DynamicArray<unsigned long>::deinit(v1);
    v4 = *(*v2 + 40);

    return v4(v2, v1);
  }

  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::MeshSceneComponent::FramePersistentMeshSceneData,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::MeshSceneComponent::FramePersistentMeshSceneData*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD7640;
  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::MeshSceneComponent::FramePersistentMeshSceneData,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::MeshSceneComponent::FramePersistentMeshSceneData*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CD7640;
  return result;
}

uint64_t re::ecs2::ComponentBucketsBase::component(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1 + 8, a2);
  result = re::DataArray<re::ecs2::Component *>::tryGet(v4, a3);
  if (result)
  {
    return *result;
  }

  return result;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSceneComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CD7698;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSceneComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD76F0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSceneComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD7748;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSceneComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD77A0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSceneComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CD7698;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSceneComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CD76F0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSceneComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CD7748;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSceneComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CD77A0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSceneComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSceneComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSceneComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}