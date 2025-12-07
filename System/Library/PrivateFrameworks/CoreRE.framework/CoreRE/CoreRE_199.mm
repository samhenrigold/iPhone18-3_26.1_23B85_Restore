uint64_t re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::DrawCallMeshPartsDetails::PerMeshPartDetails *,re::DrawCallMeshPartsDetails::PerMeshPartDetails *,re::DrawCallMeshPartsDetails::PerMeshPartDetails *>(*(a2 + 32), (*(a2 + 32) + 56 * a1[2]), a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = v9 + 56 * v4;
      v11 = a1[4];
      v12 = 56 * v8;
      do
      {
        v13 = v9 + v12;
        v14 = v11 + v12;
        *v14 = *(v9 + v12);
        v15 = *(v9 + v12 + 8);
        *(v14 + 8) = v15;
        if (v15 == 1)
        {
          re::DynamicString::DynamicString((v14 + 16), (v13 + 16));
        }

        v16 = *(v13 + 48);
        *(v14 + 48) = v16;
        if (v16 == 1)
        {
          *(v11 + v12 + 52) = *(v9 + v12 + 52);
        }

        v9 += 56;
        v11 += 56;
      }

      while (v13 + 56 != v10);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::DrawCallMeshPartsDetails::PerMeshPartDetails *,re::DrawCallMeshPartsDetails::PerMeshPartDetails *,re::DrawCallMeshPartsDetails::PerMeshPartDetails *>(*(a2 + 32), (*(a2 + 32) + 56 * v4), a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = -56 * v4 + 56 * v5;
      v7 = (56 * v4 + a1[4] + 16);
      do
      {
        if (*(v7 - 8) == 1)
        {
          re::DynamicString::deinit(v7);
        }

        v7 = (v7 + 56);
        v6 -= 56;
      }

      while (v6);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x38uLL))
        {
          v2 = 56 * a2;
          result = (*(*result + 32))(result, 56 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_22;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 56, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v20, v22);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v21, v23);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_22:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 56 * v9);
        v11 = (v8 + 32);
        v12 = v7 + 4;
        do
        {
          v13 = v11 - 4;
          *(v12 - 4) = *(v11 - 4);
          v14 = *(v11 - 24);
          *(v12 - 24) = v14;
          if (v14 == 1)
          {
            *(v12 - 1) = 0u;
            *v12 = 0u;
            v12[1] = v11[1];
            v15 = *(v11 - 1);
            *(v12 - 2) = *(v11 - 2);
            *(v11 - 2) = 0;
            v16 = *v11;
            v11[1] = 0;
            v18 = *(v12 - 1);
            v17 = *v12;
            *(v12 - 1) = v15;
            *v12 = v16;
            *(v11 - 1) = v18;
            *v11 = v17;
          }

          v19 = *(v11 + 16);
          *(v12 + 16) = v19;
          if (v19 == 1)
          {
            *(v12 + 5) = *(v11 + 5);
          }

          if (*(v11 - 24) == 1)
          {
            re::DynamicString::deinit((v11 - 2));
          }

          v11 += 7;
          v12 += 7;
        }

        while (v13 + 7 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_22;
    }
  }

  return result;
}

_BYTE *std::__copy_impl::operator()[abi:nn200100]<re::DrawCallMeshPartsDetails::PerMeshPartDetails *,re::DrawCallMeshPartsDetails::PerMeshPartDetails *,re::DrawCallMeshPartsDetails::PerMeshPartDetails *>(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = a3 + 48;
    v5 = result + 52;
    do
    {
      *(v4 - 48) = *(v5 - 13);
      v6 = v5 - 11;
      result = re::Optional<re::DynamicString>::operator=((v4 - 40), v5 - 44);
      if (*v4)
      {
        if (*(v5 - 1))
        {
          goto LABEL_8;
        }

        *v4 = 0;
      }

      else if (*(v5 - 1))
      {
        *v4 = 1;
LABEL_8:
        *(v4 + 4) = *v5;
      }

      v4 += 56;
      v5 += 14;
    }

    while (v6 + 12 != a2);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::DrawCallRecorderGroup::SortingContext>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::DrawCallRecorderGroup::SortingContext>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA0uLL))
        {
          v2 = 160 * a2;
          result = (*(*result + 32))(result, 160 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 160, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v20, v22);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v21, v23);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 160 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v16 = *(v8 + 64);
          v17 = *(v8 + 80);
          v18 = *(v8 + 112);
          *(v11 + 6) = *(v8 + 96);
          *(v11 + 7) = v18;
          *(v11 + 4) = v16;
          *(v11 + 5) = v17;
          v19 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v19;
          LODWORD(v13) = *(v8 + 128);
          *(v11 + 128) = v13;
          if (v13 == 1)
          {
            *(v11 + 9) = *(v8 + 144);
          }

          re::DynamicString::deinit(v8);
          v8 += 160;
          v11 += 20;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_22, 4 * v10);
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

void *re::DynamicArray<re::EncodedDrawCallDetails>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::EncodedDrawCallDetails>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x158uLL))
        {
          v2 = 344 * a2;
          result = (*(*result + 32))(result, 344 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_26;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 344, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v47, v49);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v48, v50);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_26:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 0;
        v11 = 344 * v9;
        v12 = 0uLL;
        do
        {
          v13 = v8 + v10;
          v14 = &v7[v10 / 8];
          *v14 = v12;
          *(v14 + 1) = v12;
          v14[3] = *(v8 + v10 + 24);
          v15 = *(v8 + v10 + 8);
          *v14 = *(v8 + v10);
          *v13 = 0;
          v16 = *(v8 + v10 + 16);
          *(v13 + 24) = 0;
          v18 = v7[v10 / 8 + 1];
          v17 = v7[v10 / 8 + 2];
          v14[1] = v15;
          v14[2] = v16;
          *(v13 + 8) = v18;
          *(v13 + 16) = v17;
          *(v14 + 2) = v12;
          *(v14 + 3) = v12;
          v14[4] = *(v8 + v10 + 32);
          *(v8 + v10 + 32) = 0;
          v14[7] = *(v8 + v10 + 56);
          *(v13 + 56) = 0;
          v20 = v7[v10 / 8 + 5];
          v19 = v7[v10 / 8 + 6];
          v21 = *(v8 + v10 + 48);
          v14[5] = *(v8 + v10 + 40);
          v14[6] = v21;
          *(v13 + 40) = v20;
          *(v13 + 48) = v19;
          *(v14 + 4) = v12;
          *(v14 + 5) = v12;
          v14[8] = *(v8 + v10 + 64);
          *(v8 + v10 + 64) = 0;
          v14[11] = *(v8 + v10 + 88);
          *(v13 + 88) = 0;
          v23 = v7[v10 / 8 + 9];
          v22 = v7[v10 / 8 + 10];
          v24 = *(v8 + v10 + 80);
          v14[9] = *(v8 + v10 + 72);
          v14[10] = v24;
          *(v13 + 72) = v23;
          *(v13 + 80) = v22;
          LODWORD(v22) = *(v8 + v10 + 96);
          *(v14 + 96) = v22;
          if (v22 == 1)
          {
            v25 = *(v13 + 104);
            v26 = *(v13 + 120);
            v27 = *(v13 + 136);
            *(v14 + 38) = *(v13 + 152);
            *(v14 + 17) = v27;
            *(v14 + 15) = v26;
            *(v14 + 13) = v25;
            v28 = *(v13 + 156);
            *(v14 + 156) = v28;
            if (v28 == 1)
            {
              BYTE5(v7[v10 / 8 + 19]) = *(v8 + v10 + 157);
            }

            v29 = &v7[v10 / 8];
            v30 = v8 + v10;
            v29[24] = 0;
            v29[21] = 0;
            v29[22] = 0;
            v29[20] = 0;
            *(v29 + 46) = 0;
            v31 = *(v8 + v10 + 168);
            v29[20] = *(v8 + v10 + 160);
            v29[21] = v31;
            *(v30 + 160) = 0;
            *(v30 + 168) = 0;
            v32 = v7[v10 / 8 + 22];
            v29[22] = *(v8 + v10 + 176);
            *(v30 + 176) = v32;
            v33 = v7[v10 / 8 + 24];
            v29[24] = *(v8 + v10 + 192);
            *(v30 + 192) = v33;
            *(v30 + 184) = *(v8 + v10 + 184) + 1;
            *(v29 + 46) = LODWORD(v7[v10 / 8 + 23]) + 1;
          }

          v34 = *(v13 + 200);
          v35 = *(v13 + 216);
          v36 = *(v13 + 232);
          *(v14 + 31) = v12;
          v37 = v14 + 31;
          *(v37 - 2) = v35;
          *(v37 - 1) = v36;
          *(v37 - 3) = v34;
          *(v37 + 1) = v12;
          *v37 = *(v13 + 248);
          *(v13 + 248) = 0;
          v37[3] = *(v13 + 272);
          *(v13 + 272) = 0;
          v39 = v37[1];
          v38 = v37[2];
          v40 = *(v13 + 264);
          v37[1] = *(v13 + 256);
          v37[2] = v40;
          *(v13 + 256) = v39;
          *(v13 + 264) = v38;
          LODWORD(v38) = *(v13 + 280);
          *(v37 + 32) = v38;
          if (v38 == 1)
          {
            v41 = v8 + v10;
            v42 = *(v8 + v10 + 288);
            v43 = &v7[v10 / 8];
            v43[41] = 0;
            v43[36] = v42;
            v43[37] = 0;
            v43[38] = 0;
            v43[39] = 0;
            *(v43 + 80) = 0;
            v44 = *(v8 + v10 + 304);
            v43[37] = *(v8 + v10 + 296);
            v43[38] = v44;
            *(v41 + 296) = 0;
            *(v41 + 304) = 0;
            v45 = v7[v10 / 8 + 39];
            v43[39] = *(v8 + v10 + 312);
            *(v41 + 312) = v45;
            v46 = v7[v10 / 8 + 41];
            v43[41] = *(v8 + v10 + 328);
            *(v41 + 328) = v46;
            *(v41 + 320) = *(v8 + v10 + 320) + 1;
            *(v43 + 80) = LODWORD(v7[v10 / 8 + 40]) + 1;
            LOBYTE(v46) = *(v13 + 280);
            *(v43 + 336) = *(v8 + v10 + 336);
            if (v46)
            {
              re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(v41 + 296);
            }
          }

          else
          {
            LOBYTE(v7[v10 / 8 + 42]) = *(v8 + v10 + 336);
          }

          re::DynamicString::deinit((v13 + 248));
          if (*(v13 + 96) == 1)
          {
            re::DynamicArray<unsigned long>::deinit(v8 + v10 + 160);
          }

          re::DynamicString::deinit((v8 + v10 + 64));
          re::DynamicString::deinit((v8 + v10 + 32));
          re::DynamicString::deinit((v8 + v10));
          v10 += 344;
          v12 = 0uLL;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_26;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::DrawCallRecorderGroup::SortingContext>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::DrawCallRecorderGroup::SortingContext>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::DrawCallRecorderGroup::SortingContext>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + (v6 << 6) + 4) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + (v6 << 6)) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + (v8 << 6) + 4) == *a2)
      {
        break;
      }

      v8 = *(v7 + (v8 << 6)) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(v30, v9, v8);
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
            v17 = 32;
            do
            {
              if ((*(*&v30[16] + v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, *(*&v30[16] + v17 + 24) % *(a1 + 24), *(*&v30[16] + v17 + 24));
                v19 = *&v30[16] + v17;
                *(v18 + 4) = *(*&v30[16] + v17 - 28);
                v20 = *(v19 - 24);
                *(v18 + 48) = 0;
                *(v18 + 8) = v20;
                *(v18 + 16) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 40) = 0;
                v21 = *(v19 - 8);
                *(v18 + 16) = *(v19 - 16);
                *(v18 + 24) = v21;
                *(v19 - 16) = 0;
                *(v19 - 8) = 0;
                v22 = *(v18 + 32);
                *(v18 + 32) = *v19;
                *v19 = v22;
                v23 = *(v18 + 48);
                *(v18 + 48) = *(v19 + 16);
                *(v19 + 16) = v23;
                ++*(v19 + 8);
                ++*(v18 + 40);
                v15 = *&v30[32];
              }

              ++v16;
              v17 += 64;
            }

            while (v16 < v15);
          }

          re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v30);
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

double re::ConstantSetupHelper::populateInstanceConstants(uint64_t a1, uint64_t a2, float32x4_t *a3, int a4, float a5)
{
  v12 = *a2;
  v8 = vsubq_f32(*(a2 + 48), *a3);
  v8.i32[3] = HIDWORD(*(a2 + 48));
  *a1 = *a2;
  *(a1 + 16) = v12.columns[1];
  *(a1 + 32) = v12.columns[2];
  *(a1 + 48) = v8;
  v13 = __invert_f3(v12);
  v9 = vdupq_laneq_s32(v13.columns[0], 2);
  *(a1 + 72) = v13.columns[2].i32[0];
  v10 = vzip1q_s32(v13.columns[0], v13.columns[1]).u64[0];
  *&result = vtrn2q_s32(v13.columns[0], v13.columns[1]).u64[0];
  *(a1 + 64) = v10;
  *(a1 + 88) = v13.columns[2].i32[1];
  *(a1 + 80) = result;
  *(a1 + 104) = v13.columns[2].i32[2];
  *(a1 + 96) = vzip1q_s32(v9, vdupq_laneq_s32(v13.columns[1], 2)).u64[0];
  *(a1 + 116) = a5;
  *(a1 + 120) = a4;
  return result;
}

double re::ConstantSetupHelper::populateViewConstants(uint64_t a1, float32x4_t *a2, simd_float4 *a3, _OWORD *a4, float32x4_t *a5, uint64_t a6, int a7, uint64_t a8, int32x2_t a9, int32x2_t a10, int32x2_t a11, int32x2_t a12, _OWORD *a14, int32x2_t arg10, unsigned __int8 a15, int a16, _OWORD *a17)
{
  v25 = 0;
  v26 = *a5;
  v26.i32[3] = 1.0;
  v27 = *a2;
  v28 = a2[1];
  v29 = a2[2];
  v30 = a2[3];
  v80 = xmmword_1E3047670;
  v81 = xmmword_1E3047680;
  v82 = xmmword_1E30476A0;
  v83 = v26;
  do
  {
    *(&v84 + v25) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*(&v80 + v25))), v28, *(&v80 + v25), 1), v29, *(&v80 + v25), 2), v30, *(&v80 + v25), 3);
    v25 += 16;
  }

  while (v25 != 64);
  v31 = v85;
  v32 = v86;
  v33 = v87;
  *a1 = v84;
  *(a1 + 16) = v31;
  *(a1 + 32) = v32;
  *(a1 + 48) = v33;
  v34 = *a3;
  v35 = a3[1];
  v36 = a3[3];
  *(a1 + 544) = a3[2];
  *(a1 + 560) = v36;
  *(a1 + 512) = v34;
  *(a1 + 528) = v35;
  v88.columns[2] = a3[2];
  v88.columns[3] = a3[3];
  v88.columns[0] = *a3;
  v88.columns[1] = a3[1];
  v89 = __invert_f4(v88);
  v37 = 0;
  *(a1 + 640) = v89;
  v38 = *a3;
  v39 = a3[1];
  v40 = a3[2];
  v41 = a3[3];
  v42 = *(a1 + 16);
  v43 = *(a1 + 32);
  v44 = *(a1 + 48);
  v80 = *a1;
  v81 = v42;
  v82 = v43;
  v83 = v44;
  do
  {
    *(&v84 + v37) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*(&v80 + v37))), v39, *(&v80 + v37), 1), v40, *(&v80 + v37), 2), v41, *(&v80 + v37), 3);
    v37 += 16;
  }

  while (v37 != 64);
  v45 = v85;
  v46 = v86;
  v47 = v87;
  *(a1 + 256) = v84;
  *(a1 + 272) = v45;
  *(a1 + 288) = v46;
  *(a1 + 304) = v47;
  v90 = __invert_f4(*a2->f32);
  *(a1 + 768) = vsubq_f32(v90.columns[3], *a5);
  *(a1 + 832) = *a4;
  *v90.columns[1].f32 = vcvt_f32_s32(a6);
  __asm { FMOV            V8.2S, #1.0 }

  *&v90.columns[1].u32[2] = vdiv_f32(_D8, *v90.columns[1].f32);
  *(a1 + 864) = *a4;
  *(a1 + 880) = v90.columns[1];
  if (a7 >= 2)
  {
    v53 = 0;
    v54 = *a5;
    v54.i32[3] = 1.0;
    v55 = a2[4];
    v56 = a2[5];
    v57 = a2[6];
    v58 = a2[7];
    v80 = xmmword_1E3047670;
    v81 = xmmword_1E3047680;
    v82 = xmmword_1E30476A0;
    v83 = v54;
    do
    {
      *(&v84 + v53) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55, COERCE_FLOAT(*(&v80 + v53))), v56, *(&v80 + v53), 1), v57, *(&v80 + v53), 2), v58, *(&v80 + v53), 3);
      v53 += 16;
    }

    while (v53 != 64);
    v59 = v85;
    v60 = v86;
    v61 = v87;
    *(a1 + 64) = v84;
    *(a1 + 80) = v59;
    *(a1 + 96) = v60;
    *(a1 + 112) = v61;
    v62 = a3[4];
    v63 = a3[5];
    v64 = a3[7];
    *(a1 + 608) = a3[6];
    *(a1 + 624) = v64;
    *(a1 + 576) = v62;
    *(a1 + 592) = v63;
    v91 = __invert_f4(*a3[4].f32);
    v65 = 0;
    *(a1 + 704) = v91;
    v66 = a3[4];
    v67 = a3[5];
    v68 = a3[6];
    v69 = a3[7];
    v70 = *(a1 + 80);
    v71 = *(a1 + 96);
    v72 = *(a1 + 112);
    v80 = *(a1 + 64);
    v81 = v70;
    v82 = v71;
    v83 = v72;
    do
    {
      *(&v84 + v65) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v66, COERCE_FLOAT(*(&v80 + v65))), v67, *(&v80 + v65), 1), v68, *(&v80 + v65), 2), v69, *(&v80 + v65), 3);
      v65 += 16;
    }

    while (v65 != 64);
    v73 = v85;
    v74 = v86;
    v75 = v87;
    *(a1 + 320) = v84;
    *(a1 + 336) = v73;
    *(a1 + 352) = v74;
    *(a1 + 368) = v75;
    v92 = __invert_f4(*a2[4].f32);
    *(a1 + 784) = vsubq_f32(v92.columns[3], *a5);
    *(a1 + 848) = a4[1];
  }

  *(a1 + 912) = *(a8 + 4);
  *(a1 + 936) = *(a8 + 48);
  v76 = *(a8 + 36);
  HIDWORD(v76) = *a8;
  *(a1 + 928) = v76;
  *(a1 + 940) = a7;
  *(a1 + 944) = a15;
  *(a1 + 952) = a16;
  *&v77 = vcvt_f32_s32(a12);
  *(&v77 + 1) = vdiv_f32(_D8, *&v77);
  *(a1 + 896) = v77;
  *&v77 = vcvt_f32_s32(a14);
  *(&v77 + 1) = vdiv_f32(_D8, *&v77);
  *&v78 = vcvt_f32_s32(arg10);
  *(&v78 + 1) = vdiv_f32(_D8, *&v78);
  *(a1 + 800) = v77;
  *(a1 + 816) = v78;
  *(a1 + 960) = *a17;
  *(a1 + 976) = 0;
  result = 0.0;
  *(a1 + 992) = 0u;
  return result;
}

void re::DebugSettingsManager::init(re::DebugSettingsManager *this)
{
  re::DebugSettingsManager::registerSetting(this, 0x1E695FCE1494EB4ALL, "SampleValue1");
  re::DebugSettingsManager::registerSetting(this, 0x1E695FCE1494EB4BLL, "SampleValue2");
  re::DebugSettingsManager::registerSetting(this, 0x1E695FCE1494EB4CLL, "SampleValue3");
  re::DebugSettingsManager::registerSetting(this, 0x4AD3ADA1EAB6A46BLL, "overrides:enableHeadPoseLateLatching");
  re::DebugSettingsManager::registerSetting(this, 0x25B9E8AA8E91FF52, "overrides:useLegacyHeadPoseLateLatching");
  re::DebugSettingsManager::registerSetting(this, 0x15F23EC33CDB440FLL, "overrides:enableAnchorLateLatching");
  re::DebugSettingsManager::registerSetting(this, 0x4EB14AA23FAD13D1, "overrides:enableVisualDepthLateLatching");
  re::DebugSettingsManager::registerSetting(this, 0x377411C73B00B0F8, "overrides:enableclipping");
  re::DebugSettingsManager::registerSetting(this, 0x2AB792EDE7CD178CLL, "overrides:enablelightspill");
  re::DebugSettingsManager::registerSetting(this, 0x2C3D5D608048D8D0, "overrides:enablemeshshadows");
  re::DebugSettingsManager::registerSetting(this, 0x1C5ED07EF8B1877CLL, "overrides:enablemsaa");
  re::DebugSettingsManager::registerSetting(this, 0x1ABF41F98C193A4CLL, "overrides:msaasamplecount");
  re::DebugSettingsManager::registerSetting(this, 0x7DA8E7CFE5E8985DLL, "overrides:enableshadows");
  re::DebugSettingsManager::registerSetting(this, 0x1C60553B9660D93ALL, "overrides:usepbrlite");
  re::DebugSettingsManager::registerSetting(this, 0x3FD3AE66E8662563, "overrides:disablefrustumculling");
  re::DebugSettingsManager::registerSetting(this, 0x7A9F53C31F88016FLL, "overrides:disablelightfrustumculling");
  re::DebugSettingsManager::registerSetting(this, 0x20BF5606F6EDF2D7, "clipping:featherOverride");
  re::DebugSettingsManager::registerSetting(this, 0x7AF1C433BF713161, "clipping:disableDepthPrePass");
  re::DebugSettingsManager::registerSetting(this, 0x2C7C0E471869E350, "colorpipe:forcePreBlend");
  re::DebugSettingsManager::registerSetting(this, 0x630A53FA5817C202, "colorpipe:forceColorGamutConvert");
  re::DebugSettingsManager::registerSetting(this, 0x502716179914D977, "colorpipe:workingColorGamut");
  re::DebugSettingsManager::registerSetting(this, 0x38C545178E73EAF7, "colorpipe:targetDisplayColorGamut");
  re::DebugSettingsManager::registerSetting(this, 0x6CC2286D20547545, "colorpipe:forcePosBlendLUTBake");
  re::DebugSettingsManager::registerSetting(this, 0x175E06519841ED78, "colorpipe:disableContentAwareTonemapping");
  re::DebugSettingsManager::registerSetting(this, 0x2F894448D9085DE7, "colorpipe:imageStatisticsFrequency");
  re::DebugSettingsManager::registerSetting(this, 0x2554488D45CBA96BLL, "colorpipe:colorRangeScaler");
  re::DebugSettingsManager::registerSetting(this, 0x52774F1B8DD45737, "colorpipe:disablePreBlendLUTBake");
  re::DebugSettingsManager::registerSetting(this, 0x1E67F4ED4713694ALL, "colorpipe:trueToneStrength");
  re::DebugSettingsManager::registerSetting(this, 0x7F70D00B486A24A2, "colorpipe:wpcStrength");
  re::DebugSettingsManager::registerSetting(this, 0x1EAB16688C877DF0, "colorpipe:tonemapOverrideMode");
  re::DebugSettingsManager::registerSetting(this, 0x6D988F94BB033466, "colorpipe:tonemapGamma");
  re::DebugSettingsManager::registerSetting(this, 0x32978C057688C12ALL, "colorpipe:tonemapToeStrength");
  re::DebugSettingsManager::registerSetting(this, 0x48E8FB59BA9AD20FLL, "colorpipe:tonemapToeLength");
  re::DebugSettingsManager::registerSetting(this, 0x25FBDC400F30F7E2, "colorpipe:tonemapShoulderStrength");
  re::DebugSettingsManager::registerSetting(this, 0x5637679686D156C7, "colorpipe:tonemapShoulderLength");
  re::DebugSettingsManager::registerSetting(this, 0x5D9EB0C2C9F3DCD2, "colorpipe:tonemapShoulderAngle");
  re::DebugSettingsManager::registerSetting(this, 0x4CACACD82121E5E3, "colorpipe:tonemapContrast");
  re::DebugSettingsManager::registerSetting(this, 0x4CACACE6D0204FE8, "colorpipe:tonemapExposure");
  re::DebugSettingsManager::registerSetting(this, 0x6679CD83635919C5, "colorpipe:tonemapEnableExposureCompensation");
  re::DebugSettingsManager::registerSetting(this, 0x428391350F7F6E94, "colorpipe:tonemapExposureCompensationInputScalar");
  re::DebugSettingsManager::registerSetting(this, 0x11A9D51E128E0A5FLL, "colorpipe:tonemapExposureCompensationTargetScalar");
  re::DebugSettingsManager::registerSetting(this, 0x3DEA5983EAEB4337, "colorpipe:rabEnabled");
  re::DebugSettingsManager::registerSetting(this, 0x1276DF3FA3527408, "colorpipe:rabSystemScalarMode");
  re::DebugSettingsManager::registerSetting(this, 0x3DEA59856A607C24, "colorpipe:rabLuxGain");
  re::DebugSettingsManager::registerSetting(this, 0x64059CB469905377, "colorpipe:rabMinEnvironmentScalar");
  re::DebugSettingsManager::registerSetting(this, 0x4B4DDC3FA9F01AA5, "colorpipe:rabMaxEnvironmentScalar");
  re::DebugSettingsManager::registerSetting(this, 0x6D2A866E39BA831DLL, "colorpipe:imageStatisticsMin");
  re::DebugSettingsManager::registerSetting(this, 0x6D2A866E39BA822FLL, "colorpipe:imageStatisticsMax");
  re::DebugSettingsManager::registerSetting(this, 0x38264758FD95D05ALL, "colorpipe:imageStatisticsMean");
  re::DebugSettingsManager::registerSetting(this, 0x47B1D50FFA746247, "colorpipe:imageStatisticsStdDev");
  re::DebugSettingsManager::registerSetting(this, 0x1D1D63010E18A40ALL, "colorpipe:clippingPointLux");
  re::DebugSettingsManager::registerSetting(this, 0x5989E972902BAB62, "colorpipe:enableISPTonemapping");
  re::DebugSettingsManager::registerSetting(this, 0x9C4892E9E03230CLL, "blur:passthroughTextureWidth");
  re::DebugSettingsManager::registerSetting(this, 0x220D61ADD8F199ACLL, "blur:VCATextureWidth");
  re::DebugSettingsManager::registerSetting(this, 0x1FB904B04FA1795DLL, "blur:VCABlurSigma");
  re::DebugSettingsManager::registerSetting(this, 0x5D4B845A085A0FF7, "blur:VCABlurExpansion");
  re::DebugSettingsManager::registerSetting(this, 0x60A28BD5A634C468, "blur:passthroughMaterialSkipCount");
  re::DebugSettingsManager::registerSetting(this, 0x75DFB04BBB876FC1, "blur:passthroughMaterialSkipThresholdDeltaTime");
  re::DebugSettingsManager::registerSetting(this, 0x12122C2FF38B84B5, "blur:filter.luminance");
  re::DebugSettingsManager::registerSetting(this, 0x5B6BF0ADE3CC67A5, "blur:filter.contrast");
  re::DebugSettingsManager::registerSetting(this, 0x3033F2CDEF57B3B5, "blur:filter.saturation");
  re::DebugSettingsManager::registerSetting(this, 0x2AE6078D60D13CLL, "blur:taaMixValue.passthrough");
  re::DebugSettingsManager::registerSetting(this, 0x387CA5FE27B41EFCLL, "blur:taaMixValue.vca");
  re::DebugSettingsManager::registerSetting(this, 0x9D4C53427E48C13, "blur:enableReprojectionLerping");
  re::DebugSettingsManager::registerSetting(this, 0x19CC93554F9D8913, "blur:showUnblurredPassthrough");
  re::DebugSettingsManager::registerSetting(this, 0x1B6C5B035E27EC2ELL, "blur:showUnblurredVC");
  re::DebugSettingsManager::registerSetting(this, 0x71954FC3B18DE725, "overdraw:enable");
  re::DebugSettingsManager::registerSetting(this, 0x3ED82E3206C6B68DLL, "fallbackRenderingMode");
  re::DebugSettingsManager::registerSetting(this, 0x2BEEBA4D72CED6EALL, "overrides:enableRenderOnTop");
  re::DebugSettingsManager::registerSetting(this, 0x54F6EAFC70854159, "renderOnTop:debug");
  re::DebugSettingsManager::registerSetting(this, 0x5CB05A5A574850FDLL, "meshnode:debugMeshPartBounds");
  re::DebugSettingsManager::registerSetting(this, 0x6B60467DFF21ACC2, "meshnode:debugDrawOrder");
  re::DebugSettingsManager::registerSetting(this, 0x794CBF01D1C56756, "meshsorting:enableDepthBias");
  re::DebugSettingsManager::registerSetting(this, 0x2CB0643D1840A119, "meshsorting:visualizeRPGSortPoints");
  re::DebugSettingsManager::registerSetting(this, 0x1E315F23B2A11300, "meshshadow:visualizeClusters");
  re::DebugSettingsManager::registerSetting(this, 0x136E7B3046509F21, "meshshadow:visualizeClusterInfo");
  re::DebugSettingsManager::registerSetting(this, 0x1E315F6179C04EA1, "meshshadow:visualizeMatrices");
  re::DebugSettingsManager::registerSetting(this, 0x472AE20CAF4B812CLL, "meshshadow:visualizeShadows");
  re::DebugSettingsManager::registerSetting(this, 0x2B96074AB66EFC9ELL, "meshshadow:visualizePlanes");
  re::DebugSettingsManager::registerSetting(this, 0x2D1098146373A2BCLL, "meshshadow:visualizeCullBoundingBoxes");
  re::DebugSettingsManager::registerSetting(this, 0x242CDC5539CF210ELL, "meshshadow:enableShadowFlattening");
  re::DebugSettingsManager::registerSetting(this, 0x16A242FF8584ABC0, "meshshadow:enableMeshDepthFallbackWhenFlattening");
  re::DebugSettingsManager::registerSetting(this, 0x2E961E6192BE15DDLL, "meshshadow:enableShadowOcclusion");
  re::DebugSettingsManager::registerSetting(this, 0xA57CE2FDA58C3E7, "meshshadow:shadowOcclusionTextureResolution");
  re::DebugSettingsManager::registerSetting(this, 0x472AE20BF3D51A20, "meshshadow:visualizeOverlap");
  re::DebugSettingsManager::registerSetting(this, 0x458046F7842C25BDLL, "meshshadow:enableMaxBlend");
  re::DebugSettingsManager::registerSetting(this, 0x5AA655D01423B2B8, "meshshadow:visualizeDepthPrepass");
  re::DebugSettingsManager::registerSetting(this, 0x379650D977CA4D1BLL, "meshshadow:textureGenerationNominalDequeueSize");
  re::DebugSettingsManager::registerSetting(this, 0x568D19638A7BE013, "meshshadow:textureGenerationWorkDivisionFactor");
  re::DebugSettingsManager::registerSetting(this, 0x5F74E73501260C1CLL, "meshshadow:textureGenerationEnableViewFrustumCulling");
  re::DebugSettingsManager::registerSetting(this, 0x40135D59ACCBFE38, "meshshadow:enableSUMeshCullingPerCaster");
  re::DebugSettingsManager::registerSetting(this, 0x56C83116F1263190, "meshshadow:enableShadow");
  re::DebugSettingsManager::registerSetting(this, 0x7F88A24B37E0733FLL, "meshshadow:enableWallShadowsBreakthrough");
  re::DebugSettingsManager::registerSetting(this, 0x2F426543A7EF4E28, "meshshadow:uiWallShadowIntensity");
  re::DebugSettingsManager::registerSetting(this, 0x12301713BFF1C3D1, "perceptualBlendingMode");
  re::DebugSettingsManager::registerSetting(this, 0x643E337A47167255, "opensky:drawPlane");
  re::DebugSettingsManager::registerSetting(this, 0x6F31DA471DA5C50FLL, "globaldirectionallight");
  re::DebugSettingsManager::registerSetting(this, 0x5836EF7F6CEC8E5CLL, "iblshadow:distanceforglobaldirectionallight");
  re::DebugSettingsManager::registerSetting(this, 0x70AA9AC19D8788F9, "imageBasedReflectionSystem:debugLog");
  re::DebugSettingsManager::registerSetting(this, 0x3FDAE28DD02622EBLL, "imageBasedLight:systemIBLIntensity");
  re::DebugSettingsManager::registerSetting(this, 0x1ADFD9400DB95D0ALL, "environment:visualizeFeatherRegion");
  re::DebugSettingsManager::registerSetting(this, 0x1D04501948780AE9, "environment:applyColorAdjustment");
  re::DebugSettingsManager::registerSetting(this, 0x12B330E83CA6F40ALL, "environment:colorAdjustGain");
  re::DebugSettingsManager::registerSetting(this, 0x32AA97CBBCA6165ELL, "environment:colorAdjustOffset");
  re::DebugSettingsManager::registerSetting(this, 0x43B2EC1F58379C7CLL, "environment:colorAdjustGamma");
  re::DebugSettingsManager::registerSetting(this, 0x2BC5F7FD468DE8B3, "overrides:enableDepthDither");
  re::DebugSettingsManager::registerSetting(this, 0x2117A23260761480, "drawcallrecording:takeSnapshotNow");
  re::DebugSettingsManager::registerSetting(this, 0xC27DA287CEDDB9CLL, "drawcallrecording:record");
  v2 = re::internal::compileTimeHornerHash<54ul>(0, 0, 53);
  re::DebugSettingsManager::registerSetting(this, v2 & 0x7FFFFFFFFFFFFFFFLL, "overrides:enableStaticOcclusionFadeTechniquesOverride");
  v3 = re::internal::compileTimeHornerHash<49ul>(0, 0, 48);
  re::DebugSettingsManager::registerSetting(this, v3 & 0x7FFFFFFFFFFFFFFFLL, "overrides:enableStaticOcclusionShaderCalculation");
  v4 = re::internal::compileTimeHornerHash<15ul>(31, "overrides:enableRendersToFarPlane", 0, 0, 33);
  re::DebugSettingsManager::registerSetting(this, v4 & 0x7FFFFFFFFFFFFFFFLL, "overrides:enableRendersToFarPlane");
  v5 = re::internal::compileTimeHornerHash<53ul>(0, 0, 52);
  re::DebugSettingsManager::registerSetting(this, v5 & 0x7FFFFFFFFFFFFFFFLL, "overrides:enableStaticOcclusionFarDistanceMitigation");
  *(this + 112) = 1;
}

