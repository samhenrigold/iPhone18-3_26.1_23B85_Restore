uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_18BlendShapeDeformerENS2_12_GLOBAL__N_115BlendShapeModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISG_EEFvSF_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_anonymous_namespace_ *re::DynamicArray<void re::anonymous namespace::buildSparseBlendShape<unsigned int>(re::mtl::Device const&,re::BlendShapeGroupDefinition const&,re::DeformationModelData &,unsigned long)::ComponentInfluence>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*result)
    {
      v8 = 2 * v4;
      v9 = v4 == 0;
      v10 = 8;
      if (!v9)
      {
        v10 = v8;
      }

      if (v10 <= v6)
      {
        v11 = v6;
      }

      else
      {
        v11 = v10;
      }
    }

    else
    {
      ++*(v3 + 6);
    }
  }

  *(*(v3 + 4) + 8 * (*(v3 + 2))++) = *a2;
  ++*(v3 + 6);
  return result;
}

void *re::DynamicArray<void re::anonymous namespace::buildSparseBlendShape<unsigned int>(re::mtl::Device const&,re::BlendShapeGroupDefinition const&,re::DeformationModelData &,unsigned long)::ComponentInfluence>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 4);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 8 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(uint64_t result, uint64_t a2, int a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 40 * v6 + 4) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 40 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 40 * v8 + 4) == a3)
      {
        break;
      }

      v8 = *(v7 + 40 * v8) & 0x7FFFFFFF;
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
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(v25, v9, v8);
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
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, *(v13 + 32) % *(a1 + 6), *(v13 + 32));
                *(v17 + 4) = *(v13 + 4);
                v18 = *(v13 + 8);
                *(v17 + 24) = *(v13 + 24);
                *(v17 + 8) = v18;
              }

              v13 += 40;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v25);
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
    v20 = *(v19 + 40 * v5);
  }

  else
  {
    v19 = a1[2];
    v20 = *(v19 + 40 * v5);
    *(a1 + 9) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 40 * v5;
  *v22 = v20 | 0x80000000;
  v23 = a1[1];
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 32) = a3;
  ++*(a1 + 7);
  return v19 + 40 * v5;
}

void re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

void *re::DynamicArray<re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 8 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**,false>(uint64_t result, unsigned int **a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v76 = *(a2 - 1);
        v77 = *v8;
        if (*v76 < **v8)
        {
          *v8 = v76;
          *(a2 - 1) = v77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v84 = v8 + 1;
      v85 = v8[1];
      v86 = v8 + 2;
      v87 = v8[2];
      v88 = *v8;
      v89 = *v85;
      v90 = **v8;
      v91 = *v87;
      if (*v85 >= v90)
      {
        if (v91 >= v89)
        {
          goto LABEL_186;
        }

        *v84 = v87;
        *v86 = v85;
        v92 = v8;
        v93 = (v8 + 1);
        result = v85;
        if (v91 < v90)
        {
          goto LABEL_178;
        }
      }

      else
      {
        v92 = v8;
        v93 = (v8 + 2);
        result = *v8;
        if (v91 >= v89)
        {
          *v8 = v85;
          v8[1] = v88;
          v92 = v8 + 1;
          v93 = (v8 + 2);
          result = v88;
          if (v91 >= v90)
          {
LABEL_186:
            v85 = v87;
            goto LABEL_187;
          }
        }

LABEL_178:
        *v92 = v87;
        *v93 = v88;
        v85 = result;
      }

LABEL_187:
      v143 = *(a2 - 1);
      if (*v143 < *v85)
      {
        *v86 = v143;
        *(a2 - 1) = v85;
        v144 = *v86;
        v145 = *v84;
        v146 = *v144;
        if (*v144 < *v145)
        {
          v8[1] = v144;
          v8[2] = v145;
          v147 = *v8;
          if (v146 < **v8)
          {
            *v8 = v144;
            v8[1] = v147;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = v8;
          do
          {
            v100 = *v98;
            v99 = v98[1];
            v98 = v94;
            v101 = *v99;
            if (*v99 < *v100)
            {
              v102 = v97;
              while (1)
              {
                *(v8 + v102 + 8) = v100;
                if (!v102)
                {
                  break;
                }

                v100 = *(v8 + v102 - 8);
                v102 -= 8;
                if (v101 >= *v100)
                {
                  v103 = (v8 + v102 + 8);
                  goto LABEL_129;
                }
              }

              v103 = v8;
LABEL_129:
              *v103 = v99;
            }

            v94 = v98 + 1;
            v97 += 8;
          }

          while (v98 + 1 != a2);
        }
      }

      else if (!v96)
      {
        do
        {
          v140 = *v7;
          v139 = *(v7 + 8);
          v7 = v94;
          v141 = *v139;
          if (*v139 < *v140)
          {
            v142 = v7;
            do
            {
              *v142 = v140;
              v140 = *(v142 - 2);
              --v142;
            }

            while (v141 < *v140);
            *v142 = v139;
          }

          v94 = (v7 + 8);
        }

        while ((v7 + 8) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v104 = (v9 - 2) >> 1;
        v105 = v104;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = &v8[v107];
            v109 = *v108;
            if (2 * v106 + 2 >= v9)
            {
              v110 = *v109;
            }

            else
            {
              v110 = *v109;
              result = *v108[1];
              if (*v109 <= result)
              {
                v110 = *v108[1];
              }

              if (*v109 < result)
              {
                v109 = v108[1];
                ++v108;
                v107 = 2 * v106 + 2;
              }
            }

            v111 = &v8[v106];
            v112 = *v111;
            v113 = **v111;
            if (v110 >= v113)
            {
              do
              {
                v114 = v108;
                *v111 = v109;
                if (v104 < v107)
                {
                  break;
                }

                v115 = (2 * v107) | 1;
                v108 = &v8[v115];
                v107 = 2 * v107 + 2;
                v109 = *v108;
                if (v107 >= v9)
                {
                  result = *v109;
                  v107 = v115;
                }

                else
                {
                  LODWORD(result) = *v109;
                  v116 = *v108[1];
                  result = *v109 <= v116 ? v116 : result;
                  if (*v109 >= v116)
                  {
                    v107 = v115;
                  }

                  else
                  {
                    v109 = v108[1];
                    ++v108;
                  }
                }

                v111 = v114;
              }

              while (result >= v113);
              *v114 = v112;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        do
        {
          v117 = 0;
          v118 = *v8;
          v119 = v8;
          do
          {
            v120 = &v119[v117];
            v121 = v120 + 1;
            v122 = v120[1];
            v123 = (2 * v117) | 1;
            v117 = 2 * v117 + 2;
            if (v117 >= v9)
            {
              v117 = v123;
            }

            else
            {
              v126 = v120[2];
              v124 = v120 + 2;
              v125 = v126;
              result = *v122;
              v127 = *v126;
              if (result < *v126)
              {
                v122 = v125;
                v121 = v124;
              }

              if (result >= v127)
              {
                v117 = v123;
              }
            }

            *v119 = v122;
            v119 = v121;
          }

          while (v117 <= ((v9 - 2) >> 1));
          if (v121 == --a2)
          {
            *v121 = v118;
          }

          else
          {
            *v121 = *a2;
            *a2 = v118;
            v128 = (v121 - v8 + 8) >> 3;
            v129 = v128 < 2;
            v130 = v128 - 2;
            if (!v129)
            {
              v131 = v130 >> 1;
              v132 = &v8[v131];
              v133 = *v132;
              v134 = *v121;
              v135 = **v121;
              if (**v132 < v135)
              {
                do
                {
                  v136 = v132;
                  *v121 = v133;
                  if (!v131)
                  {
                    break;
                  }

                  v131 = (v131 - 1) >> 1;
                  v132 = &v8[v131];
                  v133 = *v132;
                  v121 = v136;
                }

                while (**v132 < v135);
                *v136 = v134;
              }
            }
          }

          v129 = v9-- <= 2;
        }

        while (!v129);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *v12;
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = **v10;
      v17 = **v8;
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (**v10 < **v8)
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*v24 < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *v26;
      v29 = *v27;
      v30 = *(a2 - 2);
      v31 = *v30;
      if (*v26 >= *v27)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (**v25 < *v32)
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*v34 < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *v37;
      v40 = *v38;
      v41 = *(a2 - 3);
      v42 = *v41;
      if (*v37 >= *v38)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (**v35 < *v43)
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*v44 < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = **v11;
      v48 = **v25;
      v49 = *v35;
      v50 = **v35;
      if (v47 >= v48)
      {
        if (v50 >= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 >= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v8;
          *v8 = v45;
          *v11 = v51;
          goto LABEL_57;
        }
      }

      *v25 = v49;
      *v35 = v46;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = **v8;
    v21 = **v11;
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (**v8 < **v11)
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 >= v20)
    {
      *v11 = v18;
      *v8 = v19;
      v33 = *(a2 - 1);
      if (*v33 >= v21)
      {
        goto LABEL_57;
      }

      *v8 = v33;
    }

    else
    {
      *v11 = v12;
    }

    *(a2 - 1) = v19;
LABEL_57:
    --a3;
    v52 = *v8;
    v53 = **v8;
    if ((a4 & 1) != 0 || **(v8 - 1) < v53)
    {
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*v55 < v53);
      v56 = &v8[v54];
      v57 = a2;
      if (v54 == 1)
      {
        v57 = a2;
        do
        {
          if (v56 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*v59 >= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*v58 >= v53);
      }

      if (v56 >= v57)
      {
        v65 = v56 - 1;
      }

      else
      {
        v60 = *v57;
        v61 = &v8[v54];
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*v63 < v53);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*v64 >= v53);
        }

        while (v61 < v62);
        v65 = v61 - 1;
      }

      if (v65 != v8)
      {
        *v8 = *v65;
      }

      *v65 = v52;
      if (v56 < v57)
      {
        goto LABEL_80;
      }

      v66 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**>(v8, v65);
      v8 = v65 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**>(v65 + 1, a2);
      if (result)
      {
        a2 = v65;
        if (!v66)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v66)
      {
LABEL_80:
        result = std::__introsort<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**,false>(v7, v65, a3, a4 & 1);
        a4 = 0;
        v8 = v65 + 1;
      }
    }

    else
    {
      if (v53 >= **(a2 - 1))
      {
        v68 = (v8 + 1);
        do
        {
          v8 = v68;
          if (v68 >= a2)
          {
            break;
          }

          v68 += 8;
        }

        while (v53 >= **v8);
      }

      else
      {
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (v53 >= *v67);
      }

      v69 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *--v69;
        }

        while (v53 < *v70);
      }

      if (v8 < v69)
      {
        v71 = *v8;
        v72 = *v69;
        do
        {
          *v8 = v72;
          *v69 = v71;
          do
          {
            v73 = v8[1];
            ++v8;
            v71 = v73;
          }

          while (v53 >= *v73);
          do
          {
            v74 = *--v69;
            v72 = v74;
          }

          while (v53 < *v74);
        }

        while (v8 < v69);
      }

      v75 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v75;
      }

      a4 = 0;
      *v75 = v52;
    }
  }

  v78 = *v8;
  v79 = v8[1];
  v80 = *v79;
  v81 = **v8;
  v82 = *(a2 - 1);
  v83 = *v82;
  if (*v79 >= v81)
  {
    if (v83 < v80)
    {
      v8[1] = v82;
      *(a2 - 1) = v79;
      v138 = *v8;
      v137 = v8[1];
      if (*v137 < **v8)
      {
        *v8 = v137;
        v8[1] = v138;
      }
    }
  }

  else
  {
    if (v83 >= v80)
    {
      *v8 = v79;
      v8[1] = v78;
      v148 = *(a2 - 1);
      if (*v148 >= v81)
      {
        return result;
      }

      v8[1] = v148;
    }

    else
    {
      *v8 = v82;
    }

    *(a2 - 1) = v78;
  }

  return result;
}

