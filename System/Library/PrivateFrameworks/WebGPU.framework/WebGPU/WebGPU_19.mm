WTF::StringImpl *WGSL::NameManglerVisitor::visit(WGSL::NameManglerVisitor *this, WGSL::AST::Variable *a2)
{
  WGSL::AST::Visitor::visit(this, a2);

  return WGSL::NameManglerVisitor::introduceVariable(this, a2 + 24, 2);
}

WTF::StringImpl *WGSL::NameManglerVisitor::visit(WGSL::NameManglerVisitor *this, WGSL::AST::VariableStatement *a2)
{
  v3 = *(a2 + 3);
  WGSL::AST::Visitor::visit(this, v3);

  return WGSL::NameManglerVisitor::introduceVariable(this, v3 + 24, 1);
}

uint64_t WGSL::NameManglerVisitor::visit(uint64_t this, WGSL::AST::IdentifierExpression *a2, const WTF::StringImpl *a3)
{
  v4 = this;
  v5 = *(this + 40);
  while (1)
  {
    v6 = v5[1];
    if (v6)
    {
      v7 = *(a2 + 11);
      if (v7 == -1 || !v7)
      {
        __break(0xC471u);
        JUMPOUT(0x225743958);
      }

      v8 = *(v6 - 8);
      v9 = *(v7 + 4);
      v10 = v9 < 0x100 ? WTF::StringImpl::hashSlowCase(v7) : v9 >> 8;
      for (i = 0; ; v10 = i + v12)
      {
        v12 = v10 & v8;
        v13 = v6 + 24 * (v10 & v8);
        this = *v13;
        if (*v13 != -1)
        {
          if (!this)
          {
            goto LABEL_16;
          }

          this = WTF::equal(this, *(a2 + 11), a3);
          if (this)
          {
            break;
          }
        }

        ++i;
      }

      v14 = v5[1];
      if (!v14 || v13 != v14 + 24 * *(v14 - 4))
      {
        break;
      }
    }

LABEL_16:
    v5 = *v5;
    if (!v5)
    {
      return this;
    }
  }

  v15 = *(v4 + 80);
  v16 = *(a2 + 9);
  v17 = *(a2 + 10);
  WGSL::MangledName::toString(&v21, (v13 + 8));
  v22[1] = v16;
  v22[2] = v17;
  v18 = v21;
  v21 = 0;
  v22[0] = off_2838D37C0;
  v23 = v18;
  WGSL::ShaderModule::replace<WGSL::AST::Identifier>(v15, a2 + 64, v22);
  v20 = v23;
  v22[0] = off_2838D37C0;
  v23 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v19);
  }

  this = v21;
  v21 = 0;
  if (this)
  {
    if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(this, v19);
    }
  }

  return this;
}

WTF::StringImpl *WGSL::NameManglerVisitor::visit(WTF::StringImpl *this, WGSL::AST::FieldAccessExpression *a2, const WTF::StringImpl *a3)
{
  v4 = this;
  if ((*(this + 32) & 1) == 0)
  {
    this = (*(*this + 216))(this, *(a2 + 8), a3);
  }

  v5 = *(*(a2 + 8) + 24);
  if (v5)
  {
    v6 = *(v5 + 48);
    if (v6 == 10)
    {
      v5 = v5[1];
      if (!v5)
      {
        return this;
      }

      v6 = *(v5 + 48);
    }

    if (v6 == 11)
    {
      v5 = v5[1];
      if (!v5)
      {
        return this;
      }

      v6 = *(v5 + 48);
    }

    if (v6 == 4)
    {
      v7 = *(v4 + 11);
      if (v7)
      {
        v8 = *v5;
        if (v8 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x225743C2CLL);
        }

        if (!v8)
        {
          __break(0xC471u);
          JUMPOUT(0x225743C4CLL);
        }

        v9 = *(v7 - 8);
        v10 = (~(v8 << 32) + v8) ^ ((~(v8 << 32) + v8) >> 22);
        v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
        v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
        v13 = v9 & ((v12 >> 31) ^ v12);
        v14 = *(v7 + 16 * v13);
        if (v14 != v8)
        {
          v15 = 1;
          while (v14)
          {
            v13 = (v13 + v15) & v9;
            v14 = *(v7 + 16 * v13);
            ++v15;
            if (v14 == v8)
            {
              goto LABEL_20;
            }
          }

          v13 = *(v7 - 4);
        }

LABEL_20:
        if (v13 != *(v7 - 4))
        {
          v16 = *(a2 + 12);
          if (v16 == -1)
          {
            __break(0xC471u);
            JUMPOUT(0x225743C6CLL);
          }

          if (v16)
          {
            v17 = v7 + 16 * v13;
            v20 = *(v17 + 8);
            v18 = (v17 + 8);
            v19 = v20;
            v21 = *(v20 - 8);
            v22 = *(v16 + 4);
            if (v22 < 0x100)
            {
              v23 = WTF::StringImpl::hashSlowCase(v16);
            }

            else
            {
              v23 = v22 >> 8;
            }

            for (i = 0; ; v23 = i + v25)
            {
              v25 = v23 & v21;
              v26 = v19 + 24 * (v23 & v21);
              v27 = *v26;
              if (*v26 != -1)
              {
                if (!v27)
                {
                  v26 = *v18 + 24 * *(*v18 - 4);
LABEL_33:
                  v28 = *(v4 + 10);
                  v29 = *(a2 + 10);
                  v30 = *(a2 + 11);
                  WGSL::MangledName::toString(&v34, (v26 + 8));
                  v35[1] = v29;
                  v35[2] = v30;
                  v31 = v34;
                  v34 = 0;
                  v35[0] = off_2838D37C0;
                  v36 = v31;
                  WGSL::ShaderModule::replace<WGSL::AST::Identifier>(v28, a2 + 72, v35);
                  v33 = v36;
                  v35[0] = off_2838D37C0;
                  v36 = 0;
                  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v33, v32);
                  }

                  this = v34;
                  v34 = 0;
                  if (this)
                  {
                    if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      return WTF::StringImpl::destroy(this, v32);
                    }
                  }

                  return this;
                }

                if (WTF::equal(v27, *(a2 + 12), a3))
                {
                  goto LABEL_33;
                }
              }

              ++i;
            }
          }
        }
      }

      __break(0xC471u);
      JUMPOUT(0x225743C0CLL);
    }
  }

  return this;
}

void WGSL::NameManglerVisitor::~NameManglerVisitor(WGSL::NameManglerVisitor *this, WTF::StringImpl *a2)
{
  WGSL::NameManglerVisitor::~NameManglerVisitor(this, a2);

  JUMPOUT(0x22AA68560);
}

{
  *this = &unk_2838D50C0;
  v3 = *(this + 11);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = (v3 + 16 * i);
        if (*v6 != -1)
        {
          v7 = v6[1];
          if (v7)
          {
            v8 = *(v7 - 4);
            if (v8)
            {
              v9 = v6[1];
              do
              {
                if (*v9 != -1)
                {
                  v10 = v9[2];
                  v9[2] = 0;
                  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v10, a2);
                  }

                  v11 = *v9;
                  *v9 = 0;
                  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v11, a2);
                  }
                }

                v9 += 3;
                --v8;
              }

              while (v8);
            }

            WTF::fastFree((v7 - 16), a2);
          }
        }
      }
    }

    WTF::fastFree((v3 - 16), a2);
  }

  v12 = *(this + 8);
  *v12 = *(this + 9);
  v13 = *(v12 + 20);
  if (v13)
  {
    v14 = v13 - 1;
    std::unique_ptr<WGSL::ContextProvider<WGSL::MangledName>::Context,std::default_delete<WGSL::ContextProvider<WGSL::MangledName>::Context>>::~unique_ptr[abi:sn200100]((*(v12 + 8) + 8 * (v13 - 1)), a2);
    *(v12 + 20) = v14;
    v16 = *(this + 15);
    if (v16)
    {
      v17 = *(this + 6);
      v18 = 8 * v16;
      do
      {
        v17 = std::unique_ptr<WGSL::ContextProvider<WGSL::MangledName>::Context,std::default_delete<WGSL::ContextProvider<WGSL::MangledName>::Context>>::~unique_ptr[abi:sn200100](v17, v15) + 1;
        v18 -= 8;
      }

      while (v18);
    }

    v19 = *(this + 6);
    if (v19)
    {
      *(this + 6) = 0;
      *(this + 14) = 0;
      WTF::fastFree(v19, v15);
    }

    *this = &unk_2838D37E8;
    if (*(this + 32) == 1)
    {
      v20 = *(this + 1);
      *(this + 1) = 0;
      if (v20)
      {
        if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v15);
        }
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void WGSL::AST::ScopedVisitor<WGSL::MangledName>::visit(uint64_t a1, uint64_t a2)
{
  operator new();
}

{
  operator new();
}

void WGSL::NameManglerVisitor::NameManglerVisitor(WGSL::NameManglerVisitor *this, WGSL::ShaderModule *a2)
{
  *this = &unk_2838D37E8;
  *(this + 8) = 0;
  *(this + 32) = 0;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = this + 40;
  *(this + 9) = 0;
  operator new();
}

void *std::unique_ptr<WGSL::ContextProvider<WGSL::MangledName>::Context,std::default_delete<WGSL::ContextProvider<WGSL::MangledName>::Context>>::~unique_ptr[abi:sn200100](void *result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    v3 = result;
    v4 = *(v2 + 8);
    if (v4)
    {
      v5 = *(v4 - 4);
      if (v5)
      {
        v6 = *(v2 + 8);
        do
        {
          if (*v6 != -1)
          {
            v7 = v6[2];
            v6[2] = 0;
            if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v7, a2);
            }

            v8 = *v6;
            *v6 = 0;
            if (v8)
            {
              if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v8, a2);
              }
            }
          }

          v6 += 3;
          --v5;
        }

        while (v5);
      }

      WTF::fastFree((v4 - 16), a2);
    }

    MEMORY[0x22AA68560](v2, 0x60C405C6656D0);
    return v3;
  }

  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::MangledName>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::MangledName>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastMalloc((24 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (v3)
  {
    bzero((v7 + 16), 24 * v3);
  }

  *a1 = v10;
  v9[2] = v3 - 1;
  v9[3] = v3;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    v12 = 0;
    v13 = v5;
    while (1)
    {
      v14 = v4 + 24 * v11;
      v15 = *v14;
      if (*v14 != -1)
      {
        if (v15)
        {
          v18 = *a1;
          if (*a1)
          {
            v19 = *(v18 - 8);
            v20 = *(v15 + 4);
            if (v20 >= 0x100)
            {
              goto LABEL_21;
            }

LABEL_23:
            v21 = WTF::StringImpl::hashSlowCase(v15);
          }

          else
          {
            v19 = 0;
            v20 = *(v15 + 4);
            if (v20 < 0x100)
            {
              goto LABEL_23;
            }

LABEL_21:
            v21 = v20 >> 8;
          }

          v22 = 0;
          do
          {
            v23 = (v18 + 24 * (v21 & v19));
            v21 = ++v22 + (v21 & v19);
          }

          while (*v23);
          v24 = v23[2];
          v23[2] = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v8);
          }

          v25 = *v23;
          *v23 = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v8);
          }

          v26 = *v14;
          *v14 = 0;
          *v23 = v26;
          v23[1] = *(v14 + 8);
          v27 = *(v14 + 16);
          *(v14 + 16) = 0;
          v23[2] = v27;
          v28 = *(v14 + 16);
          *(v14 + 16) = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v8);
          }

          v29 = *v14;
          *v14 = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v8);
          }

          if (v14 == a3)
          {
            v12 = v23;
          }

          goto LABEL_10;
        }

        v16 = *(v14 + 16);
        *(v14 + 16) = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v8);
        }

        v17 = *v14;
        *v14 = 0;
        if (v17)
        {
          if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v8);
          }
        }
      }

LABEL_10:
      if (++v11 == v13)
      {
        goto LABEL_39;
      }
    }
  }

  v12 = 0;
  result = 0;
  if (v4)
  {
LABEL_39:
    WTF::fastFree((v4 - 16), v8);
    return v12;
  }

  return result;
}

void *_ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST10IdentifierEEENS_9enable_ifIXsr3stdE12is_base_of_vINS5_4NodeET_EEvE4typeEPS9_OS9_EUlvE_NS_9allocatorISE_EEFvvEED1Ev(void *result, WTF::StringImpl *a2)
{
  *result = &unk_2838D5300;
  result[2] = off_2838D37C0;
  v2 = result[5];
  result[5] = 0;
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v3 = result;
      WTF::StringImpl::destroy(v2, a2);
      return v3;
    }
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST10IdentifierEEENS_9enable_ifIXsr3stdE12is_base_of_vINS5_4NodeET_EEvE4typeEPS9_OS9_EUlvE_NS_9allocatorISE_EEFvvEED0Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_2838D5300;
  a1[2] = off_2838D37C0;
  v3 = a1[5];
  a1[5] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  JUMPOUT(0x22AA68560);
}

uint64_t _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST10IdentifierEEENS_9enable_ifIXsr3stdE12is_base_of_vINS5_4NodeET_EEvE4typeEPS9_OS9_EUlvE_NS_9allocatorISE_EEFvvEE7__cloneEPNS0_6__baseISH_EE(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D5300;
  *(a2 + 8) = v2;
  *(a2 + 16) = &unk_2838D3EF8;
  *(a2 + 24) = *(result + 24);
  *(a2 + 16) = off_2838D37C0;
  v3 = *(result + 40);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  *(a2 + 40) = v3;
  return result;
}

WTF::StringImpl *_ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST10IdentifierEEENS_9enable_ifIXsr3stdE12is_base_of_vINS5_4NodeET_EEvE4typeEPS9_OS9_EUlvE_NS_9allocatorISE_EEFvvEE7destroyEv(uint64_t a1, WTF::StringImpl *a2)
{
  *(a1 + 16) = off_2838D37C0;
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, a2);
    }
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST10IdentifierEEENS_9enable_ifIXsr3stdE12is_base_of_vINS5_4NodeET_EEvE4typeEPS9_OS9_EUlvE_NS_9allocatorISE_EEFvvEE18destroy_deallocateEv(void *a1, WTF::StringImpl *a2)
{
  a1[2] = off_2838D37C0;
  v3 = a1[5];
  a1[5] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v4 = a1;
    WTF::StringImpl::destroy(v3, a2);
    a1 = v4;
  }

  operator delete(a1);
}

WTF::StringImpl *_ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST10IdentifierEEENS_9enable_ifIXsr3stdE12is_base_of_vINS5_4NodeET_EEvE4typeEPS9_OS9_EUlvE_NS_9allocatorISE_EEFvvEEclEv(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
  v7 = v3;
  *(v2 + 8) = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a1 + 40) = 0;
  v5 = *(v2 + 24);
  *(v2 + 24) = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  result = v7;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v7, a2);
    }
  }

  return result;
}

void WTF::HashTable<WGSL::AST::Structure *,WTF::KeyValuePair<WGSL::AST::Structure *,WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Structure *,WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WGSL::AST::Structure *>,WTF::HashMap<WGSL::AST::Structure *,WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WGSL::AST::Structure *>,WTF::HashTraits<WGSL::AST::Structure *>,WTF::HashTraits<WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Structure *>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 4);
    v5 = *(v3 - 12);
    v6 = 16 * a2;
    v8 = WTF::fastMalloc((v6 + 16));
    v9 = v8 + 4;
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = 0;
  v5 = 0;
  v6 = 16 * a2;
  v8 = WTF::fastMalloc((v6 + 16));
  v9 = v8 + 4;
  if (v2)
  {
LABEL_3:
    bzero(v9, v6);
  }

LABEL_4:
  *a1 = v9;
  v8[2] = v2 - 1;
  v8[3] = v2;
  *v8 = 0;
  v8[1] = v5;
  if (v4)
  {
    v10 = 0;
    v11 = v4;
    do
    {
      v12 = (v3 + 16 * v10);
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
        {
          v19 = *a1;
          if (*a1)
          {
            v20 = *(v19 - 8);
          }

          else
          {
            v20 = 0;
          }

          v21 = (~(v13 << 32) + v13) ^ ((~(v13 << 32) + v13) >> 22);
          v22 = 9 * ((v21 + ~(v21 << 13)) ^ ((v21 + ~(v21 << 13)) >> 8));
          v23 = (v22 ^ (v22 >> 15)) + ~((v22 ^ (v22 >> 15)) << 27);
          v24 = v20 & ((v23 >> 31) ^ v23);
          v25 = 1;
          do
          {
            v26 = v24;
            v27 = *(v19 + 16 * v24);
            v24 = (v24 + v25++) & v20;
          }

          while (v27);
          v28 = (v19 + 16 * v26);
          v29 = v28[1];
          if (v29)
          {
            v30 = *(v29 - 4);
            if (v30)
            {
              v31 = v28[1];
              do
              {
                if (*v31 != -1)
                {
                  v32 = v31[2];
                  v31[2] = 0;
                  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v32, v7);
                  }

                  v33 = *v31;
                  *v31 = 0;
                  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v33, v7);
                  }
                }

                v31 += 3;
                --v30;
              }

              while (v30);
            }

            WTF::fastFree((v29 - 16), v7);
            v13 = *v12;
          }

          *v28 = v13;
          v28[1] = 0;
          v34 = v12[1];
          v12[1] = 0;
          v28[1] = v34;
          v35 = v12[1];
          if (v35)
          {
            v36 = *(v35 - 4);
            if (v36)
            {
              v37 = v12[1];
              do
              {
                if (*v37 != -1)
                {
                  v38 = v37[2];
                  v37[2] = 0;
                  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v38, v7);
                  }

                  v39 = *v37;
                  *v37 = 0;
                  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v39, v7);
                  }
                }

                v37 += 3;
                --v36;
              }

              while (v36);
            }

            WTF::fastFree((v35 - 16), v7);
          }
        }

        else
        {
          v14 = v12[1];
          if (v14)
          {
            v15 = *(v14 - 1);
            if (v15)
            {
              v16 = v14;
              do
              {
                if (*v16 != -1)
                {
                  v17 = v16[2];
                  v16[2] = 0;
                  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v17, v7);
                  }

                  v18 = *v16;
                  *v16 = 0;
                  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v18, v7);
                  }
                }

                v16 += 3;
                --v15;
              }

              while (v15);
            }

            WTF::fastFree((v14 - 2), v7);
          }
        }
      }

      ++v10;
    }

    while (v10 != v11);
  }

  if (v3)
  {

    WTF::fastFree((v3 - 16), v7);
  }
}

WTF::StringImpl *WGSL::Metal::generateMetalCode@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, WTF::StringImpl **a5@<X8>)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 1;
  WTF::StringBuilder::append();
  v23 = 0;
  v24 = 0;
  v22 = &unk_2838D5B60;
  v25 = &v16;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 1;
  v32 = &v16;
  v33 = a1;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v38 = 0;
  v39 = 0;
  v40 = a2;
  v41 = a3;
  v42 = *a4;
  WGSL::Metal::FunctionDefinitionWriter::write(&v22);
  WGSL::Metal::FunctionDefinitionWriter::~FunctionDefinitionWriter(&v22, v10);
  if (atomic_load_explicit(&qword_28159C978, memory_order_acquire) != -1)
  {
    v21 = &v22;
    v22 = &v20;
    std::__call_once(&qword_28159C978, &v21, std::__call_once_proxy[abi:sn200100]<std::tuple<WGSL::Metal::dumpMetalCodeIfNeeded(WTF::StringBuilder &)::$_0 &&>>);
  }

  if (_MergedGlobals_5 == 1)
  {
    WTF::dataLog<char [22],char [2]>(v11);
    if (!v16)
    {
      WTF::StringBuilder::shrinkToFit(&v16);
      WTF::StringBuilder::reifyString(&v16);
    }

    WTF::dataLog<WTF::String,char [2]>(&v16);
  }

  v13 = v16;
  if (v16 || (WTF::StringBuilder::shrinkToFit(&v16), WTF::StringBuilder::reifyString(&v16), (v13 = v16) != 0))
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  *a5 = v13;
  v14 = v17;
  v17 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  result = v16;
  v16 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

uint64_t WTF::dataLog<char [22],char [2]>(WTF *a1)
{
  v1 = WTF::dataFile(a1);
  (*(*v1 + 32))(v1);
  WTF::printInternal();
  WTF::printInternal();
  v2 = *(*v1 + 40);

  return v2(v1);
}