void re::DebugSettingsManager::registerSetting(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 2 * a2;
  v9 = a3;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v4 = 0xBF58476D1CE4E5B9 * (a2 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * a2) >> 31));
  v5 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, &v8, (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v6 = re::HashTable<re::StringID,re::Optional<std::variant<int,float,BOOL>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
    v7 = v9;
    *(v6 + 8) = v8;
    *(v6 + 16) = v7;
    *(v6 + 24) = 0;
    ++*(a1 + 40);
  }

  else if (v8)
  {
    if (v8)
    {
    }
  }
}

uint64_t re::HashTable<re::StringID,re::Optional<std::variant<int,float,BOOL>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v31, 0, 36);
          *&v31[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v31, v9, v8);
          v11 = *v31;
          *v31 = *a1;
          *a1 = v11;
          v12 = *&v31[16];
          v13 = *(a1 + 16);
          *&v31[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v31[24];
          *&v31[24] = *(a1 + 24);
          v14 = *&v31[32];
          *(a1 + 24) = v15;
          ++*&v31[40];
          if (v14)
          {
            v16 = 0;
            v17 = 0;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = v13 + v16;
                v19 = 0xBF58476D1CE4E5B9 * ((*(v13 + v16 + 8) >> 31) ^ (*(v13 + v16 + 8) >> 1));
                v20 = (0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31);
                v21 = re::HashTable<re::StringID,re::Optional<std::variant<int,float,BOOL>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v20 % *(a1 + 24), v20);
                v22 = *(v18 + 8);
                *(v21 + 8) = *(v21 + 8) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                *(v21 + 8) = *(v18 + 8) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                *(v21 + 16) = *(v18 + 16);
                *(v18 + 8) = 0;
                *(v18 + 16) = &str_67;
                v13 = *&v31[16];
                v23 = *&v31[16] + v16;
                v24 = *(*&v31[16] + v16 + 24);
                *(v21 + 24) = v24;
                if (v24 == 1)
                {
                  *(v21 + 28) = *(v23 + 28);
                }
              }

              ++v17;
              v16 += 40;
            }

            while (v17 < *&v31[32]);
          }

          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v31);
        }
      }

      else
      {
        if (v8)
        {
          v27 = 2 * v7;
        }

        else
        {
          v27 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v25 = *(a1 + 16);
    v26 = *(v25 + 40 * v4);
  }

  else
  {
    v25 = *(a1 + 16);
    v26 = *(v25 + 40 * v4);
    *(a1 + 36) = v26 & 0x7FFFFFFF;
  }

  v28 = 40 * v4;
  *(v25 + v28) = v26 | 0x80000000;
  v29 = *(a1 + 8);
  *(v25 + v28) = *(v29 + 4 * a2) | 0x80000000;
  *(v29 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v25 + 40 * v4;
}

uint64_t re::internal::compileTimeHornerHash<54ul>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a3 - a2;
  if (a3 - a2 > 4)
  {
    if (v5 > 7)
    {
      switch(v5)
      {
        case 8:
          v6 = 0xC694446F01 * a1 + 0x667E12CDFLL * aOverridesEnabl_9[a2] + 887503681 * aOverridesEnabl_9[a2 + 1] + 28629151 * aOverridesEnabl_9[a2 + 2] + 923521 * aOverridesEnabl_9[a2 + 3] + 29791 * aOverridesEnabl_9[a2 + 4] + 961 * aOverridesEnabl_9[a2 + 5] - aOverridesEnabl_9[a2 + 6] + 32 * aOverridesEnabl_9[a2 + 6];
          v4 = a2 + 7;
          return v6 + aOverridesEnabl_9[v4];
        case 9:
          v6 = 0x180BF449711FLL * a1 + 0xC694446F01 * aOverridesEnabl_9[a2] + 0x667E12CDFLL * aOverridesEnabl_9[a2 + 1] + 887503681 * aOverridesEnabl_9[a2 + 2] + 28629151 * aOverridesEnabl_9[a2 + 3] + 923521 * aOverridesEnabl_9[a2 + 4] + 29791 * aOverridesEnabl_9[a2 + 5] + 961 * aOverridesEnabl_9[a2 + 6] - aOverridesEnabl_9[a2 + 7] + 32 * aOverridesEnabl_9[a2 + 7];
          v4 = a2 + 8;
          return v6 + aOverridesEnabl_9[v4];
        case 10:
          v6 = 0x2E97294E4B2C1 * a1 + 0x180BF449711FLL * aOverridesEnabl_9[a2] + 0xC694446F01 * aOverridesEnabl_9[a2 + 1] + 0x667E12CDFLL * aOverridesEnabl_9[a2 + 2] + 887503681 * aOverridesEnabl_9[a2 + 3] + 28629151 * aOverridesEnabl_9[a2 + 4] + 923521 * aOverridesEnabl_9[a2 + 5] + 29791 * aOverridesEnabl_9[a2 + 6] + 961 * aOverridesEnabl_9[a2 + 7] - aOverridesEnabl_9[a2 + 8] + 32 * aOverridesEnabl_9[a2 + 8];
          v4 = a2 + 9;
          return v6 + aOverridesEnabl_9[v4];
      }
    }

    else
    {
      switch(v5)
      {
        case 5:
          v6 = 28629151 * a1 + 923521 * aOverridesEnabl_9[a2] + 29791 * aOverridesEnabl_9[a2 + 1] + 961 * aOverridesEnabl_9[a2 + 2] - aOverridesEnabl_9[a2 + 3] + 32 * aOverridesEnabl_9[a2 + 3];
          v4 = a2 + 4;
          return v6 + aOverridesEnabl_9[v4];
        case 6:
          v6 = 887503681 * a1 + 28629151 * aOverridesEnabl_9[a2] + 923521 * aOverridesEnabl_9[a2 + 1] + 29791 * aOverridesEnabl_9[a2 + 2] + 961 * aOverridesEnabl_9[a2 + 3] - aOverridesEnabl_9[a2 + 4] + 32 * aOverridesEnabl_9[a2 + 4];
          v4 = a2 + 5;
          return v6 + aOverridesEnabl_9[v4];
        case 7:
          v6 = 0x667E12CDFLL * a1 + 887503681 * aOverridesEnabl_9[a2] + 28629151 * aOverridesEnabl_9[a2 + 1] + 923521 * aOverridesEnabl_9[a2 + 2] + 29791 * aOverridesEnabl_9[a2 + 3] + 961 * aOverridesEnabl_9[a2 + 4] - aOverridesEnabl_9[a2 + 5] + 32 * aOverridesEnabl_9[a2 + 5];
          v4 = a2 + 6;
          return v6 + aOverridesEnabl_9[v4];
      }
    }

    goto LABEL_18;
  }

  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v6 = 961 * a1 - aOverridesEnabl_9[a2] + 32 * aOverridesEnabl_9[a2];
        v4 = a2 + 1;
        return v6 + aOverridesEnabl_9[v4];
      case 3:
        v6 = 29791 * a1 + 961 * aOverridesEnabl_9[a2] - aOverridesEnabl_9[a2 + 1] + 32 * aOverridesEnabl_9[a2 + 1];
        v4 = a2 + 2;
        return v6 + aOverridesEnabl_9[v4];
      case 4:
        v6 = 923521 * a1 + 29791 * aOverridesEnabl_9[a2] + 961 * aOverridesEnabl_9[a2 + 1] - aOverridesEnabl_9[a2 + 2] + 32 * aOverridesEnabl_9[a2 + 2];
        v4 = a2 + 3;
        return v6 + aOverridesEnabl_9[v4];
    }

    goto LABEL_18;
  }

  if (v5)
  {
    if (v5 == 1)
    {
LABEL_19:
      v6 = 31 * a1;
      return v6 + aOverridesEnabl_9[v4];
    }

LABEL_18:
    v7 = a2 + (v5 >> 1);
    v8 = re::internal::compileTimeHornerHash<54ul>(a1, a2, v7 - 1);
    v4 = a3 - 1;
    a1 = re::internal::compileTimeHornerHash<54ul>(aOverridesEnabl_9[v7 - 1] - v8 + 32 * v8, v7, a3 - 1);
    goto LABEL_19;
  }

  return v5;
}

uint64_t re::internal::compileTimeHornerHash<49ul>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a3 - a2;
  if (a3 - a2 > 4)
  {
    if (v5 > 7)
    {
      switch(v5)
      {
        case 8:
          v6 = 0xC694446F01 * a1 + 0x667E12CDFLL * aOverridesEnabl_10[a2] + 887503681 * aOverridesEnabl_10[a2 + 1] + 28629151 * aOverridesEnabl_10[a2 + 2] + 923521 * aOverridesEnabl_10[a2 + 3] + 29791 * aOverridesEnabl_10[a2 + 4] + 961 * aOverridesEnabl_10[a2 + 5] - aOverridesEnabl_10[a2 + 6] + 32 * aOverridesEnabl_10[a2 + 6];
          v4 = a2 + 7;
          return v6 + aOverridesEnabl_10[v4];
        case 9:
          v6 = 0x180BF449711FLL * a1 + 0xC694446F01 * aOverridesEnabl_10[a2] + 0x667E12CDFLL * aOverridesEnabl_10[a2 + 1] + 887503681 * aOverridesEnabl_10[a2 + 2] + 28629151 * aOverridesEnabl_10[a2 + 3] + 923521 * aOverridesEnabl_10[a2 + 4] + 29791 * aOverridesEnabl_10[a2 + 5] + 961 * aOverridesEnabl_10[a2 + 6] - aOverridesEnabl_10[a2 + 7] + 32 * aOverridesEnabl_10[a2 + 7];
          v4 = a2 + 8;
          return v6 + aOverridesEnabl_10[v4];
        case 10:
          v6 = 0x2E97294E4B2C1 * a1 + 0x180BF449711FLL * aOverridesEnabl_10[a2] + 0xC694446F01 * aOverridesEnabl_10[a2 + 1] + 0x667E12CDFLL * aOverridesEnabl_10[a2 + 2] + 887503681 * aOverridesEnabl_10[a2 + 3] + 28629151 * aOverridesEnabl_10[a2 + 4] + 923521 * aOverridesEnabl_10[a2 + 5] + 29791 * aOverridesEnabl_10[a2 + 6] + 961 * aOverridesEnabl_10[a2 + 7] - aOverridesEnabl_10[a2 + 8] + 32 * aOverridesEnabl_10[a2 + 8];
          v4 = a2 + 9;
          return v6 + aOverridesEnabl_10[v4];
      }
    }

    else
    {
      switch(v5)
      {
        case 5:
          v6 = 28629151 * a1 + 923521 * aOverridesEnabl_10[a2] + 29791 * aOverridesEnabl_10[a2 + 1] + 961 * aOverridesEnabl_10[a2 + 2] - aOverridesEnabl_10[a2 + 3] + 32 * aOverridesEnabl_10[a2 + 3];
          v4 = a2 + 4;
          return v6 + aOverridesEnabl_10[v4];
        case 6:
          v6 = 887503681 * a1 + 28629151 * aOverridesEnabl_10[a2] + 923521 * aOverridesEnabl_10[a2 + 1] + 29791 * aOverridesEnabl_10[a2 + 2] + 961 * aOverridesEnabl_10[a2 + 3] - aOverridesEnabl_10[a2 + 4] + 32 * aOverridesEnabl_10[a2 + 4];
          v4 = a2 + 5;
          return v6 + aOverridesEnabl_10[v4];
        case 7:
          v6 = 0x667E12CDFLL * a1 + 887503681 * aOverridesEnabl_10[a2] + 28629151 * aOverridesEnabl_10[a2 + 1] + 923521 * aOverridesEnabl_10[a2 + 2] + 29791 * aOverridesEnabl_10[a2 + 3] + 961 * aOverridesEnabl_10[a2 + 4] - aOverridesEnabl_10[a2 + 5] + 32 * aOverridesEnabl_10[a2 + 5];
          v4 = a2 + 6;
          return v6 + aOverridesEnabl_10[v4];
      }
    }

    goto LABEL_18;
  }

  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v6 = 961 * a1 - aOverridesEnabl_10[a2] + 32 * aOverridesEnabl_10[a2];
        v4 = a2 + 1;
        return v6 + aOverridesEnabl_10[v4];
      case 3:
        v6 = 29791 * a1 + 961 * aOverridesEnabl_10[a2] - aOverridesEnabl_10[a2 + 1] + 32 * aOverridesEnabl_10[a2 + 1];
        v4 = a2 + 2;
        return v6 + aOverridesEnabl_10[v4];
      case 4:
        v6 = 923521 * a1 + 29791 * aOverridesEnabl_10[a2] + 961 * aOverridesEnabl_10[a2 + 1] - aOverridesEnabl_10[a2 + 2] + 32 * aOverridesEnabl_10[a2 + 2];
        v4 = a2 + 3;
        return v6 + aOverridesEnabl_10[v4];
    }

    goto LABEL_18;
  }

  if (v5)
  {
    if (v5 == 1)
    {
LABEL_19:
      v6 = 31 * a1;
      return v6 + aOverridesEnabl_10[v4];
    }

LABEL_18:
    v7 = a2 + (v5 >> 1);
    v8 = re::internal::compileTimeHornerHash<49ul>(a1, a2, v7 - 1);
    v4 = a3 - 1;
    a1 = re::internal::compileTimeHornerHash<49ul>(aOverridesEnabl_10[v7 - 1] - v8 + 32 * v8, v7, a3 - 1);
    goto LABEL_19;
  }

  return v5;
}

uint64_t re::internal::compileTimeHornerHash<53ul>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a3 - a2;
  if (a3 - a2 > 4)
  {
    if (v5 > 7)
    {
      switch(v5)
      {
        case 8:
          v6 = 0xC694446F01 * a1 + 0x667E12CDFLL * aOverridesEnabl_12[a2] + 887503681 * aOverridesEnabl_12[a2 + 1] + 28629151 * aOverridesEnabl_12[a2 + 2] + 923521 * aOverridesEnabl_12[a2 + 3] + 29791 * aOverridesEnabl_12[a2 + 4] + 961 * aOverridesEnabl_12[a2 + 5] - aOverridesEnabl_12[a2 + 6] + 32 * aOverridesEnabl_12[a2 + 6];
          v4 = a2 + 7;
          return v6 + aOverridesEnabl_12[v4];
        case 9:
          v6 = 0x180BF449711FLL * a1 + 0xC694446F01 * aOverridesEnabl_12[a2] + 0x667E12CDFLL * aOverridesEnabl_12[a2 + 1] + 887503681 * aOverridesEnabl_12[a2 + 2] + 28629151 * aOverridesEnabl_12[a2 + 3] + 923521 * aOverridesEnabl_12[a2 + 4] + 29791 * aOverridesEnabl_12[a2 + 5] + 961 * aOverridesEnabl_12[a2 + 6] - aOverridesEnabl_12[a2 + 7] + 32 * aOverridesEnabl_12[a2 + 7];
          v4 = a2 + 8;
          return v6 + aOverridesEnabl_12[v4];
        case 10:
          v6 = 0x2E97294E4B2C1 * a1 + 0x180BF449711FLL * aOverridesEnabl_12[a2] + 0xC694446F01 * aOverridesEnabl_12[a2 + 1] + 0x667E12CDFLL * aOverridesEnabl_12[a2 + 2] + 887503681 * aOverridesEnabl_12[a2 + 3] + 28629151 * aOverridesEnabl_12[a2 + 4] + 923521 * aOverridesEnabl_12[a2 + 5] + 29791 * aOverridesEnabl_12[a2 + 6] + 961 * aOverridesEnabl_12[a2 + 7] - aOverridesEnabl_12[a2 + 8] + 32 * aOverridesEnabl_12[a2 + 8];
          v4 = a2 + 9;
          return v6 + aOverridesEnabl_12[v4];
      }
    }

    else
    {
      switch(v5)
      {
        case 5:
          v6 = 28629151 * a1 + 923521 * aOverridesEnabl_12[a2] + 29791 * aOverridesEnabl_12[a2 + 1] + 961 * aOverridesEnabl_12[a2 + 2] - aOverridesEnabl_12[a2 + 3] + 32 * aOverridesEnabl_12[a2 + 3];
          v4 = a2 + 4;
          return v6 + aOverridesEnabl_12[v4];
        case 6:
          v6 = 887503681 * a1 + 28629151 * aOverridesEnabl_12[a2] + 923521 * aOverridesEnabl_12[a2 + 1] + 29791 * aOverridesEnabl_12[a2 + 2] + 961 * aOverridesEnabl_12[a2 + 3] - aOverridesEnabl_12[a2 + 4] + 32 * aOverridesEnabl_12[a2 + 4];
          v4 = a2 + 5;
          return v6 + aOverridesEnabl_12[v4];
        case 7:
          v6 = 0x667E12CDFLL * a1 + 887503681 * aOverridesEnabl_12[a2] + 28629151 * aOverridesEnabl_12[a2 + 1] + 923521 * aOverridesEnabl_12[a2 + 2] + 29791 * aOverridesEnabl_12[a2 + 3] + 961 * aOverridesEnabl_12[a2 + 4] - aOverridesEnabl_12[a2 + 5] + 32 * aOverridesEnabl_12[a2 + 5];
          v4 = a2 + 6;
          return v6 + aOverridesEnabl_12[v4];
      }
    }

    goto LABEL_18;
  }

  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v6 = 961 * a1 - aOverridesEnabl_12[a2] + 32 * aOverridesEnabl_12[a2];
        v4 = a2 + 1;
        return v6 + aOverridesEnabl_12[v4];
      case 3:
        v6 = 29791 * a1 + 961 * aOverridesEnabl_12[a2] - aOverridesEnabl_12[a2 + 1] + 32 * aOverridesEnabl_12[a2 + 1];
        v4 = a2 + 2;
        return v6 + aOverridesEnabl_12[v4];
      case 4:
        v6 = 923521 * a1 + 29791 * aOverridesEnabl_12[a2] + 961 * aOverridesEnabl_12[a2 + 1] - aOverridesEnabl_12[a2 + 2] + 32 * aOverridesEnabl_12[a2 + 2];
        v4 = a2 + 3;
        return v6 + aOverridesEnabl_12[v4];
    }

    goto LABEL_18;
  }

  if (v5)
  {
    if (v5 == 1)
    {
LABEL_19:
      v6 = 31 * a1;
      return v6 + aOverridesEnabl_12[v4];
    }

LABEL_18:
    v7 = a2 + (v5 >> 1);
    v8 = re::internal::compileTimeHornerHash<53ul>(a1, a2, v7 - 1);
    v4 = a3 - 1;
    a1 = re::internal::compileTimeHornerHash<53ul>(aOverridesEnabl_12[v7 - 1] - v8 + 32 * v8, v7, a3 - 1);
    goto LABEL_19;
  }

  return v5;
}

uint64_t *re::mtl::introspect_CompareFunction(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BADE0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BADE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BADE8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB058, "CompareFunction", 1, 1, 1, 1);
      qword_1EE1BB058 = &unk_1F5D0C658;
      qword_1EE1BB098 = &re::mtl::introspect_CompareFunction(BOOL)::enumTable;
      dword_1EE1BB068 = 9;
      __cxa_guard_release(&qword_1EE1BADE8);
    }

    if (v2)
    {
      if (_MergedGlobals_474)
      {
        return &qword_1EE1BB058;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v54);
      v3 = _MergedGlobals_474;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v54);
      if (v3)
      {
        return &qword_1EE1BB058;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (_MergedGlobals_474)
      {
        goto LABEL_46;
      }
    }

    _MergedGlobals_474 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB058, a2);
    v51 = 0xA476CA4CF3E2F7ALL;
    v52 = "CompareFunction";
    v55 = 0x31CD534126;
    v56 = "uint8_t";
    v9 = v54[0];
    v10 = v54[1];
    if (v55)
    {
      if (v55)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v52);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v50);
    __break(1u);