unsigned int **std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**,0>(unsigned int **result, unsigned int **a2, unsigned int **a3, unsigned int **a4, unsigned int **a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = **a2;
  v8 = **result;
  v9 = *a3;
  v10 = **a3;
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (**a3 < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (**a4 < *v5)
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (**a3 < **a2)
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (**a5 < **a4)
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (**a4 < **a3)
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (**a3 < **a2)
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (**a2 < **result)
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**>(unsigned int **a1, unsigned int **a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *v6;
      v8 = **a1;
      v9 = *(a2 - 1);
      v10 = *v9;
      if (*v6 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*v31 < **a1)
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*v47 >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *v21;
    v26 = **a1;
    v27 = *v23;
    if (*v21 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*v42 < *v21)
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *v43;
          if (*v43 < *v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < **a1)
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*v3 < **a1)
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *v13;
  v16 = **a1;
  v17 = *v11;
  if (*v13 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = **v33;
    if (v38 < *v37)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *v37)
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

_anonymous_namespace_ *re::MaterialManager::init(re::MaterialManager *this, re::RenderManager *a2, BOOL a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, __int128 a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, __int128 a48, __int128 a49, __int128 a50, __int128 a51, __int128 a52, __int128 a53)
{
  MEMORY[0x1EEE9AC00](this);
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = &STACK[0xBF0];
  STACK[0x10F8] = *MEMORY[0x1E69E9840];
  *(v58 + 112) = v56;
  v61 = "fallback";
  *(v58 + 83) = re::MaterialManager::createTextureTableForName(v58, "fallback");
  *(v59 + 81) = re::MaterialManager::createTextureTableForName(v59, "light");
  *(v59 + 82) = re::MaterialManager::createTextureTableForName(v59, "global");
  *(v59 + 80) = re::MaterialManager::createTextureTableForName(v59, "brdf");
  BufferTableForName = re::MaterialManager::createBufferTableForName(v59, "fallback");
  *(v59 + 91) = BufferTableForName;
  if (!*(v59 + 93))
  {
    goto LABEL_322;
  }

  v63 = *(v59 + 94);
  STACK[0x3F0] = "zeros";
  STACK[0x3F8] = 5;
  re::DynamicString::operator=(v63, &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 1)
  {
LABEL_326:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    v301 = MEMORY[0x1E69E9C10];
    v302 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    if (v302)
    {
      v303 = 3;
    }

    else
    {
      v303 = 2;
    }

    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 1;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl(v303, &a48, &STACK[0x3F0], 80, &dword_1E1C61000, v301, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0xBF0], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
    goto LABEL_330;
  }

  v64 = *(v59 + 94);
  STACK[0x3F0] = "ones";
  STACK[0x3F8] = 4;
  re::DynamicString::operator=((v64 + 32), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 2)
  {
LABEL_330:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    v304 = MEMORY[0x1E69E9C10];
    v305 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    if (v305)
    {
      v306 = 3;
    }

    else
    {
      v306 = 2;
    }

    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 2;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl(v306, &a48, &STACK[0x3F0], 80, &dword_1E1C61000, v304, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0xBF0], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
    goto LABEL_334;
  }

  v65 = *(v59 + 94);
  STACK[0x3F0] = "xDir";
  STACK[0x3F8] = 4;
  re::DynamicString::operator=((v65 + 64), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 3)
  {
LABEL_334:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    v307 = MEMORY[0x1E69E9C10];
    v308 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    if (v308)
    {
      v309 = 3;
    }

    else
    {
      v309 = 2;
    }

    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 3;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl(v309, &a48, &STACK[0x3F0], 80, &dword_1E1C61000, v307, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0xBF0], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
    goto LABEL_338;
  }

  v66 = *(v59 + 94);
  STACK[0x3F0] = "yDir";
  STACK[0x3F8] = 4;
  re::DynamicString::operator=((v66 + 96), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 4)
  {
LABEL_338:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    v310 = MEMORY[0x1E69E9C10];
    v311 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    if (v311)
    {
      v312 = 3;
    }

    else
    {
      v312 = 2;
    }

    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 4;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl(v312, &a48, &STACK[0x3F0], 80, &dword_1E1C61000, v310, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0xBF0], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
    goto LABEL_342;
  }

  v67 = *(v59 + 94);
  STACK[0x3F0] = "zDir";
  STACK[0x3F8] = 4;
  re::DynamicString::operator=((v67 + 128), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 5)
  {
LABEL_342:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    v313 = MEMORY[0x1E69E9C10];
    v314 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    if (v314)
    {
      v315 = 3;
    }

    else
    {
      v315 = 2;
    }

    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 5;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl(v315, &a48, &STACK[0x3F0], 80, &dword_1E1C61000, v313, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0xBF0], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
    goto LABEL_346;
  }

  v68 = *(v59 + 94);
  STACK[0x3F0] = "origin";
  STACK[0x3F8] = 6;
  re::DynamicString::operator=((v68 + 160), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 6)
  {
LABEL_346:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    v316 = MEMORY[0x1E69E9C10];
    v317 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    if (v317)
    {
      v318 = 3;
    }

    else
    {
      v318 = 2;
    }

    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 6;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl(v318, &a48, &STACK[0x3F0], 80, &dword_1E1C61000, v316, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0xBF0], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
    goto LABEL_350;
  }

  v69 = *(v59 + 94);
  STACK[0x3F0] = "xUnit";
  STACK[0x3F8] = 5;
  re::DynamicString::operator=((v69 + 192), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 7)
  {
LABEL_350:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    v319 = MEMORY[0x1E69E9C10];
    v320 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    if (v320)
    {
      v321 = 3;
    }

    else
    {
      v321 = 2;
    }

    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 7;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl(v321, &a48, &STACK[0x3F0], 80, &dword_1E1C61000, v319, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0xBF0], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
    goto LABEL_354;
  }

  v70 = *(v59 + 94);
  STACK[0x3F0] = "yUnit";
  STACK[0x3F8] = 5;
  re::DynamicString::operator=((v70 + 224), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 8)
  {
LABEL_354:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    v322 = MEMORY[0x1E69E9C10];
    v323 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    if (v323)
    {
      v324 = 3;
    }

    else
    {
      v324 = 2;
    }

    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 8;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl(v324, &a48, &STACK[0x3F0], 80, &dword_1E1C61000, v322, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0xBF0], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
    goto LABEL_358;
  }

  v71 = *(v59 + 94);
  STACK[0x3F0] = "zUnit";
  STACK[0x3F8] = 5;
  re::DynamicString::operator=((v71 + 256), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 9)
  {
LABEL_358:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    v325 = MEMORY[0x1E69E9C10];
    v326 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    if (v326)
    {
      v327 = 3;
    }

    else
    {
      v327 = 2;
    }

    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 9;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl(v327, &a48, &STACK[0x3F0], 80, &dword_1E1C61000, v325, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0xBF0], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
    goto LABEL_362;
  }

  v72 = *(v59 + 94);
  STACK[0x3F0] = "gray";
  STACK[0x3F8] = 4;
  re::DynamicString::operator=((v72 + 288), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 0xA)
  {
LABEL_362:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    v328 = MEMORY[0x1E69E9C10];
    v329 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    if (v329)
    {
      v330 = 3;
    }

    else
    {
      v330 = 2;
    }

    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 10;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl(v330, &a48, &STACK[0x3F0], 80, &dword_1E1C61000, v328, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0xBF0], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
    goto LABEL_366;
  }

  v73 = *(v59 + 94);
  STACK[0x3F0] = "identityMatrix";
  STACK[0x3F8] = 14;
  re::DynamicString::operator=((v73 + 320), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 0xB)
  {
LABEL_366:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    v331 = MEMORY[0x1E69E9C10];
    v332 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    if (v332)
    {
      v333 = 3;
    }

    else
    {
      v333 = 2;
    }

    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 11;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl(v333, &a48, &STACK[0x3F0], 80, &dword_1E1C61000, v331, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0xBF0], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
    goto LABEL_370;
  }

  v74 = *(v59 + 94);
  STACK[0x3F0] = "zeros128bytes";
  STACK[0x3F8] = 13;
  re::DynamicString::operator=((v74 + 352), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 0xC)
  {
LABEL_370:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    v334 = MEMORY[0x1E69E9C10];
    v335 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    if (v335)
    {
      v336 = 3;
    }

    else
    {
      v336 = 2;
    }

    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 12;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl(v336, &a48, &STACK[0x3F0], 80, &dword_1E1C61000, v334, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0xBF0], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
    goto LABEL_374;
  }

  v75 = *(v59 + 94);
  STACK[0x3F0] = "zeros1024bytes";
  STACK[0x3F8] = 14;
  re::DynamicString::operator=((v75 + 384), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 0xD)
  {
LABEL_374:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    v337 = MEMORY[0x1E69E9C10];
    v338 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    if (v338)
    {
      v339 = 3;
    }

    else
    {
      v339 = 2;
    }

    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 13;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl(v339, &a48, &STACK[0x3F0], 80, &dword_1E1C61000, v337, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0xBF0], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
LABEL_378:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    v340 = MEMORY[0x1E69E9C10];
    v341 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    if (v341)
    {
      v342 = 3;
    }

    else
    {
      v342 = 2;
    }

    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 0;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = 0;
    _os_log_send_and_compose_impl(v342, &a47, &STACK[0x10A0], 80, &dword_1E1C61000, v340, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0x1070], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
LABEL_382:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    v343 = MEMORY[0x1E69E9C10];
    v344 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    if (v344)
    {
      v345 = 3;
    }

    else
    {
      v345 = 2;
    }

    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 1;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v57;
    _os_log_send_and_compose_impl(v345, &a47, &STACK[0x10A0], 80, &dword_1E1C61000, v343, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0x1070], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
LABEL_386:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    v346 = MEMORY[0x1E69E9C10];
    v347 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    if (v347)
    {
      v348 = 3;
    }

    else
    {
      v348 = 2;
    }

    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 2;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl(v348, &a47, &STACK[0x10A0], 80, &dword_1E1C61000, v346, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0x1070], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
LABEL_390:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    v349 = MEMORY[0x1E69E9C10];
    v350 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    if (v350)
    {
      v351 = 3;
    }

    else
    {
      v351 = 2;
    }

    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 3;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl(v351, &a47, &STACK[0x10A0], 80, &dword_1E1C61000, v349, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0x1070], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
LABEL_394:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    v352 = MEMORY[0x1E69E9C10];
    v353 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    if (v353)
    {
      v354 = 3;
    }

    else
    {
      v354 = 2;
    }

    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 4;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl(v354, &a47, &STACK[0x10A0], 80, &dword_1E1C61000, v352, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0x1070], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
LABEL_398:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    v355 = MEMORY[0x1E69E9C10];
    v356 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    if (v356)
    {
      v357 = 3;
    }

    else
    {
      v357 = 2;
    }

    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 5;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl(v357, &a47, &STACK[0x10A0], 80, &dword_1E1C61000, v355, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0x1070], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
LABEL_402:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    v358 = MEMORY[0x1E69E9C10];
    v359 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    if (v359)
    {
      v360 = 3;
    }

    else
    {
      v360 = 2;
    }

    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 6;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl(v360, &a47, &STACK[0x10A0], 80, &dword_1E1C61000, v358, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0x1070], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
LABEL_406:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    v361 = MEMORY[0x1E69E9C10];
    v362 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    if (v362)
    {
      v363 = 3;
    }

    else
    {
      v363 = 2;
    }

    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 7;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl(v363, &a47, &STACK[0x10A0], 80, &dword_1E1C61000, v361, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0x1070], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
LABEL_410:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    v364 = MEMORY[0x1E69E9C10];
    v365 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    if (v365)
    {
      v366 = 3;
    }

    else
    {
      v366 = 2;
    }

    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 8;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl(v366, &a47, &STACK[0x10A0], 80, &dword_1E1C61000, v364, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0x1070], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
LABEL_414:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    v367 = MEMORY[0x1E69E9C10];
    v368 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    if (v368)
    {
      v369 = 3;
    }

    else
    {
      v369 = 2;
    }

    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 9;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl(v369, &a47, &STACK[0x10A0], 80, &dword_1E1C61000, v367, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0x1070], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
LABEL_418:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    v370 = MEMORY[0x1E69E9C10];
    v371 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    if (v371)
    {
      v372 = 3;
    }

    else
    {
      v372 = 2;
    }

    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 10;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl(v372, &a47, &STACK[0x10A0], 80, &dword_1E1C61000, v370, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0x1070], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
LABEL_422:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    v373 = MEMORY[0x1E69E9C10];
    v374 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    if (v374)
    {
      v375 = 3;
    }

    else
    {
      v375 = 2;
    }

    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 11;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl(v375, &a47, &STACK[0x10A0], 80, &dword_1E1C61000, v373, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0x1070], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
LABEL_426:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    v376 = MEMORY[0x1E69E9C10];
    v377 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    if (v377)
    {
      v378 = 3;
    }

    else
    {
      v378 = 2;
    }

    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 12;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl(v378, &a47, &STACK[0x10A0], 80, &dword_1E1C61000, v376, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0x1070], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
    goto LABEL_430;
  }

  v76 = *(v59 + 94);
  STACK[0x3F0] = "zeros2048bytes";
  STACK[0x3F8] = 14;
  re::DynamicString::operator=((v76 + 416), &STACK[0x3F0]);
  a44 = 0;
  a45 = 0;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a44 length:16 options:0];
  v77 = (v59 + 760);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 95, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 95) setLabel_];
  __asm { FMOV            V0.4S, #1.0 }

  a43 = _Q0;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a43 length:16 options:0];
  v394 = (v59 + 768);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 96, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 96) setLabel_];
  a42 = xmmword_1E3047670;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a42 length:16 options:0];
  v393 = (v59 + 776);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 97, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 97) setLabel_];
  a41 = xmmword_1E3047680;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a41 length:16 options:0];
  v392 = (v59 + 784);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 98, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 98) setLabel_];
  a40 = xmmword_1E30476A0;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a40 length:16 options:0];
  v391 = (v59 + 792);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 99, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 99) setLabel_];
  a39 = xmmword_1E30474D0;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a39 length:16 options:0];
  v390 = (v59 + 800);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 100, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 100) setLabel_];
  a38 = xmmword_1E3060D30;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a38 length:16 options:0];
  v389 = (v59 + 808);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 101, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 101) setLabel_];
  a37 = xmmword_1E3071540;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a37 length:16 options:0];
  v388 = (v59 + 816);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 102, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 102) setLabel_];
  a36 = xmmword_1E3063230;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a36 length:16 options:0];
  v387 = (v59 + 824);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 103, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 103) setLabel_];
  a35 = xmmword_1E30B4E10;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a35 length:16 options:0];
  v386 = (v59 + 832);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 104, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  v61 = v55;
  [*(v59 + 104) setLabel_];
  a31 = 0u;
  a32 = 0u;
  a33 = 0u;
  a34 = 0u;
  LODWORD(a31) = 1065353216;
  DWORD1(a32) = 1065353216;
  DWORD2(a33) = 1065353216;
  HIDWORD(a34) = 1065353216;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a31 length:64 options:0];
  v83 = (v59 + 840);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 105, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 105) setLabel_];
  *&STACK[0x1060] = 0u;
  *&STACK[0x1050] = 0u;
  *&STACK[0x1040] = 0u;
  *&STACK[0x1030] = 0u;
  *&STACK[0x1020] = 0u;
  *&STACK[0x1010] = 0u;
  *&STACK[0x1000] = 0u;
  *&STACK[0xFF0] = 0u;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&STACK[0xFF0] length:128 options:0];
  v84 = (v59 + 848);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 106, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 106) setLabel_];
  bzero(&STACK[0xBF0], 0x400uLL);
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&STACK[0xBF0] length:1024 options:0];
  v85 = (v59 + 856);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 107, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 107) setLabel_];
  bzero(&STACK[0x3F0], 0x800uLL);
  *&a48 = [v57[26] newBufferWithBytes:&STACK[0x3F0] length:2048 options:0];
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 108, &a48);
  if (a48)
  {
  }

  [*(v59 + 108) setLabel_];
  if (v61)
  {
    v61 = v59 + 840;
    *&a48 = [v57[26] newBufferWithBytes:&re::GammaLUTHelper::gammaLUTData(void)::s_luts length:0x20000 options:0];
    NS::SharedPtr<MTL::Texture>::operator=(v59 + 109, &a48);
    if (a48)
    {
    }

    [*(v59 + 109) setLabel_];
    v85 = (v59 + 856);
    v84 = (v59 + 848);
    v83 = (v59 + 840);
  }

  else
  {
    NS::SharedPtr<MTL::Buffer>::operator=(v59 + 109, v59 + 95);
  }

  a48 = xmmword_1E3047670;
  a49 = xmmword_1E3047680;
  a50 = xmmword_1E30476A0;
  a51 = xmmword_1E30474D0;
  a52 = xmmword_1E3047670;
  a53 = xmmword_1E3047680;
  *&STACK[0x260] = xmmword_1E30476A0;
  *&STACK[0x270] = xmmword_1E30474D0;
  *&STACK[0x280] = xmmword_1E3047670;
  *&STACK[0x290] = xmmword_1E3047680;
  *&STACK[0x2A0] = xmmword_1E30476A0;
  *&STACK[0x2B0] = xmmword_1E3047670;
  *&STACK[0x2C0] = xmmword_1E3047680;
  *&STACK[0x2D0] = xmmword_1E30476A0;
  STACK[0x10A0] = [v57[26] newBufferWithBytes:&a48 length:256 options:0];
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 110, &STACK[0x10A0]);
  v86 = STACK[0x10A0];
  if (STACK[0x10A0])
  {
  }

  v53 = &STACK[0x1070];
  v57 = *(v59 + 91);
  if (!*(v59 + 93))
  {
    goto LABEL_378;
  }

  v87 = *(v59 + 91);
  v88 = *(v59 + 94);
  v89 = *(v88 + 8);
  if (v89)
  {
    v91 = *(v88 + 16);
    if (!v91)
    {
      v95 = (v59 + 864);
      v96 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_62;
    }

    LOBYTE(v88) = *v91;
  }

  else
  {
    v90 = v89 >> 8;
    v91 = (v88 + 9);
    LOBYTE(v88) = v90;
  }

  if (v88)
  {
    v88 = v88;
    v92 = v91[1];
    if (v92)
    {
      v93 = v91 + 2;
      do
      {
        v88 = 31 * v88 + v92;
        v94 = *v93++;
        v92 = v94;
      }

      while (v94);
    }

    v95 = (v59 + 864);
    v96 = v88 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v95 = (v59 + 864);
    v96 = 0;
  }

LABEL_62:
  STACK[0x1070] = v96;
  STACK[0x10A0] = *v77;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v77 length];
  re::BufferTable::setBuffer(v87, &STACK[0x1070], &STACK[0x10A0]);
  v97 = LODWORD(STACK[0x10B8]);
  if (v97 != -1)
  {
    (off_1F5D060B0[v97])(&a47, &STACK[0x10A0]);
  }

  v57 = *(v59 + 93);
  if (v57 <= 1)
  {
    goto LABEL_382;
  }

  v98 = *(v59 + 91);
  v99 = *(v59 + 94);
  v100 = *(v99 + 40);
  if (v100)
  {
    v102 = *(v99 + 48);
    if (!v102)
    {
      v106 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_76;
    }

    LOBYTE(v99) = *v102;
  }

  else
  {
    v101 = v100 >> 8;
    v102 = (v99 + 41);
    LOBYTE(v99) = v101;
  }

  if (v99)
  {
    v99 = v99;
    v103 = v102[1];
    if (v103)
    {
      v104 = v102 + 2;
      do
      {
        v99 = 31 * v99 + v103;
        v105 = *v104++;
        v103 = v105;
      }

      while (v105);
    }

    v106 = v99 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v106 = 0;
  }

LABEL_76:
  STACK[0x1070] = v106;
  STACK[0x10A0] = *v394;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v394 length];
  re::BufferTable::setBuffer(v98, &STACK[0x1070], &STACK[0x10A0]);
  v107 = LODWORD(STACK[0x10B8]);
  if (v107 != -1)
  {
    (off_1F5D060B0[v107])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 2)
  {
    goto LABEL_386;
  }

  v108 = *(v59 + 91);
  v109 = *(v59 + 94);
  v110 = *(v109 + 72);
  if (v110)
  {
    v112 = *(v109 + 80);
    if (!v112)
    {
      v116 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_90;
    }

    LOBYTE(v109) = *v112;
  }

  else
  {
    v111 = v110 >> 8;
    v112 = (v109 + 73);
    LOBYTE(v109) = v111;
  }

  if (v109)
  {
    v109 = v109;
    v113 = v112[1];
    if (v113)
    {
      v114 = v112 + 2;
      do
      {
        v109 = 31 * v109 + v113;
        v115 = *v114++;
        v113 = v115;
      }

      while (v115);
    }

    v116 = v109 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v116 = 0;
  }

LABEL_90:
  STACK[0x1070] = v116;
  STACK[0x10A0] = *v393;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v393 length];
  re::BufferTable::setBuffer(v108, &STACK[0x1070], &STACK[0x10A0]);
  v117 = LODWORD(STACK[0x10B8]);
  if (v117 != -1)
  {
    (off_1F5D060B0[v117])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 3)
  {
    goto LABEL_390;
  }

  v118 = *(v59 + 91);
  v119 = *(v59 + 94);
  v120 = *(v119 + 104);
  if (v120)
  {
    v122 = *(v119 + 112);
    if (!v122)
    {
      v126 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_104;
    }

    LOBYTE(v119) = *v122;
  }

  else
  {
    v121 = v120 >> 8;
    v122 = (v119 + 105);
    LOBYTE(v119) = v121;
  }

  if (v119)
  {
    v119 = v119;
    v123 = v122[1];
    if (v123)
    {
      v124 = v122 + 2;
      do
      {
        v119 = 31 * v119 + v123;
        v125 = *v124++;
        v123 = v125;
      }

      while (v125);
    }

    v126 = v119 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v126 = 0;
  }

LABEL_104:
  STACK[0x1070] = v126;
  STACK[0x10A0] = *v392;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v392 length];
  re::BufferTable::setBuffer(v118, &STACK[0x1070], &STACK[0x10A0]);
  v127 = LODWORD(STACK[0x10B8]);
  if (v127 != -1)
  {
    (off_1F5D060B0[v127])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 4)
  {
    goto LABEL_394;
  }

  v128 = *(v59 + 91);
  v129 = *(v59 + 94);
  v130 = *(v129 + 136);
  if (v130)
  {
    v132 = *(v129 + 144);
    if (!v132)
    {
      v136 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_118;
    }

    LOBYTE(v129) = *v132;
  }

  else
  {
    v131 = v130 >> 8;
    v132 = (v129 + 137);
    LOBYTE(v129) = v131;
  }

  if (v129)
  {
    v129 = v129;
    v133 = v132[1];
    if (v133)
    {
      v134 = v132 + 2;
      do
      {
        v129 = 31 * v129 + v133;
        v135 = *v134++;
        v133 = v135;
      }

      while (v135);
    }

    v136 = v129 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v136 = 0;
  }

LABEL_118:
  STACK[0x1070] = v136;
  STACK[0x10A0] = *v391;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v391 length];
  re::BufferTable::setBuffer(v128, &STACK[0x1070], &STACK[0x10A0]);
  v137 = LODWORD(STACK[0x10B8]);
  if (v137 != -1)
  {
    (off_1F5D060B0[v137])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 5)
  {
    goto LABEL_398;
  }

  v138 = *(v59 + 91);
  v139 = *(v59 + 94);
  v140 = *(v139 + 168);
  if (v140)
  {
    v142 = *(v139 + 176);
    if (!v142)
    {
      v146 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_132;
    }

    LOBYTE(v139) = *v142;
  }

  else
  {
    v141 = v140 >> 8;
    v142 = (v139 + 169);
    LOBYTE(v139) = v141;
  }

  if (v139)
  {
    v139 = v139;
    v143 = v142[1];
    if (v143)
    {
      v144 = v142 + 2;
      do
      {
        v139 = 31 * v139 + v143;
        v145 = *v144++;
        v143 = v145;
      }

      while (v145);
    }

    v146 = v139 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v146 = 0;
  }

LABEL_132:
  STACK[0x1070] = v146;
  STACK[0x10A0] = *v390;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v390 length];
  re::BufferTable::setBuffer(v138, &STACK[0x1070], &STACK[0x10A0]);
  v147 = LODWORD(STACK[0x10B8]);
  if (v147 != -1)
  {
    (off_1F5D060B0[v147])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 6)
  {
    goto LABEL_402;
  }

  v148 = *(v59 + 91);
  v149 = *(v59 + 94);
  v150 = *(v149 + 200);
  if (v150)
  {
    v152 = *(v149 + 208);
    if (!v152)
    {
      v156 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_146;
    }

    LOBYTE(v149) = *v152;
  }

  else
  {
    v151 = v150 >> 8;
    v152 = (v149 + 201);
    LOBYTE(v149) = v151;
  }

  if (v149)
  {
    v149 = v149;
    v153 = v152[1];
    if (v153)
    {
      v154 = v152 + 2;
      do
      {
        v149 = 31 * v149 + v153;
        v155 = *v154++;
        v153 = v155;
      }

      while (v155);
    }

    v156 = v149 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v156 = 0;
  }

LABEL_146:
  STACK[0x1070] = v156;
  STACK[0x10A0] = *v389;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v389 length];
  re::BufferTable::setBuffer(v148, &STACK[0x1070], &STACK[0x10A0]);
  v157 = LODWORD(STACK[0x10B8]);
  if (v157 != -1)
  {
    (off_1F5D060B0[v157])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 7)
  {
    goto LABEL_406;
  }

  v158 = *(v59 + 91);
  v159 = *(v59 + 94);
  v160 = *(v159 + 232);
  if (v160)
  {
    v162 = *(v159 + 240);
    if (!v162)
    {
      v166 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_160;
    }

    LOBYTE(v159) = *v162;
  }

  else
  {
    v161 = v160 >> 8;
    v162 = (v159 + 233);
    LOBYTE(v159) = v161;
  }

  if (v159)
  {
    v159 = v159;
    v163 = v162[1];
    if (v163)
    {
      v164 = v162 + 2;
      do
      {
        v159 = 31 * v159 + v163;
        v165 = *v164++;
        v163 = v165;
      }

      while (v165);
    }

    v166 = v159 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v166 = 0;
  }