uint64_t WTF::dataLog<WTF::String,char [2]>(WTF *a1)
{
  v1 = WTF::dataFile(a1);
  (*(*v1 + 32))(v1);
  WTF::printInternal();
  WTF::printInternal();
  v2 = *(*v1 + 40);

  return v2(v1);
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::write(WGSL::Metal::FunctionDefinitionWriter *this)
{
  WGSL::Metal::FunctionDefinitionWriter::emitNecessaryHelpers(this);
  v4 = *(this + 12);
  v5 = *(v4 + 76);
  if (v5)
  {
    v6 = *(v4 + 64);
    v7 = 8 * v5;
    do
    {
      v8 = *v6;
      if ((*(**v6 + 16))(*v6) == 54)
      {
        (*(*this + 72))(this, v8);
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
    v4 = *(this + 12);
    v9 = *(v4 + 76);
    if (v9)
    {
      v10 = *(v4 + 64);
      v11 = &v10[v9];
      v501 = xmmword_2258821C0;
      v502 = 0u;
      v500 = v11;
      while (1)
      {
        v12 = *v10;
        if ((*(**v10 + 16))(*v10) == 54 && *(v12 + 88) == 7 && WGSL::Type::isConstructible(*(v12 + 112)))
        {
          break;
        }

LABEL_8:
        if (++v10 == v11)
        {
          v4 = *(this + 12);
          goto LABEL_618;
        }
      }

      v13 = *(*(v12 + 96) + 48);
      if (v13)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      }

      v503 = v13;
      v14 = *(v12 + 48);
      v15 = *(this + 20);
      if (v14)
      {
        v16 = *(v14 + 4);
        if (v13)
        {
LABEL_16:
          v17 = *(v13 + 4);
          goto LABEL_19;
        }
      }

      else
      {
        v16 = 0;
        if (v13)
        {
          goto LABEL_16;
        }
      }

      v17 = 0;
LABEL_19:
      v18 = (4 * *(this + 26));
      v19 = (v18 | 2) + 11;
      if ((v18 | 2) >= 0xFFFFFFF5)
      {
        v19 = -1;
      }

      v56 = __CFADD__(v17, v19);
      v20 = v17 + v19;
      if (v56)
      {
        v20 = -1;
      }

      v56 = __CFADD__(v20, 8);
      v21 = v20 + 8;
      if (v56)
      {
        v21 = -1;
      }

      v56 = __CFADD__(v16, v21);
      v22 = v16 + v21;
      if (v56)
      {
        v22 = -1;
      }

      v56 = __CFADD__(v22, 38);
      v23 = v22 + 38;
      if (v56)
      {
        v23 = -1;
      }

      v56 = __CFADD__(v18, v23);
      v24 = v18 + v23;
      if (v56)
      {
        v24 = -1;
      }

      v56 = __CFADD__(v15, v24);
      v25 = v15 + v24;
      if (v56)
      {
        v26 = 0xFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      v27 = *(this + 9);
      if ((v27 || (v27 = *(this + 8)) != 0) && (*(v27 + 16) & 4) == 0 || v14 && (*(v14 + 16) & 4) == 0 || v13 && (*(v13 + 16) & 4) == 0)
      {
        v28 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
        if (!v28)
        {
          goto LABEL_125;
        }

        v30 = v28;
        v31 = v29;
        if (v18)
        {
          memset_pattern16(v28, aIneStateTLTAne, 2 * v18);
          v32 = v18;
          v33 = v501;
          v34 = v502;
          if (v31 < v18)
          {
            goto LABEL_662;
          }
        }

        else
        {
          v32 = 0;
          v33 = v501;
          v34 = v502;
        }

        v40 = &v30[2 * v32];
        *v40 = xmmword_225882180;
        *(v40 + 1) = xmmword_225882190;
        *(v40 + 2) = xmmword_2258821A0;
        *(v40 + 3) = xmmword_2258821B0;
        *(v40 + 8) = *&aIneStateTLTAne[8];
        *(v40 + 18) = 2097193;
        v41 = v31 - v32;
        if (v31 - v32 <= 0x25)
        {
          goto LABEL_662;
        }

        v42 = v40 + 76;
        v43 = v41 - 38;
        if (!v14)
        {
          v46 = 0;
          goto LABEL_93;
        }

        v44 = *(v14 + 8);
        v45 = *(v14 + 4);
        if ((*(v14 + 16) & 4) == 0)
        {
          if (v45)
          {
            if (v45 == 1)
            {
              *v42 = v44->i16[0];
            }

            else
            {
              memcpy(v42, v44, 2 * v45);
              v33 = v501;
              v34 = v502;
            }
          }

LABEL_92:
          v46 = *(v14 + 4);
          if (v43 < v46)
          {
            goto LABEL_662;
          }

LABEL_93:
          v70 = &v42[v46];
          *v70 = xmmword_2258821C0;
          v71 = v70 + 1;
          if (v43 - v46 <= 7)
          {
            goto LABEL_662;
          }

          v72 = v43 - v46 - 8;
          v501 = v33;
          v502 = v34;
          if (!v13)
          {
            v75 = 0;
LABEL_119:
            v91 = &v71[v75];
            *v91 = xmmword_2258821D0;
            *(v91 + 4) = 2687076;
            v91[10] = 10;
            v92 = v72 - v75;
            if (v92 <= 0xA)
            {
              goto LABEL_662;
            }

            v93 = v91 + 11;
            if (v18)
            {
              v94 = v92 - 11;
              memset_pattern16(v91 + 11, aIneStateTLTAne, 2 * v18);
              if (v94 < v18)
              {
                goto LABEL_662;
              }
            }

            else
            {
              v18 = 0;
            }

            *&v93[v18] = 655483;
LABEL_125:
            v95 = *(this + 26) + 1;
            *(this + 26) = v95;
            v96 = *(v12 + 48);
            v97 = *(this + 20);
            if (v96)
            {
LABEL_126:
              v98 = *(v96 + 4);
              goto LABEL_175;
            }

LABEL_174:
            v98 = 0;
LABEL_175:
            v129 = (4 * v95);
            v130 = v98 + 9;
            if (v98 >= 0xFFFFFFF7)
            {
              v130 = -1;
            }

            v56 = __CFADD__(v129, v130);
            v131 = v129 + v130;
            if (v56)
            {
              v131 = -1;
            }

            v56 = __CFADD__(v97, v131);
            v132 = v97 + v131;
            if (v56)
            {
              v133 = 0xFFFFFFFFLL;
            }

            else
            {
              v133 = v132;
            }

            v134 = *(this + 9);
            if ((v134 || (v134 = *(this + 8)) != 0) && (*(v134 + 16) & 4) == 0 || v96 && (*(v96 + 16) & 4) == 0)
            {
              v135 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
              v137 = v502;
              if (!v135)
              {
                goto LABEL_248;
              }

              v138 = v135;
              v139 = v136;
              if (v129)
              {
                memset_pattern16(v135, aIneStateTLTAne, 2 * v129);
                v137 = v502;
                if (v139 < v129)
                {
                  goto LABEL_662;
                }

                v140 = &v138[2 * v129];
                if (v96)
                {
LABEL_192:
                  v141 = *(v96 + 8);
                  v142 = *(v96 + 4);
                  if ((*(v96 + 16) & 4) == 0)
                  {
                    if (v142)
                    {
                      if (v142 == 1)
                      {
                        *v140 = v141->i16[0];
                      }

                      else
                      {
                        memcpy(v140, v141, 2 * v142);
                      }
                    }

LABEL_231:
                    v153 = *(v96 + 4);
                    if (v139 - v129 < v153)
                    {
                      goto LABEL_662;
                    }

                    goto LABEL_232;
                  }

                  if (v142 < 0x40)
                  {
                    v154 = v140;
                    v161 = &v140[2 * v142];
                    if (v140 == v161)
                    {
                      goto LABEL_231;
                    }
                  }

                  else
                  {
                    v154 = &v140[2 * (v142 & 0xFFFFFFC0)];
                    v155 = v140;
                    do
                    {
                      v516.val[0] = *v141;
                      v156 = v141[1];
                      v522.val[0] = v141[2];
                      v157 = v141[3];
                      v141 += 4;
                      v528.val[0] = v157;
                      v522.val[1] = v137;
                      v533.val[0] = v156;
                      v516.val[1] = v137;
                      v158 = v155;
                      vst2q_s8(v158, v516);
                      v158 += 32;
                      v528.val[1] = v137;
                      v533.val[1] = v137;
                      vst2q_s8(v158, v533);
                      v159 = v155 + 64;
                      vst2q_s8(v159, v522);
                      v160 = v155 + 96;
                      v155 += 128;
                      vst2q_s8(v160, v528);
                    }

                    while (v155 != v154);
                    v161 = &v140[2 * v142];
                    if (v154 == v161)
                    {
                      goto LABEL_231;
                    }
                  }

                  v163 = &v138[2 * v142 + 2 * v129 - v154 - 2];
                  if (v163 < 0xE || (v154 < v141->u64 + (v163 >> 1) + 1 ? (v164 = v141 >= v154 + (v163 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v164 = 1), !v164))
                  {
                    v167 = v141;
                    v168 = v154;
                    goto LABEL_228;
                  }

                  v165 = (v163 >> 1) + 1;
                  if (v163 >= 0x3E)
                  {
                    v166 = v165 & 0xFFFFFFFFFFFFFFE0;
                    v394 = (v154 + 32);
                    v395 = &v141[1];
                    v396 = v165 & 0xFFFFFFFFFFFFFFE0;
                    do
                    {
                      v397 = *v395[-2].i8;
                      v398 = vmovl_u8(*v395);
                      v399 = vmovl_high_u8(*v395->i8);
                      v394[-2] = vmovl_u8(*v397.i8);
                      v394[-1] = vmovl_high_u8(v397);
                      *v394 = v398;
                      v394[1] = v399;
                      v394 += 4;
                      v395 += 4;
                      v396 -= 32;
                    }

                    while (v396);
                    if (v165 == v166)
                    {
                      goto LABEL_231;
                    }

                    if ((v165 & 0x18) == 0)
                    {
                      v168 = (v154 + 2 * v166);
                      v167 = (v141 + v166);
                      goto LABEL_228;
                    }
                  }

                  else
                  {
                    v166 = 0;
                  }

                  v167 = (v141 + (v165 & 0xFFFFFFFFFFFFFFF8));
                  v168 = (v154 + 2 * (v165 & 0xFFFFFFFFFFFFFFF8));
                  v400 = (v154 + 2 * v166);
                  v401 = &v141->i8[v166];
                  v402 = v166 - (v165 & 0xFFFFFFFFFFFFFFF8);
                  do
                  {
                    v403 = *v401++;
                    *v400++ = vmovl_u8(v403);
                    v402 += 8;
                  }

                  while (v402);
                  if (v165 == (v165 & 0xFFFFFFFFFFFFFFF8))
                  {
                    goto LABEL_231;
                  }

                  do
                  {
LABEL_228:
                    v169 = v167->u8[0];
                    v167 = (v167 + 1);
                    *v168 = v169;
                    v168 += 2;
                  }

                  while (v168 != v161);
                  goto LABEL_231;
                }
              }

              else
              {
                v129 = 0;
                v140 = v135;
                if (v96)
                {
                  goto LABEL_192;
                }
              }

              v153 = 0;
LABEL_232:
              v170 = &v140[2 * v153];
              *v170 = xmmword_2258821E0;
              *(v170 + 8) = 10;
              goto LABEL_248;
            }

            v143 = MEMORY[0x22AA68210](this + 64, v133);
            if (!v143)
            {
              goto LABEL_248;
            }

            v145 = v143;
            v146 = v144;
            if (v129)
            {
              memset(v143, 32, v129);
              if (v146 < v129)
              {
                goto LABEL_662;
              }

              v147 = &v145[v129];
              if (v96)
              {
LABEL_200:
                v148 = *(v96 + 8);
                v149 = *(v96 + 4);
                if ((*(v96 + 16) & 4) != 0)
                {
                  if (v149)
                  {
                    if (v149 == 1)
                    {
                      *v147 = v148->i8[0];
                    }

                    else
                    {
                      memcpy(v147, v148, v149);
                    }
                  }

LABEL_246:
                  v162 = *(v96 + 4);
                  if (v146 - v129 < v162)
                  {
                    goto LABEL_662;
                  }

                  goto LABEL_247;
                }

                if (v149 < 0x10)
                {
                  v150 = v147;
                  v152 = &v147[v149];
                  if (v147 == &v147[v149])
                  {
                    goto LABEL_246;
                  }
                }

                else
                {
                  v150 = v147;
                  do
                  {
                    v151 = vld2q_s8(v148->i8);
                    v148 += 2;
                    *v150++ = v151;
                  }

                  while (v150 != &v147[v149 & 0xFFFFFFF0]);
                  v152 = &v147[v149];
                  if (v150 == &v147[v149])
                  {
                    goto LABEL_246;
                  }
                }

                v171 = &v145[v149 + v129];
                v172 = v171 - v150;
                if (v171 - v150 < 4 || (v150 < (v148 + 2 * v172) ? (v173 = v148 >= v171) : (v173 = 1), !v173))
                {
                  v175 = v150;
                  v176 = v148;
                  goto LABEL_243;
                }

                if (v172 >= 0x20)
                {
                  v174 = v172 & 0xFFFFFFFFFFFFFFE0;
                  v414 = v148 + 2;
                  v415 = (v150 + 1);
                  v416 = v172 & 0xFFFFFFFFFFFFFFE0;
                  do
                  {
                    v418 = v414[-2];
                    v417 = v414[-1];
                    v420 = *v414;
                    v419 = v414[1];
                    v414 += 4;
                    v415[-1] = vuzp1q_s8(v418, v417);
                    *v415 = vuzp1q_s8(v420, v419);
                    v415 += 2;
                    v416 -= 32;
                  }

                  while (v416);
                  if (v172 == v174)
                  {
                    goto LABEL_246;
                  }

                  if ((v172 & 0x1C) == 0)
                  {
                    v176 = (v148 + 2 * v174);
                    v175 = (v150 + v174);
                    goto LABEL_243;
                  }
                }

                else
                {
                  v174 = 0;
                }

                v175 = (v150 + (v172 & 0xFFFFFFFFFFFFFFFCLL));
                v176 = (v148 + 2 * (v172 & 0xFFFFFFFFFFFFFFFCLL));
                v421 = (v148 + 2 * v174);
                v422 = (v150 + v174);
                v423 = v174 - (v172 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v424 = *v421++;
                  *v422++ = vuzp1_s8(v424, v424).u32[0];
                  v423 += 4;
                }

                while (v423);
                if (v172 == (v172 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_246;
                }

                do
                {
LABEL_243:
                  v177 = v176->i8[0];
                  v176 = (v176 + 2);
                  *v175 = v177;
                  v175 = (v175 + 1);
                }

                while (v175 != v152);
                goto LABEL_246;
              }
            }

            else
            {
              v129 = 0;
              v147 = v143;
              if (v96)
              {
                goto LABEL_200;
              }
            }

            v162 = 0;
LABEL_247:
            v178 = &v147[v162];
            *v178 = *" packed;\n";
            v178[8] = 10;
LABEL_248:
            v179 = *(v12 + 84);
            if (v179)
            {
              v180 = *(v12 + 72);
              v181 = 8 * v179;
              do
              {
                v182 = *v180;
                if ((WGSL::Type::packing(*(*(*v180 + 104) + 24)) & 0xC) != 0)
                {
                  v512[0] = *(this + 26);
                  v510 = "packed.";
                  v511 = 7;
                  v506 = *(v182 + 48);
                  v507 = " = __pack(unpacked.";
                  v508 = 19;
                  v509 = v506;
                  v504 = ");\n";
                  v505 = 3;
                }

                else
                {
                  v512[0] = *(this + 26);
                  v510 = "packed.";
                  v511 = 7;
                  v506 = *(v182 + 48);
                  v507 = " = unpacked.";
                  v508 = 12;
                  v509 = v506;
                  v504 = ";\n";
                  v505 = 2;
                }

                WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), v512, &v510, &v509, &v507, &v506, &v504);
                ++v180;
                v181 -= 8;
              }

              while (v181);
            }

            LODWORD(v507) = *(this + 26);
            v510 = "return packed;\n";
            v511 = 15;
            WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v507, &v510);
            v183 = *(this + 26) - 1;
            *(this + 26) = v183;
            v184 = *(v12 + 48);
            v185 = *(this + 20);
            if (v503)
            {
              v186 = *(v503 + 1);
              if (v184)
              {
LABEL_256:
                v187 = *(v184 + 4);
                goto LABEL_259;
              }
            }

            else
            {
              v186 = 0;
              if (v184)
              {
                goto LABEL_256;
              }
            }

            v187 = 0;
LABEL_259:
            v188 = (4 * v183);
            v189 = (v188 | 2) + 9;
            if ((v188 | 2) >= 0xFFFFFFF7)
            {
              v189 = -1;
            }

            v56 = __CFADD__(v187, v189);
            v190 = v187 + v189;
            if (v56)
            {
              v190 = -1;
            }

            v56 = __CFADD__(v190, 10);
            v191 = v190 + 10;
            if (v56)
            {
              v191 = -1;
            }

            v56 = __CFADD__(v186, v191);
            v192 = v186 + v191;
            if (v56)
            {
              v192 = -1;
            }

            v56 = __CFADD__(v192, 7);
            v193 = v192 + 7;
            if (v56)
            {
              v193 = -1;
            }

            v56 = __CFADD__(v188, v193);
            v194 = v188 + v193;
            if (v56)
            {
              v194 = -1;
            }

            v56 = __CFADD__(v194, 3);
            v195 = v194 + 3;
            if (v56)
            {
              v195 = -1;
            }

            v56 = __CFADD__(v188, v195);
            v196 = v188 + v195;
            if (v56)
            {
              v196 = -1;
            }

            v56 = __CFADD__(v185, v196);
            v197 = v185 + v196;
            if (v56)
            {
              v198 = 0xFFFFFFFFLL;
            }

            else
            {
              v198 = v197;
            }

            v199 = *(this + 9);
            if ((v199 || (v199 = *(this + 8)) != 0) && (*(v199 + 16) & 4) == 0 || v503 && (*(v503 + 16) & 4) == 0 || v184 && (*(v184 + 16) & 4) == 0)
            {
              v200 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
              if (!v200)
              {
                goto LABEL_377;
              }

              v202 = v200;
              v203 = v201;
              if (v188)
              {
                memset_pattern16(v200, aIneStateTLTAne, 2 * v188);
                v204 = v203 - v188;
                if (v203 < v188)
                {
                  goto LABEL_662;
                }

                v202 += v188;
                *v202 = 655485;
                v202[2] = 10;
                if (v204 <= 2)
                {
                  goto LABEL_662;
                }

                v205 = v204 - 3;
                memset_pattern16(v202 + 3, aIneStateTLTAne, 2 * v188);
                if (v205 < v188)
                {
                  goto LABEL_662;
                }

                v206 = v188;
              }

              else
              {
                *v200 = 655485;
                v200[2] = 10;
                v205 = v201 - 3;
                if (v201 < 3)
                {
                  goto LABEL_662;
                }

                v206 = 0;
              }

              v215 = &v202[v206];
              *(v215 + 3) = *&aIneStateTLTAne[12];
              *(v215 + 7) = 6488169;
              v215[9] = 32;
              v216 = v502;
              if (v205 - v206 <= 6)
              {
                goto LABEL_662;
              }

              v217 = v215 + 10;
              v218 = v205 - v206 - 7;
              if (!v503)
              {
                v221 = 0;
                goto LABEL_345;
              }

              v219 = *(v503 + 1);
              v220 = *(v503 + 1);
              if ((*(v503 + 16) & 4) == 0)
              {
                if (v220)
                {
                  if (v220 == 1)
                  {
                    *v217 = v219->i16[0];
                  }

                  else
                  {
                    memcpy(v217, v219, 2 * v220);
                    v216 = v502;
                  }
                }

LABEL_344:
                v221 = *(v503 + 1);
                if (v218 < v221)
                {
                  goto LABEL_662;
                }

LABEL_345:
                v244 = &v217[v221];
                *v244 = xmmword_2258821F0;
                *(v244 + 4) = 2621547;
                if (v218 - v221 <= 9)
                {
                  goto LABEL_662;
                }

                v245 = v244 + 10;
                v246 = v218 - v221 - 10;
                if (!v184)
                {
                  v249 = 0;
LABEL_371:
                  v265 = &v245[v249];
                  *v265 = 32;
                  *(v265 + 1) = xmmword_225882200;
                  v266 = v246 - v249;
                  if (v266 <= 8)
                  {
                    goto LABEL_662;
                  }

                  v267 = v265 + 9;
                  if (v188)
                  {
                    v268 = v266 - 9;
                    memset_pattern16(v265 + 9, aIneStateTLTAne, 2 * v188);
                    if (v268 < v188)
                    {
                      goto LABEL_662;
                    }
                  }

                  else
                  {
                    v188 = 0;
                  }

                  *&v267[v188] = 655483;
LABEL_377:
                  v269 = *(this + 26) + 1;
                  *(this + 26) = v269;
                  v270 = v503;
                  v271 = *(this + 20);
                  if (v503)
                  {
LABEL_378:
                    v272 = *(v270 + 1);
                    goto LABEL_427;
                  }

LABEL_426:
                  v272 = 0;
LABEL_427:
                  v299 = (4 * v269);
                  v300 = v272 + 11;
                  if (v272 >= 0xFFFFFFF5)
                  {
                    v300 = -1;
                  }

                  v56 = __CFADD__(v299, v300);
                  v301 = v299 + v300;
                  if (v56)
                  {
                    v301 = -1;
                  }

                  v56 = __CFADD__(v271, v301);
                  v302 = v271 + v301;
                  if (v56)
                  {
                    v303 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v303 = v302;
                  }

                  v304 = *(this + 9);
                  if ((v304 || (v304 = *(this + 8)) != 0) && (*(v304 + 16) & 4) == 0 || v270 && (*(v270 + 16) & 4) == 0)
                  {
                    v305 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
                    if (v305)
                    {
                      v307 = v305;
                      v308 = v306;
                      if (v299)
                      {
                        memset_pattern16(v305, aIneStateTLTAne, 2 * v299);
                        if (v308 < v299)
                        {
                          goto LABEL_662;
                        }

                        v309 = &v307[2 * v299];
                        if (v270)
                        {
LABEL_444:
                          v310 = *(v270 + 1);
                          v311 = *(v270 + 1);
                          if ((*(v270 + 16) & 4) == 0)
                          {
                            if (v311)
                            {
                              if (v311 == 1)
                              {
                                *v309 = v310->i16[0];
                              }

                              else
                              {
                                memcpy(v309, v310, 2 * v311);
                              }
                            }

LABEL_483:
                            v322 = *(v270 + 1);
                            if (v308 - v299 < v322)
                            {
                              goto LABEL_662;
                            }

                            goto LABEL_484;
                          }

                          if (v311 < 0x40)
                          {
                            v323 = v309;
                            v330 = &v309[2 * v311];
                            if (v309 == v330)
                            {
                              goto LABEL_483;
                            }
                          }

                          else
                          {
                            v323 = &v309[2 * (v311 & 0xFFFFFFC0)];
                            v324 = v309;
                            do
                            {
                              v519.val[0] = *v310;
                              v325 = v310[1];
                              v525.val[0] = v310[2];
                              v326 = v310[3];
                              v310 += 4;
                              v531.val[0] = v326;
                              v525.val[1] = v502;
                              v536.val[0] = v325;
                              v519.val[1] = v502;
                              v327 = v324;
                              vst2q_s8(v327, v519);
                              v327 += 32;
                              v531.val[1] = v502;
                              v536.val[1] = v502;
                              vst2q_s8(v327, v536);
                              v328 = v324 + 64;
                              vst2q_s8(v328, v525);
                              v329 = v324 + 96;
                              v324 += 128;
                              vst2q_s8(v329, v531);
                            }

                            while (v324 != v323);
                            v330 = &v309[2 * v311];
                            if (v323 == v330)
                            {
                              goto LABEL_483;
                            }
                          }

                          v332 = &v307[2 * v311 + 2 * v299 - v323 - 2];
                          if (v332 < 0xE || (v323 < v310->u64 + (v332 >> 1) + 1 ? (v333 = v310 >= v323 + (v332 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v333 = 1), !v333))
                          {
                            v336 = v310;
                            v337 = v323;
                            goto LABEL_480;
                          }

                          v334 = (v332 >> 1) + 1;
                          if (v332 >= 0x3E)
                          {
                            v335 = v334 & 0xFFFFFFFFFFFFFFE0;
                            v404 = (v323 + 32);
                            v405 = &v310[1];
                            v406 = v334 & 0xFFFFFFFFFFFFFFE0;
                            do
                            {
                              v407 = *v405[-2].i8;
                              v408 = vmovl_u8(*v405);
                              v409 = vmovl_high_u8(*v405->i8);
                              v404[-2] = vmovl_u8(*v407.i8);
                              v404[-1] = vmovl_high_u8(v407);
                              *v404 = v408;
                              v404[1] = v409;
                              v404 += 4;
                              v405 += 4;
                              v406 -= 32;
                            }

                            while (v406);
                            if (v334 == v335)
                            {
                              goto LABEL_483;
                            }

                            if ((v334 & 0x18) == 0)
                            {
                              v337 = (v323 + 2 * v335);
                              v336 = (v310 + v335);
                              goto LABEL_480;
                            }
                          }

                          else
                          {
                            v335 = 0;
                          }

                          v336 = (v310 + (v334 & 0xFFFFFFFFFFFFFFF8));
                          v337 = (v323 + 2 * (v334 & 0xFFFFFFFFFFFFFFF8));
                          v410 = (v323 + 2 * v335);
                          v411 = &v310->i8[v335];
                          v412 = v335 - (v334 & 0xFFFFFFFFFFFFFFF8);
                          do
                          {
                            v413 = *v411++;
                            *v410++ = vmovl_u8(v413);
                            v412 += 8;
                          }

                          while (v412);
                          if (v334 == (v334 & 0xFFFFFFFFFFFFFFF8))
                          {
                            goto LABEL_483;
                          }

                          do
                          {
LABEL_480:
                            v338 = v336->u8[0];
                            v336 = (v336 + 1);
                            *v337 = v338;
                            v337 += 2;
                          }

                          while (v337 != v330);
                          goto LABEL_483;
                        }
                      }

                      else
                      {
                        v299 = 0;
                        v309 = v305;
                        if (v270)
                        {
                          goto LABEL_444;
                        }
                      }

                      v322 = 0;
LABEL_484:
                      v339 = &v309[2 * v322];
                      *v339 = xmmword_2258821D0;
                      *(v339 + 4) = 3866724;
                      *(v339 + 10) = 10;
                    }

LABEL_500:
                    v348 = *(v12 + 84);
                    v11 = v500;
                    if (v348)
                    {
                      v349 = *(v12 + 72);
                      v350 = 8 * v348;
                      do
                      {
                        v352 = *v349;
                        if ((WGSL::Type::packing(*(*(*v349 + 104) + 24)) & 0xC) != 0)
                        {
                          v512[0] = *(this + 26);
                          v510 = "unpacked.";
                          v511 = 9;
                          v506 = *(v352 + 48);
                          v507 = " = __unpack(packed.";
                          v508 = 19;
                          v509 = v506;
                          v504 = ");\n";
                          v505 = 3;
                        }

                        else
                        {
                          v512[0] = *(this + 26);
                          v510 = "unpacked.";
                          v511 = 9;
                          v351 = *(v352 + 48);
                          v508 = 10;
                          v509 = v351;
                          v506 = v351;
                          v507 = " = packed.";
                          v504 = ";\n";
                          v505 = 2;
                        }

                        WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), v512, &v510, &v509, &v507, &v506, &v504);
                        ++v349;
                        v350 -= 8;
                      }

                      while (v350);
                    }

                    LODWORD(v507) = *(this + 26);
                    v510 = "return unpacked;\n";
                    v511 = 17;
                    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v507, &v510);
                    v353 = *(this + 26) - 1;
                    *(this + 26) = v353;
                    LODWORD(v507) = v353;
                    v510 = "}\n\n";
                    v511 = 3;
                    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v507, &v510);
                    if (v503 && atomic_fetch_add_explicit(v503, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v503, v2);
                    }

                    goto LABEL_8;
                  }

                  v312 = MEMORY[0x22AA68210](this + 64, v303);
                  if (!v312)
                  {
                    goto LABEL_500;
                  }

                  v314 = v312;
                  v315 = v313;
                  if (v299)
                  {
                    memset(v312, 32, v299);
                    if (v315 < v299)
                    {
                      goto LABEL_662;
                    }

                    v316 = &v314[v299];
                    if (v270)
                    {
LABEL_452:
                      v317 = *(v270 + 1);
                      v318 = *(v270 + 1);
                      if ((*(v270 + 16) & 4) != 0)
                      {
                        if (v318)
                        {
                          if (v318 == 1)
                          {
                            *v316 = v317->i8[0];
                          }

                          else
                          {
                            memcpy(v316, v317, v318);
                          }
                        }

LABEL_498:
                        v331 = *(v270 + 1);
                        if (v315 - v299 < v331)
                        {
                          goto LABEL_662;
                        }

                        goto LABEL_499;
                      }

                      if (v318 < 0x10)
                      {
                        v319 = v316;
                        v321 = &v316[v318];
                        if (v316 == &v316[v318])
                        {
                          goto LABEL_498;
                        }
                      }

                      else
                      {
                        v319 = v316;
                        do
                        {
                          v320 = vld2q_s8(v317->i8);
                          v317 += 2;
                          *v319++ = v320;
                        }

                        while (v319 != &v316[v318 & 0xFFFFFFF0]);
                        v321 = &v316[v318];
                        if (v319 == &v316[v318])
                        {
                          goto LABEL_498;
                        }
                      }

                      v340 = &v314[v318 + v299];
                      v341 = v340 - v319;
                      if (v340 - v319 < 4 || (v319 < (v317 + 2 * v341) ? (v342 = v317 >= v340) : (v342 = 1), !v342))
                      {
                        v344 = v319;
                        v345 = v317;
                        goto LABEL_495;
                      }

                      if (v341 >= 0x20)
                      {
                        v343 = v341 & 0xFFFFFFFFFFFFFFE0;
                        v425 = v317 + 2;
                        v426 = (v319 + 1);
                        v427 = v341 & 0xFFFFFFFFFFFFFFE0;
                        do
                        {
                          v429 = v425[-2];
                          v428 = v425[-1];
                          v431 = *v425;
                          v430 = v425[1];
                          v425 += 4;
                          v426[-1] = vuzp1q_s8(v429, v428);
                          *v426 = vuzp1q_s8(v431, v430);
                          v426 += 2;
                          v427 -= 32;
                        }

                        while (v427);
                        if (v341 == v343)
                        {
                          goto LABEL_498;
                        }

                        if ((v341 & 0x1C) == 0)
                        {
                          v345 = (v317 + 2 * v343);
                          v344 = (v319 + v343);
                          goto LABEL_495;
                        }
                      }

                      else
                      {
                        v343 = 0;
                      }

                      v344 = (v319 + (v341 & 0xFFFFFFFFFFFFFFFCLL));
                      v345 = (v317 + 2 * (v341 & 0xFFFFFFFFFFFFFFFCLL));
                      v432 = (v317 + 2 * v343);
                      v433 = (v319 + v343);
                      v434 = v343 - (v341 & 0xFFFFFFFFFFFFFFFCLL);
                      do
                      {
                        v435 = *v432++;
                        *v433++ = vuzp1_s8(v435, v435).u32[0];
                        v434 += 4;
                      }

                      while (v434);
                      if (v341 == (v341 & 0xFFFFFFFFFFFFFFFCLL))
                      {
                        goto LABEL_498;
                      }

                      do
                      {
LABEL_495:
                        v346 = v345->i8[0];
                        v345 = (v345 + 2);
                        *v344 = v346;
                        v344 = (v344 + 1);
                      }

                      while (v344 != v321);
                      goto LABEL_498;
                    }
                  }

                  else
                  {
                    v299 = 0;
                    v316 = v312;
                    if (v270)
                    {
                      goto LABEL_452;
                    }
                  }

                  v331 = 0;
LABEL_499:
                  v347 = &v316[v331];
                  *v347 = *" unpacked;\n";
                  *(v347 + 7) = 171664485;
                  goto LABEL_500;
                }

                v247 = *(v184 + 8);
                v248 = *(v184 + 4);
                if ((*(v184 + 16) & 4) == 0)
                {
                  if (v248)
                  {
                    if (v248 == 1)
                    {
                      *v245 = v247->i16[0];
                    }

                    else
                    {
                      memcpy(v245, v247, 2 * v248);
                    }
                  }

LABEL_370:
                  v249 = *(v184 + 4);
                  if (v246 < v249)
                  {
                    goto LABEL_662;
                  }

                  goto LABEL_371;
                }

                if (v248 < 0x40)
                {
                  v250 = (v244 + 10);
                  v257 = &v245[v248];
                  if (v245 == v257)
                  {
                    goto LABEL_370;
                  }
                }

                else
                {
                  v250 = &v245[v248 & 0xFFFFFFC0];
                  v251 = (v244 + 10);
                  do
                  {
                    v518.val[0] = *v247;
                    v252 = v247[1];
                    v524.val[0] = v247[2];
                    v253 = v247[3];
                    v247 += 4;
                    v530.val[0] = v253;
                    v524.val[1] = v216;
                    v535.val[0] = v252;
                    v518.val[1] = v216;
                    v254 = v251;
                    vst2q_s8(v254, v518);
                    v254 += 32;
                    v530.val[1] = v216;
                    v535.val[1] = v216;
                    vst2q_s8(v254, v535);
                    v255 = v251 + 64;
                    vst2q_s8(v255, v524);
                    v256 = v251 + 96;
                    v251 += 128;
                    vst2q_s8(v256, v530);
                  }

                  while (v251 != v250);
                  v257 = &v245[v248];
                  if (v250 == v257)
                  {
                    goto LABEL_370;
                  }
                }

                v258 = &v202[v221 + 19 + v248 + v206] - v250;
                if (v258 < 0xE || (v250 < v247->u64 + (v258 >> 1) + 1 ? (v259 = v247 >= v250 + (v258 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v259 = 1), !v259))
                {
                  v262 = v247;
                  v263 = v250;
                  goto LABEL_367;
                }

                v260 = (v258 >> 1) + 1;
                if (v258 >= 0x3E)
                {
                  v261 = v260 & 0xFFFFFFFFFFFFFFE0;
                  v384 = (v250 + 32);
                  v385 = &v247[1];
                  v386 = v260 & 0xFFFFFFFFFFFFFFE0;
                  do
                  {
                    v387 = *v385[-2].i8;
                    v388 = vmovl_u8(*v385);
                    v389 = vmovl_high_u8(*v385->i8);
                    v384[-2] = vmovl_u8(*v387.i8);
                    v384[-1] = vmovl_high_u8(v387);
                    *v384 = v388;
                    v384[1] = v389;
                    v384 += 4;
                    v385 += 4;
                    v386 -= 32;
                  }

                  while (v386);
                  if (v260 == v261)
                  {
                    goto LABEL_370;
                  }

                  if ((v260 & 0x18) == 0)
                  {
                    v263 = (v250 + 2 * v261);
                    v262 = (v247 + v261);
                    goto LABEL_367;
                  }
                }

                else
                {
                  v261 = 0;
                }

                v262 = (v247 + (v260 & 0xFFFFFFFFFFFFFFF8));
                v263 = (v250 + 2 * (v260 & 0xFFFFFFFFFFFFFFF8));
                v390 = (v250 + 2 * v261);
                v391 = &v247->i8[v261];
                v392 = v261 - (v260 & 0xFFFFFFFFFFFFFFF8);
                do
                {
                  v393 = *v391++;
                  *v390++ = vmovl_u8(v393);
                  v392 += 8;
                }

                while (v392);
                if (v260 == (v260 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_370;
                }

                do
                {
LABEL_367:
                  v264 = v262->u8[0];
                  v262 = (v262 + 1);
                  *v263++ = v264;
                }

                while (v263 != v257);
                goto LABEL_370;
              }

              if (v220 < 0x40)
              {
                v222 = (v215 + 10);
                v229 = &v217[v220];
                if (v217 == v229)
                {
                  goto LABEL_344;
                }
              }

              else
              {
                v222 = &v217[v220 & 0xFFFFFFC0];
                v223 = (v215 + 10);
                do
                {
                  v517.val[0] = *v219;
                  v224 = v219[1];
                  v523.val[0] = v219[2];
                  v225 = v219[3];
                  v219 += 4;
                  v529.val[0] = v225;
                  v523.val[1] = v502;
                  v534.val[0] = v224;
                  v517.val[1] = v502;
                  v226 = v223;
                  vst2q_s8(v226, v517);
                  v226 += 32;
                  v529.val[1] = v502;
                  v534.val[1] = v502;
                  vst2q_s8(v226, v534);
                  v227 = v223 + 64;
                  vst2q_s8(v227, v523);
                  v228 = v223 + 96;
                  v223 += 128;
                  vst2q_s8(v228, v529);
                }

                while (v223 != v222);
                v229 = &v217[v220];
                if (v222 == v229)
                {
                  goto LABEL_344;
                }
              }

              v230 = &v202[v220 + 9 + v206] - v222;
              if (v230 < 0xE || (v222 < v219->u64 + (v230 >> 1) + 1 ? (v231 = v219 >= v222 + (v230 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v231 = 1), !v231))
              {
                v234 = v219;
                v235 = v222;
                goto LABEL_328;
              }

              v232 = (v230 >> 1) + 1;
              if (v230 >= 0x3E)
              {
                v233 = v232 & 0xFFFFFFFFFFFFFFE0;
                v374 = (v222 + 32);
                v375 = &v219[1];
                v376 = v232 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v377 = *v375[-2].i8;
                  v378 = vmovl_u8(*v375);
                  v379 = vmovl_high_u8(*v375->i8);
                  v374[-2] = vmovl_u8(*v377.i8);
                  v374[-1] = vmovl_high_u8(v377);
                  *v374 = v378;
                  v374[1] = v379;
                  v374 += 4;
                  v375 += 4;
                  v376 -= 32;
                }

                while (v376);
                if (v232 == v233)
                {
                  goto LABEL_344;
                }

                if ((v232 & 0x18) == 0)
                {
                  v235 = (v222 + 2 * v233);
                  v234 = (v219 + v233);
                  goto LABEL_328;
                }
              }

              else
              {
                v233 = 0;
              }

              v234 = (v219 + (v232 & 0xFFFFFFFFFFFFFFF8));
              v235 = (v222 + 2 * (v232 & 0xFFFFFFFFFFFFFFF8));
              v380 = (v222 + 2 * v233);
              v381 = &v219->i8[v233];
              v382 = v233 - (v232 & 0xFFFFFFFFFFFFFFF8);
              do
              {
                v383 = *v381++;
                *v380++ = vmovl_u8(v383);
                v382 += 8;
              }

              while (v382);
              if (v232 == (v232 & 0xFFFFFFFFFFFFFFF8))
              {
                goto LABEL_344;
              }

              do
              {
LABEL_328:
                v236 = v234->u8[0];
                v234 = (v234 + 1);
                *v235++ = v236;
              }

              while (v235 != v229);
              goto LABEL_344;
            }

            v207 = MEMORY[0x22AA68210](this + 64, v198);
            if (!v207)
            {
              goto LABEL_377;
            }

            v209 = v207;
            v210 = v208;
            if (v188)
            {
              memset(v207, 32, v188);
              v211 = v210 - v188;
              if (v210 < v188)
              {
                goto LABEL_662;
              }

              v212 = &v209[v188];
              v212[2] = 10;
              *v212 = 2685;
              if (v211 <= 2)
              {
                goto LABEL_662;
              }

              v213 = v211 - 3;
              memset(v212 + 3, 32, v188);
              if (v213 < v188)
              {
                goto LABEL_662;
              }

              v214 = v188;
            }

            else
            {
              v207[2] = 10;
              *v207 = 2685;
              v213 = v208 - 3;
              if (v208 < 3)
              {
                goto LABEL_662;
              }

              v214 = 0;
              v212 = v207;
            }

            *&v212[v214 + 3] = 1952543859;
            *&v212[v214 + 6] = 543385972;
            if (v213 - v214 <= 6)
            {
              goto LABEL_662;
            }

            v237 = v213 - v214 - 7;
            v238 = &v212[v214 + 10];
            if (!v503)
            {
              v243 = 0;
              goto LABEL_394;
            }

            v239 = *(v503 + 1);
            v240 = *(v503 + 1);
            if ((*(v503 + 16) & 4) != 0)
            {
              if (v240)
              {
                if (v240 == 1)
                {
                  *v238 = v239->i8[0];
                }

                else
                {
                  memcpy(v238, v239, v240);
                }
              }
            }

            else
            {
              if (v240 < 0x10)
              {
                v241 = v238;
              }

              else
              {
                v241 = v238;
                do
                {
                  v242 = vld2q_s8(v239->i8);
                  v239 += 2;
                  *v241 = v242;
                  v241 += 16;
                }

                while (v241 != &v238[v240 & 0xFFFFFFF0]);
              }

              if (v241 != &v238[v240])
              {
                v273 = &v209[2 * v214 + v240 - v241 + 10];
                if (v273 < 4 || (v241 < v239[1].u64 + 4 * v214 + 2 * &v209[v240] - 2 * v241 + 4 ? (v274 = v239 >= &v209[2 * v214 + 10 + v240]) : (v274 = 1), !v274))
                {
                  v276 = v241;
                  v277 = v239;
                  goto LABEL_390;
                }

                if (v273 >= 0x20)
                {
                  v275 = v273 & 0xFFFFFFFFFFFFFFE0;
                  v458 = v239 + 2;
                  v459 = (v241 + 16);
                  v460 = v273 & 0xFFFFFFFFFFFFFFE0;
                  do
                  {
                    v462 = v458[-2];
                    v461 = v458[-1];
                    v464 = *v458;
                    v463 = v458[1];
                    v458 += 4;
                    v459[-1] = vuzp1q_s8(v462, v461);
                    *v459 = vuzp1q_s8(v464, v463);
                    v459 += 2;
                    v460 -= 32;
                  }

                  while (v460);
                  if (v273 == v275)
                  {
                    goto LABEL_393;
                  }

                  if ((v273 & 0x1C) == 0)
                  {
                    v277 = (v239 + 2 * v275);
                    v276 = (v241 + v275);
                    do
                    {
LABEL_390:
                      v278 = v277->i8[0];
                      v277 = (v277 + 2);
                      *v276++ = v278;
                    }

                    while (v276 != &v238[v240]);
                    goto LABEL_393;
                  }
                }

                else
                {
                  v275 = 0;
                }

                v276 = (v241 + (v273 & 0xFFFFFFFFFFFFFFFCLL));
                v277 = (v239 + 2 * (v273 & 0xFFFFFFFFFFFFFFFCLL));
                v465 = (v239 + 2 * v275);
                v466 = (v241 + v275);
                v467 = v275 - (v273 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v468 = *v465++;
                  *v466++ = vuzp1_s8(v468, v468).u32[0];
                  v467 += 4;
                }

                while (v467);
                if (v273 != (v273 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_390;
                }
              }
            }

LABEL_393:
            v243 = *(v503 + 1);
            if (v237 < v243)
            {
              goto LABEL_662;
            }

LABEL_394:
            v279 = &v238[v243];
            *v279 = *" __unpack(";
            *(v279 + 4) = 10347;
            if (v237 - v243 <= 9)
            {
              goto LABEL_662;
            }

            v280 = v237 - v243 - 10;
            v281 = v279 + 10;
            if (!v184)
            {
              v286 = 0;
              goto LABEL_420;
            }

            v282 = *(v184 + 8);
            v283 = *(v184 + 4);
            if ((*(v184 + 16) & 4) != 0)
            {
              if (v283)
              {
                if (v283 == 1)
                {
                  *v281 = v282->i8[0];
                }

                else
                {
                  memcpy(v279 + 10, v282, v283);
                }
              }
            }

            else
            {
              if (v283 < 0x10)
              {
                v284 = (v279 + 10);
              }

              else
              {
                v284 = (v279 + 10);
                do
                {
                  v285 = vld2q_s8(v282->i8);
                  v282 += 2;
                  *v284 = v285;
                  v284 += 16;
                }

                while (v284 != &v281[v283 & 0xFFFFFFF0]);
              }

              if (v284 != &v281[v283])
              {
                v287 = &v209[v243];
                v288 = &v209[2 * v214 + v243 + v283 - v284 + 20];
                if (v288 < 4 || ((v289 = &v287[v283], v284 < &v282[2].u64[1] + 4 * v214 + 2 * v289 - 2 * v284) ? (v290 = v282 >= v289 + 2 * v214 + 20) : (v290 = 1), !v290))
                {
                  v292 = v284;
                  v293 = v282;
                  goto LABEL_416;
                }

                if (v288 >= 0x20)
                {
                  v291 = v288 & 0xFFFFFFFFFFFFFFE0;
                  v469 = v282 + 2;
                  v470 = (v284 + 16);
                  v471 = v288 & 0xFFFFFFFFFFFFFFE0;
                  do
                  {
                    v473 = v469[-2];
                    v472 = v469[-1];
                    v475 = *v469;
                    v474 = v469[1];
                    v469 += 4;
                    v470[-1] = vuzp1q_s8(v473, v472);
                    *v470 = vuzp1q_s8(v475, v474);
                    v470 += 2;
                    v471 -= 32;
                  }

                  while (v471);
                  if (v288 == v291)
                  {
                    goto LABEL_419;
                  }

                  if ((v288 & 0x1C) == 0)
                  {
                    v293 = (v282 + 2 * v291);
                    v292 = (v284 + v291);
                    do
                    {
LABEL_416:
                      v294 = v293->i8[0];
                      v293 = (v293 + 2);
                      *v292++ = v294;
                    }

                    while (v292 != &v281[v283]);
                    goto LABEL_419;
                  }
                }

                else
                {
                  v291 = 0;
                }

                v292 = (v284 + (v288 & 0xFFFFFFFFFFFFFFFCLL));
                v293 = (v282 + 2 * (v288 & 0xFFFFFFFFFFFFFFFCLL));
                v476 = (v282 + 2 * v291);
                v477 = (v284 + v291);
                v478 = v291 - (v288 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v479 = *v476++;
                  *v477++ = vuzp1_s8(v479, v479).u32[0];
                  v478 += 4;
                }

                while (v478);
                if (v288 != (v288 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_416;
                }
              }
            }

LABEL_419:
            v286 = *(v184 + 4);
            if (v280 < v286)
            {
              goto LABEL_662;
            }

LABEL_420:
            v295 = v280 - v286;
            v296 = &v281[v286];
            *v296 = *" packed)\n";
            v296[8] = 10;
            if (v295 <= 8)
            {
              goto LABEL_662;
            }

            v297 = v296 + 9;
            if (v188)
            {
              v298 = v295 - 9;
              memset(v296 + 9, 32, v188);
              if (v298 < v188)
              {
                goto LABEL_662;
              }
            }

            else
            {
              v188 = 0;
            }

            *&v297[v188] = 2683;
            v269 = *(this + 26) + 1;
            *(this + 26) = v269;
            v270 = v503;
            v271 = *(this + 20);
            if (v503)
            {
              goto LABEL_378;
            }

            goto LABEL_426;
          }

          v73 = *(v13 + 8);
          v74 = *(v13 + 4);
          if ((*(v13 + 16) & 4) == 0)
          {
            if (v74)
            {
              if (v74 == 1)
              {
                *v71 = v73->i16[0];
              }

              else
              {
                memcpy(v71, v73, 2 * v74);
              }
            }

LABEL_118:
            v75 = *(v13 + 4);
            if (v72 < v75)
            {
              goto LABEL_662;
            }

            goto LABEL_119;
          }

          if (v74 < 0x40)
          {
            v76 = v71;
            v83 = &v71[v74];
            if (v71 == v83)
            {
              goto LABEL_118;
            }
          }

          else
          {
            v76 = &v71[v74 & 0xFFFFFFC0];
            v77 = v71;
            do
            {
              v515.val[0] = *v73;
              v78 = v73[1];
              v521.val[0] = v73[2];
              v79 = v73[3];
              v73 += 4;
              v527.val[0] = v79;
              v521.val[1] = v34;
              v532.val[0] = v78;
              v515.val[1] = v34;
              v80 = v77;
              vst2q_s8(v80, v515);
              v80 += 32;
              v527.val[1] = v34;
              v532.val[1] = v34;
              vst2q_s8(v80, v532);
              v81 = v77 + 64;
              vst2q_s8(v81, v521);
              v82 = v77 + 96;
              v77 += 128;
              vst2q_s8(v82, v527);
            }

            while (v77 != v76);
            v83 = &v71[v74];
            if (v76 == v83)
            {
              goto LABEL_118;
            }
          }

          v84 = &v30[2 * v46 + 2 * v74 + 2 * v32 - v76 + 90];
          if (v84 < 0xE || (v76 < v73->u64 + (v84 >> 1) + 1 ? (v85 = v73 >= v76 + (v84 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v85 = 1), !v85))
          {
            v88 = v73;
            v89 = v76;
            goto LABEL_115;
          }

          v86 = (v84 >> 1) + 1;
          if (v84 >= 0x3E)
          {
            v87 = v86 & 0xFFFFFFFFFFFFFFE0;
            v364 = (v76 + 32);
            v365 = &v73[1];
            v366 = v86 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v367 = *v365[-2].i8;
              v368 = vmovl_u8(*v365);
              v369 = vmovl_high_u8(*v365->i8);
              v364[-2] = vmovl_u8(*v367.i8);
              v364[-1] = vmovl_high_u8(v367);
              *v364 = v368;
              v364[1] = v369;
              v364 += 4;
              v365 += 4;
              v366 -= 32;
            }

            while (v366);
            if (v86 == v87)
            {
              goto LABEL_118;
            }

            if ((v86 & 0x18) == 0)
            {
              v89 = (v76 + 2 * v87);
              v88 = (v73 + v87);
              goto LABEL_115;
            }
          }

          else
          {
            v87 = 0;
          }

          v88 = (v73 + (v86 & 0xFFFFFFFFFFFFFFF8));
          v89 = (v76 + 2 * (v86 & 0xFFFFFFFFFFFFFFF8));
          v370 = (v76 + 2 * v87);
          v371 = &v73->i8[v87];
          v372 = v87 - (v86 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v373 = *v371++;
            *v370++ = vmovl_u8(v373);
            v372 += 8;
          }

          while (v372);
          if (v86 == (v86 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_118;
          }

          do
          {
LABEL_115:
            v90 = v88->u8[0];
            v88 = (v88 + 1);
            *v89++ = v90;
          }

          while (v89 != v83);
          goto LABEL_118;
        }

        if (v45 < 0x40)
        {
          v47 = (v40 + 76);
          v54 = &v42[v45];
          if (v42 == v54)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v47 = &v42[v45 & 0xFFFFFFC0];
          v48 = v40 + 76;
          do
          {
            v514.val[0] = *v44;
            v49 = v44[1];
            v520.val[0] = v44[2];
            v50 = v44[3];
            v44 += 4;
            v33 = v50;
            v520.val[1] = v34;
            v526.val[0] = v49;
            v514.val[1] = v34;
            v51 = v48;
            vst2q_s8(v51, v514);
            v51 += 32;
            v526.val[1] = v34;
            vst2q_s8(v51, v526);
            v52 = v48 + 64;
            vst2q_s8(v52, v520);
            v53 = v48 + 96;
            vst2q_s8(v53, *&v33);
            v48 += 128;
          }

          while (v48 != v47);
          v54 = &v42[v45];
          if (v47 == v54)
          {
            goto LABEL_92;
          }
        }

        v55 = &v30[2 * v45 + 2 * v32 - v47 + 74];
        if (v55 < 0xE || (v47 < v44->u64 + (v55 >> 1) + 1 ? (v56 = v44 >= v47 + (v55 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v56 = 1), !v56))
        {
          v59 = v44;
          v60 = v47;
          goto LABEL_77;
        }

        v57 = (v55 >> 1) + 1;
        if (v55 >= 0x3E)
        {
          v58 = v57 & 0xFFFFFFFFFFFFFFE0;
          v354 = (v47 + 32);
          v355 = &v44[1];
          v356 = v57 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v357 = *v355[-2].i8;
            v358 = vmovl_u8(*v355);
            v359 = vmovl_high_u8(*v355->i8);
            v354[-2] = vmovl_u8(*v357.i8);
            v354[-1] = vmovl_high_u8(v357);
            *v354 = v358;
            v354[1] = v359;
            v354 += 4;
            v355 += 4;
            v356 -= 32;
          }

          while (v356);
          if (v57 == v58)
          {
            goto LABEL_92;
          }

          if ((v57 & 0x18) == 0)
          {
            v60 = (v47 + 2 * v58);
            v59 = (v44 + v58);
            goto LABEL_77;
          }
        }

        else
        {
          v58 = 0;
        }

        v59 = (v44 + (v57 & 0xFFFFFFFFFFFFFFF8));
        v60 = (v47 + 2 * (v57 & 0xFFFFFFFFFFFFFFF8));
        v360 = (v47 + 2 * v58);
        v361 = &v44->i8[v58];
        v362 = v58 - (v57 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v363 = *v361++;
          *v360++ = vmovl_u8(v363);
          v362 += 8;
        }

        while (v362);
        if (v57 == (v57 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_92;
        }

        do
        {
LABEL_77:
          v61 = v59->u8[0];
          v59 = (v59 + 1);
          *v60++ = v61;
        }

        while (v60 != v54);
        goto LABEL_92;
      }

      v35 = MEMORY[0x22AA68210](this + 64, v26);
      if (!v35)
      {
        goto LABEL_125;
      }

      v37 = v35;
      v38 = v36;
      if (v18)
      {
        memset(v35, 32, v18);
        v39 = v18;
        if (v38 < v18)
        {
          goto LABEL_662;
        }
      }

      else
      {
        v39 = 0;
      }

      v62 = &v37[v39];
      qmemcpy(&v37[v39], "static __attribute__((always_inline)) ", 38);
      if (v38 - v39 <= 0x25)
      {
        goto LABEL_662;
      }

      v63 = v38 - v39 - 38;
      v64 = v62 + 38;
      if (!v14)
      {
        v69 = 0;
        goto LABEL_142;
      }

      v65 = *(v14 + 8);
      v66 = *(v14 + 4);
      if ((*(v14 + 16) & 4) != 0)
      {
        if (v66)
        {
          if (v66 == 1)
          {
            *v64 = v65->i8[0];
          }

          else
          {
            memcpy(v62 + 38, v65, v66);
          }
        }
      }

      else
      {
        if (v66 < 0x10)
        {
          v67 = (v62 + 38);
        }

        else
        {
          v67 = (v62 + 38);
          do
          {
            v68 = vld2q_s8(v65->i8);
            v65 += 2;
            *v67++ = v68;
          }

          while (v67 != &v64[v66 & 0xFFFFFFF0]);
        }

        if (v67 != &v64[v66])
        {
          v99 = &v37[v66 + v39];
          v100 = v99 - v67;
          v101 = v99 - v67 + 38;
          if (v101 < 4 || ((v102 = (v99 + 38), v67 < (&v65[4].u64[1] + 2 * v100 + 4)) ? (v103 = v65 >= v102) : (v103 = 1), !v103))
          {
            v105 = v67;
            v106 = v65;
            goto LABEL_138;
          }

          if (v101 >= 0x20)
          {
            v104 = v101 & 0xFFFFFFFFFFFFFFE0;
            v436 = v65 + 2;
            v437 = (v67 + 1);
            v438 = v101 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v440 = v436[-2];
              v439 = v436[-1];
              v442 = *v436;
              v441 = v436[1];
              v436 += 4;
              v437[-1] = vuzp1q_s8(v440, v439);
              *v437 = vuzp1q_s8(v442, v441);
              v437 += 2;
              v438 -= 32;
            }

            while (v438);
            if (v101 == v104)
            {
              goto LABEL_141;
            }

            if ((v101 & 0x1C) == 0)
            {
              v106 = (v65 + 2 * v104);
              v105 = (v67 + v104);
              do
              {
LABEL_138:
                v107 = v106->i8[0];
                v106 = (v106 + 2);
                *v105 = v107;
                v105 = (v105 + 1);
              }

              while (v105 != &v64[v66]);
              goto LABEL_141;
            }
          }

          else
          {
            v104 = 0;
          }

          v105 = (v67 + (v101 & 0xFFFFFFFFFFFFFFFCLL));
          v106 = (v65 + 2 * (v101 & 0xFFFFFFFFFFFFFFFCLL));
          v443 = (v65 + 2 * v104);
          v444 = (v67 + v104);
          v445 = v104 - (v101 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v446 = *v443++;
            *v444++ = vuzp1_s8(v446, v446).u32[0];
            v445 += 4;
          }

          while (v445);
          if (v101 != (v101 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_138;
          }
        }
      }

LABEL_141:
      v69 = *(v14 + 4);
      if (v63 < v69)
      {
        goto LABEL_662;
      }

LABEL_142:
      v108 = &v64[v69];
      *&v64[v69] = 0x286B6361705F5F20;
      if (v63 - v69 <= 7)
      {
        goto LABEL_662;
      }

      v109 = v63 - v69 - 8;
      v110 = v108 + 8;
      if (!v13)
      {
        v115 = 0;
        goto LABEL_168;
      }

      v111 = *(v13 + 8);
      v112 = *(v13 + 4);
      if ((*(v13 + 16) & 4) != 0)
      {
        if (v112)
        {
          if (v112 == 1)
          {
            *v110 = v111->i8[0];
          }

          else
          {
            memcpy(v108 + 8, v111, v112);
          }
        }
      }

      else
      {
        if (v112 < 0x10)
        {
          v113 = (v108 + 8);
        }

        else
        {
          v113 = (v108 + 8);
          do
          {
            v114 = vld2q_s8(v111->i8);
            v111 += 2;
            *v113++ = v114;
          }

          while (v113 != &v110[v112 & 0xFFFFFFF0]);
        }

        if (v113 != &v110[v112])
        {
          v116 = &v37[v69 + v112 + v39];
          v117 = v116 - v113;
          v118 = v116 - v113 + 46;
          if (v118 < 4 || ((v119 = v116 + 46, v113 < (&v111[5].u64[1] + 2 * v117 + 4)) ? (v120 = v111 >= v119) : (v120 = 1), !v120))
          {
            v122 = v113;
            v123 = v111;
            goto LABEL_164;
          }

          if (v118 >= 0x20)
          {
            v121 = v118 & 0xFFFFFFFFFFFFFFE0;
            v447 = v111 + 2;
            v448 = (v113 + 1);
            v449 = v118 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v451 = v447[-2];
              v450 = v447[-1];
              v453 = *v447;
              v452 = v447[1];
              v447 += 4;
              v448[-1] = vuzp1q_s8(v451, v450);
              *v448 = vuzp1q_s8(v453, v452);
              v448 += 2;
              v449 -= 32;
            }

            while (v449);
            if (v118 == v121)
            {
              goto LABEL_167;
            }

            if ((v118 & 0x1C) == 0)
            {
              v123 = (v111 + 2 * v121);
              v122 = (v113 + v121);
              do
              {
LABEL_164:
                v124 = v123->i8[0];
                v123 = (v123 + 2);
                *v122 = v124;
                v122 = (v122 + 1);
              }

              while (v122 != &v110[v112]);
              goto LABEL_167;
            }
          }

          else
          {
            v121 = 0;
          }

          v122 = (v113 + (v118 & 0xFFFFFFFFFFFFFFFCLL));
          v123 = (v111 + 2 * (v118 & 0xFFFFFFFFFFFFFFFCLL));
          v454 = (v111 + 2 * v121);
          v455 = (v113 + v121);
          v456 = v121 - (v118 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v457 = *v454++;
            *v455++ = vuzp1_s8(v457, v457).u32[0];
            v456 += 4;
          }

          while (v456);
          if (v118 != (v118 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_164;
          }
        }
      }

LABEL_167:
      v115 = *(v13 + 4);
      if (v109 < v115)
      {
        goto LABEL_662;
      }

LABEL_168:
      v125 = v109 - v115;
      v126 = &v110[v115];
      *v126 = *" unpacked)\n";
      *(v126 + 7) = 170484837;
      if (v125 <= 0xA)
      {
        goto LABEL_662;
      }

      v127 = v126 + 11;
      if (v18)
      {
        v128 = v125 - 11;
        memset(v126 + 11, 32, v18);
        if (v128 < v18)
        {
          goto LABEL_662;
        }
      }

      else
      {
        v18 = 0;
      }

      *&v127[v18] = 2683;
      v95 = *(this + 26) + 1;
      *(this + 26) = v95;
      v96 = *(v12 + 48);
      v97 = *(this + 20);
      if (v96)
      {
        goto LABEL_126;
      }

      goto LABEL_174;
    }
  }

LABEL_618:
  if ((*(v4 + 352) & 1) == 0)
  {
    goto LABEL_662;
  }

  v480 = *(v4 + 332);
  if (v480 && **(this + 19))
  {
    v481 = *(v4 + 320);
    v482 = v481 + 24 * v480;
    do
    {
      v483 = **(this + 19);
      if (v483)
      {
        v484 = *(v481 + 16);
        if (v484 == -1)
        {
          goto LABEL_665;
        }

        if (!v484)
        {
          __break(0xC471u);
          JUMPOUT(0x22574768CLL);
        }

        v485 = *(v483 - 8);
        v486 = *(v484 + 4);
        if (v486 < 0x100)
        {
          v487 = WTF::StringImpl::hashSlowCase(v484);
        }

        else
        {
          v487 = v486 >> 8;
        }

        for (i = 0; ; v487 = i + v489)
        {
          v489 = v487 & v485;
          v490 = *(v483 + 104 * (v487 & v485));
          if (v490 != -1)
          {
            if (!v490)
            {
              goto LABEL_622;
            }

            if (WTF::equal(v490, *(v481 + 16), v3))
            {
              break;
            }
          }

          ++i;
        }

        (*(*this + 56))(this, *v481);
      }

LABEL_622:
      v481 += 24;
    }

    while (v481 != v482);
  }

  result = *(this + 11);
  if (!*(result + 16) && !*(result + 8))
  {
    v496 = *(this + 8);
    if (v496)
    {
      atomic_fetch_add_explicit(v496, 2u, memory_order_relaxed);
      v497 = *result;
      *result = v496;
      if (v497 && atomic_fetch_add_explicit(v497, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v498 = result;
        WTF::StringImpl::destroy(v497, v2);
        result = v498;
      }

      v499 = *(this + 20);
      if ((v499 & 0x80000000) == 0)
      {
        *(result + 16) = v499;
        return result;
      }

LABEL_665:
      __break(0xC471u);
      JUMPOUT(0x22574766CLL);
    }
  }

  v492 = *(this + 9);
  v493 = v492;
  if ((v492 || (v493 = *(this + 8)) != 0) && (*(v493 + 16) & 4) == 0)
  {
    v494 = *(this + 20);
    if (v494 < 1 || *(this + 8) || *(v492 + 4) >= v494)
    {

      return WTF::StringBuilder::append();
    }

LABEL_662:
    __break(1u);
    goto LABEL_665;
  }

  v495 = *(this + 20);
  if (v495 >= 1 && !*(this + 8) && *(v492 + 4) < v495)
  {
    goto LABEL_662;
  }

  return WTF::StringBuilder::append();
}

void WGSL::Metal::FunctionDefinitionWriter::emitNecessaryHelpers(WGSL::Metal::FunctionDefinitionWriter *this)
{
  v6 = *(this + 20);
  v7 = __CFADD__(v6, 258);
  v8 = v6 + 258;
  if (v7)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(this + 9);
  if ((v10 || (v10 = *(this + 8)) != 0) && (*(v10 + 16) & 4) == 0)
  {
    v11 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
    if (v11)
    {
      *v11 = xmmword_225882210;
      *(v11 + 16) = xmmword_225882220;
      *(v11 + 32) = *&aIneStateTLTAne[16];
      *(v11 + 40) = 10;
      if (v12 <= 0x14)
      {
        goto LABEL_352;
      }

      *(v11 + 42) = xmmword_225882230;
      *(v11 + 58) = xmmword_225882240;
      *(v11 + 74) = xmmword_225882250;
      *(v11 + 90) = *&aIneStateTLTAne[20];
      if (v12 - 21 <= 0x1B)
      {
        goto LABEL_352;
      }

      *(v11 + 98) = xmmword_225882210;
      *(v11 + 114) = xmmword_225882220;
      *(v11 + 130) = *&aIneStateTLTAne[16];
      *(v11 + 138) = 10;
      if (v12 - 49 <= 0x14)
      {
        goto LABEL_352;
      }

      WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v11 + 140), v12 - 70, "struct __PackedTypeImpl;\n\n", 0x1AuLL, "template<typename T>\n", 0x15uLL, "using __UnpackedType = typename __UnpackedTypeImpl<T>::Type;\n\n", 0x3EuLL, "template<typename T>\n", 0x15uLL, "using __PackedType = typename __PackedTypeImpl<T>::Type;\n\n", 0x3AuLL);
    }
  }

  else
  {
    v13 = MEMORY[0x22AA68210](this + 64, v9);
    if (v13)
    {
      qmemcpy(v13, "template<typename T>\n", 21);
      if (v14 <= 0x14)
      {
        goto LABEL_352;
      }

      qmemcpy((v13 + 21), "struct __UnpackedTypeImpl;\n\n", 28);
      if (v14 - 21 <= 0x1B)
      {
        goto LABEL_352;
      }

      qmemcpy((v13 + 49), "template<typename T>\n", 21);
      if (v14 - 49 <= 0x14)
      {
        goto LABEL_352;
      }

      qmemcpy((v13 + 70), "struct __PackedTypeImpl;\n\n", 26);
      if (v14 - 70 <= 0x19)
      {
        goto LABEL_352;
      }

      qmemcpy((v13 + 96), "template<typename T>\n", 21);
      if (v14 - 96 <= 0x14)
      {
        goto LABEL_352;
      }

      qmemcpy((v13 + 117), "using __UnpackedType = typename __UnpackedTypeImpl<T>::Type;\n\n", 62);
      if (v14 - 117 <= 0x3D)
      {
        goto LABEL_352;
      }

      qmemcpy((v13 + 179), "template<typename T>\n", 21);
      if (v14 - 179 <= 0x14)
      {
        goto LABEL_352;
      }

      qmemcpy((v13 + 200), "using __PackedType = typename __PackedTypeImpl<T>::Type;\n\n", 58);
    }
  }

  v15 = *(this + 12);
  if (v15[30] == 1)
  {
    LODWORD(v261) = *(this + 26);
    v268 = "template<typename T>\n";
    v269 = 21;
    v267 = v261;
    v264 = "struct PackedVec3 {\n";
    v265 = 20;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
    v16 = (*(this + 26) + 1);
    *(this + 26) = v16;
    v17 = *(this + 20);
    v1 = (4 * v16);
    v18 = v1 + 150;
    if (v1 >= 0xFFFFFF6A)
    {
      v18 = -1;
    }

    v7 = __CFADD__(v1, v18);
    v19 = v1 + v18;
    if (v7)
    {
      v19 = -1;
    }

    v7 = __CFADD__(v19, 74);
    v20 = v19 + 74;
    if (v7)
    {
      v20 = -1;
    }

    v7 = __CFADD__(v1, v20);
    v21 = v1 + v20;
    if (v7)
    {
      v21 = -1;
    }

    v7 = __CFADD__(v21, 70);
    v22 = v21 + 70;
    if (v7)
    {
      v22 = -1;
    }

    v7 = __CFADD__(v1, v22);
    v23 = v1 + v22;
    if (v7)
    {
      v23 = -1;
    }

    v7 = __CFADD__(v23, 61);
    v24 = v23 + 61;
    if (v7)
    {
      v24 = -1;
    }

    v7 = __CFADD__(v1, v24);
    v25 = v1 + v24;
    if (v7)
    {
      v25 = -1;
    }

    v7 = __CFADD__(v25, 1);
    v26 = v25 + 1;
    if (v7)
    {
      v26 = -1;
    }

    v7 = __CFADD__(v1, v26);
    v27 = v1 + v26;
    if (v7)
    {
      v27 = -1;
    }

    v7 = __CFADD__(v27, 66);
    v28 = v27 + 66;
    if (v7)
    {
      v28 = -1;
    }

    v7 = __CFADD__(v1, v28);
    v29 = v1 + v28;
    if (v7)
    {
      v29 = -1;
    }

    v7 = __CFADD__(v29, 52);
    v30 = v29 + 52;
    if (v7)
    {
      v30 = -1;
    }

    v7 = __CFADD__(v1, v30);
    v31 = v1 + v30;
    if (v7)
    {
      v31 = -1;
    }

    v7 = __CFADD__(v31, 1);
    v32 = v31 + 1;
    if (v7)
    {
      v32 = -1;
    }

    v7 = __CFADD__(v1, v32);
    v33 = v1 + v32;
    if (v7)
    {
      v33 = -1;
    }

    v7 = __CFADD__(v33, 60);
    v34 = v33 + 60;
    if (v7)
    {
      v34 = -1;
    }

    v7 = __CFADD__(v1, v34);
    v35 = v1 + v34;
    if (v7)
    {
      v35 = -1;
    }

    v7 = __CFADD__(v35, 1);
    v36 = v35 + 1;
    if (v7)
    {
      v36 = -1;
    }

    v7 = __CFADD__(v1, v36);
    v37 = v1 + v36;
    if (v7)
    {
      v37 = -1;
    }

    v7 = __CFADD__(v37, 17);
    v38 = v37 + 17;
    if (v7)
    {
      v38 = -1;
    }

    v7 = __CFADD__(v1, v38);
    v39 = v1 + v38;
    if (v7)
    {
      v39 = -1;
    }

    v7 = __CFADD__(v39, 1);
    v40 = v39 + 1;
    if (v7)
    {
      v40 = -1;
    }

    v7 = __CFADD__(v1, v40);
    v41 = v1 + v40;
    if (v7)
    {
      v41 = -1;
    }

    v7 = __CFADD__(v41, 30);
    v42 = v41 + 30;
    if (v7)
    {
      v42 = -1;
    }

    v7 = __CFADD__(v1, v42);
    v43 = v1 + v42;
    if (v7)
    {
      v43 = -1;
    }

    v7 = __CFADD__(v43, 21);
    v44 = v43 + 21;
    if (v7)
    {
      v44 = -1;
    }

    v7 = __CFADD__(v1, v44);
    v45 = v1 + v44;
    if (v7)
    {
      v45 = -1;
    }

    v7 = __CFADD__(v45, 21);
    v46 = v45 + 21;
    if (v7)
    {
      v46 = -1;
    }

    v7 = __CFADD__(v1, v46);
    v47 = v1 + v46;
    if (v7)
    {
      v47 = -1;
    }

    v7 = __CFADD__(v47, 21);
    v48 = v47 + 21;
    if (v7)
    {
      v48 = -1;
    }

    v7 = __CFADD__(v1, v48);
    v49 = v1 + v48;
    if (v7)
    {
      v49 = -1;
    }

    v7 = __CFADD__(v17, v49);
    v50 = v17 + v49;
    if (v7)
    {
      v51 = 0xFFFFFFFFLL;
    }

    else
    {
      v51 = v50;
    }

    v52 = *(this + 9);
    if ((v52 || (v52 = *(this + 8)) != 0) && (*(v52 + 16) & 4) == 0)
    {
      v53 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
      if (v53)
      {
        v2 = v53;
        v55 = v54;
        if (v1)
        {
          memset_pattern16(v53, aIneStateTLTAne, 2 * (4 * v16));
          v56 = (4 * v16);
          if (v55 < v1)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v56 = 0;
        }

        v87 = v2 + 2 * v56;
        v88 = xmmword_225882260;
        *v87 = xmmword_225882260;
        *(v87 + 16) = xmmword_225882270;
        *(v87 + 32) = *&aIneStateTLTAne[24];
        *(v87 + 40) = 10;
        v89 = v55 - v56;
        if (v89 <= 0x14)
        {
          goto LABEL_352;
        }

        v90 = v87 + 42;
        v2 = v89 - 21;
        if (v1)
        {
          memset_pattern16((v87 + 42), aIneStateTLTAne, 2 * (4 * v16));
          v88 = xmmword_225882260;
          v91 = (4 * v16);
          if (v2 < v1)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v91 = 0;
        }

        v92 = v90 + 2 * v91;
        *v92 = v88;
        *(v92 + 16) = xmmword_225882280;
        *(v92 + 32) = *&aIneStateTLTAne[24];
        *(v92 + 40) = 10;
        v93 = v2 - v91;
        if (v93 <= 0x14)
        {
          goto LABEL_352;
        }

        v94 = v92 + 42;
        v2 = v93 - 21;
        if (v1)
        {
          memset_pattern16((v92 + 42), aIneStateTLTAne, 2 * (4 * v16));
          v88 = xmmword_225882260;
          v95 = (4 * v16);
          if (v2 < v1)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v95 = 0;
        }

        v96 = v94 + 2 * v95;
        *v96 = v88;
        *(v96 + 16) = xmmword_225882290;
        *(v96 + 32) = *&aIneStateTLTAne[24];
        *(v96 + 40) = 10;
        v97 = v2 - v95;
        if (v97 <= 0x14)
        {
          goto LABEL_352;
        }

        v98 = v96 + 42;
        v2 = v97 - 21;
        if (v1)
        {
          memset_pattern16((v96 + 42), aIneStateTLTAne, 2 * (4 * v16));
          v99 = (4 * v16);
          if (v2 < v1)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v99 = 0;
        }

        v100 = v98 + 2 * v99;
        *v100 = 117;
        *(v100 + 2) = xmmword_2258822A0;
        *(v100 + 18) = xmmword_2258822B0;
        *(v100 + 34) = xmmword_2258822C0;
        *(v100 + 50) = *&aIneStateTLTAne[28];
        *(v100 + 58) = 10;
        v101 = v2 - v99;
        if (v101 <= 0x1D)
        {
          goto LABEL_352;
        }

        v102 = (v100 + 60);
        v3 = v101 - 30;
        if (v1)
        {
          v2 = 2 * (4 * v16);
          memset_pattern16((v100 + 60), aIneStateTLTAne, v2);
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v103 = &v102[v1];
          *v103 = 10;
          if (v3 == v1)
          {
            goto LABEL_352;
          }

          v104 = v103 + 1;
          v3 += ~v1;
          memset_pattern16(v103 + 1, aIneStateTLTAne, 2 * (4 * v16));
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v105 = (4 * v16);
        }

        else
        {
          *v102 = 10;
          if (v101 == 30)
          {
            goto LABEL_352;
          }

          v105 = 0;
          v104 = (v100 + 62);
          v3 = v101 - 31;
        }

        v106 = &v104[v105];
        *v106 = xmmword_2258822D0;
        *(v106 + 1) = xmmword_2258822E0;
        v106[16] = 10;
        v107 = v3 - v105;
        if (v107 <= 0x10)
        {
          goto LABEL_352;
        }

        v108 = v106 + 17;
        v3 = v107 - 17;
        if (v1)
        {
          v2 = 2 * (4 * v16);
          memset_pattern16(v106 + 17, aIneStateTLTAne, v2);
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v109 = &v108[v1];
          *v109 = 10;
          if (v3 == v1)
          {
            goto LABEL_352;
          }

          v110 = v109 + 1;
          v3 += ~v1;
          memset_pattern16(v109 + 1, aIneStateTLTAne, 2 * (4 * v16));
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v111 = (4 * v16);
        }

        else
        {
          *v108 = 10;
          if (v107 == 17)
          {
            goto LABEL_352;
          }

          v111 = 0;
          v110 = v106 + 18;
          v3 = v107 - 18;
        }

        v112 = &v110[v111];
        *v112 = xmmword_2258822D0;
        *(v112 + 1) = xmmword_2258822F0;
        *(v112 + 2) = xmmword_225882300;
        *(v112 + 3) = xmmword_225882310;
        *(v112 + 4) = xmmword_225882320;
        *(v112 + 5) = xmmword_225882330;
        *(v112 + 6) = xmmword_225882340;
        v113 = (v3 - v111);
        *(v112 + 14) = *&aIneStateTLTAne[32];
        if (v3 - v111 <= 0x3B)
        {
          goto LABEL_352;
        }

        v114 = v112 + 60;
        v3 = (v113 - 60);
        if (v1)
        {
          v2 = 2 * (4 * v16);
          memset_pattern16(v112 + 60, aIneStateTLTAne, v2);
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v115 = &v114[v1];
          *v115 = 10;
          if (v3 == v1)
          {
            goto LABEL_352;
          }

          v116 = v115 + 1;
          v3 += ~v1;
          memset_pattern16(v115 + 1, aIneStateTLTAne, 2 * (4 * v16));
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v117 = (4 * v16);
        }

        else
        {
          *v114 = 10;
          if (v113 == 60)
          {
            goto LABEL_352;
          }

          v117 = 0;
          v116 = v112 + 61;
          v3 = (v113 - 61);
        }

        v118 = &v116[v117];
        *v118 = xmmword_225882350;
        *(v118 + 1) = xmmword_225882360;
        *(v118 + 2) = xmmword_225882370;
        *(v118 + 3) = xmmword_225882380;
        *(v118 + 4) = xmmword_225882390;
        *(v118 + 5) = xmmword_2258823A0;
        v119 = v3 - v117;
        *(v118 + 12) = *&aIneStateTLTAne[36];
        if (v119 <= 0x33)
        {
          goto LABEL_352;
        }

        v120 = v118 + 52;
        v2 = v119 - 52;
        if (v1)
        {
          memset_pattern16(v118 + 52, aIneStateTLTAne, 2 * (4 * v16));
          v121 = (4 * v16);
          if (v2 < v1)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v121 = 0;
        }

        v270.val[0] = *"operator packed_vec<T, 3>() { return packed_vec<T, 3>(x, y, z); }\n";
        v271.val[0] = *"turn packed_vec<T, 3>(x, y, z); }\n";
        v122 = &v120[v121];
        v272.val[1] = 0uLL;
        v272.val[0] = *"T, 3>(x, y, z); }\n";
        v271.val[1] = 0u;
        v273.val[0] = *"vec<T, 3>() { return packed_vec<T, 3>(x, y, z); }\n";
        v270.val[1] = 0u;
        v123 = v122;
        vst2q_s8(v123, v270);
        v123 += 32;
        v273.val[1] = 0u;
        vst2q_s8(v123, v273);
        v124 = (v122 + 32);
        vst2q_s8(v124, v271);
        v125 = (v122 + 48);
        vst2q_s8(v125, v272);
        v126 = v2 - v121;
        *(v122 + 32) = 655485;
        if (v126 <= 0x41)
        {
          goto LABEL_352;
        }

        v127 = v122 + 66;
        v2 = v126 - 66;
        if (v1)
        {
          memset_pattern16(v122 + 66, aIneStateTLTAne, 2 * (4 * v16));
          if (v2 < v1)
          {
            goto LABEL_352;
          }

          v128 = &v127[v1];
          *v128 = 10;
          if (v2 == v1)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v1 = 0;
          v128 = (v122 + 66);
          *v127 = 10;
          if (!v2)
          {
            goto LABEL_352;
          }
        }

        WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v128 + 2, v2 + ~v1, v16, "T operator[](int i) const { return i ? i == 2 ? z : y : x; }\n", 0x3DuLL, v16, "device T& operator[](int i) device { return i ? i == 2 ? z : y : x; }\n", 0x46uLL, v16, "constant T& operator[](int i) constant { return i ? i == 2 ? z : y : x; }\n", 0x4AuLL, v16, "thread T& operator[](int i) thread { return i ? i == 2 ? z : y : x; }\n", 0x46uLL, v16, "threadgroup T& operator[](int i) threadgroup { return i ? i == 2 ? z : y : x; }\n", 0x50uLL);
      }
    }

    else
    {
      v57 = MEMORY[0x22AA68210](this + 64, v51);
      if (v57)
      {
        v59 = v57;
        v2 = v58;
        if (v1)
        {
          memset(v57, 32, (4 * v16));
          v60 = v2 - v1;
          if (v2 < v1)
          {
            goto LABEL_352;
          }

          v61 = v59 + v1;
          qmemcpy((v59 + v1), "union { T x; T r; };\n", 21);
          if (v60 <= 0x14)
          {
            goto LABEL_352;
          }

          v2 = v60 - 21;
          v62 = v61 + 21;
          memset((v61 + 21), 32, (4 * v16));
          v63 = v2 - v1;
          if (v2 < v1)
          {
            goto LABEL_352;
          }

          v64 = v62 + v1;
          qmemcpy((v62 + v1), "union { T y; T g; };\n", 21);
          if (v63 <= 0x14)
          {
            goto LABEL_352;
          }

          v2 = v63 - 21;
          v65 = v64 + 21;
          memset((v64 + 21), 32, (4 * v16));
          v66 = v2 - v1;
          if (v2 < v1)
          {
            goto LABEL_352;
          }

          v67 = v65 + v1;
          qmemcpy((v65 + v1), "union { T z; T b; };\n", 21);
          if (v66 <= 0x14)
          {
            goto LABEL_352;
          }

          v2 = v66 - 21;
          v68 = v67 + 21;
          memset((v67 + 21), 32, (4 * v16));
          v69 = v2 - v1;
          if (v2 < v1)
          {
            goto LABEL_352;
          }

          v70 = v68 + v1;
          qmemcpy((v68 + v1), "uint8_t __padding[sizeof(T)];\n", 30);
          v3 = v69 - 30;
          if (v69 < 0x1E)
          {
            goto LABEL_352;
          }

          v71 = v70 + 30;
          memset((v70 + 30), 32, (4 * v16));
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v72 = v71 + v1;
          *(v71 + v1) = 10;
          if (v3 == v1)
          {
            goto LABEL_352;
          }

          v2 = ~v1;
          v3 += ~v1;
          v73 = v72 + 1;
          memset((v72 + 1), 32, (4 * v16));
          v74 = v3 - v1;
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v75 = v73 + v1;
          *v75 = *"PackedVec3() { }\n";
          *(v75 + 16) = 10;
          if (v74 <= 0x10)
          {
            goto LABEL_352;
          }

          v3 = v74 - 17;
          v76 = v75 + 17;
          memset((v75 + 17), 32, (4 * v16));
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v77 = v76 + v1;
          *(v76 + v1) = 10;
          if (v3 == v1)
          {
            goto LABEL_352;
          }

          v3 += v2;
          v78 = v77 + 1;
          memset((v77 + 1), 32, (4 * v16));
          v79 = v3 - v1;
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v80 = v78 + v1;
          qmemcpy((v78 + v1), "PackedVec3(packed_vec<T, 3> v) : x(v.x), y(v.y), z(v.z) { }\n", 60);
          v3 = v79 - 60;
          if (v79 < 0x3C)
          {
            goto LABEL_352;
          }

          v81 = v80 + 60;
          memset((v80 + 60), 32, (4 * v16));
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v82 = v81 + v1;
          *(v81 + v1) = 10;
          if (v3 == v1)
          {
            goto LABEL_352;
          }

          v2 += v3;
          v83 = v82 + 1;
          memset((v82 + 1), 32, (4 * v16));
          v84 = v2 - v1;
          if (v2 < v1)
          {
            goto LABEL_352;
          }

          v85 = v83 + v1;
          qmemcpy((v83 + v1), "operator vec<T, 3>() { return vec<T, 3>(x, y, z); }\n", 52);
          if (v84 <= 0x33)
          {
            goto LABEL_352;
          }

          v2 = v84 - 52;
          v86 = v85 + 52;
          memset((v85 + 52), 32, (4 * v16));
          if (v2 < v1)
          {
            goto LABEL_352;
          }
        }

        else
        {
          qmemcpy(v57, "union { T x; T r; };\n", 21);
          if (v58 < 0x15)
          {
            goto LABEL_352;
          }

          qmemcpy((v57 + 21), "union { T y; T g; };\n", 21);
          if (v58 - 21 < 0x15)
          {
            goto LABEL_352;
          }

          qmemcpy((v57 + 42), "union { T z; T b; };\n", 21);
          if (v58 - 42 < 0x15)
          {
            goto LABEL_352;
          }

          qmemcpy((v57 + 63), "uint8_t __padding[sizeof(T)];\n", 30);
          if (v58 - 63 < 0x1E)
          {
            goto LABEL_352;
          }

          *(v57 + 93) = 10;
          if (v58 == 93)
          {
            goto LABEL_352;
          }

          *(v57 + 110) = 10;
          *(v57 + 94) = *"PackedVec3() { }\n";
          if (v58 - 94 < 0x11)
          {
            goto LABEL_352;
          }

          *(v57 + 111) = 10;
          if (v58 == 111)
          {
            goto LABEL_352;
          }

          qmemcpy((v57 + 112), "PackedVec3(packed_vec<T, 3> v) : x(v.x), y(v.y), z(v.z) { }\n", 60);
          if (v58 - 112 < 0x3C)
          {
            goto LABEL_352;
          }

          *(v57 + 172) = 10;
          if (v58 == 172)
          {
            goto LABEL_352;
          }

          qmemcpy((v57 + 173), "operator vec<T, 3>() { return vec<T, 3>(x, y, z); }\n", 52);
          if (v58 - 173 < 0x34)
          {
            goto LABEL_352;
          }

          v1 = 0;
          v2 = v58 - 225;
          v86 = v57 + 225;
        }

        qmemcpy((v86 + v1), "operator packed_vec<T, 3>() { return packed_vec<T, 3>(x, y, z); }\n", 66);
        if (v2 - v1 <= 0x41)
        {
          goto LABEL_352;
        }

        WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v86 + v1 + 66), v2 - v1 - 66, v16, "\n", 1uLL, v16, "T operator[](int i) const { return i ? i == 2 ? z : y : x; }\n", 0x3DuLL, v16, "device T& operator[](int i) device { return i ? i == 2 ? z : y : x; }\n", 0x46uLL, v16, "constant T& operator[](int i) constant { return i ? i == 2 ? z : y : x; }\n", 0x4AuLL, v16, "thread T& operator[](int i) thread { return i ? i == 2 ? z : y : x; }\n", 70, v16, "threadgroup T& operator[](int i) threadgroup { return i ? i == 2 ? z : y : x; }\n", 80);
      }
    }

    v129 = *(this + 26) - 1;
    *(this + 26) = v129;
    LODWORD(v264) = v129;
    v268 = "};\n\n";
    v269 = 4;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v15 = *(this + 12);
  }

  if (v15[8] == 1)
  {
    v15[8] = 0;
    WTF::StringBuilder::append();
    v130 = (*(this + 26) + 1);
    *(this + 26) = v130;
    v131 = *(this + 20);
    v2 = (4 * v130);
    v132 = v2 + 148;
    if (v2 >= 0xFFFFFF6C)
    {
      v132 = -1;
    }

    v7 = __CFADD__(v2, v132);
    v133 = v2 + v132;
    if (v7)
    {
      v133 = -1;
    }

    v7 = __CFADD__(v133, 37);
    v134 = v133 + 37;
    if (v7)
    {
      v134 = -1;
    }

    v7 = __CFADD__(v2, v134);
    v135 = v2 + v134;
    if (v7)
    {
      v135 = -1;
    }

    v7 = __CFADD__(v135, 24);
    v136 = v135 + 24;
    if (v7)
    {
      v136 = -1;
    }

    v7 = __CFADD__(v2, v136);
    v137 = v2 + v136;
    if (v7)
    {
      v137 = -1;
    }

    v7 = __CFADD__(v137, 30);
    v138 = v137 + 30;
    if (v7)
    {
      v138 = -1;
    }

    v7 = __CFADD__(v2, v138);
    v139 = v2 + v138;
    if (v7)
    {
      v139 = -1;
    }

    v7 = __CFADD__(v139, 29);
    v140 = v139 + 29;
    if (v7)
    {
      v140 = -1;
    }

    v7 = __CFADD__(v2, v140);
    v141 = v2 + v140;
    if (v7)
    {
      v141 = -1;
    }

    v7 = __CFADD__(v131, v141);
    v142 = v131 + v141;
    if (v7)
    {
      v143 = 0xFFFFFFFFLL;
    }

    else
    {
      v143 = v142;
    }

    v144 = *(this + 9);
    if ((v144 || (v144 = *(this + 8)) != 0) && (*(v144 + 16) & 4) == 0)
    {
      v145 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
      if (v145)
      {
        v147 = v145;
        v1 = v146;
        if (v2)
        {
          memset_pattern16(v145, aIneStateTLTAne, 2 * (4 * v130));
          if (v1 < v2)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v2 = 0;
        }

        v150 = v147 + 2 * v2;
        *v150 = xmmword_2258823B0;
        *(v150 + 16) = xmmword_2258823C0;
        *(v150 + 32) = xmmword_2258823D0;
        *(v150 + 48) = *&aIneStateTLTAne[40];
        *(v150 + 56) = 10;
        if (v1 - v2 <= 0x1C)
        {
          goto LABEL_352;
        }

        WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v150 + 58), v1 - v2 - 29, v130, "texture2d<float> SecondPlane;\n", 0x1EuLL, v130, "float3x2 UVRemapMatrix;\n", 0x18uLL, v130, "float4x3 ColorSpaceConversionMatrix;\n", 0x25uLL, v130, "uint get_width(uint lod = 0) const { return FirstPlane.get_width(lod); }\n", 0x49uLL, v130, "uint get_height(uint lod = 0) const { return FirstPlane.get_height(lod); }\n", 0x4BuLL);
      }
    }

    else
    {
      v148 = MEMORY[0x22AA68210](this + 64, v143);
      if (v148)
      {
        WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v148, v149, v130, "texture2d<float> FirstPlane;\n", 0x1DuLL, v130, "texture2d<float> SecondPlane;\n", 0x1EuLL, v130, "float3x2 UVRemapMatrix;\n", 0x18uLL, v130, "float4x3 ColorSpaceConversionMatrix;\n", 0x25uLL, v130, "uint get_width(uint lod = 0) const { return FirstPlane.get_width(lod); }\n", 73, v130, "uint get_height(uint lod = 0) const { return FirstPlane.get_height(lod); }\n", 75);
      }
    }

    --*(this + 26);
    WTF::StringBuilder::append();
    v15 = *(this + 12);
  }

  v3 = "{\n";
  v2 = "}\n\n";
  if (v15[9] == 1)
  {
    v15[9] = 0;
    WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), *(this + 26), "template<typename T, size_t N>\n", 32, *(this + 26), "struct __PackedTypeImpl<array<T, N>> {\n", 40, *(this + 26), "using Type = array<__PackedType<T>, N>;\n", 41, *(this + 26), "};\n\n", 5);
    if (*(*(this + 12) + 30) == 1)
    {
      WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), *(this + 26), "template<typename T, size_t N>\n", 32, *(this + 26), "struct __PackedTypeImpl<array<vec<T, 3>, N>> {", 47, *(this + 26), "using Type = array<PackedVec3<T>, N>;", 38, *(this + 26), "};\n\n", 5);
      v266 = *(this + 26);
      v267 = v266;
      v268 = "template<typename T, size_t N>\n";
      v269 = 31;
      v264 = "static __attribute__((always_inline)) array<PackedVec3<T>, N> __pack(array<vec<T, 3>, N> unpacked)\n";
      v265 = 99;
      v263 = v266;
      v261 = "{\n";
      v262 = 2;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
      v151 = *(this + 26) + 1;
      *(this + 26) = v151;
      LODWORD(v261) = v151;
      v268 = "array<PackedVec3<T>, N> packed;\n";
      v269 = 32;
      v267 = v151;
      v264 = "for (size_t i = 0; i < N; ++i)\n";
      v265 = 31;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
      v152 = *(this + 26) + 1;
      *(this + 26) = v152;
      LODWORD(v264) = v152;
      v268 = "packed[i] = PackedVec3<T>(unpacked[i]);\n";
      v269 = 40;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
      v153 = *(this + 26) - 1;
      *(this + 26) = v153;
      LODWORD(v264) = v153;
      v268 = "return packed;\n";
      v269 = 15;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
      v154 = *(this + 26) - 1;
      *(this + 26) = v154;
      LODWORD(v264) = v154;
      v268 = "}\n\n";
      v269 = 3;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    }

    v266 = *(this + 26);
    v267 = v266;
    v268 = "template<typename T, size_t N>\n";
    v269 = 31;
    v264 = "static __attribute__((always_inline)) array<__PackedType<T>, N> __pack(array<T, N> unpacked)\n";
    v265 = 93;
    v263 = v266;
    v261 = "{\n";
    v262 = 2;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
    v155 = *(this + 26) + 1;
    *(this + 26) = v155;
    LODWORD(v261) = v155;
    v268 = "array<__PackedType<T>, N> packed;\n";
    v269 = 34;
    v267 = v155;
    v264 = "for (size_t i = 0; i < N; ++i)\n";
    v265 = 31;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
    v156 = *(this + 26) + 1;
    *(this + 26) = v156;
    LODWORD(v264) = v156;
    v268 = "packed[i] = __pack(unpacked[i]);\n";
    v269 = 33;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v157 = *(this + 26) - 1;
    *(this + 26) = v157;
    LODWORD(v264) = v157;
    v268 = "return packed;\n";
    v269 = 15;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v158 = *(this + 26) - 1;
    *(this + 26) = v158;
    LODWORD(v264) = v158;
    v268 = "}\n\n";
    v269 = 3;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v15 = *(this + 12);
    if (v15[10] != 1)
    {
LABEL_265:
      if (v15[11] != 1)
      {
        goto LABEL_266;
      }

      goto LABEL_274;
    }
  }

  else if (v15[10] != 1)
  {
    goto LABEL_265;
  }

  v15[10] = 0;
  WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), *(this + 26), "template<typename T, size_t N>\n", 32, *(this + 26), "struct __UnpackedTypeImpl<array<T, N>> {\n", 42, *(this + 26), "using Type = array<__UnpackedType<T>, N>;\n", 43, *(this + 26), "};\n\n", 5);
  if (*(*(this + 12) + 30) == 1)
  {
    WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), *(this + 26), "template<typename T, size_t N>\n", 32, *(this + 26), "struct __UnpackedTypeImpl<array<PackedVec3<T>, N>> {", 53, *(this + 26), "using Type = array<vec<T, 3>, N>;", 34, *(this + 26), "};\n\n", 5);
    v266 = *(this + 26);
    v267 = v266;
    v268 = "template<typename T, size_t N>\n";
    v269 = 31;
    v264 = "static __attribute__((always_inline)) array<vec<T, 3>, N> __unpack(array<PackedVec3<T>, N> packed)\n";
    v265 = 99;
    v263 = v266;
    v261 = "{\n";
    v262 = 2;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
    v159 = *(this + 26) + 1;
    *(this + 26) = v159;
    LODWORD(v261) = v159;
    v268 = "array<vec<T, 3>, N> unpacked;\n";
    v269 = 30;
    v267 = v159;
    v264 = "for (size_t i = 0; i < N; ++i)\n";
    v265 = 31;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
    v160 = *(this + 26) + 1;
    *(this + 26) = v160;
    LODWORD(v264) = v160;
    v268 = "unpacked[i] = vec<T, 3>(packed[i]);\n";
    v269 = 36;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v161 = *(this + 26) - 1;
    *(this + 26) = v161;
    LODWORD(v264) = v161;
    v268 = "return unpacked;\n";
    v269 = 17;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v162 = *(this + 26) - 1;
    *(this + 26) = v162;
    LODWORD(v264) = v162;
    v268 = "}\n\n";
    v269 = 3;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  }

  v266 = *(this + 26);
  v267 = v266;
  v268 = "template<typename T, size_t N>\n";
  v269 = 31;
  v264 = "static __attribute__((always_inline)) array<__UnpackedType<T>, N> __unpack(array<T, N> packed)\n";
  v265 = 95;
  v263 = v266;
  v261 = "{\n";
  v262 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v163 = *(this + 26) + 1;
  *(this + 26) = v163;
  LODWORD(v261) = v163;
  v268 = "array<__UnpackedType<T>, N> unpacked;\n";
  v269 = 38;
  v267 = v163;
  v264 = "for (size_t i = 0; i < N; ++i)\n";
  v265 = 31;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v164 = *(this + 26) + 1;
  *(this + 26) = v164;
  LODWORD(v264) = v164;
  v268 = "unpacked[i] = __unpack(packed[i]);\n";
  v269 = 35;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v165 = *(this + 26) - 1;
  *(this + 26) = v165;
  LODWORD(v264) = v165;
  v268 = "return unpacked;\n";
  v269 = 17;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v166 = *(this + 26) - 1;
  *(this + 26) = v166;
  LODWORD(v264) = v166;
  v268 = "}\n\n";
  v269 = 3;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[11] != 1)
  {
LABEL_266:
    if (v15[12] != 1)
    {
      goto LABEL_277;
    }

    goto LABEL_275;
  }