LABEL_49:
    if (__cxa_guard_acquire(&qword_1EE1BADE0))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 0;
      *(v35 + 16) = "Never";
      qword_1EE1BAF58 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 1;
      *(v37 + 16) = "Less";
      qword_1EE1BAF60 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 2;
      *(v39 + 16) = "Equal";
      qword_1EE1BAF68 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 3;
      *(v41 + 16) = "LessEqual";
      qword_1EE1BAF70 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 4;
      *(v43 + 16) = "Greater";
      qword_1EE1BAF78 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 5;
      *(v45 + 16) = "NotEqual";
      qword_1EE1BAF80 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 6;
      *(v47 + 16) = "GreaterEqual";
      qword_1EE1BAF88 = v47;
      v48 = re::introspectionAllocator();
      v49 = (*(*v48 + 32))(v48, 24, 8);
      *v49 = 1;
      *(v49 + 8) = 7;
      *(v49 + 16) = "Always";
      qword_1EE1BAF90 = v49;
      __cxa_guard_release(&qword_1EE1BADE0);
    }
  }

  v11 = qword_1EE1BB098;
  v55 = v9;
  v56 = v10;
  re::TypeBuilder::beginEnumType(v54, &v51, 1, 1, &v55);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v53.var0 = 2 * v16;
        v53.var1 = v15;
        re::TypeBuilder::addEnumConstant(v54, v20, &v53);
        if (*&v53.var0)
        {
          if (*&v53.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v53.var0 = 2 * v25;
          v53.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v54, v29, &v53);
          if (*&v53.var0)
          {
            if (*&v53.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v54, v31);
  xmmword_1EE1BB078 = v53;
  if (v51)
  {
    if (v51)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BB058;
}

uint64_t *re::mtl::introspect_BlendFactor(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BADF0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BADF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BADF8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB0A0, "BlendFactor", 4, 4, 1, 1);
      qword_1EE1BB0A0 = &unk_1F5D0C658;
      qword_1EE1BB0E0 = &re::mtl::introspect_BlendFactor(BOOL)::enumTable;
      dword_1EE1BB0B0 = 9;
      __cxa_guard_release(&qword_1EE1BADF8);
    }

    if (v2)
    {
      if (byte_1EE1BADD1)
      {
        return &qword_1EE1BB0A0;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v76);
      v3 = byte_1EE1BADD1;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v76);
      if (v3)
      {
        return &qword_1EE1BB0A0;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE1BADD1)
      {
        goto LABEL_46;
      }
    }

    byte_1EE1BADD1 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB0A0, a2);
    v73 = 0x1954B877535D9C0;
    v74 = "BlendFactor";
    v77 = 208862;
    v78 = "int";
    v9 = v76[0];
    v10 = v76[1];
    if (v77)
    {
      if (v77)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v74);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v72);
    __break(1u);
LABEL_49:
    if (__cxa_guard_acquire(&qword_1EE1BADF0))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 0;
      *(v35 + 16) = "Zero";
      qword_1EE1BB4C8 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 1;
      *(v37 + 16) = "One";
      qword_1EE1BB4D0 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 2;
      *(v39 + 16) = "SourceColor";
      qword_1EE1BB4D8 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 3;
      *(v41 + 16) = "OneMinusSourceColor";
      qword_1EE1BB4E0 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 4;
      *(v43 + 16) = "SourceAlpha";
      qword_1EE1BB4E8 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 5;
      *(v45 + 16) = "OneMinusSourceAlpha";
      qword_1EE1BB4F0 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 6;
      *(v47 + 16) = "DestinationColor";
      qword_1EE1BB4F8 = v47;
      v48 = re::introspectionAllocator();
      v49 = (*(*v48 + 32))(v48, 24, 8);
      *v49 = 1;
      *(v49 + 8) = 7;
      *(v49 + 16) = "OneMinusDestinationColor";
      qword_1EE1BB500 = v49;
      v50 = re::introspectionAllocator();
      v51 = (*(*v50 + 32))(v50, 24, 8);
      *v51 = 1;
      *(v51 + 8) = 8;
      *(v51 + 16) = "DestinationAlpha";
      qword_1EE1BB508 = v51;
      v52 = re::introspectionAllocator();
      v53 = (*(*v52 + 32))(v52, 24, 8);
      *v53 = 1;
      *(v53 + 8) = 9;
      *(v53 + 16) = "OneMinusDestinationAlpha";
      qword_1EE1BB510 = v53;
      v54 = re::introspectionAllocator();
      v55 = (*(*v54 + 32))(v54, 24, 8);
      *v55 = 1;
      *(v55 + 8) = 10;
      *(v55 + 16) = "SourceAlphaSaturated";
      qword_1EE1BB518 = v55;
      v56 = re::introspectionAllocator();
      v57 = (*(*v56 + 32))(v56, 24, 8);
      *v57 = 1;
      *(v57 + 8) = 11;
      *(v57 + 16) = "BlendColor";
      qword_1EE1BB520 = v57;
      v58 = re::introspectionAllocator();
      v59 = (*(*v58 + 32))(v58, 24, 8);
      *v59 = 1;
      *(v59 + 8) = 12;
      *(v59 + 16) = "OneMinusBlendColor";
      qword_1EE1BB528 = v59;
      v60 = re::introspectionAllocator();
      v61 = (*(*v60 + 32))(v60, 24, 8);
      *v61 = 1;
      *(v61 + 8) = 13;
      *(v61 + 16) = "BlendAlpha";
      qword_1EE1BB530 = v61;
      v62 = re::introspectionAllocator();
      v63 = (*(*v62 + 32))(v62, 24, 8);
      *v63 = 1;
      *(v63 + 8) = 14;
      *(v63 + 16) = "OneMinusBlendAlpha";
      qword_1EE1BB538 = v63;
      v64 = re::introspectionAllocator();
      v65 = (*(*v64 + 32))(v64, 24, 8);
      *v65 = 1;
      *(v65 + 8) = 15;
      *(v65 + 16) = "Source1Color";
      qword_1EE1BB540 = v65;
      v66 = re::introspectionAllocator();
      v67 = (*(*v66 + 32))(v66, 24, 8);
      *v67 = 1;
      *(v67 + 8) = 16;
      *(v67 + 16) = "OneMinusSource1Color";
      qword_1EE1BB548 = v67;
      v68 = re::introspectionAllocator();
      v69 = (*(*v68 + 32))(v68, 24, 8);
      *v69 = 1;
      *(v69 + 8) = 17;
      *(v69 + 16) = "Source1Alpha";
      qword_1EE1BB550 = v69;
      v70 = re::introspectionAllocator();
      v71 = (*(*v70 + 32))(v70, 24, 8);
      *v71 = 1;
      *(v71 + 8) = 18;
      *(v71 + 16) = "OneMinusSource1Alpha";
      qword_1EE1BB558 = v71;
      __cxa_guard_release(&qword_1EE1BADF0);
    }
  }

  v11 = qword_1EE1BB0E0;
  v77 = v9;
  v78 = v10;
  re::TypeBuilder::beginEnumType(v76, &v73, 1, 1, &v77);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v75.var0 = 2 * v16;
        v75.var1 = v15;
        re::TypeBuilder::addEnumConstant(v76, v20, &v75);
        if (*&v75.var0)
        {
          if (*&v75.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v75.var0 = 2 * v25;
          v75.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v76, v29, &v75);
          if (*&v75.var0)
          {
            if (*&v75.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v76, v31);
  xmmword_1EE1BB0C0 = v75;
  if (v73)
  {
    if (v73)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BB0A0;
}

void *re::mtl::introspect_BlendOperation(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Add";
    re::mtl::introspect_BlendOperation(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "Subtract";
    qword_1EE1C6040 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "ReverseSubtract";
    qword_1EE1C6048 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 24, 8);
    *v16 = 1;
    *(v16 + 8) = 3;
    *(v16 + 16) = "Min";
    qword_1EE1C6050 = v16;
    v17 = re::introspectionAllocator();
    v18 = (*(*v17 + 32))(v17, 24, 8);
    *v18 = 1;
    *(v18 + 8) = 4;
    *(v18 + 16) = "Max";
    qword_1EE1C6058 = v18;
  }

  {
    v19 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_BlendOperation(BOOL)::info, "BlendOperation", 4, 4, 1, 1);
    *v19 = &unk_1F5D0C658;
    *(v19 + 8) = &re::mtl::introspect_BlendOperation(BOOL)::enumTable;
    *(v19 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_BlendOperation(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_BlendOperation(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v21);
    v3 = re::mtl::introspect_BlendOperation(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v21);
    if (v3)
    {
      return &re::mtl::introspect_BlendOperation(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_BlendOperation(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_BlendOperation(BOOL)::info;
    }
  }

  re::mtl::introspect_BlendOperation(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_BlendOperation(BOOL)::info, a2);
  v20[0] = 0x3CA077184A19D86CLL;
  v20[1] = "BlendOperation";
  xmmword_1EE1C6010 = v21;
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_BlendOperation(BOOL)::info;
}

uint64_t *re::mtl::introspect_ColorWriteMask(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BAE00, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BAE08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE08))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB0E8, "ColorWriteMask", 4, 4, 1, 1);
      qword_1EE1BB0E8 = &unk_1F5D0C658;
      qword_1EE1BB128 = &re::mtl::introspect_ColorWriteMask(BOOL)::enumTable;
      dword_1EE1BB0F8 = 9;
      __cxa_guard_release(&qword_1EE1BAE08);
    }

    if (v2)
    {
      if (byte_1EE1BADD2)
      {
        return &qword_1EE1BB0E8;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v70);
      v3 = byte_1EE1BADD2;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v70);
      if (v3)
      {
        return &qword_1EE1BB0E8;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE1BADD2)
      {
        goto LABEL_46;
      }
    }

    byte_1EE1BADD2 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB0E8, a2);
    v67 = 0x28E7E0D0848E4ED0;
    v68 = "ColorWriteMask";
    v71 = 208862;
    v72 = "int";
    v9 = v70[0];
    v10 = v70[1];
    if (v71)
    {
      if (v71)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v68);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v66);
    __break(1u);
LABEL_49:
    if (__cxa_guard_acquire(&qword_1EE1BAE00))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 0;
      *(v35 + 16) = "None";
      qword_1EE1BB328 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 1;
      *(v37 + 16) = "Alpha";
      qword_1EE1BB330 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 2;
      *(v39 + 16) = "Blue";
      qword_1EE1BB338 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 4;
      *(v41 + 16) = "Green";
      qword_1EE1BB340 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 8;
      *(v43 + 16) = "Red";
      qword_1EE1BB348 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 12;
      *(v45 + 16) = "RedGreen";
      qword_1EE1BB350 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 10;
      *(v47 + 16) = "RedBlue";
      qword_1EE1BB358 = v47;
      v48 = re::introspectionAllocator();
      v49 = (*(*v48 + 32))(v48, 24, 8);
      *v49 = 1;
      *(v49 + 8) = 6;
      *(v49 + 16) = "GreenBlue";
      qword_1EE1BB360 = v49;
      v50 = re::introspectionAllocator();
      v51 = (*(*v50 + 32))(v50, 24, 8);
      *v51 = 1;
      *(v51 + 8) = 9;
      *(v51 + 16) = "RedAlpha";
      qword_1EE1BB368 = v51;
      v52 = re::introspectionAllocator();
      v53 = (*(*v52 + 32))(v52, 24, 8);
      *v53 = 1;
      *(v53 + 8) = 5;
      *(v53 + 16) = "GreenAlpha";
      qword_1EE1BB370 = v53;
      v54 = re::introspectionAllocator();
      v55 = (*(*v54 + 32))(v54, 24, 8);
      *v55 = 1;
      *(v55 + 8) = 3;
      *(v55 + 16) = "BlueAlpha";
      qword_1EE1BB378 = v55;
      v56 = re::introspectionAllocator();
      v57 = (*(*v56 + 32))(v56, 24, 8);
      *v57 = 1;
      *(v57 + 8) = 14;
      *(v57 + 16) = "RedGreenBlue";
      qword_1EE1BB380 = v57;
      v58 = re::introspectionAllocator();
      v59 = (*(*v58 + 32))(v58, 24, 8);
      *v59 = 1;
      *(v59 + 8) = 13;
      *(v59 + 16) = "RedGreenAlpha";
      qword_1EE1BB388 = v59;
      v60 = re::introspectionAllocator();
      v61 = (*(*v60 + 32))(v60, 24, 8);
      *v61 = 1;
      *(v61 + 8) = 11;
      *(v61 + 16) = "RedBlueAlpha";
      qword_1EE1BB390 = v61;
      v62 = re::introspectionAllocator();
      v63 = (*(*v62 + 32))(v62, 24, 8);
      *v63 = 1;
      *(v63 + 8) = 7;
      *(v63 + 16) = "GreenBlueAlpha";
      qword_1EE1BB398 = v63;
      v64 = re::introspectionAllocator();
      v65 = (*(*v64 + 32))(v64, 24, 8);
      *v65 = 1;
      *(v65 + 8) = 15;
      *(v65 + 16) = "All";
      qword_1EE1BB3A0 = v65;
      __cxa_guard_release(&qword_1EE1BAE00);
    }
  }

  v11 = qword_1EE1BB128;
  v71 = v9;
  v72 = v10;
  re::TypeBuilder::beginEnumType(v70, &v67, 1, 1, &v71);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v69.var0 = 2 * v16;
        v69.var1 = v15;
        re::TypeBuilder::addEnumConstant(v70, v20, &v69);
        if (*&v69.var0)
        {
          if (*&v69.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v69.var0 = 2 * v25;
          v69.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v70, v29, &v69);
          if (*&v69.var0)
          {
            if (*&v69.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v70, v31);
  xmmword_1EE1BB108 = v69;
  if (v67)
  {
    if (v67)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BB0E8;
}

void *re::mtl::introspect_CullMode(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "CullModeNone";
    re::mtl::introspect_CullMode(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "CullModeFront";
    qword_1EE1C6260 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "CullModeBack";
    qword_1EE1C6268 = v14;
  }

  {
    v15 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_CullMode(BOOL)::info, "CullMode", 1, 1, 1, 1);
    *v15 = &unk_1F5D0C658;
    *(v15 + 8) = &re::mtl::introspect_CullMode(BOOL)::enumTable;
    *(v15 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_CullMode(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_CullMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v17);
    v3 = re::mtl::introspect_CullMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v17);
    if (v3)
    {
      return &re::mtl::introspect_CullMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_CullMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_CullMode(BOOL)::info;
    }
  }

  re::mtl::introspect_CullMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_CullMode(BOOL)::info, a2);
  v16[0] = 0x38C37139CAALL;
  v16[1] = "CullMode";
  xmmword_1EE1C6230 = v17;
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_CullMode(BOOL)::info;
}

void *re::mtl::introspect_TextureUsage(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Unknown";
    re::mtl::introspect_TextureUsage(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "ShaderRead";
    qword_1EE1C60C0 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "ShaderWrite";
    qword_1EE1C60C8 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 24, 8);
    *v16 = 1;
    *(v16 + 8) = 4;
    *(v16 + 16) = "RenderTarget";
    qword_1EE1C60D0 = v16;
    v17 = re::introspectionAllocator();
    v18 = (*(*v17 + 32))(v17, 24, 8);
    *v18 = 1;
    *(v18 + 8) = 16;
    *(v18 + 16) = "PixelFormatView";
    qword_1EE1C60D8 = v18;
  }

  {
    v19 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_TextureUsage(BOOL)::info, "TextureUsage", 4, 4, 1, 1);
    *v19 = &unk_1F5D0C658;
    *(v19 + 8) = &re::mtl::introspect_TextureUsage(BOOL)::enumTable;
    *(v19 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_TextureUsage(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_TextureUsage(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v21);
    v3 = re::mtl::introspect_TextureUsage(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v21);
    if (v3)
    {
      return &re::mtl::introspect_TextureUsage(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_TextureUsage(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_TextureUsage(BOOL)::info;
    }
  }

  re::mtl::introspect_TextureUsage(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_TextureUsage(BOOL)::info, a2);
  v20[0] = 0x3DA0ACA55F420ACCLL;
  v20[1] = "TextureUsage";
  xmmword_1EE1C6090 = v21;
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_TextureUsage(BOOL)::info;
}

void *re::mtl::introspect_VertexStepFunction(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Constant";
    re::mtl::introspect_VertexStepFunction(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "PerVertex";
    qword_1EE1C5E98 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "PerInstance";
    qword_1EE1C5EA0 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 24, 8);
    *v16 = 1;
    *(v16 + 8) = 3;
    *(v16 + 16) = "PerPatch";
    qword_1EE1C5EA8 = v16;
    v17 = re::introspectionAllocator();
    v18 = (*(*v17 + 32))(v17, 24, 8);
    *v18 = 1;
    *(v18 + 8) = 4;
    *(v18 + 16) = "PerPatchControlPoint";
    qword_1EE1C5EB0 = v18;
  }

  {
    v19 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_VertexStepFunction(BOOL)::info, "VertexStepFunction", 1, 1, 1, 1);
    *v19 = &unk_1F5D0C658;
    *(v19 + 8) = &re::mtl::introspect_VertexStepFunction(BOOL)::enumTable;
    *(v19 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_VertexStepFunction(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_VertexStepFunction(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v21);
    v3 = re::mtl::introspect_VertexStepFunction(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v21);
    if (v3)
    {
      return &re::mtl::introspect_VertexStepFunction(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_VertexStepFunction(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_VertexStepFunction(BOOL)::info;
    }
  }

  re::mtl::introspect_VertexStepFunction(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_VertexStepFunction(BOOL)::info, a2);
  v20[0] = 0xF4871ED6F7417D50;
  v20[1] = "VertexStepFunction";
  xmmword_1EE1C5E68 = v21;
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_VertexStepFunction(BOOL)::info;
}

uint64_t *re::mtl::introspect_VertexFormat(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BAE10, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BAE18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE18))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB130, "VertexFormat", 1, 1, 1, 1);
      qword_1EE1BB130 = &unk_1F5D0C658;
      qword_1EE1BB170 = &re::mtl::introspect_VertexFormat(BOOL)::enumTable;
      dword_1EE1BB140 = 9;
      __cxa_guard_release(&qword_1EE1BAE18);
    }

    if (v2)
    {
      if (byte_1EE1BADD3)
      {
        return &qword_1EE1BB130;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v138);
      v3 = byte_1EE1BADD3;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v138);
      if (v3)
      {
        return &qword_1EE1BB130;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE1BADD3)
      {
        goto LABEL_46;
      }
    }

    byte_1EE1BADD3 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB130, a2);
    v135 = 0x3F089ECB224C3DB6;
    v136 = "VertexFormat";
    v139 = 0x31CD534126;
    v140 = "uint8_t";
    v9 = v138[0];
    v10 = v138[1];
    if (v139)
    {
      if (v139)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v136);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v134);
    __break(1u);
LABEL_49:
    if (__cxa_guard_acquire(&qword_1EE1BAE10))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 0;
      *(v35 + 16) = "Invalid";
      qword_1EE1BB560 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 45;
      *(v37 + 16) = "UChar";
      qword_1EE1BB568 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 1;
      *(v39 + 16) = "UChar2";
      qword_1EE1BB570 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 2;
      *(v41 + 16) = "UChar3";
      qword_1EE1BB578 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 3;
      *(v43 + 16) = "UChar4";
      qword_1EE1BB580 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 46;
      *(v45 + 16) = "Char";
      qword_1EE1BB588 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 4;
      *(v47 + 16) = "Char2";
      qword_1EE1BB590 = v47;
      v48 = re::introspectionAllocator();
      v49 = (*(*v48 + 32))(v48, 24, 8);
      *v49 = 1;
      *(v49 + 8) = 5;
      *(v49 + 16) = "Char3";
      qword_1EE1BB598 = v49;
      v50 = re::introspectionAllocator();
      v51 = (*(*v50 + 32))(v50, 24, 8);
      *v51 = 1;
      *(v51 + 8) = 6;
      *(v51 + 16) = "Char4";
      qword_1EE1BB5A0 = v51;
      v52 = re::introspectionAllocator();
      v53 = (*(*v52 + 32))(v52, 24, 8);
      *v53 = 1;
      *(v53 + 8) = 47;
      *(v53 + 16) = "UCharNormalized";
      qword_1EE1BB5A8 = v53;
      v54 = re::introspectionAllocator();
      v55 = (*(*v54 + 32))(v54, 24, 8);
      *v55 = 1;
      *(v55 + 8) = 7;
      *(v55 + 16) = "UChar2Normalized";
      qword_1EE1BB5B0 = v55;
      v56 = re::introspectionAllocator();
      v57 = (*(*v56 + 32))(v56, 24, 8);
      *v57 = 1;
      *(v57 + 8) = 8;
      *(v57 + 16) = "UChar3Normalized";
      qword_1EE1BB5B8 = v57;
      v58 = re::introspectionAllocator();
      v59 = (*(*v58 + 32))(v58, 24, 8);
      *v59 = 1;
      *(v59 + 8) = 9;
      *(v59 + 16) = "UChar4Normalized";
      qword_1EE1BB5C0 = v59;
      v60 = re::introspectionAllocator();
      v61 = (*(*v60 + 32))(v60, 24, 8);
      *v61 = 1;
      *(v61 + 8) = 42;
      *(v61 + 16) = "UChar4Normalized_BGRA";
      qword_1EE1BB5C8 = v61;
      v62 = re::introspectionAllocator();
      v63 = (*(*v62 + 32))(v62, 24, 8);
      *v63 = 1;
      *(v63 + 8) = 48;
      *(v63 + 16) = "CharNormalized";
      qword_1EE1BB5D0 = v63;
      v64 = re::introspectionAllocator();
      v65 = (*(*v64 + 32))(v64, 24, 8);
      *v65 = 1;
      *(v65 + 8) = 10;
      *(v65 + 16) = "Char2Normalized";
      qword_1EE1BB5D8 = v65;
      v66 = re::introspectionAllocator();
      v67 = (*(*v66 + 32))(v66, 24, 8);
      *v67 = 1;
      *(v67 + 8) = 11;
      *(v67 + 16) = "Char3Normalized";
      qword_1EE1BB5E0 = v67;
      v68 = re::introspectionAllocator();
      v69 = (*(*v68 + 32))(v68, 24, 8);
      *v69 = 1;
      *(v69 + 8) = 12;
      *(v69 + 16) = "Char4Normalized";
      qword_1EE1BB5E8 = v69;
      v70 = re::introspectionAllocator();
      v71 = (*(*v70 + 32))(v70, 24, 8);
      *v71 = 1;
      *(v71 + 8) = 49;
      *(v71 + 16) = "UShort";
      qword_1EE1BB5F0 = v71;
      v72 = re::introspectionAllocator();
      v73 = (*(*v72 + 32))(v72, 24, 8);
      *v73 = 1;
      *(v73 + 8) = 13;
      *(v73 + 16) = "UShort2";
      qword_1EE1BB5F8 = v73;
      v74 = re::introspectionAllocator();
      v75 = (*(*v74 + 32))(v74, 24, 8);
      *v75 = 1;
      *(v75 + 8) = 14;
      *(v75 + 16) = "UShort3";
      qword_1EE1BB600 = v75;
      v76 = re::introspectionAllocator();
      v77 = (*(*v76 + 32))(v76, 24, 8);
      *v77 = 1;
      *(v77 + 8) = 15;
      *(v77 + 16) = "UShort4";
      qword_1EE1BB608 = v77;
      v78 = re::introspectionAllocator();
      v79 = (*(*v78 + 32))(v78, 24, 8);
      *v79 = 1;
      *(v79 + 8) = 50;
      *(v79 + 16) = "Short";
      qword_1EE1BB610 = v79;
      v80 = re::introspectionAllocator();
      v81 = (*(*v80 + 32))(v80, 24, 8);
      *v81 = 1;
      *(v81 + 8) = 16;
      *(v81 + 16) = "Short2";
      qword_1EE1BB618 = v81;
      v82 = re::introspectionAllocator();
      v83 = (*(*v82 + 32))(v82, 24, 8);
      *v83 = 1;
      *(v83 + 8) = 17;
      *(v83 + 16) = "Short3";
      qword_1EE1BB620 = v83;
      v84 = re::introspectionAllocator();
      v85 = (*(*v84 + 32))(v84, 24, 8);
      *v85 = 1;
      *(v85 + 8) = 18;
      *(v85 + 16) = "Short4";
      qword_1EE1BB628 = v85;
      v86 = re::introspectionAllocator();
      v87 = (*(*v86 + 32))(v86, 24, 8);
      *v87 = 1;
      *(v87 + 8) = 51;
      *(v87 + 16) = "UShortNormalized";
      qword_1EE1BB630 = v87;
      v88 = re::introspectionAllocator();
      v89 = (*(*v88 + 32))(v88, 24, 8);
      *v89 = 1;
      *(v89 + 8) = 19;
      *(v89 + 16) = "UShort2Normalized";
      qword_1EE1BB638 = v89;
      v90 = re::introspectionAllocator();
      v91 = (*(*v90 + 32))(v90, 24, 8);
      *v91 = 1;
      *(v91 + 8) = 20;
      *(v91 + 16) = "UShort3Normalized";
      qword_1EE1BB640 = v91;
      v92 = re::introspectionAllocator();
      v93 = (*(*v92 + 32))(v92, 24, 8);
      *v93 = 1;
      *(v93 + 8) = 21;
      *(v93 + 16) = "UShort4Normalized";
      qword_1EE1BB648 = v93;
      v94 = re::introspectionAllocator();
      v95 = (*(*v94 + 32))(v94, 24, 8);
      *v95 = 1;
      *(v95 + 8) = 52;
      *(v95 + 16) = "ShortNormalized";
      qword_1EE1BB650 = v95;
      v96 = re::introspectionAllocator();
      v97 = (*(*v96 + 32))(v96, 24, 8);
      *v97 = 1;
      *(v97 + 8) = 22;
      *(v97 + 16) = "Short2Normalized";
      qword_1EE1BB658 = v97;
      v98 = re::introspectionAllocator();
      v99 = (*(*v98 + 32))(v98, 24, 8);
      *v99 = 1;
      *(v99 + 8) = 23;
      *(v99 + 16) = "Short3Normalized";
      qword_1EE1BB660 = v99;
      v100 = re::introspectionAllocator();
      v101 = (*(*v100 + 32))(v100, 24, 8);
      *v101 = 1;
      *(v101 + 8) = 24;
      *(v101 + 16) = "Short4Normalized";
      qword_1EE1BB668 = v101;
      v102 = re::introspectionAllocator();
      v103 = (*(*v102 + 32))(v102, 24, 8);
      *v103 = 1;
      *(v103 + 8) = 53;
      *(v103 + 16) = "Half";
      qword_1EE1BB670 = v103;
      v104 = re::introspectionAllocator();
      v105 = (*(*v104 + 32))(v104, 24, 8);
      *v105 = 1;
      *(v105 + 8) = 25;
      *(v105 + 16) = "Half2";
      qword_1EE1BB678 = v105;
      v106 = re::introspectionAllocator();
      v107 = (*(*v106 + 32))(v106, 24, 8);
      *v107 = 1;
      *(v107 + 8) = 26;
      *(v107 + 16) = "Half3";
      qword_1EE1BB680 = v107;
      v108 = re::introspectionAllocator();
      v109 = (*(*v108 + 32))(v108, 24, 8);
      *v109 = 1;
      *(v109 + 8) = 27;
      *(v109 + 16) = "Half4";
      qword_1EE1BB688 = v109;
      v110 = re::introspectionAllocator();
      v111 = (*(*v110 + 32))(v110, 24, 8);
      *v111 = 1;
      *(v111 + 8) = 28;
      *(v111 + 16) = "Float";
      qword_1EE1BB690 = v111;
      v112 = re::introspectionAllocator();
      v113 = (*(*v112 + 32))(v112, 24, 8);
      *v113 = 1;
      *(v113 + 8) = 29;
      *(v113 + 16) = "Float2";
      qword_1EE1BB698 = v113;
      v114 = re::introspectionAllocator();
      v115 = (*(*v114 + 32))(v114, 24, 8);
      *v115 = 1;
      *(v115 + 8) = 30;
      *(v115 + 16) = "Float3";
      qword_1EE1BB6A0 = v115;
      v116 = re::introspectionAllocator();
      v117 = (*(*v116 + 32))(v116, 24, 8);
      *v117 = 1;
      *(v117 + 8) = 31;
      *(v117 + 16) = "Float4";
      qword_1EE1BB6A8 = v117;
      v118 = re::introspectionAllocator();
      v119 = (*(*v118 + 32))(v118, 24, 8);
      *v119 = 1;
      *(v119 + 8) = 32;
      *(v119 + 16) = "Int";
      qword_1EE1BB6B0 = v119;
      v120 = re::introspectionAllocator();
      v121 = (*(*v120 + 32))(v120, 24, 8);
      *v121 = 1;
      *(v121 + 8) = 33;
      *(v121 + 16) = "Int2";
      qword_1EE1BB6B8 = v121;
      v122 = re::introspectionAllocator();
      v123 = (*(*v122 + 32))(v122, 24, 8);
      *v123 = 1;
      *(v123 + 8) = 34;
      *(v123 + 16) = "Int3";
      qword_1EE1BB6C0 = v123;
      v124 = re::introspectionAllocator();
      v125 = (*(*v124 + 32))(v124, 24, 8);
      *v125 = 1;
      *(v125 + 8) = 35;
      *(v125 + 16) = "Int4";
      qword_1EE1BB6C8 = v125;
      v126 = re::introspectionAllocator();
      v127 = (*(*v126 + 32))(v126, 24, 8);
      *v127 = 1;
      *(v127 + 8) = 36;
      *(v127 + 16) = "UInt";
      qword_1EE1BB6D0 = v127;
      v128 = re::introspectionAllocator();
      v129 = (*(*v128 + 32))(v128, 24, 8);
      *v129 = 1;
      *(v129 + 8) = 37;
      *(v129 + 16) = "UInt2";
      qword_1EE1BB6D8 = v129;
      v130 = re::introspectionAllocator();
      v131 = (*(*v130 + 32))(v130, 24, 8);
      *v131 = 1;
      *(v131 + 8) = 38;
      *(v131 + 16) = "UInt3";
      qword_1EE1BB6E0 = v131;
      v132 = re::introspectionAllocator();
      v133 = (*(*v132 + 32))(v132, 24, 8);
      *v133 = 1;
      *(v133 + 8) = 39;
      *(v133 + 16) = "UInt4";
      qword_1EE1BB6E8 = v133;
      __cxa_guard_release(&qword_1EE1BAE10);
    }
  }

  v11 = qword_1EE1BB170;
  v139 = v9;
  v140 = v10;
  re::TypeBuilder::beginEnumType(v138, &v135, 1, 1, &v139);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v137.var0 = 2 * v16;
        v137.var1 = v15;
        re::TypeBuilder::addEnumConstant(v138, v20, &v137);
        if (*&v137.var0)
        {
          if (*&v137.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v137.var0 = 2 * v25;
          v137.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v138, v29, &v137);
          if (*&v137.var0)
          {
            if (*&v137.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v138, v31);
  xmmword_1EE1BB150 = v137;
  if (v135)
  {
    if (v135)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BB130;
}

uint64_t *re::mtl::introspect_PixelFormat(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BAE20, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BAE28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE28))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB178, "PixelFormat", 4, 4, 1, 1);
      qword_1EE1BB178 = &unk_1F5D0C658;
      qword_1EE1BB1B8 = &re::mtl::introspect_PixelFormat(BOOL)::enumTable;
      dword_1EE1BB188 = 9;
      __cxa_guard_release(&qword_1EE1BAE28);
    }

    if (v2)
    {
      if (byte_1EE1BADD4)
      {
        return &qword_1EE1BB178;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v314);
      v3 = byte_1EE1BADD4;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v314);
      if (v3)
      {
        return &qword_1EE1BB178;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE1BADD4)
      {
        goto LABEL_46;
      }
    }

    byte_1EE1BADD4 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB178, a2);
    v311 = 0x1E660D208CFC3FALL;
    v312 = "PixelFormat";
    v315 = 208862;
    v316 = "int";
    v9 = v314[0];
    v10 = v314[1];
    if (v315)
    {
      if (v315)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v312);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v310);
    __break(1u);