LABEL_160:
  STACK[0x1070] = v166;
  STACK[0x10A0] = *v388;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v388 length];
  re::BufferTable::setBuffer(v158, &STACK[0x1070], &STACK[0x10A0]);
  v167 = LODWORD(STACK[0x10B8]);
  if (v167 != -1)
  {
    (off_1F5D060B0[v167])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 8)
  {
    goto LABEL_410;
  }

  v168 = *(v59 + 91);
  v169 = *(v59 + 94);
  v170 = *(v169 + 264);
  if (v170)
  {
    v172 = *(v169 + 272);
    if (!v172)
    {
      v176 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_174;
    }

    LOBYTE(v169) = *v172;
  }

  else
  {
    v171 = v170 >> 8;
    v172 = (v169 + 265);
    LOBYTE(v169) = v171;
  }

  if (v169)
  {
    v169 = v169;
    v173 = v172[1];
    if (v173)
    {
      v174 = v172 + 2;
      do
      {
        v169 = 31 * v169 + v173;
        v175 = *v174++;
        v173 = v175;
      }

      while (v175);
    }

    v176 = v169 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v176 = 0;
  }

LABEL_174:
  STACK[0x1070] = v176;
  STACK[0x10A0] = *v387;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v387 length];
  re::BufferTable::setBuffer(v168, &STACK[0x1070], &STACK[0x10A0]);
  v177 = LODWORD(STACK[0x10B8]);
  if (v177 != -1)
  {
    (off_1F5D060B0[v177])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 9)
  {
    goto LABEL_414;
  }

  v178 = *(v59 + 91);
  v179 = *(v59 + 94);
  v180 = *(v179 + 296);
  if (v180)
  {
    v182 = *(v179 + 304);
    if (!v182)
    {
      v186 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_188;
    }

    LOBYTE(v179) = *v182;
  }

  else
  {
    v181 = v180 >> 8;
    v182 = (v179 + 297);
    LOBYTE(v179) = v181;
  }

  if (v179)
  {
    v179 = v179;
    v183 = v182[1];
    if (v183)
    {
      v184 = v182 + 2;
      do
      {
        v179 = 31 * v179 + v183;
        v185 = *v184++;
        v183 = v185;
      }

      while (v185);
    }

    v186 = v179 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v186 = 0;
  }

LABEL_188:
  STACK[0x1070] = v186;
  STACK[0x10A0] = *v386;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v386 length];
  re::BufferTable::setBuffer(v178, &STACK[0x1070], &STACK[0x10A0]);
  v187 = LODWORD(STACK[0x10B8]);
  if (v187 != -1)
  {
    (off_1F5D060B0[v187])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 0xA)
  {
    goto LABEL_418;
  }

  v188 = *(v59 + 91);
  v189 = *(v59 + 94);
  v190 = *(v189 + 328);
  if (v190)
  {
    v192 = *(v189 + 336);
    if (!v192)
    {
      v196 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_202;
    }

    LOBYTE(v189) = *v192;
  }

  else
  {
    v191 = v190 >> 8;
    v192 = (v189 + 329);
    LOBYTE(v189) = v191;
  }

  if (v189)
  {
    v189 = v189;
    v193 = v192[1];
    if (v193)
    {
      v194 = v192 + 2;
      do
      {
        v189 = 31 * v189 + v193;
        v195 = *v194++;
        v193 = v195;
      }

      while (v195);
    }

    v196 = v189 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v196 = 0;
  }

LABEL_202:
  STACK[0x1070] = v196;
  STACK[0x10A0] = *v83;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v83 length];
  re::BufferTable::setBuffer(v188, &STACK[0x1070], &STACK[0x10A0]);
  v197 = LODWORD(STACK[0x10B8]);
  if (v197 != -1)
  {
    (off_1F5D060B0[v197])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 0xB)
  {
    goto LABEL_422;
  }

  v198 = *(v59 + 91);
  v199 = *(v59 + 94);
  v200 = *(v199 + 360);
  if (v200)
  {
    v202 = *(v199 + 368);
    if (!v202)
    {
      v206 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_216;
    }

    LOBYTE(v199) = *v202;
  }

  else
  {
    v201 = v200 >> 8;
    v202 = (v199 + 361);
    LOBYTE(v199) = v201;
  }

  if (v199)
  {
    v199 = v199;
    v203 = v202[1];
    if (v203)
    {
      v204 = v202 + 2;
      do
      {
        v199 = 31 * v199 + v203;
        v205 = *v204++;
        v203 = v205;
      }

      while (v205);
    }

    v206 = v199 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v206 = 0;
  }

LABEL_216:
  STACK[0x1070] = v206;
  STACK[0x10A0] = *v84;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v84 length];
  re::BufferTable::setBuffer(v198, &STACK[0x1070], &STACK[0x10A0]);
  v207 = LODWORD(STACK[0x10B8]);
  if (v207 != -1)
  {
    (off_1F5D060B0[v207])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 0xC)
  {
    goto LABEL_426;
  }

  v208 = *(v59 + 91);
  v209 = *(v59 + 94);
  v210 = *(v209 + 392);
  if (v210)
  {
    v212 = *(v209 + 400);
    if (!v212)
    {
      v216 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_230;
    }

    LOBYTE(v209) = *v212;
  }

  else
  {
    v211 = v210 >> 8;
    v212 = (v209 + 393);
    LOBYTE(v209) = v211;
  }

  if (v209)
  {
    v209 = v209;
    v213 = v212[1];
    if (v213)
    {
      v214 = v212 + 2;
      do
      {
        v209 = 31 * v209 + v213;
        v215 = *v214++;
        v213 = v215;
      }

      while (v215);
    }

    v216 = v209 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v216 = 0;
  }

LABEL_230:
  STACK[0x1070] = v216;
  STACK[0x10A0] = *v85;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v85 length];
  re::BufferTable::setBuffer(v208, &STACK[0x1070], &STACK[0x10A0]);
  v217 = LODWORD(STACK[0x10B8]);
  if (v217 != -1)
  {
    (off_1F5D060B0[v217])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 0xD)
  {
LABEL_430:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    v379 = MEMORY[0x1E69E9C10];
    v380 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    if (v380)
    {
      v381 = 3;
    }

    else
    {
      v381 = 2;
    }

    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 13;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl(v381, &a47, &STACK[0x10A0], 80, &dword_1E1C61000, v379, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0x1070], 38, v384, v385);
    _os_crash_msg();
    __break(1u);
  }

  v218 = *(v59 + 91);
  v219 = *(v59 + 94);
  v220 = *(v219 + 424);
  if (v220)
  {
    v222 = *(v219 + 432);
    if (!v222)
    {
      v226 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_244;
    }

    LOBYTE(v219) = *v222;
  }

  else
  {
    v221 = v220 >> 8;
    v222 = (v219 + 425);
    LOBYTE(v219) = v221;
  }

  if (v219)
  {
    v219 = v219;
    v223 = v222[1];
    if (v223)
    {
      v224 = v222 + 2;
      do
      {
        v219 = 31 * v219 + v223;
        v225 = *v224++;
        v223 = v225;
      }

      while (v225);
    }

    v226 = v219 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v226 = 0;
  }

LABEL_244:
  STACK[0x1070] = v226;
  STACK[0x10A0] = *v95;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v95 length];
  re::BufferTable::setBuffer(v218, &STACK[0x1070], &STACK[0x10A0]);
  v227 = LODWORD(STACK[0x10B8]);
  if (v227 != -1)
  {
    (off_1F5D060B0[v227])(&a47, &STACK[0x10A0]);
  }

  v228 = re::MaterialManager::createBufferTableForName(v59, "brdf");
  *(v59 + 89) = v228;
  v229 = *(v59 + 89);
  STACK[0x10A0] = 0x2803BD43311CF958;
  LOBYTE(STACK[0x1070]) = 0;
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v229, &STACK[0x10A0], &STACK[0x1070]);
  if (!*(v229 + 280))
  {
    *(v229 + 280) = 1;
  }

  v230 = re::MaterialManager::createBufferTableForName(v59, "global");
  *(v59 + 90) = v230;
  v231 = *(v59 + 90);
  STACK[0x10A0] = 0x1C6D7B14F4E32CD0;
  LOBYTE(STACK[0x1070]) = 0;
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v231, &STACK[0x10A0], &STACK[0x1070]);
  if (!*(v231 + 280))
  {
    *(v231 + 280) = 1;
  }

  v232 = *(v59 + 90);
  STACK[0x10A0] = 0x526A495CDE0FLL;
  LOBYTE(STACK[0x1070]) = 1;
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v232, &STACK[0x10A0], &STACK[0x1070]);
  if (*(v232 + 280) <= 1u)
  {
    *(v232 + 280) = 2;
  }

  v233 = *(v59 + 90);
  STACK[0x10A0] = 0x478674A22C6B2A1ALL;
  LOBYTE(STACK[0x1070]) = 2;
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v233, &STACK[0x10A0], &STACK[0x1070]);
  if (*(v233 + 280) <= 2u)
  {
    *(v233 + 280) = 3;
  }

  v234 = *(v59 + 90);
  STACK[0x1070] = 0x1C6D62426C554CB0;
  STACK[0x10A0] = *(v59 + 107);
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*(v59 + 107) length];
  re::BufferTable::setBuffer(v234, &STACK[0x1070], &STACK[0x10A0]);
  v235 = LODWORD(STACK[0x10B8]);
  if (v235 != -1)
  {
    (off_1F5D060B0[v235])(&a47, &STACK[0x10A0]);
  }

  v236 = *(v59 + 90);
  STACK[0x1070] = 0x526A495CDE0FLL;
  STACK[0x10A0] = *(v59 + 109);
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*(v59 + 109) length];
  re::BufferTable::setBuffer(v236, &STACK[0x1070], &STACK[0x10A0]);
  v237 = LODWORD(STACK[0x10B8]);
  if (v237 != -1)
  {
    (off_1F5D060B0[v237])(&a47, &STACK[0x10A0]);
  }

  v238 = *(v59 + 90);
  STACK[0x1070] = 0x478674A22C6B2A1ALL;
  STACK[0x10A0] = *(v59 + 110);
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*(v59 + 110) length];
  v239 = re::BufferTable::setBuffer(v238, &STACK[0x1070], &STACK[0x10A0]);
  v240 = LODWORD(STACK[0x10B8]);
  if (v240 != -1)
  {
    v239 = (off_1F5D060B0[v240])(&a47, &STACK[0x10A0]);
  }

  v241 = *(v59 + 82);
  v241 += 72;
  re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::setCapacity(v241, 6uLL);
  ++*(v241 + 24);
  v242 = *(v59 + 82);
  a30 = 0xB3E5B3C154101;
  STACK[0x10A0] = 0;
  re::TextureTable::setTexture(v242, &a30, &STACK[0x10A0]);
  if (STACK[0x10A0])
  {
  }

  v243 = *(v59 + 82);
  a29 = 0x645EADD8982CBD05;
  a30 = 0;
  STACK[0x10A0] = 0;
  re::TextureTable::setTexture(v243, &a29, &STACK[0x10A0]);
  if (STACK[0x10A0])
  {
  }

  v244 = *(v59 + 82);
  a28 = 0x259D0C231F804627;
  a29 = 0;
  STACK[0x10A0] = 0;
  re::TextureTable::setTexture(v244, &a28, &STACK[0x10A0]);
  if (STACK[0x10A0])
  {
  }

  v245 = *(v59 + 82);
  a27 = 0x6D312F38FF9969B1;
  a28 = 0;
  STACK[0x10A0] = 0;
  re::TextureTable::setTexture(v245, &a27, &STACK[0x10A0]);
  if (STACK[0x10A0])
  {
  }

  a27 = 0;
  v246 = MurmurHash3_x64_128("fallback", 8uLL, 0, &STACK[0x10A0]);
  v247 = (STACK[0x10A8] + (STACK[0x10A0] << 6) + (STACK[0x10A0] >> 2) - 0x61C8864680B583E9) ^ STACK[0x10A0];
  if (!*(v59 + 74) || (v248 = *(*(v59 + 75) + 4 * (v247 % *(v59 + 154))), v248 == 0x7FFFFFFF))
  {
LABEL_273:
    v251 = re::globalAllocators(v246);
    v246 = (*(*v251[2] + 32))(v251[2], 112, 8);
    v252 = v246;
    *v246 = 0u;
    *(v246 + 16) = 0u;
    *(v246 + 32) = 0u;
    *(v246 + 48) = 0u;
    *(v246 + 64) = 0u;
    *(v246 + 80) = 0u;
    *(v246 + 96) = 0u;
    if (*(v59 + 74))
    {
      v253 = v247 % *(v59 + 154);
      v254 = *(*(v59 + 75) + 4 * v253);
      if (v254 != 0x7FFFFFFF)
      {
        v255 = *(v59 + 76);
        if (*(v255 + 24 * v254 + 8) == v247)
        {
          goto LABEL_281;
        }

        while (1)
        {
          LODWORD(v254) = *(v255 + 24 * v254) & 0x7FFFFFFF;
          if (v254 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v255 + 24 * v254 + 8) == v247)
          {
            goto LABEL_281;
          }
        }
      }
    }

    else
    {
      LODWORD(v253) = 0;
    }

    v246 = re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v59 + 74, v253, v247);
    *(v246 + 8) = v247;
    *(v246 + 16) = v252;
    ++*(v59 + 158);
  }

  else
  {
    v249 = *(v59 + 76);
    v250 = *(*(v59 + 75) + 4 * (v247 % *(v59 + 154)));
    while (*(v249 + 24 * v250 + 8) != v247)
    {
      v250 = *(v249 + 24 * v250) & 0x7FFFFFFF;
      if (v250 == 0x7FFFFFFF)
      {
        goto LABEL_273;
      }
    }

    v297 = 0x7FFFFFFFLL;
    while (*(v249 + 24 * v248 + 8) != v247)
    {
      v248 = *(v249 + 24 * v248) & 0x7FFFFFFF;
      if (v248 == 0x7FFFFFFF)
      {
        goto LABEL_320;
      }
    }

    v297 = v248;
LABEL_320:
    v252 = *(v249 + 24 * v297 + 16);
  }

LABEL_281:
  *(v59 + 111) = v252;
  v57 = (v59 + 952);
  *(v59 + 119) = 0x1515151515151515;
  *(v59 + 120) = 0x1515151515151515;
  *(v59 + 965) = 0x1515151515151515;
  v60 = (v59 + 912);
  v256 = re::s_constantValueTableLayoutCount;
  v257 = re::DynamicArray<re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>>::setCapacity(v59 + 114, v256);
  ++*(v59 + 234);
  if (re::s_constantValueTableLayoutCount)
  {
    v258 = re::s_constantValueTableLayouts;
    v259 = &re::s_constantValueTableLayouts[re::s_constantValueTableLayoutCount];
    v53 = re::s_materialTableIDMappings;
    do
    {
      v260 = *v258;
      if (*v258)
      {
        v261 = *(v260 + 4);
        *&STACK[0x10D0] = 0u;
        *&STACK[0x10C0] = 0u;
        *&STACK[0x10A0] = 0u;
        *&STACK[0x10B0] = 0u;
        v262 = *(v260 + 4);
        if (v262)
        {
          v263 = v260[3];
          v264 = &v263[24 * v262];
          do
          {
            v265 = *(v263 + 2);
            if (v265)
            {
              v266 = *v265;
              if (*v265)
              {
                v267 = v265[1];
                if (v267)
                {
                  v268 = (v265 + 2);
                  do
                  {
                    v266 = 31 * v266 + v267;
                    v269 = *v268++;
                    v267 = v269;
                  }

                  while (v269);
                }

                v266 &= ~0x8000000000000000;
              }
            }

            else
            {
              v266 = 0x7FFFFFFFFFFFFFFFLL;
            }

            STACK[0x1070] = v266;
            v270 = *v263;
            v271 = *(v263 + 1);
            v263 += 24;
            LOWORD(a47) = v270;
            WORD1(a47) = v271;
            re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::addNew(&STACK[0x10A0], &STACK[0x1070], &a47);
          }

          while (v263 != v264);
        }

        v61 = 0;
        v272 = *v260;
        while (1)
        {
          v273 = strcmp(re::s_materialTableIDMappings[v61], v272);
          if (!v273)
          {
            break;
          }

          if (++v61 == 168)
          {
            v61 = 0;
            goto LABEL_299;
          }
        }

        if (v61 >= 0x15)
        {
          re::internal::assertLog(6, v274, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v61, 21);
          _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v382, v383);
          __break(1u);
LABEL_322:
          *&a48 = 0;
          *&STACK[0x430] = 0u;
          *&STACK[0x420] = 0u;
          *&STACK[0x410] = 0u;
          *&STACK[0x3F0] = 0u;
          *&STACK[0x400] = 0u;
          v298 = MEMORY[0x1E69E9C10];
          v299 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(STACK[0xBF0]) = 136315906;
          *(v60 + 4) = "operator[]";
          LOWORD(STACK[0xBFC]) = 1024;
          if (v299)
          {
            v300 = 3;
          }

          else
          {
            v300 = 2;
          }

          *(v60 + 14) = 468;
          LOWORD(STACK[0xC02]) = 2048;
          *(v60 + 20) = 0;
          LOWORD(STACK[0xC0C]) = 2048;
          *(v60 + 30) = 0;
          _os_log_send_and_compose_impl(v300, &a48, &STACK[0x3F0], 80, &dword_1E1C61000, v298, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v60, 38, v384, v385);
          _os_crash_msg();
          __break(1u);
          goto LABEL_326;
        }

LABEL_299:
        v275 = *(v59 + 116);
        *(v57 + v61) = v275;
        v276 = *(v59 + 115);
        if (v275 >= v276)
        {
          v277 = v275 + 1;
          if (v276 < v275 + 1)
          {
            if (*v60)
            {
              v278 = 2 * v276;
              _ZF = v276 == 0;
              v279 = 8;
              if (!_ZF)
              {
                v279 = v278;
              }

              if (v279 <= v277)
              {
                v280 = v277;
              }

              else
              {
                v280 = v279;
              }

              re::DynamicArray<re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>>::setCapacity(v59 + 114, v280);
            }

            else
            {
              re::DynamicArray<re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>>::setCapacity(v59 + 114, v277);
              ++*(v59 + 234);
            }
          }

          v275 = *(v59 + 116);
        }

        v281 = *(v59 + 118) + (v275 << 6);
        *(v281 + 32) = 0u;
        *(v281 + 48) = 0u;
        *v281 = 0u;
        *(v281 + 16) = 0u;
        *(v281 + 56) = STACK[0x10D8];
        STACK[0x10D8] = 0;
        v282 = *v281;
        *v281 = STACK[0x10A0];
        STACK[0x10A0] = v282;
        v283 = *(v281 + 8);
        *(v281 + 8) = STACK[0x10A8];
        STACK[0x10A8] = v283;
        *(v281 + 16) = STACK[0x10B0];
        STACK[0x10B0] = 0;
        v284 = *(v281 + 40);
        *(v281 + 40) = STACK[0x10C8];
        STACK[0x10C8] = v284;
        v285 = *(v281 + 48);
        *(v281 + 48) = STACK[0x10D0];
        STACK[0x10D0] = v285;
        v286 = *(v281 + 24);
        *(v281 + 24) = STACK[0x10B8];
        STACK[0x10B8] = v286;
        v287 = *(v281 + 32);
        *(v281 + 32) = STACK[0x10C0];
        STACK[0x10C0] = v287;
        ++*(v59 + 116);
        ++*(v59 + 234);
        re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(&STACK[0x10A0]);
      }

      ++v258;
    }

    while (v258 != v259);
  }

  re::MaterialManager::getDefaultVariations(&STACK[0x10A0], *(*(v59 + 112) + 369), 1, 0, *(*(v59 + 112) + 373));
  if ((v59 + 976) != &STACK[0x10A0])
  {
    v288 = *&STACK[0x10B0];
    v289 = *(v59 + 61);
    v290 = *(v59 + 62);
    *(v59 + 61) = *&STACK[0x10A0];
    *(v59 + 62) = v288;
    v291 = *(v59 + 129);
    v292 = STACK[0x10D0];
    *(v59 + 129) = STACK[0x10D8];
    v293 = *(v59 + 128);
    *(v59 + 128) = v292;
    STACK[0x10D8] = v291;
    STACK[0x10D0] = v293;
    *&STACK[0x10A0] = v289;
    *&STACK[0x10B0] = v290;
    v294 = *(v59 + 63);
    *(v59 + 63) = *&STACK[0x10C0];
    *&STACK[0x10C0] = v294;
  }

  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(&STACK[0x10A0]);
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v59 + 136, 0);
  ++*(v59 + 278);
  *(v59 + 283) = 8;
  return re::DataArray<re::MaterialParameterBlock>::allocBlock(v59 + 136);
}