LABEL_274:
  v15[11] = 0;
  LODWORD(v261) = *(this + 26);
  v268 = "template<typename T>\n";
  v269 = 21;
  v267 = v261;
  v264 = "static __attribute__((always_inline)) packed_vec<T, 3> __pack(vec<T, 3> unpacked) { return unpacked; }\n\n";
  v265 = 104;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v15 = *(this + 12);
  if (v15[12] != 1)
  {
    goto LABEL_277;
  }

LABEL_275:
  v15[12] = 0;
  LODWORD(v261) = *(this + 26);
  v268 = "template<typename T>\n";
  v269 = 21;
  v267 = v261;
  v264 = "static __attribute__((always_inline)) vec<T, 3> __unpack(packed_vec<T, 3> packed) { return packed; }\n\n";
  v265 = 102;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v15 = *(this + 12);
  if (v15[30] == 1)
  {
    LODWORD(v261) = *(this + 26);
    v268 = "template<typename T>\n";
    v269 = 21;
    v267 = v261;
    v264 = "static vec<T, 3> __unpack(PackedVec3<T> packed) { return packed; }\n\n";
    v265 = 68;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
    v15 = *(this + 12);
  }

LABEL_277:
  v4 = "return result;\n";
  if (v15[13] != 1)
  {
    goto LABEL_356;
  }

  v167 = *(this + 172);
  v168 = *(this + 26);
  if (*(this + 172))
  {
    v169 = 19;
  }

  else
  {
    v169 = 0;
  }

  v170 = *(this + 20);
  v171 = (4 * v168);
  v172 = (4 * v168) | 2;
  v173 = v172 + 60;
  if (v172 >= 0xFFFFFFC4)
  {
    v173 = -1;
  }

  v7 = __CFADD__(v169, v173);
  v174 = v169 + v173;
  if (v7)
  {
    v174 = -1;
  }

  v7 = __CFADD__(v171, v174);
  v175 = v171 + v174;
  if (v7)
  {
    v175 = -1;
  }

  v7 = __CFADD__(v175, 21);
  v176 = v175 + 21;
  if (v7)
  {
    v176 = -1;
  }

  v7 = __CFADD__(v171, v176);
  v177 = v171 + v176;
  if (v7)
  {
    v177 = -1;
  }

  v7 = __CFADD__(v170, v177);
  v178 = v170 + v177;
  if (v7)
  {
    v179 = 0xFFFFFFFFLL;
  }

  else
  {
    v179 = v178;
  }

  v180 = *(this + 9);
  if (!v180 && (v180 = *(this + 8)) == 0 || (*(v180 + 16) & 4) != 0)
  {
    v185 = MEMORY[0x22AA68210](this + 64, v179);
    if (!v185)
    {
      goto LABEL_355;
    }

    v1 = v185;
    v187 = v186;
    if (v171)
    {
      memset(v185, 32, v171);
      v188 = v187 - v171;
      if (v187 < v171)
      {
        goto LABEL_352;
      }

      v1 += v171;
      qmemcpy(v1, "template<typename T>\n", 21);
      if (v188 <= 0x14)
      {
        goto LABEL_352;
      }

      v189 = v188 - 21;
      memset((v1 + 21), 32, v171);
      if (v189 < v171)
      {
        goto LABEL_352;
      }

      v190 = v189 - v171;
      v191 = v1 + v171 + 21;
      if (!v167)
      {
        goto LABEL_312;
      }
    }

    else
    {
      qmemcpy(v185, "template<typename T>\n", 21);
      if (v186 < 0x15)
      {
        goto LABEL_352;
      }

      v190 = v186 - 21;
      v191 = v185 + 21;
      if (!v167)
      {
        goto LABEL_312;
      }
    }

    *(v191 + 15) = 542989669;
    *v191 = *"[[clang::optnone]] ";
LABEL_312:
    v7 = v190 >= v169;
    v192 = v190 - v169;
    if (!v7)
    {
      goto LABEL_352;
    }

    v193 = v191 + v169;
    qmemcpy(v193, "static T __workgroup_uniform_load(threadgroup T* const ptr)\n", 60);
    if (v192 <= 0x3B)
    {
      goto LABEL_352;
    }

    v1 = v193 + 60;
    if (v171)
    {
      v194 = v192 - 60;
      memset((v193 + 60), 32, v171);
      if (v194 < v171)
      {
        goto LABEL_352;
      }
    }

    else
    {
      v171 = 0;
    }

    *(v1 + v171) = 2683;
    goto LABEL_355;
  }

  v181 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
  if (v181)
  {
    v1 = v181;
    v183 = v182;
    if (v171)
    {
      memset_pattern16(v181, aIneStateTLTAne, 2 * v171);
      v184 = v171;
      if (v183 < v171)
      {
        goto LABEL_352;
      }
    }

    else
    {
      v184 = 0;
    }

    v195 = v1 + 2 * v184;
    *v195 = xmmword_225882210;
    *(v195 + 16) = xmmword_225882220;
    *(v195 + 32) = *&aIneStateTLTAne[16];
    *(v195 + 40) = 10;
    v196 = v183 - v184;
    if (v196 > 0x14)
    {
      v197 = (v195 + 42);
      v198 = v196 - 21;
      if (v171)
      {
        memset_pattern16((v195 + 42), aIneStateTLTAne, 2 * v171);
        v199 = v171;
        if (v198 < v171)
        {
          goto LABEL_352;
        }

        v200 = v198 - v171;
        v201 = &v197[2 * v171];
        v202 = &v201[2 * v169];
        if (!v167)
        {
          goto LABEL_347;
        }
      }

      else
      {
        v199 = 0;
        v200 = v196 - 21;
        v201 = v197;
        v202 = &v197[2 * v169];
        if (!v167)
        {
          goto LABEL_347;
        }
      }

      v203 = (v169 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v203 < 7)
      {
        v204 = "[[clang::optnone]] ";
        goto LABEL_346;
      }

      v205 = v1 + 4 * v199;
      if (v201 < &aClangOptnone[v203 + 1] && v205 + 2 * (v169 - 1) + 44 > "[[clang::optnone]] ")
      {
        v204 = "[[clang::optnone]] ";
        goto LABEL_346;
      }

      v206 = v203 + 1;
      if (v203 >= 0x1F)
      {
        v207 = v206 & 0xFFFFFFFFFFFFFFE0;
        v208 = (v205 + 74);
        v209 = "]] ";
        v210 = v206 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v211 = *v209[-2].i8;
          v212 = vmovl_u8(*v209);
          v213 = vmovl_high_u8(*v209->i8);
          v208[-2] = vmovl_u8(*v211.i8);
          v208[-1] = vmovl_high_u8(v211);
          *v208 = v212;
          v208[1] = v213;
          v208 += 4;
          v209 += 4;
          v210 -= 32;
        }

        while (v210);
        if (v206 == v207)
        {
          goto LABEL_347;
        }

        if ((v206 & 0x18) == 0)
        {
          v201 += 2 * v207;
          v204 = &aClangOptnone[v207];
          do
          {
LABEL_346:
            v218 = *v204++;
            *v201 = v218;
            v201 += 2;
          }

          while (v201 != v202);
          goto LABEL_347;
        }
      }

      else
      {
        v207 = 0;
      }

      v204 = &aClangOptnone[v206 & 0xFFFFFFFFFFFFFFF8];
      v201 += 2 * (v206 & 0xFFFFFFFFFFFFFFF8);
      v214 = (4 * v199 + 2 * v207 + v1 + 42);
      v215 = &aClangOptnone[v207];
      v216 = v207 - (v206 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v217 = *v215;
        v215 += 8;
        *v214++ = vmovl_u8(v217);
        v216 += 8;
      }

      while (v216);
      if (v206 != (v206 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_346;
      }

LABEL_347:
      v7 = v200 >= v169;
      v219 = v200 - v169;
      if (v7)
      {
        *v202 = xmmword_2258823E0;
        *(v202 + 1) = xmmword_2258823F0;
        *(v202 + 2) = xmmword_225882400;
        *(v202 + 3) = xmmword_225882410;
        *(v202 + 4) = xmmword_225882420;
        *(v202 + 5) = xmmword_225882430;
        *(v202 + 6) = xmmword_225882440;
        *(v202 + 14) = *&aIneStateTLTAne[44];
        if (v219 > 0x3B)
        {
          v1 = (v202 + 120);
          if (!v171)
          {
LABEL_353:
            v171 = 0;
            goto LABEL_354;
          }

          v220 = v219 - 60;
          memset_pattern16(v202 + 120, aIneStateTLTAne, 2 * v171);
          if (v220 >= v171)
          {
LABEL_354:
            *(v1 + 2 * v171) = 655483;
            goto LABEL_355;
          }
        }
      }
    }

LABEL_352:
    __break(1u);
    goto LABEL_353;
  }