LABEL_49:
    if (__cxa_guard_acquire(&qword_1EE1BAE20))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 0;
      *(v35 + 16) = "Invalid";
      qword_1EE1BB6F0 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 1;
      *(v37 + 16) = "A8Unorm";
      qword_1EE1BB6F8 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 10;
      *(v39 + 16) = "R8Unorm";
      qword_1EE1BB700 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 11;
      *(v41 + 16) = "R8Unorm_sRGB";
      qword_1EE1BB708 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 12;
      *(v43 + 16) = "R8Snorm";
      qword_1EE1BB710 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 13;
      *(v45 + 16) = "R8Uint";
      qword_1EE1BB718 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 14;
      *(v47 + 16) = "R8Sint";
      qword_1EE1BB720 = v47;
      v48 = re::introspectionAllocator();
      v49 = (*(*v48 + 32))(v48, 24, 8);
      *v49 = 1;
      *(v49 + 8) = 20;
      *(v49 + 16) = "R16Unorm";
      qword_1EE1BB728 = v49;
      v50 = re::introspectionAllocator();
      v51 = (*(*v50 + 32))(v50, 24, 8);
      *v51 = 1;
      *(v51 + 8) = 22;
      *(v51 + 16) = "R16Snorm";
      qword_1EE1BB730 = v51;
      v52 = re::introspectionAllocator();
      v53 = (*(*v52 + 32))(v52, 24, 8);
      *v53 = 1;
      *(v53 + 8) = 23;
      *(v53 + 16) = "R16Uint";
      qword_1EE1BB738 = v53;
      v54 = re::introspectionAllocator();
      v55 = (*(*v54 + 32))(v54, 24, 8);
      *v55 = 1;
      *(v55 + 8) = 24;
      *(v55 + 16) = "R16Sint";
      qword_1EE1BB740 = v55;
      v56 = re::introspectionAllocator();
      v57 = (*(*v56 + 32))(v56, 24, 8);
      *v57 = 1;
      *(v57 + 8) = 25;
      *(v57 + 16) = "R16Float";
      qword_1EE1BB748 = v57;
      v58 = re::introspectionAllocator();
      v59 = (*(*v58 + 32))(v58, 24, 8);
      *v59 = 1;
      *(v59 + 8) = 30;
      *(v59 + 16) = "RG8Unorm";
      qword_1EE1BB750 = v59;
      v60 = re::introspectionAllocator();
      v61 = (*(*v60 + 32))(v60, 24, 8);
      *v61 = 1;
      *(v61 + 8) = 31;
      *(v61 + 16) = "RG8Unorm_sRGB";
      qword_1EE1BB758 = v61;
      v62 = re::introspectionAllocator();
      v63 = (*(*v62 + 32))(v62, 24, 8);
      *v63 = 1;
      *(v63 + 8) = 32;
      *(v63 + 16) = "RG8Snorm";
      qword_1EE1BB760 = v63;
      v64 = re::introspectionAllocator();
      v65 = (*(*v64 + 32))(v64, 24, 8);
      *v65 = 1;
      *(v65 + 8) = 33;
      *(v65 + 16) = "RG8Uint";
      qword_1EE1BB768 = v65;
      v66 = re::introspectionAllocator();
      v67 = (*(*v66 + 32))(v66, 24, 8);
      *v67 = 1;
      *(v67 + 8) = 34;
      *(v67 + 16) = "RG8Sint";
      qword_1EE1BB770 = v67;
      v68 = re::introspectionAllocator();
      v69 = (*(*v68 + 32))(v68, 24, 8);
      *v69 = 1;
      *(v69 + 8) = 40;
      *(v69 + 16) = "B5G6R5Unorm";
      qword_1EE1BB778 = v69;
      v70 = re::introspectionAllocator();
      v71 = (*(*v70 + 32))(v70, 24, 8);
      *v71 = 1;
      *(v71 + 8) = 41;
      *(v71 + 16) = "A1BGR5Unorm";
      qword_1EE1BB780 = v71;
      v72 = re::introspectionAllocator();
      v73 = (*(*v72 + 32))(v72, 24, 8);
      *v73 = 1;
      *(v73 + 8) = 42;
      *(v73 + 16) = "ABGR4Unorm";
      qword_1EE1BB788 = v73;
      v74 = re::introspectionAllocator();
      v75 = (*(*v74 + 32))(v74, 24, 8);
      *v75 = 1;
      *(v75 + 8) = 43;
      *(v75 + 16) = "BGR5A1Unorm";
      qword_1EE1BB790 = v75;
      v76 = re::introspectionAllocator();
      v77 = (*(*v76 + 32))(v76, 24, 8);
      *v77 = 1;
      *(v77 + 8) = 53;
      *(v77 + 16) = "R32Uint";
      qword_1EE1BB798 = v77;
      v78 = re::introspectionAllocator();
      v79 = (*(*v78 + 32))(v78, 24, 8);
      *v79 = 1;
      *(v79 + 8) = 54;
      *(v79 + 16) = "R32Sint";
      qword_1EE1BB7A0 = v79;
      v80 = re::introspectionAllocator();
      v81 = (*(*v80 + 32))(v80, 24, 8);
      *v81 = 1;
      *(v81 + 8) = 55;
      *(v81 + 16) = "R32Float";
      qword_1EE1BB7A8 = v81;
      v82 = re::introspectionAllocator();
      v83 = (*(*v82 + 32))(v82, 24, 8);
      *v83 = 1;
      *(v83 + 8) = 60;
      *(v83 + 16) = "RG16Unorm";
      qword_1EE1BB7B0 = v83;
      v84 = re::introspectionAllocator();
      v85 = (*(*v84 + 32))(v84, 24, 8);
      *v85 = 1;
      *(v85 + 8) = 62;
      *(v85 + 16) = "RG16Snorm";
      qword_1EE1BB7B8 = v85;
      v86 = re::introspectionAllocator();
      v87 = (*(*v86 + 32))(v86, 24, 8);
      *v87 = 1;
      *(v87 + 8) = 63;
      *(v87 + 16) = "RG16Uint";
      qword_1EE1BB7C0 = v87;
      v88 = re::introspectionAllocator();
      v89 = (*(*v88 + 32))(v88, 24, 8);
      *v89 = 1;
      *(v89 + 8) = 64;
      *(v89 + 16) = "RG16Sint";
      qword_1EE1BB7C8 = v89;
      v90 = re::introspectionAllocator();
      v91 = (*(*v90 + 32))(v90, 24, 8);
      *v91 = 1;
      *(v91 + 8) = 65;
      *(v91 + 16) = "RG16Float";
      qword_1EE1BB7D0 = v91;
      v92 = re::introspectionAllocator();
      v93 = (*(*v92 + 32))(v92, 24, 8);
      *v93 = 1;
      *(v93 + 8) = 70;
      *(v93 + 16) = "RGBA8Unorm";
      qword_1EE1BB7D8 = v93;
      v94 = re::introspectionAllocator();
      v95 = (*(*v94 + 32))(v94, 24, 8);
      *v95 = 1;
      *(v95 + 8) = 71;
      *(v95 + 16) = "RGBA8Unorm_sRGB";
      qword_1EE1BB7E0 = v95;
      v96 = re::introspectionAllocator();
      v97 = (*(*v96 + 32))(v96, 24, 8);
      *v97 = 1;
      *(v97 + 8) = 72;
      *(v97 + 16) = "RGBA8Snorm";
      qword_1EE1BB7E8 = v97;
      v98 = re::introspectionAllocator();
      v99 = (*(*v98 + 32))(v98, 24, 8);
      *v99 = 1;
      *(v99 + 8) = 73;
      *(v99 + 16) = "RGBA8Uint";
      qword_1EE1BB7F0 = v99;
      v100 = re::introspectionAllocator();
      v101 = (*(*v100 + 32))(v100, 24, 8);
      *v101 = 1;
      *(v101 + 8) = 74;
      *(v101 + 16) = "RGBA8Sint";
      qword_1EE1BB7F8 = v101;
      v102 = re::introspectionAllocator();
      v103 = (*(*v102 + 32))(v102, 24, 8);
      *v103 = 1;
      *(v103 + 8) = 80;
      *(v103 + 16) = "BGRA8Unorm";
      qword_1EE1BB800 = v103;
      v104 = re::introspectionAllocator();
      v105 = (*(*v104 + 32))(v104, 24, 8);
      *v105 = 1;
      *(v105 + 8) = 81;
      *(v105 + 16) = "BGRA8Unorm_sRGB";
      qword_1EE1BB808 = v105;
      v106 = re::introspectionAllocator();
      v107 = (*(*v106 + 32))(v106, 24, 8);
      *v107 = 1;
      *(v107 + 8) = 90;
      *(v107 + 16) = "RGB10A2Unorm";
      qword_1EE1BB810 = v107;
      v108 = re::introspectionAllocator();
      v109 = (*(*v108 + 32))(v108, 24, 8);
      *v109 = 1;
      *(v109 + 8) = 91;
      *(v109 + 16) = "RGB10A2Uint";
      qword_1EE1BB818 = v109;
      v110 = re::introspectionAllocator();
      v111 = (*(*v110 + 32))(v110, 24, 8);
      *v111 = 1;
      *(v111 + 8) = 92;
      *(v111 + 16) = "RG11B10Float";
      qword_1EE1BB820 = v111;
      v112 = re::introspectionAllocator();
      v113 = (*(*v112 + 32))(v112, 24, 8);
      *v113 = 1;
      *(v113 + 8) = 93;
      *(v113 + 16) = "RGB9E5Float";
      qword_1EE1BB828 = v113;
      v114 = re::introspectionAllocator();
      v115 = (*(*v114 + 32))(v114, 24, 8);
      *v115 = 1;
      *(v115 + 8) = 554;
      *(v115 + 16) = "BGR10_XR";
      qword_1EE1BB830 = v115;
      v116 = re::introspectionAllocator();
      v117 = (*(*v116 + 32))(v116, 24, 8);
      *v117 = 1;
      *(v117 + 8) = 555;
      *(v117 + 16) = "BGR10_XR_sRGB";
      qword_1EE1BB838 = v117;
      v118 = re::introspectionAllocator();
      v119 = (*(*v118 + 32))(v118, 24, 8);
      *v119 = 1;
      *(v119 + 8) = 103;
      *(v119 + 16) = "RG32Uint";
      qword_1EE1BB840 = v119;
      v120 = re::introspectionAllocator();
      v121 = (*(*v120 + 32))(v120, 24, 8);
      *v121 = 1;
      *(v121 + 8) = 104;
      *(v121 + 16) = "RG32Sint";
      qword_1EE1BB848 = v121;
      v122 = re::introspectionAllocator();
      v123 = (*(*v122 + 32))(v122, 24, 8);
      *v123 = 1;
      *(v123 + 8) = 105;
      *(v123 + 16) = "RG32Float";
      qword_1EE1BB850 = v123;
      v124 = re::introspectionAllocator();
      v125 = (*(*v124 + 32))(v124, 24, 8);
      *v125 = 1;
      *(v125 + 8) = 110;
      *(v125 + 16) = "RGBA16Unorm";
      qword_1EE1BB858 = v125;
      v126 = re::introspectionAllocator();
      v127 = (*(*v126 + 32))(v126, 24, 8);
      *v127 = 1;
      *(v127 + 8) = 112;
      *(v127 + 16) = "RGBA16Snorm";
      qword_1EE1BB860 = v127;
      v128 = re::introspectionAllocator();
      v129 = (*(*v128 + 32))(v128, 24, 8);
      *v129 = 1;
      *(v129 + 8) = 113;
      *(v129 + 16) = "RGBA16Uint";
      qword_1EE1BB868 = v129;
      v130 = re::introspectionAllocator();
      v131 = (*(*v130 + 32))(v130, 24, 8);
      *v131 = 1;
      *(v131 + 8) = 114;
      *(v131 + 16) = "RGBA16Sint";
      qword_1EE1BB870 = v131;
      v132 = re::introspectionAllocator();
      v133 = (*(*v132 + 32))(v132, 24, 8);
      *v133 = 1;
      *(v133 + 8) = 115;
      *(v133 + 16) = "RGBA16Float";
      qword_1EE1BB878 = v133;
      v134 = re::introspectionAllocator();
      v135 = (*(*v134 + 32))(v134, 24, 8);
      *v135 = 1;
      *(v135 + 8) = 552;
      *(v135 + 16) = "BGRA10_XR";
      qword_1EE1BB880 = v135;
      v136 = re::introspectionAllocator();
      v137 = (*(*v136 + 32))(v136, 24, 8);
      *v137 = 1;
      *(v137 + 8) = 553;
      *(v137 + 16) = "BGRA10_XR_sRGB";
      qword_1EE1BB888 = v137;
      v138 = re::introspectionAllocator();
      v139 = (*(*v138 + 32))(v138, 24, 8);
      *v139 = 1;
      *(v139 + 8) = 123;
      *(v139 + 16) = "RGBA32Uint";
      qword_1EE1BB890 = v139;
      v140 = re::introspectionAllocator();
      v141 = (*(*v140 + 32))(v140, 24, 8);
      *v141 = 1;
      *(v141 + 8) = 124;
      *(v141 + 16) = "RGBA32Sint";
      qword_1EE1BB898 = v141;
      v142 = re::introspectionAllocator();
      v143 = (*(*v142 + 32))(v142, 24, 8);
      *v143 = 1;
      *(v143 + 8) = 125;
      *(v143 + 16) = "RGBA32Float";
      qword_1EE1BB8A0 = v143;
      v144 = re::introspectionAllocator();
      v145 = (*(*v144 + 32))(v144, 24, 8);
      *v145 = 1;
      *(v145 + 8) = 130;
      *(v145 + 16) = "BC1_RGBA";
      qword_1EE1BB8A8 = v145;
      v146 = re::introspectionAllocator();
      v147 = (*(*v146 + 32))(v146, 24, 8);
      *v147 = 1;
      *(v147 + 8) = 131;
      *(v147 + 16) = "BC1_RGBA_sRGB";
      qword_1EE1BB8B0 = v147;
      v148 = re::introspectionAllocator();
      v149 = (*(*v148 + 32))(v148, 24, 8);
      *v149 = 1;
      *(v149 + 8) = 132;
      *(v149 + 16) = "BC2_RGBA";
      qword_1EE1BB8B8 = v149;
      v150 = re::introspectionAllocator();
      v151 = (*(*v150 + 32))(v150, 24, 8);
      *v151 = 1;
      *(v151 + 8) = 133;
      *(v151 + 16) = "BC2_RGBA_sRGB";
      qword_1EE1BB8C0 = v151;
      v152 = re::introspectionAllocator();
      v153 = (*(*v152 + 32))(v152, 24, 8);
      *v153 = 1;
      *(v153 + 8) = 134;
      *(v153 + 16) = "BC3_RGBA";
      qword_1EE1BB8C8 = v153;
      v154 = re::introspectionAllocator();
      v155 = (*(*v154 + 32))(v154, 24, 8);
      *v155 = 1;
      *(v155 + 8) = 135;
      *(v155 + 16) = "BC3_RGBA_sRGB";
      qword_1EE1BB8D0 = v155;
      v156 = re::introspectionAllocator();
      v157 = (*(*v156 + 32))(v156, 24, 8);
      *v157 = 1;
      *(v157 + 8) = 140;
      *(v157 + 16) = "BC4_RUnorm";
      qword_1EE1BB8D8 = v157;
      v158 = re::introspectionAllocator();
      v159 = (*(*v158 + 32))(v158, 24, 8);
      *v159 = 1;
      *(v159 + 8) = 141;
      *(v159 + 16) = "BC4_RSnorm";
      qword_1EE1BB8E0 = v159;
      v160 = re::introspectionAllocator();
      v161 = (*(*v160 + 32))(v160, 24, 8);
      *v161 = 1;
      *(v161 + 8) = 142;
      *(v161 + 16) = "BC5_RGUnorm";
      qword_1EE1BB8E8 = v161;
      v162 = re::introspectionAllocator();
      v163 = (*(*v162 + 32))(v162, 24, 8);
      *v163 = 1;
      *(v163 + 8) = 143;
      *(v163 + 16) = "BC5_RGSnorm";
      qword_1EE1BB8F0 = v163;
      v164 = re::introspectionAllocator();
      v165 = (*(*v164 + 32))(v164, 24, 8);
      *v165 = 1;
      *(v165 + 8) = 150;
      *(v165 + 16) = "BC6H_RGBFloat";
      qword_1EE1BB8F8 = v165;
      v166 = re::introspectionAllocator();
      v167 = (*(*v166 + 32))(v166, 24, 8);
      *v167 = 1;
      *(v167 + 8) = 151;
      *(v167 + 16) = "BC6H_RGBUfloat";
      qword_1EE1BB900 = v167;
      v168 = re::introspectionAllocator();
      v169 = (*(*v168 + 32))(v168, 24, 8);
      *v169 = 1;
      *(v169 + 8) = 152;
      *(v169 + 16) = "BC7_RGBAUnorm";
      qword_1EE1BB908 = v169;
      v170 = re::introspectionAllocator();
      v171 = (*(*v170 + 32))(v170, 24, 8);
      *v171 = 1;
      *(v171 + 8) = 153;
      *(v171 + 16) = "BC7_RGBAUnorm_sRGB";
      qword_1EE1BB910 = v171;
      v172 = re::introspectionAllocator();
      v173 = (*(*v172 + 32))(v172, 24, 8);
      *v173 = 1;
      *(v173 + 8) = 160;
      *(v173 + 16) = "PVRTC_RGB_2BPP";
      qword_1EE1BB918 = v173;
      v174 = re::introspectionAllocator();
      v175 = (*(*v174 + 32))(v174, 24, 8);
      *v175 = 1;
      *(v175 + 8) = 161;
      *(v175 + 16) = "PVRTC_RGB_2BPP_sRGB";
      qword_1EE1BB920 = v175;
      v176 = re::introspectionAllocator();
      v177 = (*(*v176 + 32))(v176, 24, 8);
      *v177 = 1;
      *(v177 + 8) = 162;
      *(v177 + 16) = "PVRTC_RGB_4BPP";
      qword_1EE1BB928 = v177;
      v178 = re::introspectionAllocator();
      v179 = (*(*v178 + 32))(v178, 24, 8);
      *v179 = 1;
      *(v179 + 8) = 163;
      *(v179 + 16) = "PVRTC_RGB_4BPP_sRGB";
      qword_1EE1BB930 = v179;
      v180 = re::introspectionAllocator();
      v181 = (*(*v180 + 32))(v180, 24, 8);
      *v181 = 1;
      *(v181 + 8) = 164;
      *(v181 + 16) = "PVRTC_RGBA_2BPP";
      qword_1EE1BB938 = v181;
      v182 = re::introspectionAllocator();
      v183 = (*(*v182 + 32))(v182, 24, 8);
      *v183 = 1;
      *(v183 + 8) = 165;
      *(v183 + 16) = "PVRTC_RGBA_2BPP_sRGB";
      qword_1EE1BB940 = v183;
      v184 = re::introspectionAllocator();
      v185 = (*(*v184 + 32))(v184, 24, 8);
      *v185 = 1;
      *(v185 + 8) = 166;
      *(v185 + 16) = "PVRTC_RGBA_4BPP";
      qword_1EE1BB948 = v185;
      v186 = re::introspectionAllocator();
      v187 = (*(*v186 + 32))(v186, 24, 8);
      *v187 = 1;
      *(v187 + 8) = 167;
      *(v187 + 16) = "PVRTC_RGBA_4BPP_sRGB";
      qword_1EE1BB950 = v187;
      v188 = re::introspectionAllocator();
      v189 = (*(*v188 + 32))(v188, 24, 8);
      *v189 = 1;
      *(v189 + 8) = 170;
      *(v189 + 16) = "EAC_R11Unorm";
      qword_1EE1BB958 = v189;
      v190 = re::introspectionAllocator();
      v191 = (*(*v190 + 32))(v190, 24, 8);
      *v191 = 1;
      *(v191 + 8) = 172;
      *(v191 + 16) = "EAC_R11Snorm";
      qword_1EE1BB960 = v191;
      v192 = re::introspectionAllocator();
      v193 = (*(*v192 + 32))(v192, 24, 8);
      *v193 = 1;
      *(v193 + 8) = 174;
      *(v193 + 16) = "EAC_RG11Unorm";
      qword_1EE1BB968 = v193;
      v194 = re::introspectionAllocator();
      v195 = (*(*v194 + 32))(v194, 24, 8);
      *v195 = 1;
      *(v195 + 8) = 176;
      *(v195 + 16) = "EAC_RG11Snorm";
      qword_1EE1BB970 = v195;
      v196 = re::introspectionAllocator();
      v197 = (*(*v196 + 32))(v196, 24, 8);
      *v197 = 1;
      *(v197 + 8) = 178;
      *(v197 + 16) = "EAC_RGBA8";
      qword_1EE1BB978 = v197;
      v198 = re::introspectionAllocator();
      v199 = (*(*v198 + 32))(v198, 24, 8);
      *v199 = 1;
      *(v199 + 8) = 179;
      *(v199 + 16) = "EAC_RGBA8_sRGB";
      qword_1EE1BB980 = v199;
      v200 = re::introspectionAllocator();
      v201 = (*(*v200 + 32))(v200, 24, 8);
      *v201 = 1;
      *(v201 + 8) = 180;
      *(v201 + 16) = "ETC2_RGB8";
      qword_1EE1BB988 = v201;
      v202 = re::introspectionAllocator();
      v203 = (*(*v202 + 32))(v202, 24, 8);
      *v203 = 1;
      *(v203 + 8) = 181;
      *(v203 + 16) = "ETC2_RGB8_sRGB";
      qword_1EE1BB990 = v203;
      v204 = re::introspectionAllocator();
      v205 = (*(*v204 + 32))(v204, 24, 8);
      *v205 = 1;
      *(v205 + 8) = 182;
      *(v205 + 16) = "ETC2_RGB8A1";
      qword_1EE1BB998 = v205;
      v206 = re::introspectionAllocator();
      v207 = (*(*v206 + 32))(v206, 24, 8);
      *v207 = 1;
      *(v207 + 8) = 183;
      *(v207 + 16) = "ETC2_RGB8A1_sRGB";
      qword_1EE1BB9A0 = v207;
      v208 = re::introspectionAllocator();
      v209 = (*(*v208 + 32))(v208, 24, 8);
      *v209 = 1;
      *(v209 + 8) = 186;
      *(v209 + 16) = "ASTC_4x4_sRGB";
      qword_1EE1BB9A8 = v209;
      v210 = re::introspectionAllocator();
      v211 = (*(*v210 + 32))(v210, 24, 8);
      *v211 = 1;
      *(v211 + 8) = 187;
      *(v211 + 16) = "ASTC_5x4_sRGB";
      qword_1EE1BB9B0 = v211;
      v212 = re::introspectionAllocator();
      v213 = (*(*v212 + 32))(v212, 24, 8);
      *v213 = 1;
      *(v213 + 8) = 188;
      *(v213 + 16) = "ASTC_5x5_sRGB";
      qword_1EE1BB9B8 = v213;
      v214 = re::introspectionAllocator();
      v215 = (*(*v214 + 32))(v214, 24, 8);
      *v215 = 1;
      *(v215 + 8) = 189;
      *(v215 + 16) = "ASTC_6x5_sRGB";
      qword_1EE1BB9C0 = v215;
      v216 = re::introspectionAllocator();
      v217 = (*(*v216 + 32))(v216, 24, 8);
      *v217 = 1;
      *(v217 + 8) = 190;
      *(v217 + 16) = "ASTC_6x6_sRGB";
      qword_1EE1BB9C8 = v217;
      v218 = re::introspectionAllocator();
      v219 = (*(*v218 + 32))(v218, 24, 8);
      *v219 = 1;
      *(v219 + 8) = 192;
      *(v219 + 16) = "ASTC_8x5_sRGB";
      qword_1EE1BB9D0 = v219;
      v220 = re::introspectionAllocator();
      v221 = (*(*v220 + 32))(v220, 24, 8);
      *v221 = 1;
      *(v221 + 8) = 193;
      *(v221 + 16) = "ASTC_8x6_sRGB";
      qword_1EE1BB9D8 = v221;
      v222 = re::introspectionAllocator();
      v223 = (*(*v222 + 32))(v222, 24, 8);
      *v223 = 1;
      *(v223 + 8) = 194;
      *(v223 + 16) = "ASTC_8x8_sRGB";
      qword_1EE1BB9E0 = v223;
      v224 = re::introspectionAllocator();
      v225 = (*(*v224 + 32))(v224, 24, 8);
      *v225 = 1;
      *(v225 + 8) = 195;
      *(v225 + 16) = "ASTC_10x5_sRGB";
      qword_1EE1BB9E8 = v225;
      v226 = re::introspectionAllocator();
      v227 = (*(*v226 + 32))(v226, 24, 8);
      *v227 = 1;
      *(v227 + 8) = 196;
      *(v227 + 16) = "ASTC_10x6_sRGB";
      qword_1EE1BB9F0 = v227;
      v228 = re::introspectionAllocator();
      v229 = (*(*v228 + 32))(v228, 24, 8);
      *v229 = 1;
      *(v229 + 8) = 197;
      *(v229 + 16) = "ASTC_10x8_sRGB";
      qword_1EE1BB9F8 = v229;
      v230 = re::introspectionAllocator();
      v231 = (*(*v230 + 32))(v230, 24, 8);
      *v231 = 1;
      *(v231 + 8) = 198;
      *(v231 + 16) = "ASTC_10x10_sRGB";
      qword_1EE1BBA00 = v231;
      v232 = re::introspectionAllocator();
      v233 = (*(*v232 + 32))(v232, 24, 8);
      *v233 = 1;
      *(v233 + 8) = 199;
      *(v233 + 16) = "ASTC_12x10_sRGB";
      qword_1EE1BBA08 = v233;
      v234 = re::introspectionAllocator();
      v235 = (*(*v234 + 32))(v234, 24, 8);
      *v235 = 1;
      *(v235 + 8) = 200;
      *(v235 + 16) = "ASTC_12x12_sRGB";
      qword_1EE1BBA10 = v235;
      v236 = re::introspectionAllocator();
      v237 = (*(*v236 + 32))(v236, 24, 8);
      *v237 = 1;
      *(v237 + 8) = 204;
      *(v237 + 16) = "ASTC_4x4_LDR";
      qword_1EE1BBA18 = v237;
      v238 = re::introspectionAllocator();
      v239 = (*(*v238 + 32))(v238, 24, 8);
      *v239 = 1;
      *(v239 + 8) = 205;
      *(v239 + 16) = "ASTC_5x4_LDR";
      qword_1EE1BBA20 = v239;
      v240 = re::introspectionAllocator();
      v241 = (*(*v240 + 32))(v240, 24, 8);
      *v241 = 1;
      *(v241 + 8) = 206;
      *(v241 + 16) = "ASTC_5x5_LDR";
      qword_1EE1BBA28 = v241;
      v242 = re::introspectionAllocator();
      v243 = (*(*v242 + 32))(v242, 24, 8);
      *v243 = 1;
      *(v243 + 8) = 207;
      *(v243 + 16) = "ASTC_6x5_LDR";
      qword_1EE1BBA30 = v243;
      v244 = re::introspectionAllocator();
      v245 = (*(*v244 + 32))(v244, 24, 8);
      *v245 = 1;
      *(v245 + 8) = 208;
      *(v245 + 16) = "ASTC_6x6_LDR";
      qword_1EE1BBA38 = v245;
      v246 = re::introspectionAllocator();
      v247 = (*(*v246 + 32))(v246, 24, 8);
      *v247 = 1;
      *(v247 + 8) = 210;
      *(v247 + 16) = "ASTC_8x5_LDR";
      qword_1EE1BBA40 = v247;
      v248 = re::introspectionAllocator();
      v249 = (*(*v248 + 32))(v248, 24, 8);
      *v249 = 1;
      *(v249 + 8) = 211;
      *(v249 + 16) = "ASTC_8x6_LDR";
      qword_1EE1BBA48 = v249;
      v250 = re::introspectionAllocator();
      v251 = (*(*v250 + 32))(v250, 24, 8);
      *v251 = 1;
      *(v251 + 8) = 212;
      *(v251 + 16) = "ASTC_8x8_LDR";
      qword_1EE1BBA50 = v251;
      v252 = re::introspectionAllocator();
      v253 = (*(*v252 + 32))(v252, 24, 8);
      *v253 = 1;
      *(v253 + 8) = 213;
      *(v253 + 16) = "ASTC_10x5_LDR";
      qword_1EE1BBA58 = v253;
      v254 = re::introspectionAllocator();
      v255 = (*(*v254 + 32))(v254, 24, 8);
      *v255 = 1;
      *(v255 + 8) = 214;
      *(v255 + 16) = "ASTC_10x6_LDR";
      qword_1EE1BBA60 = v255;
      v256 = re::introspectionAllocator();
      v257 = (*(*v256 + 32))(v256, 24, 8);
      *v257 = 1;
      *(v257 + 8) = 215;
      *(v257 + 16) = "ASTC_10x8_LDR";
      qword_1EE1BBA68 = v257;
      v258 = re::introspectionAllocator();
      v259 = (*(*v258 + 32))(v258, 24, 8);
      *v259 = 1;
      *(v259 + 8) = 216;
      *(v259 + 16) = "ASTC_10x10_LDR";
      qword_1EE1BBA70 = v259;
      v260 = re::introspectionAllocator();
      v261 = (*(*v260 + 32))(v260, 24, 8);
      *v261 = 1;
      *(v261 + 8) = 217;
      *(v261 + 16) = "ASTC_12x10_LDR";
      qword_1EE1BBA78 = v261;
      v262 = re::introspectionAllocator();
      v263 = (*(*v262 + 32))(v262, 24, 8);
      *v263 = 1;
      *(v263 + 8) = 218;
      *(v263 + 16) = "ASTC_12x12_LDR";
      qword_1EE1BBA80 = v263;
      v264 = re::introspectionAllocator();
      v265 = (*(*v264 + 32))(v264, 24, 8);
      *v265 = 1;
      *(v265 + 8) = 222;
      *(v265 + 16) = "ASTC_4x4_HDR";
      qword_1EE1BBA88 = v265;
      v266 = re::introspectionAllocator();
      v267 = (*(*v266 + 32))(v266, 24, 8);
      *v267 = 1;
      *(v267 + 8) = 223;
      *(v267 + 16) = "ASTC_5x4_HDR";
      qword_1EE1BBA90 = v267;
      v268 = re::introspectionAllocator();
      v269 = (*(*v268 + 32))(v268, 24, 8);
      *v269 = 1;
      *(v269 + 8) = 224;
      *(v269 + 16) = "ASTC_5x5_HDR";
      qword_1EE1BBA98 = v269;
      v270 = re::introspectionAllocator();
      v271 = (*(*v270 + 32))(v270, 24, 8);
      *v271 = 1;
      *(v271 + 8) = 225;
      *(v271 + 16) = "ASTC_6x5_HDR";
      qword_1EE1BBAA0 = v271;
      v272 = re::introspectionAllocator();
      v273 = (*(*v272 + 32))(v272, 24, 8);
      *v273 = 1;
      *(v273 + 8) = 226;
      *(v273 + 16) = "ASTC_6x6_HDR";
      qword_1EE1BBAA8 = v273;
      v274 = re::introspectionAllocator();
      v275 = (*(*v274 + 32))(v274, 24, 8);
      *v275 = 1;
      *(v275 + 8) = 228;
      *(v275 + 16) = "ASTC_8x5_HDR";
      qword_1EE1BBAB0 = v275;
      v276 = re::introspectionAllocator();
      v277 = (*(*v276 + 32))(v276, 24, 8);
      *v277 = 1;
      *(v277 + 8) = 229;
      *(v277 + 16) = "ASTC_8x6_HDR";
      qword_1EE1BBAB8 = v277;
      v278 = re::introspectionAllocator();
      v279 = (*(*v278 + 32))(v278, 24, 8);
      *v279 = 1;
      *(v279 + 8) = 230;
      *(v279 + 16) = "ASTC_8x8_HDR";
      qword_1EE1BBAC0 = v279;
      v280 = re::introspectionAllocator();
      v281 = (*(*v280 + 32))(v280, 24, 8);
      *v281 = 1;
      *(v281 + 8) = 231;
      *(v281 + 16) = "ASTC_10x5_HDR";
      qword_1EE1BBAC8 = v281;
      v282 = re::introspectionAllocator();
      v283 = (*(*v282 + 32))(v282, 24, 8);
      *v283 = 1;
      *(v283 + 8) = 232;
      *(v283 + 16) = "ASTC_10x6_HDR";
      qword_1EE1BBAD0 = v283;
      v284 = re::introspectionAllocator();
      v285 = (*(*v284 + 32))(v284, 24, 8);
      *v285 = 1;
      *(v285 + 8) = 233;
      *(v285 + 16) = "ASTC_10x8_HDR";
      qword_1EE1BBAD8 = v285;
      v286 = re::introspectionAllocator();
      v287 = (*(*v286 + 32))(v286, 24, 8);
      *v287 = 1;
      *(v287 + 8) = 234;
      *(v287 + 16) = "ASTC_10x10_HDR";
      qword_1EE1BBAE0 = v287;
      v288 = re::introspectionAllocator();
      v289 = (*(*v288 + 32))(v288, 24, 8);
      *v289 = 1;
      *(v289 + 8) = 235;
      *(v289 + 16) = "ASTC_12x10_HDR";
      qword_1EE1BBAE8 = v289;
      v290 = re::introspectionAllocator();
      v291 = (*(*v290 + 32))(v290, 24, 8);
      *v291 = 1;
      *(v291 + 8) = 236;
      *(v291 + 16) = "ASTC_12x12_HDR";
      qword_1EE1BBAF0 = v291;
      v292 = re::introspectionAllocator();
      v293 = (*(*v292 + 32))(v292, 24, 8);
      *v293 = 1;
      *(v293 + 8) = 240;
      *(v293 + 16) = "GBGR422";
      qword_1EE1BBAF8 = v293;
      v294 = re::introspectionAllocator();
      v295 = (*(*v294 + 32))(v294, 24, 8);
      *v295 = 1;
      *(v295 + 8) = 241;
      *(v295 + 16) = "BGRG422";
      qword_1EE1BBB00 = v295;
      v296 = re::introspectionAllocator();
      v297 = (*(*v296 + 32))(v296, 24, 8);
      *v297 = 1;
      *(v297 + 8) = 250;
      *(v297 + 16) = "Depth16Unorm";
      qword_1EE1BBB08 = v297;
      v298 = re::introspectionAllocator();
      v299 = (*(*v298 + 32))(v298, 24, 8);
      *v299 = 1;
      *(v299 + 8) = 252;
      *(v299 + 16) = "Depth32Float";
      qword_1EE1BBB10 = v299;
      v300 = re::introspectionAllocator();
      v301 = (*(*v300 + 32))(v300, 24, 8);
      *v301 = 1;
      *(v301 + 8) = 253;
      *(v301 + 16) = "Stencil8";
      qword_1EE1BBB18 = v301;
      v302 = re::introspectionAllocator();
      v303 = (*(*v302 + 32))(v302, 24, 8);
      *v303 = 1;
      *(v303 + 8) = 255;
      *(v303 + 16) = "Depth24Unorm_Stencil8";
      qword_1EE1BBB20 = v303;
      v304 = re::introspectionAllocator();
      v305 = (*(*v304 + 32))(v304, 24, 8);
      *v305 = 1;
      *(v305 + 8) = 260;
      *(v305 + 16) = "Depth32Float_Stencil8";
      qword_1EE1BBB28 = v305;
      v306 = re::introspectionAllocator();
      v307 = (*(*v306 + 32))(v306, 24, 8);
      *v307 = 1;
      *(v307 + 8) = 261;
      *(v307 + 16) = "X32_Stencil8";
      qword_1EE1BBB30 = v307;
      v308 = re::introspectionAllocator();
      v309 = (*(*v308 + 32))(v308, 24, 8);
      *v309 = 1;
      *(v309 + 8) = 262;
      *(v309 + 16) = "X24_Stencil8";
      qword_1EE1BBB38 = v309;
      __cxa_guard_release(&qword_1EE1BAE20);
    }
  }

  v11 = qword_1EE1BB1B8;
  v315 = v9;
  v316 = v10;
  re::TypeBuilder::beginEnumType(v314, &v311, 1, 1, &v315);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v313.var0 = 2 * v16;
        v313.var1 = v15;
        re::TypeBuilder::addEnumConstant(v314, v20, &v313);
        if (*&v313.var0)
        {
          if (*&v313.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v313.var0 = 2 * v25;
          v313.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v314, v29, &v313);
          if (*&v313.var0)
          {
            if (*&v313.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v314, v31);
  xmmword_1EE1BB198 = v313;
  if (v311)
  {
    if (v311)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BB178;
}

uint64_t *re::mtl::introspect_TextureType(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BAE30, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BAE38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE38))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB1C0, "TextureType", 4, 4, 1, 1);
      qword_1EE1BB1C0 = &unk_1F5D0C658;
      qword_1EE1BB200 = &re::mtl::introspect_TextureType(BOOL)::enumTable;
      dword_1EE1BB1D0 = 9;
      __cxa_guard_release(&qword_1EE1BAE38);
    }

    if (v2)
    {
      if (byte_1EE1BADD5)
      {
        return &qword_1EE1BB1C0;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v52);
      v3 = byte_1EE1BADD5;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v52);
      if (v3)
      {
        return &qword_1EE1BB1C0;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE1BADD5)
      {
        goto LABEL_46;
      }
    }

    byte_1EE1BADD5 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB1C0, a2);
    v49 = 0x1FCECCB8732F5AALL;
    v50 = "TextureType";
    v53 = 208862;
    v54 = "int";
    v9 = v52[0];
    v10 = v52[1];
    if (v53)
    {
      if (v53)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v50);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v48);
    __break(1u);