uint64_t re::MaterialManager::createTextureTableForName(re::MaterialManager *this, const char *__s)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = strlen(__s);
  if (v4)
  {
    v4 = MurmurHash3_x64_128(__s, v4, 0, v14);
    v5 = (v14[1] + (v14[0] << 6) + (v14[0] >> 2) - 0x61C8864680B583E9) ^ v14[0];
  }

  else
  {
    v5 = 0;
  }

  v14[0] = v5;
  if (!*(this + 62) || (v6 = *(*(this + 63) + 4 * (v5 % *(this + 130))), v6 == 0x7FFFFFFF))
  {
LABEL_9:
    v9 = re::globalAllocators(v4);
    v10 = (*(*v9[2] + 32))(v9[2], 112, 8);
    *(v10 + 8) = 0u;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0u;
    *(v10 + 72) = 0u;
    *(v10 + 88) = 0u;
    *(v10 + 104) = 0;
    *v10 = &unk_1F5D06170;
    v13 = v10;
    re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(this + 496, v14, &v13);
    return v13;
  }

  else
  {
    v7 = *(this + 64);
    v8 = *(*(this + 63) + 4 * (v5 % *(this + 130)));
    while (*(v7 + 24 * v8 + 8) != v5)
    {
      v8 = *(v7 + 24 * v8) & 0x7FFFFFFF;
      if (v8 == 0x7FFFFFFF)
      {
        goto LABEL_9;
      }
    }

    v12 = 0x7FFFFFFFLL;
    while (*(v7 + 24 * v6 + 8) != v5)
    {
      v6 = *(v7 + 24 * v6) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        return *(v7 + 24 * v12 + 16);
      }
    }

    v12 = v6;
    return *(v7 + 24 * v12 + 16);
  }
}

uint64_t re::MaterialManager::createBufferTableForName(re::MaterialManager *this, const char *__s)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = strlen(__s);
  if (v4)
  {
    v4 = MurmurHash3_x64_128(__s, v4, 0, v14);
    v5 = (v14[1] + (v14[0] << 6) + (v14[0] >> 2) - 0x61C8864680B583E9) ^ v14[0];
  }

  else
  {
    v5 = 0;
  }

  v14[0] = v5;
  if (!*(this + 68) || (v6 = *(*(this + 69) + 4 * (v5 % *(this + 142))), v6 == 0x7FFFFFFF))
  {
LABEL_9:
    v9 = re::globalAllocators(v4);
    v10 = (*(*v9[2] + 32))(v9[2], 288, 8);
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 80) = 0u;
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
    *(v10 + 128) = 0u;
    *(v10 + 144) = 0u;
    *(v10 + 160) = 0u;
    *(v10 + 176) = 0u;
    *(v10 + 192) = 0u;
    *(v10 + 208) = 0u;
    *(v10 + 224) = 0u;
    *(v10 + 240) = 0u;
    *(v10 + 256) = 0u;
    *(v10 + 272) = 0u;
    *(v10 + 160) = 1;
    *(v10 + 176) = 0;
    *(v10 + 184) = 0;
    *(v10 + 168) = 0;
    *(v10 + 192) = 0;
    *(v10 + 208) = 0;
    *(v10 + 216) = 0;
    *(v10 + 200) = 0;
    *(v10 + 224) = 0;
    *(v10 + 232) = 0u;
    *(v10 + 248) = 0u;
    *(v10 + 264) = 0;
    v13 = v10;
    re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(this + 544, v14, &v13);
  }

  else
  {
    v7 = *(this + 70);
    v8 = *(*(this + 69) + 4 * (v5 % *(this + 142)));
    while (*(v7 + 24 * v8 + 8) != v5)
    {
      v8 = *(v7 + 24 * v8) & 0x7FFFFFFF;
      if (v8 == 0x7FFFFFFF)
      {
        goto LABEL_9;
      }
    }

    v12 = 0x7FFFFFFFLL;
    while (*(v7 + 24 * v6 + 8) != v5)
    {
      v6 = *(v7 + 24 * v6) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        return *(v7 + 24 * v12 + 16);
      }
    }

    v12 = v6;
    return *(v7 + 24 * v12 + 16);
  }

  return v10;
}