LABEL_355:
  v221 = *(this + 26) + 1;
  *(this + 26) = v221;
  WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), v221, "threadgroup_barrier(mem_flags::mem_threadgroup);\n", 50, v221, "auto result = *ptr;\n", 21, v221, "threadgroup_barrier(mem_flags::mem_threadgroup);\n", 50, v221, v4, 16);
  v222 = *(this + 26) - 1;
  *(this + 26) = v222;
  LODWORD(v264) = v222;
  v268 = v2;
  v269 = 3;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
LABEL_356:
  if (v15[14] == 1)
  {
    v266 = *(this + 26);
    v267 = v266;
    v268 = "template<typename T, typename U, typename V = conditional_t<is_scalar_v<U>, T, U>>\n";
    v269 = 83;
    v264 = "static V __wgslDiv(T lhs, U rhs)\n";
    v265 = 33;
    v263 = v266;
    v261 = v3;
    v262 = 2;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
    v223 = *(this + 26) + 1;
    *(this + 26) = v223;
    LODWORD(v261) = v223;
    v268 = "auto predicate = V(rhs) == V(0);\n";
    v269 = 33;
    v267 = v223;
    v264 = "if constexpr (is_signed_v<U>)\n";
    v265 = 30;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
    v224 = *(this + 26) + 1;
    *(this + 26) = v224;
    LODWORD(v264) = v224;
    v268 = "predicate = predicate || (V(lhs) == V(numeric_limits<T>::lowest()) && V(rhs) == V(-1));\n";
    v269 = 88;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v225 = *(this + 26) - 1;
    *(this + 26) = v225;
    LODWORD(v264) = v225;
    v268 = "return lhs / select(V(rhs), V(1), predicate);\n";
    v269 = 46;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v226 = *(this + 26) - 1;
    *(this + 26) = v226;
    LODWORD(v264) = v226;
    v268 = v2;
    v269 = 3;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v15 = *(this + 12);
  }

  if (v15[15] == 1)
  {
    v266 = *(this + 26);
    v267 = v266;
    v268 = "template<typename T, typename U, typename V = conditional_t<is_scalar_v<U>, T, U>>\n";
    v269 = 83;
    v264 = "static V __wgslMod(T lhs, U rhs)\n";
    v265 = 33;
    v263 = v266;
    v261 = v3;
    v262 = 2;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
    v227 = *(this + 26) + 1;
    *(this + 26) = v227;
    LODWORD(v261) = v227;
    v268 = "auto predicate = V(rhs) == V(0);\n";
    v269 = 33;
    v267 = v227;
    v264 = "if constexpr (is_signed_v<U>)\n";
    v265 = 30;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
    v228 = *(this + 26) + 1;
    *(this + 26) = v228;
    LODWORD(v264) = v228;
    v268 = "predicate = predicate || (V(lhs) == V(numeric_limits<T>::lowest()) && V(rhs) == V(-1));\n";
    v269 = 88;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v229 = *(this + 26) - 1;
    *(this + 26) = v229;
    LODWORD(v264) = v229;
    v268 = "return select(lhs % V(rhs), V(0), predicate);\n";
    v269 = 46;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v230 = *(this + 26) - 1;
    *(this + 26) = v230;
    LODWORD(v264) = v230;
    v268 = v2;
    v269 = 3;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v15 = *(this + 12);
  }

  if (v15[16] == 1)
  {
    LODWORD(v261) = *(this + 26);
    v268 = "template<typename T, typename U>\n";
    v269 = 33;
    v267 = v261;
    v264 = "struct __frexp_result {\n";
    v265 = 24;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
    v233 = *(this + 26) + 1;
    *(this + 26) = v233;
    LODWORD(v261) = v233;
    v268 = "T fract;\n";
    v269 = 9;
    v267 = v233;
    v264 = "U exp;\n";
    v265 = 7;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
    v234 = *(this + 26) - 1;
    *(this + 26) = v234;
    WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), v234, "};\n\n", 5, v234, "template<typename T, typename U = conditional_t<is_vector_v<T>, vec<int, vec_elements<T>::value ?: 2>, int>>\n", 110, v234, "static __frexp_result<T, U> __wgslFrexp(T value)\n", 50, v234, v3, 3);
    v235 = *(this + 26) + 1;
    *(this + 26) = v235;
    v266 = v235;
    v267 = v235;
    v268 = "__frexp_result<T, U> result;\n";
    v269 = 29;
    v264 = "result.fract = frexp(value, result.exp);\n";
    v265 = 41;
    v263 = v235;
    v261 = v4;
    v262 = 15;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
    v236 = *(this + 26) - 1;
    *(this + 26) = v236;
    LODWORD(v264) = v236;
    v268 = v2;
    v269 = 3;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v15 = *(this + 12);
    if (v15[17] != 1)
    {
LABEL_362:
      if (v15[18] != 1)
      {
        goto LABEL_363;
      }

      goto LABEL_377;
    }
  }

  else if (v15[17] != 1)
  {
    goto LABEL_362;
  }

  LODWORD(v261) = *(this + 26);
  v268 = "template<typename T, typename U>\n";
  v269 = 33;
  v267 = v261;
  v264 = "struct __modf_result {\n";
  v265 = 23;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v237 = *(this + 26) + 1;
  *(this + 26) = v237;
  LODWORD(v261) = v237;
  v268 = "T fract;\n";
  v269 = 9;
  v267 = v237;
  v264 = "U whole;\n";
  v265 = 9;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v238 = *(this + 26) - 1;
  *(this + 26) = v238;
  WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), v238, "};\n\n", 5, v238, "template<typename T>\n", 22, v238, "static __modf_result<T, T> __wgslModf(T value)\n", 48, v238, v3, 3);
  v239 = *(this + 26) + 1;
  *(this + 26) = v239;
  v266 = v239;
  v267 = v239;
  v268 = "__modf_result<T, T> result;\n";
  v269 = 28;
  v264 = "result.fract = modf(value, result.whole);\n";
  v265 = 42;
  v263 = v239;
  v261 = v4;
  v262 = 15;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v240 = *(this + 26) - 1;
  *(this + 26) = v240;
  LODWORD(v264) = v240;
  v268 = v2;
  v269 = 3;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[18] != 1)
  {
LABEL_363:
    if (v15[20] != 1)
    {
      goto LABEL_364;
    }

    goto LABEL_378;
  }