LABEL_49:
    if (__cxa_guard_acquire(&qword_1EE1BAE30))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 0;
      *(v35 + 16) = "Texture1D";
      qword_1EE1BAF20 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 1;
      *(v37 + 16) = "Texture1DArray";
      qword_1EE1BAF28 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 2;
      *(v39 + 16) = "Texture2D";
      qword_1EE1BAF30 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 3;
      *(v41 + 16) = "Texture2DArray";
      qword_1EE1BAF38 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 4;
      *(v43 + 16) = "Texture2DMultisample";
      qword_1EE1BAF40 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 5;
      *(v45 + 16) = "TextureCube";
      qword_1EE1BAF48 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 7;
      *(v47 + 16) = "Texture3D";
      qword_1EE1BAF50 = v47;
      __cxa_guard_release(&qword_1EE1BAE30);
    }
  }

  v11 = qword_1EE1BB200;
  v53 = v9;
  v54 = v10;
  re::TypeBuilder::beginEnumType(v52, &v49, 1, 1, &v53);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v51.var0 = 2 * v16;
        v51.var1 = v15;
        re::TypeBuilder::addEnumConstant(v52, v20, &v51);
        if (*&v51.var0)
        {
          if (*&v51.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v51.var0 = 2 * v25;
          v51.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v52, v29, &v51);
          if (*&v51.var0)
          {
            if (*&v51.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v52, v31);
  xmmword_1EE1BB1E0 = v51;
  if (v49)
  {
    if (v49)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BB1C0;
}

void re::mtl::introspect_TextureSwizzle(re::mtl *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BAE40, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BAE48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE48))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB208, "TextureSwizzle", 1, 1, 1, 1);
      qword_1EE1BB208 = &unk_1F5D0C658;
      qword_1EE1BB248 = &re::mtl::introspect_TextureSwizzle(BOOL)::enumTable;
      dword_1EE1BB218 = 9;
      __cxa_guard_release(&qword_1EE1BAE48);
    }

    if (byte_1EE1BADD6)
    {
      break;
    }

    byte_1EE1BADD6 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB208, a2);
    v41 = 0x582818C9D1EBD686;
    v42 = "TextureSwizzle";
    v45 = 0x31CD534126;
    v46 = "uint8_t";
    v4 = v44[0];
    v5 = v44[1];
    if (v45)
    {
      if (v45)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1BB248;
      v45 = v4;
      v46 = v5;
      re::TypeBuilder::beginEnumType(v44, &v41, 1, 1, &v45);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v43.var0 = 2 * v11;
            v43.var1 = v10;
            re::TypeBuilder::addEnumConstant(v44, v15, &v43);
            if (*&v43.var0)
            {
              if (*&v43.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v43.var0 = 2 * v20;
              v43.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v44, v24, &v43);
              if (*&v43.var0)
              {
                if (*&v43.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v44, v26);
      xmmword_1EE1BB228 = v43;
      if (v41)
      {
        if (v41)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v42);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v40);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1BAE40))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Zero";
      qword_1EE1BAEC0 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "One";
      qword_1EE1BAEC8 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Red";
      qword_1EE1BAED0 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "Green";
      qword_1EE1BAED8 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "Blue";
      qword_1EE1BAEE0 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 5;
      *(v39 + 16) = "Alpha";
      qword_1EE1BAEE8 = v39;
      __cxa_guard_release(&qword_1EE1BAE40);
    }
  }
}

void *re::mtl::allocInfo_TextureSwizzleChannels(re::mtl *this)
{
  if ((atomic_load_explicit(&qword_1EE1BAE50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BB3A8, "TextureSwizzleChannels");
    __cxa_guard_release(&qword_1EE1BAE50);
  }

  return &unk_1EE1BB3A8;
}

void re::mtl::initInfo_TextureSwizzleChannels(re::mtl *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x5A47A4A43A050066;
  v20[1] = "TextureSwizzleChannels";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1BAE58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE58))
  {
    v7 = re::introspectionAllocator();
    re::mtl::introspect_TextureSwizzle(v7, v8);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "red";
    *(v9 + 16) = &qword_1EE1BB208;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1BAEA0 = v9;
    v10 = re::introspectionAllocator();
    re::mtl::introspect_TextureSwizzle(v10, v11);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "green";
    *(v12 + 16) = &qword_1EE1BB208;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x100000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1BAEA8 = v12;
    v13 = re::introspectionAllocator();
    re::mtl::introspect_TextureSwizzle(v13, v14);
    v15 = (*(*v13 + 32))(v13, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "blue";
    *(v15 + 16) = &qword_1EE1BB208;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x200000003;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1BAEB0 = v15;
    v16 = re::introspectionAllocator();
    re::mtl::introspect_TextureSwizzle(v16, v17);
    v18 = (*(*v16 + 32))(v16, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "alpha";
    *(v18 + 16) = &qword_1EE1BB208;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x300000004;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1BAEB8 = v18;
    __cxa_guard_release(&qword_1EE1BAE58);
  }

  *(this + 2) = 0x400000008;
  *(this + 6) = 1;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1BAEA0;
  *(this + 9) = re::internal::defaultConstruct<re::mtl::TextureSwizzleChannels>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::mtl::TextureSwizzleChannels>;
  *(this + 13) = re::internal::defaultConstructV2<re::mtl::TextureSwizzleChannels>;
  *(this + 14) = re::internal::defaultDestructV2<re::mtl::TextureSwizzleChannels>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

double re::internal::defaultConstruct<re::mtl::TextureSwizzleChannels>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *&result = 84148994;
  *a3 = 84148994;
  return result;
}

double re::internal::defaultConstructV2<re::mtl::TextureSwizzleChannels>(_DWORD *a1)
{
  *&result = 84148994;
  *a1 = 84148994;
  return result;
}

uint64_t *re::mtl::introspect_StencilOperation(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BAE60, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BAE68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE68))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB250, "StencilOperation", 1, 1, 1, 1);
      qword_1EE1BB250 = &unk_1F5D0C658;
      qword_1EE1BB290 = &re::mtl::introspect_StencilOperation(BOOL)::enumTable;
      dword_1EE1BB260 = 9;
      __cxa_guard_release(&qword_1EE1BAE68);
    }

    if (v2)
    {
      if (byte_1EE1BADD7)
      {
        return &qword_1EE1BB250;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v54);
      v3 = byte_1EE1BADD7;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v54);
      if (v3)
      {
        return &qword_1EE1BB250;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE1BADD7)
      {
        goto LABEL_46;
      }
    }

    byte_1EE1BADD7 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB250, a2);
    v51 = 0xFB14E724CF1ABE56;
    v52 = "StencilOperation";
    v55 = 0x31CD534126;
    v56 = "uint8_t";
    v9 = v54[0];
    v10 = v54[1];
    if (v55)
    {
      if (v55)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v52);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v50);
    __break(1u);
LABEL_49:
    if (__cxa_guard_acquire(&qword_1EE1BAE60))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 0;
      *(v35 + 16) = "Keep";
      qword_1EE1BAF98 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 1;
      *(v37 + 16) = "Zero";
      qword_1EE1BAFA0 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 2;
      *(v39 + 16) = "Replace";
      qword_1EE1BAFA8 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 3;
      *(v41 + 16) = "IncrementClamp";
      qword_1EE1BAFB0 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 4;
      *(v43 + 16) = "DecrementClamp";
      qword_1EE1BAFB8 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 5;
      *(v45 + 16) = "Invert";
      qword_1EE1BAFC0 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 6;
      *(v47 + 16) = "IncrementWrap";
      qword_1EE1BAFC8 = v47;
      v48 = re::introspectionAllocator();
      v49 = (*(*v48 + 32))(v48, 24, 8);
      *v49 = 1;
      *(v49 + 8) = 7;
      *(v49 + 16) = "DecrementWrap";
      qword_1EE1BAFD0 = v49;
      __cxa_guard_release(&qword_1EE1BAE60);
    }
  }

  v11 = qword_1EE1BB290;
  v55 = v9;
  v56 = v10;
  re::TypeBuilder::beginEnumType(v54, &v51, 1, 1, &v55);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v53.var0 = 2 * v16;
        v53.var1 = v15;
        re::TypeBuilder::addEnumConstant(v54, v20, &v53);
        if (*&v53.var0)
        {
          if (*&v53.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v53.var0 = 2 * v25;
          v53.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v54, v29, &v53);
          if (*&v53.var0)
          {
            if (*&v53.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v54, v31);
  xmmword_1EE1BB270 = v53;
  if (v51)
  {
    if (v51)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BB250;
}

void *re::mtl::introspect_LoadAction(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "DontCare";
    re::mtl::introspect_LoadAction(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "Load";
    qword_1EE1C6198 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "Clear";
    qword_1EE1C61A0 = v14;
  }

  {
    v15 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_LoadAction(BOOL)::info, "LoadAction", 4, 4, 1, 1);
    *v15 = &unk_1F5D0C658;
    *(v15 + 8) = &re::mtl::introspect_LoadAction(BOOL)::enumTable;
    *(v15 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_LoadAction(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_LoadAction(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v17);
    v3 = re::mtl::introspect_LoadAction(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v17);
    if (v3)
    {
      return &re::mtl::introspect_LoadAction(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_LoadAction(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_LoadAction(BOOL)::info;
    }
  }

  re::mtl::introspect_LoadAction(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_LoadAction(BOOL)::info, a2);
  v16[0] = 0xEF852949E8DB8;
  v16[1] = "LoadAction";
  xmmword_1EE1C6168 = v17;
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_LoadAction(BOOL)::info;
}

void *re::mtl::allocInfo_Viewport(re::mtl *this)
{
  if ((atomic_load_explicit(&qword_1EE1BAE70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BB438, "Viewport");
    __cxa_guard_release(&qword_1EE1BAE70);
  }

  return &unk_1EE1BB438;
}

void re::mtl::initInfo_Viewport(re::mtl *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0x47A965CB98CLL;
  v32[1] = "Viewport";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1BAE78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE78))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_float(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "originX";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1BAEF0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_float(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "originY";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x400000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1BAEF8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "width";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1BAF00 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "height";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0xC00000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1BAF08 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_float(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "zNear";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1000000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1BAF10 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_float(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "zFar";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x1400000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1BAF18 = v30;
    __cxa_guard_release(&qword_1EE1BAE78);
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1BAEF0;
  *(this + 9) = re::internal::defaultConstruct<re::mtl::Viewport>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::mtl::Viewport>;
  *(this + 13) = re::internal::defaultConstructV2<re::mtl::Viewport>;
  *(this + 14) = re::internal::defaultDestructV2<re::mtl::Viewport>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v31 = v33;
}

void re::internal::defaultConstruct<re::mtl::Viewport>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0x3F80000000000000;
}

void *re::internal::defaultConstructV2<re::mtl::Viewport>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0x3F80000000000000;
  return result;
}

void *re::mtl::introspect_TriangleFillMode(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Fill";
    re::mtl::introspect_TriangleFillMode(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "Line";
    qword_1EE1C5F78 = v12;
  }

  {
    v13 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_TriangleFillMode(BOOL)::info, "TriangleFillMode", 1, 1, 1, 1);
    *v13 = &unk_1F5D0C658;
    *(v13 + 8) = &re::mtl::introspect_TriangleFillMode(BOOL)::enumTable;
    *(v13 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_TriangleFillMode(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_TriangleFillMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::mtl::introspect_TriangleFillMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::mtl::introspect_TriangleFillMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_TriangleFillMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_TriangleFillMode(BOOL)::info;
    }
  }

  re::mtl::introspect_TriangleFillMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_TriangleFillMode(BOOL)::info, a2);
  v14[0] = 0x7681134D4FCCA81CLL;
  v14[1] = "TriangleFillMode";
  xmmword_1EE1C5F48 = v15;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_TriangleFillMode(BOOL)::info;
}

void *re::mtl::introspect_IndexType(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "UInt16";
    re::mtl::introspect_IndexType(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "UInt32";
    qword_1EE1C6200 = v12;
  }

  {
    v13 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_IndexType(BOOL)::info, "IndexType", 1, 1, 1, 1);
    *v13 = &unk_1F5D0C658;
    *(v13 + 8) = &re::mtl::introspect_IndexType(BOOL)::enumTable;
    *(v13 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_IndexType(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_IndexType(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::mtl::introspect_IndexType(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::mtl::introspect_IndexType(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_IndexType(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_IndexType(BOOL)::info;
    }
  }

  re::mtl::introspect_IndexType(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_IndexType(BOOL)::info, a2);
  v14[0] = 0x76EC8EA12618;
  v14[1] = "IndexType";
  xmmword_1EE1C61D0 = v15;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_IndexType(BOOL)::info;
}

void *re::mtl::introspect_MultisampleDepthResolveFilter(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Sample0";
    re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "Min";
    qword_1EE1C5DD0 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "Max";
    qword_1EE1C5DD8 = v14;
  }

  {
    v15 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::info, "MultisampleDepthResolveFilter", 4, 4, 1, 1);
    *v15 = &unk_1F5D0C658;
    *(v15 + 8) = &re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::enumTable;
    *(v15 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v17);
    v3 = re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v17);
    if (v3)
    {
      return &re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::info;
    }
  }

  re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::info, a2);
  v16[0] = 0x623525B3D9212FC8;
  v16[1] = "MultisampleDepthResolveFilter";
  xmmword_1EE1C5DA0 = v17;
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_MultisampleDepthResolveFilter(BOOL)::info;
}

void *re::mtl::introspect_MultisampleStencilResolveFilter(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Sample0";
    re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "DepthResolvedSample";
    qword_1EE1C5D70 = v12;
  }

  {
    v13 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::info, "MultisampleStencilResolveFilter", 4, 4, 1, 1);
    *v13 = &unk_1F5D0C658;
    *(v13 + 8) = &re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::enumTable;
    *(v13 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::info;
    }
  }

  re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::info, a2);
  v14[0] = 0x57DB6309EED0C996;
  v14[1] = "MultisampleStencilResolveFilter";
  xmmword_1EE1C5D40 = v15;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_MultisampleStencilResolveFilter(BOOL)::info;
}

uint64_t *re::mtl::introspect_SamplerAddressMode(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BAE80, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BAE88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE88))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB298, "SamplerAddressMode", 4, 4, 1, 1);
      qword_1EE1BB298 = &unk_1F5D0C658;
      qword_1EE1BB2D8 = &re::mtl::introspect_SamplerAddressMode(BOOL)::enumTable;
      dword_1EE1BB2A8 = 9;
      __cxa_guard_release(&qword_1EE1BAE88);
    }

    if (v2)
    {
      if (byte_1EE1BADD8)
      {
        return &qword_1EE1BB298;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v54);
      v3 = byte_1EE1BADD8;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v54);
      if (v3)
      {
        return &qword_1EE1BB298;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE1BADD8)
      {
        goto LABEL_46;
      }
    }

    byte_1EE1BADD8 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB298, a2);
    v51 = 0xF558394B10E0FD5ELL;
    v52 = "SamplerAddressMode";
    v55 = 208862;
    v56 = "int";
    v9 = v54[0];
    v10 = v54[1];
    if (v55)
    {
      if (v55)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v52);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v50);
    __break(1u);