double re::MaterialManager::getDefaultVariations@<D0>(uint64_t *__return_ptr a1@<X8>, re::MaterialManager *this@<X0>, int a3@<W1>, int a4@<W2>, unsigned int a5@<W3>)
{
  v8 = this;
  v280 = *MEMORY[0x1E69E9840];
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v241[2] = 32;
  v241[0] = v10;
  *&v11 = -1;
  *(&v11 + 1) = -1;
  *v10 = v11;
  *(v10 + 1) = v11;
  v241[1] = v10 + 32;
  v243 = 0;
  v244 = 0;
  v242 = xmmword_1E30B4E20;
  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 1179701;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v13 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v13 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 6750237;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 5uLL);
  v15 = 0;
  LODWORD(v278) = v278 + 1;
  do
  {
    *&v268 = v15;
    re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
    ++v15;
  }

  while (v15 != 5);
  BYTE9(v279) = 1;
  *&v279 = 4;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v16 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v16 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 6684701;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 4uLL);
  v18 = 0;
  LODWORD(v278) = v278 + 1;
  do
  {
    *&v268 = v18;
    re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
    ++v18;
  }

  while (v18 != 4);
  BYTE9(v279) = 1;
  *&v279 = 3;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v19 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v19 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 786485;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v21 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v21 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 6815797;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v23 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v23 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 65589;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v25 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v25 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 2293813;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v27 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v27 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 3735605;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 1uLL);
  LODWORD(v278) = v278 + 1;
  v29 = v8;
  *&v268 = v8;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  BYTE9(v279) = 1;
  *&v279 = v8;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v30 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v30 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 6488117;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  BYTE9(v279) = 1;
  *&v279 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v32 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v32 = (*(*v272 + 40))(v272, v273);
  }

  if (a3)
  {
    v277 = 0uLL;
    LODWORD(v278) = 0;
    WORD4(v279) = 1;
    *(&v278 + 1) = 0;
    *&v279 = 0;
    LODWORD(v276) = 5636149;
    re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
    LODWORD(v278) = v278 + 1;
    *&v268 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
    *&v268 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
    BYTE9(v279) = 1;
    *&v279 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
    if (*(&v276 + 1) && *(&v278 + 1))
    {
      (*(**(&v276 + 1) + 40))(*(&v276 + 1));
    }

    v32 = v272;
    if (v272 && (BYTE8(v272) & 1) != 0)
    {
      v32 = (*(*v272 + 40))(v272, v273);
    }
  }

  if (a4)
  {
    v277 = 0uLL;
    LODWORD(v278) = 0;
    WORD4(v279) = 1;
    *(&v278 + 1) = 0;
    *&v279 = 0;
    LODWORD(v276) = 7209013;
    re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
    LODWORD(v278) = v278 + 1;
    *&v268 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
    *&v268 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
    BYTE9(v279) = 1;
    *&v279 = 0;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
    if (*(&v276 + 1) && *(&v278 + 1))
    {
      (*(**(&v276 + 1) + 40))(*(&v276 + 1));
    }

    v32 = v272;
    if (v272 && (BYTE8(v272) & 1) != 0)
    {
      v32 = (*(*v272 + 40))(v272, v273);
    }
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 10682421;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  BYTE9(v279) = 1;
  *&v279 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v36 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v36 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 10747957;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  BYTE9(v279) = 1;
  *&v279 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v38 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v38 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 11665461;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v40 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v40 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 11862069;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v42 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v42 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 8323101;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 5uLL);
  v44 = 0;
  LODWORD(v278) = v278 + 1;
  do
  {
    *&v268 = v44;
    re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
    ++v44;
  }

  while (v44 != 5);
  BYTE9(v279) = 1;
  *&v279 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v45 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v45 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 4522037;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v47 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v47 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 7012381;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 4uLL);
  v49 = 0;
  LODWORD(v278) = v278 + 1;
  do
  {
    *&v268 = v49;
    re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
    ++v49;
  }

  while (v49 != 4);
  BYTE9(v279) = 1;
  *&v279 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v50 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v50 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 9044021;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  BYTE9(v279) = 1;
  *&v279 = a5;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v52 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v52 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 9699381;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v54 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v54 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 11272245;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  BYTE9(v279) = 1;
  *&v279 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v56 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v56 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 4128821;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v58 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v58 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 9240629;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v60 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v60 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 10551349;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v276 + 8), &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    (*(*v272 + 40))(v272, v273);
  }

  MurmurHash3_x64_128("OpaqueCommon", 0xCuLL, 0, &v276);
  *&v276 = (*(&v276 + 1) + (v276 << 6) + (v276 >> 2) - 0x61C8864680B583E9) ^ v276;
  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(a1, &v276, v241);
  v278 = 0u;
  v279 = 0u;
  if (a5)
  {
    v63 = 16;
  }

  else
  {
    v63 = 0;
  }

  v276 = 0uLL;
  v277 = 0uLL;
  if (a5)
  {
    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1310773;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v66 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v66 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 131125;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v68 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v68 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1376309;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v70 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v70 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1441845;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v72 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v72 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1507381;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v74 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v74 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1572917;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v76 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v76 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1638453;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v78 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v78 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1966133;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v80 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v80 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1703989;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v82 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v82 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 9175093;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v84 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v84 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 589877;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v86 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v86 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 2031669;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v88 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v88 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 2162741;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v90 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v90 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 3276853;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v92 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v92 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1769525;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v94 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v94 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1835037;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 3uLL);
    v96 = 0;
    LODWORD(v274) = v274 + 1;
    do
    {
      *&v264 = v96;
      re::DynamicArray<re::TransitionCondition *>::add((&v272 + 8), &v264);
      ++v96;
    }

    while (v96 != 3);
    BYTE9(v275) = 1;
    *&v275 = 2;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      (*(*v268 + 40))();
    }
  }

  MurmurHash3_x64_128("TextureCommon", 0xDuLL, 0, &v272);
  *&v272 = (*(&v272 + 1) - 0x61C8864680B583E9 + (v272 << 6) + (v272 >> 2)) ^ v272;
  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(a1, &v272, &v276);
  v274 = 0u;
  v275 = 0u;
  v272 = 0u;
  v273 = 0u;
  *&v273 = 16;
  *&v272 = v98;
  *&v99 = -1;
  *(&v99 + 1) = -1;
  *v98 = v99;
  *(&v272 + 1) = v272 + 16;
  *(&v273 + 1) = 0;
  v274 = v273;
  *&v275 = 0;
  v269 = 0uLL;
  LODWORD(v270) = 0;
  *(&v270 + 1) = 0;
  *&v271 = 0;
  LODWORD(v268) = 2293813;
  WORD4(v271) = 1;
  re::DynamicArray<float *>::setCapacity(&v268 + 1, 2uLL);
  LODWORD(v270) = v270 + 1;
  *&v260 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v268 + 8), &v260);
  *&v260 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v268 + 8), &v260);
  BYTE9(v271) = 1;
  *&v271 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v272, &v264, &v268);
  if (*(&v268 + 1) && *(&v270 + 1))
  {
    (*(**(&v268 + 1) + 40))();
  }

  v101 = v264;
  if (v264 && (BYTE8(v264) & 1) != 0)
  {
    v101 = (*(*v264 + 40))();
  }

  v269 = 0uLL;
  LODWORD(v270) = 0;
  *(&v270 + 1) = 0;
  *&v271 = 0;
  LODWORD(v268) = 8323101;
  WORD4(v271) = 1;
  re::DynamicArray<float *>::setCapacity(&v268 + 1, 5uLL);
  v103 = 0;
  LODWORD(v270) = v270 + 1;
  do
  {
    *&v260 = v103;
    re::DynamicArray<re::TransitionCondition *>::add((&v268 + 8), &v260);
    ++v103;
  }

  while (v103 != 5);
  BYTE9(v271) = 1;
  *&v271 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v272, &v264, &v268);
  if (*(&v268 + 1) && *(&v270 + 1))
  {
    (*(**(&v268 + 1) + 40))();
  }

  v104 = v264;
  if (v264 && (BYTE8(v264) & 1) != 0)
  {
    v104 = (*(*v264 + 40))();
  }

  v269 = 0uLL;
  LODWORD(v270) = 0;
  *(&v270 + 1) = 0;
  *&v271 = 0;
  LODWORD(v268) = 65589;
  WORD4(v271) = 1;
  re::DynamicArray<float *>::setCapacity(&v268 + 1, 2uLL);
  LODWORD(v270) = v270 + 1;
  *&v260 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v268 + 8), &v260);
  *&v260 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v268 + 8), &v260);
  BYTE9(v271) = 1;
  *&v271 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v272, &v264, &v268);
  if (*(&v268 + 1) && *(&v270 + 1))
  {
    (*(**(&v268 + 1) + 40))();
  }

  if (v264 && (BYTE8(v264) & 1) != 0)
  {
    (*(*v264 + 40))();
  }

  MurmurHash3_x64_128("ShadowCommon", 0xCuLL, 0, &v268);
  *&v268 = (*(&v268 + 1) - 0x61C8864680B583E9 + (v268 << 6) + (v268 >> 2)) ^ v268;
  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(a1, &v268, &v272);
  v270 = 0u;
  v271 = 0u;
  v268 = 0u;
  v269 = 0u;
  *&v269 = 32;
  *&v268 = v107;
  *&v108 = -1;
  *(&v108 + 1) = -1;
  *v107 = v108;
  v109 = v268;
  *(v268 + 16) = v108;
  *(&v268 + 1) = v109 + 32;
  *(&v269 + 1) = 0;
  v270 = v269;
  *&v271 = 0;
  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 1179701;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v111 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v111 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 6750237;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 5uLL);
  v113 = 0;
  LODWORD(v266) = v266 + 1;
  do
  {
    v253 = v113;
    re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
    ++v113;
  }

  while (v113 != 5);
  BYTE9(v267) = 1;
  *&v267 = 4;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v114 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v114 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 6684701;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 4uLL);
  v116 = 0;
  LODWORD(v266) = v266 + 1;
  do
  {
    v253 = v116;
    re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
    ++v116;
  }

  while (v116 != 4);
  BYTE9(v267) = 1;
  *&v267 = 3;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v117 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v117 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 786485;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v119 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v119 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 4522037;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v121 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v121 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 6815797;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v123 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v123 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 65589;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v125 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v125 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 2293813;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v127 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v127 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 3604533;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 1uLL);
  LODWORD(v266) = v266 + 1;
  v253 = v29;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = v29;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v129 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v129 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 3735605;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 1uLL);
  LODWORD(v266) = v266 + 1;
  v253 = v29;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = v29;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v131 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v131 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 6488117;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v133 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v133 = (*(*v260 + 40))();
  }

  if (a3)
  {
    v265 = 0uLL;
    LODWORD(v266) = 0;
    *(&v266 + 1) = 0;
    *&v267 = 0;
    LODWORD(v264) = 5636149;
    WORD4(v267) = 1;
    re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
    LODWORD(v266) = v266 + 1;
    v253 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
    v253 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
    BYTE9(v267) = 1;
    *&v267 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
    if (*(&v264 + 1) && *(&v266 + 1))
    {
      (*(**(&v264 + 1) + 40))();
    }

    v133 = v260;
    if (v260 && (BYTE8(v260) & 1) != 0)
    {
      v133 = (*(*v260 + 40))();
    }
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 8323101;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 5uLL);
  v136 = 0;
  LODWORD(v266) = v266 + 1;
  do
  {
    v253 = v136;
    re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
    ++v136;
  }

  while (v136 != 5);
  BYTE9(v267) = 1;
  *&v267 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v137 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v137 = (*(*v260 + 40))();
  }

  if (a4)
  {
    v265 = 0uLL;
    LODWORD(v266) = 0;
    *(&v266 + 1) = 0;
    *&v267 = 0;
    LODWORD(v264) = 5701685;
    WORD4(v267) = 1;
    re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
    LODWORD(v266) = v266 + 1;
    v253 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
    v253 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
    BYTE9(v267) = 1;
    *&v267 = 0;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
    if (*(&v264 + 1) && *(&v266 + 1))
    {
      (*(**(&v264 + 1) + 40))();
    }

    v139 = v260;
    if (v260 && (BYTE8(v260) & 1) != 0)
    {
      v139 = (*(*v260 + 40))();
    }

    v265 = 0uLL;
    LODWORD(v266) = 0;
    *(&v266 + 1) = 0;
    *&v267 = 0;
    LODWORD(v264) = 6553653;
    WORD4(v267) = 1;
    re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
    LODWORD(v266) = v266 + 1;
    v253 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
    v253 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
    BYTE9(v267) = 1;
    *&v267 = 0;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
    if (*(&v264 + 1) && *(&v266 + 1))
    {
      (*(**(&v264 + 1) + 40))();
    }

    v141 = v260;
    if (v260 && (BYTE8(v260) & 1) != 0)
    {
      v141 = (*(*v260 + 40))();
    }

    v265 = 0uLL;
    LODWORD(v266) = 0;
    *(&v266 + 1) = 0;
    *&v267 = 0;
    LODWORD(v264) = 7209013;
    WORD4(v267) = 1;
    re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
    LODWORD(v266) = v266 + 1;
    v253 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
    v253 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
    BYTE9(v267) = 1;
    *&v267 = 0;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
    if (*(&v264 + 1) && *(&v266 + 1))
    {
      (*(**(&v264 + 1) + 40))();
    }

    v143 = v260;
    if (v260 && (BYTE8(v260) & 1) != 0)
    {
      v143 = (*(*v260 + 40))();
    }

    v265 = 0uLL;
    LODWORD(v266) = 0;
    *(&v266 + 1) = 0;
    *&v267 = 0;
    LODWORD(v264) = 11927605;
    WORD4(v267) = 1;
    re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
    LODWORD(v266) = v266 + 1;
    v253 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
    v253 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
    BYTE9(v267) = 1;
    *&v267 = 0;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
    if (*(&v264 + 1) && *(&v266 + 1))
    {
      (*(**(&v264 + 1) + 40))();
    }

    v137 = v260;
    if (v260 && (BYTE8(v260) & 1) != 0)
    {
      v137 = (*(*v260 + 40))();
    }
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 10682421;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v146 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v146 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 10747957;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v148 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v148 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 11665461;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v150 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v150 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 11862069;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v152 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v152 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 7012381;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 4uLL);
  v154 = 0;
  LODWORD(v266) = v266 + 1;
  do
  {
    v253 = v154;
    re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
    ++v154;
  }

  while (v154 != 4);
  BYTE9(v267) = 1;
  *&v267 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v155 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v155 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 9044021;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = a5;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v157 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v157 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 9699381;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v159 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v159 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 11272245;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v161 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v161 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 4128821;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v163 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v163 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 9240629;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v165 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v165 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 10551349;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v264 + 8), &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    (*(*v260 + 40))();
  }

  MurmurHash3_x64_128("TransparentCommon", 0x11uLL, 0, &v264);
  *&v264 = (*(&v264 + 1) - 0x61C8864680B583E9 + (v264 << 6) + (v264 >> 2)) ^ v264;
  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(a1, &v264, &v268);
  v266 = 0u;
  v267 = 0u;
  v264 = 0u;
  v265 = 0u;
  *&v265 = 32;
  *&v264 = v168;
  *&v169 = -1;
  *(&v169 + 1) = -1;
  *v168 = v169;
  v170 = v264;
  *(v264 + 16) = v169;
  *(&v264 + 1) = v170 + 32;
  *(&v265 + 1) = 0;
  v266 = v265;
  *&v267 = 0;
  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 11272245;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  BYTE9(v263) = 1;
  *&v263 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v172 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v172 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 2293813;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  BYTE9(v263) = 1;
  *&v263 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v174 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v174 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 6488117;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  BYTE9(v263) = 1;
  *&v263 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v176 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v176 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 8323101;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 5uLL);
  v178 = 0;
  LODWORD(v262) = v262 + 1;
  do
  {
    v247 = v178;
    re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
    ++v178;
  }

  while (v178 != 5);
  BYTE9(v263) = 1;
  *&v263 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v179 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v179 = (*(*v253 + 40))();
  }

  if (a3)
  {
    v261 = 0uLL;
    LODWORD(v262) = 0;
    *(&v262 + 1) = 0;
    *&v263 = 0;
    LODWORD(v260) = 5636149;
    WORD4(v263) = 1;
    re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
    LODWORD(v262) = v262 + 1;
    v247 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
    v247 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
    BYTE9(v263) = 1;
    *&v263 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
    if (*(&v260 + 1) && *(&v262 + 1))
    {
      (*(**(&v260 + 1) + 40))();
    }

    v179 = v253;
    if (v253 && (v254 & 1) != 0)
    {
      v179 = (*(*v253 + 40))();
    }
  }

  if (a4)
  {
    v261 = 0uLL;
    LODWORD(v262) = 0;
    *(&v262 + 1) = 0;
    *&v263 = 0;
    LODWORD(v260) = 5701685;
    WORD4(v263) = 1;
    re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
    LODWORD(v262) = v262 + 1;
    v247 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
    v247 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
    BYTE9(v263) = 1;
    *&v263 = 0;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
    if (*(&v260 + 1) && *(&v262 + 1))
    {
      (*(**(&v260 + 1) + 40))();
    }

    v182 = v253;
    if (v253 && (v254 & 1) != 0)
    {
      v182 = (*(*v253 + 40))();
    }

    v261 = 0uLL;
    LODWORD(v262) = 0;
    *(&v262 + 1) = 0;
    *&v263 = 0;
    LODWORD(v260) = 6553653;
    WORD4(v263) = 1;
    re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
    LODWORD(v262) = v262 + 1;
    v247 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
    v247 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
    BYTE9(v263) = 1;
    *&v263 = 0;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
    if (*(&v260 + 1) && *(&v262 + 1))
    {
      (*(**(&v260 + 1) + 40))();
    }

    v184 = v253;
    if (v253 && (v254 & 1) != 0)
    {
      v184 = (*(*v253 + 40))();
    }

    v261 = 0uLL;
    LODWORD(v262) = 0;
    *(&v262 + 1) = 0;
    *&v263 = 0;
    LODWORD(v260) = 7209013;
    WORD4(v263) = 1;
    re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
    LODWORD(v262) = v262 + 1;
    v247 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
    v247 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
    BYTE9(v263) = 1;
    *&v263 = 0;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
    if (*(&v260 + 1) && *(&v262 + 1))
    {
      (*(**(&v260 + 1) + 40))();
    }

    v186 = v253;
    if (v253 && (v254 & 1) != 0)
    {
      v186 = (*(*v253 + 40))();
    }

    v261 = 0uLL;
    LODWORD(v262) = 0;
    *(&v262 + 1) = 0;
    *&v263 = 0;
    LODWORD(v260) = 11927605;
    WORD4(v263) = 1;
    re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
    LODWORD(v262) = v262 + 1;
    v247 = 0;
    re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
    v247 = 1;
    re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
    BYTE9(v263) = 1;
    *&v263 = 0;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
    if (*(&v260 + 1) && *(&v262 + 1))
    {
      (*(**(&v260 + 1) + 40))();
    }

    v179 = v253;
    if (v253 && (v254 & 1) != 0)
    {
      v179 = (*(*v253 + 40))();
    }
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 10682421;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  BYTE9(v263) = 1;
  *&v263 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v189 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v189 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 10747957;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  BYTE9(v263) = 1;
  *&v263 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v191 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v191 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 11665461;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  BYTE9(v263) = 1;
  *&v263 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v193 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v193 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 11862069;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  BYTE9(v263) = 1;
  *&v263 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v195 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v195 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 7012381;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 4uLL);
  v197 = 0;
  LODWORD(v262) = v262 + 1;
  do
  {
    v247 = v197;
    re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
    ++v197;
  }

  while (v197 != 4);
  BYTE9(v263) = 1;
  *&v263 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v198 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v198 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 65589;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  BYTE9(v263) = 1;
  *&v263 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v200 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v200 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 6750237;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 5uLL);
  v202 = 0;
  LODWORD(v262) = v262 + 1;
  do
  {
    v247 = v202;
    re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
    ++v202;
  }

  while (v202 != 5);
  BYTE9(v263) = 1;
  *&v263 = 4;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v203 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v203 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 6684701;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 4uLL);
  v205 = 0;
  LODWORD(v262) = v262 + 1;
  do
  {
    v247 = v205;
    re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
    ++v205;
  }

  while (v205 != 4);
  BYTE9(v263) = 1;
  *&v263 = 3;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v206 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v206 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 4128821;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  BYTE9(v263) = 1;
  *&v263 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v208 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v208 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 9240629;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  BYTE9(v263) = 1;
  *&v263 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v210 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v210 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 3735605;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 1uLL);
  LODWORD(v262) = v262 + 1;
  v247 = v29;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  BYTE9(v263) = 1;
  *&v263 = v29;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v212 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v212 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 9699381;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  BYTE9(v263) = 1;
  *&v263 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v214 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v214 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 10551349;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add((&v260 + 8), &v247);
  BYTE9(v263) = 1;
  *&v263 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  if (v253 && (v254 & 1) != 0)
  {
    (*(*v253 + 40))();
  }

  MurmurHash3_x64_128("UnlitCommon", 0xBuLL, 0, &v260);
  *&v260 = (*(&v260 + 1) - 0x61C8864680B583E9 + (v260 << 6) + (v260 >> 2)) ^ v260;
  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(a1, &v260, &v264);
  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  *&v261 = 16;
  *&v217 = -1;
  *(&v217 + 1) = -1;
  *v260 = v217;
  *(&v260 + 1) = v260 + 16;
  *(&v261 + 1) = 0;
  v262 = v261;
  *&v263 = 0;
  MurmurHash3_x64_128("ShadowReceiverCommon", 0x14uLL, 0, &v253);
  v253 ^= &v254[8 * v253 - 0xC3910C8D016B07DLL] + (v253 >> 2) - 1;
  if (re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find(a1, &v253) == -1)
  {
    re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(a1, &v253, &v260);
  }

  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v260);
  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  *&v261 = 16;
  *&v260 = v219;
  *&v220 = -1;
  *(&v220 + 1) = -1;
  *v219 = v220;
  *(&v260 + 1) = v260 + 16;
  *(&v261 + 1) = 0;
  v262 = v261;
  *&v263 = 0;
  v255 = 0;
  *&v256 = 0;
  DWORD2(v256) = 0;
  v257 = 0;
  v258 = 0;
  LODWORD(v253) = 11272245;
  LOWORD(v259) = 1;
  re::DynamicArray<float *>::setCapacity(&v254, 2uLL);
  ++DWORD2(v256);
  v239 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v254, &v239);
  v239 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v254, &v239);
  BYTE1(v259) = 1;
  v258 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v260, &v247, &v253);
  if (v254 && v257)
  {
    (*(*v254 + 40))();
  }

  v222 = v247;
  if (v247 && (v248[0] & 1) != 0)
  {
    v222 = (*(*v247 + 40))();
  }

  v255 = 0;
  *&v256 = 0;
  DWORD2(v256) = 0;
  v257 = 0;
  v258 = 0;
  LODWORD(v253) = 1179701;
  LOWORD(v259) = 1;
  re::DynamicArray<float *>::setCapacity(&v254, 2uLL);
  ++DWORD2(v256);
  v239 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v254, &v239);
  v239 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v254, &v239);
  BYTE1(v259) = 1;
  v258 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v260, &v247, &v253);
  if (v254 && v257)
  {
    (*(*v254 + 40))();
  }

  v224 = v247;
  if (v247 && (v248[0] & 1) != 0)
  {
    v224 = (*(*v247 + 40))();
  }

  v255 = 0;
  *&v256 = 0;
  DWORD2(v256) = 0;
  v257 = 0;
  v258 = 0;
  LODWORD(v253) = 6750237;
  LOWORD(v259) = 1;
  re::DynamicArray<float *>::setCapacity(&v254, 5uLL);
  v226 = 0;
  ++DWORD2(v256);
  do
  {
    v239 = v226;
    re::DynamicArray<re::TransitionCondition *>::add(&v254, &v239);
    ++v226;
  }

  while (v226 != 5);
  BYTE1(v259) = 1;
  v258 = 4;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v260, &v247, &v253);
  if (v254 && v257)
  {
    (*(*v254 + 40))();
  }

  v227 = v247;
  if (v247 && (v248[0] & 1) != 0)
  {
    v227 = (*(*v247 + 40))();
  }

  v255 = 0;
  *&v256 = 0;
  DWORD2(v256) = 0;
  v257 = 0;
  v258 = 0;
  LODWORD(v253) = 6684701;
  LOWORD(v259) = 1;
  re::DynamicArray<float *>::setCapacity(&v254, 4uLL);
  v229 = 0;
  ++DWORD2(v256);
  do
  {
    v239 = v229;
    re::DynamicArray<re::TransitionCondition *>::add(&v254, &v239);
    ++v229;
  }

  while (v229 != 4);
  BYTE1(v259) = 1;
  v258 = 3;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v260, &v247, &v253);
  if (v254 && v257)
  {
    (*(*v254 + 40))();
  }

  v230 = v247;
  if (v247 && (v248[0] & 1) != 0)
  {
    v230 = (*(*v247 + 40))();
  }

  v255 = 0;
  *&v256 = 0;
  DWORD2(v256) = 0;
  v257 = 0;
  v258 = 0;
  LODWORD(v253) = 6815797;
  LOWORD(v259) = 1;
  re::DynamicArray<float *>::setCapacity(&v254, 2uLL);
  ++DWORD2(v256);
  v239 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v254, &v239);
  v239 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v254, &v239);
  BYTE1(v259) = 1;
  v258 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v260, &v247, &v253);
  if (v254 && v257)
  {
    (*(*v254 + 40))();
  }

  v232 = v247;
  if (v247 && (v248[0] & 1) != 0)
  {
    v232 = (*(*v247 + 40))();
  }

  v255 = 0;
  *&v256 = 0;
  DWORD2(v256) = 0;
  v257 = 0;
  v258 = 0;
  LODWORD(v253) = 3604533;
  LOWORD(v259) = 1;
  re::DynamicArray<float *>::setCapacity(&v254, 1uLL);
  ++DWORD2(v256);
  v239 = v29;
  re::DynamicArray<re::TransitionCondition *>::add(&v254, &v239);
  BYTE1(v259) = 1;
  v258 = v29;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v260, &v247, &v253);
  if (v254 && v257)
  {
    (*(*v254 + 40))();
  }

  if (v247 && (v248[0] & 1) != 0)
  {
    (*(*v247 + 40))();
  }

  MurmurHash3_x64_128("ARBackwardsCompatibility", 0x18uLL, 0, &v253);
  v253 ^= &v254[8 * v253 - 0xC3910C8D016B07DLL] + (v253 >> 2) - 1;
  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(a1, &v253, &v260);
  v255 = 16;
  v253 = v235;
  *&v236 = -1;
  *(&v236 + 1) = -1;
  *v235 = v236;
  v257 = 0;
  v258 = 0;
  v254 = (v235 + 1);
  v256 = xmmword_1E30B4E30;
  v248[1] = 0;
  v248[2] = 0;
  v249 = 0;
  v250 = 0;
  v251 = 0;
  LODWORD(v247) = 786485;
  v252 = 1;
  re::DynamicArray<float *>::setCapacity(v248, 2uLL);
  ++v249;
  v246 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(v248, &v246);
  v246 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(v248, &v246);
  HIBYTE(v252) = 1;
  v251 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v253, &v239, &v247);
  if (v248[0] && v250)
  {
    (*(*v248[0] + 40))();
  }

  if (v239 && (v240 & 1) != 0)
  {
    (*(*v239 + 40))();
  }

  MurmurHash3_x64_128("DynamicLightingBackwardsCompatibility", 0x25uLL, 0, &v247);
  v247 ^= v248[0] - 0x61C8864680B583E9 + (v247 << 6) + (v247 >> 2);
  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(a1, &v247, &v253);
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v253);
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v260);
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v264);
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v268);
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v272);
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v276);
  return re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v241);
}

uint64_t re::MaterialManager::addDefaultVariationFallbackValues(uint64_t this, re::TechniqueDefinitionBuilder *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 57);
  if (v2)
  {
    v4 = this;
    v5 = *(a2 + 59);
    v6 = &v5[v2];
    do
    {
      v22 = *v5;
      this = re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find((v4 + 976), &v22);
      v7 = *(v4 + 984) + 72 * this;
      v8 = (v7 + 8);
      v19 = v7 + 8;
      v20 = 0;
      v9 = *(v7 + 24);
      if (v9 >= 0x10)
      {
        v10 = 0;
        v11 = *v8;
        v12 = v9 >> 4;
        while (1)
        {
          v13 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v11), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v20 = v13 ^ 0xFFFFLL;
          if (v13 != 0xFFFFLL)
          {
            break;
          }

          v10 -= 16;
          ++v11;
          if (!--v12)
          {
            goto LABEL_13;
          }
        }

        v14 = __clz(__rbit64(v13 ^ 0xFFFFLL));
        v15 = v14 - v10;
        v21 = v14 - v10;
        if (v14 + 1 != v10)
        {
          do
          {
            v16 = (*(v19 + 8) + 96 * v15);
            memset(v23, 0, sizeof(v23));
            re::DynamicString::setCapacity(v23, 0);
            v28 = 0u;
            v27 = 0u;
            v26 = 0u;
            v25 = 0u;
            re::DynamicString::operator=(v23, v16);
            v24 = v16[8];
            TypeSize = re::mtl::getTypeSize(v24);
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            memcpy(&v25, v16 + 20, TypeSize);
            v18 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a2 + 584, v16, v23);
            if (*&v23[0])
            {
              if (BYTE8(v23[0]))
              {
                (*(**&v23[0] + 40))(v18);
              }
            }

            this = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v19);
            v15 = v21;
          }

          while (v21 != -1);
        }
      }

LABEL_13:
      ++v5;
    }

    while (v5 != v6);
  }

  return this;
}

int64x2_t re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find(a1, a2) == -1)
  {
    if (!a1[7])
    {
    }

    v8 = a1[4];
    if (!v8 || (v9 = a1[2], v9 > 8 * v8))
    {
      re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(a1);
      v9 = a1[2];
    }

    v10 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
    v11 = (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31);
    v12 = v9 >> 4;
    v13 = *a1;
    v14 = v11 % v12;
    while (1)
    {
      v15 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v13 + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
      if (v15 < 0x40)
      {
        break;
      }

      if (v14 + 1 == v12)
      {
        v14 = 0;
      }

      else
      {
        ++v14;
      }

      if (v14 == v11 % v12)
      {
        re::internal::assertLog(4, v6, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
        _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
        __break(1u);
        break;
      }
    }

    v16 = v13 + 16 * v14;
    v17 = *(v16 + v15);
    *(v16 + v15) = v11 & 0x7F;
    v18 = 9 * (v15 + 16 * v14);
    v19 = (a1[1] + 72 * (v15 + 16 * v14));
    *v19 = *a2;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::HashBrown((v19 + 1), a3);
    if (v17 == 255)
    {
      v20 = -1;
    }

    else
    {
      v20 = 0;
    }

    v21.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v21.i64[1] = v20;
    result = vaddq_s64(*(a1 + 3), v21);
    *(a1 + 3) = result;
    v22 = *(a1[1] + 8 * v18);
    v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) >> 27));
    a1[5] ^= (v23 >> 31) ^ v23;
  }

  return result;
}