LABEL_377:
  LODWORD(v261) = *(this + 26);
  v268 = "template<typename T, typename U = BOOL>\n";
  v269 = 40;
  v267 = v261;
  v264 = "struct __atomic_compare_exchange_result {\n";
  v265 = 42;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v241 = *(this + 26) + 1;
  *(this + 26) = v241;
  LODWORD(v261) = v241;
  v268 = "T old_value;\n";
  v269 = 13;
  v267 = v241;
  v264 = "U exchanged;\n";
  v265 = 13;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v242 = *(this + 26) - 1;
  *(this + 26) = v242;
  LODWORD(v261) = v242;
  v268 = "};\n\n";
  v269 = 4;
  v267 = v242;
  v264 = "template<typename T, typename S, typename V> __atomic_compare_exchange_result<S> __wgslAtomicCompareExchangeWeak(T atomic1, S compare, V value) {\n";
  v265 = 146;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v243 = *(this + 26) + 1;
  *(this + 26) = v243;
  WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), v243, "auto innerCompare = compare; \n", 31, v243, "BOOL exchanged = atomic_compare_exchange_weak_explicit(atomic1, &innerCompare, value, memory_order_relaxed, memory_order_relaxed); \n", 133, v243, "return __atomic_compare_exchange_result<decltype(compare)> { innerCompare, exchanged }; \\\n", 91, v243, "}\n", 3);
  --*(this + 26);
  v15 = *(this + 12);
  if (v15[20] != 1)
  {
LABEL_364:
    if (v15[27] != 1)
    {
      goto LABEL_365;
    }

    goto LABEL_379;
  }

LABEL_378:
  v266 = *(this + 26);
  v267 = v266;
  v268 = "template<typename T, unsigned N>\n";
  v269 = 33;
  v264 = "static T __wgslDot(vec<T, N> lhs, vec<T, N> rhs)\n";
  v265 = 49;
  v263 = v266;
  v261 = v3;
  v262 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v244 = *(this + 26) + 1;
  *(this + 26) = v244;
  WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), v244, "auto result = lhs[0] * rhs[0] + lhs[1] * rhs[1];\n", 50, v244, "if constexpr (N > 2) result += lhs[2] * rhs[2];\n", 49, v244, "if constexpr (N > 3) result += lhs[3] * rhs[3];\n", 49, v244, v4, 16);
  v245 = *(this + 26) - 1;
  *(this + 26) = v245;
  LODWORD(v264) = v245;
  v268 = "}\n";
  v269 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[27] != 1)
  {
LABEL_365:
    if (v15[28] != 1)
    {
      goto LABEL_366;
    }

    goto LABEL_380;
  }

LABEL_379:
  LODWORD(v261) = *(this + 26);
  v268 = "static int __wgslDot4I8Packed(uint lhs, uint rhs)\n";
  v269 = 50;
  v267 = v261;
  v264 = v3;
  v265 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v246 = *(this + 26) + 1;
  *(this + 26) = v246;
  v266 = v246;
  v267 = v246;
  v268 = "auto vec1 = as_type<packed_char4>(lhs);";
  v269 = 39;
  v264 = "auto vec2 = as_type<packed_char4>(rhs);";
  v265 = 39;
  v263 = v246;
  v261 = "return vec1[0] * vec2[0] + vec1[1] * vec2[1] + vec1[2] * vec2[2] + vec1[3] * vec2[3];";
  v262 = 85;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v247 = *(this + 26) - 1;
  *(this + 26) = v247;
  LODWORD(v264) = v247;
  v268 = "}\n";
  v269 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[28] != 1)
  {
LABEL_366:
    if (v15[21] != 1)
    {
      goto LABEL_367;
    }

    goto LABEL_381;
  }

LABEL_380:
  LODWORD(v261) = *(this + 26);
  v268 = "static uint __wgslDot4U8Packed(uint lhs, uint rhs)\n";
  v269 = 51;
  v267 = v261;
  v264 = v3;
  v265 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v248 = *(this + 26) + 1;
  *(this + 26) = v248;
  v266 = v248;
  v267 = v248;
  v268 = "auto vec1 = as_type<packed_uchar4>(lhs);";
  v269 = 40;
  v264 = "auto vec2 = as_type<packed_uchar4>(rhs);";
  v265 = 40;
  v263 = v248;
  v261 = "return vec1[0] * vec2[0] + vec1[1] * vec2[1] + vec1[2] * vec2[2] + vec1[3] * vec2[3];";
  v262 = 85;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v249 = *(this + 26) - 1;
  *(this + 26) = v249;
  LODWORD(v264) = v249;
  v268 = "}\n";
  v269 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[21] != 1)
  {
LABEL_367:
    if (v15[22] != 1)
    {
      goto LABEL_368;
    }

    goto LABEL_382;
  }

LABEL_381:
  v266 = *(this + 26);
  v267 = v266;
  v268 = "template<typename T>\n";
  v269 = 21;
  v264 = "static T __wgslFirstLeadingBit(T e)\n";
  v265 = 36;
  v263 = v266;
  v261 = v3;
  v262 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v250 = *(this + 26) + 1;
  *(this + 26) = v250;
  WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), v250, "if constexpr (is_signed_v<T>)\n", 31, v250, "    return select(T(31 - select(clz(e), clz(~e), e < T(0))), T(-1), e == T(0) || e == T(-1));\n", 95, v250, "else\n", 6, v250, "    return select(T(31 - clz(e)), T(-1), e == T(0));\n", 54);
  v251 = *(this + 26) - 1;
  *(this + 26) = v251;
  LODWORD(v264) = v251;
  v268 = "}\n";
  v269 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[22] != 1)
  {
LABEL_368:
    if (v15[23] != 1)
    {
      goto LABEL_369;
    }

    goto LABEL_383;
  }

LABEL_382:
  v266 = *(this + 26);
  v267 = v266;
  v268 = "template<typename T>\n";
  v269 = 21;
  v264 = "static T __wgslFirstTrailingBit(T e)\n";
  v265 = 37;
  v263 = v266;
  v261 = v3;
  v262 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v252 = *(this + 26) + 1;
  *(this + 26) = v252;
  LODWORD(v264) = v252;
  v268 = "return select(ctz(e), T(-1), e == T(0));\n";
  v269 = 41;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v253 = *(this + 26) - 1;
  *(this + 26) = v253;
  LODWORD(v264) = v253;
  v268 = "}\n";
  v269 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[23] != 1)
  {
LABEL_369:
    if (v15[29] != 1)
    {
      goto LABEL_370;
    }

    goto LABEL_384;
  }

LABEL_383:
  v266 = *(this + 26);
  v267 = v266;
  v268 = "template<typename T>\n";
  v269 = 21;
  v264 = "static T __wgslSign(T e)\n";
  v265 = 25;
  v263 = v266;
  v261 = v3;
  v262 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v254 = *(this + 26) + 1;
  *(this + 26) = v254;
  LODWORD(v264) = v254;
  v268 = "return select(select(T(-1), T(1), e > 0), T(0), e == 0);\n";
  v269 = 57;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v255 = *(this + 26) - 1;
  *(this + 26) = v255;
  LODWORD(v264) = v255;
  v268 = "}\n";
  v269 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[29] != 1)
  {
LABEL_370:
    if (v15[31] != 1)
    {
      goto LABEL_371;
    }

    goto LABEL_385;
  }