LABEL_49:
    if (__cxa_guard_acquire(&qword_1EE1BAE80))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 0;
      *(v35 + 16) = "ClampToEdge";
      qword_1EE1BAFD8 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 0;
      *(v37 + 16) = "Clamp";
      qword_1EE1BAFE0 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 1;
      *(v39 + 16) = "MirrorClampToEdge";
      qword_1EE1BAFE8 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 1;
      *(v41 + 16) = "Mirror";
      qword_1EE1BAFF0 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 2;
      *(v43 + 16) = "Repeat";
      qword_1EE1BAFF8 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 3;
      *(v45 + 16) = "MirrorRepeat";
      qword_1EE1BB000 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 4;
      *(v47 + 16) = "ClampToZero";
      qword_1EE1BB008 = v47;
      v48 = re::introspectionAllocator();
      v49 = (*(*v48 + 32))(v48, 24, 8);
      *v49 = 1;
      *(v49 + 8) = 5;
      *(v49 + 16) = "ClampToBorderColor";
      qword_1EE1BB010 = v49;
      __cxa_guard_release(&qword_1EE1BAE80);
    }
  }

  v11 = qword_1EE1BB2D8;
  v55 = v9;
  v56 = v10;
  re::TypeBuilder::beginEnumType(v54, &v51, 1, 1, &v55);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v53.var0 = 2 * v16;
        v53.var1 = v15;
        re::TypeBuilder::addEnumConstant(v54, v20, &v53);
        if (*&v53.var0)
        {
          if (*&v53.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v53.var0 = 2 * v25;
          v53.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v54, v29, &v53);
          if (*&v53.var0)
          {
            if (*&v53.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v54, v31);
  xmmword_1EE1BB2B8 = v53;
  if (v51)
  {
    if (v51)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BB298;
}

void *re::mtl::introspect_SamplerBorderColor(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "TransparentBlack";
    re::mtl::introspect_SamplerBorderColor(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "OpaqueBlack";
    qword_1EE1C5F10 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "OpaqueWhite";
    qword_1EE1C5F18 = v14;
  }

  {
    v15 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_SamplerBorderColor(BOOL)::info, "SamplerBorderColor", 4, 4, 1, 1);
    *v15 = &unk_1F5D0C658;
    *(v15 + 8) = &re::mtl::introspect_SamplerBorderColor(BOOL)::enumTable;
    *(v15 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_SamplerBorderColor(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_SamplerBorderColor(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v17);
    v3 = re::mtl::introspect_SamplerBorderColor(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v17);
    if (v3)
    {
      return &re::mtl::introspect_SamplerBorderColor(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_SamplerBorderColor(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_SamplerBorderColor(BOOL)::info;
    }
  }

  re::mtl::introspect_SamplerBorderColor(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_SamplerBorderColor(BOOL)::info, a2);
  v16[0] = 0xF560323C0B41AB1ELL;
  v16[1] = "SamplerBorderColor";
  xmmword_1EE1C5EE0 = v17;
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_SamplerBorderColor(BOOL)::info;
}

void *re::mtl::introspect_SamplerMinMagFilter(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Nearest";
    re::mtl::introspect_SamplerMinMagFilter(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "Linear";
    qword_1EE1C5E38 = v12;
  }

  {
    v13 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_SamplerMinMagFilter(BOOL)::info, "SamplerMinMagFilter", 4, 4, 1, 1);
    *v13 = &unk_1F5D0C658;
    *(v13 + 8) = &re::mtl::introspect_SamplerMinMagFilter(BOOL)::enumTable;
    *(v13 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_SamplerMinMagFilter(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_SamplerMinMagFilter(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::mtl::introspect_SamplerMinMagFilter(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::mtl::introspect_SamplerMinMagFilter(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_SamplerMinMagFilter(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_SamplerMinMagFilter(BOOL)::info;
    }
  }

  re::mtl::introspect_SamplerMinMagFilter(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_SamplerMinMagFilter(BOOL)::info, a2);
  v14[0] = 0xBE442AE103A9B102;
  v14[1] = "SamplerMinMagFilter";
  xmmword_1EE1C5E08 = v15;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_SamplerMinMagFilter(BOOL)::info;
}

void *re::mtl::introspect_SamplerMipFilter(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "NotMipmapped";
    re::mtl::introspect_SamplerMipFilter(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "Nearest";
    qword_1EE1C5FD8 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "Linear";
    qword_1EE1C5FE0 = v14;
  }

  {
    v15 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_SamplerMipFilter(BOOL)::info, "SamplerMipFilter", 4, 4, 1, 1);
    *v15 = &unk_1F5D0C658;
    *(v15 + 8) = &re::mtl::introspect_SamplerMipFilter(BOOL)::enumTable;
    *(v15 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_SamplerMipFilter(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_SamplerMipFilter(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v17);
    v3 = re::mtl::introspect_SamplerMipFilter(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v17);
    if (v3)
    {
      return &re::mtl::introspect_SamplerMipFilter(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_SamplerMipFilter(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_SamplerMipFilter(BOOL)::info;
    }
  }

  re::mtl::introspect_SamplerMipFilter(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_SamplerMipFilter(BOOL)::info, a2);
  v16[0] = 0xFF8F91A9E51F7C8;
  v16[1] = "SamplerMipFilter";
  xmmword_1EE1C5FA8 = v17;
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_SamplerMipFilter(BOOL)::info;
}

uint64_t *re::mtl::introspect_SamplerCompareFunction(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BAE90, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BAE98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAE98))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BB2E0, "SamplerCompareFunction", 4, 4, 1, 1);
      qword_1EE1BB2E0 = &unk_1F5D0C658;
      qword_1EE1BB320 = &re::mtl::introspect_SamplerCompareFunction(BOOL)::enumTable;
      dword_1EE1BB2F0 = 9;
      __cxa_guard_release(&qword_1EE1BAE98);
    }

    if (v2)
    {
      if (byte_1EE1BADD9)
      {
        return &qword_1EE1BB2E0;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v54);
      v3 = byte_1EE1BADD9;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v54);
      if (v3)
      {
        return &qword_1EE1BB2E0;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE1BADD9)
      {
        goto LABEL_46;
      }
    }

    byte_1EE1BADD9 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BB2E0, a2);
    v51 = 0xB5BF6CF331CEE5AALL;
    v52 = "SamplerCompareFunction";
    v55 = 208862;
    v56 = "int";
    v9 = v54[0];
    v10 = v54[1];
    if (v55)
    {
      if (v55)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v52);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v50);
    __break(1u);
LABEL_49:
    if (__cxa_guard_acquire(&qword_1EE1BAE90))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 0;
      *(v35 + 16) = "Never";
      qword_1EE1BB018 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 1;
      *(v37 + 16) = "Less";
      qword_1EE1BB020 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 2;
      *(v39 + 16) = "Equal";
      qword_1EE1BB028 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 3;
      *(v41 + 16) = "LessEqual";
      qword_1EE1BB030 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 4;
      *(v43 + 16) = "Greater";
      qword_1EE1BB038 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 5;
      *(v45 + 16) = "NotEqual";
      qword_1EE1BB040 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 6;
      *(v47 + 16) = "GreaterEqual";
      qword_1EE1BB048 = v47;
      v48 = re::introspectionAllocator();
      v49 = (*(*v48 + 32))(v48, 24, 8);
      *v49 = 1;
      *(v49 + 8) = 7;
      *(v49 + 16) = "Always";
      qword_1EE1BB050 = v49;
      __cxa_guard_release(&qword_1EE1BAE90);
    }
  }

  v11 = qword_1EE1BB320;
  v55 = v9;
  v56 = v10;
  re::TypeBuilder::beginEnumType(v54, &v51, 1, 1, &v55);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v53.var0 = 2 * v16;
        v53.var1 = v15;
        re::TypeBuilder::addEnumConstant(v54, v20, &v53);
        if (*&v53.var0)
        {
          if (*&v53.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v53.var0 = 2 * v25;
          v53.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v54, v29, &v53);
          if (*&v53.var0)
          {
            if (*&v53.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v54, v31);
  xmmword_1EE1BB300 = v53;
  if (v51)
  {
    if (v51)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BB2E0;
}

void *re::mtl::introspect_RenderStage(re::mtl *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 1;
    *(v10 + 16) = "Vertex";
    re::mtl::introspect_RenderStage(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 2;
    *(v12 + 16) = "Fragment";
    qword_1EE1C6138 = v12;
  }

  {
    v13 = re::IntrospectionBasic::IntrospectionBasic(&re::mtl::introspect_RenderStage(BOOL)::info, "RenderStage", 4, 4, 1, 1);
    *v13 = &unk_1F5D0C658;
    *(v13 + 8) = &re::mtl::introspect_RenderStage(BOOL)::enumTable;
    *(v13 + 4) = 9;
  }

  if (v2)
  {
    if (re::mtl::introspect_RenderStage(BOOL)::isInitialized)
    {
      return &re::mtl::introspect_RenderStage(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::mtl::introspect_RenderStage(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::mtl::introspect_RenderStage(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::mtl::introspect_RenderStage(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::mtl::introspect_RenderStage(BOOL)::info;
    }
  }

  re::mtl::introspect_RenderStage(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::mtl::introspect_RenderStage(BOOL)::info, a2);
  v14[0] = 0x1F136AA037B8DD0;
  v14[1] = "RenderStage";
  xmmword_1EE1C6108 = v15;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::mtl::introspect_RenderStage(BOOL)::info;
}

double re::MotionParallaxPredictor::MotionParallaxPredictor(re::MotionParallaxPredictor *this)
{
  *this = 1;
  *(this + 4) = 0x400000004;
  *(this + 7) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 0;
  *(this + 16) = 4;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 19) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 40) = 4;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 22) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 76) = 1092616192;
  *(this + 154) = 1;
  *(this + 312) = xmmword_1E30DB780;
  *(this + 328) = xmmword_1E30DB790;
  *(this + 344) = xmmword_1E30DB7A0;
  *(this + 180) = 0;
  result = 7.7031233e-27;
  *(this + 364) = xmmword_1E30DB7B0;
  return result;
}

void re::MotionParallaxPredictor::updateCameraTransform(uint64_t a1, float32x4_t *a2, float a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  *(a1 + 240) = a2[2];
  *(a1 + 256) = v7;
  *(a1 + 208) = v5;
  *(a1 + 224) = v6;
  v14 = a2[3];
  re::Centroid::add((a1 + 16), &v14);
  v8 = 312;
  if (*(a1 + 309))
  {
    v8 = 316;
  }

  *(a1 + 309) = *(a1 + 100) > *(a1 + v8);
  v9 = *(a1 + 304) * a3;
  if (v9 <= 1.0)
  {
    v10 = *(a1 + 304) * a3;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = v9 < 0.0;
  v12 = 0.0;
  if (!v11)
  {
    v12 = v10;
  }

  v13 = vmlaq_n_f32(vmulq_n_f32(v14, v12), *(a1 + 288), 1.0 - v12);
  *(a1 + 272) = *(a1 + 288);
  *(a1 + 288) = v13;
}

void re::MotionParallaxPredictor::getMotionParallaxPrediction(float32x4_t *this, float a2)
{
  v4 = this[17];
  v5 = vsubq_f32(this[18], v4);
  v4.i64[0] = this[15].i64[0];
  v4.i32[2] = this[15].i32[2];
  v6 = vmulq_f32(v4, v4);
  *&v7 = v6.f32[2] + vaddv_f32(*v6.f32);
  *v6.f32 = vrsqrte_f32(v7);
  *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32)));
  v8 = vmulq_n_f32(v4, vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32))).f32[0]);
  v9 = vmulq_f32(v8, v8);
  v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  if (v10 >= 0.00000011921)
  {
    v11 = vmulq_f32(v5, v8);
    v5 = vsubq_f32(v5, vmulq_n_f32(v8, (v11.f32[2] + vaddv_f32(*v11.f32)) / v10));
  }

  v17 = v5;
  re::Centroid::add(this + 7, &v17);
  if (this[19].i8[4])
  {
    v12 = this + 11;
  }

  else
  {
    v12 = &v17;
  }

  v13 = vmulq_f32(*v12, *v12);
  v14 = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32));
  if ((this[19].i8[5] & 1) != 0 || (v15 = 0.0, v14 <= this[21].f32[0]))
  {
    v15 = v14;
  }

  v16 = this[20].f32[2];
  if (v16 >= v15)
  {
    v16 = v15;
  }

  re::SmoothDampener::smooth((&this[20].u64[1] + 4), v16, a2);
}

void re::MotionParallaxPredictor::getParallaxAmount(float32x4_t *this, float a2)
{
  if (this->i8[0] == 1)
  {
    re::MotionParallaxPredictor::getMotionParallaxPrediction(this, a2);
    v5 = (v4 - this[22].f32[3]) / (this[23].f32[0] - this[22].f32[3]);
    if (v5 <= 1.0)
    {
      v6 = (v4 - this[22].f32[3]) / (this[23].f32[0] - this[22].f32[3]);
    }

    else
    {
      v6 = 1.0;
    }

    if (v5 < 0.0)
    {
      v6 = 0.0;
    }

    v7 = 1.0 - ((v6 * v6) / ((((v6 * v6) - v5) * 2.0) + 1.0));
    v8 = this[23].f32[2] * a2;
    if (v8 <= 1.0)
    {
      v9 = this[23].f32[2] * a2;
    }

    else
    {
      v9 = 1.0;
    }

    if (v8 >= 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0.0;
    }

    this[23].f32[1] = (v10 * v7) + (this[23].f32[1] * (1.0 - v10));
  }
}

float re::MotionParallaxPredictor::updateParamsFromDefaults(re::MotionParallaxPredictor *this, const char *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue(&v24, "DepthMitigation.MotionParallaxEnabled", a2);
  if (v24 == 1)
  {
    *this = BYTE1(v24);
  }

  v4 = *(this + 1);
  re::Defaults::intValue(&v24, "DepthMitigation.CameraTransformWindow", v3);
  if (v24)
  {
    v6 = DWORD1(v24);
  }

  else
  {
    v6 = v4;
  }

  if (v6 != *(this + 1))
  {
    *(this + 1) = v6;
    v27 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    LODWORD(v28) = v6;
    v30 = 0;
    v29 = 0uLL;
    re::Queue<re::Vector3<float>>::operator=(this + 2, &v24);
    v7 = v29;
    *(this + 4) = v28;
    *(this + 5) = v7;
    *(this + 12) = v30;
    if (v24)
    {
      v5 = v27;
      if (v27)
      {
        (*(*v24 + 40))();
      }
    }
  }

  v8 = *(this + 2);
  re::Defaults::intValue(&v24, "DepthMitigation.ParallaxWindowSize", v5);
  if (v24)
  {
    v10 = DWORD1(v24);
  }

  else
  {
    v10 = v8;
  }

  if (v10 != *(this + 2))
  {
    *(this + 2) = v10;
    v27 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    LODWORD(v28) = v10;
    v30 = 0;
    v29 = 0uLL;
    re::Queue<re::Vector3<float>>::operator=(this + 14, &v24);
    v11 = v29;
    *(this + 10) = v28;
    *(this + 11) = v11;
    *(this + 24) = v30;
    if (v24)
    {
      v9 = v27;
      if (v27)
      {
        (*(*v24 + 40))();
      }
    }
  }

  re::Defaults::floatValue(&v24, "DepthMitigation.CameraPositionLerpRate", v9);
  if (v24 == 1)
  {
    *(this + 76) = DWORD1(v24);
  }

  re::Defaults::floatValue(&v24, "DepthMitigation.MinimalParallaxAmount", v12);
  if (v24 == 1)
  {
    *(this + 91) = DWORD1(v24);
  }

  re::Defaults::floatValue(&v24, "DepthMitigation.MaximalParallaxAmount", v13);
  if (v24 == 1)
  {
    *(this + 92) = DWORD1(v24);
  }

  re::Defaults::floatValue(&v24, "DepthMitigation.MotionParallaxSmoothTime", v14);
  if (v24 == 1)
  {
    *(this + 94) = DWORD1(v24);
  }

  re::Defaults::floatValue(&v24, "DepthMitigation.MaxErrorToBreakStable", v15);
  if (v24 == 1)
  {
    *(this + 79) = DWORD1(v24);
  }

  re::Defaults::floatValue(&v24, "DepthMitigation.MaxErrorToReturnStable", v16);
  if (v24 == 1)
  {
    *(this + 78) = DWORD1(v24);
  }

  re::Defaults::floatValue(&v24, "DepthMitigation.ParallaxClipping", v17);
  if (v24 == 1)
  {
    *(this + 82) = DWORD1(v24);
  }

  re::Defaults::floatValue(&v24, "DepthMitigation.SoftDampenerSmoothing", v18);
  if (v24 == 1)
  {
    *(this + 85) = DWORD1(v24);
  }

  re::Defaults::floatValue(&v24, "DepthMitigation.SoftDampenerMaxVelocity", v19);
  if (v24 == 1)
  {
    *(this + 86) = DWORD1(v24);
  }

  re::Defaults::floatValue(&v24, "DepthMitigation.SoftDampenerSmoothingDecrease", v20);
  if (v24 == 1)
  {
    *(this + 87) = DWORD1(v24);
  }

  re::Defaults::floatValue(&v24, "DepthMitigation.SoftDampenerSmoothingIncrease", v21);
  if (v24 == 1)
  {
    *(this + 89) = DWORD1(v24);
  }

  re::Defaults::floatValue(&v24, "DepthMitigation.SoftDampenerSmoothingChangeRate", v22);
  if (v24 == 1)
  {
    result = *(&v24 + 1);
    *(this + 88) = DWORD1(v24);
  }

  return result;
}

uint64_t *re::Queue<re::Vector3<float>>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    v5 = *a2;
    if (*a1)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *a1 = v5;
      *a2 = v4;
      v7 = a1[1];
      a1[1] = a2[1];
      a2[1] = v7;
      v8 = a1[2];
      a1[2] = a2[2];
      a2[2] = v8;
      v9 = a1[5];
      a1[5] = a2[5];
      a2[5] = v9;
      v10 = a1[3];
      a1[3] = a2[3];
      a2[3] = v10;
    }

    else
    {
      if (v5)
      {
        v11 = a2[2];
        if (v11 >= a1[2])
        {
          re::Queue<re::Vector3<float>>::setCapacity(a1, a2[2]);
          std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,re::Queue<re::Vector3<float>>::QueueIterator<re::Vector3<float>,re::Vector3<float> const&>,re::Queue<re::Vector3<float>>::QueueIterator<re::Vector3<float>,re::Vector3<float> const&>,re::Queue<re::Vector3<float>>::QueueIterator<re::Vector3<float>,re::Vector3<float>&>,0>(v14, a2, 0, a2, a1[2], a1, 0);
          v13 = a1[2];
          a1[2] = v11;
          while (v13 != a2[2])
          {
            *(a1[5] + 16 * ((v13 + a1[3]) % a1[1])) = *(a2[5] + 16 * ((v13 + a2[3]) % a2[1]));
            ++v13;
          }
        }

        else
        {
          std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,re::Queue<re::Vector3<float>>::QueueIterator<re::Vector3<float>,re::Vector3<float> const&>,re::Queue<re::Vector3<float>>::QueueIterator<re::Vector3<float>,re::Vector3<float> const&>,re::Queue<re::Vector3<float>>::QueueIterator<re::Vector3<float>,re::Vector3<float>&>,0>(v14, a2, 0, a2, a2[2], a1, 0);
          a1[2] = v11;
        }
      }

      else
      {
        a1[2] = 0;
      }

      ++*(a1 + 8);
    }
  }

  return a1;
}

void *std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,re::Queue<re::Vector3<float>>::QueueIterator<re::Vector3<float>,re::Vector3<float> const&>,re::Queue<re::Vector3<float>>::QueueIterator<re::Vector3<float>,re::Vector3<float> const&>,re::Queue<re::Vector3<float>>::QueueIterator<re::Vector3<float>,re::Vector3<float>&>,0>(void *result, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  if (a2 != a4 || a3 != a5)
  {
    do
    {
      do
      {
        v7 = a3;
        *(a6[5] + 16 * ((a7 + a6[3]) % a6[1])) = *(a2[5] + 16 * ((a3 + a2[3]) % a2[1]));
        ++a3;
        ++a7;
      }

      while (a2 != a4);
    }

    while (a5 - 1 != v7);
    a3 = a5;
  }

  *result = a2;
  result[1] = a3;
  result[2] = a6;
  result[3] = a7;
  return result;
}

re::SmoothDeformerModelBuilder *re::SmoothDeformerModelBuilder::SmoothDeformerModelBuilder(re::SmoothDeformerModelBuilder *this, re::Allocator *a2, uint64_t a3, unint64_t a4, DeformationModelData *a5)
{
  *this = a5;
  v9 = re::DeformationModelData::create<re::SmoothDeformer,re::SmoothDeformerModel>(a5, a2);
  re::FixedArray<re::StringID>::init<>(v9, a2, a4);
  re::FixedArray<unsigned short>::init<unsigned short const&>(v9 + 3, a2, a3, &re::SmoothDeformerModel::kInvalidIndex);
  return this;
}

uint64_t re::DeformationModelData::create<re::SmoothDeformer,re::SmoothDeformerModel>(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 32))(a2, 48, 8);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v6[0] = &unk_1F5D09BF0;
  v6[1] = a2;
  v6[3] = v6;
  v7 = v4;
  v8[3] = v8;
  v8[0] = &unk_1F5D09BF0;
  v8[1] = a2;
  std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:nn200100]((a1 + 400), &v7);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v7);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v6);
  return *(a1 + 400);
}