uint64_t re::MaterialManager::createPerSceneBufferTableForName(re::MaterialManager *this, const char *__s, uint64_t a3)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = strlen(__s);
  if (v6)
  {
    v6 = MurmurHash3_x64_128(__s, v6, 0, v17);
    v7 = (v17[1] - 0x61C8864680B583E9 + (v17[0] << 6) + (v17[0] >> 2)) ^ v17[0];
  }

  else
  {
    v7 = 0;
  }

  v8 = (a3 - 0x61C8864680B583E9 + (v7 << 6) + (v7 >> 2)) ^ v7;
  v17[0] = v8;
  if (!*(this + 68) || (v9 = *(*(this + 69) + 4 * (v8 % *(this + 142))), v9 == 0x7FFFFFFF))
  {
LABEL_9:
    v12 = re::globalAllocators(v6);
    v13 = (*(*v12[2] + 32))(v12[2], 288, 8);
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0u;
    *(v13 + 128) = 0u;
    *(v13 + 144) = 0u;
    *(v13 + 160) = 0u;
    *(v13 + 176) = 0u;
    *(v13 + 192) = 0u;
    *(v13 + 208) = 0u;
    *(v13 + 224) = 0u;
    *(v13 + 240) = 0u;
    *(v13 + 256) = 0u;
    *(v13 + 272) = 0u;
    *(v13 + 160) = 1;
    *(v13 + 176) = 0;
    *(v13 + 184) = 0;
    *(v13 + 168) = 0;
    *(v13 + 192) = 0;
    *(v13 + 208) = 0;
    *(v13 + 216) = 0;
    *(v13 + 200) = 0;
    *(v13 + 224) = 0;
    *(v13 + 232) = 0u;
    *(v13 + 248) = 0u;
    *(v13 + 264) = 0;
    v16 = v13;
    re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(this + 544, v17, &v16);
  }

  else
  {
    v10 = *(this + 70);
    v11 = *(*(this + 69) + 4 * (v8 % *(this + 142)));
    while (*(v10 + 24 * v11 + 8) != v8)
    {
      v11 = *(v10 + 24 * v11) & 0x7FFFFFFF;
      if (v11 == 0x7FFFFFFF)
      {
        goto LABEL_9;
      }
    }

    v15 = 0x7FFFFFFFLL;
    while (*(v10 + 24 * v9 + 8) != v8)
    {
      v9 = *(v10 + 24 * v9) & 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        return *(v10 + 24 * v15 + 16);
      }
    }

    v15 = v9;
    return *(v10 + 24 * v15 + 16);
  }

  return v13;
}

uint64_t re::MaterialManager::initPerSceneTables_ProbeManager(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 896);
  if (a3)
  {
    v6 = *(v5 + 56);
    v7 = *(a2 + 24);
    v35 = 0x3F800981E521C7A1;
    re::TextureManager::stockTextureForType(v6, 6, v26);
    re::TextureTable::setTexture(v7, &v35, v26);
    if (v26[0])
    {
    }

    v8 = *(a2 + 24);
    v34 = 0x150A18CBFF11727ALL;
    v35 = 0;
    re::TextureManager::stockTextureForType(v6, 3, v26);
    re::TextureTable::setTexture(v8, &v34, v26);
    if (v26[0])
    {
    }

    v9 = *(a2 + 24);
    v33 = 0x24E8D221D19BF998;
    v34 = 0;
    re::TextureManager::stockTextureForType(v6, 5, v26);
    re::TextureTable::setTexture(v9, &v33, v26);
    if (v26[0])
    {
    }

    v10 = *(a2 + 24);
    v32 = 0x319D4D8796A12B1FLL;
    v33 = 0;
    re::TextureManager::stockTextureForType(v6, 2, v26);
    re::TextureTable::setTexture(v10, &v32, v26);
    if (v26[0])
    {
    }

    v32 = 0;
    v11 = *(a2 + 24);
    v31 = 0x1AA47CB53A9AC861;
    re::TextureManager::stockTextureForType(v6, 3, v26);
    re::TextureTable::setTexture(v11, &v31, v26);
    if (v26[0])
    {
    }

    v30 = 0x7831721862C9B2CBLL;
    v31 = 0;
    v12 = *(a2 + 32);
    v26[0] = *(a1 + 760);
    v27 = 0;
    v28 = 0;
    v13 = *(a1 + 760);
  }

  else
  {
    v14 = [*(*(*(v5 + 112) + 304) + 80) textureType];
    v15 = *(a2 + 24);
    if (v14 == 5)
    {
      v23 = 0x24E8D221D19BF998;
      re::TextureTable::setTexture(v15, &v23, (*(*(*(a1 + 896) + 112) + 304) + 80));
      v17 = *(a2 + 24);
      v22 = 0x319D4D8796A12B1FLL;
      v23 = 0;
      re::TextureTable::setTexture(v17, &v22, (*(*(*(a1 + 896) + 112) + 304) + 88));
      v22 = 0;
    }

    else if (v14 == 6)
    {
      v25 = 0x3F800981E521C7A1;
      re::TextureTable::setTexture(v15, &v25, (*(*(*(a1 + 896) + 112) + 304) + 80));
      v16 = *(a2 + 24);
      v24 = 0x150A18CBFF11727ALL;
      v25 = 0;
      re::TextureTable::setTexture(v16, &v24, (*(*(*(a1 + 896) + 112) + 304) + 88));
      v24 = 0;
    }

    else
    {
      v21 = 0x1AA47CB53A9AC861;
      re::TextureTable::setTexture(v15, &v21, (*(*(*(a1 + 896) + 112) + 304) + 80));
      v21 = 0;
    }

    v12 = *(a2 + 32);
    v30 = 0x7831721862C9B2CBLL;
    v18 = *(*(a1 + 896) + 112);
    if (v18)
    {
      v19 = *(v18 + 304);
    }

    else
    {
      v19 = 0;
    }

    v26[0] = *(v19 + 128);
    v27 = 0;
    v28 = 0;
    v13 = *(v19 + 128);
  }

  v29 = [v13 length];
  result = re::BufferTable::setBuffer(v12, &v30, v26);
  if (v27 != -1)
  {
    return (off_1F5D060B0[v27])(&v36, v26);
  }

  return result;
}

uint64_t re::MaterialManager::deinit(re::MaterialManager *this)
{
  v2 = *(this + 144);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 70);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 144);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    re::internal::destroyPersistent<re::BufferTable>(*(*(this + 70) + 24 * v3 + 16));
    v6 = *(this + 144);
    if (v6 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 70) + 24 * v3) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v6;
LABEL_14:
    ;
  }

  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 68);
  v7 = *(this + 52);
  *(this + 52) = 0;
  if (v7)
  {
    v8 = *(this + 54);
    v9 = 8 * v7;
    do
    {
      objc_destroyWeak(v8);
      *v8++ = 0;
      v9 -= 8;
    }

    while (v9);
  }

  ++*(this + 106);
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit(this + 400);
  os_unfair_lock_lock(this + 122);
  re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 55);
  os_unfair_lock_unlock(this + 122);
  v10 = *(this + 132);
  if (v10)
  {
    v11 = 0;
    v12 = *(this + 64);
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
        LODWORD(v11) = *(this + 132);
        break;
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  while (v11 != v10)
  {
    re::internal::destroyPersistent<re::TextureTable>(*(*(this + 64) + 24 * v11 + 16));
    v14 = *(this + 132);
    if (v14 <= v11 + 1)
    {
      v14 = v11 + 1;
    }

    while (v14 - 1 != v11)
    {
      LODWORD(v11) = v11 + 1;
      if ((*(*(this + 64) + 24 * v11) & 0x80000000) != 0)
      {
        goto LABEL_31;
      }
    }

    LODWORD(v11) = v14;
LABEL_31:
    ;
  }

  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 62);
  v16 = *(this + 156);
  if (v16)
  {
    v17 = 0;
    v18 = *(this + 76);
    while (1)
    {
      v19 = *v18;
      v18 += 6;
      if (v19 < 0)
      {
        break;
      }

      if (v16 == ++v17)
      {
        LODWORD(v17) = *(this + 156);
        break;
      }
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  if (v17 != v16)
  {
    v20 = *(this + 156);
    do
    {
      v21 = *(*(this + 76) + 24 * v17 + 16);
      if (v21)
      {
        v22 = re::globalAllocators(v15)[2];
        re::SamplerTable::~SamplerTable(v21);
        v15 = (*(*v22 + 40))(v22, v21);
        v20 = *(this + 156);
      }

      if (v20 <= v17 + 1)
      {
        v23 = v17 + 1;
      }

      else
      {
        v23 = v20;
      }

      while (v23 - 1 != v17)
      {
        LODWORD(v17) = v17 + 1;
        if ((*(*(this + 76) + 24 * v17) & 0x80000000) != 0)
        {
          goto LABEL_49;
        }
      }

      LODWORD(v17) = v23;
LABEL_49:
      ;
    }

    while (v17 != v16);
  }

  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 74);
  v24 = *(this + 44);
  if (v24)
  {
    v25 = 0;
    v26 = *(this + 20);
    while (1)
    {
      v27 = *v26;
      v26 += 6;
      if (v27 < 0)
      {
        break;
      }

      if (v24 == ++v25)
      {
        LODWORD(v25) = *(this + 44);
        break;
      }
    }
  }

  else
  {
    LODWORD(v25) = 0;
  }

  while (v25 != v24)
  {
    re::internal::destroyPersistent<re::TechniqueResolutions<re::AttributeResolution>>(*(*(this + 20) + 24 * v25 + 16));
    v28 = *(this + 44);
    if (v28 <= v25 + 1)
    {
      v28 = v25 + 1;
    }

    while (v28 - 1 != v25)
    {
      LODWORD(v25) = v25 + 1;
      if ((*(*(this + 20) + 24 * v25) & 0x80000000) != 0)
      {
        goto LABEL_63;
      }
    }

    LODWORD(v25) = v28;
LABEL_63:
    ;
  }

  v29 = *(this + 32);
  if (v29)
  {
    v30 = 0;
    v31 = *(this + 14);
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
        LODWORD(v30) = *(this + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v30) = 0;
  }

  while (v30 != v29)
  {
    re::internal::destroyPersistent<re::TechniqueResolutions<re::BufferResolution>>(*(*(this + 14) + 24 * v30 + 16));
    v33 = *(this + 32);
    if (v33 <= v30 + 1)
    {
      v33 = v30 + 1;
    }

    while (v33 - 1 != v30)
    {
      LODWORD(v30) = v30 + 1;
      if ((*(*(this + 14) + 24 * v30) & 0x80000000) != 0)
      {
        goto LABEL_77;
      }
    }

    LODWORD(v30) = v33;
LABEL_77:
    ;
  }

  v34 = *(this + 20);
  if (v34)
  {
    v35 = 0;
    v36 = *(this + 8);
    while (1)
    {
      v37 = *v36;
      v36 += 6;
      if (v37 < 0)
      {
        break;
      }

      if (v34 == ++v35)
      {
        LODWORD(v35) = *(this + 20);
        break;
      }
    }
  }

  else
  {
    LODWORD(v35) = 0;
  }

  while (v35 != v34)
  {
    re::internal::destroyPersistent<re::TechniqueResolutions<re::BufferResolution>>(*(*(this + 8) + 24 * v35 + 16));
    v38 = *(this + 20);
    if (v38 <= v35 + 1)
    {
      v38 = v35 + 1;
    }

    while (v38 - 1 != v35)
    {
      LODWORD(v35) = v35 + 1;
      if ((*(*(this + 8) + 24 * v35) & 0x80000000) != 0)
      {
        goto LABEL_91;
      }
    }

    LODWORD(v35) = v38;
LABEL_91:
    ;
  }

  v39 = *(this + 8);
  if (v39)
  {
    v40 = 0;
    v41 = *(this + 2);
    while (1)
    {
      v42 = *v41;
      v41 += 6;
      if (v42 < 0)
      {
        break;
      }

      if (v39 == ++v40)
      {
        LODWORD(v40) = *(this + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v40) = 0;
  }

  while (v40 != v39)
  {
    re::internal::destroyPersistent<re::TechniqueResolutions<re::ConstantResolution>>(*(*(this + 2) + 24 * v40 + 16));
    v43 = *(this + 8);
    if (v43 <= v40 + 1)
    {
      v43 = v40 + 1;
    }

    while (v43 - 1 != v40)
    {
      LODWORD(v40) = v40 + 1;
      if ((*(*(this + 2) + 24 * v40) & 0x80000000) != 0)
      {
        goto LABEL_105;
      }
    }

    LODWORD(v40) = v43;
LABEL_105:
    ;
  }

  v44 = *(this + 56);
  if (v44)
  {
    v45 = 0;
    v46 = *(this + 26);
    while (1)
    {
      v47 = *v46;
      v46 += 6;
      if (v47 < 0)
      {
        break;
      }

      if (v44 == ++v45)
      {
        LODWORD(v45) = *(this + 56);
        break;
      }
    }
  }

  else
  {
    LODWORD(v45) = 0;
  }

  while (v45 != v44)
  {
    re::internal::destroyPersistent<re::TechniqueResolutions<re::BufferResolution>>(*(*(this + 26) + 24 * v45 + 16));
    v48 = *(this + 56);
    if (v48 <= v45 + 1)
    {
      v48 = v45 + 1;
    }

    while (v48 - 1 != v45)
    {
      LODWORD(v45) = v45 + 1;
      if ((*(*(this + 26) + 24 * v45) & 0x80000000) != 0)
      {
        goto LABEL_119;
      }
    }

    LODWORD(v45) = v48;
LABEL_119:
    ;
  }

  v49 = *(this + 68);
  if (v49)
  {
    v50 = 0;
    v51 = *(this + 32);
    while (1)
    {
      v52 = *v51;
      v51 += 6;
      if (v52 < 0)
      {
        break;
      }

      if (v49 == ++v50)
      {
        LODWORD(v50) = *(this + 68);
        break;
      }
    }
  }

  else
  {
    LODWORD(v50) = 0;
  }

  while (v50 != v49)
  {
    re::internal::destroyPersistent<re::TechniqueResolutions<re::BufferResolution>>(*(*(this + 32) + 24 * v50 + 16));
    v53 = *(this + 68);
    if (v53 <= v50 + 1)
    {
      v53 = v50 + 1;
    }

    while (v53 - 1 != v50)
    {
      LODWORD(v50) = v50 + 1;
      if ((*(*(this + 32) + 24 * v50) & 0x80000000) != 0)
      {
        goto LABEL_133;
      }
    }

    LODWORD(v50) = v53;
LABEL_133:
    ;
  }

  if (*(this + 267))
  {
    v54 = *(this + 266);
    if (v54)
    {
      memset_pattern16(*(this + 131), &memset_pattern_275, 4 * v54);
    }

    v55 = *(this + 268);
    if (v55)
    {
      v56 = *(this + 132);
      do
      {
        if ((*v56 & 0x80000000) != 0)
        {
          *v56 &= ~0x80000000;
        }

        v56 += 8;
        --v55;
      }

      while (v55);
    }

    *(this + 269) = 0x7FFFFFFF;
    *(this + 1068) = 0;
    ++*(this + 270);
  }

  return re::DataArray<re::MaterialParameterBlock>::deinit(this + 1088);
}

re *re::internal::destroyPersistent<re::BufferTable>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::BufferTable::~BufferTable(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

re *re::internal::destroyPersistent<re::TextureTable>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::TextureTableImpl<NS::SharedPtr<MTL::Texture>>::~TextureTableImpl(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

re *re::internal::destroyPersistent<re::TechniqueResolutions<re::AttributeResolution>>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    v3 = *(v1 + 1);
    if (v3)
    {
      if (*(v1 + 5))
      {
        (*(*v3 + 40))(v3);
      }

      *(v1 + 5) = 0;
      *(v1 + 2) = 0;
      *(v1 + 3) = 0;
      *(v1 + 1) = 0;
      ++*(v1 + 8);
    }

    v4 = *(*v2 + 40);

    return v4(v2, v1);
  }

  return result;
}

re *re::internal::destroyPersistent<re::TechniqueResolutions<re::BufferResolution>>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::DynamicArray<unsigned long>::deinit(v1 + 48);
    re::DynamicArray<unsigned long>::deinit(v1 + 8);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

re *re::internal::destroyPersistent<re::TechniqueResolutions<re::ConstantResolution>>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::DynamicArray<re::ConstantResolution>::deinit(v1 + 48);
    re::DynamicArray<re::ConstantResolution>::deinit(v1 + 8);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t re::DataArray<re::MaterialParameterBlock>::deinit(uint64_t result)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::MaterialParameterBlock>::clear(result);
    if (!v1[2])
    {
      v7 = 0;
      memset(v16, 0, sizeof(v16));
      v4 = MEMORY[0x1E69E9C10];
      v8 = 136315906;
      v9 = "operator[]";
      v10 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      v11 = 789;
      v12 = 2048;
      v13 = 0;
      v14 = 2048;
      v15 = 0;
      _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

uint64_t re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(uint64_t a1, unint64_t *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 24 * HIDWORD(v10) + 16;
  }

  v6 = re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v10, v9);
  v7 = *a2;
  *(v6 + 16) = *a3;
  result = v6 + 16;
  *(result - 8) = v7;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  result = re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(&v8, a1, *a2, *a2);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v9, v8);
    v7 = *a3;
    *(result + 8) = *a2;
    *(result + 16) = v7;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::MaterialManager::findTextureTableByName(re::MaterialManager *this, const char *__s)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = strlen(__s);
  if (v4)
  {
    v4 = MurmurHash3_x64_128(__s, v4, 0, &v10);
    v5 = (*(&v10 + 1) + (v10 << 6) + (v10 >> 2) - 0x61C8864680B583E9) ^ v10;
  }

  else
  {
    v5 = 0;
  }

  if (!*(this + 62) || (v6 = *(*(this + 63) + 4 * (v5 % *(this + 130))), v6 == 0x7FFFFFFF))
  {
LABEL_9:
    v8 = *re::graphicsLogObjects(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v10) = 136315138;
      *(&v10 + 4) = __s;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Texture table %s not found. Returning null.", &v10, 0xCu);
    }

    return 0;
  }

  else
  {
    v7 = *(this + 64);
    while (*(v7 + 24 * v6 + 8) != v5)
    {
      v6 = *(v7 + 24 * v6) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        goto LABEL_9;
      }
    }

    return *(v7 + 24 * v6 + 16);
  }
}

uint64_t re::MaterialManager::findSamplerTableByName(re::MaterialManager *this, const char *__s)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = strlen(__s);
  if (v4)
  {
    v4 = MurmurHash3_x64_128(__s, v4, 0, &v10);
    v5 = (*(&v10 + 1) + (v10 << 6) + (v10 >> 2) - 0x61C8864680B583E9) ^ v10;
  }

  else
  {
    v5 = 0;
  }

  if (!*(this + 74) || (v6 = *(*(this + 75) + 4 * (v5 % *(this + 154))), v6 == 0x7FFFFFFF))
  {
LABEL_9:
    v8 = *re::graphicsLogObjects(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v10) = 136315138;
      *(&v10 + 4) = __s;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Sampler table %s not found. Returning null.", &v10, 0xCu);
    }

    return 0;
  }

  else
  {
    v7 = *(this + 76);
    while (*(v7 + 24 * v6 + 8) != v5)
    {
      v6 = *(v7 + 24 * v6) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        goto LABEL_9;
      }
    }

    return *(v7 + 24 * v6 + 16);
  }
}