LABEL_384:
  v266 = *(this + 26);
  v267 = v266;
  v268 = "template<typename T>\n";
  v269 = 21;
  v264 = "static T __wgslExtractBits(T e, uint offset, uint count)\n";
  v265 = 57;
  v263 = v266;
  v261 = v3;
  v262 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v256 = *(this + 26) + 1;
  *(this + 26) = v256;
  v266 = v256;
  v267 = v256;
  v268 = "auto o = min(offset, 32u);\n";
  v269 = 27;
  v264 = "auto c = min(count, 32u - o);\n";
  v265 = 30;
  v263 = v256;
  v261 = "return select((T)0, extract_bits(e, min(o, 31u), c), c);\n";
  v262 = 57;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v257 = *(this + 26) - 1;
  *(this + 26) = v257;
  LODWORD(v264) = v257;
  v268 = "}\n";
  v269 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[31] != 1)
  {
LABEL_371:
    if (v15[32] != 1)
    {
      goto LABEL_372;
    }

LABEL_386:
    v266 = *(this + 26);
    v267 = v266;
    v268 = "template <typename T, typename S>\n";
    v269 = 34;
    v264 = "static T __wgslFtoi(S value)\n";
    v265 = 29;
    v263 = v266;
    v261 = v3;
    v262 = 2;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
    v259 = *(this + 26) + 1;
    *(this + 26) = v259;
    LODWORD(v264) = v259;
    v268 = "if constexpr (is_same_v<make_scalar_t<S>, half>)\n";
    v269 = 49;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    LODWORD(v264) = *(this + 26);
    v268 = "return T(select(clamp(value, max(S(numeric_limits<T>::min()), numeric_limits<S>::lowest()), numeric_limits<S>::max()), S(0), isnan(value)));\n";
    v269 = 141;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    LODWORD(v264) = *(this + 26);
    v268 = "else\n";
    v269 = 5;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    LODWORD(v264) = *(this + 26);
    v268 = "return T(select(clamp(value, S(numeric_limits<T>::min()), S(numeric_limits<T>::max() - ((128 << (!is_signed_v<T>)) - 1))), S(0), isnan(value)));\n";
    v269 = 145;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v260 = *(this + 26) - 1;
    *(this + 26) = v260;
    LODWORD(v264) = v260;
    v268 = v2;
    v269 = 3;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v15 = *(this + 12);
    if (v15[33] != 1)
    {
      goto LABEL_374;
    }

    goto LABEL_373;
  }

LABEL_385:
  LODWORD(v261) = *(this + 26);
  v268 = "static uint __attribute__((always_inline)) __wgslMin(uint a, uint b)\n";
  v269 = 69;
  v267 = v261;
  v264 = v3;
  v265 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  ++*(this + 26);
  WTF::StringBuilder::append();
  v258 = *(this + 26) - 1;
  *(this + 26) = v258;
  LODWORD(v264) = v258;
  v268 = v2;
  v269 = 3;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[32] == 1)
  {
    goto LABEL_386;
  }

LABEL_372:
  if (v15[33] == 1)
  {
LABEL_373:
    v266 = *(this + 26);
    v267 = v266;
    v268 = "template <typename T>\n";
    v269 = 22;
    v264 = "static T __wgslInsertBits(T e, T newBits, unsigned offset, unsigned count)\n";
    v265 = 75;
    v263 = v266;
    v261 = v3;
    v262 = 2;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
    v231 = *(this + 26) + 1;
    *(this + 26) = v231;
    LODWORD(v264) = v231;
    v268 = "constexpr unsigned w = 8 * static_cast<unsigned>(sizeof(make_scalar_t<T>));\n";
    v269 = 76;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    LODWORD(v264) = *(this + 26);
    v268 = "const unsigned o = min(offset, w);\n";
    v269 = 35;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    LODWORD(v264) = *(this + 26);
    v268 = "const unsigned c = min(count, w - o);\n";
    v269 = 38;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    LODWORD(v264) = *(this + 26);
    v268 = "return insert_bits(e, newBits, min(o, w - 1), c);\n";
    v269 = 50;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v232 = *(this + 26) - 1;
    *(this + 26) = v232;
    LODWORD(v264) = v232;
    v268 = v2;
    v269 = 3;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v15 = *(this + 12);
  }

LABEL_374:
  v15[30] = 0;
}

void WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>(WTF::StringBuilder *a1, int a2, unsigned __int8 *a3, uint64_t a4, int a5, unsigned __int8 *a6, uint64_t a7, int a8, unsigned __int8 *a9, uint64_t a10, unsigned int a11, char *a12, uint64_t a13)
{
  if (a4)
  {
    v13 = a4 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 >> 31)
  {
    __break(0xC471u);
    goto LABEL_101;
  }

  if (a7)
  {
    v14 = a7 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x22574A7F8);
  }

  if (a10)
  {
    v15 = a10 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x22574A818);
  }

  if (a13)
  {
    v16 = a13 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16 >> 31)
  {
    __break(0xC471u);
    goto LABEL_100;
  }

  v18 = (4 * a2);
  v19 = (4 * a5);
  v20 = (4 * a8);
  v21 = 4 * a11;
  __n = v16;
  v22 = *(a1 + 1);
  if ((v22 || (v22 = *a1) != 0) && (*(v22 + 16) & 4) == 0)
  {
    v26 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (!v26)
    {
      return;
    }

    v28 = v26;
    v29 = v27;
    if (!v18)
    {
      v18 = 0;
      v30 = a5;
      v31 = a4;
      v32 = v26;
      v33 = &v26->i8[2 * v13];
      if (v13 < 0x40)
      {
LABEL_24:
        v34 = v29 - v18;
        if (v32 == v33)
        {
          goto LABEL_81;
        }

LABEL_70:
        v57 = v28 + 2 * v31 + 2 * v18 - v32;
        if (v31)
        {
          v58 = -2;
        }

        else
        {
          v58 = 0;
        }

        v59 = v57 + v58 - 2;
        if (v59 < 0xE || (v31 ? (v60 = -2) : (v60 = 0), (v61 = v57 + v60 - 2, v32 < &a3[(v61 >> 1) + 1]) && a3 < &v32->u8[(v61 & 0xFFFFFFFFFFFFFFFELL) + 2]))
        {
          v62 = a3;
          v63 = v32;
          goto LABEL_80;
        }

        v65 = (v59 >> 1) + 1;
        if (v59 >= 0x3E)
        {
          v66 = v65 & 0xFFFFFFFFFFFFFFE0;
          v67 = v32 + 2;
          v68 = (a3 + 16);
          v69 = v65 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v70 = *v68[-2].i8;
            v71 = vmovl_u8(*v68);
            v72 = vmovl_high_u8(*v68->i8);
            v67[-2] = vmovl_u8(*v70.i8);
            v67[-1] = vmovl_high_u8(v70);
            *v67 = v71;
            v67[1] = v72;
            v67 += 4;
            v68 += 4;
            v69 -= 32;
          }

          while (v69);
          if (v65 == v66)
          {
            goto LABEL_81;
          }

          if ((v65 & 0x18) == 0)
          {
            v63 = &v32->i8[2 * v66];
            v62 = &a3[v66];
            do
            {
LABEL_80:
              v64 = *v62++;
              *v63 = v64;
              v63 += 2;
            }

            while (v63 != v33);
            goto LABEL_81;
          }
        }

        else
        {
          v66 = 0;
        }

        v62 = &a3[v65 & 0xFFFFFFFFFFFFFFF8];
        v63 = &v32->i8[2 * (v65 & 0xFFFFFFFFFFFFFFF8)];
        v73 = (v32 + 2 * v66);
        v74 = &a3[v66];
        v75 = v66 - (v65 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v76 = *v74;
          v74 += 8;
          *v73++ = vmovl_u8(v76);
          v75 += 8;
        }

        while (v75);
        if (v65 != (v65 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_80;
        }

LABEL_81:
        if (v34 >= v13)
        {

          WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v33, v34 - v13, v30, a6, v14, a8, a9, v15, a11, a12, __n);
          return;
        }

        goto LABEL_100;
      }

LABEL_67:
      v49 = &v32->i8[2 * (v13 & 0x7FFFFFC0)];
      v50 = 0uLL;
      do
      {
        v80.val[0] = *a3;
        v51 = *(a3 + 1);
        v81.val[0] = *(a3 + 2);
        v52 = *(a3 + 3);
        a3 += 64;
        v53 = v52;
        v81.val[1] = 0uLL;
        v82.val[0] = v51;
        v80.val[1] = 0uLL;
        v54 = v32;
        vst2q_s8(v54, v80);
        v54 += 32;
        v82.val[1] = 0uLL;
        vst2q_s8(v54, v82);
        i8 = v32[4].i8;
        vst2q_s8(i8, v81);
        v56 = v32[6].i8;
        vst2q_s8(v56, *(&v50 - 1));
        v32 += 8;
      }

      while (v32 != v49);
      v32 = v49;
      v34 = v29 - v18;
      if (v32 == v33)
      {
        goto LABEL_81;
      }

      goto LABEL_70;
    }

    memset_pattern16(v26, aIneStateTLTAne, 2 * v18);
    v30 = a5;
    v31 = a4;
    if (v29 >= v18)
    {
      v32 = (v28 + 2 * v18);
      v33 = &v32->i8[2 * v13];
      if (v13 < 0x40)
      {
        goto LABEL_24;
      }

      goto LABEL_67;
    }

LABEL_100:
    __break(1u);