unint64_t *re::SmoothDeformerModelBuilder::setEnvelopeBufferName(re::SmoothDeformerModelBuilder *this, unint64_t a2, unint64_t a3, const re::StringID *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(*this + 400);
  v6 = v5[4];
  if (v6 <= a2)
  {
    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v7 = MEMORY[0x1E69E9C10];
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v19 = 468;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = v6;
    _os_log_send_and_compose_impl(v10, &v15, &v24, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
LABEL_10:
    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v19 = 468;
    v20 = 2048;
    v21 = v7;
    v22 = 2048;
    v23 = v6;
    _os_log_send_and_compose_impl(v13, &v15, &v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  v7 = a3;
  *(v5[5] + 2 * a2) = a3;
  v6 = v5[1];
  if (v6 <= a3)
  {
    goto LABEL_10;
  }

  v8 = (v5[2] + 16 * a3);

  return re::StringID::operator=(v8, a4);
}

uint64_t re::SmoothDeformer::init(uint64_t result, uint64_t a2)
{
  if ((*(result + 24) & 1) == 0)
  {
    v2 = result;
    *(result + 24) = 1;
    v3 = *(a2 + 16);
    *(result + 8) = *(v3 + 32);
    if (*(v3 + 208))
    {
      if (*(v3 + 311) == 1)
      {
        v7 = 0;
        v10 = 0;
        memset(v13, 0, sizeof(v13));
        v14 = 0;
        v18 = 0;
        v19 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        ComputePipelineState = re::getOrCreateComputePipelineState(v3, &v5);
        NS::SharedPtr<MTL::Buffer>::operator=((v2 + 16), ComputePipelineState);
        *(v2 + 25) = 1;
        if (v18)
        {

          v18 = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v13);
        if (v10 == 1 && v11)
        {
          if (BYTE8(v11))
          {
            (*(*v11 + 40))();
          }

          v11 = 0u;
          v12 = 0u;
        }

        if (v7 == 1 && v8)
        {
          if (BYTE8(v8))
          {
            (*(*v8 + 40))();
          }

          v9 = 0u;
          v8 = 0u;
        }

        result = v5;
        if (v5)
        {
          if (v6)
          {
            return (*(*v5 + 40))();
          }
        }
      }
    }
  }

  return result;
}

uint64_t re::SmoothDeformer::addDeformationInstance@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2)
  {
    v4 = 0;
  }

  else if (*(result + 24) == 1)
  {
    v4 = *(result + 25);
  }

  else
  {
    v4 = 1;
  }

  *a4 = 0xFFFFFFFFLL;
  *(a4 + 8) = vdupq_n_s64(2uLL);
  LODWORD(v5) = *a3;
  if (v5 == 255)
  {
    v5 = *(a3 + 2);
    if (v5)
    {
      LOBYTE(v5) = (*(v5 + 208) != 0) & v4;
    }
  }

  *(a4 + 24) = v5;
  *(a4 + 32) = -1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  return result;
}

uint64_t re::SmoothDeformer::allocateBuffers(re *a1, re::PerFrameAllocatorGPU *a2, re::PerFrameAllocatorGPU **a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = a5;
  v136 = *MEMORY[0x1E69E9840];
  v117 = *a5;
  v12 = *(*a5 + 48);
  re::globalAllocators(a1);
  v13 = (*(*a2 + 32))(a2, 24, 8);
  v15 = v13;
  v13[1] = v12;
  v13[2] = 0;
  *v13 = a2;
  if (v12)
  {
    if (v12 >> 57)
    {
LABEL_96:
      re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 128, v12);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v100, v107);
      __break(1u);
      goto LABEL_97;
    }

    v13 = (*(*a2 + 32))(a2, v12 << 7, 8);
    *(v15 + 16) = v13;
    if (!v13)
    {
LABEL_97:
      re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
LABEL_98:
      re::internal::assertLog(5, v65, "assertion failure: '%s' (%s:line %i) Invalid deformation execution mode: %u.", "!Unreachable code", "allocateBuffers", 203, a4);
      _os_crash("assertion failure: (!Unreachable code) Invalid deformation execution mode: %u.", v101);
      __break(1u);
    }

    v8 = v13;
    if (v12 != 1)
    {
      bzero(v13, (v12 << 7) - 128);
      v8 += 16 * v12 - 16;
    }

    *(v8 + 6) = 0u;
    *(v8 + 7) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 2) = 0u;
    *(v8 + 3) = 0u;
    *v8 = 0u;
    *(v8 + 1) = 0u;
  }

  v17 = re::globalAllocators(v13)[2];
  *&v131 = &unk_1F5D09B98;
  *(&v132 + 1) = v17;
  *&v133 = &v131;
  v118 = (*(*a2 + 16))(a2, v15, &v131);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v131);
  if (v12)
  {
    v18 = 0;
    v114 = v12;
    v115 = v10;
    while (1)
    {
      v19 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v117 + 8, v18);
      v20 = *(v19 + 8);
      v21 = v10[6];
      if (v21 <= v20)
      {
        break;
      }

      v22 = v19;
      v23 = (v10[5] + 312 * v20);
      v15 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v10[1], v20);
      v121 = *(*(v15 + 352) + 104);
      LOBYTE(v131) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, 1u);
      v6 = *(v23[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v23 + 7, &v131) + 20);
      LOBYTE(v131) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, 1u);
      v24 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v23 + 15, &v131);
      v7 = *(v118 + 8);
      if (v7 <= v18)
      {
        goto LABEL_68;
      }

      v25 = *(a1 + 1);
      v7 = WORD1(*(*(v15 + 368) + 16));
      v8 = *(v25 + 24);
      if (v8 <= v7)
      {
        goto LABEL_72;
      }

      v120 = v22;
      v26 = *(*(v25 + 40) + 16 * WORD1(*(*(v15 + 368) + 16))) + 864 * *(*(v15 + 368) + 16);
      v9 = *(v15 + 392);
      v7 = *(v26 + 56);
      if (v7 <= v9)
      {
        goto LABEL_76;
      }

      v12 = *(v23[16] + 20 * v24 + 4);
      v27 = *(v118 + 16);
      v28 = (*(v26 + 64) + 544 * *(v15 + 392));
      v29 = *(*(v15 + 344) + 400);
      if (v29)
      {
        v7 = v29[4];
        if (v7 <= v9)
        {
          goto LABEL_80;
        }

        v7 = *(v29[5] + 2 * v9);
        v9 = v29[1];
        if (v9 <= v7)
        {
          goto LABEL_84;
        }

        re::StringID::StringID(&v131, (v29[2] + 16 * v7));
        v30 = v28;
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30 && !v31[8]);
        *v124 = v131 >> 1;
        v32 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v31 + 5, v124);
        if (v32 == -1)
        {
          v33 = 0;
        }

        else
        {
          v33 = &v31[6][2 * v32 + 1];
        }

        if (v131)
        {
          if (v131)
          {
          }
        }
      }

      else
      {
        v33 = 0;
      }

      v34 = v6 / v12;
      v12 = v27 + (v18 << 7);
      v35 = v34;
      v36 = 4 * v34;
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v131, a3, 4 * v34, 4uLL);
      v9 = v131;
      v6 = DWORD2(v131);
      v37 = HIDWORD(v131);
      v38 = v132;
      *(v12 + 80) = v131;
      *(v12 + 88) = v6;
      *(v12 + 92) = v37;
      *(v12 + 96) = v38;
      if (v33)
      {
        v39 = re::AttributeTable::buffers(v28);
        v41 = *v33;
        if (v40 <= v41)
        {
          goto LABEL_88;
        }

        v42 = re::BufferView::contents((v39 + 24 * *v33));
        memcpy(v6 + v9, v42, v36);
      }

      else if (v37 >= 4)
      {
        memset_pattern16(v6 + v9, &unk_1E30D6460, v37 & 0xFFFFFFFC);
      }

      v119 = v35;
      v43 = 4 * (v35 + 2 * v35);
      v44 = v28;
      do
      {
        v45 = v44;
        v44 = *v44;
      }

      while (v44 && !v45[8]);
      *&v131 = 0x68D02E008A94F13DLL;
      v46 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v45 + 5, &v131);
      if (v46 == -1)
      {
        v7 = 0;
      }

      else
      {
        v7 = &v45[6][2 * v46 + 1];
      }

      v47 = v28;
      do
      {
        v48 = v47;
        v47 = *v47;
      }

      while (v47 && !v48[8]);
      *&v131 = 0x3A18F0C88F5C28F6;
      v49 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v48 + 5, &v131);
      if (v49 == -1)
      {
        v8 = 0;
      }

      else
      {
        v8 = &v48[6][2 * v49 + 1];
      }

      v50 = v28;
      do
      {
        v6 = v50;
        v50 = *v50;
      }

      while (v50 && !v6[8]);
      *&v131 = 0x68D02E0360163291;
      v51 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v6 + 5, &v131);
      if (v51 != -1 && v7 && v8)
      {
        v9 = v51;
        if (v121)
        {
          v52 = *v121;
          v53 = *(v121 + 1);
        }

        else
        {
          v53 = 0.5;
          v52 = 10;
        }

        v6 = v6[6];
        *v12 = v52;
        *(v12 + 4) = v53;
        v54 = re::AttributeTable::buffers(v28);
        v56 = *v7;
        if (v55 <= v56)
        {
          goto LABEL_89;
        }

        v7 = 24;
        *(v12 + 104) = v54 + 24 * v56;
        v57 = re::AttributeTable::buffers(v28);
        v59 = *v8;
        if (v58 <= v59)
        {
          goto LABEL_90;
        }

        v6 += 2 * v9;
        *(v12 + 112) = v57 + 24 * *v8;
        v60 = re::AttributeTable::buffers(v28);
        v62 = *(v6 + 8);
        if (v61 <= v62)
        {
          goto LABEL_91;
        }

        *(v12 + 120) = v60 + 24 * *(v6 + 8);
        v6 = a3;
        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v131, a3, v43, 4uLL);
        v63 = v132;
        v64 = *(&v131 + 1);
        *(v12 + 32) = v131;
        *(v12 + 40) = v64;
        *(v12 + 48) = v63;
        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v131, a3, v43, 4uLL);
        v66 = v132;
        v67 = *(&v131 + 1);
        *(v12 + 56) = v131;
        *(v12 + 64) = v67;
        *(v12 + 72) = v66;
        if (a4 == 1)
        {
          v10 = v115;
          v111 = v111 & 0xFFFF000000000000 | 0x1010001000CLL;
          v112 = v112 & 0xFFFFFF0000000000 | 0x1E00000000;
          v68 = re::DeformationBufferAllocator::alloc(*(v15 + 360), v115[2], 1, v111, v112, *(v120 + 16), v43);
          v69 = *(v15 + 360);
          v15 = *(v120 + 16);
          v6 = *(v69 + 8);
          if (v6 <= v15)
          {
            goto LABEL_92;
          }

          v70 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](*(v69 + 16) + 72 * *(v120 + 16) + 16, v68);
          WORD2(v131) = 257;
          LODWORD(v131) = 65548;
          BYTE12(v131) = 30;
          DWORD2(v131) = 0;
          re::DeformationVertexBufferState::setOutputBuffer(v23, 1, 1, (v70 + 24), &v131);
          if (v121)
          {
            v71 = v121[1];
          }

          else
          {
            v71 = 1056964608;
          }

          v15 = v119;
          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v131, a3, 8uLL, 4uLL);
          v72 = v131;
          v73 = v132;
          v74 = *(&v131 + 1);
          v75 = (v131 + DWORD2(v131));
          *v75 = v119;
          v75[1] = v71;
          *(v12 + 8) = v72;
          *(v12 + 16) = v74;
          *(v12 + 24) = v73;
        }

        else
        {
          v10 = v115;
          if (a4)
          {
            goto LABEL_98;
          }

          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v131, a3, v43, 0x10uLL);
          *&v124[4] = 257;
          *v124 = 65548;
          LOBYTE(v125) = 30;
          *&v124[8] = 0;
          re::DeformationVertexBufferState::setOutputBuffer(v23, 1, 0, &v131, v124);
        }
      }

      else
      {
        v10 = v115;
      }

      v12 = v114;
      if (++v18 == v114)
      {
        goto LABEL_66;
      }
    }

    re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, *(v19 + 8), v21);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v95, v102);
    __break(1u);
LABEL_68:
    v123 = 0;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v131 = 0u;
    v77 = MEMORY[0x1E69E9C10];
    v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v124 = 136315906;
    *&v124[4] = "operator[]";
    v125 = 1024;
    if (v78)
    {
      v79 = 3;
    }

    else
    {
      v79 = 2;
    }

    v126 = 468;
    v127 = 2048;
    v128 = v18;
    v129 = 2048;
    v130 = v7;
    _os_log_send_and_compose_impl(v79, &v123, &v131, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v108, v109);
    _os_crash_msg();
    __break(1u);
LABEL_72:
    v123 = 0;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v131 = 0u;
    v80 = MEMORY[0x1E69E9C10];
    v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v124 = 136315906;
    *&v124[4] = "operator[]";
    v125 = 1024;
    if (v81)
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    v126 = 797;
    v127 = 2048;
    v128 = v7;
    v129 = 2048;
    v130 = v8;
    _os_log_send_and_compose_impl(v82, &v123, &v131, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v108, v109);
    _os_crash_msg();
    __break(1u);
LABEL_76:
    v123 = 0;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v131 = 0u;
    v83 = MEMORY[0x1E69E9C10];
    v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v124 = 136315906;
    *&v124[4] = "operator[]";
    v125 = 1024;
    if (v84)
    {
      v85 = 3;
    }

    else
    {
      v85 = 2;
    }

    v126 = 476;
    v127 = 2048;
    v128 = v9;
    v129 = 2048;
    v130 = v7;
    _os_log_send_and_compose_impl(v85, &v123, &v131, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v108, v109);
    _os_crash_msg();
    __break(1u);
LABEL_80:
    v123 = 0;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v131 = 0u;
    v86 = MEMORY[0x1E69E9C10];
    v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v124 = 136315906;
    *&v124[4] = "operator[]";
    v125 = 1024;
    if (v87)
    {
      v88 = 3;
    }

    else
    {
      v88 = 2;
    }

    v126 = 476;
    v127 = 2048;
    v128 = v9;
    v129 = 2048;
    v130 = v7;
    _os_log_send_and_compose_impl(v88, &v123, &v131, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v108, v109);
    _os_crash_msg();
    __break(1u);
LABEL_84:
    v123 = 0;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v131 = 0u;
    v89 = MEMORY[0x1E69E9C10];
    v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v124 = 136315906;
    *&v124[4] = "operator[]";
    v125 = 1024;
    if (v90)
    {
      v91 = 3;
    }

    else
    {
      v91 = 2;
    }

    v126 = 476;
    v127 = 2048;
    v128 = v7;
    v129 = 2048;
    v130 = v9;
    _os_log_send_and_compose_impl(v91, &v123, &v131, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v108, v109);
    _os_crash_msg();
    __break(1u);
LABEL_88:
    re::internal::assertLog(6, v40, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v41, v40);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v96, v103);
    __break(1u);
LABEL_89:
    re::internal::assertLog(6, v55, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v56, v55);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v97, v104);
    __break(1u);
LABEL_90:
    re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v59, v58);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v98, v105);
    __break(1u);
LABEL_91:
    re::internal::assertLog(6, v61, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v62, v61);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v99, v106);
    __break(1u);
LABEL_92:
    v123 = 0;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v131 = 0u;
    v92 = MEMORY[0x1E69E9C10];
    v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v124 = 136315906;
    *&v124[4] = "operator[]";
    v125 = 1024;
    if (v93)
    {
      v94 = 3;
    }

    else
    {
      v94 = 2;
    }

    v126 = 476;
    v127 = 2048;
    v128 = v15;
    v129 = 2048;
    v130 = v6;
    _os_log_send_and_compose_impl(v94, &v123, &v131, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v108, v109);
    _os_crash_msg();
    __break(1u);
    goto LABEL_96;
  }

LABEL_66:
  *a6 |= 2uLL;
  *(a6 + 9) = 1;
  return v118;
}

uint64_t re::SmoothDeformer::deformGPU(uint64_t a1, uint64_t a2, void **this, uint64_t *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Perform Smoothing");
  v36 = a4;
  v39 = *a4;
  v38 = *(*a4 + 48);
  if (v38)
  {
    v8 = 0;
    v37 = a2;
    do
    {
      v9 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v39 + 8, v8);
      v11 = *(a2 + 8);
      if (v11 <= v8)
      {
        v40 = 0;
        memset(v44, 0, sizeof(v44));
        v29 = MEMORY[0x1E69E9C10];
        v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v41 = 136315906;
        *&v41[4] = "operator[]";
        *&v41[12] = 1024;
        if (v30)
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        *&v41[14] = 468;
        *&v41[18] = 2048;
        *&v41[20] = v8;
        v42 = 2048;
        v43 = v11;
        _os_log_send_and_compose_impl(v31, &v40, v44, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v41, 38, v34, v35);
        _os_crash_msg();
        __break(1u);
LABEL_28:
        re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v13, v14);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v32, v33);
        __break(1u);
      }

      v12 = *(a2 + 16) + (v8 << 7);
      if (*(v12 + 104) && *(v12 + 112) && *(v12 + 120))
      {
        v13 = *(v9 + 8);
        v14 = v36[6];
        if (v14 <= v13)
        {
          goto LABEL_28;
        }

        v15 = (v36[5] + 312 * v13);
        LOBYTE(v44[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
        v16 = *(v15[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 7, v44) + 20);
        LOBYTE(v44[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
        v17 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 15, v44);
        if (*v12)
        {
          v18 = *(v15[16] + 20 * v17 + 4);
          v19 = [*(a1 + 16) maxTotalThreadsPerThreadgroup];
          if (*v12)
          {
            v20 = 0;
            v21 = v19;
            v22 = (v16 / v18 + v19 - 1) / v19;
            do
            {
              [*this setComputePipelineState:*(a1 + 16)];
              if (v20)
              {
                if (v20)
                {
                  v23 = *(v12 + 48);
                  v24 = (v12 + 40);
                }

                else
                {
                  v23 = *(v12 + 72);
                  v24 = (v12 + 64);
                }
              }

              else
              {
                LOBYTE(v44[0]) = 1;
                re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
                v23 = *(v15[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 7, v44) + 24);
                LOBYTE(v44[0]) = 1;
                re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
                v24 = (v15[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 7, v44) + 16);
              }

              [*this setBuffer:v23 offset:*v24 atIndex:1];
              if (v20 == *v12 - 1)
              {
                LOBYTE(v44[0]) = 1;
                re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
                v25 = *(v15[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 23, v44) + 24);
                LOBYTE(v44[0]) = 1;
                re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
                v26 = (v15[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 23, v44) + 16);
              }

              else if (v20)
              {
                v25 = *(v12 + 72);
                v26 = (v12 + 64);
              }

              else
              {
                v25 = *(v12 + 48);
                v26 = (v12 + 40);
              }

              [*this setBuffer:v25 offset:*v26 atIndex:0];
              [*this setBuffer:**(v12 + 104) offset:*(*(v12 + 104) + 16) atIndex:2];
              [*this setBuffer:**(v12 + 112) offset:*(*(v12 + 112) + 16) atIndex:3];
              [*this setBuffer:**(v12 + 120) offset:*(*(v12 + 120) + 16) atIndex:4];
              [*this setBuffer:*(v12 + 96) offset:*(v12 + 88) atIndex:5];
              [*this setBuffer:*(v12 + 24) offset:*(v12 + 16) atIndex:6];
              v27 = *this;
              *&v44[0] = v22;
              *(v44 + 8) = vdupq_n_s64(1uLL);
              *v41 = v21;
              *&v41[8] = *(v44 + 8);
              [v27 dispatchThreadgroups:v44 threadsPerThreadgroup:v41];
              ++v20;
            }

            while (v20 < *v12);
          }
        }
      }

      ++v8;
      a2 = v37;
    }

    while (v8 != v38);
  }

  return [*this popDebugGroup];
}

void re::SmoothDeformer::deformCPU(uint64_t a1, uint64_t a2, void *a3)
{
  v86 = *MEMORY[0x1E69E9840];
  v74 = *a3;
  v73 = *(*a3 + 48);
  if (v73)
  {
    v3 = a2;
    v4 = 0;
    while (1)
    {
      v5 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v74 + 8, v4);
      v7 = *(v3 + 8);
      if (v7 <= v4)
      {
        goto LABEL_34;
      }

      v75 = v4;
      v8 = *(v3 + 16) + (v4 << 7);
      if (*(v8 + 104))
      {
        if (*(v8 + 112) && *(v8 + 120))
        {
          v9 = *(v5 + 8);
          v10 = a3[6];
          if (v10 <= v9)
          {
            goto LABEL_38;
          }

          v11 = (a3[5] + 312 * v9);
          LOBYTE(v85[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v11, 1u);
          v12 = *(v11[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v11 + 7, v85) + 20);
          LOBYTE(v85[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v11, 1u);
          v13 = *(v11[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v11 + 15, v85) + 4);
          v14 = re::BufferView::contents(*(v8 + 104));
          v15 = re::BufferView::contents(*(v8 + 112));
          v16 = re::BufferView::contents(*(v8 + 120));
          v17 = *(v8 + 80);
          v18 = *(v8 + 88);
          LOBYTE(v85[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v11, 1u);
          v19 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v11 + 23, v85);
          v22 = *v8;
          if (*v8)
          {
            break;
          }
        }
      }

LABEL_28:
      v4 = v75 + 1;
      v3 = a2;
      if (v75 + 1 == v73)
      {
        return;
      }
    }

    v23 = v16;
    v24 = v14;
    v25 = v13;
    v26 = v12;
    v27 = 0;
    v4 = v12 / v13;
    v28 = v17 + v18;
    v29 = v11[24] + 32 * v19;
    v30 = (*(v29 + 8) + *(v29 + 16));
    v31 = *(v29 + 20);
    v32 = v31 / 0xCuLL;
    v33 = *(v8 + 44);
    v34 = (*(v8 + 32) + *(v8 + 40));
    v35 = v33 / 0xCuLL;
    v7 = v15 - 4;
    v65 = v33;
    v68 = v25;
    v69 = v26;
    v66 = v23;
    v67 = v24;
    while (v26 < v25)
    {
LABEL_25:
      if (v33 >= 0xC)
      {
        v71 = v27;
        memmove(v30, v34, 12 * v35);
        v33 = v65;
        v23 = v66;
        v27 = v71;
        v24 = v67;
        v25 = v68;
        v26 = v69;
        v22 = *v8;
      }

      if (++v27 >= v22)
      {
        goto LABEL_28;
      }
    }

    v36 = 0;
    while (1)
    {
      v37 = v36 ? *(v7 + 4 * v36) + 1 : 1;
      v38 = *(v15 + 4 * v36);
      if (v37 < v38)
      {
        break;
      }

      v42 = 0.0;
      v41 = 0uLL;
LABEL_22:
      if (v36 == v32)
      {
        goto LABEL_32;
      }

      if (v36 == v35)
      {
        goto LABEL_33;
      }

      v48 = &v30[12 * v36];
      v20.i64[0] = *v48;
      v20.i32[2] = *(v48 + 2);
      v49 = vaddq_f32(v20, vmulq_n_f32(vmulq_n_f32(vdivq_f32(v41, vdupq_lane_s32(*&v42, 0)), *(v8 + 4)), *(v28 + 4 * v36)));
      v50 = &v34[12 * v36];
      *v50 = v49.i64[0];
      *(v50 + 2) = v49.i32[2];
      if (++v36 >= v4)
      {
        goto LABEL_25;
      }
    }

    v39 = &v30[12 * v36];
    v40 = (v23 + 4 * v37);
    v41 = 0uLL;
    v42 = 0.0;
    v43 = (v24 + 4 * v37);
    while (1)
    {
      v45 = *v43++;
      v44 = v45;
      if (v32 <= v45)
      {
        break;
      }

      if (v36 >= v32)
      {
        goto LABEL_31;
      }

      v46 = &v30[12 * v44];
      v20.i64[0] = *v46;
      v20.i32[2] = *(v46 + 2);
      v47 = *v40++;
      v21.i64[0] = *v39;
      v21.i32[2] = *(v39 + 2);
      v20 = vmulq_n_f32(vsubq_f32(v20, v21), v47);
      v41 = vaddq_f32(v41, v20);
      *&v42 = *&v42 + v47;
      if (v38 <= ++v37)
      {
        goto LABEL_22;
      }
    }

    re::internal::assertLog(6, v24, *v41.i64, v42, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v44, v31 / 0xCuLL);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v53, v58);
    __break(1u);
LABEL_31:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v36, v31 / 0xCuLL);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v54, v59);
    __break(1u);
LABEL_32:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v31 / 0xCuLL, v31 / 0xCuLL);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v55, v60);
    __break(1u);
LABEL_33:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v35, v35);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v56, v61);
    __break(1u);
LABEL_34:
    v76 = 0;
    memset(v85, 0, sizeof(v85));
    v51 = MEMORY[0x1E69E9C10];
    v77 = 136315906;
    v78 = "operator[]";
    v79 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v80 = 468;
    v81 = 2048;
    v82 = v4;
    v83 = 2048;
    v84 = v7;
    _os_log_send_and_compose_impl(v52, &v76, v85, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v77, 38, v63, v64);
    _os_crash_msg();
    __break(1u);
LABEL_38:
    re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v9, v10);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v57, v62);
    __break(1u);
  }
}

re::StringID *re::SmoothDeformerModelUtil::envelopeBufferNameForSmoothDataIndex@<X0>(re::StringID *__return_ptr a1@<X8>, re::SmoothDeformerModelUtil *this@<X0>, const DeformationModelData *a3@<X1>)
{
  v3 = *(this + 50);
  if (v3 && *(v3 + 8) > a3)
  {
    return re::StringID::StringID(a1, (*(v3 + 16) + 16 * a3));
  }

  else
  {
    return re::StringID::invalid(a1);
  }
}

uint64_t re::SmoothDeformerModelUtil::computeSmoothDeformerModelSizeExcludingMetalBuffers(re::SmoothDeformerModelUtil *this, const DeformationModelData *a2)
{
  v2 = *(this + 50);
  if (!v2)
  {
    return 0;
  }

  v3 = v2[1];
  v4 = 2 * v2[4] + 16 * v3 + 48;
  if (v3)
  {
    v5 = (v2[2] + 8);
    do
    {
      if (*(v5 - 1))
      {
        v6 = strlen(*v5) + 1;
      }

      else
      {
        v6 = 0;
      }

      v4 += v6;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void re::SmoothDeformer::~SmoothDeformer(re::SmoothDeformer *this)
{
  v2 = *(this + 2);
  if (v2)
  {

    *(this + 2) = 0;
  }
}

{
  v2 = *(this + 2);
  if (v2)
  {

    *(this + 2) = 0;
  }

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::SmoothDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  result = **a2;
  if (result)
  {
    if (v2[1])
    {
      result = (*(*result + 40))(result, v2[2]);
      v2[1] = 0;
      v2[2] = 0;
    }

    *v2 = 0;
  }

  return result;
}

void *re::internal::Callable<re::SmoothDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09B98;
  return result;
}

void *re::internal::Callable<re::SmoothDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09B98;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_14SmoothDeformerENS2_19SmoothDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D09BF0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_14SmoothDeformerENS2_19SmoothDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EEclEOSE_(uint64_t result, void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 3);
    re::FixedArray<re::StringID>::deinit(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_14SmoothDeformerENS2_19SmoothDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float32x2_t re::TonemapUserParameters::computeDirectParameters@<D0>(re::TonemapUserParameters *this@<X0>, float32x2_t *a2@<X8>)
{
  v4 = *(this + 1);
  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  v5 = powf(v4, 2.2);
  v6 = *this;
  if (*this > 1.0)
  {
    v6 = 1.0;
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  v7 = *(this + 4);
  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v21 = v7;
  v9 = *(this + 2);
  v8 = *(this + 3);
  if (v8 > 1.0)
  {
    v8 = 1.0;
  }

  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  if (v9 > 10.0)
  {
    v9 = 10.0;
  }

  if (v9 >= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  v20 = v10;
  v11 = v5 * 0.5;
  v12 = (v5 * 0.5) + (v6 * (0.0 - (v5 * 0.5)));
  v13 = (1.0 - v12) + (v8 * (0.0 - (1.0 - v12)));
  v14 = (v5 * 0.5) + v13;
  v15 = v12 + v13;
  v16 = (exp2f(v10) + ((v5 * 0.5) + (1.0 - v12))) + -1.0;
  v17 = *(this + 5);
  a2[2].f32[0] = v16;
  a2[2].i32[1] = v17;
  a2->f32[0] = v11;
  a2->f32[1] = v12;
  a2[1].f32[0] = v14;
  a2[1].f32[1] = v15;
  v18.i32[1] = 1056964608;
  v18.f32[0] = v16 + v16;
  result = vmul_n_f32(vmul_n_f32(v18, v21), v20);
  a2[3] = result;
  return result;
}

float re::TonemapUserParameters::computeRenderParameters@<S0>(re::TonemapUserParameters *this@<X0>, uint64_t a2@<X8>)
{
  memset(v13, 0, sizeof(v13));
  re::TonemapUserParameters::computeDirectParameters(this, v13);
  re::TonemapUserParameters::computeRenderParametersImpl(this, v13, a2);
  v4 = *(a2 + 24);
  *(a2 + 24) = 1065353216;
  *(a2 + 124) = 1065353216;
  if (*(this + 44) == 1)
  {
    v5 = *(this + 12);
    if (v5 == 2)
    {
      v9 = *(this + 10);
    }

    else
    {
      if (v5 == 1)
      {
        v8 = *(this + 13) * 0.18;
      }

      else
      {
        v6 = 1.0;
        if (v5)
        {
LABEL_12:
          *(a2 + 128) = 1.0 / *(this + 13);
          goto LABEL_13;
        }

        v7 = re::computeTonemappingInverse(a2, *(this + 13));
        v8 = re::computeTonemapping(a2, v7 * 0.18);
      }

      v9 = v8 / 0.13;
    }

    v10 = *(this + 9);
    v6 = (v10 * re::computeTonemappingInverse(a2, v9 * 0.13)) / 0.18;
    goto LABEL_12;
  }

  v6 = 1.0;
  if (*(this + 32) == 1)
  {
    v6 = (re::computeTonemappingInverse(a2, *(this + 10) * 0.13) * *(this + 9)) / 0.18;
  }

LABEL_13:
  v11 = v4 * v6;
  *(a2 + 24) = v11;
  result = 1.0 / v11;
  *(a2 + 124) = result;
  return result;
}

float32x2_t re::TonemapUserParameters::computeRenderParametersImpl@<D0>(float *a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 120) = 1;
  v5 = a2[1];
  v6 = a2[3];
  v7 = a2[5];
  v46 = a2[7];
  v47 = a2[4];
  v8 = 1.0 / v47;
  v9 = *a2 * (1.0 / v47);
  v48 = a2[2] * (1.0 / v47);
  v10 = 1.0;
  if ((v48 - v9) != 0.0)
  {
    v10 = (v6 - v5) / (v48 - v9);
  }

  v44 = a2[6];
  *(a3 + 68) = -(v5 + (-v10 * v9)) / v10;
  *(a3 + 72) = 0x3F80000000000000;
  *(a3 + 80) = 1065353216;
  *(a3 + 84) = v7 * logf(v10);
  *(a3 + 88) = v7;
  v43 = v5 - (v10 * v9);
  v41 = v7 + -1.0;
  v42 = v7 * v10;
  v45 = (v7 * v10) * powf(v43 + (v10 * v9), v7 + -1.0);
  v11 = powf(v5, v7);
  if (v11 >= 0.00001)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.00001;
  }

  v13 = powf(v6, v7);
  if (v13 >= 0.00001)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0.00001;
  }

  v15 = powf(v46 + 1.0, v7) + -1.0;
  *a3 = v47;
  *(a3 + 4) = v8;
  *(a3 + 8) = v9;
  *(a3 + 12) = v48;
  *(a3 + 16) = v12;
  *(a3 + 20) = v14;
  v16 = (v9 * v45) / v12;
  v17 = logf(v12);
  v18 = logf(v9);
  *(a3 + 44) = xmmword_1E3063230;
  *(a3 + 60) = v17 - (v16 * v18);
  *(a3 + 64) = v16;
  v19 = v15 + 1.0;
  v20 = v19 - v14;
  v21 = 0.0;
  v22 = (v19 - v14) <= 0.0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  if (!v22)
  {
    v24 = (v8 * v44) + 1.0;
    v25 = ((v24 - v48) * (v42 * powf(v43 + (v10 * v48), v41))) / v20;
    v27 = logf(v20);
    v28 = logf(v24 - v48);
    v21 = 0.0;
    v26 = v27 - (v25 * v28);
    v23 = -1.0;
  }

  *(a3 + 100) = v23;
  *(a3 + 104) = v23;
  *(a3 + 92) = v24;
  *(a3 + 96) = v19;
  *(a3 + 108) = v26;
  *(a3 + 112) = v25;
  v29 = v23 * (1.0 - v24);
  if (v29 > 0.0)
  {
    v30 = logf(v29);
    v21 = expf(v26 + (v25 * v30));
  }

  v31 = 1.0 / (v19 + (v21 * v23));
  v32 = (a3 + 56);
  v33 = 3;
  do
  {
    *(v32 - 2) = v31 * *(v32 - 2);
    *v32 = v31 * *v32;
    v32 += 6;
    --v33;
  }

  while (v33);
  *(a3 + 24) = exp2f(a1[7]);
  v49 = a1[6];
  v34.f32[0] = powf(0.18 / a1[9], 1.0 - v49);
  *(a3 + 28) = v34.i32[0];
  v34.f32[1] = v49;
  *(a3 + 32) = v49;
  __asm { FMOV            V1.2S, #1.0 }

  result = vdiv_f32(_D1, v34);
  *(a3 + 36) = result;
  *(a3 + 128) = 1065353216;
  return result;
}

float re::computeTonemappingInverse(float *a1, float a2)
{
  v3 = 1.0;
  if (a2 <= 1.0)
  {
    v3 = a2;
  }

  v4 = 0.0;
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  if (v3 <= a1[5])
  {
    v5 = v3 > a1[4];
  }

  else
  {
    v5 = 2;
  }

  v6 = &a1[6 * v5];
  v8 = v6[11];
  v7 = v6 + 11;
  v9 = v8;
  v10 = v7[2];
  v11 = (v3 - v7[1]) / v7[3];
  if (v11 > 0.0)
  {
    v13 = v7[4];
    v12 = v7[5];
    v14 = logf(v11);
    v4 = expf((v14 - v13) / v12);
  }

  return (*a1 * powf(a1[9] * (v9 + (v4 / v10)), a1[10])) / a1[6];
}

float re::computeTonemapping(float *a1, float a2)
{
  v3 = (powf(a1[6] * a2, a1[8]) * a1[7]) * a1[1];
  if (v3 <= a1[3])
  {
    v4 = v3 > a1[2];
  }

  else
  {
    v4 = 2;
  }

  v5 = &a1[6 * v4];
  v7 = v5[11];
  v6 = v5 + 11;
  v8 = v6[3];
  v9 = v6[1];
  v10 = (v3 - v7) * v6[2];
  v11 = 0.0;
  if (v10 > 0.0)
  {
    v13 = v6[4];
    v12 = v6[5];
    v14 = logf(v10);
    v11 = expf(v13 + (v12 * v14));
  }

  return v9 + (v11 * v8);
}

uint64_t re::computeTonemappingInverseAccelerated(float *a1, float *a2, float *a3, unint64_t a4)
{
  v6 = a2;
  v25 = a1;
  if (a4)
  {
    v8 = a2;
    v9 = a4;
    do
    {
      v10 = v9 >> 1;
      v11 = &v8[v9 >> 1];
      v13 = *v11;
      v12 = v11 + 1;
      v9 += ~(v9 >> 1);
      if (v13 < a1[4])
      {
        v8 = v12;
      }

      else
      {
        v9 = v10;
      }
    }

    while (v9);
    v14 = v8 - a2;
    v15 = v8 - a2;
    re::computeTonemappingInverseAccelerated(re::TonemapParameters const&,float *,float *,unsigned long)::$_0::operator()(&v25, 0, a2, a3, v15);
    v16 = a1[5];
    v17 = v6;
    v18 = a4;
    do
    {
      v19 = v18 >> 1;
      v20 = (v17 + 4 * (v18 >> 1));
      v22 = *v20;
      v21 = v20 + 1;
      v18 += ~(v18 >> 1);
      if (v22 < v16)
      {
        v17 = v21;
      }

      else
      {
        v18 = v19;
      }
    }

    while (v18);
    v6 = v8;
  }

  else
  {
    re::computeTonemappingInverseAccelerated(re::TonemapParameters const&,float *,float *,unsigned long)::$_0::operator()(&v25, 0, a2, a3, 0);
    v15 = 0;
    v14 = 0;
    v17 = v6;
  }

  v23 = (a3 + v14);
  re::computeTonemappingInverseAccelerated(re::TonemapParameters const&,float *,float *,unsigned long)::$_0::operator()(&v25, 1, v6, v23, (v17 - v6) >> 2);
  return re::computeTonemappingInverseAccelerated(re::TonemapParameters const&,float *,float *,unsigned long)::$_0::operator()(&v25, 2, v17, (v23 + v17 - v6), a4 - (v15 + ((v17 - v6) >> 2)));
}

uint64_t re::computeTonemappingInverseAccelerated(re::TonemapParameters const&,float *,float *,unsigned long)::$_0::operator()(float **a1, int a2, uint64_t a3, float *a4, unint64_t a5)
{
  v7 = *a1;
  v8 = &(*a1)[6 * a2];
  v24 = *(v8 + 11);
  v23 = 1.0 / v8[13];
  v22 = -v8[15];
  v21 = 1.0 / v8[16];
  v20 = 1.0 / v8[14];
  v19 = -v8[12];
  v18 = *v7 / v7[6];
  MEMORY[0x1E69082E0](a3, 1, &v19, a4, 1, a5);
  MEMORY[0x1E69082F0](a4, 1, &v20, a4, 1, a5);
  __B = 0.0;
  v9 = a4;
  if (a5)
  {
    v10 = a5;
    v9 = a4;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[v10 >> 1];
      v14 = *v12;
      v13 = v12 + 1;
      v10 += ~(v10 >> 1);
      if (v14 > 0.0)
      {
        v10 = v11;
      }

      else
      {
        v9 = v13;
      }
    }

    while (v10);
  }

  vDSP_vramp(&__B, &__B, a4, 1, (v9 - a4));
  v16 = a5 - ((v9 - a4) >> 2);
  vvlogf(v9, v9, &v16);
  MEMORY[0x1E69082E0](v9, 1, &v22, v9, 1, v16);
  MEMORY[0x1E69082F0](v9, 1, &v21, v9, 1, v16);
  vvexpf(v9, v9, &v16);
  MEMORY[0x1E69082F0](a4, 1, &v23, a4, 1, a5);
  MEMORY[0x1E69082E0](a4, 1, &v24, a4, 1, a5);
  return MEMORY[0x1E69082F0](a4, 1, &v18, a4, 1, a5);
}

void *re::allocInfo_TonemapUserParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_475, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_475))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BBBA0, "TonemapUserParameters");
    __cxa_guard_release(&_MergedGlobals_475);
  }

  return &unk_1EE1BBBA0;
}