uint64_t re::MaterialManager::findPerSceneTextureTableByName(re::MaterialManager *this, const char *__s, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = strlen(__s);
  if (v6)
  {
    v6 = MurmurHash3_x64_128(__s, v6, 0, v13);
    v7 = (*&v13[8] - 0x61C8864680B583E9 + (*v13 << 6) + (*v13 >> 2)) ^ *v13;
  }

  else
  {
    v7 = 0;
  }

  if (!*(this + 62) || (v8 = (a3 - 0x61C8864680B583E9 + (v7 << 6) + (v7 >> 2)) ^ v7, v9 = *(*(this + 63) + 4 * (v8 % *(this + 130))), v9 == 0x7FFFFFFF))
  {
LABEL_9:
    v11 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 136315394;
      *&v13[4] = __s;
      *&v13[12] = 2048;
      *&v13[14] = a3;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Texture table %s for scene index %zu not found. Returning null.", v13, 0x16u);
    }

    return 0;
  }

  else
  {
    v10 = *(this + 64);
    while (*(v10 + 24 * v9 + 8) != v8)
    {
      v9 = *(v10 + 24 * v9) & 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        goto LABEL_9;
      }
    }

    return *(v10 + 24 * v9 + 16);
  }
}

uint64_t re::MaterialManager::findOrCreateTextureTableForName(re::MaterialManager *this, const char *__s)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = strlen(__s);
  if (v4)
  {
    v4 = MurmurHash3_x64_128(__s, v4, 0, v12);
    v5 = (v12[1] + (v12[0] << 6) + (v12[0] >> 2) - 0x61C8864680B583E9) ^ v12[0];
  }

  else
  {
    v5 = 0;
  }

  v12[0] = v5;
  if (!*(this + 62) || (v6 = *(*(this + 63) + 4 * (v5 % *(this + 130))), v6 == 0x7FFFFFFF))
  {
LABEL_9:
    v8 = re::globalAllocators(v4);
    v9 = (*(*v8[2] + 32))(v8[2], 112, 8);
    *(v9 + 8) = 0u;
    *(v9 + 24) = 0u;
    *(v9 + 40) = 0u;
    *(v9 + 56) = 0u;
    *(v9 + 72) = 0u;
    *(v9 + 88) = 0u;
    *(v9 + 104) = 0;
    *v9 = &unk_1F5D06170;
    v11 = v9;
    re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(this + 496, v12, &v11);
    return v11;
  }

  else
  {
    v7 = *(this + 64);
    while (*(v7 + 24 * v6 + 8) != v5)
    {
      v6 = *(v7 + 24 * v6) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        goto LABEL_9;
      }
    }

    return *(v7 + 24 * v6 + 16);
  }
}

void re::MaterialManager::resizeScenes(re::MaterialManager *this, unint64_t a2)
{
  v96 = *MEMORY[0x1E69E9840];
  if (a2 <= 4)
  {
    v3 = 4;
  }

  else
  {
    v3 = a2;
  }

  v4 = *(this + 86);
  v5 = v4;
  if (v3 < v4)
  {
    v6 = v3 << 6;
    v7 = 24;
    v8 = v3;
    while (1)
    {
      v9 = *(this + 86);
      if (v9 <= v8)
      {
        break;
      }

      v10 = *(this + 88) + v6;
      re::internal::destroyPersistent<re::TextureTable>(*(v10 + 24));
      re::internal::destroyPersistent<re::BufferTable>(*(v10 + 32));
      re::internal::destroyPersistent<re::BufferTable>(*(v10 + 40));
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(this + 496, v10, *v10, v91);
      v11 = HIDWORD(v91[1]);
      if (HIDWORD(v91[1]) != 0x7FFFFFFF)
      {
        v12 = *(this + 64);
        v13 = *(v12 + 24 * HIDWORD(v91[1])) & 0x7FFFFFFF;
        if (v92 == 0x7FFFFFFF)
        {
          *(*(this + 63) + 4 * LODWORD(v91[1])) = v13;
          v11 = HIDWORD(v91[1]);
        }

        else
        {
          *(v12 + 24 * v92) = *(v12 + 24 * v92) & 0x80000000 | v13;
        }

        *(v12 + 24 * v11) = *(this + 133);
        *(this + 133) = v11;
        --*(this + 131);
        ++*(this + 134);
      }

      re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v91, this + 544, *(v10 + 8), *(v10 + 8));
      re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::removeInternal(this + 544, v91);
      re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v91, this + 544, *(v10 + 16), *(v10 + 16));
      re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::removeInternal(this + 544, v91);
      ++v8;
      v6 += 64;
      if (v4 == v8)
      {
        v5 = *(this + 86);
        goto LABEL_14;
      }
    }

    v82 = 0;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    *v91 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    *v84 = 136315906;
    *&v84[4] = "operator[]";
    v85 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v68 = 3;
    }

    else
    {
      v68 = 2;
    }

    v86 = 789;
    v87 = 2048;
    v88 = v8;
    v89 = 2048;
    v90 = v9;
    _os_log_send_and_compose_impl(v68, &v82, v91, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v84, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
LABEL_101:
    v82 = 0;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    *v91 = 0u;
    v69 = MEMORY[0x1E69E9C10];
    v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v84 = 136315906;
    *&v84[4] = "operator[]";
    v85 = 1024;
    if (v70)
    {
      v71 = 3;
    }

    else
    {
      v71 = 2;
    }

    v86 = 789;
    v87 = 2048;
    v88 = v4;
    v89 = 2048;
    v90 = v7;
    _os_log_send_and_compose_impl(v71, &v82, v91, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v84, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
  }

LABEL_14:
  if (v5 >= v3)
  {
    if (v5 <= v3)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*(this + 85) < v3)
    {
      re::DynamicArray<re::MaterialManager::PerSceneTables>::setCapacity(this + 84, v3);
      v5 = *(this + 86);
    }

    if (v3 > v5 && v3 > v5)
    {
      bzero((*(this + 88) + (v5 << 6)), (v3 - v5) << 6);
    }
  }

  *(this + 86) = v3;
  ++*(this + 174);
LABEL_25:
  if (v4 < v3)
  {
    while (1)
    {
      v7 = *(this + 86);
      if (v7 <= v4)
      {
        goto LABEL_101;
      }

      v15 = v3;
      v16 = *(this + 88);
      if ((atomic_load_explicit(&qword_1EE1B9900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9900))
      {
        _MergedGlobals_447 = re::hashStringWithLength("scene", v66);
        __cxa_guard_release(&qword_1EE1B9900);
      }

      v17 = (v16 + (v4 << 6));
      v18 = v4 - 0x61C8864680B583E9;
      *v17 = (v4 - 0x61C8864680B583E9 + (_MergedGlobals_447 << 6) + (_MergedGlobals_447 >> 2)) ^ _MergedGlobals_447;
      v19 = MurmurHash3_x64_128("scene", 5uLL, 0, v91);
      v20 = (v91[1] + 64 * v91[0] + (v91[0] >> 2) - 0x61C8864680B583E9) ^ v91[0];
      v21 = (v4 - 0x61C8864680B583E9 + (v20 << 6) + (v20 >> 2)) ^ v20;
      v91[0] = v21;
      if (!*(this + 62) || (v22 = *(*(this + 63) + 4 * (v21 % *(this + 130))), v22 == 0x7FFFFFFF))
      {
LABEL_33:
        v25 = re::globalAllocators(v19);
        v26 = (*(*v25[2] + 32))(v25[2], 112, 8);
        *(v26 + 8) = 0u;
        *(v26 + 24) = 0u;
        *(v26 + 40) = 0u;
        *(v26 + 56) = 0u;
        *(v26 + 72) = 0u;
        *(v26 + 88) = 0u;
        *(v26 + 104) = 0;
        *v26 = &unk_1F5D06170;
        *v84 = v26;
        v19 = re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(this + 496, v91, v84);
        v27 = *v84;
      }

      else
      {
        v23 = *(this + 64);
        v24 = *(*(this + 63) + 4 * (v21 % *(this + 130)));
        while (*(v23 + 24 * v24 + 8) != v21)
        {
          v24 = *(v23 + 24 * v24) & 0x7FFFFFFF;
          if (v24 == 0x7FFFFFFF)
          {
            goto LABEL_33;
          }
        }

        while (*(v23 + 24 * v22 + 8) != v21)
        {
          v22 = *(v23 + 24 * v22) & 0x7FFFFFFF;
          v65 = 0x7FFFFFFFLL;
          if (v22 == 0x7FFFFFFF)
          {
            goto LABEL_91;
          }
        }

        v65 = v22;
LABEL_91:
        v27 = *(v23 + 24 * v65 + 16);
      }

      v17[3] = v27;
      v28 = v27 + 72;
      re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::setCapacity(v28, 0xAuLL);
      ++*(v28 + 24);
      v29 = v17[3];
      *v84 = 0x51D6CB770EC4;
      re::TextureTable::setTexture(v29, v84, (*(*(this + 112) + 56) + 48));
      *v84 = 0;
      v30 = v17[3];
      v82 = 0x5BE38A6CA01CLL;
      re::TextureTable::setTexture(v30, &v82, (*(*(this + 112) + 56) + 24));
      v82 = 0;
      v31 = v17[3];
      v81 = 0xE459D7324435E49;
      re::TextureTable::setTexture(v31, &v81, (*(*(this + 112) + 56) + 88));
      v81 = 0;
      v32 = v17[3];
      v80 = 0xC0489AC946E8FF4;
      re::TextureTable::setTexture(v32, &v80, (*(*(this + 112) + 56) + 88));
      v80 = 0;
      v33 = v17[3];
      v79 = 0x200BEB41406E4973;
      re::TextureTable::setTexture(v33, &v79, (*(*(this + 112) + 56) + 88));
      v79 = 0;
      v34 = v17[3];
      v78 = 0x74B9011688CA44FFLL;
      re::TextureTable::setTexture(v34, &v78, (*(*(this + 112) + 56) + 88));
      v78 = 0;
      v35 = v17[3];
      v77 = 0x23C1563FB78C78B1;
      re::TextureTable::setTexture(v35, &v77, (*(*(this + 112) + 56) + 88));
      v77 = 0;
      v36 = v17[3];
      v76 = 0x5495C6E7C96973E2;
      re::TextureTable::setTexture(v36, &v76, (*(*(this + 112) + 56) + 88));
      v76 = 0;
      v37 = v17[3];
      v75 = 0x4DB123A4BB1CD2C0;
      re::TextureTable::setTexture(v37, &v75, (*(*(this + 112) + 112) + 760));
      v75 = 0;
      v38 = v17[3];
      v74 = 0x564C767D75CDLL;
      v91[0] = 0;
      re::TextureTable::setTexture(v38, &v74, v91);
      if (v91[0])
      {
      }

      v74 = 0;
      v39 = v17[3];
      v73 = 0x143F50BFF6F9E46;
      v91[0] = 0;
      re::TextureTable::setTexture(v39, &v73, v91);
      if (v91[0])
      {
      }

      v73 = 0;
      v17[1] = (v18 + (_MergedGlobals_447 << 6) + (_MergedGlobals_447 >> 2)) ^ _MergedGlobals_447;
      PerSceneBufferTableForName = re::MaterialManager::createPerSceneBufferTableForName(this, "scene", v4);
      v17[4] = PerSceneBufferTableForName;
      v41 = v17[4];
      v91[0] = 0x29136C0FCC2;
      LOBYTE(v72) = 0;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v41, v91, &v72);
      if (!*(v41 + 280))
      {
        *(v41 + 280) = 1;
      }

      v42 = v17[4];
      v91[0] = 0x7831721862C9B2CBLL;
      LOBYTE(v72) = 1;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v42, v91, &v72);
      if (*(v42 + 280) <= 1u)
      {
        *(v42 + 280) = 2;
      }

      v43 = v17[4];
      v91[0] = 0xDFC20BDF4EDA5B3;
      LOBYTE(v72) = 2;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v43, v91, &v72);
      if (*(v43 + 280) <= 2u)
      {
        *(v43 + 280) = 3;
      }

      v44 = v17[4];
      v91[0] = 0x441AC0ECAF42AD04;
      LOBYTE(v72) = 3;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v44, v91, &v72);
      if (*(v44 + 280) <= 3u)
      {
        *(v44 + 280) = 4;
      }

      if ((atomic_load_explicit(&qword_1EE1B9910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9910))
      {
        qword_1EE1B9908 = re::hashStringWithLength("light", v67);
        __cxa_guard_release(&qword_1EE1B9910);
      }

      v17[2] = (v18 + (qword_1EE1B9908 << 6) + (qword_1EE1B9908 >> 2)) ^ qword_1EE1B9908;
      v45 = re::MaterialManager::createPerSceneBufferTableForName(this, "light", v4);
      v17[5] = v45;
      v46 = v17[5];
      v91[0] = 0x144ABD64D310CF6;
      LOBYTE(v72) = 0;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v46, v91, &v72);
      if (!*(v46 + 280))
      {
        *(v46 + 280) = 1;
      }

      v47 = v17[5];
      v91[0] = 0x5437C2365207957;
      LOBYTE(v72) = 1;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v47, v91, &v72);
      if (*(v47 + 280) <= 1u)
      {
        *(v47 + 280) = 2;
      }

      v48 = v17[5];
      v91[0] = 0x3D6DAF04080D176CLL;
      LOBYTE(v72) = 2;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v48, v91, &v72);
      if (*(v48 + 280) <= 2u)
      {
        *(v48 + 280) = 3;
      }

      v49 = v17[5];
      v91[0] = 0x63A3BE6348A3B8F4;
      LOBYTE(v72) = 3;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v49, v91, &v72);
      if (*(v49 + 280) <= 3u)
      {
        *(v49 + 280) = 4;
      }

      v50 = v17[5];
      v91[0] = 0x4FADF8C267199512;
      LOBYTE(v72) = 4;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v50, v91, &v72);
      if (*(v50 + 280) <= 4u)
      {
        *(v50 + 280) = 5;
      }

      v51 = v17[5];
      v91[0] = 0xA7927F2BBEE1ALL;
      LOBYTE(v72) = 5;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v51, v91, &v72);
      if (*(v51 + 280) <= 5u)
      {
        *(v51 + 280) = 6;
      }

      v52 = v17[5];
      v91[0] = 0x5294D280395580B0;
      LOBYTE(v72) = 6;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v52, v91, &v72);
      if (*(v52 + 280) <= 6u)
      {
        *(v52 + 280) = 7;
      }

      v53 = v17[5];
      v91[0] = 0x567D28DE2738;
      LOBYTE(v72) = 7;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v53, v91, &v72);
      if (*(v53 + 280) <= 7u)
      {
        *(v53 + 280) = 8;
      }

      v54 = v17[5];
      v91[0] = 0x2750CEF3162C90A2;
      LOBYTE(v72) = 8;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v54, v91, &v72);
      if (*(v54 + 280) <= 8u)
      {
        *(v54 + 280) = 9;
      }

      v55 = v17[5];
      v91[0] = 0x1658EB831E3FF0F9;
      LOBYTE(v72) = 9;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v55, v91, &v72);
      if (*(v55 + 280) <= 9u)
      {
        *(v55 + 280) = 10;
      }

      v56 = v17[5];
      v91[0] = 0x273A81CF18ED4F0;
      LOBYTE(v72) = 10;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v56, v91, &v72);
      if (*(v56 + 280) <= 0xAu)
      {
        *(v56 + 280) = 11;
      }

      v57 = v17[5];
      v91[0] = 0x3C5E7C1C007EE27;
      LOBYTE(v72) = 11;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v57, v91, &v72);
      if (*(v57 + 280) <= 0xBu)
      {
        *(v57 + 280) = 12;
      }

      v58 = v17[5];
      v91[0] = 0x16323C0B1F9DAD6FLL;
      LOBYTE(v72) = 12;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v58, v91, &v72);
      if (*(v58 + 280) <= 0xCu)
      {
        *(v58 + 280) = 13;
      }

      v59 = v17[5];
      v91[0] = 0x3A27078604AA8089;
      LOBYTE(v72) = 13;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v59, v91, &v72);
      if (*(v59 + 280) <= 0xDu)
      {
        *(v59 + 280) = 14;
      }

      v60 = v17[5];
      v91[0] = 0xEDE14EC8EBF7251;
      LOBYTE(v72) = 14;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v60, v91, &v72);
      if (*(v60 + 280) <= 0xEu)
      {
        *(v60 + 280) = 15;
      }

      v61 = v17[5];
      v91[0] = 0x262DF9A294ABAC1CLL;
      LOBYTE(v72) = 15;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v61, v91, &v72);
      if (*(v61 + 280) <= 0xFu)
      {
        *(v61 + 280) = 16;
      }

      v62 = v17[5];
      v91[0] = 0x6C67F4CE96CFCB6ALL;
      LOBYTE(v72) = 16;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v62, v91, &v72);
      if (*(v62 + 280) <= 0x10u)
      {
        *(v62 + 280) = 17;
      }

      v63 = v17[5];
      v91[0] = 0x458FBDFDF334653DLL;
      LOBYTE(v72) = 17;
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v63, v91, &v72);
      if (*(v63 + 280) <= 0x11u)
      {
        *(v63 + 280) = 18;
      }

      v64 = v17[5];
      v72 = 0x458FBDFDF334653DLL;
      v91[0] = *(this + 106);
      DWORD2(v92) = 0;
      LODWORD(v93) = 0;
      DWORD1(v93) = [*(this + 106) length];
      re::BufferTable::setBuffer(v64, &v72, v91);
      if (DWORD2(v92) != -1)
      {
        (off_1F5D060B0[DWORD2(v92)])(&v83, v91);
      }

      re::MaterialManager::initPerSceneTables_ProbeManager(this, v17, 1);
      ++v4;
      v3 = v15;
      if (v4 == v15)
      {
        return;
      }
    }
  }
}

void *re::MaterialManager::ensureSceneTablesInitialized_ProbeManager(void *this)
{
  v1 = this;
  v19 = *MEMORY[0x1E69E9840];
  v2 = this[113];
  v3 = this[86];
  if (v2 < v3)
  {
    v4 = v2 << 6;
    do
    {
      v5 = v1[86];
      if (v5 <= v2)
      {
        v9 = 0;
        memset(v18, 0, sizeof(v18));
        v6 = MEMORY[0x1E69E9C10];
        v10 = 136315906;
        v11 = "operator[]";
        v12 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v7 = 3;
        }

        else
        {
          v7 = 2;
        }

        v13 = 789;
        v14 = 2048;
        v15 = v2;
        v16 = 2048;
        v17 = v5;
        _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
        _os_crash_msg();
        __break(1u);
      }

      this = re::MaterialManager::initPerSceneTables_ProbeManager(v1, v1[88] + v4, 0);
      ++v2;
      v4 += 64;
    }

    while (v3 != v2);
  }

  v1[113] = v3;
  return this;
}

uint64_t re::MaterialManager::sceneTextures(re::MaterialManager *this, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 86) > a2)
  {
    return *(*(this + 88) + (a2 << 6) + 24);
  }

  v4 = *re::graphicsLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Scene index %zu for scene texture table is out of range. Returning null.", &v5, 0xCu);
  }

  return 0;
}

uint64_t re::MaterialManager::lightBuffers(re::MaterialManager *this, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 86) > a2)
  {
    return *(*(this + 88) + (a2 << 6) + 40);
  }

  v4 = *re::graphicsLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Scene index %zu for light buffer table is out of range. Returning null.", &v5, 0xCu);
  }

  return 0;
}