LABEL_101:
    JUMPOUT(0x22574A7D8);
  }

  v35 = MEMORY[0x22AA68210]();
  if (!v35)
  {
    return;
  }

  v37 = v35;
  v38 = v36;
  if (!v18)
  {
    if (!v13)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  memset(v35, 32, v18);
  if (v38 < v18)
  {
    goto LABEL_100;
  }

  v38 -= v18;
  v37 += v18;
  if (v13)
  {
LABEL_32:
    if (v13 == 1)
    {
      *v37 = *a3;
    }

    else
    {
      memcpy(v37, a3, v13);
    }
  }

LABEL_35:
  v39 = v38 - v13;
  if (v38 < v13)
  {
    goto LABEL_100;
  }

  v40 = &v37[v13];
  if (!v19)
  {
    v41 = v39;
    v42 = v40;
    if (!v14)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  memset(&v37[v13], 32, v19);
  if (v39 < v19)
  {
    goto LABEL_100;
  }

  v41 = v39 - v19;
  v42 = &v40[v19];
  if (v14)
  {
LABEL_41:
    if (v14 == 1)
    {
      *v42 = *a6;
    }

    else
    {
      memcpy(v42, a6, v14);
    }
  }

LABEL_44:
  v43 = v41 >= v14;
  v44 = v41 - v14;
  if (!v43)
  {
    goto LABEL_100;
  }

  v45 = &v42[v14];
  if (!v20)
  {
    v46 = v44;
    v47 = v45;
    if (!v15)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  memset(&v42[v14], 32, v20);
  if (v44 < v20)
  {
    goto LABEL_100;
  }

  v46 = v44 - v20;
  v47 = &v45[v20];
  if (v15)
  {
LABEL_51:
    if (v15 == 1)
    {
      *v47 = *a9;
    }

    else
    {
      memcpy(v47, a9, v15);
    }
  }

LABEL_54:
  if (v46 < v15)
  {
    goto LABEL_100;
  }

  v48 = &v47[v15];
  if (v21)
  {
    memset(v48, 32, v21);
    if (v46 - v15 < v21)
    {
      goto LABEL_100;
    }

    if (!__n)
    {
      return;
    }
  }

  else
  {
    v21 = 0;
    if (!__n)
    {
      return;
    }
  }

  if (__n == 1)
  {
    v48[v21] = *a12;
  }

  else
  {

    memcpy(&v48[v21], a12, __n);
  }
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(uint64_t this, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v7 = this;
  v9 = (this + 144);
  v8 = *(this + 144);
  if (!v8)
  {
    this = WTF::HashTable<WGSL::Graph::Node *,WGSL::Graph::Node *,WTF::IdentityExtractor,WTF::DefaultHash<WGSL::Graph::Node *>,WTF::HashTraits<WGSL::Graph::Node *>,WTF::HashTraits<WGSL::Graph::Node *>,WTF::FastMalloc>::rehash((this + 144), 8uLL);
    v8 = *v9;
  }

  v10 = *(v8 - 8);
  v11 = (v6->u64 + ~(v6 << 32)) ^ ((v6->u64 + ~(v6 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = (v13 >> 31) ^ v13;
  v15 = v10 & v14;
  v16 = (v8 + 8 * (v10 & v14));
  v17 = *v16;
  if (*v16)
  {
    v18 = 0;
    v19 = 1;
    do
    {
      if (v17 == v6)
      {
        return this;
      }

      if (v17 == -1)
      {
        v18 = v16;
      }

      v15 = (v15 + v19) & v10;
      v16 = (v8 + 8 * v15);
      v17 = *v16;
      ++v19;
    }

    while (*v16);
    if (v18)
    {
      *v18 = 0;
      v20 = *v9;
      *v18 = v6;
      v21 = vadd_s32(*(v20 - 16), 0x1FFFFFFFFLL);
      *(v20 - 16) = v21;
      v22 = v21.i32[1];
      v23 = (v21.i32[1] + v21.i32[0]);
      v24 = *(v20 - 4);
      if (v24 > 0x400)
      {
        goto LABEL_11;
      }

LABEL_14:
      if (3 * v24 > 4 * v23)
      {
        goto LABEL_18;
      }

      if (!v24)
      {
        v26 = 8;
        goto LABEL_17;
      }

LABEL_16:
      v26 = (v24 << (6 * v22 >= (2 * v24)));
LABEL_17:
      WTF::HashTable<WGSL::Graph::Node *,WGSL::Graph::Node *,WTF::IdentityExtractor,WTF::DefaultHash<WGSL::Graph::Node *>,WTF::HashTraits<WGSL::Graph::Node *>,WTF::HashTraits<WGSL::Graph::Node *>,WTF::FastMalloc>::rehash(v9, v26);
      goto LABEL_18;
    }
  }

  *v16 = v6;
  v25 = *(v8 - 16);
  v22 = *(v8 - 12) + 1;
  *(v8 - 12) = v22;
  v18 = v16;
  v23 = (v22 + v25);
  v24 = *(v8 - 4);
  if (v24 <= 0x400)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v24 <= 2 * v23)
  {
    goto LABEL_16;
  }

LABEL_18:
  v27 = *(v7 + 96);
  v28 = *(v27 + 352);
  if ((v28 & 1) == 0)
  {
    goto LABEL_170;
  }

  v29 = *(v27 + 344);
  v30 = *(v29 - 8);
  v31 = v30 & v14;
  v32 = v29 + 24 * (v30 & v14);
  v33 = *v32;
  if (*v32 == v6)
  {
LABEL_23:
    v35 = *(v32 + 20);
    if (!v35)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v34 = 1;
  while (v33)
  {
    v31 = (v31 + v34) & v30;
    v32 = v29 + 24 * v31;
    v33 = *v32;
    ++v34;
    if (*v32 == v6)
    {
      goto LABEL_23;
    }
  }

  v32 = v29 + 24 * *(v29 - 4);
  v35 = *(v32 + 20);
  if (v35)
  {
LABEL_26:
    v9 = *(v32 + 8);
    v36 = 24 * v35;
    do
    {
      v37 = *v9;
      v9 += 3;
      (*(*v7 + 56))(v7, v37, v18);
      v36 -= 24;
    }

    while (v36);
  }

LABEL_28:
  v38 = v6[5].u32[1];
  if (v38)
  {
    v9 = v6[4].i64[1];
    v39 = 8 * v38;
    v5 = 32;
    do
    {
      if ((*(v7 + 32) & 1) == 0)
      {
        (*(*v7 + 96))(v7, *v9, v18);
      }

      v40 = *(v7 + 72);
      if (!v40 || (v41 = *(v7 + 80), v41 >= *(v40 + 4)) || *(v7 + 64))
      {
        WTF::StringBuilder::append();
      }

      else
      {
        v42 = *(v40 + 16);
        v43 = *(v40 + 8);
        *(v7 + 80) = v41 + 1;
        if ((v42 & 4) != 0)
        {
          *(v43 + v41) = 32;
        }

        else
        {
          *(v43 + 2 * v41) = 32;
        }
      }

      ++v9;
      v39 -= 8;
    }

    while (v39);
  }

  v44 = v6[6].i64[1];
  if (v44)
  {
    WGSL::Metal::FunctionDefinitionWriter::visit(v7, *(v44 + 24), 0, a4, a5);
    v14 = v6[3].i64[0];
    v46 = *(v7 + 80);
    if (v14)
    {
      goto LABEL_42;
    }

LABEL_51:
    if (v45)
    {
      v52 = -1;
    }

    else
    {
      v52 = 2;
    }

    v45 = __CFADD__(v46, v52);
    v53 = v46 + v52;
    if (v45)
    {
      v50 = 0xFFFFFFFFLL;
    }

    else
    {
      v50 = v53;
    }

    v51 = *(v7 + 72);
    if (!v51)
    {
      goto LABEL_58;
    }

LABEL_59:
    if ((*(v51 + 16) & 4) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  WTF::StringBuilder::append();
  v14 = v6[3].i64[0];
  v46 = *(v7 + 80);
  if (!v14)
  {
    goto LABEL_51;
  }

LABEL_42:
  v47 = *(v14 + 4);
  v45 = __CFADD__(v47, 2);
  v48 = v47 + 2;
  if (v45)
  {
    v48 = -1;
  }

  v45 = __CFADD__(v46, v48);
  v49 = v46 + v48;
  if (v45)
  {
    v50 = 0xFFFFFFFFLL;
  }

  else
  {
    v50 = v49;
  }

  v51 = *(v7 + 72);
  if (v51)
  {
    goto LABEL_59;
  }

LABEL_58:
  v51 = *(v7 + 64);
  if (v51)
  {
    goto LABEL_59;
  }

LABEL_60:
  if (!v14 || (*(v14 + 16) & 4) != 0)
  {
    v56 = MEMORY[0x22AA68210](v7 + 64, v50);
    if (!v56)
    {
      goto LABEL_104;
    }

    if (a2)
    {
      *v56 = 32;
      v9 = (v56 + 1);
      v5 = &a2[-1].u64[1] + 7;
      if (!v14)
      {
        v27 = 0;
        goto LABEL_145;
      }

      a2 = *(v14 + 8);
      v57 = *(v14 + 4);
      if ((*(v14 + 16) & 4) != 0)
      {
        if (v57)
        {
          if (v57 == 1)
          {
            *v9 = a2->i8[0];
          }

          else
          {
            memcpy(v56 + 1, a2, v57);
          }
        }
      }

      else
      {
        v27 = v9 + v57;
        if (v57 < 0x10)
        {
          v28 = (v56 + 1);
        }

        else
        {
          v28 = (v56 + 1);
          do
          {
            v58 = vld2q_s8(a2->i8);
            a2 += 2;
            *v28 = v58;
            v28 += 16;
          }

          while (v28 != (v9 + (v57 & 0xFFFFFFF0)));
        }

        if (v28 != v27)
        {
          v81 = &v56[v57 - v28];
          v82 = (v81 + 1);
          if ((v81 + 1) < 4 || (v28 < a2->u64 + 2 * v81 + 2 ? (v83 = a2 >= &v56[v57 + 1]) : (v83 = 1), !v83))
          {
            v84 = v28;
            v85 = a2;
            goto LABEL_141;
          }

          if (v82 >= 0x20)
          {
            v17 = v82 & 0xFFFFFFFFFFFFFFE0;
            v95 = a2 + 2;
            v96 = (v28 + 16);
            v97 = v82 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v99 = v95[-2];
              v98 = v95[-1];
              v101 = *v95;
              v100 = v95[1];
              v95 += 4;
              v96[-1] = vuzp1q_s8(v99, v98);
              *v96 = vuzp1q_s8(v101, v100);
              v96 += 2;
              v97 -= 32;
            }

            while (v97);
            if (v82 == v17)
            {
              goto LABEL_144;
            }

            if ((v82 & 0x1C) == 0)
            {
              goto LABEL_171;
            }
          }

          else
          {
            v17 = 0;
          }

          v84 = (v28 + (v82 & 0xFFFFFFFFFFFFFFFCLL));
          v85 = (a2 + 2 * (v82 & 0xFFFFFFFFFFFFFFFCLL));
          v102 = (a2 + 2 * v17);
          v28 += v17;
          v17 -= v82 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v103 = *v102++;
            *v28 = vuzp1_s8(v103, v103).u32[0];
            v28 += 4;
            v17 += 4;
          }

          while (v17);
          if (v82 != (v82 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_141;
          }
        }
      }

      goto LABEL_144;
    }

    do
    {
      do
      {
LABEL_170:
        __break(1u);
LABEL_171:
        v85 = (a2 + 2 * v17);
        v84 = (v28 + v17);
        do
        {
LABEL_141:
          v86 = v85->u8[0];
          v85 = (v85 + 2);
          v28 = v86;
          *v84++ = v86;
        }

        while (v84 != v27);
LABEL_144:
        v27 = *(v14 + 4);
      }

      while (v5 < v27);
LABEL_145:
      ;
    }

    while (v5 == v27);
    *(v9 + v27) = 40;
    v74 = v6[4].u32[1];
    if (!v74)
    {
      goto LABEL_147;
    }

    goto LABEL_105;
  }

LABEL_62:
  v54 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((v7 + 64));
  if (!v54)
  {
    goto LABEL_104;
  }

  if (!a2)
  {
    goto LABEL_170;
  }

  *v54 = 32;
  v9 = (v54 + 1);
  v5 = &a2[-1].u64[1] + 7;
  if (!v14)
  {
    v27 = 0;
    goto LABEL_102;
  }

  a2 = *(v14 + 8);
  v55 = *(v14 + 4);
  if ((*(v14 + 16) & 4) != 0)
  {
    v59 = v9 + v55;
    if (v55 < 0x40)
    {
      v28 = (v54 + 1);
    }

    else
    {
      v28 = v9 + 2 * (v55 & 0xFFFFFFC0);
      v60 = 0uLL;
      v61 = (v54 + 1);
      do
      {
        v104.val[0] = *a2;
        v62 = a2[1];
        v105.val[0] = a2[2];
        v63 = a2[3];
        a2 += 4;
        v64 = v63;
        v105.val[1] = 0uLL;
        v106.val[0] = v62;
        v104.val[1] = 0uLL;
        v65 = v61;
        vst2q_s8(v65, v104);
        v65 += 32;
        v106.val[1] = 0uLL;
        vst2q_s8(v65, v106);
        v66 = v61 + 64;
        vst2q_s8(v66, v105);
        v67 = v61 + 96;
        vst2q_s8(v67, *(&v60 - 1));
        v61 += 128;
      }

      while (v61 != v28);
    }

    if (v28 == v59)
    {
      goto LABEL_101;
    }

    v68 = &v54[v55] - v28;
    if (v68 < 0xE || (v28 < a2->u64 + (v68 >> 1) + 1 ? (v69 = a2 >= (v68 & 0xFFFFFFFFFFFFFFFELL) + v28 + 2) : (v69 = 1), !v69))
    {
      v71 = a2;
      v72 = v28;
      goto LABEL_98;
    }

    v70 = (v68 >> 1) + 1;
    if (v68 >= 0x3E)
    {
      v17 = v70 & 0xFFFFFFFFFFFFFFE0;
      v87 = (v28 + 32);
      v88 = &a2[1];
      v89 = v70 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v90 = *v88[-2].i8;
        v91 = vmovl_u8(*v88);
        v92 = vmovl_high_u8(*v88->i8);
        v87[-2] = vmovl_u8(*v90.i8);
        v87[-1] = vmovl_high_u8(v90);
        *v87 = v91;
        v87[1] = v92;
        v87 += 4;
        v88 += 4;
        v89 -= 32;
      }

      while (v89);
      if (v70 == v17)
      {
        goto LABEL_101;
      }

      if ((v70 & 0x18) == 0)
      {
        v72 = (v28 + 2 * v17);
        v71 = (a2 + v17);
        goto LABEL_98;
      }
    }

    else
    {
      v17 = 0;
    }

    v71 = (a2 + (v70 & 0xFFFFFFFFFFFFFFF8));
    v72 = (v28 + 2 * (v70 & 0xFFFFFFFFFFFFFFF8));
    v28 += 2 * v17;
    v93 = &a2->i8[v17];
    v17 -= v70 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v94 = *v93++;
      *v28 = vmovl_u8(v94);
      v28 += 16;
      v17 += 8;
    }

    while (v17);
    if (v70 == (v70 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_101;
    }

    do
    {
LABEL_98:
      v73 = v71->u8[0];
      v71 = (v71 + 1);
      v28 = v73;
      *v72++ = v73;
    }

    while (v72 != v59);
    goto LABEL_101;
  }

  if (v55)
  {
    if (v55 == 1)
    {
      *v9 = a2->i16[0];
    }

    else
    {
      memcpy(v54 + 1, a2, 2 * v55);
    }
  }

LABEL_101:
  v27 = *(v14 + 4);
  if (v5 < v27)
  {
    goto LABEL_170;
  }

LABEL_102:
  if (v5 == v27)
  {
    goto LABEL_170;
  }

  *(v9 + v27) = 40;
LABEL_104:
  v74 = v6[4].u32[1];
  if (!v74)
  {
    goto LABEL_147;
  }

LABEL_105:
  v75 = v6[3].i64[1];
  v76 = *(*v75 + 24);
  if (v76 <= 1)
  {
    if (*(*v75 + 24))
    {
      if (v76 == 1)
      {
        if ((*(v7 + 32) & 1) == 0)
        {
          (*(*v7 + 344))(v7);
        }

        WTF::StringBuilder::append();
      }

      goto LABEL_116;
    }

    goto LABEL_114;
  }

  if (v76 == 3)
  {
LABEL_114:
    if ((*(v7 + 32) & 1) == 0)
    {
      (*(*v7 + 344))(v7);
    }

    goto LABEL_116;
  }

  if (v76 == 2)
  {
    WGSL::Metal::FunctionDefinitionWriter::visitArgumentBufferParameter(v7, *v75);
  }

LABEL_116:
  if (v74 != 1)
  {
    v77 = (v75 + 1);
    for (i = 8 * v74 - 8; i; i -= 8)
    {
      v79 = *v77;
      WTF::StringBuilder::append();
      v80 = v79[24];
      if (v80 > 1)
      {
        if (v80 == 2)
        {
          WGSL::Metal::FunctionDefinitionWriter::visitArgumentBufferParameter(v7, v79);
        }

        else if (v80 == 3)
        {
LABEL_127:
          if ((*(v7 + 32) & 1) == 0)
          {
            (*(*v7 + 344))(v7, v79);
          }
        }
      }

      else
      {
        if (!v79[24])
        {
          goto LABEL_127;
        }

        if (v80 == 1)
        {
          if ((*(v7 + 32) & 1) == 0)
          {
            (*(*v7 + 344))(v7, v79);
          }

          WTF::StringBuilder::append();
        }
      }

      ++v77;
    }
  }

LABEL_147:
  if (*(v7 + 115) == 1)
  {
    *(v7 + 115) = 0;
  }

  *(v7 + 120) = v6;
  WTF::StringBuilder::append();
  if ((*(v7 + 32) & 1) == 0)
  {
    (*(*v7 + 400))(v7, v6[7].i64[0]);
  }

  this = WTF::StringBuilder::append();
  *(v7 + 120) = 0;
  return this;
}

uint64_t WTF::StringBuilder::append(uint64_t this, __int16 a2)
{
  v2 = *(this + 8);
  if (!v2)
  {
    return WTF::StringBuilder::append();
  }

  v3 = *(this + 16);
  if (v3 >= *(v2 + 4) || *this)
  {
    return WTF::StringBuilder::append();
  }

  v4 = *(v2 + 16);
  v5 = *(v2 + 8);
  *(this + 16) = v3 + 1;
  if ((v4 & 4) != 0)
  {
    *(v5 + v3) = a2;
  }

  else
  {
    *(v5 + 2 * v3) = a2;
  }

  return this;
}

int8x16_t **WGSL::Metal::FunctionDefinitionWriter::visit(int8x16_t **this, const WGSL::Type *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v7 = this;
  v274 = *MEMORY[0x277D85DE8];
  if (*(this + 109) != 1)
  {
    if (*(this + 111) == 1)
    {
      if (*(this + 110) == 1)
      {
        v15 = *(a2 + 48);
        if (v15 == 255)
        {
          v16 = -1;
        }

        else
        {
          v16 = *(a2 + 48);
        }

        v9 = 1;
        v10 = *(a2 + 48);
        switch(v16)
        {
          case 1:
            goto LABEL_381;
          case 2:
            goto LABEL_530;
          case 3:
            goto LABEL_623;
          case 4:
            goto LABEL_617;
          case 5:
            goto LABEL_470;
          case 6:
            goto LABEL_679;
          case 7:
            goto LABEL_482;
          case 8:
            goto LABEL_356;
          case 9:
            goto LABEL_445;
          case 10:
            if (v15 != 10)
            {
              goto LABEL_683;
            }

            v17 = *a2;
            if (v17 > 2)
            {
              goto LABEL_22;
            }

            if (!*a2 || v17 == 2)
            {
              goto LABEL_100;
            }

            break;
          case 11:
            goto LABEL_322;
          case 12:
            goto LABEL_465;
          case 13:
            goto LABEL_682;
          default:
            goto LABEL_8;
        }

        while (1)
        {
          v6 = *(v6 + 1);
          v10 = *(v6 + 48);
          if (v10 == 255)
          {
            v58 = -1;
          }

          else
          {
            v58 = *(v6 + 48);
          }

          if (v58 != 10)
          {
            switch(v58)
            {
              case 1:
                goto LABEL_313;
              case 2:
                goto LABEL_529;
              case 3:
                goto LABEL_622;
              case 4:
                goto LABEL_616;
              case 5:
                goto LABEL_469;
              case 6:
                goto LABEL_679;
              case 7:
                goto LABEL_481;
              case 8:
                goto LABEL_356;
              case 9:
                goto LABEL_445;
              case 10:
                goto LABEL_685;
              case 11:
                goto LABEL_322;
              case 12:
                goto LABEL_465;
              case 13:
                goto LABEL_682;
              default:
                goto LABEL_8;
            }
          }

          if (v10 != 10)
          {
            break;
          }

          v17 = *v6;
          if (v17 > 2)
          {
LABEL_22:
            switch(v17)
            {
              case 3u:
                goto LABEL_165;
              case 4u:
                goto LABEL_167;
              case 5u:
                goto LABEL_87;
            }
          }

          else
          {
            if (*v6)
            {
              v59 = v17 == 2;
            }

            else
            {
              v59 = 1;
            }

            if (v59)
            {
              goto LABEL_100;
            }
          }
        }
      }

      else if (*(this + 113))
      {
        v21 = *(a2 + 48);
        v10 = v21;
        if (v21 == 255)
        {
          v22 = -1;
        }

        else
        {
          v22 = *(a2 + 48);
        }

        if (*(this + 112) == 3)
        {
          v9 = 1;
          switch(v22)
          {
            case 1:
              goto LABEL_381;
            case 2:
              goto LABEL_530;
            case 3:
              goto LABEL_623;
            case 4:
              goto LABEL_617;
            case 5:
              goto LABEL_470;
            case 6:
              goto LABEL_679;
            case 7:
              goto LABEL_482;
            case 8:
              goto LABEL_356;
            case 9:
              goto LABEL_445;
            case 10:
              if (v21 != 10)
              {
                goto LABEL_683;
              }

              v23 = *a2;
              if (v23 > 2)
              {
                goto LABEL_51;
              }

              if (!*a2 || v23 == 2)
              {
                goto LABEL_100;
              }

              break;
            case 11:
              goto LABEL_322;
            case 12:
              goto LABEL_465;
            case 13:
              goto LABEL_682;
            default:
              goto LABEL_8;
          }

          while (1)
          {
            v6 = *(v6 + 1);
            v10 = *(v6 + 48);
            if (v10 == 255)
            {
              v92 = -1;
            }

            else
            {
              v92 = *(v6 + 48);
            }

            if (v92 != 10)
            {
              switch(v92)
              {
                case 1:
                  goto LABEL_313;
                case 2:
                  goto LABEL_529;
                case 3:
                  goto LABEL_622;
                case 4:
                  goto LABEL_616;
                case 5:
                  goto LABEL_469;
                case 6:
                  goto LABEL_679;
                case 7:
                  goto LABEL_481;
                case 8:
                  goto LABEL_356;
                case 9:
                  goto LABEL_445;
                case 10:
                  goto LABEL_685;
                case 11:
                  goto LABEL_322;
                case 12:
                  goto LABEL_465;
                case 13:
                  goto LABEL_682;
                default:
                  goto LABEL_8;
              }
            }

            if (v10 != 10)
            {
              break;
            }

            v23 = *v6;
            if (v23 > 2)
            {
LABEL_51:
              switch(v23)
              {
                case 3u:
                  goto LABEL_165;
                case 4u:
                  goto LABEL_167;
                case 5u:
                  goto LABEL_87;
              }
            }

            else
            {
              if (*v6)
              {
                v93 = v23 == 2;
              }

              else
              {
                v93 = 1;
              }

              if (v93)
              {
                goto LABEL_100;
              }
            }
          }
        }

        else
        {
          v9 = 0;
          switch(v22)
          {
            case 1:
              goto LABEL_381;
            case 2:
              goto LABEL_530;
            case 3:
              goto LABEL_623;
            case 4:
              goto LABEL_617;
            case 5:
              goto LABEL_470;
            case 6:
              goto LABEL_679;
            case 7:
              goto LABEL_482;
            case 8:
              goto LABEL_356;
            case 9:
              goto LABEL_445;
            case 10:
              if (v21 != 10)
              {
                goto LABEL_683;
              }

              v34 = *a2;
              if (v34 > 2)
              {
                goto LABEL_94;
              }

              if (!*a2 || v34 == 2)
              {
                goto LABEL_100;
              }

              break;
            case 11:
              goto LABEL_322;
            case 12:
              goto LABEL_465;
            case 13:
              goto LABEL_682;
            default:
              goto LABEL_8;
          }

          while (1)
          {
            v6 = *(v6 + 1);
            v10 = *(v6 + 48);
            if (v10 == 255)
            {
              v94 = -1;
            }

            else
            {
              v94 = *(v6 + 48);
            }

            if (v94 != 10)
            {
              switch(v94)
              {
                case 1:
                  goto LABEL_316;
                case 2:
                  goto LABEL_317;
                case 3:
                  goto LABEL_319;
                case 4:
                  goto LABEL_318;
                case 5:
                  goto LABEL_315;
                case 6:
                  goto LABEL_679;
                case 7:
                  goto LABEL_320;
                case 8:
                  goto LABEL_356;
                case 9:
                  goto LABEL_445;
                case 10:
                  goto LABEL_685;
                case 11:
                  goto LABEL_322;
                case 12:
                  goto LABEL_465;
                case 13:
                  goto LABEL_682;
                default:
                  goto LABEL_8;
              }
            }

            if (v10 != 10)
            {
              break;
            }

            v34 = *v6;
            if (v34 > 2)
            {
LABEL_94:
              switch(v34)
              {
                case 3u:
                  goto LABEL_165;
                case 4u:
                  goto LABEL_167;
                case 5u:
                  goto LABEL_87;
              }
            }

            else
            {
              if (*v6)
              {
                v95 = v34 == 2;
              }

              else
              {
                v95 = 1;
              }

              if (v95)
              {
                goto LABEL_100;
              }
            }
          }
        }
      }

      else
      {
        v28 = *(a2 + 48);
        if (v28 == 255)
        {
          v29 = -1;
        }

        else
        {
          v29 = *(a2 + 48);
        }

        v9 = 0;
        v10 = *(a2 + 48);
        switch(v29)
        {
          case 1:
            goto LABEL_381;
          case 2:
            goto LABEL_530;
          case 3:
            goto LABEL_623;
          case 4:
            goto LABEL_617;
          case 5:
            goto LABEL_470;
          case 6:
            goto LABEL_679;
          case 7:
            goto LABEL_482;
          case 8:
            goto LABEL_356;
          case 9:
            goto LABEL_445;
          case 10:
            if (v28 != 10)
            {
              goto LABEL_683;
            }

            v30 = *a2;
            if (v30 > 2)
            {
              goto LABEL_78;
            }

            if (!*a2 || v30 == 2)
            {
              goto LABEL_100;
            }

            break;
          case 11:
            goto LABEL_322;
          case 12:
            goto LABEL_465;
          case 13:
            goto LABEL_682;
          default:
            goto LABEL_8;
        }

        while (1)
        {
          v6 = *(v6 + 1);
          v10 = *(v6 + 48);
          if (v10 == 255)
          {
            v79 = -1;
          }

          else
          {
            v79 = *(v6 + 48);
          }

          if (v79 != 10)
          {
            switch(v79)
            {
              case 1:
                goto LABEL_316;
              case 2:
                goto LABEL_317;
              case 3:
                goto LABEL_319;
              case 4:
                goto LABEL_318;
              case 5:
                goto LABEL_315;
              case 6:
                goto LABEL_679;
              case 7:
                goto LABEL_320;
              case 8:
                goto LABEL_356;
              case 9:
                goto LABEL_445;
              case 10:
                goto LABEL_685;
              case 11:
                goto LABEL_322;
              case 12:
                goto LABEL_465;
              case 13:
                goto LABEL_682;
              default:
                goto LABEL_8;
            }
          }

          if (v10 != 10)
          {
            break;
          }

          v30 = *v6;
          if (v30 > 2)
          {
LABEL_78:
            switch(v30)
            {
              case 3u:
                goto LABEL_165;
              case 4u:
                goto LABEL_167;
              case 5u:
                goto LABEL_87;
            }
          }

          else
          {
            if (*v6)
            {
              v80 = v30 == 2;
            }

            else
            {
              v80 = 1;
            }

            if (v80)
            {
              goto LABEL_100;
            }
          }
        }
      }

      goto LABEL_683;
    }

    if (*(this + 113))
    {
      v18 = *(a2 + 48);
      v10 = v18;
      if (v18 == 255)
      {
        v19 = -1;
      }

      else
      {
        v19 = *(a2 + 48);
      }

      if (*(this + 112) == 3)
      {
        v9 = 1;
        switch(v19)
        {
          case 1:
            goto LABEL_381;
          case 2:
            goto LABEL_530;
          case 3:
            goto LABEL_623;
          case 4:
            goto LABEL_617;
          case 5:
            goto LABEL_470;
          case 6:
            goto LABEL_679;
          case 7:
            goto LABEL_482;
          case 8:
            goto LABEL_356;
          case 9:
            goto LABEL_445;
          case 10:
            if (v18 != 10)
            {
              goto LABEL_683;
            }

            v20 = *a2;
            if (v20 > 2)
            {
              goto LABEL_34;
            }

            if (!*a2 || v20 == 2)
            {
              goto LABEL_100;
            }

            break;
          case 11:
            goto LABEL_322;
          case 12:
            goto LABEL_465;
          case 13:
            goto LABEL_682;
          default:
            goto LABEL_8;
        }

        while (1)
        {
          v6 = *(v6 + 1);
          v10 = *(v6 + 48);
          if (v10 == 255)
          {
            v75 = -1;
          }

          else
          {
            v75 = *(v6 + 48);
          }

          if (v75 != 10)
          {
            switch(v75)
            {
              case 1:
LABEL_313:
                a3 = 0;
                v9 = 1;
                goto LABEL_381;
              case 2:
LABEL_529:
                a3 = 0;
                v9 = 1;
                goto LABEL_530;
              case 3:
LABEL_622:
                a3 = 0;
                v9 = 1;
                goto LABEL_623;
              case 4:
LABEL_616:
                a3 = 0;
                v9 = 1;
                goto LABEL_617;
              case 5:
LABEL_469:
                a3 = 0;
                v9 = 1;
                goto LABEL_470;
              case 6:
                goto LABEL_679;
              case 7:
LABEL_481:
                a3 = 0;
                v9 = 1;
                goto LABEL_482;
              case 8:
                goto LABEL_356;
              case 9:
                goto LABEL_445;
              case 10:
                goto LABEL_685;
              case 11:
                goto LABEL_322;
              case 12:
                goto LABEL_465;
              case 13:
                goto LABEL_682;
              default:
                goto LABEL_8;
            }
          }

          if (v10 != 10)
          {
            break;
          }

          v20 = *v6;
          if (v20 > 2)
          {
LABEL_34:
            switch(v20)
            {
              case 3u:
                goto LABEL_165;
              case 4u:
                goto LABEL_167;
              case 5u:
                goto LABEL_87;
            }
          }

          else
          {
            if (*v6)
            {
              v76 = v20 == 2;
            }

            else
            {
              v76 = 1;
            }

            if (v76)
            {
              goto LABEL_100;
            }
          }
        }
      }

      else
      {
        v9 = 0;
        switch(v19)
        {
          case 1:
            goto LABEL_381;
          case 2:
            goto LABEL_530;
          case 3:
            goto LABEL_623;
          case 4:
            goto LABEL_617;
          case 5:
            goto LABEL_470;
          case 6:
            goto LABEL_679;
          case 7:
            goto LABEL_482;
          case 8:
            goto LABEL_356;
          case 9:
            goto LABEL_445;
          case 10:
            if (v18 != 10)
            {
              goto LABEL_683;
            }

            v27 = *a2;
            if (v27 > 2)
            {
              goto LABEL_68;
            }

            if (!*a2 || v27 == 2)
            {
              goto LABEL_100;
            }

            break;
          case 11:
            goto LABEL_322;
          case 12:
            goto LABEL_465;
          case 13:
            goto LABEL_682;
          default:
            goto LABEL_8;
        }

        while (1)
        {
          v6 = *(v6 + 1);
          v10 = *(v6 + 48);
          if (v10 == 255)
          {
            v77 = -1;
          }

          else
          {
            v77 = *(v6 + 48);
          }

          if (v77 != 10)
          {
            switch(v77)
            {
              case 1:
                goto LABEL_316;
              case 2:
                goto LABEL_317;
              case 3:
                goto LABEL_319;
              case 4:
                goto LABEL_318;
              case 5:
                goto LABEL_315;
              case 6:
                goto LABEL_679;
              case 7:
                goto LABEL_320;
              case 8:
                goto LABEL_356;
              case 9:
                goto LABEL_445;
              case 10:
                goto LABEL_685;
              case 11:
                goto LABEL_322;
              case 12:
                goto LABEL_465;
              case 13:
                goto LABEL_682;
              default:
                goto LABEL_8;
            }
          }

          if (v10 != 10)
          {
            break;
          }

          v27 = *v6;
          if (v27 > 2)
          {
LABEL_68:
            switch(v27)
            {
              case 3u:
                goto LABEL_165;
              case 4u:
                goto LABEL_167;
              case 5u:
                goto LABEL_87;
            }
          }

          else
          {
            if (*v6)
            {
              v78 = v27 == 2;
            }

            else
            {
              v78 = 1;
            }

            if (v78)
            {
              goto LABEL_100;
            }
          }
        }
      }

LABEL_683:
      mpark::throw_bad_variant_access(this);
    }

    v24 = *(a2 + 48);
    if (v24 == 255)
    {
      v25 = -1;
    }

    else
    {
      v25 = *(a2 + 48);
    }

    v9 = 0;
    v10 = *(a2 + 48);
    switch(v25)
    {
      case 1:
LABEL_381:
        if (v10 != 1)
        {
          goto LABEL_683;
        }

        v116 = v9 | a3;
        if (*(v6 + 8) == 3)
        {
          v117 = v116;
        }

        else
        {
          v117 = 0;
        }

        if (v117 == 1)
        {
          if (*(*v6 + 48))
          {
            goto LABEL_683;
          }

          v118 = **v6;
          if (v118 <= 2)
          {
            if (v118 >= 2)
            {
              v119 = "packed_uint";
              v120 = 11;
            }

            else
            {
              v119 = "packed_int";
              v120 = 10;
            }

            goto LABEL_415;
          }

          if (**v6 > 4u)
          {
            if (v118 != 5)
            {
              if (v118 - 6 < 8)
              {
                __break(0xC471u);
                JUMPOUT(0x22574C52CLL);
              }

              return this;
            }
          }

          else if (v118 != 3)
          {
            v119 = "packed_half";
            v120 = 11;
LABEL_415:
            v272 = v119;
            v273 = v120;
            LOBYTE(v270) = 3;
            return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned char,void>>((this + 8), &v272, &v270);
          }

          v119 = "packed_float";
          v120 = 12;
          goto LABEL_415;
        }

        WTF::StringBuilder::append();
        WGSL::Metal::FunctionDefinitionWriter::visit(v7, *v6, v116, v121, v122);
        v123 = 0;
        v124 = *(v6 + 8);
        v125 = *(v7 + 20);
        v126 = v124;
        do
        {
          ++v123;
          v127 = v126;
          v126 /= 0xAu;
        }

        while (v127 > 9);
        v72 = __CFADD__(v123, 3);
        v128 = v123 + 3;
        if (v72)
        {
          v128 = -1;
        }

        v72 = __CFADD__(v125, v128);
        v129 = v125 + v128;
        if (v72)
        {
          v130 = 0xFFFFFFFFLL;
        }

        else
        {
          v130 = v129;
        }

        v131 = *(v7 + 9);
        if ((v131 || (v131 = *(v7 + 8)) != 0) && (*(v131 + 16) & 4) == 0)
        {
          this = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((v7 + 64));
          if (!this)
          {
            return this;
          }

          *this = 2097196;
          v133 = this + 2;
          if (v132 > 1)
          {
            v134 = v132 - 2;
            BYTE3(v272) = (v124 % 0xAu) | 0x30;
            if (v124 >= 0xA)
            {
              BYTE2(v272) = (v124 / 0xAu - 10 * ((26 * (v124 / 0xAu)) >> 8)) | 0x30;
              if (v124 >= 0x64)
              {
                v135 = 0;
                BYTE1(v272) = ((41 * v124) >> 12) | 0x30;
                v136 = 1;
              }

              else
              {
                v135 = 1;
                v136 = 2;
              }
            }

            else
            {
              v135 = 0;
              v136 = 3;
            }

            if (v132 != 2)
            {
              *v133 = *(&v272 + v136);
              if (v124 >= 0xA)
              {
                if (v132 == 3)
                {
                  goto LABEL_685;
                }

                *(this + 3) = *(&v272 + v136 + 1);
                if ((v135 & 1) == 0)
                {
                  if (v132 == 4)
                  {
                    goto LABEL_685;
                  }

                  *(this + 4) = *(&v272 + v136 + 2);
                }
              }

              LODWORD(v143) = 0;
              do
              {
                v143 = (v143 + 1);
                v144 = v124;
                LOBYTE(v124) = v124 / 0xAu;
              }

              while (v144 > 9);
              goto LABEL_614;
            }
          }
        }

        else
        {
          this = MEMORY[0x22AA68210](v7 + 64, v130);
          if (!this)
          {
            return this;
          }

          *this = 8236;
          if (v137 > 1)
          {
            v138 = (205 * v124) >> 11;
            BYTE3(v272) = (v124 - 10 * v138) | 0x30;
            if (v124 >= 0xA)
            {
              BYTE2(v272) = (v138 - 10 * ((26 * v138) >> 8)) | 0x30;
              if (v124 >= 0x64)
              {
                v139 = 0;
                BYTE1(v272) = ((41 * v124) >> 12) | 0x30;
                v140 = 1;
              }

              else
              {
                v139 = 1;
                v140 = 2;
              }
            }

            else
            {
              v139 = 0;
              v140 = 3;
            }

            if (v137 != 2)
            {
              *(this + 2) = *(&v272 + v140);
              if (v124 >= 0xA)
              {
                if (v137 == 3)
                {
                  goto LABEL_685;
                }

                *(this + 3) = *(&v272 + v140 + 1);
                if ((v139 & 1) == 0)
                {
                  if (v137 == 4)
                  {
                    goto LABEL_685;
                  }

                  *(this + 4) = *(&v272 + v140 + 2);
                }
              }

              LODWORD(v141) = 0;
              do
              {
                v141 = (v141 + 1);
                v142 = v124;
                LOBYTE(v124) = v124 / 0xAu;
              }

              while (v142 > 9);
              if (v137 - 2 > v141)
              {
                *(this + v141 + 2) = 62;
                return this;
              }
            }
          }
        }

        goto LABEL_685;
      case 2:
LABEL_530:
        if (v10 != 2)
        {
          goto LABEL_683;
        }

        WTF::StringBuilder::append();
        WGSL::Metal::FunctionDefinitionWriter::visit(v7, *v6, v9 | a3, v179, v180);
        v181 = 0;
        v182 = *(v6 + 8);
        v183 = *(v6 + 9);
        v184 = *(v7 + 20);
        v185 = v182;
        do
        {
          ++v181;
          v186 = v185;
          v185 /= 0xAu;
        }

        while (v186 > 9);
        v187 = 0;
        v188 = v183;
        do
        {
          ++v187;
          v189 = v188;
          v188 /= 0xAu;
        }

        while (v189 > 9);
        v72 = __CFADD__(v187, 3);
        v190 = v187 + 3;
        if (v72)
        {
          v190 = -1;
        }

        v72 = __CFADD__(v181, v190);
        v191 = v181 + v190;
        if (v72)
        {
          v191 = -1;
        }

        v72 = __CFADD__(v191, 2);
        v192 = v191 + 2;
        if (v72)
        {
          v192 = -1;
        }

        v72 = __CFADD__(v184, v192);
        v193 = v184 + v192;
        if (v72)
        {
          v194 = 0xFFFFFFFFLL;
        }

        else
        {
          v194 = v193;
        }

        v195 = *(v7 + 9);
        if ((v195 || (v195 = *(v7 + 8)) != 0) && (*(v195 + 16) & 4) == 0)
        {
          this = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((v7 + 64));
          if (!this)
          {
            return this;
          }

          *this = 2097196;
          v197 = this + 2;
          if (v196 > 1)
          {
            v198 = v196 - 2;
            BYTE3(v272) = (v182 % 0xAu) | 0x30;
            if (v182 >= 0xA)
            {
              BYTE2(v272) = (v182 / 0xAu - 10 * ((26 * (v182 / 0xAu)) >> 8)) | 0x30;
              if (v182 >= 0x64)
              {
                v199 = 0;
                BYTE1(v272) = ((41 * v182) >> 12) | 0x30;
                v200 = 1;
              }

              else
              {
                v199 = 1;
                v200 = 2;
              }
            }

            else
            {
              v199 = 0;
              v200 = 3;
            }

            if (v196 != 2)
            {
              *v197 = *(&v272 + v200);
              if (v182 >= 0xA)
              {
                if (v196 == 3)
                {
                  goto LABEL_685;
                }

                *(this + 3) = *(&v272 + v200 + 1);
                if ((v199 & 1) == 0)
                {
                  if (v196 == 4)
                  {
                    goto LABEL_685;
                  }

                  *(this + 4) = *(&v272 + v200 + 2);
                }
              }

              LODWORD(v217) = 0;
              do
              {
                v217 = (v217 + 1);
                v218 = v182;
                LOBYTE(v182) = v182 / 0xAu;
              }

              while (v218 > 9);
              v72 = v198 >= v217;
              v219 = v198 - v217;
              if (v72)
              {
                v220 = &v197[v217];
                *v220 = 2097196;
                v133 = v220 + 2;
                if (v219 > 1)
                {
                  v134 = v219 - 2;
                  BYTE3(v272) = (v183 % 0xAu) | 0x30;
                  if (v183 >= 0xA)
                  {
                    BYTE2(v272) = (v183 / 0xAu - 10 * ((26 * (v183 / 0xAu)) >> 8)) | 0x30;
                    if (v183 >= 0x64)
                    {
                      v221 = 0;
                      BYTE1(v272) = ((41 * v183) >> 12) | 0x30;
                      v222 = 1;
                    }

                    else
                    {
                      v221 = 1;
                      v222 = 2;
                    }
                  }

                  else
                  {
                    v221 = 0;
                    v222 = 3;
                  }

                  if (v134)
                  {
                    *v133 = *(&v272 + v222);
                    if (v183 >= 0xA)
                    {
                      if (v134 == 1)
                      {
                        goto LABEL_685;
                      }

                      v220[3] = *(&v272 + v222 + 1);
                      if ((v221 & 1) == 0)
                      {
                        if (v134 == 2)
                        {
                          goto LABEL_685;
                        }

                        v220[4] = *(&v272 + v222 + 2);
                      }
                    }

                    LODWORD(v143) = 0;
                    do
                    {
                      v143 = (v143 + 1);
                      v223 = v183;
                      LOBYTE(v183) = v183 / 0xAu;
                    }

                    while (v223 > 9);
LABEL_614:
                    if (v134 > v143)
                    {
                      v133[v143] = 62;
                      return this;
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          this = MEMORY[0x22AA68210](v7 + 64, v194);
          if (!this)
          {
            return this;
          }

          *this = 8236;
          if (v201 > 1)
          {
            v202 = v201 - 2;
            v203 = (205 * v182) >> 11;
            BYTE3(v272) = (v182 - 10 * v203) | 0x30;
            if (v182 >= 0xA)
            {
              BYTE2(v272) = (v203 - 10 * ((26 * v203) >> 8)) | 0x30;
              if (v182 >= 0x64)
              {
                v204 = 0;
                BYTE1(v272) = ((41 * v182) >> 12) | 0x30;
                v205 = 1;
              }

              else
              {
                v204 = 1;
                v205 = 2;
              }
            }

            else
            {
              v204 = 0;
              v205 = 3;
            }

            if (v201 != 2)
            {
              *(this + 2) = *(&v272 + v205);
              if (v182 >= 0xA)
              {
                if (v201 == 3)
                {
                  goto LABEL_685;
                }

                *(this + 3) = *(&v272 + v205 + 1);
                if ((v204 & 1) == 0)
                {
                  if (v201 == 4)
                  {
                    goto LABEL_685;
                  }

                  *(this + 4) = *(&v272 + v205 + 2);
                }
              }

              LODWORD(v206) = 0;
              do
              {
                v206 = (v206 + 1);
                v207 = v182;
                LOBYTE(v182) = v182 / 0xAu;
              }

              while (v207 > 9);
              v72 = v202 >= v206;
              v208 = v202 - v206;
              if (v72)
              {
                v209 = this + v206 + 2;
                *v209 = 8236;
                if (v208 > 1)
                {
                  v210 = v208 - 2;
                  v211 = (205 * v183) >> 11;
                  BYTE3(v272) = (v183 - 10 * v211) | 0x30;
                  if (v183 >= 0xA)
                  {
                    BYTE2(v272) = (v211 - 10 * ((26 * v211) >> 8)) | 0x30;
                    if (v183 >= 0x64)
                    {
                      v212 = 0;
                      BYTE1(v272) = ((41 * v183) >> 12) | 0x30;
                      v213 = 1;
                    }

                    else
                    {
                      v212 = 1;
                      v213 = 2;
                    }
                  }

                  else
                  {
                    v212 = 0;
                    v213 = 3;
                  }

                  if (v210)
                  {
                    v214 = v209 + 2;
                    v209[2] = *(&v272 + v213);
                    if (v183 >= 0xA)
                    {
                      if (v210 == 1)
                      {
                        goto LABEL_685;
                      }

                      v209[3] = *(&v272 + v213 + 1);
                      if ((v212 & 1) == 0)
                      {
                        if (v210 == 2)
                        {
                          goto LABEL_685;
                        }

                        v209[4] = *(&v272 + v213 + 2);
                      }
                    }

                    LODWORD(v215) = 0;
                    do
                    {
                      v215 = (v215 + 1);
                      v216 = v183;
                      LOBYTE(v183) = v183 / 0xAu;
                    }

                    while (v216 > 9);
                    if (v210 > v215)
                    {
                      v214[v215] = 62;
                      return this;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_685:
        __break(1u);
        JUMPOUT(0x22574D2ACLL);
      case 3:
LABEL_623:
        if (v10 != 3)
        {
          goto LABEL_683;
        }

        v225 = v9 | a3;
        WTF::StringBuilder::append();
        v228 = *v6;
        if (!*v6 || *(v228 + 48) != 1)
        {
          goto LABEL_630;
        }

        v229 = v225 ^ 1;
        if (*(v228 + 8) != 3)
        {
          v229 = 1;
        }

        if ((v229 & 1) == 0)
        {
          v230 = *v6;
          WTF::StringBuilder::append();
          WGSL::Metal::FunctionDefinitionWriter::visit(v7, *v230, 1, v231, v232);
          WTF::StringBuilder::append();
        }

        else
        {
LABEL_630:
          WGSL::Metal::FunctionDefinitionWriter::visit(v7, v228, v225, v226, v227);
        }

        this = WTF::StringBuilder::append();
        v233 = *(v6 + 16);
        if (v233 == 255)
        {
          v234 = -1;
        }

        else
        {
          v234 = *(v6 + 16);
        }

        if (v234 == 2)
        {
          if (v233 != 2)
          {
            goto LABEL_683;
          }

          this = (*(*v7 + 216))(v7, *(v6 + 1));
        }

        else if (v234 == 1)
        {
          if (v233 != 1)
          {
            goto LABEL_683;
          }

          v235 = 0;
          v236 = *(v6 + 2);
          v237 = *(v7 + 20);
          v238 = -1;
          v239 = v236;
          do
          {
            ++v235;
            --v238;
            v240 = v239 > 9;
            v239 /= 0xAu;
          }

          while (v240);
          if (v237 >= v238)
          {
            v237 = v238;
          }

          v241 = *(v7 + 9);
          if ((v241 || (v241 = *(v7 + 8)) != 0) && (*(v241 + 16) & 4) == 0)
          {
            this = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((v7 + 64));
            if (this)
            {
              this = WTF::writeIntegerToBufferImpl<char16_t,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v236, this, v242);
            }
          }

          else
          {
            this = MEMORY[0x22AA68210](v7 + 64, v237 + v235);
            if (this)
            {
              this = WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v236, this, v243);
            }
          }
        }

        else
        {
          if (*(v6 + 16))
          {
            goto LABEL_683;
          }

          LODWORD(v272) = 1;
          this = WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<int,void>>((v7 + 64), &v272);
        }

LABEL_652:
        LOBYTE(v272) = 62;
        v244 = *(v7 + 9);
        if (!v244)
        {
          return WTF::StringBuilder::append();
        }

        v245 = *(v7 + 20);
        if (v245 >= *(v244 + 4) || *(v7 + 8))
        {
          return WTF::StringBuilder::append();
        }

        v246 = *(v244 + 16);
        v247 = *(v244 + 8);
        *(v7 + 20) = v245 + 1;
        if ((v246 & 4) != 0)
        {
          *(v247 + v245) = 62;
        }

        else
        {
          *(v247 + 2 * v245) = 62;
        }

        return this;
      case 4:
LABEL_617:
        if (v10 != 4)
        {
          goto LABEL_683;
        }

        v224 = *v6;
        if ((v9 | a3) == 1 && *(v224 + 88) == 6)
        {
          v272 = "__PackedType<";
          v273 = 13;
          v269 = *(v224 + 6);
          v270 = ">";
          v271 = 1;
          return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 8), &v272, &v269, &v270);
        }

        else
        {
          v272 = *(v224 + 6);
          return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>((this + 8), &v272);
        }

      case 5:
LABEL_470:
        if (v10 != 5)
        {
          goto LABEL_683;
        }

        v272 = *v6;
        LOBYTE(v270) = 60;
        this = WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>((this + 8), &v272, &v270);
        v151 = *(v6 + 2);
        if (v151)
        {
          v152 = (v151 + 2);
        }

        else
        {
          v152 = 0;
        }

        if (v151)
        {
          v153 = &v151[2 * *v151 + 2];
          if (v152 == v153)
          {
            goto LABEL_652;
          }
        }

        else
        {
          v153 = 0;
          if (!v152)
          {
            goto LABEL_652;
          }
        }

        v155 = *v152;
        v154 = v152 + 1;
        for (this = WGSL::Metal::FunctionDefinitionWriter::visit(v7, v155, v9 | a3, v149, v150); v154 != v153; this = WGSL::Metal::FunctionDefinitionWriter::visit(v7, v156, v9 | a3, v157, v158))
        {
          WTF::StringBuilder::append();
          v156 = *v154++;
        }

        goto LABEL_652;
      case 6:
LABEL_679:
        if (v10 == 6)
        {
          __break(0xC471u);
          JUMPOUT(0x22574D278);
        }

        goto LABEL_683;
      case 7:
LABEL_482:
        if (v10 != 7)
        {
          goto LABEL_683;
        }

        v159 = *(v6 + 8);
        v160 = "sample";
        v161 = 6;
        if (v159 <= 3)
        {
          v167 = "texture2d";
          v168 = "texture2d_array";
          if (v159 == 3)
          {
            v169 = 16;
          }

          else
          {
            v169 = 0;
          }

          if (v159 != 3)
          {
            v168 = 0;
          }

          if (v159 == 2)
          {
            v170 = 10;
          }

          else
          {
            v170 = v169;
          }

          if (v159 != 2)
          {
            v167 = v168;
          }

          v171 = v159 == 1;
          v172 = "sample";
          v173 = 6;
          if (v159 == 1)
          {
            v174 = 10;
          }

          else
          {
            v174 = v170;
          }

          if (v171)
          {
            v175 = "texture1d";
          }

          else
          {
            v175 = v167;
          }
        }

        else
        {
          if (*(v6 + 8) > 5u)
          {
            v162 = "texturecube_array";
            v163 = 18;
            v164 = "texture2d_ms";
            if (v159 == 7)
            {
              v160 = "read";
              v161 = 4;
              v165 = 13;
            }

            else
            {
              v165 = 0;
            }

            if (v159 != 7)
            {
              v164 = 0;
            }

            v166 = v159 == 6;
          }

          else
          {
            v162 = "texture3d";
            v163 = 10;
            v164 = "texturecube";
            if (v159 == 5)
            {
              v160 = "sample";
              v161 = 6;
              v165 = 12;
            }

            else
            {
              v165 = 0;
            }

            if (v159 != 5)
            {
              v164 = 0;
            }

            v166 = v159 == 4;
          }

          if (v166)
          {
            v172 = "sample";
          }

          else
          {
            v172 = v160;
          }

          if (v166)
          {
            v173 = 6;
          }

          else
          {
            v173 = v161;
          }

          if (v166)
          {
            v174 = v163;
          }

          else
          {
            v174 = v165;
          }

          if (v166)
          {
            v175 = v162;
          }

          else
          {
            v175 = v164;
          }
        }

        v72 = v174 != 0;
        v176 = v174 - 1;
        if (!v72)
        {
          v176 = 0;
        }

        v272 = v175;
        v273 = v176;
        LOBYTE(v270) = 60;
        WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 8), &v272, &v270);
        WGSL::Metal::FunctionDefinitionWriter::visit(v7, *v6, v9 | a3, v177, v178);
        v272 = ", access::";
        v273 = 10;
        v270 = v172;
        v271 = v173;
        goto LABEL_528;
      case 8:
LABEL_356:
        if (v10 != 8)
        {
          goto LABEL_683;
        }

        v106 = *v6;
        if (v106 > 2)
        {
          if (v106 == 3)
          {
            v107 = "texture2d_array";
            v108 = 16;
            goto LABEL_368;
          }

          if (v106 != 4)
          {
            v108 = 0;
            v107 = 0;
            goto LABEL_368;
          }

          v107 = "texture3d";
        }

        else
        {
          if (v106 != 1)
          {
            v57 = v106 == 2;
            v107 = "texture2d";
            v108 = 10;
            if (!v57)
            {
              v108 = 0;
              v107 = 0;
            }

LABEL_368:
            v109 = *(v6 + 2);
            if (v109 == 2)
            {
              v110 = "write";
              v111 = 6;
            }

            else if (v109 == 1)
            {
              v110 = "read_write";
              v111 = 11;
            }

            else if (*(v6 + 2))
            {
              v111 = 0;
              v110 = 0;
            }

            else
            {
              v110 = "read";
              v111 = 5;
            }

            v72 = v108 != 0;
            v112 = v108 - 1;
            if (!v72)
            {
              v112 = 0;
            }

            v272 = v107;
            v273 = v112;
            LOBYTE(v270) = 60;
            WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 8), &v272, &v270);
            WGSL::Metal::FunctionDefinitionWriter::visit(v7, *(*(v7 + 12) + qword_225882618[*(v6 + 1)]), 0, v113, v114);
            v272 = ", access::";
            v273 = 10;
            v115 = v111 - 1;
            if (!v111)
            {
              v115 = 0;
            }

            v270 = v110;
            v271 = v115;
LABEL_528:
            LOBYTE(v269) = 62;
            return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((v7 + 64), &v272, &v270, &v269);
          }

          v107 = "texture1d";
        }

        v108 = 10;
        goto LABEL_368;
      case 9:
LABEL_445:
        if (v10 != 9)
        {
          goto LABEL_683;
        }

        v145 = 0;
        v146 = *v6;
        if (v146 <= 2)
        {
          if (v146 == 1)
          {
            v147 = "depth2d";
            v145 = 8;
          }

          else
          {
            v147 = 0;
            if (v146 == 2)
            {
              v147 = "depth2d_array";
              v145 = 14;
            }
          }
        }

        else if (v146 == 3)
        {
          v147 = "depthcube";
          v145 = 10;
        }

        else if (v146 == 4)
        {
          v147 = "depthcube_array";
          v145 = 16;
        }

        else
        {
          v147 = 0;
          if (v146 == 5)
          {
            v147 = "depth2d_ms";
            v145 = 11;
          }
        }

        v72 = v145 != 0;
        v148 = v145 - 1;
        if (!v72)
        {
          v148 = 0;
        }

        v272 = v147;
        v273 = v148;
        v270 = "<float>";
        v271 = 7;
        return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 8), &v272, &v270);
      case 10:
        if (v24 != 10)
        {
          goto LABEL_683;
        }

        v26 = *a2;
        if (v26 > 2)
        {
          goto LABEL_61;
        }

        if (!*a2 || v26 == 2)
        {
          goto LABEL_100;
        }

        while (1)
        {
LABEL_185:
          v6 = *(v6 + 1);
          v10 = *(v6 + 48);
          if (v10 == 255)
          {
            v60 = -1;
          }

          else
          {
            v60 = *(v6 + 48);
          }

          if (v60 != 10)
          {
            switch(v60)
            {
              case 1:
LABEL_316:
                v9 = 0;
                a3 = 0;
                goto LABEL_381;
              case 2:
LABEL_317:
                v9 = 0;
                a3 = 0;
                goto LABEL_530;
              case 3:
LABEL_319:
                v9 = 0;
                a3 = 0;
                goto LABEL_623;
              case 4:
LABEL_318:
                v9 = 0;
                a3 = 0;
                goto LABEL_617;
              case 5:
LABEL_315:
                v9 = 0;
                a3 = 0;
                goto LABEL_470;
              case 6:
                goto LABEL_679;
              case 7:
LABEL_320:
                v9 = 0;
                a3 = 0;
                goto LABEL_482;
              case 8:
                goto LABEL_356;
              case 9:
                goto LABEL_445;
              case 10:
                goto LABEL_685;
              case 11:
                goto LABEL_322;
              case 12:
                goto LABEL_465;
              case 13:
                goto LABEL_682;
              default:
                goto LABEL_8;
            }
          }

          if (v10 != 10)
          {
            goto LABEL_683;
          }

          v26 = *v6;
          if (v26 > 2)
          {
            break;
          }

          if (*v6)
          {
            v61 = v26 == 2;
          }

          else
          {
            v61 = 1;
          }

          if (v61)
          {
LABEL_100:
            v32 = "thread";
            v33 = 6;
            if (*(v6 + 1))
            {
              goto LABEL_102;
            }

            goto LABEL_101;
          }
        }

LABEL_61:
        if (v26 != 3)
        {
          if (v26 == 4)
          {
            goto LABEL_167;
          }

          if (v26 == 5)
          {
LABEL_87:
            v32 = "threadgroup";
            v33 = 11;
            if (*(v6 + 1))
            {
              goto LABEL_102;
            }

            goto LABEL_101;
          }

          goto LABEL_185;
        }

LABEL_165:
        v32 = "device";
        v33 = 6;
        if (*(v6 + 1))
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 11:
LABEL_322:
        if (v10 != 11)
        {
          goto LABEL_683;
        }

        v96 = *v6;
        v97 = 1;
        if (v96 <= 2)
        {
          if (*v6)
          {
            v100 = v96 == 2;
          }

          else
          {
            v100 = 1;
          }

          v97 = !v100;
          if (v100)
          {
            v98 = "thread";
          }

          else
          {
            v98 = 0;
          }

          if (v100)
          {
            v99 = 7;
          }

          else
          {
            v99 = 0;
          }
        }

        else
        {
          switch(v96)
          {
            case 3u:
              v97 = 0;
              v98 = "device";
              v99 = 7;
              break;
            case 4u:
              v97 = 0;
              v98 = "constant";
              v99 = 9;
              break;
            case 5u:
              v97 = 0;
              v98 = "threadgroup";
              v99 = 12;
              break;
            default:
              v98 = 0;
              v99 = 0;
              break;
          }
        }

        if (!*(v6 + 1))
        {
          WTF::StringBuilder::append();
        }

        if ((v97 & 1) == 0)
        {
          v101 = v99 - 1;
          if (!v99)
          {
            v101 = 0;
          }

          v272 = v98;
          v273 = v101;
          LOBYTE(v270) = 32;
          WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((v7 + 64), &v272, &v270);
        }

        this = WGSL::Metal::FunctionDefinitionWriter::visit(v7, *(v6 + 1), *v6 - 3 < 2, a4, a5);
        LOBYTE(v272) = 42;
        v102 = *(v7 + 9);
        if (!v102)
        {
          return WTF::StringBuilder::append();
        }

        v103 = *(v7 + 20);
        if (v103 >= *(v102 + 4) || *(v7 + 8))
        {
          return WTF::StringBuilder::append();
        }

        v104 = *(v102 + 16);
        v105 = *(v102 + 8);
        *(v7 + 20) = v103 + 1;
        if ((v104 & 4) != 0)
        {
          *(v105 + v103) = 42;
        }

        else
        {
          *(v105 + 2 * v103) = 42;
        }

        return this;
      case 12:
LABEL_465:
        if (v10 == 12)
        {
          goto LABEL_466;
        }

        goto LABEL_683;
      case 13:
LABEL_682:
        if (v10 != 13)
        {
          goto LABEL_683;
        }

        __break(0xC471u);
        goto LABEL_685;
      default:
LABEL_8:
        if (v10)
        {
          goto LABEL_683;
        }

        v12 = *v6;
        if (v12 <= 4)
        {
          if (*v6 >= 4u && v12 != 4)
          {
            return this;
          }
        }

        else if (*v6 > 8u)
        {
          if (v12 != 9 && v12 != 10)
          {
            if (v12 - 11 < 3)
            {
              __break(0xC471u);
              JUMPOUT(0x22574BCC4);
            }

            return this;
          }
        }

        else
        {
          if (v12 - 6 < 3)
          {
            WTF::StringPrintStream::StringPrintStream(&v272);
            WGSL::Type::dump(v6, &v272);
            WTF::StringPrintStream::toString(&v270, &v272);
            WTF::StringPrintStream::~StringPrintStream(&v272);
            v13 = *(v7 + 20);
            if (v270)
            {
              v14 = *(v270 + 1);
            }

            else
            {
              v14 = 0;
            }

            v72 = __CFADD__(v13, v14);
            v41 = v13 + v14;
            if (v72)
            {
              v42 = 0xFFFFFFFFLL;
            }

            else
            {
              v42 = v41;
            }

            v43 = *(v7 + 9);
            if ((v43 || (v43 = *(v7 + 8)) != 0) && (*(v43 + 16) & 4) == 0 || v270 && (*(v270 + 16) & 4) == 0)
            {
              v44 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((v7 + 64));
              if (v44)
              {
                v46 = v44;
                this = v270;
                if (!v270)
                {
                  return this;
                }

                atomic_fetch_add_explicit(v270, 2u, memory_order_relaxed);
                v45 = this[1];
                v47 = *(this + 1);
                if ((this[2] & 4) == 0)
                {
                  if (!v47)
                  {
                    goto LABEL_276;
                  }

                  if (v47 == 1)
                  {
                    v46->i16[0] = v45->i16[0];
                    goto LABEL_276;
                  }

                  v49 = 2 * v47;
LABEL_263:
                  v84 = this;
                  memcpy(v46, v45, v49);
                  this = v84;
                  goto LABEL_276;
                }

                v62 = (v46 + 2 * v47);
                if (v47 >= 0x40)
                {
                  v63 = v46;
                  v46 = (v46 + 2 * (v47 & 0xFFFFFFC0));
                  v64 = 0uLL;
                  do
                  {
                    v276.val[0] = *v45;
                    v65 = v45[1];
                    v277.val[0] = v45[2];
                    v66 = v45[3];
                    v45 += 4;
                    v67 = v66;
                    v277.val[1] = 0uLL;
                    v278.val[0] = v65;
                    v276.val[1] = 0uLL;
                    v68 = v63;
                    vst2q_s8(v68, v276);
                    v68 += 32;
                    v278.val[1] = 0uLL;
                    vst2q_s8(v68, v278);
                    v69 = v63 + 64;
                    vst2q_s8(v69, v277);
                    v70 = v63 + 96;
                    vst2q_s8(v70, *(&v64 - 1));
                    v63 += 128;
                  }

                  while (v63 != v46);
                }

                if (v46 == v62)
                {
                  goto LABEL_276;
                }

                v71 = v62 - v46 - 2;
                if (v71 < 0xE || (v46 < &v45->i8[(v71 >> 1) + 1] ? (v72 = v45 >= (&v46->i16[1] + (v71 & 0xFFFFFFFFFFFFFFFELL))) : (v72 = 1), !v72))
                {
                  v81 = v45;
                  v82 = v46;
                  goto LABEL_258;
                }

                v73 = (v71 >> 1) + 1;
                if (v71 >= 0x3E)
                {
                  v74 = v73 & 0xFFFFFFFFFFFFFFE0;
                  v248 = v46 + 2;
                  v249 = &v45[1];
                  v250 = v73 & 0xFFFFFFFFFFFFFFE0;
                  do
                  {
                    v251 = *v249[-2].i8;
                    v252 = vmovl_u8(*v249);
                    v253 = vmovl_high_u8(*v249->i8);
                    v248[-2] = vmovl_u8(*v251.i8);
                    v248[-1] = vmovl_high_u8(v251);
                    *v248 = v252;
                    v248[1] = v253;
                    v248 += 4;
                    v249 += 4;
                    v250 -= 32;
                  }

                  while (v250);
                  if (v73 == v74)
                  {
                    goto LABEL_276;
                  }

                  if ((v73 & 0x18) == 0)
                  {
                    v82 = (v46 + 2 * v74);
                    v81 = (v45 + v74);
                    do
                    {
LABEL_258:
                      v83 = v81->u8[0];
                      v81 = (v81 + 1);
                      v82->i16[0] = v83;
                      v82 = (v82 + 2);
                    }

                    while (v82 != v62);
                    goto LABEL_276;
                  }
                }

                else
                {
                  v74 = 0;
                }

                v81 = (v45 + (v73 & 0xFFFFFFFFFFFFFFF8));
                v82 = (v46 + 2 * (v73 & 0xFFFFFFFFFFFFFFF8));
                v254 = (v46 + 2 * v74);
                v255 = &v45->i8[v74];
                v256 = v74 - (v73 & 0xFFFFFFFFFFFFFFF8);
                do
                {
                  v257 = *v255++;
                  *v254++ = vmovl_u8(v257);
                  v256 += 8;
                }

                while (v256);
                if (v73 != (v73 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_258;
                }

LABEL_276:
                if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(this, v45);
                }
              }

LABEL_278:
              this = v270;
              v270 = 0;
              if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                return WTF::StringImpl::destroy(this, v45);
              }

              return this;
            }

            v48 = MEMORY[0x22AA68210](v7 + 64, v42);
            if (!v48)
            {
              goto LABEL_278;
            }

            v46 = v48;
            this = v270;
            if (!v270)
            {
              return this;
            }

            atomic_fetch_add_explicit(v270, 2u, memory_order_relaxed);
            v45 = this[1];
            v49 = *(this + 1);
            if ((this[2] & 4) != 0)
            {
              if (!v49)
              {
                goto LABEL_276;
              }

              if (v49 == 1)
              {
                v46->i8[0] = v45->i8[0];
                goto LABEL_276;
              }

              goto LABEL_263;
            }

            v50 = &v46->i8[v49];
            if (v49 < 0x10)
            {
              v51 = v46;
            }

            else
            {
              v51 = v46;
              do
              {
                v52 = vld2q_s8(v45->i8);
                v45 += 2;
                *v51++ = v52;
              }

              while (v51 != &v46->i8[v49 & 0xFFFFFFF0]);
            }

            if (v51 == v50)
            {
              goto LABEL_276;
            }

            v85 = &v46->i8[v49];
            v86 = &v46->i8[v49] - v51;
            if (v86 < 4 || (v51 < (v45 + 2 * v86) ? (v87 = v45 >= v85) : (v87 = 1), !v87))
            {
              v89 = v51;
              v90 = v45;
              goto LABEL_275;
            }

            if (v86 >= 0x20)
            {
              v88 = v86 & 0xFFFFFFFFFFFFFFE0;
              v258 = v45 + 2;
              v259 = (v51 + 1);
              v260 = v86 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v262 = v258[-2];
                v261 = v258[-1];
                v264 = *v258;
                v263 = v258[1];
                v258 += 4;
                v259[-1] = vuzp1q_s8(v262, v261);
                *v259 = vuzp1q_s8(v264, v263);
                v259 += 2;
                v260 -= 32;
              }

              while (v260);
              if (v86 == v88)
              {
                goto LABEL_276;
              }

              if ((v86 & 0x1C) == 0)
              {
                v90 = (v45 + 2 * v88);
                v89 = (v51 + v88);
                goto LABEL_275;
              }
            }

            else
            {
              v88 = 0;
            }

            v89 = (v51 + (v86 & 0xFFFFFFFFFFFFFFFCLL));
            v90 = (v45 + 2 * (v86 & 0xFFFFFFFFFFFFFFFCLL));
            v265 = (v45 + 2 * v88);
            v266 = (v51 + v88);
            v267 = v88 - (v86 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v268 = *v265++;
              *v266++ = vuzp1_s8(v268, v268).u32[0];
              v267 += 4;
            }

            while (v267);
            if (v86 == (v86 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_276;
            }

            do
            {
LABEL_275:
              v91 = v90->i8[0];
              v90 = (v90 + 2);
              *v89 = v91;
              v89 = (v89 + 1);
            }

            while (v89 != v50);
            goto LABEL_276;
          }

          if (v12 != 5)
          {
            return this;
          }
        }

LABEL_466:

        return WTF::StringBuilder::append();
    }
  }

  v8 = *(this + 108);
  v9 = (v8 | 2) == 7 || *(this + 111) == 1 && *(this + 110) == 1 || *(this + 113) == 1 && *(this + 112) == 3;
  v10 = *(a2 + 48);
  if (v10 == 255)
  {
    v11 = -1;
  }

  else
  {
    v11 = *(a2 + 48);
  }

  switch(v11)
  {
    case 1:
      goto LABEL_381;
    case 2:
      goto LABEL_530;
    case 3:
      goto LABEL_623;
    case 4:
      goto LABEL_617;
    case 5:
      goto LABEL_470;
    case 6:
      goto LABEL_679;
    case 7:
      goto LABEL_482;
    case 8:
      goto LABEL_356;
    case 9:
      goto LABEL_445;
    case 10:
      if (v10 != 10)
      {
        goto LABEL_683;
      }

      v31 = *a2;
      if (v31 <= 2)
      {
        if (!*a2 || v31 == 2)
        {
          goto LABEL_100;
        }

        goto LABEL_137;
      }

      if (v31 == 3)
      {
        goto LABEL_165;
      }

      if (v31 != 4)
      {
        if (v31 == 5)
        {
          goto LABEL_87;
        }

LABEL_137:
        v53 = v8 | 2;
        while (1)
        {
          while (1)
          {
            if (v53 == 7 || *(this + 111) == 1 && *(this + 110) == 1 || *(this + 113) == 1 && *(this + 112) == 3)
            {
              v9 = 1;
              v6 = *(v6 + 1);
              v54 = *(v6 + 48);
              if (v54 == 255)
              {
                v55 = -1;
              }

              else
              {
                v55 = *(v6 + 48);
              }

              if (v55 != 10)
              {
LABEL_163:
                switch(v55)
                {
                  case 1:
                    a3 = 0;
                    v10 = v54;
                    goto LABEL_381;
                  case 2:
                    a3 = 0;
                    v10 = v54;
                    goto LABEL_530;
                  case 3:
                    a3 = 0;
                    v10 = v54;
                    goto LABEL_623;
                  case 4:
                    a3 = 0;
                    v10 = v54;
                    goto LABEL_617;
                  case 5:
                    a3 = 0;
                    v10 = v54;
                    goto LABEL_470;
                  case 6:
                    v10 = v54;
                    goto LABEL_679;
                  case 7:
                    a3 = 0;
                    v10 = v54;
                    goto LABEL_482;
                  case 8:
                    v10 = v54;
                    goto LABEL_356;
                  case 9:
                    v10 = v54;
                    goto LABEL_445;
                  case 10:
                    goto LABEL_685;
                  case 11:
                    v10 = v54;
                    goto LABEL_322;
                  case 12:
                    v10 = v54;
                    goto LABEL_465;
                  case 13:
                    v10 = v54;
                    goto LABEL_682;
                  default:
                    v10 = v54;
                    goto LABEL_8;
                }
              }
            }

            else
            {
              v9 = 0;
              v6 = *(v6 + 1);
              v54 = *(v6 + 48);
              if (v54 == 255)
              {
                v55 = -1;
              }

              else
              {
                v55 = *(v6 + 48);
              }

              if (v55 != 10)
              {
                goto LABEL_163;
              }
            }

            if (v54 != 10)
            {
              goto LABEL_683;
            }

            v56 = *v6;
            if (v56 > 2)
            {
              break;
            }

            if (*v6)
            {
              v57 = v56 == 2;
            }

            else
            {
              v57 = 1;
            }

            if (v57)
            {
              goto LABEL_100;
            }
          }

          if (v56 == 3)
          {
            goto LABEL_165;
          }

          if (v56 == 4)
          {
            break;
          }

          if (v56 == 5)
          {
            goto LABEL_87;
          }
        }
      }

LABEL_167:
      v32 = "constant";
      v33 = 8;
      if (!*(v6 + 1))
      {
LABEL_101:
        WTF::StringBuilder::append();
      }

LABEL_102:
      v272 = v32;
      v273 = v33;
      LOBYTE(v270) = 32;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((v7 + 64), &v272, &v270);
      this = WGSL::Metal::FunctionDefinitionWriter::visit(v7, *(v6 + 1), 0, v35, v36);
      LOBYTE(v272) = 38;
      v37 = *(v7 + 9);
      if (!v37)
      {
        return WTF::StringBuilder::append();
      }

      v38 = *(v7 + 20);
      if (v38 >= *(v37 + 4) || *(v7 + 8))
      {
        return WTF::StringBuilder::append();
      }

      v39 = *(v37 + 16);
      v40 = *(v37 + 8);
      *(v7 + 20) = v38 + 1;
      if ((v39 & 4) != 0)
      {
        *(v40 + v38) = 38;
      }

      else
      {
        *(v40 + 2 * v38) = 38;
      }

      break;
    case 11:
      goto LABEL_322;
    case 12:
      goto LABEL_465;
    case 13:
      goto LABEL_682;
    default:
      goto LABEL_8;
  }

  return this;
}