void re::initInfo_TonemapUserParameters(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v48[0] = 0xA8AD3C79569E427ELL;
  v48[1] = "TonemapUserParameters";
  if (v48[0])
  {
    if (v48[0])
    {
    }
  }

  *(this + 2) = v49;
  if ((atomic_load_explicit(&qword_1EE1BBB48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BBB48))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_float(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "toeStrength";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1BBB50 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_float(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "toeLength";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x400000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1BBB58 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "shoulderStrength";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1BBB60 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "shoulderLength";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0xC00000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1BBB68 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_float(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "shoulderAngle";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1000000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1BBB70 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_float(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "gamma";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x1400000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1BBB78 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_float(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "exposure";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x1C00000008;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1BBB80 = v34;
    v35 = re::introspectionAllocator();
    v37 = re::introspect_BOOL(1, v36);
    v38 = (*(*v35 + 32))(v35, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "enableExposureCompensation";
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x2000000009;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE1BBB88 = v38;
    v39 = re::introspectionAllocator();
    v41 = re::introspect_float(1, v40);
    v42 = (*(*v39 + 32))(v39, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "exposureCompensationInputScalar";
    *(v42 + 16) = v41;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0x240000000ALL;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE1BBB90 = v42;
    v43 = re::introspectionAllocator();
    v45 = re::introspect_float(1, v44);
    v46 = (*(*v43 + 32))(v43, 72, 8);
    *v46 = 1;
    *(v46 + 8) = "exposureCompensationTargetScalar";
    *(v46 + 16) = v45;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0x280000000BLL;
    *(v46 + 40) = 0;
    *(v46 + 48) = 0;
    *(v46 + 56) = 0;
    *(v46 + 64) = 0;
    qword_1EE1BBB98 = v46;
    __cxa_guard_release(&qword_1EE1BBB48);
  }

  *(this + 2) = 0x3C00000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE1BBB50;
  *(this + 9) = re::internal::defaultConstruct<re::TonemapUserParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TonemapUserParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::TonemapUserParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::TonemapUserParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v47 = v49;
}

double re::internal::defaultConstruct<re::TonemapUserParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = xmmword_1E3054790;
  *(a3 + 16) = xmmword_1E304F3C0;
  *(a3 + 32) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 36) = result;
  *(a3 + 44) = 0;
  *(a3 + 48) = 0x3F80000000000000;
  *(a3 + 56) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::TonemapUserParameters>(uint64_t a1)
{
  *a1 = xmmword_1E3054790;
  *(a1 + 16) = xmmword_1E304F3C0;
  *(a1 + 32) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 36) = result;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0x3F80000000000000;
  *(a1 + 56) = 0;
  return result;
}

uint64_t re::RenderGraphBuilder::RenderGraphBuilder(uint64_t a1, re::RenderGraphResourceDescriptions *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0x7FFFFFFFLL;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 280) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  re::RenderGraphResourceDescriptions::swap(a1, a2);
  *(a1 + 296) = a1 + 8;
  *(a1 + 304) = a1 + 48;
  *(a1 + 312) = a1 + 88;
  *(a1 + 320) = a1 + 128;
  *(a1 + 328) = a1 + 168;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 396) = 0u;
  *(a1 + 412) = 0x7FFFFFFFLL;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0;
  *(a1 + 568) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 615) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 656) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 648) = 0;
  *(a1 + 640) = 0;
  v7 = *(a3 + 8);
  *(a1 + 624) = *a3;
  *(a1 + 632) = v7;
  *a3 = 0;
  *(a3 + 8) = 0;
  v8 = *(a1 + 640);
  *(a1 + 640) = *(a3 + 16);
  *(a3 + 16) = v8;
  v9 = *(a1 + 656);
  *(a1 + 656) = *(a3 + 32);
  *(a3 + 32) = v9;
  ++*(a3 + 24);
  ++*(a1 + 648);
  *(a1 + 664) = a4;
  return a1;
}

void re::RenderGraphBuilder::~RenderGraphBuilder(re::RenderGraphBuilder *this)
{
  re::DynamicArray<re::RenderGraphScopeOutput>::deinit(this + 624);
  re::DynamicArray<unsigned long>::deinit(this + 544);
  re::DynamicArray<unsigned long>::deinit(this + 504);
  re::DynamicArray<unsigned long>::deinit(this + 464);
  re::DynamicArray<unsigned long>::deinit(this + 424);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 47);
  re::DynamicArray<re::RenderGraphResourceSetup>::deinit(this + 336);

  re::RenderGraphResourceDescriptions::~RenderGraphResourceDescriptions(this);
}

uint64_t re::RenderGraphBuilder::createCompiledGraph(re *a1, uint64_t a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 832, 8);
  v6 = *(a1 + 83);

  return re::RenderGraphCompiled::RenderGraphCompiled(v5, a1, a1 + 624, a1 + 336, a2, v6);
}

void re::RenderGraphBuilder::read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  if (v6 == -1 || *(a2 + 12) == -1)
  {
    if (*(a3 + 4))
    {
      return;
    }

    v7 = *re::graphicsLogObjects(a1);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    v6 = *(a2 + 8);
    if (v8)
    {
      v12 = 67109120;
      v13 = v6;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Attempting to read from an invalid non-optional target (%u).", &v12, 8u);
      v6 = *(a2 + 8);
    }
  }

  v10 = *(a3 + 8);
  v9 = *(a3 + 12);
  v12 = *a3;
  v13 = v9;
  v14 = xmmword_1E30474D0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v10;
  v19 = 0;
  v20 = v6;
  re::DynamicArray<re::RigTransform>::add((a1 + 464), &v12);
  if (*(a3 + 12) != 12)
  {
    v11 = re::RenderGraphCompiled::targetDescription(a1, a2);
    *(v11 + 68) |= 1u;
  }
}

uint64_t re::RenderGraphBuilder::write(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v18 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  if (v6 == -1 || *(a2 + 12) == -1)
  {
    if (*(a3 + 33))
    {
      return result;
    }

    v7 = *re::graphicsLogObjects(result);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    v6 = *(a2 + 8);
    if (v8)
    {
      LODWORD(v11[0]) = 67109120;
      HIDWORD(v11[0]) = v6;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Attempting to write to an invalid non-optional target (%u).", v11, 8u);
      v6 = *(a2 + 8);
    }
  }

  v11[0] = *a3;
  v12 = xmmword_1E30474D0;
  v13 = *(a3 + 32);
  v14 = *(a3 + 36);
  v15 = 2;
  v16 = 0;
  v17 = v6;
  re::DynamicArray<re::RigTransform>::add((v5 + 58), v11);
  *(v5[62] + (v5[60] << 6) - 48) = *(a3 + 16);
  result = re::RenderGraphCompiled::targetDescription(v5, a2);
  if (*(a3 + 4) == 5)
  {
    v9 = 2;
  }

  else
  {
    v9 = 4;
  }

  *(result + 68) |= v9;
  v10 = *(result + 88);
  if (v10 != -1)
  {
    v5[73] |= v10;
  }

  return result;
}

double re::RenderGraphBuilder::read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 8);
  if (v5 == -1 || *(a2 + 12) == -1)
  {
    if (*(a3 + 4))
    {
      return result;
    }

    v6 = *re::graphicsLogObjects(a1);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    v5 = *(a2 + 8);
    if (v7)
    {
      LODWORD(v9[0]) = 67109120;
      HIDWORD(v9[0]) = v5;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Attempting to read from an invalid non-optional buffer (%u).", v9, 8u);
      v5 = *(a2 + 8);
    }
  }

  v9[0] = 0;
  v10 = xmmword_1E30474D0;
  v11 = 0;
  v12 = 0;
  v13 = 2;
  v14 = 0;
  v15 = v5;
  *&result = re::DynamicArray<re::RigTransform>::add((a1 + 464), v9).n128_u64[0];
  return result;
}

void re::RenderGraphBuilder::write(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  if (v6 == -1 || *(a2 + 12) == -1)
  {
    if (*(a3 + 33))
    {
      return;
    }

    v7 = *re::graphicsLogObjects(a1);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    v6 = *(a2 + 8);
    if (v8)
    {
      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Attempting to write to an invalid non-optional buffer (%u).", buf, 8u);
      v6 = *(a2 + 8);
    }
  }

  v9 = *(a3 + 4);
  if (v9 == 1)
  {
    v9 = 11;
  }

  *buf = *a3;
  *&buf[4] = v9;
  v27 = xmmword_1E30474D0;
  LOWORD(v28) = 0;
  *(&v28 + 4) = 0;
  HIDWORD(v28) = 2;
  LOBYTE(v29) = 0;
  DWORD1(v29) = v6;
  re::DynamicArray<re::RigTransform>::add((a1 + 58), buf);
  v10 = a1[39];
  v11 = *(a2 + 12);
  v12 = *(v10 + 16);
  if (v12 <= v11)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v20 = 1024;
    v21 = 789;
    v22 = 2048;
    v23 = v11;
    v24 = 2048;
    v25 = v12;
    _os_log_send_and_compose_impl(v15, &v17, buf, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(*(v10 + 32) + 48 * v11 + 32);
  if (v13 != -1)
  {
    a1[73] |= v13;
  }
}

uint64_t re::RenderGraphBuilder::handleAutoMsaaTargets(re::RenderGraphBuilder *this)
{
  v44 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v28 = 0;
  re::DynamicArray<re::RigTransform>::setCapacity(&v25, 3uLL);
  v2 = *(this + 60);
  if (v2)
  {
    v3 = v2 << 6;
    v4 = (*(this + 62) + 52);
    while (1)
    {
      v5 = *v4;
      v6 = *(this + 37);
      v7 = *(v6 + 16);
      if (v7 <= v5)
      {
        break;
      }

      v8 = (*(v6 + 32) + 48 * v5);
      if (!*v8)
      {
        v9 = *(this + 38);
        v5 = v8[7];
        v7 = *(v9 + 16);
        if (v7 <= v5)
        {
          goto LABEL_22;
        }

        v10 = *(v9 + 32) + 112 * v5;
        v12 = *(v10 + 84);
        v11 = (v10 + 84);
        if (v12 != -1)
        {
          v13 = *(v4 - 1);
          v15 = *(v4 - 13);
          v14 = *(v4 - 9);
          v41 = *(v4 - 5);
          v42 = v13;
          v39 = v15;
          v40 = v14;
          if ((DWORD1(v15) - 1) <= 2)
          {
            DWORD1(v39) = DWORD1(v15) + 5;
            re::DynamicArray<re::RigTransform>::add(&v25, &v39);
            *v4 = *v11;
          }
        }
      }

      v4 += 16;
      v3 -= 64;
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v34 = 789;
    v35 = 2048;
    v36 = v5;
    v37 = 2048;
    v38 = v7;
    _os_log_send_and_compose_impl(v21, &v30, &v39, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v25, v26);
    _os_crash_msg();
    __break(1u);
LABEL_22:
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v34 = 789;
    v35 = 2048;
    v36 = v5;
    v37 = 2048;
    v38 = v7;
    _os_log_send_and_compose_impl(v24, &v30, &v39, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v25, v26);
    _os_crash_msg();
    __break(1u);
  }

LABEL_11:
  if (v27)
  {
    v16 = v29;
    v17 = v27 << 6;
    do
    {
      re::DynamicArray<re::RigTransform>::add((this + 464), v16);
      v16 += 64;
      v17 -= 64;
    }

    while (v17);
  }

  result = v25;
  if (v25)
  {
    if (v29)
    {
      return (*(*v25 + 40))();
    }
  }

  return result;
}

uint64_t re::RenderGraphBuilder::handleProgrammableBlendingTargets(re::RenderGraphBuilder *this)
{
  v36 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v20 = 0;
  re::DynamicArray<re::RigTransform>::setCapacity(&v17, 8uLL);
  v2 = *(this + 60);
  if (v2)
  {
    v3 = *(this + 62);
    v4 = v2 << 6;
    do
    {
      v5 = *(this + 37);
      v6 = *(v3 + 13);
      v7 = *(v5 + 16);
      if (v7 <= v6)
      {
        v22 = 0;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        v14 = MEMORY[0x1E69E9C10];
        v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v23 = 136315906;
        v24 = "operator[]";
        v25 = 1024;
        if (v15)
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        v26 = 789;
        v27 = 2048;
        v28 = v6;
        v29 = 2048;
        v30 = v7;
        _os_log_send_and_compose_impl(v16, &v22, &v31, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v17, v18);
        _os_crash_msg();
        __break(1u);
      }

      if (!*(*(v5 + 32) + 48 * v6) && *(v3 + 1) == 1 && ((*(this + 617) >> *v3) & 1) != 0)
      {
        v9 = v3[1];
        v8 = v3[2];
        v10 = *v3;
        *&v34 = *(v3 + 6);
        v32 = v9;
        v33 = v8;
        v31 = v10;
        DWORD1(v31) = 10;
        re::DynamicArray<re::RigTransform>::add(&v17, &v31);
      }

      v3 += 4;
      v4 -= 64;
    }

    while (v4);
  }

  if (v19)
  {
    v11 = v21;
    v12 = v19 << 6;
    do
    {
      re::DynamicArray<re::RigTransform>::add((this + 464), v11);
      v11 += 64;
      v12 -= 64;
    }

    while (v12);
  }

  result = v17;
  if (v17)
  {
    if (v21)
    {
      return (*(*v17 + 40))();
    }
  }

  return result;
}

void *re::RenderGraphBuilder::handleForceResolve(void *this)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = this[60];
  if (v2)
  {
    v3 = this[37];
    v4 = v2 << 6;
    v5 = *(v3 + 16);
    for (i = (this[62] + 52); ; i += 16)
    {
      v7 = *i;
      if (v5 <= v7)
      {
        break;
      }

      v8 = (*(v3 + 32) + 48 * v7);
      if (!*v8)
      {
        v9 = this[38];
        v7 = v8[7];
        v1 = *(v9 + 16);
        if (v1 <= v7)
        {
          goto LABEL_16;
        }

        v10 = *(v9 + 32) + 112 * v7;
        v12 = *(v10 + 84);
        v11 = (v10 + 84);
        if (v12 != -1 && *(i - 12) - 6 <= 2)
        {
          *v11 = -1;
        }
      }

      v4 -= 64;
      if (!v4)
      {
        return this;
      }
    }

    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v23 = 789;
    v24 = 2048;
    v25 = v7;
    v26 = 2048;
    v27 = v5;
    _os_log_send_and_compose_impl(v14, &v19, &v28, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
LABEL_16:
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v23 = 789;
    v24 = 2048;
    v25 = v7;
    v26 = 2048;
    v27 = v1;
    _os_log_send_and_compose_impl(v17, &v19, &v28, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
  }

  return this;
}

double re::RenderGraphBuilder::setVisibilityResultsBuffer(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  if (v3 == -1 || *(a2 + 12) == -1)
  {
    v6 = *re::graphicsLogObjects(a1);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    v3 = *(a2 + 8);
    if (v7)
    {
      LODWORD(v9[0]) = 67109120;
      HIDWORD(v9[0]) = v3;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Attempting to use an invalid buffer for visibility results (%u).", v9, 8u);
      v3 = *(a2 + 8);
    }
  }

  v9[0] = 0x900000000;
  v10 = xmmword_1E30474D0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 2;
  v15 = 0;
  v16 = v3;
  *&result = re::DynamicArray<re::RigTransform>::add((a1 + 464), v9).n128_u64[0];
  return result;
}

_anonymous_namespace_ *re::RenderGraphBuilder::startNode(re::RenderGraphBuilder *this, re::RenderGraphNodeBase *a2)
{
  v5 = a2;
  *(this + 55) = 0;
  ++*(this + 112);
  *(this + 60) = 0;
  ++*(this + 122);
  *(this + 65) = 0;
  ++*(this + 132);
  *(this + 70) = 0;
  ++*(this + 142);
  *(this + 73) = 0;
  *(this + 148) = 0;
  *(this + 600) = 0u;
  *(this + 615) = 0;
  re::DynamicArray<re::TransitionCondition *>::add((this + 424), &v5);
  if ((*(*v5 + 16))(v5))
  {
    v4 = 0;
    re::DynamicArray<unsigned long>::add((this + 504), &v4);
  }

  result = (*(*v5 + 24))(v5);
  if (result)
  {
    v4 = 0;
    return re::DynamicArray<unsigned long>::add((this + 544), &v4);
  }

  return result;
}

double re::RenderGraphBuilder::finishNode(re::RenderGraphBuilder *this, re::RenderGraphNodeBase *a2)
{
  re::DynamicArray<re::RenderGraphResourceSetup>::add((this + 336), this + 424);
  *(this + 55) = 0;
  ++*(this + 112);
  *(this + 60) = 0;
  ++*(this + 122);
  *(this + 65) = 0;
  ++*(this + 132);
  *(this + 70) = 0;
  ++*(this + 142);
  *(this + 73) = 0;
  *(this + 148) = 0;
  result = 0.0;
  *(this + 600) = 0u;
  *(this + 615) = 0;
  return result;
}

__n128 re::DynamicArray<re::RenderGraphResourceSetup>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraphResourceSetup>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 200 * v4;
  re::DynamicArray<char const*>::DynamicArray(v5, a2);
  re::DynamicArray<re::RenderGraphResourceOperation>::DynamicArray(v5 + 40, (a2 + 40));
  re::DynamicArray<unsigned long>::DynamicArray(v5 + 80, (a2 + 80));
  re::DynamicArray<unsigned long>::DynamicArray(v5 + 120, (a2 + 120));
  result = *(a2 + 160);
  v7 = *(a2 + 176);
  *(v5 + 191) = *(a2 + 191);
  *(v5 + 160) = result;
  *(v5 + 176) = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::RenderGraphBuilder::resourceFromIndex@<Q0>(re::RenderGraphBuilder *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(this + 37);
  v5 = a2;
  v6 = *(v4 + 16);
  if (v6 <= a2)
  {
    v12 = 0;
    memset(v21, 0, sizeof(v21));
    v9 = MEMORY[0x1E69E9C10];
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v16 = 789;
    v17 = 2048;
    v18 = v5;
    v19 = 2048;
    v20 = v6;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(v4 + 32) + 48 * a2;
  *a3 = *v7;
  re::StringID::StringID((a3 + 8), (v7 + 8));
  result = *(v7 + 24);
  *(a3 + 40) = *(v7 + 40);
  *(a3 + 24) = result;
  return result;
}

uint64_t re::RenderGraphCompiled::RenderGraphCompiled(uint64_t a1, re::RenderGraphResourceDescriptions *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0x7FFFFFFFLL;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 280) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  re::RenderGraphResourceDescriptions::swap(a1, a2);
  *(a1 + 296) = a1 + 8;
  *(a1 + 304) = a1 + 48;
  *(a1 + 312) = a1 + 88;
  *(a1 + 320) = a1 + 128;
  *(a1 + 368) = 0;
  *(a1 + 328) = a1 + 168;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0;
  v11 = *(a4 + 8);
  *(a1 + 336) = *a4;
  *(a1 + 344) = v11;
  *a4 = 0;
  *(a4 + 8) = 0;
  v12 = *(a1 + 352);
  *(a1 + 352) = *(a4 + 16);
  *(a4 + 16) = v12;
  v13 = *(a1 + 368);
  *(a1 + 368) = *(a4 + 32);
  *(a4 + 32) = v13;
  ++*(a4 + 24);
  ++*(a1 + 360);
  *(a1 + 376) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 608) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0;
  v14 = *(a6 + 8);
  *(a1 + 576) = *a6;
  *(a1 + 584) = v14;
  *a6 = 0;
  *(a6 + 8) = 0;
  v15 = *(a1 + 592);
  *(a1 + 592) = *(a6 + 16);
  *(a6 + 16) = v15;
  v16 = *(a1 + 608);
  *(a1 + 608) = *(a6 + 32);
  *(a6 + 32) = v16;
  ++*(a6 + 24);
  ++*(a1 + 600);
  *(a1 + 648) = 0;
  *(a1 + 616) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  v17 = *(a5 + 8);
  *(a1 + 616) = *a5;
  *(a1 + 624) = v17;
  *a5 = 0;
  *(a5 + 8) = 0;
  v18 = *(a1 + 632);
  *(a1 + 632) = *(a5 + 16);
  *(a5 + 16) = v18;
  v19 = *(a1 + 648);
  *(a1 + 648) = *(a5 + 32);
  *(a5 + 32) = v19;
  ++*(a5 + 24);
  ++*(a1 + 640);
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 692) = 0x7FFFFFFFLL;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 704) = 0;
  *(a1 + 776) = 0;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0;
  v20 = *(a3 + 8);
  *(a1 + 744) = *a3;
  *(a1 + 752) = v20;
  *a3 = 0;
  *(a3 + 8) = 0;
  v21 = *(a1 + 760);
  *(a1 + 760) = *(a3 + 16);
  *(a3 + 16) = v21;
  v22 = *(a1 + 776);
  *(a1 + 776) = *(a3 + 32);
  *(a3 + 32) = v22;
  ++*(a3 + 24);
  ++*(a1 + 768);
  *(a1 + 784) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0;
  *(a1 + 816) = 0u;
  return a1;
}