uint64_t re::MaterialManager::sceneBuffers(re::MaterialManager *this, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 86) > a2)
  {
    return *(*(this + 88) + (a2 << 6) + 32);
  }

  v4 = *re::graphicsLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Scene index %zu for scene buffer table is out of range. Returning null.", &v5, 0xCu);
  }

  return 0;
}

unint64_t re::MaterialManager::sceneConstants(re::MaterialManager *this, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 86) > a2)
  {
    return *(this + 88) + (a2 << 6) + 48;
  }

  v4 = *re::graphicsLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Scene index %zu for scene buffer table is out of range. Returning null.", &v5, 0xCu);
  }

  return 0;
}

uint64_t *re::MaterialManager::generateDebugTechnique(re::MaterialManager *this, const re::MaterialInstance *a2, unint64_t a3)
{
  v6 = this;
  v83 = *MEMORY[0x1E69E9840];
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v7 = re::DynamicString::setCapacity(&v65, 0);
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  re::DynamicString::operator=(&v65, &v54);
  if (v54 && (BYTE8(v54) & 1) != 0)
  {
    (*(*v54 + 40))();
  }

  v8 = 0uLL;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  LOBYTE(v70) = 1;
  v69 = 2687029;
  v9 = *(a2 + 13);
  if (v9 <= a3)
  {
    v52 = 0;
    v55 = 0uLL;
    memset(v56, 0, sizeof(v56));
    v54 = 0uLL;
    v25 = MEMORY[0x1E69E9C10];
    v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v82[0]) = 136315906;
    *(v82 + 4) = "operator[]";
    WORD6(v82[0]) = 1024;
    if (v26)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    *(v82 + 14) = 468;
    WORD1(v82[1]) = 2048;
    *(&v82[1] + 4) = a3;
    WORD6(v82[1]) = 2048;
    *(&v82[1] + 14) = v9;
    _os_log_send_and_compose_impl(v27, &v52, &v54, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v82, 38, v40, v42);
    _os_crash_msg();
    __break(1u);
LABEL_36:
    v52 = 0;
    v56[1] = v8;
    v56[2] = v8;
    v55 = v8;
    v56[0] = v8;
    v54 = v8;
    v28 = MEMORY[0x1E69E9C10];
    v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v82[0]) = 136315906;
    *(v82 + 4) = "operator[]";
    WORD6(v82[0]) = 1024;
    if (v29)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    *(v82 + 14) = 468;
    WORD1(v82[1]) = 2048;
    *(&v82[1] + 4) = a3;
    WORD6(v82[1]) = 2048;
    *(&v82[1] + 14) = v9;
    _os_log_send_and_compose_impl(v30, &v52, &v54, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v82, 38, v40, v42);
    _os_crash_msg();
    __break(1u);
LABEL_40:
    v52 = 0;
    v56[1] = v8;
    v56[2] = v8;
    v55 = v8;
    v56[0] = v8;
    v54 = v8;
    v31 = MEMORY[0x1E69E9C10];
    v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v82[0]) = 136315906;
    *(v82 + 4) = "operator[]";
    WORD6(v82[0]) = 1024;
    if (v32)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    *(v82 + 14) = 476;
    WORD1(v82[1]) = 2048;
    *(&v82[1] + 4) = a3;
    WORD6(v82[1]) = 2048;
    *(&v82[1] + 14) = v3;
    _os_log_send_and_compose_impl(v33, &v52, &v54, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v82, 38, v40, v42);
    _os_crash_msg();
    __break(1u);
LABEL_44:
    v52 = 0;
    v55 = 0u;
    memset(v56, 0, sizeof(v56));
    v54 = 0u;
    v34 = MEMORY[0x1E69E9C10];
    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v82[0]) = 136315906;
    *(v82 + 4) = "operator[]";
    WORD6(v82[0]) = 1024;
    if (v35)
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    *(v82 + 14) = 476;
    WORD1(v82[1]) = 2048;
    *(&v82[1] + 4) = a3;
    WORD6(v82[1]) = 2048;
    *(&v82[1] + 14) = v3;
    _os_log_send_and_compose_impl(v36, &v52, &v54, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v82, 38, v40, v42);
    _os_crash_msg();
    __break(1u);
    goto LABEL_48;
  }

  v10 = (*(a2 + 14) + 40 * a3);
  if (*v10)
  {
    goto LABEL_28;
  }

  v11 = *(a2 + 2);
  v9 = *(v11 + 120);
  if (v9 <= a3)
  {
    goto LABEL_36;
  }

  v12 = *(*(v11 + 128) + 8 * a3);
  if (!v12)
  {
    *v10 = 0;
    goto LABEL_28;
  }

  v50 = 0;
  v47[1] = 0;
  v48 = 0;
  v47[0] = 0;
  v49 = 0;
  v3 = *(a2 + 10);
  if (v3 <= a3)
  {
    goto LABEL_40;
  }

  re::FixedArray<re::TechniqueFunctionConstant>::FixedArray(&v44, (*(*(a2 + 11) + 40 * a3) + 16));
  if (v45)
  {
    v13 = v46;
    v14 = (v46 + 104 * v45);
    do
    {
      re::DynamicString::DynamicString(&v54, v13);
      v56[0] = *(v13 + 2);
      v15 = *(v13 + 3);
      v16 = *(v13 + 4);
      v17 = *(v13 + 5);
      v58 = *(v13 + 24);
      v56[2] = v16;
      v57 = v17;
      v56[1] = v15;
      v18 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v47, &v54);
      if (v54 && (BYTE8(v54) & 1) != 0)
      {
        (*(*v54 + 40))(v18);
      }

      v13 = (v13 + 104);
    }

    while (v13 != v14);
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::add(v47, &v65);
  v3 = *(a2 + 10);
  if (v3 <= a3)
  {
    goto LABEL_44;
  }

  v19 = *(*(a2 + 11) + 40 * a3);
  if (*(v19 + 40) == 1)
  {
    v20 = v19 + 48;
  }

  else
  {
    v20 = *v19 + 8;
  }

  ArcSharedObject::ArcSharedObject(&v54, 0);
  *&v54 = &unk_1F5D033E8;
  v55 = 0u;
  memset(v56, 0, 28);
  *(&v56[1] + 12) = 0x7FFFFFFFLL;
  v59 = 0;
  v57 = 0uLL;
  *(&v56[2] + 1) = 0;
  v58 = 0;
  v60 = 0;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v21 = *(v6 + 112);
  v43 = 0;
  re::MaterialBuilder::generateTechnique(v21, v12, a2, v50, v48, v20, &v52, &v43, 0, 0);
  if (v43)
  {

    v43 = 0;
  }

  if ((v52 & 1) == 0)
  {
    goto LABEL_26;
  }

  v6 = *(a2 + 13);
  if (v6 <= a3)
  {
LABEL_48:
    v51 = 0;
    memset(v82, 0, sizeof(v82));
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v74 = 136315906;
    v75 = "operator[]";
    v76 = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    v77 = 468;
    v78 = 2048;
    v79 = a3;
    v80 = 2048;
    v81 = v6;
    _os_log_send_and_compose_impl(v39, &v51, v82, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v74, 38, v41, v42);
    _os_crash_msg();
    __break(1u);
  }

  std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::operator=[abi:nn200100]((*(a2 + 14) + 40 * a3), v53);
  if ((v52 & 1) == 0)
  {
LABEL_26:
    v22 = re::DynamicString::deinit(v53);
    goto LABEL_27;
  }

  std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::~unique_ptr[abi:nn200100](v53);
LABEL_27:
  re::FunctionReflectionCache::~FunctionReflectionCache(&v54, v22, v23);
  re::FixedArray<re::TechniqueFunctionConstant>::deinit(&v44);
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v47);
LABEL_28:
  result = v65;
  if (v65)
  {
    if (v66)
    {
      return (*(*v65 + 40))();
    }
  }

  return result;
}

void re::MaterialManager::createMaterial(uint64_t a1@<X0>, re::MaterialBuilder *a2@<X1>, void *a3@<X8>)
{
  location[3] = *MEMORY[0x1E69E9840];
  if ((*(a2 + 300) & 0xFFFFFFFE) == 6)
  {
    re::MaterialBuilder::result(a2, *(a1 + 896), v21);
    if (v21[0])
    {
      v6 = v22;
      *a3 = v22;
      if (v6)
      {
        v7 = (v6 + 8);
        v8 = (v6 + 8);
      }

      else
      {
        v8 = 0;
      }

      inited = objc_initWeak(location, v8);
      v10 = *(a1 + 408);
      v11 = *(a1 + 416);
      if (v11 >= v10)
      {
        v12 = v11 + 1;
        if (v10 < v11 + 1)
        {
          if (*(a1 + 400))
          {
            v13 = 2 * v10;
            v14 = v10 == 0;
            v15 = 8;
            if (!v14)
            {
              v15 = v13;
            }

            if (v15 <= v12)
            {
              v16 = v12;
            }

            else
            {
              v16 = v15;
            }

            re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::setCapacity((a1 + 400), v16);
          }

          else
          {
            re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::setCapacity((a1 + 400), v12);
            ++*(a1 + 424);
          }
        }

        v11 = *(a1 + 416);
      }

      v19 = (*(a1 + 432) + 8 * v11);
      *v19 = 0;
      objc_moveWeak(v19, location);
      ++*(a1 + 416);
      ++*(a1 + 424);
      objc_destroyWeak(location);
    }

    else
    {
      v18 = *re::graphicsLogObjects(v5);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        if (v23)
        {
          v20 = *&v24[7];
        }

        else
        {
          v20 = v24;
        }

        LODWORD(location[0]) = 136315138;
        *(location + 4) = v20;
        _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Failed to build material: %s.", location, 0xCu);
      }

      *a3 = 0;
    }

    if (v21[0] == 1)
    {
      if (v22)
      {
      }
    }

    else if (v22 && (v23 & 1) != 0)
    {
      (*(*v22 + 40))();
    }
  }

  else
  {
    v17 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Failed to build material. Builder not finished.", v21, 2u);
    }

    *a3 = 0;
  }
}

void *re::MaterialManager::destroyMaterial(_anonymous_namespace_ **a1, uint64_t a2, __int128 *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a1[112];
  v10 = *a3;
  v7 = *(a3 + 2);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *&v12 = a2;
  *v8 = &unk_1F5D060D0;
  *(v8 + 8) = a1;
  *(v8 + 16) = v10;
  v11[0] = 0;
  v11[1] = 0;
  *(v8 + 32) = v7;
  v11[2] = 0;
  *(v8 + 40) = v12;
  v15 = v8;
  re::RenderManager::addDelayedDestructorToRenderThread(v6, v13);
  re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(v13);
  return re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(v11);
}

void re::MaterialManager::createMaterialDefinition(uint64_t a1@<X0>, re::MaterialDefinitionBuilder *a2@<X1>, void *a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  re::MaterialDefinitionBuilder::result(a2, *(a1 + 896), v9);
  if (v9[0])
  {
    v5 = v10;
    *a3 = v10;
    if (v5)
    {
      v6 = (v5 + 8);
    }
  }

  else
  {
    v7 = *re::graphicsLogObjects(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (v11)
      {
        v8 = *&v12[7];
      }

      else
      {
        v8 = v12;
      }

      *buf = 136315138;
      v14 = v8;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Failed to build material definition : %s.", buf, 0xCu);
    }

    *a3 = 0;
  }

  if (v9[0] == 1)
  {
    if (v10)
    {
    }
  }

  else if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))();
  }
}

void re::MaterialManager::tryGetMaterialPipelineData(uint64_t *__return_ptr a1@<X8>, os_unfair_lock_s *this@<X0>, unint64_t a3@<X1>)
{
  os_unfair_lock_lock(this + 122);
  if (!*&this[110]._os_unfair_lock_opaque || (v6 = *(*&this[112]._os_unfair_lock_opaque + 4 * (a3 % this[116]._os_unfair_lock_opaque)), v6 == 0x7FFFFFFF))
  {
LABEL_6:
    *a1 = 0;
  }

  else
  {
    v7 = *&this[114]._os_unfair_lock_opaque;
    while (*(v7 + 24 * v6 + 8) != a3)
    {
      v6 = *(v7 + 24 * v6) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }

    v8 = *(v7 + 24 * v6 + 16);
    *a1 = v8;
    if (v8)
    {
      v9 = (v8 + 8);
    }
  }

  os_unfair_lock_unlock(this + 122);
}

void re::MaterialManager::installMaterialPipelineData(os_unfair_lock_s *a1, uint64_t *a2)
{
  os_unfair_lock_lock(a1 + 122);
  re::HashTable<unsigned long,re::SharedPtr<re::MaterialPipelineData>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(&a1[110], (*a2 + 152), a2);

  os_unfair_lock_unlock(a1 + 122);
}

uint64_t re::HashTable<unsigned long,re::SharedPtr<re::MaterialPipelineData>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long,re::SharedPtr<re::MaterialPipelineData>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addInternal<unsigned long const&,re::SharedPtr<re::MaterialPipelineData> const&>(a1, &v7, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 24 * HIDWORD(v8) + 16;
  }
}

_anonymous_namespace_ *re::MaterialManager::addSupportConstantsToArray(_anonymous_namespace_ *a1, int a2, int a3, int a4, int a5, int a6, char a7, int a8, uint64_t a9)
{
  if (a1)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a9, "EnableSamplerArray", &v20);
    a1 = v20;
    if (v20)
    {
      if (v21)
      {
        a1 = (*(*v20 + 40))();
      }
    }
  }

  if (a4)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a9, "EnableProgrammableBlending", &v20);
    a1 = v20;
    if (v20)
    {
      if (v21)
      {
        a1 = (*(*v20 + 40))();
      }
    }
  }

  if (a3)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a9, "SupportsQuadReduction", &v20);
    a1 = v20;
    if (v20)
    {
      if (v21)
      {
        a1 = (*(*v20 + 40))();
      }
    }
  }

  if (a5)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a9, "EnableCustomTextureArray", &v20);
    a1 = v20;
    if (v20)
    {
      if (v21)
      {
        a1 = (*(*v20 + 40))();
      }
    }
  }

  if (a2)
  {
    v16 = "true";
  }

  else
  {
    v16 = "false";
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a9, "SupportsCubeArray", &v20);
  result = v20;
  if (v20 && (v21 & 1) != 0)
  {
    result = (*(*v20 + 40))();
  }

  if (a8)
  {
    if (a6)
    {
      v18 = "true";
    }

    else
    {
      v18 = "false";
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a9, "EnablePrimitiveIdentifier", &v20);
    result = v20;
    if (v20 && (v21 & 1) != 0)
    {
      result = (*(*v20 + 40))();
    }

    if (a7)
    {
      v19 = "true";
      goto LABEL_34;
    }
  }

  else if (a7)
  {
    return result;
  }

  v19 = "false";
LABEL_34:
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a9, "EnableBarycentricCoordinates", &v20);
  result = v20;
  if (v20)
  {
    if (v21)
    {
      return (*(*v20 + 40))();
    }
  }

  return result;
}

BOOL re::MaterialManager::removeSystemMaterialParameterBlock(re::MaterialManager *this, uint64_t a2)
{
  v5 = a2;
  v3 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 1040, &v5);
  if (v3)
  {
    re::DataArray<re::MaterialParameterBlock>::destroy(this + 1088, *v3);
  }

  return re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 1040, &v5);
}

uint64_t (***re::DataArray<re::MaterialParameterBlock>::destroy(uint64_t a1, unint64_t a2))(void)
{
  v2 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 16;
  result = re::DataArray<re::MaterialParameterBlock>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    v6 = result;
    result = (**result)(result);
    v7 = *(a1 + 16);
    if (v7 <= HIWORD(v2))
    {
      v11 = 0;
      memset(v20, 0, sizeof(v20));
      v8 = MEMORY[0x1E69E9C10];
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v15 = 789;
      v16 = 2048;
      v17 = HIWORD(v2);
      v18 = 2048;
      v19 = v7;
      _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  return result;
}

uint64_t *re::MaterialManager::getSystemMaterialParameterBlock(re::MaterialManager *this, uint64_t a2)
{
  v4 = a2;
  result = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 1040, &v4);
  if (result)
  {
    return re::DataArray<re::MaterialParameterBlock>::tryGet(this + 1088, *result);
  }

  return result;
}

uint64_t re::DataArray<re::MaterialParameterBlock>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 1008 * a2;
  }

  else
  {
    return 0;
  }
}

uint64_t re::MaterialManager::getOrAddSystemMaterialParameterBlock(re::RenderManager **this, uint64_t a2)
{
  v6 = a2;
  v3 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet((this + 130), &v6);
  if (!v3)
  {
    v5 = re::DataArray<re::MaterialParameterBlock>::create<re::RenderManager *&>((this + 136), this + 112);
    re::HashTable<unsigned long long,re::DataArrayHandle<re::MaterialParameterBlock>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew((this + 130), &v6, &v5);
    v3 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet((this + 130), &v6);
  }

  return re::DataArray<re::MaterialParameterBlock>::tryGet((this + 136), *v3);
}

unint64_t re::DataArray<re::MaterialParameterBlock>::create<re::RenderManager *&>(uint64_t a1, re::RenderManager **a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  if ((v4 + 1) >> 24)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 + 1;
  }

  *(a1 + 56) = v5;
  v6 = *(a1 + 52);
  v7 = *(a1 + 54);
  if (v6 == 0xFFFF && v7 == 0xFFFF)
  {
    if (*(a1 + 48) >= *(a1 + 44))
    {
      re::DataArray<re::MaterialParameterBlock>::allocBlock(a1);
    }

    v12 = *(a1 + 16);
    v7 = (v12 - 1);
    if (v12)
    {
      v6 = *(a1 + 48);
      if (v6 < 0x10000)
      {
        v13 = (*(a1 + 32) + 16 * v7);
        *(a1 + 48) = v6 + 1;
        *(v13[1] + 4 * v6) = *(a1 + 56);
        v11 = (*v13 + 1008 * v6);
        goto LABEL_15;
      }

LABEL_24:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v6);
      _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v20);
      __break(1u);
    }

LABEL_20:
    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v27 = 789;
    v28 = 2048;
    v29 = v7;
    v30 = 2048;
    v31 = 0;
    _os_log_send_and_compose_impl(v19, &v23, &v32, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v21, v22);
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v9 = *(a1 + 16);
  if (v9 <= v7)
  {
    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v27 = 789;
    v28 = 2048;
    v29 = v7;
    v30 = 2048;
    v31 = v9;
    _os_log_send_and_compose_impl(v16, &v23, &v32, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v21, v22);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  v10 = (*(a1 + 32) + 16 * v7);
  *(v10[1] + 4 * v6) = v5;
  v11 = (*v10 + 1008 * v6);
  *(a1 + 52) = *v11;
LABEL_15:
  ++*(a1 + 40);
  re::MaterialParameterBlock::MaterialParameterBlock(v11, *a2);
  return ((v7 << 16) | ((*(a1 + 56) & 0xFFFFFF) << 32)) + v6;
}