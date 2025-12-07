uint64_t std::experimental::fundamentals_v3::expected<WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::CompilationMessage>::~expected(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 24) != 255)
  {
    v2 = *result;
    if (*(result + 24))
    {
      *result = 0;
      if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v3 = result;
        WTF::StringImpl::destroy(v2, a2);
LABEL_8:
        result = v3;
      }
    }

    else if (v2)
    {
      *result = 0;
      *(result + 8) = 0;
      v3 = result;
      WTF::fastFree(v2, a2);
      goto LABEL_8;
    }
  }

  *(result + 24) = -1;
  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseTypeName(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  v6 = *(a2 + 48);
  *(a2 + 48) = v6 + 1;
  if ((v6 + 1) >= 0x10)
  {
    WTF::String::number(&v17, 0xF);
    WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("composite type may not be nested more than ", 44, &v17, " levels", 8, &v13);
    v12 = v5 | ((*(a2 + 96) - v5) << 32);
    *a1 = v13;
    *(a1 + 8) = v4;
    *(a1 + 16) = v12;
    *(a1 + 24) = 1;
    v13 = 0;
    result = v17;
    v17 = 0;
    if (!result)
    {
      goto LABEL_20;
    }

LABEL_18:
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v8);
    }

    goto LABEL_20;
  }

  if (*(a2 + 56) != 8)
  {
    result = WTF::StringImpl::createWithoutCopyingNonEmpty();
    v11 = v5 | ((*(a2 + 96) - v5) << 32);
    *(a1 + 8) = v4;
    *(a1 + 16) = v11;
    *(a1 + 24) = 1;
    goto LABEL_20;
  }

  result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v13, a2);
  if (!v16)
  {
    if (MEMORY[0x22AA683D0](v15, "array", 5))
    {
      result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseArrayType(a1, a2);
      v10 = v16;
      if (v16 == 255)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseTypeNameAfterIdentifier(a1, a2, &v13, v4, v5);
      v10 = v16;
      if (v16 == 255)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_14;
  }

  if (v16 != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  v9 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  *(a1 + 8) = v14;
  *a1 = v9;
  *(a1 + 24) = 1;
  v10 = v16;
  if (v16 != 255)
  {
LABEL_14:
    if (v10)
    {
      result = v13;
      v13 = 0;
      if (!result)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = v15;
      v13 = off_2838D37C0;
      v15 = 0;
      if (!result)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_18;
  }

LABEL_20:
  *(a2 + 48) = v6;
  return result;
}

uint64_t std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 24))
  {
    if (*(result + 24) != 255)
    {
      v2 = *result;
      *result = 0;
      if (v2)
      {
        if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v3 = result;
          WTF::StringImpl::destroy(v2, a2);
          result = v3;
        }
      }
    }
  }

  *(result + 24) = -1;
  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseArrayType(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  v57 = 0;
  v56 = 0;
  v6 = v5;
  if (*(a2 + 56) != 83)
  {
    goto LABEL_65;
  }

  do
  {
    v9 = *(a2 + 36);
    v10 = (*(a2 + 40) + 1);
    *(a2 + 40) = v10;
    if (v9 <= v10)
    {
      __break(0xC471u);
      goto LABEL_107;
    }

    v11 = *(a2 + 24) + 32 * v10;
    v7 = *v11;
    *(a2 + 56) = *v11;
    *(a2 + 60) = *(v11 + 4);
    v12 = *v11;
    if (*v11 <= 8u)
    {
      if (((1 << v12) & 0x38) != 0)
      {
        *(a2 + 80) = *(v11 + 24);
LABEL_4:
        v7 = *(a2 + 56);
        goto LABEL_5;
      }

      if (((1 << v12) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v11 + 24);
        goto LABEL_4;
      }

      if (v12 == 8)
      {
        *(a2 + 80) = 0;
        v13 = *(v11 + 24);
        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
          v14 = *(a2 + 80);
          *(a2 + 80) = v13;
          if (v14)
          {
            if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v14, a2);
            }
          }
        }

        goto LABEL_4;
      }
    }

LABEL_5:
    v8 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v8;
  }

  while (v7 == 82);
  result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseTypeName(&v53, a2);
  if (v55)
  {
    if (v55 == 1)
    {
      v17 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
      }

      *(a1 + 8) = v54;
      *a1 = v17;
      goto LABEL_95;
    }

LABEL_102:
    mpark::throw_bad_variant_access(result);
  }

  v57 = v53;
  v18 = *(a2 + 56);
  if (v18 != 48)
  {
LABEL_44:
    if (v18 == 84)
    {
      while (1)
      {
LABEL_49:
        v29 = *(a2 + 36);
        v30 = (*(a2 + 40) + 1);
        *(a2 + 40) = v30;
        if (v29 <= v30)
        {
          __break(0xC471u);
          JUMPOUT(0x225772C10);
        }

        v31 = *(a2 + 24) + 32 * v30;
        v27 = *v31;
        *(a2 + 56) = *v31;
        *(a2 + 60) = *(v31 + 4);
        v32 = *v31;
        if (*v31 > 8u)
        {
          goto LABEL_48;
        }

        if (((1 << v32) & 0x38) != 0)
        {
          *(a2 + 80) = *(v31 + 24);
        }

        else if (((1 << v32) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v31 + 24);
        }

        else
        {
          if (v32 != 8)
          {
            goto LABEL_48;
          }

          *(a2 + 80) = 0;
          v33 = *(v31 + 24);
          if (v33)
          {
            atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
            v34 = *(a2 + 80);
            *(a2 + 80) = v33;
            if (v34)
            {
              if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v34, v16);
              }
            }
          }
        }

        v27 = *(a2 + 56);
LABEL_48:
        v28 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v28;
        if (v27 != 82)
        {
          if (v55)
          {
            if (v55 != 255)
            {
              v35 = v53;
              v53 = 0;
              if (v35)
              {
                if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v35, v16);
                }
              }
            }
          }

          v6 = *(a2 + 96);
LABEL_65:
          v36 = *(a2 + 8);
          v53 = v4;
          LODWORD(v54) = v5;
          DWORD1(v54) = v6 - v5;
          WGSL::AST::Builder::construct<WGSL::AST::ArrayTypeExpression,WGSL::SourceSpan,WGSL::AST::Expression *&,WGSL::AST::Expression *&,void>(v36, &v53, &v57, &v56);
        }
      }
    }

    WGSL::toString();
    WGSL::toString();
    if (v49)
    {
      v37 = *(v49 + 1);
      if (v48)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v37 = 0;
      if (v48)
      {
LABEL_69:
        v38 = *(v48 + 1);
        if (v38 < 0)
        {
LABEL_106:
          __break(0xC471u);
LABEL_107:
          JUMPOUT(0x225772C08);
        }

LABEL_73:
        v39 = __OFADD__(v38, 12);
        v40 = v38 + 12;
        v41 = v39;
        if (v37 < 0)
        {
          goto LABEL_106;
        }

        if (v41)
        {
          goto LABEL_106;
        }

        v39 = __OFADD__(v37, v40);
        v42 = v37 + v40;
        if (v39)
        {
          goto LABEL_106;
        }

        v43 = (v42 + 11);
        if (__OFADD__(v42, 11))
        {
          goto LABEL_106;
        }

        if (v49)
        {
          v44 = *(v49 + 4);
          v45 = (v44 >> 2) & 1;
          if (!v48 || (v44 & 4) == 0)
          {
LABEL_87:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v43, v45, "Expected a ", 0xBuLL, v49, ", but got a ", 0xCuLL, &v50, v48);
            v46 = v50;
            if (v50)
            {
              if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v48, v16);
              }

              result = v49;
              if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(v49, v16);
              }

              v47 = v5 | ((*(a2 + 96) - v5) << 32);
              *a1 = v46;
              *(a1 + 8) = v4;
              *(a1 + 16) = v47;
              goto LABEL_95;
            }

            goto LABEL_106;
          }
        }

        else if (!v48)
        {
          v45 = 1;
          goto LABEL_87;
        }

        v45 = (*(v48 + 16) >> 2) & 1;
        goto LABEL_87;
      }
    }

    v38 = 0;
    goto LABEL_73;
  }

  while (2)
  {
    v19 = *(a2 + 36);
    v20 = (*(a2 + 40) + 1);
    *(a2 + 40) = v20;
    if (v19 <= v20)
    {
      __break(0xC471u);
      JUMPOUT(0x225772C18);
    }

    v21 = *(a2 + 24) + 32 * v20;
    v22 = *v21;
    *(a2 + 56) = *v21;
    *(a2 + 60) = *(v21 + 4);
    v23 = *v21;
    if (*v21 <= 8u)
    {
      if (((1 << v23) & 0x38) != 0)
      {
        *(a2 + 80) = *(v21 + 24);
        goto LABEL_28;
      }

      if (((1 << v23) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v21 + 24);
        goto LABEL_28;
      }

      if (v23 == 8)
      {
        *(a2 + 80) = 0;
        v25 = *(v21 + 24);
        if (v25)
        {
          atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
          v26 = *(a2 + 80);
          *(a2 + 80) = v25;
          if (v26)
          {
            if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v26, v16);
            }
          }
        }

LABEL_28:
        v22 = *(a2 + 56);
      }
    }

    v24 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v24;
    if (v22 == 82)
    {
      continue;
    }

    break;
  }

  if (v22 == 84)
  {
    goto LABEL_49;
  }

  result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v50, a2);
  if (!v52)
  {
    v56 = v50;
    v18 = *(a2 + 56);
    if (v18 == 48)
    {
      WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v16);
      v18 = *(a2 + 56);
    }

    goto LABEL_44;
  }

  if (v52 != 1)
  {
    goto LABEL_102;
  }

  result = v50;
  if (!v50)
  {
    *(a1 + 8) = v51;
    *a1 = 0;
LABEL_95:
    *(a1 + 24) = 1;
    goto LABEL_96;
  }

  atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
  *(a1 + 8) = v51;
  *a1 = result;
  *(a1 + 24) = 1;
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v16);
  }

LABEL_96:
  if (v55)
  {
    if (v55 != 255)
    {
      result = v53;
      v53 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v16);
        }
      }
    }
  }

  return result;
}

WTF *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseTypeNameAfterIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl *a4, unsigned int a5)
{
  if (*(a2 + 56) != 83)
  {
    v18 = *(a2 + 8);
    v19 = *(a2 + 96) - a5;
    v66 = a4;
    *&v67 = __PAIR64__(v19, a5);
    WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>(v18, &v66, a3);
  }

  do
  {
    v12 = *(a2 + 36);
    v13 = (*(a2 + 40) + 1);
    *(a2 + 40) = v13;
    if (v12 <= v13)
    {
      __break(0xC471u);
      JUMPOUT(0x225773208);
    }

    v14 = *(a2 + 24) + 32 * v13;
    v10 = *v14;
    *(a2 + 56) = *v14;
    *(a2 + 60) = *(v14 + 4);
    v15 = *v14;
    if (*v14 <= 8u)
    {
      if (((1 << v15) & 0x38) != 0)
      {
        *(a2 + 80) = *(v14 + 24);
LABEL_4:
        v10 = *(a2 + 56);
        goto LABEL_5;
      }

      if (((1 << v15) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v14 + 24);
        goto LABEL_4;
      }

      if (v15 == 8)
      {
        *(a2 + 80) = 0;
        v16 = *(v14 + 24);
        if (v16)
        {
          atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
          v17 = *(a2 + 80);
          *(a2 + 80) = v16;
          if (v17)
          {
            if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, a2);
            }
          }
        }

        goto LABEL_4;
      }
    }

LABEL_5:
    v11 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v11;
  }

  while (v10 == 82);
  v61 = a4;
  v62 = a5;
  v63 = 0;
  v20 = 0;
  v69 = 0;
  v70 = 0;
  v21 = *a1;
  v22 = a1;
  v23 = *(a1 + 24);
  while (1)
  {
    v24 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseTypeName(&v66, a2);
    if (!v68)
    {
      if (v20 == v70)
      {
        v28 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v69, v20 + 1, &v66);
        v29 = HIDWORD(v70);
        v63 = v69;
        *(v69 + HIDWORD(v70)) = *v28;
        v20 = v29 + 1;
        HIDWORD(v70) = v29 + 1;
        if (*(a2 + 56) == 48)
        {
          goto LABEL_33;
        }

LABEL_28:
        v26 = 4;
        v27 = v68;
        if (v68)
        {
          goto LABEL_44;
        }

        goto LABEL_48;
      }

      *(v63 + v20) = v66;
      v20 = ++HIDWORD(v70);
      if (*(a2 + 56) != 48)
      {
        goto LABEL_28;
      }

      while (1)
      {
LABEL_33:
        v32 = *(a2 + 36);
        v33 = (*(a2 + 40) + 1);
        *(a2 + 40) = v33;
        if (v32 <= v33)
        {
          *(v22 + 24) = v23;
          *v22 = v21;
          __break(0xC471u);
          goto LABEL_108;
        }

        v34 = *(a2 + 24) + 32 * v33;
        v30 = *v34;
        *(a2 + 56) = *v34;
        *(a2 + 60) = *(v34 + 4);
        v35 = *v34;
        if (*v34 <= 8u)
        {
          if (((1 << v35) & 0x38) != 0)
          {
            *(a2 + 80) = *(v34 + 24);
          }

          else if (((1 << v35) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v34 + 24);
          }

          else
          {
            if (v35 != 8)
            {
              goto LABEL_32;
            }

            *(a2 + 80) = 0;
            v36 = *(v34 + 24);
            if (v36)
            {
              atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
              v37 = *(a2 + 80);
              *(a2 + 80) = v36;
              if (v37)
              {
                if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v37, v25);
                }
              }
            }
          }

          v30 = *(a2 + 56);
        }

LABEL_32:
        v31 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v31;
        if (v30 != 82)
        {
          v26 = 0;
          v27 = v68;
          if (v68)
          {
            goto LABEL_44;
          }

          goto LABEL_48;
        }
      }
    }

    if (v68 != 1)
    {
      *(v22 + 24) = v23;
      *v22 = v21;
      mpark::throw_bad_variant_access(v24);
    }

    v21 = v66;
    if (v66)
    {
      atomic_fetch_add_explicit(v66, 2u, memory_order_relaxed);
    }

    *(v22 + 8) = v67;
    v23 = 1;
    v26 = 1;
    v27 = v68;
    if (v68)
    {
LABEL_44:
      if (v27 != 255)
      {
        v38 = v66;
        v66 = 0;
        if (v38)
        {
          if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v38, v25);
          }
        }
      }
    }

LABEL_48:
    if (v26)
    {
      break;
    }

    if (*(a2 + 56) == 84)
    {
      *(v22 + 24) = v23;
      *v22 = v21;
      goto LABEL_57;
    }
  }

  if (v26 != 4)
  {
    *(v22 + 24) = v23;
    *v22 = v21;
    result = v63;
    if (!v63)
    {
      return result;
    }

    goto LABEL_69;
  }

  if (*(a2 + 56) == 84)
  {
    while (1)
    {
LABEL_57:
      v41 = *(a2 + 36);
      v42 = (*(a2 + 40) + 1);
      *(a2 + 40) = v42;
      if (v41 <= v42)
      {
        __break(0xC471u);
        JUMPOUT(0x225773210);
      }

      v43 = *(a2 + 24) + 32 * v42;
      v39 = *v43;
      *(a2 + 56) = *v43;
      *(a2 + 60) = *(v43 + 4);
      v44 = *v43;
      if (*v43 <= 8u)
      {
        if (((1 << v44) & 0x38) != 0)
        {
          *(a2 + 80) = *(v43 + 24);
        }

        else if (((1 << v44) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v43 + 24);
        }

        else
        {
          if (v44 != 8)
          {
            goto LABEL_56;
          }

          *(a2 + 80) = 0;
          v45 = *(v43 + 24);
          if (v45)
          {
            atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed);
            v46 = *(a2 + 80);
            *(a2 + 80) = v45;
            if (v46)
            {
              if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v46, v25);
              }
            }
          }
        }

        v39 = *(a2 + 56);
      }

LABEL_56:
      v40 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v40;
      if (v39 != 82)
      {
        v47 = *(a2 + 8);
        v66 = v61;
        LODWORD(v67) = v62;
        DWORD1(v67) = v40 - v62;
        WGSL::AST::Builder::construct<WGSL::AST::ElaboratedTypeExpression,WGSL::SourceSpan,WGSL::AST::Identifier,WTF::ReferenceWrapperVector<WGSL::AST::Expression,0ul>,void>(v47, &v66, a3, &v69);
      }
    }
  }

  WGSL::toString();
  WGSL::toString();
  if (!v65)
  {
    v50 = 0;
    v51 = v62;
    if (v64)
    {
      goto LABEL_73;
    }

LABEL_80:
    v53 = 12;
    v54 = v49;
    if (v50 < 0)
    {
      goto LABEL_107;
    }

    goto LABEL_84;
  }

  v50 = *(v65 + 1);
  v51 = v62;
  if (!v64)
  {
    goto LABEL_80;
  }

LABEL_73:
  v52 = *(v64 + 1);
  if (v52 < 0)
  {
    goto LABEL_107;
  }

  v49 = __OFADD__(v52, 12);
  v53 = v52 + 12;
  v54 = v49;
  if (v50 < 0)
  {
    goto LABEL_107;
  }

LABEL_84:
  if ((v54 & 1) != 0 || (v49 = __OFADD__(v50, v53), v55 = v50 + v53, v49) || (v56 = (v55 + 11), __OFADD__(v55, 11)))
  {
LABEL_107:
    __break(0xC471u);
LABEL_108:
    JUMPOUT(0x225773200);
  }

  if (!v65)
  {
    if (!v64)
    {
      v58 = 1;
      goto LABEL_94;
    }

LABEL_92:
    v58 = (*(v64 + 16) >> 2) & 1;
    goto LABEL_94;
  }

  v57 = *(v65 + 4);
  v58 = (v57 >> 2) & 1;
  if (v64 && (v57 & 4) != 0)
  {
    goto LABEL_92;
  }

LABEL_94:
  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v56, v58, "Expected a ", 0xBuLL, v65, ", but got a ", 0xCuLL, &v66, v64);
  v59 = v66;
  if (!v66)
  {
    goto LABEL_107;
  }

  if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v64, v25);
  }

  if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v65, v25);
  }

  v60 = v51 | ((*(a2 + 96) - v51) << 32);
  *v22 = v59;
  *(v22 + 8) = v61;
  *(v22 + 16) = v60;
  *(v22 + 24) = 1;
  result = v63;
  if (v63)
  {
LABEL_69:
    v69 = 0;
    LODWORD(v70) = 0;
    return WTF::fastFree(result, v25);
  }

  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(WTF::StringImpl **a1, uint64_t a2)
{
  result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseUnaryExpression(&v31, a2);
  if (v33)
  {
    if (v33 == 1)
    {
      v5 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
      }

      *(a1 + 1) = v32;
      *a1 = v5;
      *(a1 + 24) = 1;
      goto LABEL_37;
    }

    goto LABEL_69;
  }

  v6 = *(a2 + 56);
  if ((v6 - 36) <= 0x2C && ((1 << (v6 - 36)) & 0x100010000001) != 0)
  {
    v26 = *(a2 + 88);
    v8 = *(a2 + 96);
    result = WGSL::toBinaryOperation(v6);
    v37 = result;
    v10 = *a1;
    v11 = *(a1 + 24);
    while (1)
    {
      v14 = *(a2 + 36);
      v15 = (*(a2 + 40) + 1);
      *(a2 + 40) = v15;
      if (v14 <= v15)
      {
        *(a1 + 24) = v11;
        *a1 = v10;
        __break(0xC471u);
        return result;
      }

      v16 = *(a2 + 24) + 32 * v15;
      v12 = *v16;
      *(a2 + 56) = *v16;
      *(a2 + 60) = *(v16 + 4);
      v17 = *v16;
      if (*v16 <= 8u)
      {
        if (((1 << v17) & 0x38) != 0)
        {
          *(a2 + 80) = *(v16 + 24);
        }

        else if (((1 << v17) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v16 + 24);
        }

        else
        {
          if (v17 != 8)
          {
            goto LABEL_14;
          }

          *(a2 + 80) = 0;
          v18 = *(v16 + 24);
          if (v18)
          {
            atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
            result = *(a2 + 80);
            *(a2 + 80) = v18;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v9);
              }
            }
          }
        }

        v12 = *(a2 + 56);
      }

LABEL_14:
      v13 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v13;
      if (v12 != 82)
      {
        result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseUnaryExpression(&v34, a2);
        if (!v36)
        {
          v20 = *(a2 + 8);
          v21 = *(a2 + 96) - v8;
          v28 = v26;
          *&v29 = __PAIR64__(v21, v8);
          WGSL::AST::Builder::construct<WGSL::AST::BinaryExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::BinaryOperation const&,void>(v20, &v28, &v31, &v34, &v37);
        }

        if (v36 == 1)
        {
          v19 = v34;
          if (v34)
          {
            atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
          }

          *(a1 + 1) = v35;
          if (v36)
          {
            if (v36 != 255)
            {
              result = v34;
              v34 = 0;
              if (result)
              {
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v4);
                }
              }
            }
          }

          *(a1 + 24) = 1;
          *a1 = v19;
          goto LABEL_37;
        }

        *(a1 + 24) = v11;
        *a1 = v10;
LABEL_69:
        mpark::throw_bad_variant_access(result);
      }
    }
  }

  result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseRelationalExpressionPostUnary(&v34, a2, &v31);
  if (v36)
  {
    if (v36 != 1)
    {
      goto LABEL_69;
    }

    v22 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
    }

    v23 = a1;
    *(a1 + 1) = v35;
    *a1 = v22;
    goto LABEL_48;
  }

  v24 = *(a2 + 56);
  if (v24 == 37)
  {
    result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseShortCircuitExpression(&v28, a2, &v34, 37, 16);
    if (v30)
    {
      if (v30 != 1)
      {
        goto LABEL_69;
      }

      result = v28;
      if (v28)
      {
        goto LABEL_54;
      }

LABEL_59:
      v23 = a1;
      *a1 = 0;
      *(a1 + 1) = v29;
LABEL_48:
      *(v23 + 24) = 1;
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  if (v24 != 65)
  {
    v25 = v34;
LABEL_62:
    *a1 = v25;
    *(a1 + 24) = 0;
    goto LABEL_63;
  }

  result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseShortCircuitExpression(&v28, a2, &v34, 65, 17);
  if (!v30)
  {
LABEL_61:
    v25 = v28;
    v34 = v28;
    goto LABEL_62;
  }

  if (v30 != 1)
  {
    goto LABEL_69;
  }

  result = v28;
  if (!v28)
  {
    goto LABEL_59;
  }

LABEL_54:
  atomic_fetch_add_explicit(result, 2u, memory_order_relaxed);
  *a1 = result;
  *(a1 + 1) = v29;
  *(a1 + 24) = 1;
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v4);
  }

LABEL_63:
  if (v36)
  {
    if (v36 != 255)
    {
      result = v34;
      if (v34)
      {
        if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

LABEL_37:
  if (v33)
  {
    if (v33 != 255)
    {
      result = v31;
      v31 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  return result;
}

atomic_uint *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseUnaryExpression(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  v6 = *(a2 + 44);
  *(a2 + 44) = v6 + 1;
  if ((v6 + 1) >= 0x81)
  {
    result = WTF::StringImpl::createWithoutCopyingNonEmpty();
    v8 = v5 | ((*(a2 + 96) - v5) << 32);
    *(a1 + 8) = v4;
    *(a1 + 16) = v8;
    *(a1 + 24) = 1;
    goto LABEL_199;
  }

  v9 = *(a2 + 56);
  v10 = (v9 - 36);
  if (v10 > 0x2A)
  {
    goto LABEL_44;
  }

  if (((1 << (v9 - 36)) & 0x50000800021) != 0)
  {
    if (v9 > 58)
    {
      goto LABEL_6;
    }

LABEL_12:
    if (v9 == 36)
    {
      v11 = 0;
      goto LABEL_19;
    }

    if (v9 == 41)
    {
      v11 = 4;
      goto LABEL_19;
    }

LABEL_307:
    __break(0xC471u);
    JUMPOUT(0x2257749D0);
  }

  if (v10 != 24)
  {
LABEL_44:
    if (v9 <= 6)
    {
      if (v9 > 3)
      {
        if (v9 != 4)
        {
          if (v9 != 5)
          {
            *v145 = 6;
            *&v145[4] = *(a2 + 60);
            v146 = *(a2 + 80);
            v147 = 0;
            while (1)
            {
              v26 = *(a2 + 36);
              v27 = (*(a2 + 40) + 1);
              *(a2 + 40) = v27;
              if (v26 <= v27)
              {
                __break(0xC471u);
                JUMPOUT(0x225774978);
              }

              v28 = *(a2 + 24) + 32 * v27;
              v24 = *v28;
              *(a2 + 56) = *v28;
              *(a2 + 60) = *(v28 + 4);
              v29 = *v28;
              if (*v28 <= 8u)
              {
                if (((1 << v29) & 0x38) != 0)
                {
                  *(a2 + 80) = *(v28 + 24);
                }

                else if (((1 << v29) & 0xC4) != 0)
                {
                  *(a2 + 80) = *(v28 + 24);
                }

                else
                {
                  if (v29 != 8)
                  {
                    goto LABEL_51;
                  }

                  *(a2 + 80) = 0;
                  v30 = *(v28 + 24);
                  if (v30)
                  {
                    atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
                    v31 = *(a2 + 80);
                    *(a2 + 80) = v30;
                    if (v31)
                    {
                      if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v31, a2);
                      }
                    }
                  }
                }

                v24 = *(a2 + 56);
              }

LABEL_51:
              v25 = *(a2 + 68);
              *(a2 + 88) = *(a2 + 60);
              *(a2 + 96) = v25;
              if (v24 != 82)
              {
                v94 = *(a2 + 8);
                v142 = v4;
                LODWORD(v143) = v5;
                DWORD1(v143) = v25 - v5;
                WGSL::AST::Builder::construct<WGSL::AST::Float32Literal,WGSL::SourceSpan,double &,void>(v94, &v142, &v146);
              }
            }
          }

          *v145 = 5;
          *&v145[4] = *(a2 + 60);
          v146 = *(a2 + 80);
          v147 = 0;
          while (1)
          {
            v75 = *(a2 + 36);
            v76 = (*(a2 + 40) + 1);
            *(a2 + 40) = v76;
            if (v75 <= v76)
            {
              __break(0xC471u);
              JUMPOUT(0x2257749A8);
            }

            v77 = *(a2 + 24) + 32 * v76;
            v73 = *v77;
            *(a2 + 56) = *v77;
            *(a2 + 60) = *(v77 + 4);
            v78 = *v77;
            if (*v77 <= 8u)
            {
              if (((1 << v78) & 0x38) != 0)
              {
                *(a2 + 80) = *(v77 + 24);
              }

              else if (((1 << v78) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v77 + 24);
              }

              else
              {
                if (v78 != 8)
                {
                  goto LABEL_151;
                }

                *(a2 + 80) = 0;
                v79 = *(v77 + 24);
                if (v79)
                {
                  atomic_fetch_add_explicit(v79, 2u, memory_order_relaxed);
                  v80 = *(a2 + 80);
                  *(a2 + 80) = v79;
                  if (v80)
                  {
                    if (atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v80, a2);
                    }
                  }
                }
              }

              v73 = *(a2 + 56);
            }

LABEL_151:
            v74 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v74;
            if (v73 != 82)
            {
              v95 = *(a2 + 8);
              v142 = v4;
              LODWORD(v143) = v5;
              DWORD1(v143) = v74 - v5;
              WGSL::AST::Builder::construct<WGSL::AST::Unsigned32Literal,WGSL::SourceSpan,long long &,void>(v95, &v142, &v146);
            }
          }
        }

        *v145 = 4;
        *&v145[4] = *(a2 + 60);
        v146 = *(a2 + 80);
        v147 = 0;
        while (1)
        {
          v59 = *(a2 + 36);
          v60 = (*(a2 + 40) + 1);
          *(a2 + 40) = v60;
          if (v59 <= v60)
          {
            __break(0xC471u);
            JUMPOUT(0x225774998);
          }

          v61 = *(a2 + 24) + 32 * v60;
          v57 = *v61;
          *(a2 + 56) = *v61;
          *(a2 + 60) = *(v61 + 4);
          v62 = *v61;
          if (*v61 <= 8u)
          {
            if (((1 << v62) & 0x38) != 0)
            {
              *(a2 + 80) = *(v61 + 24);
            }

            else if (((1 << v62) & 0xC4) != 0)
            {
              *(a2 + 80) = *(v61 + 24);
            }

            else
            {
              if (v62 != 8)
              {
                goto LABEL_123;
              }

              *(a2 + 80) = 0;
              v63 = *(v61 + 24);
              if (v63)
              {
                atomic_fetch_add_explicit(v63, 2u, memory_order_relaxed);
                v64 = *(a2 + 80);
                *(a2 + 80) = v63;
                if (v64)
                {
                  if (atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v64, a2);
                  }
                }
              }
            }

            v57 = *(a2 + 56);
          }

LABEL_123:
          v58 = *(a2 + 68);
          *(a2 + 88) = *(a2 + 60);
          *(a2 + 96) = v58;
          if (v57 != 82)
          {
            v92 = *(a2 + 8);
            v142 = v4;
            LODWORD(v143) = v5;
            DWORD1(v143) = v58 - v5;
            WGSL::AST::Builder::construct<WGSL::AST::Signed32Literal,WGSL::SourceSpan,long long &,void>(v92, &v142, &v146);
          }
        }
      }

      if (v9 != 2)
      {
        if (v9 == 3)
        {
          *v145 = 3;
          *&v145[4] = *(a2 + 60);
          v146 = *(a2 + 80);
          v147 = 0;
          while (1)
          {
            v42 = *(a2 + 36);
            v43 = (*(a2 + 40) + 1);
            *(a2 + 40) = v43;
            if (v42 <= v43)
            {
              __break(0xC471u);
              JUMPOUT(0x225774988);
            }

            v44 = *(a2 + 24) + 32 * v43;
            v40 = *v44;
            *(a2 + 56) = *v44;
            *(a2 + 60) = *(v44 + 4);
            v45 = *v44;
            if (*v44 <= 8u)
            {
              if (((1 << v45) & 0x38) != 0)
              {
                *(a2 + 80) = *(v44 + 24);
              }

              else if (((1 << v45) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v44 + 24);
              }

              else
              {
                if (v45 != 8)
                {
                  goto LABEL_85;
                }

                *(a2 + 80) = 0;
                v46 = *(v44 + 24);
                if (v46)
                {
                  atomic_fetch_add_explicit(v46, 2u, memory_order_relaxed);
                  v47 = *(a2 + 80);
                  *(a2 + 80) = v46;
                  if (v47)
                  {
                    if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v47, a2);
                    }
                  }
                }
              }

              v40 = *(a2 + 56);
            }

LABEL_85:
            v41 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v41;
            if (v40 != 82)
            {
              v90 = *(a2 + 8);
              v142 = v4;
              LODWORD(v143) = v5;
              DWORD1(v143) = v41 - v5;
              WGSL::AST::Builder::construct<WGSL::AST::AbstractIntegerLiteral,WGSL::SourceSpan,long long &,void>(v90, &v142, &v146);
            }
          }
        }

LABEL_176:
        result = WTF::StringImpl::createWithoutCopyingNonEmpty();
        v89 = v5 | ((*(a2 + 96) - v5) << 32);
        goto LABEL_177;
      }

      *v145 = 2;
      *&v145[4] = *(a2 + 60);
      v146 = *(a2 + 80);
      v147 = 0;
      while (1)
      {
        v51 = *(a2 + 36);
        v52 = (*(a2 + 40) + 1);
        *(a2 + 40) = v52;
        if (v51 <= v52)
        {
          __break(0xC471u);
          JUMPOUT(0x225774990);
        }

        v53 = *(a2 + 24) + 32 * v52;
        v49 = *v53;
        *(a2 + 56) = *v53;
        *(a2 + 60) = *(v53 + 4);
        v54 = *v53;
        if (*v53 <= 8u)
        {
          if (((1 << v54) & 0x38) != 0)
          {
            *(a2 + 80) = *(v53 + 24);
          }

          else if (((1 << v54) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v53 + 24);
          }

          else
          {
            if (v54 != 8)
            {
              goto LABEL_107;
            }

            *(a2 + 80) = 0;
            v55 = *(v53 + 24);
            if (v55)
            {
              atomic_fetch_add_explicit(v55, 2u, memory_order_relaxed);
              v56 = *(a2 + 80);
              *(a2 + 80) = v55;
              if (v56)
              {
                if (atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v56, a2);
                }
              }
            }
          }

          v49 = *(a2 + 56);
        }

LABEL_107:
        v50 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v50;
        if (v49 != 82)
        {
          v91 = *(a2 + 8);
          v142 = v4;
          LODWORD(v143) = v5;
          DWORD1(v143) = v50 - v5;
          WGSL::AST::Builder::construct<WGSL::AST::AbstractFloatLiteral,WGSL::SourceSpan,double &,void>(v91, &v142, &v146);
        }
      }
    }

    if (v9 > 21)
    {
      if (v9 != 22)
      {
        if (v9 != 33)
        {
          if (v9 != 67)
          {
            goto LABEL_176;
          }

          while (1)
          {
            v34 = *(a2 + 36);
            v35 = (*(a2 + 40) + 1);
            *(a2 + 40) = v35;
            if (v34 <= v35)
            {
              __break(0xC471u);
              JUMPOUT(0x225774980);
            }

            v36 = *(a2 + 24) + 32 * v35;
            v32 = *v36;
            *(a2 + 56) = *v36;
            *(a2 + 60) = *(v36 + 4);
            v37 = *v36;
            if (*v36 > 8u)
            {
              goto LABEL_69;
            }

            if (((1 << v37) & 0x38) != 0)
            {
              *(a2 + 80) = *(v36 + 24);
            }

            else if (((1 << v37) & 0xC4) != 0)
            {
              *(a2 + 80) = *(v36 + 24);
            }

            else
            {
              if (v37 != 8)
              {
                goto LABEL_69;
              }

              *(a2 + 80) = 0;
              v38 = *(v36 + 24);
              if (v38)
              {
                atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
                v39 = *(a2 + 80);
                *(a2 + 80) = v38;
                if (v39)
                {
                  if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v39, a2);
                  }
                }
              }
            }

            v32 = *(a2 + 56);
LABEL_69:
            v33 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v33;
            if (v32 != 82)
            {
              result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(v145, a2);
              if (v146)
              {
                if (v146 == 1)
                {
                  result = *v145;
                  if (*v145)
                  {
                    atomic_fetch_add_explicit(*v145, 2u, memory_order_relaxed);
                    v136 = *&v145[8];
                    v135 = result;
                    v137 = 1;
                    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
                    {
                      goto LABEL_192;
                    }

LABEL_285:
                    result = WTF::StringImpl::destroy(result, v20);
                    goto LABEL_192;
                  }

                  v136 = *&v145[8];
                  v135 = 0;
LABEL_178:
                  v137 = 1;
                  goto LABEL_192;
                }

LABEL_297:
                mpark::throw_bad_variant_access(result);
              }

              if (*(a2 + 56) == 68)
              {
                while (2)
                {
                  v107 = *(a2 + 36);
                  v108 = (*(a2 + 40) + 1);
                  *(a2 + 40) = v108;
                  if (v107 <= v108)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x2257749E8);
                  }

                  v109 = *(a2 + 24) + 32 * v108;
                  v105 = *v109;
                  *(a2 + 56) = *v109;
                  *(a2 + 60) = *(v109 + 4);
                  v110 = *v109;
                  if (*v109 <= 8u)
                  {
                    if (((1 << v110) & 0x38) != 0)
                    {
                      *(a2 + 80) = *(v109 + 24);
                      goto LABEL_226;
                    }

                    if (((1 << v110) & 0xC4) != 0)
                    {
                      *(a2 + 80) = *(v109 + 24);
                      goto LABEL_226;
                    }

                    if (v110 == 8)
                    {
                      *(a2 + 80) = 0;
                      v111 = *(v109 + 24);
                      if (v111)
                      {
                        atomic_fetch_add_explicit(v111, 2u, memory_order_relaxed);
                        result = *(a2 + 80);
                        *(a2 + 80) = v111;
                        if (result)
                        {
                          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            result = WTF::StringImpl::destroy(result, v20);
                          }
                        }
                      }

LABEL_226:
                      v105 = *(a2 + 56);
                    }
                  }

                  v106 = *(a2 + 68);
                  *(a2 + 88) = *(a2 + 60);
                  *(a2 + 96) = v106;
                  if (v105 != 82)
                  {
                    v135 = *v145;
                    v137 = 0;
                    goto LABEL_192;
                  }

                  continue;
                }
              }

              WGSL::toString();
              WGSL::toString();
              if (v139)
              {
                v114 = *(v139 + 1);
              }

              else
              {
                v114 = 0;
              }

              if (v138)
              {
                v117 = *(v138 + 4);
                if (v117 < 0)
                {
                  goto LABEL_311;
                }
              }

              else
              {
                v117 = 0;
              }

              v118 = __OFADD__(v117, 12);
              v119 = v117 + 12;
              v120 = v118;
              if ((v114 & 0x80000000) == 0 && (v120 & 1) == 0)
              {
                v118 = __OFADD__(v114, v119);
                v121 = v114 + v119;
                if (!v118)
                {
                  v122 = (v121 + 11);
                  if (!__OFADD__(v121, 11))
                  {
                    if (v139)
                    {
                      v123 = *(v139 + 4);
                      v124 = (v123 >> 2) & 1;
                      if (!v138 || (v123 & 4) == 0)
                      {
LABEL_287:
                        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v122, v124, "Expected a ", 0xBuLL, v139, ", but got a ", 0xCuLL, &v142, v138);
                        v133 = v142;
                        if (!v142)
                        {
                          goto LABEL_311;
                        }

                        v134 = v138;
                        *&v138 = 0;
                        if (v134 && atomic_fetch_add_explicit(v134, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v134, v20);
                        }

                        result = v139;
                        v139 = 0;
                        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          result = WTF::StringImpl::destroy(result, v20);
                        }

                        v89 = v5 | ((*(a2 + 96) - v5) << 32);
                        v135 = v133;
LABEL_177:
                        *&v136 = v4;
                        *(&v136 + 1) = v89;
                        goto LABEL_178;
                      }
                    }

                    else if (!v138)
                    {
                      v124 = 1;
                      goto LABEL_287;
                    }

                    v124 = (*(v138 + 16) >> 2) & 1;
                    goto LABEL_287;
                  }
                }
              }

LABEL_311:
              __break(0xC471u);
LABEL_312:
              JUMPOUT(0x225774970);
            }
          }
        }

        while (1)
        {
          v83 = *(a2 + 36);
          v84 = (*(a2 + 40) + 1);
          *(a2 + 40) = v84;
          if (v83 <= v84)
          {
            __break(0xC471u);
            JUMPOUT(0x2257749B0);
          }

          v85 = *(a2 + 24) + 32 * v84;
          v81 = *v85;
          *(a2 + 56) = *v85;
          *(a2 + 60) = *(v85 + 4);
          v86 = *v85;
          if (*v85 > 8u)
          {
            goto LABEL_165;
          }

          if (((1 << v86) & 0x38) != 0)
          {
            *(a2 + 80) = *(v85 + 24);
          }

          else if (((1 << v86) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v85 + 24);
          }

          else
          {
            if (v86 != 8)
            {
              goto LABEL_165;
            }

            *(a2 + 80) = 0;
            v87 = *(v85 + 24);
            if (v87)
            {
              atomic_fetch_add_explicit(v87, 2u, memory_order_relaxed);
              v88 = *(a2 + 80);
              *(a2 + 80) = v87;
              if (v88)
              {
                if (atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v88, a2);
                }
              }
            }
          }

          v81 = *(a2 + 56);
LABEL_165:
          v82 = *(a2 + 68);
          *(a2 + 88) = *(a2 + 60);
          *(a2 + 96) = v82;
          if (v81 != 82)
          {
            v93 = *(a2 + 8);
            *v145 = v4;
            *&v145[8] = v5;
            *&v145[12] = v82 - v5;
            LOBYTE(v142) = 1;
LABEL_191:
            WGSL::AST::Builder::construct<WGSL::AST::BoolLiteral,WGSL::SourceSpan,BOOL,void>(v93, v145, &v142);
          }
        }
      }

      while (1)
      {
        v67 = *(a2 + 36);
        v68 = (*(a2 + 40) + 1);
        *(a2 + 40) = v68;
        if (v67 <= v68)
        {
          __break(0xC471u);
          JUMPOUT(0x2257749A0);
        }

        v69 = *(a2 + 24) + 32 * v68;
        v65 = *v69;
        *(a2 + 56) = *v69;
        *(a2 + 60) = *(v69 + 4);
        v70 = *v69;
        if (*v69 > 8u)
        {
          goto LABEL_137;
        }

        if (((1 << v70) & 0x38) != 0)
        {
          *(a2 + 80) = *(v69 + 24);
        }

        else if (((1 << v70) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v69 + 24);
        }

        else
        {
          if (v70 != 8)
          {
            goto LABEL_137;
          }

          *(a2 + 80) = 0;
          v71 = *(v69 + 24);
          if (v71)
          {
            atomic_fetch_add_explicit(v71, 2u, memory_order_relaxed);
            v72 = *(a2 + 80);
            *(a2 + 80) = v71;
            if (v72)
            {
              if (atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v72, a2);
              }
            }
          }
        }

        v65 = *(a2 + 56);
LABEL_137:
        v66 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v66;
        if (v65 != 82)
        {
          v93 = *(a2 + 8);
          *v145 = v4;
          *&v145[8] = v5;
          *&v145[12] = v66 - v5;
          LOBYTE(v142) = 0;
          goto LABEL_191;
        }
      }
    }

    if (v9 != 7)
    {
      if (v9 != 8)
      {
        goto LABEL_176;
      }

      result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v145, a2);
      if (v147)
      {
        if (v147 != 1)
        {
          goto LABEL_297;
        }

        v48 = *v145;
        if (*v145)
        {
          atomic_fetch_add_explicit(*v145, 2u, memory_order_relaxed);
        }

        v136 = *&v145[8];
        v135 = v48;
LABEL_103:
        v137 = 1;
        goto LABEL_279;
      }

      if (MEMORY[0x22AA683D0](v146, "array", 5))
      {
        result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseArrayType(&v142, a2);
        if (v144)
        {
          if (v144 != 1)
          {
            goto LABEL_297;
          }

          result = v142;
          if (v142)
          {
            atomic_fetch_add_explicit(v142, 2u, memory_order_relaxed);
            v136 = v143;
            v135 = result;
            v137 = 1;
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v20);
            }

            goto LABEL_279;
          }

          v136 = v143;
          v135 = 0;
          goto LABEL_103;
        }

        result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseArgumentExpressionList(&v139, a2);
        if (!v141)
        {
          v129 = *(a2 + 8);
          v130 = *(a2 + 96) - v5;
          *&v138 = v4;
          *(&v138 + 1) = __PAIR64__(v130, v5);
          WGSL::AST::Builder::construct<WGSL::AST::CallExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,WTF::ReferenceWrapperVector<WGSL::AST::Expression,0ul>,void>(v129, &v138, &v142, &v139);
        }

        if (v141 != 1)
        {
          goto LABEL_297;
        }

        v116 = v139;
        if (v139)
        {
          atomic_fetch_add_explicit(v139, 2u, memory_order_relaxed);
        }

        v136 = v140;
        v135 = v116;
        v137 = 1;
        result = std::experimental::fundamentals_v3::expected<WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::CompilationMessage>::~expected(&v139, v115);
      }

      else
      {
        if ((*(a2 + 56) | 0x10) != 0x53)
        {
          v125 = *(a2 + 8);
          v126 = *(a2 + 96) - v5;
          v142 = v4;
          *&v143 = __PAIR64__(v126, v5);
          WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>(v125, &v142, v145);
        }

        result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseTypeNameAfterIdentifier(&v142, a2, v145, v4, v5);
        if (v144)
        {
          if (v144 != 1)
          {
            goto LABEL_297;
          }

          v113 = v142;
          if (v142)
          {
            atomic_fetch_add_explicit(v142, 2u, memory_order_relaxed);
          }

          v136 = v143;
          v135 = v113;
          v137 = 1;
        }

        else
        {
          result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseArgumentExpressionList(&v139, a2);
          if (!v141)
          {
            v131 = *(a2 + 8);
            v132 = *(a2 + 96) - v5;
            *&v138 = v4;
            *(&v138 + 1) = __PAIR64__(v132, v5);
            WGSL::AST::Builder::construct<WGSL::AST::CallExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,WTF::ReferenceWrapperVector<WGSL::AST::Expression,0ul>,void>(v131, &v138, &v142, &v139);
          }

          if (v141 != 1)
          {
            goto LABEL_297;
          }

          v128 = v139;
          if (v139)
          {
            atomic_fetch_add_explicit(v139, 2u, memory_order_relaxed);
          }

          v136 = v140;
          v135 = v128;
          v137 = 1;
          std::experimental::fundamentals_v3::expected<WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::CompilationMessage>::~expected(&v139, v127);
        }

        result = std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v142, v112);
      }

LABEL_279:
      if (v147 == 255)
      {
        goto LABEL_192;
      }

      if (v147)
      {
        result = *v145;
        *v145 = 0;
        if (!result)
        {
          goto LABEL_192;
        }
      }

      else
      {
        result = v146;
        *v145 = off_2838D37C0;
        v146 = 0;
        if (!result)
        {
          goto LABEL_192;
        }
      }

      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        goto LABEL_285;
      }

LABEL_192:
      if (v137)
      {
        if (v137 != 1)
        {
          goto LABEL_297;
        }

        if (v135)
        {
          atomic_fetch_add_explicit(v135, 2u, memory_order_relaxed);
        }

        *(a1 + 8) = v136;
        *a1 = v135;
        *(a1 + 24) = 1;
      }

      else
      {
        result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parsePostfixExpression(a1, a2, v135, v4, v5);
      }

      if (v137)
      {
        result = v135;
        if (v135)
        {
          goto LABEL_42;
        }
      }

      goto LABEL_199;
    }

    if ((*(*a2 + 34) & 1) == 0)
    {
      goto LABEL_176;
    }

    *v145 = 7;
    *&v145[4] = *(a2 + 60);
    v146 = *(a2 + 80);
    v147 = 0;
    while (1)
    {
      v98 = *(a2 + 36);
      v99 = (*(a2 + 40) + 1);
      *(a2 + 40) = v99;
      if (v98 <= v99)
      {
        __break(0xC471u);
        JUMPOUT(0x2257749D8);
      }

      v100 = *(a2 + 24) + 32 * v99;
      v96 = *v100;
      *(a2 + 56) = *v100;
      *(a2 + 60) = *(v100 + 4);
      v101 = *v100;
      if (*v100 <= 8u)
      {
        if (((1 << v101) & 0x38) != 0)
        {
          *(a2 + 80) = *(v100 + 24);
        }

        else if (((1 << v101) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v100 + 24);
        }

        else
        {
          if (v101 != 8)
          {
            goto LABEL_205;
          }

          *(a2 + 80) = 0;
          v102 = *(v100 + 24);
          if (v102)
          {
            atomic_fetch_add_explicit(v102, 2u, memory_order_relaxed);
            v103 = *(a2 + 80);
            *(a2 + 80) = v102;
            if (v103)
            {
              if (atomic_fetch_add_explicit(v103, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v103, a2);
              }
            }
          }
        }

        v96 = *(a2 + 56);
      }

LABEL_205:
      v97 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v97;
      if (v96 != 82)
      {
        v104 = *(a2 + 8);
        v142 = v4;
        LODWORD(v143) = v5;
        DWORD1(v143) = v97 - v5;
        WGSL::AST::Builder::construct<WGSL::AST::Float16Literal,WGSL::SourceSpan,double &,void>(v104, &v142, &v146);
      }
    }
  }

  *(a2 + 56) = 59;
  if (*(a2 + 36) <= (*(a2 + 40) + 1))
  {
    __break(0xC471u);
    JUMPOUT(0x2257749E0);
  }

  *(*(a2 + 24) + 32 * (*(a2 + 40) + 1)) = 59;
  v9 = *(a2 + 56);
  if (v9 <= 58)
  {
    goto LABEL_12;
  }

LABEL_6:
  if (v9 == 59)
  {
    v11 = 3;
    goto LABEL_19;
  }

  if (v9 != 76)
  {
    if (v9 == 78)
    {
      v11 = 1;
      goto LABEL_19;
    }

    goto LABEL_307;
  }

  v11 = 2;
LABEL_19:
  LOBYTE(v139) = v11;
  do
  {
    v14 = *(a2 + 36);
    v15 = (*(a2 + 40) + 1);
    *(a2 + 40) = v15;
    if (v14 <= v15)
    {
      __break(0xC471u);
      goto LABEL_312;
    }

    v16 = *(a2 + 24) + 32 * v15;
    v12 = *v16;
    *(a2 + 56) = *v16;
    *(a2 + 60) = *(v16 + 4);
    v17 = *v16;
    if (*v16 <= 8u)
    {
      if (((1 << v17) & 0x38) != 0)
      {
        *(a2 + 80) = *(v16 + 24);
LABEL_21:
        v12 = *(a2 + 56);
        goto LABEL_22;
      }

      if (((1 << v17) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v16 + 24);
        goto LABEL_21;
      }

      if (v17 == 8)
      {
        *(a2 + 80) = 0;
        v18 = *(v16 + 24);
        if (v18)
        {
          atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
          v19 = *(a2 + 80);
          *(a2 + 80) = v18;
          if (v19)
          {
            if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, a2);
            }
          }
        }

        goto LABEL_21;
      }
    }

LABEL_22:
    v13 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v13;
  }

  while (v12 == 82);
  result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseUnaryExpression(v145, a2);
  if (!v146)
  {
    v22 = *(a2 + 8);
    v23 = *(a2 + 96) - v5;
    v142 = v4;
    *&v143 = __PAIR64__(v23, v5);
    WGSL::AST::Builder::construct<WGSL::AST::UnaryExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::UnaryOperation &,void>(v22, &v142, v145, &v139);
  }

  if (v146 != 1)
  {
    goto LABEL_297;
  }

  v21 = *v145;
  if (*v145)
  {
    atomic_fetch_add_explicit(*v145, 2u, memory_order_relaxed);
  }

  *(a1 + 8) = *&v145[8];
  *a1 = v21;
  *(a1 + 24) = 1;
  if (v146)
  {
    if (v146 != 255)
    {
      result = *v145;
      *v145 = 0;
      if (result)
      {
LABEL_42:
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v20);
        }
      }
    }
  }

LABEL_199:
  *(a2 + 44) = v6;
  return result;
}

mpark *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseRelationalExpressionPostUnary(uint64_t a1, uint64_t a2, WTF::StringImpl **a3)
{
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseShiftExpressionPostUnary(&v31, a2, a3);
  if (v33)
  {
    if (v33 == 1)
    {
      result = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
      }

      *(a1 + 8) = v32;
      *a1 = result;
      *(a1 + 24) = 1;
      if (result)
      {
        goto LABEL_6;
      }

      return result;
    }

LABEL_59:
    mpark::throw_bad_variant_access(result);
  }

  result = v31;
  *a3 = v31;
  v10 = *(a2 + 56);
  if (v10 > 0x38 || ((1 << v10) & 0x19C040000000000) == 0)
  {
    *a1 = result;
    *(a1 + 24) = 0;
    return result;
  }

  result = WGSL::toBinaryOperation(*(a2 + 56));
  v30 = result;
  do
  {
    v15 = *(a2 + 36);
    v16 = (*(a2 + 40) + 1);
    *(a2 + 40) = v16;
    if (v15 <= v16)
    {
      __break(0xC471u);
      return result;
    }

    v17 = *(a2 + 24) + 32 * v16;
    v13 = *v17;
    *(a2 + 56) = *v17;
    *(a2 + 60) = *(v17 + 4);
    v18 = *v17;
    if (*v17 <= 8u)
    {
      if (((1 << v18) & 0x38) != 0)
      {
        *(a2 + 80) = *(v17 + 24);
LABEL_14:
        v13 = *(a2 + 56);
        goto LABEL_15;
      }

      if (((1 << v18) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v17 + 24);
        goto LABEL_14;
      }

      if (v18 == 8)
      {
        *(a2 + 80) = 0;
        v19 = *(v17 + 24);
        if (v19)
        {
          atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
          result = *(a2 + 80);
          *(a2 + 80) = v19;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v12);
            }
          }
        }

        goto LABEL_14;
      }
    }

LABEL_15:
    v14 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v14;
  }

  while (v13 == 82);
  result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseUnaryExpression(&v37, a2);
  if (!v39)
  {
    result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseShiftExpressionPostUnary(&v34, a2, &v37);
    v23 = v36;
    if (v36)
    {
      if (v36 != 1)
      {
        goto LABEL_59;
      }

      v20 = v34;
      if (!v34)
      {
        v27 = 0;
        v28 = v35;
        v29 = 1;
        v21 = 0;
        v22 = v39;
        if (!v39)
        {
          goto LABEL_44;
        }

        goto LABEL_40;
      }

      atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
      v27 = v20;
      v28 = v35;
      v29 = 1;
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(v20, v9);
        v21 = 0;
        v22 = v39;
        if (!v39)
        {
          goto LABEL_44;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v20 = v34;
      v27 = v34;
      v29 = 0;
    }

    v21 = v23 == 0;
    v22 = v39;
    if (!v39)
    {
      goto LABEL_44;
    }

LABEL_40:
    if (v22 != 255)
    {
      result = v37;
      v37 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v9);
        }
      }
    }

    goto LABEL_44;
  }

  if (v39 != 1)
  {
    goto LABEL_59;
  }

  v20 = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
  }

  v21 = 0;
  v28 = v38;
  v27 = v20;
  v29 = 1;
  v22 = v39;
  if (v39)
  {
    goto LABEL_40;
  }

LABEL_44:
  if (v21)
  {
    v24 = *(a2 + 8);
    v25 = *(a2 + 96) - v7;
    v37 = v6;
    *&v38 = __PAIR64__(v25, v7);
    WGSL::AST::Builder::construct<WGSL::AST::BinaryExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::BinaryOperation const&,void>(v24, &v37, a3, &v27, &v30);
  }

  if (v20)
  {
    atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    *(a1 + 8) = v28;
    *a1 = v20;
    *(a1 + 24) = 1;
    v27 = 0;
    if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v20, v9);
    }

    v26 = v33;
    if (v33)
    {
LABEL_52:
      if (v26 == 255)
      {
        return result;
      }

      result = v31;
      if (!v31)
      {
        return result;
      }

LABEL_6:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v9);
      }
    }
  }

  else
  {
    *(a1 + 8) = v28;
    *a1 = 0;
    *(a1 + 24) = 1;
    v26 = v33;
    if (v33)
    {
      goto LABEL_52;
    }
  }

  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseShortCircuitExpression(WTF::StringImpl *result, uint64_t a2, WTF::StringImpl **a3, int a4, char a5)
{
  v6 = result;
  v32 = a5;
  if (*(a2 + 56) != a4)
  {
    result = *a3;
    *v6 = *a3;
    *(v6 + 24) = 0;
    return result;
  }

  v8 = *(a2 + 88);
  v9 = *(a2 + 92);
  v10 = *(a2 + 96);
  v27 = *result;
  v28 = result;
  v26 = *(result + 24);
  do
  {
    v11 = *(a2 + 36);
    v12 = (*(a2 + 40) + 1);
    *(a2 + 40) = v12;
    if (v11 <= v12)
    {
      *(v28 + 24) = v26;
      *v28 = v27;
      __break(0xC471u);
      return result;
    }

    v13 = *(a2 + 24) + 32 * v12;
    v14 = *v13;
    *(a2 + 56) = *v13;
    *(a2 + 60) = *(v13 + 4);
    v15 = *v13;
    if (*v13 <= 8u)
    {
      if (((1 << v15) & 0x38) != 0)
      {
        *(a2 + 80) = *(v13 + 24);
        goto LABEL_9;
      }

      if (((1 << v15) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v13 + 24);
LABEL_9:
        v14 = *(a2 + 56);
        goto LABEL_10;
      }

      if (v15 == 8)
      {
        *(a2 + 80) = 0;
        v22 = *(v13 + 24);
        if (v22)
        {
          atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
          result = *(a2 + 80);
          *(a2 + 80) = v22;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, a2);
            }
          }
        }

        goto LABEL_9;
      }
    }

LABEL_10:
    v16 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v16;
  }

  while (v14 == 82);
  result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseUnaryExpression(&v36, a2);
  if (!v38)
  {
    result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseRelationalExpressionPostUnary(&v33, a2, &v36);
    v21 = v35;
    if (v35)
    {
      if (v35 != 1)
      {
LABEL_44:
        mpark::throw_bad_variant_access(result);
      }

      v18 = v33;
      if (!v33)
      {
        v29 = 0;
        v30 = v34;
        v31 = 1;
        v19 = 0;
        v20 = v38;
        if (!v38)
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      }

      atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
      v29 = v18;
      v30 = v34;
      v31 = 1;
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(v18, v17);
        v19 = 0;
        v20 = v38;
        if (!v38)
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v18 = v33;
      v29 = v33;
      v31 = 0;
    }

    v19 = v21 == 0;
    v20 = v38;
    if (!v38)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  if (v38 != 1)
  {
    goto LABEL_44;
  }

  v18 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
  }

  v19 = 0;
  v30 = v37;
  v29 = v18;
  v31 = 1;
  v20 = v38;
  if (v38)
  {
LABEL_30:
    if (v20 != 255)
    {
      result = v36;
      v36 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v17);
        }
      }
    }
  }

LABEL_34:
  if (v19)
  {
    v23 = *(a2 + 8);
    v24 = *(a2 + 96) - v10;
    v36 = __PAIR64__(v9, v8);
    *&v37 = __PAIR64__(v24, v10);
    WGSL::AST::Builder::construct<WGSL::AST::BinaryExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::BinaryOperation const&,void>(v23, &v36, a3, &v29, &v32);
  }

  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    v25 = v28;
    *(v28 + 8) = v30;
    v29 = 0;
    if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v18, v17);
      v25 = v28;
    }
  }

  else
  {
    v25 = v28;
    *(v28 + 8) = v30;
  }

  *(v25 + 24) = 1;
  *v25 = v18;
  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parsePostfixExpression(uint64_t *a1, uint64_t a2, WTF::StringImpl *a3, unint64_t a4, unsigned int a5)
{
  v6 = a4;
  result = a3;
  v61 = *(a2 + 96);
  v62 = *(a2 + 88);
  v73 = a3;
  v64 = *a1;
  v10 = HIDWORD(a4);
  v63 = *(a1 + 24);
  v11 = *(a2 + 56);
  if (v11 == 45)
  {
    while (1)
    {
      v14 = *(a2 + 36);
      v15 = (*(a2 + 40) + 1);
      *(a2 + 40) = v15;
      if (v14 <= v15)
      {
        *(a1 + 24) = v63;
        *a1 = v64;
        __break(0xC471u);
        goto LABEL_106;
      }

      v16 = *(a2 + 24) + 32 * v15;
      v12 = *v16;
      *(a2 + 56) = *v16;
      *(a2 + 60) = *(v16 + 4);
      v17 = *v16;
      if (*v16 > 8u)
      {
        goto LABEL_7;
      }

      if (((1 << v17) & 0x38) != 0)
      {
        *(a2 + 80) = *(v16 + 24);
      }

      else if (((1 << v17) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v16 + 24);
      }

      else
      {
        if (v17 != 8)
        {
          goto LABEL_7;
        }

        *(a2 + 80) = 0;
        v18 = *(v16 + 24);
        if (v18)
        {
          atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
          v19 = *(a2 + 80);
          *(a2 + 80) = v18;
          if (v19)
          {
            if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, a2);
            }
          }
        }
      }

      v12 = *(a2 + 56);
LABEL_7:
      v13 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v13;
      if (v12 != 82)
      {
        v20 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v66, a2);
        if (v68)
        {
          if (v68 != 1)
          {
            *(a1 + 24) = v63;
            *a1 = v64;
            mpark::throw_bad_variant_access(v20);
          }

          result = v66;
          v65 = v66;
          if (v66)
          {
            atomic_fetch_add_explicit(v66, 2u, memory_order_relaxed);
            *(a1 + 1) = v67;
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v21);
            }
          }

          else
          {
            *(a1 + 1) = v67;
          }

          goto LABEL_98;
        }

        if (*(a2 + 56) != 46)
        {
          WGSL::toString();
          WGSL::toString();
          if (v72)
          {
            v48 = *(v72 + 1);
            if (v71)
            {
LABEL_69:
              v49 = *(v71 + 1);
              if (v49 < 0)
              {
                goto LABEL_105;
              }

              v47 = __OFADD__(v49, 12);
              v50 = v49 + 12;
              v51 = v47;
              if (v48 < 0)
              {
                goto LABEL_105;
              }

LABEL_80:
              if (v51)
              {
                goto LABEL_105;
              }

              v47 = __OFADD__(v48, v50);
              v52 = v48 + v50;
              if (v47)
              {
                goto LABEL_105;
              }

              v53 = (v52 + 11);
              if (__OFADD__(v52, 11))
              {
                goto LABEL_105;
              }

              if (v72)
              {
                v54 = *(v72 + 4);
                v55 = (v54 >> 2) & 1;
                if (!v71 || (v54 & 4) == 0)
                {
                  goto LABEL_90;
                }

LABEL_88:
                v55 = (*(v71 + 16) >> 2) & 1;
              }

              else
              {
                if (v71)
                {
                  goto LABEL_88;
                }

                v55 = 1;
              }

LABEL_90:
              WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v53, v55, "Expected a ", 0xBuLL, v72, ", but got a ", 0xCuLL, &v70, v71);
              v57 = v70;
              if (v70)
              {
                v58 = v71;
                v71 = 0;
                if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v58, v56);
                }

                v65 = v57;
                result = v72;
                v72 = 0;
                if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v56);
                }

                v59 = v61 | ((*(a2 + 96) - v61) << 32);
                a1[1] = v62;
                a1[2] = v59;
                goto LABEL_98;
              }

LABEL_105:
              __break(0xC471u);
LABEL_106:
              JUMPOUT(0x225775810);
            }
          }

          else
          {
            v48 = 0;
            if (v71)
            {
              goto LABEL_69;
            }
          }

          v50 = 12;
          v51 = v47;
          if ((v48 & 0x80000000) == 0)
          {
            goto LABEL_80;
          }

          goto LABEL_105;
        }

        while (2)
        {
          v24 = *(a2 + 36);
          v25 = (*(a2 + 40) + 1);
          *(a2 + 40) = v25;
          if (v24 <= v25)
          {
            *(a1 + 24) = v63;
            *a1 = v64;
            __break(0xC471u);
            JUMPOUT(0x225775828);
          }

          v26 = *(a2 + 24) + 32 * v25;
          v22 = *v26;
          *(a2 + 56) = *v26;
          *(a2 + 60) = *(v26 + 4);
          v27 = *v26;
          if (*v26 <= 8u)
          {
            if (((1 << v27) & 0x38) != 0)
            {
              *(a2 + 80) = *(v26 + 24);
              goto LABEL_22;
            }

            if (((1 << v27) & 0xC4) != 0)
            {
              *(a2 + 80) = *(v26 + 24);
              goto LABEL_22;
            }

            if (v27 == 8)
            {
              *(a2 + 80) = 0;
              v28 = *(v26 + 24);
              if (v28)
              {
                atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
                v29 = *(a2 + 80);
                *(a2 + 80) = v28;
                if (v29)
                {
                  if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v29, v21);
                  }
                }
              }

LABEL_22:
              v22 = *(a2 + 56);
            }
          }

          v23 = *(a2 + 68);
          *(a2 + 88) = *(a2 + 60);
          *(a2 + 96) = v23;
          if (v22 != 82)
          {
            *&v70 = __PAIR64__(v10, v6);
            DWORD2(v70) = a5;
            HIDWORD(v70) = v23 - a5;
            WGSL::AST::Builder::construct<WGSL::AST::IndexAccessExpression,WGSL::SourceSpan &,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::Expression>,void>(*(a2 + 8), &v70, &v73, &v66);
          }

          continue;
        }
      }
    }
  }

  if (v11 != 69)
  {
    *a1 = a3;
    *(a1 + 24) = 0;
    return result;
  }

  do
  {
    v32 = *(a2 + 36);
    v33 = (*(a2 + 40) + 1);
    *(a2 + 40) = v33;
    if (v32 <= v33)
    {
      *(a1 + 24) = v63;
      *a1 = v64;
      __break(0xC471u);
      JUMPOUT(0x225775840);
    }

    v34 = *(a2 + 24) + 32 * v33;
    v30 = *v34;
    *(a2 + 56) = *v34;
    *(a2 + 60) = *(v34 + 4);
    v35 = *v34;
    if (*v34 <= 8u)
    {
      if (((1 << v35) & 0x38) != 0)
      {
        *(a2 + 80) = *(v34 + 24);
LABEL_37:
        v30 = *(a2 + 56);
        goto LABEL_38;
      }

      if (((1 << v35) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v34 + 24);
        goto LABEL_37;
      }

      if (v35 == 8)
      {
        *(a2 + 80) = 0;
        v36 = *(v34 + 24);
        if (v36)
        {
          atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
          v37 = *(a2 + 80);
          *(a2 + 80) = v36;
          if (v37)
          {
            if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v38 = a1;
              v39 = result;
              WTF::StringImpl::destroy(v37, a2);
              result = v39;
              a1 = v38;
            }
          }
        }

        goto LABEL_37;
      }
    }

LABEL_38:
    v31 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v31;
  }

  while (v30 == 82);
  v60 = a1;
  v40 = result;
  v41 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v66, a2);
  if (!v69)
  {
    v44 = *(a2 + 96) - a5;
    *&v70 = __PAIR64__(v10, v6);
    *(&v70 + 1) = __PAIR64__(v44, a5);
    WGSL::AST::Builder::construct<WGSL::AST::FieldAccessExpression,WGSL::SourceSpan &,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::Identifier,void>(*(a2 + 8), &v70, &v73, &v66);
  }

  if (v69 != 1)
  {
    *(v60 + 24) = v63;
    *v60 = v64;
    mpark::throw_bad_variant_access(v41);
  }

  v43 = v66;
  result = v40;
  if (v66)
  {
    atomic_fetch_add_explicit(v66, 2u, memory_order_relaxed);
  }

  v65 = v43;
  a1 = v60;
  *(v60 + 8) = v67;
  if (v69 != 255)
  {
    if (v69)
    {
      v45 = v66;
      v66 = 0;
      if (!v45)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v45 = v68;
      v66 = off_2838D37C0;
      v68 = 0;
      if (!v45)
      {
        goto LABEL_98;
      }
    }

    if (atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v46 = result;
      WTF::StringImpl::destroy(v45, v42);
      result = v46;
      a1 = v60;
    }
  }

LABEL_98:
  *(a1 + 24) = 1;
  *a1 = v65;
  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseArgumentExpressionList(WTF::StringImpl *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  v6 = *(a2 + 44);
  *(a2 + 44) = v6 + 1;
  if ((v6 + 1) >= 0x81)
  {
    result = WTF::StringImpl::createWithoutCopyingNonEmpty();
    v7 = v5 | ((*(a2 + 96) - v5) << 32);
LABEL_131:
    *(v3 + 1) = v4;
    *(v3 + 2) = v7;
    *(v3 + 24) = 1;
    goto LABEL_132;
  }

  if (*(a2 + 56) != 67)
  {
    WGSL::toString();
    WGSL::toString();
    if (v71)
    {
      v16 = *(v71 + 1);
      if (v70)
      {
LABEL_20:
        v17 = *(v70 + 1);
        if (v17 < 0)
        {
          goto LABEL_138;
        }

        v15 = __OFADD__(v17, 12);
        v18 = v17 + 12;
        v19 = v15;
        if (v16 < 0)
        {
          goto LABEL_138;
        }

LABEL_113:
        if (v19)
        {
          goto LABEL_138;
        }

        v15 = __OFADD__(v16, v18);
        v54 = v16 + v18;
        if (v15)
        {
          goto LABEL_138;
        }

        v55 = (v54 + 11);
        if (__OFADD__(v54, 11))
        {
          goto LABEL_138;
        }

        if (v71)
        {
          v56 = *(v71 + 4);
          v57 = (v56 >> 2) & 1;
          if (!v70 || (v56 & 4) == 0)
          {
LABEL_123:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v55, v57, "Expected a ", 0xBuLL, v71, ", but got a ", 0xCuLL, &v65, v70);
            v59 = v65;
            if (v65)
            {
              v60 = v70;
              v70 = 0;
              if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v60, v58);
              }

              result = v71;
              v71 = 0;
              if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v58);
              }

              v7 = v5 | ((*(a2 + 96) - v5) << 32);
              *v3 = v59;
              goto LABEL_131;
            }

LABEL_138:
            __break(0xC471u);
LABEL_139:
            JUMPOUT(0x225775EF0);
          }
        }

        else if (!v70)
        {
          v57 = 1;
          goto LABEL_123;
        }

        v57 = (*(v70 + 16) >> 2) & 1;
        goto LABEL_123;
      }
    }

    else
    {
      v16 = 0;
      if (v70)
      {
        goto LABEL_20;
      }
    }

    v18 = 12;
    v19 = v15;
    if (v16 < 0)
    {
      goto LABEL_138;
    }

    goto LABEL_113;
  }

  do
  {
    v10 = *(a2 + 36);
    v11 = (*(a2 + 40) + 1);
    *(a2 + 40) = v11;
    if (v10 <= v11)
    {
      __break(0xC471u);
      JUMPOUT(0x225775EF8);
    }

    v12 = *(a2 + 24) + 32 * v11;
    v8 = *v12;
    *(a2 + 56) = *v12;
    *(a2 + 60) = *(v12 + 4);
    v13 = *v12;
    if (*v12 <= 8u)
    {
      if (((1 << v13) & 0x38) != 0)
      {
        *(a2 + 80) = *(v12 + 24);
LABEL_6:
        v8 = *(a2 + 56);
        goto LABEL_7;
      }

      if (((1 << v13) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v12 + 24);
        goto LABEL_6;
      }

      if (v13 == 8)
      {
        *(a2 + 80) = 0;
        v14 = *(v12 + 24);
        if (v14)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
          result = *(a2 + 80);
          *(a2 + 80) = v14;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, a2);
            }
          }
        }

        goto LABEL_6;
      }
    }

LABEL_7:
    v9 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v9;
  }

  while (v8 == 82);
  v61 = v5;
  v62 = v4;
  v20 = 0;
  v21 = 0;
  v68 = 0;
  v69 = 0;
  v22 = *v3;
  v23 = *(v3 + 24);
  do
  {
    if (*(a2 + 56) == 68)
    {
      *(v3 + 24) = v23;
      *v3 = v22;
      while (1)
      {
        v49 = *(a2 + 36);
        v50 = (*(a2 + 40) + 1);
        *(a2 + 40) = v50;
        if (v49 <= v50)
        {
          __break(0xC471u);
          JUMPOUT(0x225775F00);
        }

        v51 = *(a2 + 24) + 32 * v50;
        v47 = *v51;
        *(a2 + 56) = *v51;
        *(a2 + 60) = *(v51 + 4);
        v52 = *v51;
        if (*v51 > 8u)
        {
          goto LABEL_93;
        }

        if (((1 << v52) & 0x38) != 0)
        {
          *(a2 + 80) = *(v51 + 24);
        }

        else if (((1 << v52) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v51 + 24);
        }

        else
        {
          if (v52 != 8)
          {
            goto LABEL_93;
          }

          *(a2 + 80) = 0;
          v53 = *(v51 + 24);
          if (v53)
          {
            atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
            result = *(a2 + 80);
            *(a2 + 80) = v53;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, a2);
              }
            }
          }
        }

        v47 = *(a2 + 56);
LABEL_93:
        v48 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v48;
        if (v47 != 82)
        {
          *v3 = v68;
          *(v3 + 2) = v69;
          *(v3 + 3) = v21;
          *(v3 + 24) = 0;
          goto LABEL_132;
        }
      }
    }

    result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v65, a2);
    if (v67)
    {
      if (v67 != 1)
      {
        *(v3 + 24) = v23;
        *v3 = v22;
        mpark::throw_bad_variant_access(result);
      }

      v22 = v65;
      if (v65)
      {
        atomic_fetch_add_explicit(v65, 2u, memory_order_relaxed);
      }

      v24 = 0;
      *(v3 + 8) = v66;
      goto LABEL_85;
    }

    if (v21 == v69)
    {
      result = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v68, v21 + 1, &v65);
      v25 = HIDWORD(v69);
      v20 = v68;
      *(v68 + HIDWORD(v69)) = *result;
      v21 = v25 + 1;
      HIDWORD(v69) = v25 + 1;
      v26 = *(a2 + 56);
      if (v26 == 68)
      {
        goto LABEL_60;
      }
    }

    else
    {
      *(v20 + v21) = v65;
      v21 = ++HIDWORD(v69);
      v26 = *(a2 + 56);
      if (v26 == 68)
      {
LABEL_60:
        v24 = 1;
        v40 = v67;
        if (!v67)
        {
          continue;
        }

        goto LABEL_86;
      }
    }

    if (v26 == 48)
    {
      while (1)
      {
        v35 = *(a2 + 36);
        v36 = (*(a2 + 40) + 1);
        *(a2 + 40) = v36;
        if (v35 <= v36)
        {
          *(v3 + 24) = v23;
          *v3 = v22;
          __break(0xC471u);
          goto LABEL_139;
        }

        v37 = *(a2 + 24) + 32 * v36;
        v33 = *v37;
        *(a2 + 56) = *v37;
        *(a2 + 60) = *(v37 + 4);
        v38 = *v37;
        if (*v37 <= 8u)
        {
          if (((1 << v38) & 0x38) != 0)
          {
            *(a2 + 80) = *(v37 + 24);
          }

          else if (((1 << v38) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v37 + 24);
          }

          else
          {
            if (v38 != 8)
            {
              goto LABEL_49;
            }

            *(a2 + 80) = 0;
            v39 = *(v37 + 24);
            if (v39)
            {
              atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
              result = *(a2 + 80);
              *(a2 + 80) = v39;
              if (result)
              {
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, a2);
                }
              }
            }
          }

          v33 = *(a2 + 56);
        }

LABEL_49:
        v34 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v34;
        if (v33 != 82)
        {
          goto LABEL_60;
        }
      }
    }

    WGSL::toString();
    WGSL::toString();
    if (v64)
    {
      v28 = *(v64 + 1);
      v29 = v63;
      if (v63)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v28 = 0;
      v29 = v63;
      if (v63)
      {
LABEL_41:
        v30 = *(v29 + 4);
        if (v30 < 0)
        {
          goto LABEL_137;
        }

        v15 = __OFADD__(v30, 12);
        v31 = v30 + 12;
        v32 = v15;
        if (v28 < 0)
        {
          goto LABEL_137;
        }

        goto LABEL_67;
      }
    }

    v31 = 12;
    if (v27)
    {
      v32 = 1;
    }

    else
    {
      v32 = 0;
    }

    if (v28 < 0)
    {
LABEL_137:
      __break(0xC471u);
      JUMPOUT(0x225775F08);
    }

LABEL_67:
    if (v32)
    {
      goto LABEL_137;
    }

    v15 = __OFADD__(v28, v31);
    v41 = v28 + v31;
    if (v15)
    {
      goto LABEL_137;
    }

    v42 = (v41 + 11);
    if (__OFADD__(v41, 11))
    {
      goto LABEL_137;
    }

    if (v64)
    {
      v43 = *(v64 + 4);
      v44 = (v43 >> 2) & 1;
      if (!v29 || (v43 & 4) == 0)
      {
        goto LABEL_77;
      }
    }

    else if (!v29)
    {
      v44 = 1;
      goto LABEL_77;
    }

    v44 = (*(v29 + 16) >> 2) & 1;
LABEL_77:
    WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v42, v44, "Expected a ", 0xBuLL, v64, ", but got a ", 0xCuLL, &v72, v29);
    v22 = v72;
    if (!v72)
    {
      goto LABEL_137;
    }

    v45 = v63;
    v63 = 0;
    if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v45, a2);
    }

    result = v64;
    v64 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, a2);
    }

    v24 = 0;
    v46 = v61 | ((*(a2 + 96) - v61) << 32);
    *(v3 + 1) = v62;
    *(v3 + 2) = v46;
LABEL_85:
    v23 = 1;
    v40 = v67;
    if (!v67)
    {
      continue;
    }

LABEL_86:
    if (v40 != 255)
    {
      result = v65;
      v65 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }
    }
  }

  while ((v24 & 1) != 0);
  *(v3 + 24) = v23;
  *v3 = v22;
  if (v20)
  {
    v68 = 0;
    LODWORD(v69) = 0;
    result = WTF::fastFree(v20, a2);
  }

LABEL_132:
  *(a2 + 44) = v6;
  return result;
}

void WGSL::AST::BoolLiteral::~BoolLiteral(WGSL::AST::BoolLiteral *this)
{
  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      v5 = v1;
      v6 = v2;
      v3 = this;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, this + 32);
      this = v3;
    }

    *(this + 48) = -1;
  }
}

{
  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      v1 = this;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v2, this + 32);
      this = v1;
    }

    *(this + 48) = -1;
  }

  MEMORY[0x22AA68560]();
}

void WGSL::AST::Signed32Literal::~Signed32Literal(WGSL::AST::Signed32Literal *this)
{
  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      v5 = v1;
      v6 = v2;
      v3 = this;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, this + 32);
      this = v3;
    }

    *(this + 48) = -1;
  }
}

{
  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      v1 = this;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v2, this + 32);
      this = v1;
    }

    *(this + 48) = -1;
  }

  MEMORY[0x22AA68560]();
}

void WGSL::AST::AbstractFloatLiteral::~AbstractFloatLiteral(WGSL::AST::AbstractFloatLiteral *this)
{
  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      v5 = v1;
      v6 = v2;
      v3 = this;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, this + 32);
      this = v3;
    }

    *(this + 48) = -1;
  }
}

{
  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      v1 = this;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v2, this + 32);
      this = v1;
    }

    *(this + 48) = -1;
  }

  MEMORY[0x22AA68560]();
}

void WGSL::AST::Float32Literal::~Float32Literal(WGSL::AST::Float32Literal *this)
{
  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      v5 = v1;
      v6 = v2;
      v3 = this;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, this + 32);
      this = v3;
    }

    *(this + 48) = -1;
  }
}

{
  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      v1 = this;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v2, this + 32);
      this = v1;
    }

    *(this + 48) = -1;
  }

  MEMORY[0x22AA68560]();
}

void WGSL::AST::Float16Literal::~Float16Literal(WGSL::AST::Float16Literal *this)
{
  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      v5 = v1;
      v6 = v2;
      v3 = this;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, this + 32);
      this = v3;
    }

    *(this + 48) = -1;
  }
}

{
  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      v1 = this;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v2, this + 32);
      this = v1;
    }

    *(this + 48) = -1;
  }

  MEMORY[0x22AA68560]();
}

uint64_t WGSL::toBinaryOperation(int a1)
{
  v1 = a1 - 36;
  if (a1 - 36) < 0x2E && ((0x33D47EFFC047uLL >> v1))
  {
    return byte_22588277C[v1];
  }

  result = 300;
  __break(0xC471u);
  return result;
}

atomic_uint *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseShiftExpressionPostUnary(atomic_uint *result, uint64_t a2, WTF::StringImpl **a3)
{
  v5 = result;
  v6 = *(a2 + 56);
  if ((v6 - 59) <= 0x11)
  {
    if (((1 << (v6 - 59)) & 0x28809) != 0)
    {
      goto LABEL_3;
    }

    if (v6 == 60)
    {
      *(a2 + 56) = 59;
      if (*(a2 + 36) <= (*(a2 + 40) + 1))
      {
        __break(0xC471u);
LABEL_108:
        JUMPOUT(0x225777968);
      }

      *(*(a2 + 24) + 32 * (*(a2 + 40) + 1)) = 59;
LABEL_3:
      v7 = *(a2 + 88);
      v51 = *(a2 + 96);
      result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseMultiplicativeExpressionPostUnary(&v61, a2, a3);
      if (v63)
      {
        if (v63 != 1)
        {
          goto LABEL_102;
        }

        result = v61;
        if (v61)
        {
          atomic_fetch_add_explicit(v61, 2u, memory_order_relaxed);
        }

        *(v5 + 2) = v62;
        *v5 = result;
        *(v5 + 24) = 1;
        if (!result)
        {
          return result;
        }

LABEL_50:
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }

        return result;
      }

      v50 = v61;
      *a3 = v61;
      v9 = *v5;
      v52 = *(v5 + 24);
LABEL_10:
      v10 = *(a2 + 56);
      if ((v10 - 59) > 0x11)
      {
LABEL_72:
        *v5 = *a3;
        *(v5 + 24) = 0;
        return v50;
      }

      if (((1 << (v10 - 59)) & 0x28809) == 0)
      {
        if (v10 != 60)
        {
          goto LABEL_72;
        }

        *(a2 + 56) = 59;
        if (*(a2 + 36) <= (*(a2 + 40) + 1))
        {
          *(v5 + 24) = v52;
          *v5 = v9;
          __break(0xC471u);
          JUMPOUT(0x22577797CLL);
        }

        *(*(a2 + 24) + 32 * (*(a2 + 40) + 1)) = 59;
        v10 = *(a2 + 56);
      }

      v60 = WGSL::toBinaryOperation(v10);
      while (1)
      {
        v14 = *(a2 + 36);
        v15 = (*(a2 + 40) + 1);
        *(a2 + 40) = v15;
        if (v14 <= v15)
        {
          *(v5 + 24) = v52;
          *v5 = v9;
          __break(0xC471u);
          goto LABEL_108;
        }

        v16 = *(a2 + 24) + 32 * v15;
        v12 = *v16;
        *(a2 + 56) = *v16;
        *(a2 + 60) = *(v16 + 4);
        v17 = *v16;
        if (*v16 > 8u)
        {
          goto LABEL_15;
        }

        if (((1 << v17) & 0x38) != 0)
        {
          *(a2 + 80) = *(v16 + 24);
        }

        else if (((1 << v17) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v16 + 24);
        }

        else
        {
          if (v17 != 8)
          {
            goto LABEL_15;
          }

          *(a2 + 80) = 0;
          v18 = *(v16 + 24);
          if (v18)
          {
            atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
            v19 = *(a2 + 80);
            *(a2 + 80) = v18;
            if (v19)
            {
              if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v19, v11);
              }
            }
          }
        }

        v12 = *(a2 + 56);
LABEL_15:
        v13 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v13;
        if (v12 != 82)
        {
          result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseUnaryExpression(&v57, a2);
          if (v59)
          {
            if (v59 == 1)
            {
              v9 = v57;
              if (v57)
              {
                atomic_fetch_add_explicit(v57, 2u, memory_order_relaxed);
              }

              v21 = 0;
              *(v5 + 2) = v58;
              v52 = 1;
              v22 = v59;
              if (!v59)
              {
                goto LABEL_9;
              }

              goto LABEL_38;
            }

LABEL_101:
            *(v5 + 24) = v52;
            *v5 = v9;
LABEL_102:
            mpark::throw_bad_variant_access(result);
          }

          result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseMultiplicativeExpressionPostUnary(&v54, a2, &v57);
          v21 = v56 == 0;
          if (!v56)
          {
            v24 = *(a2 + 8);
            v25 = *(a2 + 96) - v51;
            *&v53 = v7;
            *(&v53 + 1) = __PAIR64__(v25, v51);
            WGSL::AST::Builder::construct<WGSL::AST::BinaryExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::BinaryOperation const&,void>(v24, &v53, a3, &v54, &v60);
          }

          if (v56 != 1)
          {
            goto LABEL_101;
          }

          v9 = v54;
          if (!v54)
          {
            *(v5 + 2) = v55;
            v52 = 1;
            v22 = v59;
            if (!v59)
            {
              goto LABEL_9;
            }

            goto LABEL_38;
          }

          atomic_fetch_add_explicit(v54, 2u, memory_order_relaxed);
          *(v5 + 2) = v55;
          if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v9, v20);
          }

          v52 = 1;
          v22 = v59;
          if (v59)
          {
LABEL_38:
            if (v22 != 255)
            {
              v23 = v57;
              v57 = 0;
              if (v23)
              {
                if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v23, v20);
                }
              }
            }
          }

LABEL_9:
          if (!v21)
          {
            *(v5 + 24) = 1;
            *v5 = v9;
            return v50;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v26 = *(a2 + 88);
  v27 = *(a2 + 96);
  if (v6 != 57)
  {
    if (v6 != 53)
    {
      *result = *a3;
      *(result + 24) = 0;
      return result;
    }

    while (1)
    {
      v30 = *(a2 + 36);
      v31 = (*(a2 + 40) + 1);
      *(a2 + 40) = v31;
      if (v30 <= v31)
      {
        __break(0xC471u);
        JUMPOUT(0x225777984);
      }

      v32 = *(a2 + 24) + 32 * v31;
      v28 = *v32;
      *(a2 + 56) = *v32;
      *(a2 + 60) = *(v32 + 4);
      v33 = *v32;
      if (*v32 > 8u)
      {
        goto LABEL_61;
      }

      if (((1 << v33) & 0x38) != 0)
      {
        *(a2 + 80) = *(v32 + 24);
      }

      else if (((1 << v33) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v32 + 24);
      }

      else
      {
        if (v33 != 8)
        {
          goto LABEL_61;
        }

        *(a2 + 80) = 0;
        v34 = *(v32 + 24);
        if (v34)
        {
          atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
          v35 = *(a2 + 80);
          *(a2 + 80) = v34;
          if (v35)
          {
            if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v35, a2);
            }
          }
        }
      }

      v28 = *(a2 + 56);
LABEL_61:
      v29 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v29;
      if (v28 != 82)
      {
        result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseUnaryExpression(&v61, a2);
        v44 = v63;
        if (!v63)
        {
          v45 = *(a2 + 8);
          v46 = *(a2 + 96) - v27;
          v57 = v26;
          *&v58 = __PAIR64__(v46, v27);
          v47 = 9;
          goto LABEL_96;
        }

        goto LABEL_91;
      }
    }
  }

  do
  {
    v38 = *(a2 + 36);
    v39 = (*(a2 + 40) + 1);
    *(a2 + 40) = v39;
    if (v38 <= v39)
    {
      __break(0xC471u);
      JUMPOUT(0x22577798CLL);
    }

    v40 = *(a2 + 24) + 32 * v39;
    v36 = *v40;
    *(a2 + 56) = *v40;
    *(a2 + 60) = *(v40 + 4);
    v41 = *v40;
    if (*v40 <= 8u)
    {
      if (((1 << v41) & 0x38) != 0)
      {
        *(a2 + 80) = *(v40 + 24);
LABEL_75:
        v36 = *(a2 + 56);
        goto LABEL_76;
      }

      if (((1 << v41) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v40 + 24);
        goto LABEL_75;
      }

      if (v41 == 8)
      {
        *(a2 + 80) = 0;
        v42 = *(v40 + 24);
        if (v42)
        {
          atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
          v43 = *(a2 + 80);
          *(a2 + 80) = v42;
          if (v43)
          {
            if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v43, a2);
            }
          }
        }

        goto LABEL_75;
      }
    }

LABEL_76:
    v37 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v37;
  }

  while (v36 == 82);
  result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseUnaryExpression(&v61, a2);
  v44 = v63;
  if (!v63)
  {
    v45 = *(a2 + 8);
    v49 = *(a2 + 96) - v27;
    v57 = v26;
    *&v58 = __PAIR64__(v49, v27);
    v47 = 8;
LABEL_96:
    LOBYTE(v54) = v47;
    WGSL::AST::Builder::construct<WGSL::AST::BinaryExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::BinaryOperation const&,void>(v45, &v57, a3, &v61, &v54);
  }

LABEL_91:
  if (v44 != 1)
  {
    goto LABEL_102;
  }

  v48 = v61;
  if (v61)
  {
    atomic_fetch_add_explicit(v61, 2u, memory_order_relaxed);
  }

  *(v5 + 2) = v62;
  *v5 = v48;
  *(v5 + 24) = 1;
  if (v63)
  {
    if (v63 != 255)
    {
      result = v61;
      v61 = 0;
      if (result)
      {
        goto LABEL_50;
      }
    }
  }

  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseMultiplicativeExpressionPostUnary(WTF::StringImpl *result, uint64_t a2, WTF::StringImpl **a3)
{
  v5 = result;
  v23 = *(a2 + 92);
  v24 = *(a2 + 88);
  v6 = *(a2 + 96);
  v7 = *result;
  v25 = *(result + 24);
  v8 = *(a2 + 56);
  if ((v8 - 62) > 0xE || ((1 << (v8 - 62)) & 0x5001) == 0)
  {
    *result = *a3;
    *(result + 24) = 0;
    return result;
  }

  v30 = 2;
  if (v8 == 62)
  {
    v10 = 4;
    goto LABEL_11;
  }

  if (v8 == 74)
  {
    v10 = 3;
LABEL_11:
    v30 = v10;
    goto LABEL_17;
  }

  if (v8 != 76)
  {
LABEL_41:
    *(v5 + 24) = v25;
    *v5 = v7;
    __break(0xC471u);
    JUMPOUT(0x225777C04);
  }

  do
  {
LABEL_17:
    v13 = *(a2 + 36);
    v14 = (*(a2 + 40) + 1);
    *(a2 + 40) = v14;
    if (v13 <= v14)
    {
      goto LABEL_41;
    }

    v15 = *(a2 + 24) + 32 * v14;
    v11 = *v15;
    *(a2 + 56) = *v15;
    *(a2 + 60) = *(v15 + 4);
    v16 = *v15;
    if (*v15 <= 8u)
    {
      if (((1 << v16) & 0x38) != 0)
      {
        *(a2 + 80) = *(v15 + 24);
LABEL_15:
        v11 = *(a2 + 56);
        goto LABEL_16;
      }

      if (((1 << v16) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v15 + 24);
        goto LABEL_15;
      }

      if (v16 == 8)
      {
        *(a2 + 80) = 0;
        v17 = *(v15 + 24);
        if (v17)
        {
          atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
          v18 = *(a2 + 80);
          *(a2 + 80) = v17;
          if (v18)
          {
            if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, a2);
            }
          }
        }

        goto LABEL_15;
      }
    }

LABEL_16:
    v12 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v12;
  }

  while (v11 == 82);
  result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseUnaryExpression(&v27, a2);
  if (!v29)
  {
    v21 = *(a2 + 8);
    v22 = *(a2 + 96) - v6;
    *&v26 = __PAIR64__(v23, v24);
    *(&v26 + 1) = __PAIR64__(v22, v6);
    WGSL::AST::Builder::construct<WGSL::AST::BinaryExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::BinaryOperation const&,void>(v21, &v26, a3, &v27, &v30);
  }

  if (v29 != 1)
  {
    *(v5 + 24) = v25;
    *v5 = v7;
    mpark::throw_bad_variant_access(result);
  }

  v20 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
  }

  *(v5 + 8) = v28;
  if (v29)
  {
    if (v29 != 255)
    {
      result = v27;
      v27 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v19);
        }
      }
    }
  }

  *(v5 + 24) = 1;
  *v5 = v20;
  return result;
}

void WGSL::AST::ElaboratedTypeExpression::~ElaboratedTypeExpression(WGSL::AST::ElaboratedTypeExpression *this, void *a2)
{
  *this = &unk_2838D5E90;
  v3 = *(this + 12);
  if (v3)
  {
    *(this + 12) = 0;
    *(this + 26) = 0;
    WTF::fastFree(v3, a2);
  }

  *(this + 8) = off_2838D37C0;
  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v5, this + 32);
    }

    *(this + 48) = -1;
  }
}

{
  *this = &unk_2838D5E90;
  v3 = *(this + 12);
  if (v3)
  {
    *(this + 12) = 0;
    *(this + 26) = 0;
    WTF::fastFree(v3, a2);
  }

  *(this + 8) = off_2838D37C0;
  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v5, this + 32);
    }

    *(this + 48) = -1;
  }

  MEMORY[0x22AA68560](this, 0x10E3C4065315B3FLL);
}

void WGSL::AST::TypeAlias::~TypeAlias(WGSL::AST::TypeAlias *this, WTF::StringImpl *a2)
{
  *(this + 3) = off_2838D37C0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }
}

{
  *(this + 3) = off_2838D37C0;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  JUMPOUT(0x22AA68560);
}

void WGSL::Parser<WGSL::Lexer<unsigned char>>::parseAttribute(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  if (*(a2 + 56) != 40)
  {
    WGSL::toString();
    WGSL::toString();
    if (v274)
    {
      v15 = *(v274 + 1);
      if (v273)
      {
LABEL_18:
        v16 = *(v273 + 4);
        if (v16 < 0)
        {
          goto LABEL_490;
        }

        v14 = __OFADD__(v16, 12);
        v17 = v16 + 12;
        v18 = v14;
        if (v15 < 0)
        {
          goto LABEL_490;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v15 = 0;
      if (v273)
      {
        goto LABEL_18;
      }
    }

    v17 = 12;
    v18 = v14;
    if (v15 < 0)
    {
      goto LABEL_490;
    }

LABEL_45:
    if (v18)
    {
      goto LABEL_490;
    }

    v14 = __OFADD__(v15, v17);
    v27 = v15 + v17;
    if (v14)
    {
      goto LABEL_490;
    }

    v28 = (v27 + 11);
    if (__OFADD__(v27, 11))
    {
      goto LABEL_490;
    }

    if (v274)
    {
      v29 = *(v274 + 4);
      v30 = (v29 >> 2) & 1;
      if (!v273 || (v29 & 4) == 0)
      {
LABEL_125:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v28, v30, "Expected a ", 0xBuLL, v274, ", but got a ", 0xCuLL, v266, v273);
        v71 = *v266;
        if (*v266)
        {
          v72 = v273;
          v273 = 0;
          if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v72, v70);
          }

          v73 = v274;
          v274 = 0;
          if (!v73)
          {
            goto LABEL_182;
          }

          goto LABEL_180;
        }

LABEL_490:
        __break(0xC471u);
        JUMPOUT(0x22577A178);
      }
    }

    else if (!v273)
    {
      v30 = 1;
      goto LABEL_125;
    }

    v30 = (*(v273 + 16) >> 2) & 1;
    goto LABEL_125;
  }

  do
  {
    v6 = *(a2 + 36);
    v7 = (*(a2 + 40) + 1);
    *(a2 + 40) = v7;
    if (v6 <= v7)
    {
      __break(0xC471u);
      goto LABEL_498;
    }

    v8 = *(a2 + 24) + 32 * v7;
    v9 = *v8;
    *(a2 + 56) = *v8;
    *(a2 + 60) = *(v8 + 4);
    v10 = *v8;
    if (*v8 <= 8u)
    {
      if (((1 << v10) & 0x38) != 0)
      {
        *(a2 + 80) = *(v8 + 24);
        goto LABEL_8;
      }

      if (((1 << v10) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v8 + 24);
LABEL_8:
        v9 = *(a2 + 56);
        goto LABEL_9;
      }

      if (v10 == 8)
      {
        *(a2 + 80) = 0;
        v12 = *(v8 + 24);
        if (v12)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
          v13 = *(a2 + 80);
          *(a2 + 80) = v12;
          if (v13)
          {
            if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, a2);
            }
          }
        }

        goto LABEL_8;
      }
    }

LABEL_9:
    v11 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v11;
  }

  while (v9 == 82);
  if (v9 == 8)
  {
    v31 = *(a2 + 80);
    if (v31)
    {
      atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
    }

    while (1)
    {
      v34 = *(a2 + 36);
      v35 = (*(a2 + 40) + 1);
      *(a2 + 40) = v35;
      if (v34 <= v35)
      {
        __break(0xC471u);
        JUMPOUT(0x22577A170);
      }

      v36 = *(a2 + 24) + 32 * v35;
      v32 = *v36;
      *(a2 + 56) = *v36;
      *(a2 + 60) = *(v36 + 4);
      v37 = *v36;
      if (*v36 > 8u)
      {
        goto LABEL_59;
      }

      if (((1 << v37) & 0x38) != 0)
      {
        *(a2 + 80) = *(v36 + 24);
      }

      else if (((1 << v37) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v36 + 24);
      }

      else
      {
        if (v37 != 8)
        {
          goto LABEL_59;
        }

        *(a2 + 80) = 0;
        v38 = *(v36 + 24);
        if (v38)
        {
          atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
          v39 = *(a2 + 80);
          *(a2 + 80) = v38;
          if (v39)
          {
            if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v39, a2);
            }
          }
        }
      }

      v32 = *(a2 + 56);
LABEL_59:
      v33 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v33;
      if (v32 != 82)
      {
        if (MEMORY[0x22AA683D0](v31, "group", 5))
        {
          if (*(a2 + 56) == 67)
          {
            while (1)
            {
              v51 = *(a2 + 36);
              v52 = (*(a2 + 40) + 1);
              *(a2 + 40) = v52;
              if (v51 <= v52)
              {
                __break(0xC471u);
                JUMPOUT(0x22577A180);
              }

              v53 = *(a2 + 24) + 32 * v52;
              v49 = *v53;
              *(a2 + 56) = *v53;
              *(a2 + 60) = *(v53 + 4);
              v54 = *v53;
              if (*v53 > 8u)
              {
                goto LABEL_89;
              }

              if (((1 << v54) & 0x38) != 0)
              {
                *(a2 + 80) = *(v53 + 24);
              }

              else if (((1 << v54) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v53 + 24);
              }

              else
              {
                if (v54 != 8)
                {
                  goto LABEL_89;
                }

                *(a2 + 80) = 0;
                v55 = *(v53 + 24);
                if (v55)
                {
                  atomic_fetch_add_explicit(v55, 2u, memory_order_relaxed);
                  v56 = *(a2 + 80);
                  *(a2 + 80) = v55;
                  if (v56)
                  {
                    if (atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v56, v48);
                    }
                  }
                }
              }

              v49 = *(a2 + 56);
LABEL_89:
              v50 = *(a2 + 68);
              *(a2 + 88) = *(a2 + 60);
              *(a2 + 96) = v50;
              if (v49 != 82)
              {
                v45 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v246, a2);
                if (v248[0])
                {
                  if (v248[0] == 1)
                  {
                    v89 = v246;
                    if (v246)
                    {
                      atomic_fetch_add_explicit(v246, 2u, memory_order_relaxed);
                      *(a1 + 8) = v247;
                      *a1 = v89;
                      *(a1 + 24) = 1;
                      if (atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v89, v46);
                        if (!v31)
                        {
                          return;
                        }

                        goto LABEL_333;
                      }

LABEL_332:
                      if (!v31)
                      {
                        return;
                      }

LABEL_333:
                      if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) != 2)
                      {
                        return;
                      }

                      v69 = v31;
LABEL_335:
                      WTF::StringImpl::destroy(v69, v46);
                      return;
                    }

                    *(a1 + 8) = v247;
                    *a1 = 0;
LABEL_331:
                    *(a1 + 24) = 1;
                    goto LABEL_332;
                  }

LABEL_486:
                  mpark::throw_bad_variant_access(v45);
                }

                v100 = *(a2 + 56);
                if (v100 == 48)
                {
                  WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v46);
                  v100 = *(a2 + 56);
                }

                if (v100 != 68)
                {
                  *v266 = v100;
                  LOBYTE(v268) = 1;
                  v45 = WGSL::toString();
                  if (v268 != 1)
                  {
                    goto LABEL_486;
                  }

                  WGSL::toString();
                  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v261, 13, &v260, &v237, ", but got a ");
                  v125 = v260;
                  v260 = 0;
                  if (v125 && atomic_fetch_add_explicit(v125, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v125, v94);
                  }

                  v126 = v261;
                  v261 = 0;
                  if (v126 && atomic_fetch_add_explicit(v126, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v126, v94);
                  }

                  v118 = (*(a2 + 96) - v5);
                  v119 = v237;
                  goto LABEL_268;
                }

                *v266 = 68;
                *&v266[4] = *(a2 + 60);
                LOBYTE(v268) = 0;
                while (2)
                {
                  v103 = *(a2 + 36);
                  v104 = (*(a2 + 40) + 1);
                  *(a2 + 40) = v104;
                  if (v103 <= v104)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x22577A1A0);
                  }

                  v105 = *(a2 + 24) + 32 * v104;
                  v101 = *v105;
                  *(a2 + 56) = *v105;
                  *(a2 + 60) = *(v105 + 4);
                  v106 = *v105;
                  if (*v105 <= 8u)
                  {
                    if (((1 << v106) & 0x38) != 0)
                    {
                      *(a2 + 80) = *(v105 + 24);
                      goto LABEL_204;
                    }

                    if (((1 << v106) & 0xC4) != 0)
                    {
                      *(a2 + 80) = *(v105 + 24);
                      goto LABEL_204;
                    }

                    if (v106 == 8)
                    {
                      *(a2 + 80) = 0;
                      v107 = *(v105 + 24);
                      if (v107)
                      {
                        atomic_fetch_add_explicit(v107, 2u, memory_order_relaxed);
                        v108 = *(a2 + 80);
                        *(a2 + 80) = v107;
                        if (v108)
                        {
                          if (atomic_fetch_add_explicit(v108, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v108, v46);
                          }
                        }
                      }

LABEL_204:
                      v101 = *(a2 + 56);
                    }
                  }

                  v102 = *(a2 + 68);
                  *(a2 + 88) = *(a2 + 60);
                  *(a2 + 96) = v102;
                  if (v101 != 82)
                  {
                    std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v266, v46);
                    v127 = *(a2 + 8);
                    v128 = *(a2 + 96) - v5;
                    *v266 = v4;
                    *&v266[8] = v5;
                    *&v266[12] = v128;
                    WGSL::AST::Builder::construct<WGSL::AST::GroupAttribute,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,void>(v127, v266, &v246);
                  }

                  continue;
                }
              }
            }
          }

          WGSL::toString();
          WGSL::toString();
          if (v263)
          {
            v78 = *(v263 + 1);
            if (v262)
            {
              goto LABEL_150;
            }

LABEL_217:
            v79 = 0;
            goto LABEL_218;
          }

          v78 = 0;
          if (!v262)
          {
            goto LABEL_217;
          }

LABEL_150:
          v79 = *(v262 + 4);
          if (v79 < 0)
          {
LABEL_496:
            __break(0xC471u);
            JUMPOUT(0x22577A1A8);
          }

LABEL_218:
          v14 = __OFADD__(v79, 12);
          v109 = v79 + 12;
          v110 = v14;
          if (v78 < 0)
          {
            goto LABEL_496;
          }

          if (v110)
          {
            goto LABEL_496;
          }

          v14 = __OFADD__(v78, v109);
          v111 = v78 + v109;
          if (v14)
          {
            goto LABEL_496;
          }

          v112 = (v111 + 11);
          if (__OFADD__(v111, 11))
          {
            goto LABEL_496;
          }

          if (v263)
          {
            v113 = *(v263 + 4);
            v114 = (v113 >> 2) & 1;
            if (!v262 || (v113 & 4) == 0)
            {
LABEL_290:
              WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v112, v114, "Expected a ", 0xBuLL, v263, ", but got a ", 0xCuLL, v266, v262);
              v136 = *v266;
              if (!*v266)
              {
                goto LABEL_496;
              }

              v137 = v262;
              v262 = 0;
              if (v137 && atomic_fetch_add_explicit(v137, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v137, v46);
              }

              v138 = v263;
              v263 = 0;
              if (!v138)
              {
LABEL_330:
                v150 = v5 | ((*(a2 + 96) - v5) << 32);
                *a1 = v136;
                *(a1 + 8) = v4;
                *(a1 + 16) = v150;
                goto LABEL_331;
              }

LABEL_328:
              if (atomic_fetch_add_explicit(v138, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v138, v46);
              }

              goto LABEL_330;
            }
          }

          else if (!v262)
          {
            v114 = 1;
            goto LABEL_290;
          }

          v114 = (*(v262 + 16) >> 2) & 1;
          goto LABEL_290;
        }

        if (MEMORY[0x22AA683D0](v31, "binding", 7))
        {
          if (*(a2 + 56) == 67)
          {
            *v266 = 67;
            *&v266[4] = *(a2 + 60);
            LOBYTE(v268) = 0;
            while (1)
            {
              v60 = *(a2 + 36);
              v61 = (*(a2 + 40) + 1);
              *(a2 + 40) = v61;
              if (v60 <= v61)
              {
                __break(0xC471u);
                JUMPOUT(0x22577A190);
              }

              v62 = *(a2 + 24) + 32 * v61;
              v58 = *v62;
              *(a2 + 56) = *v62;
              *(a2 + 60) = *(v62 + 4);
              v63 = *v62;
              if (*v62 > 8u)
              {
                goto LABEL_105;
              }

              if (((1 << v63) & 0x38) != 0)
              {
                *(a2 + 80) = *(v62 + 24);
              }

              else if (((1 << v63) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v62 + 24);
              }

              else
              {
                if (v63 != 8)
                {
                  goto LABEL_105;
                }

                *(a2 + 80) = 0;
                v64 = *(v62 + 24);
                if (v64)
                {
                  atomic_fetch_add_explicit(v64, 2u, memory_order_relaxed);
                  v65 = *(a2 + 80);
                  *(a2 + 80) = v64;
                  if (v65)
                  {
                    if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v65, v57);
                    }
                  }
                }
              }

              v58 = *(a2 + 56);
LABEL_105:
              v59 = *(a2 + 68);
              *(a2 + 88) = *(a2 + 60);
              *(a2 + 96) = v59;
              if (v58 != 82)
              {
                std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v266, v57);
                v45 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v246, a2);
                v98 = v248[0];
                if (v248[0])
                {
                  goto LABEL_195;
                }

                if (*(a2 + 56) == 48)
                {
                  WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v97);
                }

                WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v266, a2, 68);
                if (!v268)
                {
                  std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v266, v120);
                  v147 = *(a2 + 8);
                  v148 = *(a2 + 96) - v5;
                  *v266 = v4;
                  *&v266[8] = v5;
                  *&v266[12] = v148;
                  WGSL::AST::Builder::construct<WGSL::AST::BindingAttribute,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,void>(v147, v266, &v246);
                }

                v45 = WGSL::toString();
                if (v268 != 1)
                {
                  goto LABEL_486;
                }

                WGSL::toString();
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v257, 13, &v256, &v237, ", but got a ");
                v122 = v256;
                v256 = 0;
                if (v122 && atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v122, v121);
                }

                v123 = v257;
                v257 = 0;
                if (v123)
                {
LABEL_257:
                  if (atomic_fetch_add_explicit(v123, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v123, v121);
                  }
                }

LABEL_259:
                v124 = v5 | ((*(a2 + 96) - v5) << 32);
                *a1 = v237;
                *(a1 + 8) = v4;
                *(a1 + 16) = v124;
                *(a1 + 24) = 1;
                std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v266, v121);
LABEL_320:
                std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v246, v97);
                if (!v31)
                {
                  return;
                }

                goto LABEL_333;
              }
            }
          }

          WGSL::toString();
          WGSL::toString();
          if (v259)
          {
            v92 = *(v259 + 1);
          }

          else
          {
            v92 = 0;
          }

          if (v258)
          {
            v129 = *(v258 + 4);
            if (v129 < 0)
            {
              goto LABEL_497;
            }
          }

          else
          {
            v129 = 0;
          }

          v14 = __OFADD__(v129, 12);
          v130 = v129 + 12;
          v131 = v14;
          if ((v92 & 0x80000000) == 0 && (v131 & 1) == 0)
          {
            v14 = __OFADD__(v92, v130);
            v132 = v92 + v130;
            if (!v14)
            {
              v133 = (v132 + 11);
              if (!__OFADD__(v132, 11))
              {
                if (v259)
                {
                  v134 = *(v259 + 4);
                  v135 = (v134 >> 2) & 1;
                  if (!v258 || (v134 & 4) == 0)
                  {
                    goto LABEL_323;
                  }

LABEL_288:
                  v135 = (*(v258 + 16) >> 2) & 1;
                }

                else
                {
                  if (v258)
                  {
                    goto LABEL_288;
                  }

                  v135 = 1;
                }

LABEL_323:
                WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v133, v135, "Expected a ", 0xBuLL, v259, ", but got a ", 0xCuLL, &v246, v258);
                v136 = v246;
                if (v246)
                {
                  v149 = v258;
                  v258 = 0;
                  if (v149 && atomic_fetch_add_explicit(v149, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v149, v46);
                  }

                  v138 = v259;
                  v259 = 0;
                  if (!v138)
                  {
                    goto LABEL_330;
                  }

                  goto LABEL_328;
                }
              }
            }
          }

LABEL_497:
          __break(0xC471u);
LABEL_498:
          JUMPOUT(0x22577A160);
        }

        if (MEMORY[0x22AA683D0](v31, "location", 8))
        {
          if (*(a2 + 56) != 67)
          {
            *v266 = *(a2 + 56);
            LOBYTE(v268) = 1;
            goto LABEL_241;
          }

          *v266 = 67;
          *&v266[4] = *(a2 + 60);
          LOBYTE(v268) = 0;
          while (1)
          {
            v83 = *(a2 + 36);
            v84 = (*(a2 + 40) + 1);
            *(a2 + 40) = v84;
            if (v83 <= v84)
            {
              __break(0xC471u);
              JUMPOUT(0x22577A198);
            }

            v85 = *(a2 + 24) + 32 * v84;
            v81 = *v85;
            *(a2 + 56) = *v85;
            *(a2 + 60) = *(v85 + 4);
            v86 = *v85;
            if (*v85 > 8u)
            {
              goto LABEL_157;
            }

            if (((1 << v86) & 0x38) != 0)
            {
              *(a2 + 80) = *(v85 + 24);
            }

            else if (((1 << v86) & 0xC4) != 0)
            {
              *(a2 + 80) = *(v85 + 24);
            }

            else
            {
              if (v86 != 8)
              {
                goto LABEL_157;
              }

              *(a2 + 80) = 0;
              v87 = *(v85 + 24);
              if (v87)
              {
                atomic_fetch_add_explicit(v87, 2u, memory_order_relaxed);
                v88 = *(a2 + 80);
                *(a2 + 80) = v87;
                if (v88)
                {
                  if (atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v88, v80);
                  }
                }
              }
            }

            v81 = *(a2 + 56);
LABEL_157:
            v82 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v82;
            if (v81 != 82)
            {
              if (v268)
              {
LABEL_241:
                v45 = WGSL::toString();
                if (v268 != 1)
                {
                  goto LABEL_486;
                }

                WGSL::toString();
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v255, 13, &v254, &v246, ", but got a ");
                v117 = v254;
                v254 = 0;
                if (v117 && atomic_fetch_add_explicit(v117, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v117, v94);
                }

                v96 = v255;
                v255 = 0;
                if (v96)
                {
                  goto LABEL_246;
                }

LABEL_248:
                v118 = (*(a2 + 96) - v5);
                v119 = v246;
LABEL_268:
                *a1 = v119;
                *(a1 + 8) = v4;
                *(a1 + 16) = v5 | (v118 << 32);
                *(a1 + 24) = 1;
                std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v266, v94);
                if (!v31)
                {
                  return;
                }

                goto LABEL_333;
              }

              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v266, v80);
              v45 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v246, a2);
              v98 = v248[0];
              if (!v248[0])
              {
                if (*(a2 + 56) == 48)
                {
                  WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v97);
                }

                WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v266, a2, 68);
                if (!v268)
                {
                  std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v266, v145);
                  v164 = *(a2 + 8);
                  v165 = *(a2 + 96) - v5;
                  *v266 = v4;
                  *&v266[8] = v5;
                  *&v266[12] = v165;
                  WGSL::AST::Builder::construct<WGSL::AST::LocationAttribute,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,void>(v164, v266, &v246);
                }

                v45 = WGSL::toString();
                if (v268 != 1)
                {
                  goto LABEL_486;
                }

                WGSL::toString();
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v253, 13, &v252, &v237, ", but got a ");
                v146 = v252;
                v252 = 0;
                if (v146 && atomic_fetch_add_explicit(v146, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v146, v121);
                }

                v123 = v253;
                v253 = 0;
                if (v123)
                {
                  goto LABEL_257;
                }

                goto LABEL_259;
              }

LABEL_195:
              if (v98 != 1)
              {
                goto LABEL_486;
              }

              v99 = v246;
              if (v246)
              {
                atomic_fetch_add_explicit(v246, 2u, memory_order_relaxed);
              }

              *(a1 + 8) = v247;
              *a1 = v99;
              *(a1 + 24) = 1;
              goto LABEL_320;
            }
          }
        }

        if (MEMORY[0x22AA683D0](v31, "builtin", 7))
        {
          WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v266, a2, 67);
          if (v268)
          {
            v45 = WGSL::toString();
            if (v268 != 1)
            {
              goto LABEL_486;
            }

            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v251, 13, &v250, &v246, ", but got a ");
            v95 = v250;
            v250 = 0;
            if (v95 && atomic_fetch_add_explicit(v95, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v95, v94);
            }

            v96 = v251;
            v251 = 0;
            if (v96)
            {
              goto LABEL_246;
            }

            goto LABEL_248;
          }

          v141 = std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v266, v93);
          v45 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v141, a2);
          v143 = v268;
          if (v268)
          {
LABEL_305:
            if (v143 != 1)
            {
              goto LABEL_486;
            }

            v144 = *v266;
            if (*v266)
            {
              atomic_fetch_add_explicit(*v266, 2u, memory_order_relaxed);
            }

            *(a1 + 8) = *&v266[8];
            *a1 = v144;
LABEL_377:
            *(a1 + 24) = 1;
            std::experimental::fundamentals_v3::expected<WGSL::AST::Identifier,WGSL::CompilationMessage>::~expected(v266, v142);
            if (!v31)
            {
              return;
            }

            goto LABEL_333;
          }

          v155 = WTF::SortedArrayMap<std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,WGSL::Builtin> [12]>::tryGet<WTF::String>(WGSL::parseBuiltin(WTF::String const&)::__map, v267);
          if (v155)
          {
            v157 = v155;
            v158 = *v155;
            if (v158 > 7)
            {
              if (v158 == 8)
              {
                *(*a2 + 26) = 1;
              }

              else if (v158 == 9)
              {
                *(*a2 + 24) = 1;
              }
            }

            else if (*v155)
            {
              if (v158 == 1)
              {
                *(*a2 + 25) = 1;
              }
            }

            else
            {
              *(*a2 + 19) = 1;
            }

            if (*(a2 + 56) == 48)
            {
              WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v156);
            }

            WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(&v246, a2, 68);
            if (!v249)
            {
              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(&v246, v178);
              v184 = *(a2 + 8);
              v185 = *(a2 + 96) - v5;
              v246 = v4;
              *&v247 = __PAIR64__(v185, v5);
              WGSL::AST::Builder::construct<WGSL::AST::BuiltinAttribute,WGSL::SourceSpan,WGSL::Builtin const&,void>(v184, &v246, v157);
            }

            v45 = WGSL::toString();
            if (v249 != 1)
            {
              goto LABEL_486;
            }

            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v245, 13, &v244, &v237, ", but got a ");
            v180 = v244;
            v244 = 0;
            if (v180 && atomic_fetch_add_explicit(v180, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v180, v179);
            }

            v181 = v245;
            v245 = 0;
            if (v181)
            {
              goto LABEL_421;
            }

            goto LABEL_423;
          }

LABEL_376:
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v163 = v5 | ((*(a2 + 96) - v5) << 32);
          *a1 = v246;
          *(a1 + 8) = v4;
          *(a1 + 16) = v163;
          goto LABEL_377;
        }

        if (MEMORY[0x22AA683D0](v31, "workgroup_size", 14))
        {
          WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v266, a2, 67);
          if (v268)
          {
            v45 = WGSL::toString();
            if (v268 != 1)
            {
              goto LABEL_486;
            }

            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v243, 13, &v242, &v246, ", but got a ");
            v116 = v242;
            v242 = 0;
            if (v116 && atomic_fetch_add_explicit(v116, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v116, v94);
            }

            v96 = v243;
            v243 = 0;
            if (v96)
            {
              goto LABEL_246;
            }

            goto LABEL_248;
          }

          std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v266, v115);
          v45 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v246, a2);
          v98 = v248[0];
          if (v248[0])
          {
            goto LABEL_195;
          }

          v240 = 0;
          v241 = 0;
          if (*(a2 + 56) == 48)
          {
            WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v97);
            if (*(a2 + 56) != 68)
            {
              v45 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(v266, a2);
              if (v267[0])
              {
                if (v267[0] != 1)
                {
                  goto LABEL_486;
                }

                v154 = *v266;
                if (*v266)
                {
                  atomic_fetch_add_explicit(*v266, 2u, memory_order_relaxed);
                }

                *(a1 + 8) = *&v266[8];
                *a1 = v154;
                *(a1 + 24) = 1;
LABEL_352:
                std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(v266, v153);
                goto LABEL_320;
              }

              v241 = *v266;
              if (*(a2 + 56) == 48)
              {
                WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v153);
                if (*(a2 + 56) != 68)
                {
                  v45 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v237, a2);
                  if (v239)
                  {
                    if (v239 != 1)
                    {
                      goto LABEL_486;
                    }

                    v193 = v237;
                    if (v237)
                    {
                      atomic_fetch_add_explicit(v237, 2u, memory_order_relaxed);
                    }

                    *(a1 + 8) = v238;
                    *a1 = v193;
                    *(a1 + 24) = 1;
                    std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v237, v192);
                    goto LABEL_352;
                  }

                  v240 = v237;
                  if (*(a2 + 56) == 48)
                  {
                    WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v192);
                  }

                  std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v237, v192);
                }
              }

              std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(v266, v153);
            }
          }

          WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v266, a2, 68);
          if (!v268)
          {
            std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v266, v211);
            v213 = *(a2 + 8);
            v214 = *(a2 + 96) - v5;
            *v266 = v4;
            *&v266[8] = v5;
            *&v266[12] = v214;
            WGSL::AST::Builder::construct<WGSL::AST::WorkgroupSizeAttribute,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::Expression*,WGSL::AST::Expression*,void>(v213, v266, &v246, &v241, &v240);
          }

          v45 = WGSL::toString();
          if (v268 != 1)
          {
            goto LABEL_486;
          }

          WGSL::toString();
          WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v236, 13, &v235, &v237, ", but got a ");
          v212 = v235;
          v235 = 0;
          if (v212 && atomic_fetch_add_explicit(v212, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v212, v121);
          }

          v123 = v236;
          v236 = 0;
          if (v123)
          {
            goto LABEL_257;
          }

          goto LABEL_259;
        }

        if (MEMORY[0x22AA683D0](v31, "align", 5))
        {
          WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v266, a2, 67);
          if (!v268)
          {
            std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v266, v139);
            v45 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v246, a2);
            v98 = v248[0];
            if (!v248[0])
            {
              if (*(a2 + 56) == 48)
              {
                WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v97);
              }

              WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v266, a2, 68);
              if (!v268)
              {
                std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v266, v161);
                v186 = *(a2 + 8);
                v187 = *(a2 + 96) - v5;
                *v266 = v4;
                *&v266[8] = v5;
                *&v266[12] = v187;
                WGSL::AST::Builder::construct<WGSL::AST::AlignAttribute,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,void>(v186, v266, &v246);
              }

              v45 = WGSL::toString();
              if (v268 != 1)
              {
                goto LABEL_486;
              }

              WGSL::toString();
              WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v232, 13, &v231, &v237, ", but got a ");
              v162 = v231;
              v231 = 0;
              if (v162 && atomic_fetch_add_explicit(v162, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v162, v121);
              }

              v123 = v232;
              v232 = 0;
              if (v123)
              {
                goto LABEL_257;
              }

              goto LABEL_259;
            }

            goto LABEL_195;
          }

          v45 = WGSL::toString();
          if (v268 != 1)
          {
            goto LABEL_486;
          }

          WGSL::toString();
          WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v234, 13, &v233, &v246, ", but got a ");
          v140 = v233;
          v233 = 0;
          if (v140 && atomic_fetch_add_explicit(v140, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v140, v94);
          }

          v96 = v234;
          v234 = 0;
          if (!v96)
          {
            goto LABEL_248;
          }

LABEL_246:
          if (atomic_fetch_add_explicit(v96, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v96, v94);
          }

          goto LABEL_248;
        }

        if (!MEMORY[0x22AA683D0](v31, "interpolate", 11))
        {
          if (MEMORY[0x22AA683D0](v31, "size", 4))
          {
            WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v266, a2, 67);
            if (!v268)
            {
              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v266, v159);
              v45 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v246, a2);
              v98 = v248[0];
              if (!v248[0])
              {
                if (*(a2 + 56) == 48)
                {
                  WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v97);
                }

                WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v266, a2, 68);
                if (!v268)
                {
                  std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v266, v176);
                  v196 = *(a2 + 8);
                  v197 = *(a2 + 96) - v5;
                  *v266 = v4;
                  *&v266[8] = v5;
                  *&v266[12] = v197;
                  WGSL::AST::Builder::construct<WGSL::AST::SizeAttribute,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,void>(v196, v266, &v246);
                }

                v45 = WGSL::toString();
                if (v268 != 1)
                {
                  goto LABEL_486;
                }

                WGSL::toString();
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v224, 13, &v223, &v237, ", but got a ");
                v177 = v223;
                v223 = 0;
                if (v177 && atomic_fetch_add_explicit(v177, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v177, v121);
                }

                v123 = v224;
                v224 = 0;
                if (v123)
                {
                  goto LABEL_257;
                }

                goto LABEL_259;
              }

              goto LABEL_195;
            }

            v45 = WGSL::toString();
            if (v268 != 1)
            {
              goto LABEL_486;
            }

            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v226, 13, &v225, &v246, ", but got a ");
            v160 = v225;
            v225 = 0;
            if (v160 && atomic_fetch_add_explicit(v160, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v160, v94);
            }

            v96 = v226;
            v226 = 0;
            if (!v96)
            {
              goto LABEL_248;
            }
          }

          else
          {
            if (!MEMORY[0x22AA683D0](v31, "id", 2))
            {
              if (MEMORY[0x22AA683D0](v31, "invariant", 9))
              {
                v174 = *(a2 + 8);
                v175 = *(a2 + 96) - v5;
                *v266 = v4;
                *&v266[8] = v5;
                *&v266[12] = v175;
                WGSL::AST::Builder::construct<WGSL::AST::InvariantAttribute,WGSL::SourceSpan,void>(v174, v266);
              }

              if (MEMORY[0x22AA683D0](v31, "must_use", 8))
              {
                v188 = *(a2 + 8);
                v189 = *(a2 + 96) - v5;
                *v266 = v4;
                *&v266[8] = v5;
                *&v266[12] = v189;
                WGSL::AST::Builder::construct<WGSL::AST::MustUseAttribute,WGSL::SourceSpan,void>(v188, v266);
              }

              if (MEMORY[0x22AA683D0](v31, "const", 5))
              {
                v194 = *(a2 + 8);
                v195 = *(a2 + 96) - v5;
                *v266 = v4;
                *&v266[8] = v5;
                *&v266[12] = v195;
                WGSL::AST::Builder::construct<WGSL::AST::ConstAttribute,WGSL::SourceSpan,void>(v194, v266);
              }

              if (MEMORY[0x22AA683D0](v31, "vertex", 6))
              {
                v198 = *(a2 + 8);
                v199 = *(a2 + 96) - v5;
                *v266 = v4;
                *&v266[8] = v5;
                *&v266[12] = v199;
                v200 = 1;
              }

              else if (MEMORY[0x22AA683D0](v31, "compute", 7))
              {
                v198 = *(a2 + 8);
                v210 = *(a2 + 96) - v5;
                *v266 = v4;
                *&v266[8] = v5;
                *&v266[12] = v210;
                v200 = 4;
              }

              else
              {
                if (!MEMORY[0x22AA683D0](v31, "fragment", 8))
                {
                  WTF::StringImpl::createWithoutCopyingNonEmpty();
                  v218 = v5 | ((*(a2 + 96) - v5) << 32);
                  *a1 = *v266;
                  *(a1 + 8) = v4;
                  *(a1 + 16) = v218;
                  goto LABEL_331;
                }

                v198 = *(a2 + 8);
                v217 = *(a2 + 96) - v5;
                *v266 = v4;
                *&v266[8] = v5;
                *&v266[12] = v217;
                v200 = 2;
              }

              LOBYTE(v246) = v200;
              WGSL::AST::Builder::construct<WGSL::AST::StageAttribute,WGSL::SourceSpan,WGSL::ShaderStage,void>(v198, v266, &v246);
            }

            WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v266, a2, 67);
            if (!v268)
            {
              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v266, v166);
              v45 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v246, a2);
              v98 = v248[0];
              if (!v248[0])
              {
                if (*(a2 + 56) == 48)
                {
                  WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v97);
                }

                WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v266, a2, 68);
                if (!v268)
                {
                  std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v266, v190);
                  v208 = *(a2 + 8);
                  v209 = *(a2 + 96) - v5;
                  *v266 = v4;
                  *&v266[8] = v5;
                  *&v266[12] = v209;
                  WGSL::AST::Builder::construct<WGSL::AST::IdAttribute,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,void>(v208, v266, &v246);
                }

                v45 = WGSL::toString();
                if (v268 != 1)
                {
                  goto LABEL_486;
                }

                WGSL::toString();
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v220, 13, &v219, &v237, ", but got a ");
                v191 = v219;
                v219 = 0;
                if (v191 && atomic_fetch_add_explicit(v191, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v191, v121);
                }

                v123 = v220;
                v220 = 0;
                if (v123)
                {
                  goto LABEL_257;
                }

                goto LABEL_259;
              }

              goto LABEL_195;
            }

            v45 = WGSL::toString();
            if (v268 != 1)
            {
              goto LABEL_486;
            }

            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v222, 13, &v221, &v246, ", but got a ");
            v167 = v221;
            v221 = 0;
            if (v167 && atomic_fetch_add_explicit(v167, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v167, v94);
            }

            v96 = v222;
            v222 = 0;
            if (!v96)
            {
              goto LABEL_248;
            }
          }

          goto LABEL_246;
        }

        WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v266, a2, 67);
        if (v268)
        {
          v45 = WGSL::toString();
          if (v268 != 1)
          {
            goto LABEL_486;
          }

          WGSL::toString();
          WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v230, 13, &v229, &v246, ", but got a ");
          v152 = v229;
          v229 = 0;
          if (v152 && atomic_fetch_add_explicit(v152, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v152, v94);
          }

          v96 = v230;
          v230 = 0;
          if (!v96)
          {
            goto LABEL_248;
          }

          goto LABEL_246;
        }

        v168 = std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v266, v151);
        v45 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v168, a2);
        v143 = v268;
        if (v268)
        {
          goto LABEL_305;
        }

        v169 = WGSL::parseInterpolationType(v267);
        if (!v169)
        {
          goto LABEL_376;
        }

        v171 = v169;
        LOBYTE(v241) = 0;
        if (*(a2 + 56) == 48)
        {
          WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v170);
          v45 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v246, a2);
          if (v249)
          {
            if (v249 != 1)
            {
              goto LABEL_486;
            }

            v173 = v246;
            if (v246)
            {
              atomic_fetch_add_explicit(v246, 2u, memory_order_relaxed);
            }

            *(a1 + 8) = v247;
            *a1 = v173;
LABEL_479:
            *(a1 + 24) = 1;
            std::experimental::fundamentals_v3::expected<WGSL::AST::Identifier,WGSL::CompilationMessage>::~expected(&v246, v172);
            std::experimental::fundamentals_v3::expected<WGSL::AST::Identifier,WGSL::CompilationMessage>::~expected(v266, v216);
            if (!v31)
            {
              return;
            }

            goto LABEL_333;
          }

          v201 = WTF::SortedArrayMap<std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,WGSL::InterpolationSampling> [5]>::tryGet<WTF::String>(WGSL::parseInterpolationSampling(WTF::String const&)::__map, v248);
          if (!v201)
          {
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            v215 = v5 | ((*(a2 + 96) - v5) << 32);
            *a1 = v237;
            *(a1 + 8) = v4;
            *(a1 + 16) = v215;
            goto LABEL_479;
          }

          LOBYTE(v241) = *v201;
          std::experimental::fundamentals_v3::expected<WGSL::AST::Identifier,WGSL::CompilationMessage>::~expected(&v246, v202);
          if (*(a2 + 56) == 48)
          {
            WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v203);
          }
        }

        WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(&v246, a2, 68);
        if (!v249)
        {
          std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(&v246, v204);
          v206 = *(a2 + 8);
          v207 = *(a2 + 96) - v5;
          v246 = v4;
          *&v247 = __PAIR64__(v207, v5);
          WGSL::AST::Builder::construct<WGSL::AST::InterpolateAttribute,WGSL::SourceSpan,WGSL::InterpolationType const&,WGSL::InterpolationSampling &,void>(v206, &v246, v171, &v241);
        }

        v45 = WGSL::toString();
        if (v249 != 1)
        {
          goto LABEL_486;
        }

        WGSL::toString();
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v228, 13, &v227, &v237, ", but got a ");
        v205 = v227;
        v227 = 0;
        if (v205 && atomic_fetch_add_explicit(v205, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v205, v179);
        }

        v181 = v228;
        v228 = 0;
        if (v181)
        {
LABEL_421:
          if (atomic_fetch_add_explicit(v181, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v181, v179);
          }
        }

LABEL_423:
        v182 = v5 | ((*(a2 + 96) - v5) << 32);
        *a1 = v237;
        *(a1 + 8) = v4;
        *(a1 + 16) = v182;
        *(a1 + 24) = 1;
        std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(&v246, v179);
        std::experimental::fundamentals_v3::expected<WGSL::AST::Identifier,WGSL::CompilationMessage>::~expected(v266, v183);
        if (!v31)
        {
          return;
        }

        goto LABEL_333;
      }
    }
  }

  if (v9 != 18)
  {
    WGSL::toString();
    WGSL::toString();
    if (v265)
    {
      v41 = *(v265 + 1);
      if (v264)
      {
LABEL_72:
        v42 = *(v264 + 4);
        if (v42 < 0)
        {
          goto LABEL_492;
        }

        v14 = __OFADD__(v42, 12);
        v43 = v42 + 12;
        v44 = v14;
        if (v41 < 0)
        {
          goto LABEL_492;
        }

        goto LABEL_136;
      }
    }

    else
    {
      v41 = 0;
      if (v264)
      {
        goto LABEL_72;
      }
    }

    v43 = 12;
    if (v40)
    {
      v44 = 1;
    }

    else
    {
      v44 = 0;
    }

    if (v41 < 0)
    {
LABEL_492:
      __break(0xC471u);
      JUMPOUT(0x22577A188);
    }

LABEL_136:
    if (v44)
    {
      goto LABEL_492;
    }

    v14 = __OFADD__(v41, v43);
    v74 = v41 + v43;
    if (v14)
    {
      goto LABEL_492;
    }

    v75 = (v74 + 11);
    if (__OFADD__(v74, 11))
    {
      goto LABEL_492;
    }

    if (v265)
    {
      v76 = *(v265 + 4);
      v77 = (v76 >> 2) & 1;
      if (!v264 || (v76 & 4) == 0)
      {
LABEL_175:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v75, v77, "Expected a ", 0xBuLL, v265, ", but got a ", 0xCuLL, v266, v264);
        v71 = *v266;
        if (!*v266)
        {
          goto LABEL_492;
        }

        v90 = v264;
        v264 = 0;
        if (v90 && atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v90, v70);
        }

        v73 = v265;
        v265 = 0;
        if (!v73)
        {
LABEL_182:
          v91 = v5 | ((*(a2 + 96) - v5) << 32);
          *a1 = v71;
          *(a1 + 8) = v4;
          *(a1 + 16) = v91;
          *(a1 + 24) = 1;
          return;
        }

LABEL_180:
        if (atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v73, v70);
        }

        goto LABEL_182;
      }
    }

    else if (!v264)
    {
      v77 = 1;
      goto LABEL_175;
    }

    v77 = (*(v264 + 16) >> 2) & 1;
    goto LABEL_175;
  }

  while (2)
  {
    v21 = *(a2 + 36);
    v22 = (*(a2 + 40) + 1);
    *(a2 + 40) = v22;
    if (v21 <= v22)
    {
      __break(0xC471u);
      JUMPOUT(0x22577A168);
    }

    v23 = *(a2 + 24) + 32 * v22;
    v19 = *v23;
    *(a2 + 56) = *v23;
    *(a2 + 60) = *(v23 + 4);
    v24 = *v23;
    if (*v23 <= 8u)
    {
      if (((1 << v24) & 0x38) != 0)
      {
        *(a2 + 80) = *(v23 + 24);
        goto LABEL_28;
      }

      if (((1 << v24) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v23 + 24);
        goto LABEL_28;
      }

      if (v24 == 8)
      {
        *(a2 + 80) = 0;
        v25 = *(v23 + 24);
        if (v25)
        {
          atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
          v26 = *(a2 + 80);
          *(a2 + 80) = v25;
          if (v26)
          {
            if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v26, a2);
            }
          }
        }

LABEL_28:
        v19 = *(a2 + 56);
      }
    }

    v20 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v20;
    if (v19 == 82)
    {
      continue;
    }

    break;
  }

  WGSL::Parser<WGSL::Lexer<unsigned char>>::parseDiagnostic(v266, a2);
  if (!v272)
  {
    v66 = *(a2 + 8);
    v67 = *(a2 + 96) - v5;
    v246 = v4;
    *&v247 = __PAIR64__(v67, v5);
    WGSL::AST::Builder::construct<WGSL::AST::DiagnosticAttribute,WGSL::SourceSpan,WGSL::AST::Diagnostic,void>(v66, &v246, v266);
  }

  if (v272 != 1)
  {
    goto LABEL_486;
  }

  v47 = *v266;
  if (*v266)
  {
    atomic_fetch_add_explicit(*v266, 2u, memory_order_relaxed);
  }

  *(a1 + 8) = *&v266[8];
  *a1 = v47;
  *(a1 + 24) = 1;
  if (v272 != 255)
  {
    if (v272)
    {
      v69 = *v266;
      *v266 = 0;
      if (!v69)
      {
        return;
      }
    }

    else
    {
      if (v271 == 1)
      {
        v68 = v270;
        v269 = off_2838D37C0;
        v270 = 0;
        if (v68)
        {
          if (atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v68, v46);
          }
        }
      }

      v69 = v268;
      *&v266[8] = off_2838D37C0;
      v268 = 0;
      if (!v69)
      {
        return;
      }
    }

    if (atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      return;
    }

    goto LABEL_335;
  }
}

void WGSL::AST::DiagnosticAttribute::~DiagnosticAttribute(WGSL::AST::DiagnosticAttribute *this, WTF::StringImpl *a2)
{
  if (*(this + 96) == 1)
  {
    *(this + 8) = off_2838D37C0;
    v2 = *(this + 11);
    *(this + 11) = 0;
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v3 = this;
        WTF::StringImpl::destroy(v2, a2);
        this = v3;
      }
    }
  }

  *(this + 4) = off_2838D37C0;
  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }
}

{
  if (*(this + 96) == 1)
  {
    *(this + 8) = off_2838D37C0;
    v2 = *(this + 11);
    *(this + 11) = 0;
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v3 = this;
        WTF::StringImpl::destroy(v2, a2);
        this = v3;
      }
    }
  }

  *(this + 4) = off_2838D37C0;
  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  JUMPOUT(0x22AA68560);
}

uint64_t *WTF::makeString<WTF::ASCIILiteral,WGSL::AST::Identifier,WTF::ASCIILiteral,WGSL::AST::Identifier,char>(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v6 = result;
  if (a2)
  {
    v7 = *(a2 + 4);
    if (a3)
    {
LABEL_3:
      v8 = *(a3 + 4);
      if (v8 < 0)
      {
        goto LABEL_170;
      }

      v3 = __OFADD__(v8, 1);
      v9 = v8 + 1;
      if (v3)
      {
        goto LABEL_170;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 1;
  if (v3)
  {
    goto LABEL_170;
  }

LABEL_9:
  v3 = __OFADD__(v9, 13);
  v10 = v9 + 13;
  v11 = v3;
  if (v7 < 0)
  {
    goto LABEL_170;
  }

  if (v11)
  {
    goto LABEL_170;
  }

  v3 = __OFADD__(v7, v10);
  v12 = v7 + v10;
  if (v3)
  {
    goto LABEL_170;
  }

  v13 = (v12 + 18);
  if (__OFADD__(v12, 18))
  {
    goto LABEL_170;
  }

  if (a2 && (*(a2 + 16) & 4) == 0 || a3 && (*(a3 + 16) & 4) == 0)
  {
    if (v12 != -18)
    {
      if (v13 <= 0x7FFFFFEF)
      {
        v14 = v13;
        result = WTF::tryFastCompactMalloc(&v102, (2 * v13 + 20));
        v18 = v102;
        if (v102)
        {
          *v102 = 2;
          v18[1] = v13;
          *(v18 + 5) = xmmword_225882740;
          *(v18 + 1) = v18 + 5;
          v18[4] = 0;
          *(v18 + 9) = xmmword_225882750;
          v19 = 2555936;
          v18[13] = 2555936;
          if (v13 <= 0x11)
          {
            goto LABEL_165;
          }

          v13 = (v18 + 14);
          v14 -= 18;
          if (!v5)
          {
            v23 = 0;
            goto LABEL_77;
          }

          v15 = *(v5 + 8);
          v20 = *(v5 + 4);
          v19 = *(v5 + 16);
          if ((v19 & 4) != 0)
          {
            v19 = v13 + 2 * v20;
            if (v20 < 0x40)
            {
              v16 = (v18 + 14);
            }

            else
            {
              v16 = v13 + 2 * (v20 & 0xFFFFFFC0);
              v25 = 0uLL;
              v26 = (v18 + 14);
              do
              {
                v103.val[0] = *v15;
                v27 = v15[1];
                v105.val[0] = v15[2];
                v28 = v15[3];
                v15 += 4;
                v29 = v28;
                v105.val[1] = 0uLL;
                v107.val[0] = v27;
                v103.val[1] = 0uLL;
                v30 = v26;
                vst2q_s8(v30, v103);
                v30 += 32;
                v107.val[1] = 0uLL;
                vst2q_s8(v30, v107);
                v31 = v26 + 64;
                vst2q_s8(v31, v105);
                v32 = v26 + 96;
                vst2q_s8(v32, *(&v25 - 1));
                v26 += 128;
              }

              while (v26 != v16);
            }

            if (v16 != v19)
            {
              v33 = v18 + 2 * v20 - v16 + 54;
              if (v33 < 0xE || (v16 < v15->u64 + (v33 >> 1) + 1 ? (v34 = v15 >= (v33 & 0xFFFFFFFFFFFFFFFELL) + v16 + 2) : (v34 = 1), !v34))
              {
                v36 = v15;
                v37 = v16;
                goto LABEL_60;
              }

              v35 = (v33 >> 1) + 1;
              if (v33 >= 0x3E)
              {
                v17 = v35 & 0xFFFFFFFFFFFFFFE0;
                v68 = (v16 + 32);
                v69 = &v15[1];
                v70 = v35 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v71 = *v69[-2].i8;
                  v72 = vmovl_u8(*v69);
                  v73 = vmovl_high_u8(*v69->i8);
                  v68[-2] = vmovl_u8(*v71.i8);
                  v68[-1] = vmovl_high_u8(v71);
                  *v68 = v72;
                  v68[1] = v73;
                  v68 += 4;
                  v69 += 4;
                  v70 -= 32;
                }

                while (v70);
                if (v35 == v17)
                {
                  goto LABEL_76;
                }

                if ((v35 & 0x18) == 0)
                {
                  goto LABEL_166;
                }
              }

              else
              {
                v17 = 0;
              }

              v36 = (v15 + (v35 & 0xFFFFFFFFFFFFFFF8));
              v37 = (v16 + 2 * (v35 & 0xFFFFFFFFFFFFFFF8));
              v16 += 2 * v17;
              v74 = &v15->i8[v17];
              v17 -= v35 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v75 = *v74++;
                *v16 = vmovl_u8(v75);
                v16 += 16;
                v17 += 8;
              }

              while (v17);
              if (v35 != (v35 & 0xFFFFFFFFFFFFFFF8))
              {
                goto LABEL_60;
              }
            }
          }

          else if (v20)
          {
            if (v20 == 1)
            {
              v19 = v15->u16[0];
              *v13 = v19;
            }

            else
            {
              result = memcpy(v18 + 14, v15, 2 * v20);
            }
          }

          while (1)
          {
LABEL_76:
            v23 = *(v5 + 4);
            if (v14 < v23)
            {
              goto LABEL_165;
            }

LABEL_77:
            v19 = v13 + 2 * v23;
            *v19 = xmmword_225882760;
            *(v19 + 16) = 0x20007400630075;
            *(v19 + 24) = 39;
            v16 = v14 - v23;
            if (v14 - v23 <= 0xC)
            {
              goto LABEL_165;
            }

            v5 = v19 + 26;
            v13 = v16 - 13;
            if (a3)
            {
              break;
            }

            v19 = 0;
LABEL_98:
            if (v13 != v19)
            {
              *(v5 + 2 * v19) = 39;
              goto LABEL_130;
            }

LABEL_165:
            __break(1u);
LABEL_166:
            v37 = (v16 + 2 * v17);
            v36 = (v15 + v17);
            do
            {
LABEL_60:
              v38 = v36->u8[0];
              v36 = (v36 + 1);
              v16 = v38;
              *v37++ = v38;
            }

            while (v37 != v19);
          }

          v15 = *(a3 + 8);
          v45 = *(a3 + 4);
          if ((*(a3 + 16) & 4) == 0)
          {
            if (v45)
            {
              if (v45 == 1)
              {
                *v5 = v15->i16[0];
              }

              else
              {
                result = memcpy(v5, v15, 2 * v45);
              }
            }

            goto LABEL_97;
          }

          v46 = (v5 + 2 * v45);
          if (v45 < 0x40)
          {
            v16 = v5;
          }

          else
          {
            v16 = v5 + 2 * (v45 & 0xFFFFFFC0);
            v47 = 0uLL;
            v48 = v5;
            do
            {
              v104.val[0] = *v15;
              v49 = v15[1];
              v106.val[0] = v15[2];
              v50 = v15[3];
              v15 += 4;
              v51 = v50;
              v106.val[1] = 0uLL;
              v108.val[0] = v49;
              v104.val[1] = 0uLL;
              v52 = v48;
              vst2q_s8(v52, v104);
              v52 += 32;
              v108.val[1] = 0uLL;
              vst2q_s8(v52, v108);
              v53 = v48 + 64;
              vst2q_s8(v53, v106);
              v17 = (v48 + 96);
              vst2q_s8(v17, *(&v47 - 1));
              v48 += 128;
            }

            while (v48 != v16);
          }

          if (v16 == v46)
          {
LABEL_97:
            v19 = *(a3 + 4);
            if (v13 < v19)
            {
              goto LABEL_165;
            }

            goto LABEL_98;
          }

          v54 = v18 + 2 * v23 + 2 * v45 - v16 + 80;
          if (v54 < 0xE || v16 < v15->u64 + (v54 >> 1) + 1 && v15 < (v54 & 0xFFFFFFFFFFFFFFFELL) + v16 + 2)
          {
            v55 = v15;
            v56 = v16;
            goto LABEL_94;
          }

          v67 = (v54 >> 1) + 1;
          if (v54 >= 0x3E)
          {
            v17 = v67 & 0xFFFFFFFFFFFFFFE0;
            v76 = (v16 + 32);
            v77 = &v15[1];
            v78 = v67 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v79 = *v77[-2].i8;
              v80 = vmovl_u8(*v77);
              v81 = vmovl_high_u8(*v77->i8);
              v76[-2] = vmovl_u8(*v79.i8);
              v76[-1] = vmovl_high_u8(v79);
              *v76 = v80;
              v76[1] = v81;
              v76 += 4;
              v77 += 4;
              v78 -= 32;
            }

            while (v78);
            if (v67 == v17)
            {
              goto LABEL_97;
            }

            if ((v67 & 0x18) == 0)
            {
              v56 = (v16 + 2 * v17);
              v55 = (v15 + v17);
              goto LABEL_94;
            }
          }

          else
          {
            v17 = 0;
          }

          v55 = (v15 + (v67 & 0xFFFFFFFFFFFFFFF8));
          v56 = (v16 + 2 * (v67 & 0xFFFFFFFFFFFFFFF8));
          v16 += 2 * v17;
          v82 = &v15->i8[v17];
          v17 -= v67 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v83 = *v82++;
            *v16 = vmovl_u8(v83);
            v16 += 16;
            v17 += 8;
          }

          while (v17);
          if (v67 == (v67 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_97;
          }

          do
          {
LABEL_94:
            v57 = v55->u8[0];
            v55 = (v55 + 1);
            v16 = v57;
            *v56++ = v57;
          }

          while (v56 != v46);
          goto LABEL_97;
        }
      }

      goto LABEL_170;
    }

LABEL_39:
    v18 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_130;
  }

  if (v12 == -18)
  {
    goto LABEL_39;
  }

  if ((v13 & 0x80000000) != 0 || (v14 = v13, result = WTF::tryFastCompactMalloc(&v102, (v13 + 20)), (v18 = v102) == 0))
  {
LABEL_170:
    *v6 = 0;
    __break(0xC471u);
    return result;
  }

  v16 = 2;
  *v102 = 2;
  v18[1] = v13;
  *(v18 + 1) = v18 + 5;
  v18[4] = 4;
  *(v18 + 18) = 10016;
  v19 = "duplicate member '";
  *(v18 + 5) = *"duplicate member '";
  if (v13 <= 0x11)
  {
    goto LABEL_165;
  }

  v14 = v13 - 18;
  v13 = v18 + 38;
  if (!v5)
  {
    v24 = 0;
    goto LABEL_102;
  }

  v15 = *(v5 + 8);
  v21 = *(v5 + 4);
  v19 = *(v5 + 16);
  if ((v19 & 4) != 0)
  {
    if (v21)
    {
      if (v21 == 1)
      {
        v19 = v15->u8[0];
        *v13 = v19;
      }

      else
      {
        result = memcpy(v18 + 38, v15, v21);
      }
    }
  }

  else
  {
    v19 = v13 + v21;
    if (v21 < 0x10)
    {
      v16 = v18 + 38;
    }

    else
    {
      v16 = v18 + 38;
      do
      {
        v22 = vld2q_s8(v15->i8);
        v15 += 2;
        *v16 = v22;
        v16 += 16;
      }

      while (v16 != v13 + (v21 & 0xFFFFFFF0));
    }

    if (v16 != v19)
    {
      v39 = v18 + v21;
      v40 = v18 + v21 - v16 + 38;
      if (v40 < 4 || ((v17 = v15 - 2 * v16, v16 < v17 + 2 * v39 + 76) ? (v41 = v15 >= (v39 + 38)) : (v41 = 1), !v41))
      {
        v42 = v16;
        v43 = v15;
        goto LABEL_73;
      }

      if (v40 >= 0x20)
      {
        v17 = v40 & 0xFFFFFFFFFFFFFFE0;
        v84 = v15 + 2;
        v85 = (v16 + 16);
        v86 = v40 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v88 = v84[-2];
          v87 = v84[-1];
          v90 = *v84;
          v89 = v84[1];
          v84 += 4;
          v85[-1] = vuzp1q_s8(v88, v87);
          *v85 = vuzp1q_s8(v90, v89);
          v85 += 2;
          v86 -= 32;
        }

        while (v86);
        if (v40 == v17)
        {
          goto LABEL_101;
        }

        if ((v40 & 0x1C) == 0)
        {
          v43 = (v15 + 2 * v17);
          v42 = (v16 + v17);
          do
          {
LABEL_73:
            v44 = v43->u8[0];
            v43 = (v43 + 2);
            v16 = v44;
            *v42++ = v44;
          }

          while (v42 != v19);
          goto LABEL_101;
        }
      }

      else
      {
        v17 = 0;
      }

      v42 = (v16 + (v40 & 0xFFFFFFFFFFFFFFFCLL));
      v43 = (v15 + 2 * (v40 & 0xFFFFFFFFFFFFFFFCLL));
      v91 = (v15 + 2 * v17);
      v16 += v17;
      v17 -= v40 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v92 = *v91++;
        *v16 = vuzp1_s8(v92, v92).u32[0];
        v16 += 4;
        v17 += 4;
      }

      while (v17);
      if (v40 != (v40 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_73;
      }
    }
  }

LABEL_101:
  v24 = *(v5 + 4);
  if (v14 < v24)
  {
    goto LABEL_165;
  }

LABEL_102:
  v19 = v14 - v24;
  v16 = v13 + v24;
  qmemcpy((v13 + v24), "' in struct '", 13);
  if (v14 - v24 <= 0xC)
  {
    goto LABEL_165;
  }

  v13 = v19 - 13;
  v5 = v16 + 13;
  if (!a3)
  {
    v19 = 0;
    goto LABEL_128;
  }

  v15 = *(a3 + 8);
  v58 = *(a3 + 4);
  if ((*(a3 + 16) & 4) != 0)
  {
    if (v58)
    {
      if (v58 == 1)
      {
        *v5 = v15->i8[0];
      }

      else
      {
        result = memcpy((v16 + 13), v15, v58);
      }
    }
  }

  else
  {
    v59 = (v5 + v58);
    if (v58 < 0x10)
    {
      v16 += 13;
    }

    else
    {
      v16 += 13;
      do
      {
        v60 = vld2q_s8(v15->i8);
        v15 += 2;
        *v16 = v60;
        v16 += 16;
      }

      while (v16 != v5 + (v58 & 0xFFFFFFF0));
    }

    if (v16 != v59)
    {
      v61 = v18 + v24 + v58;
      v62 = &v61[-v16 + 51];
      if (v62 < 4 || ((v17 = v15 - 2 * v16, v16 < v17 + 2 * v61 + 102) ? (v63 = v15 >= (v61 + 51)) : (v63 = 1), !v63))
      {
        v64 = v16;
        v65 = v15;
        goto LABEL_124;
      }

      if (v62 >= 0x20)
      {
        v17 = v62 & 0xFFFFFFFFFFFFFFE0;
        v93 = v15 + 2;
        v94 = (v16 + 16);
        v95 = v62 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v97 = v93[-2];
          v96 = v93[-1];
          v99 = *v93;
          v98 = v93[1];
          v93 += 4;
          v94[-1] = vuzp1q_s8(v97, v96);
          *v94 = vuzp1q_s8(v99, v98);
          v94 += 2;
          v95 -= 32;
        }

        while (v95);
        if (v62 == v17)
        {
          goto LABEL_127;
        }

        if ((v62 & 0x1C) == 0)
        {
          v65 = (v15 + 2 * v17);
          v64 = (v16 + v17);
          do
          {
LABEL_124:
            v66 = v65->u8[0];
            v65 = (v65 + 2);
            v16 = v66;
            *v64++ = v66;
          }

          while (v64 != v59);
          goto LABEL_127;
        }
      }

      else
      {
        v17 = 0;
      }

      v64 = (v16 + (v62 & 0xFFFFFFFFFFFFFFFCLL));
      v65 = (v15 + 2 * (v62 & 0xFFFFFFFFFFFFFFFCLL));
      v100 = (v15 + 2 * v17);
      v16 += v17;
      v17 -= v62 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v101 = *v100++;
        *v16 = vuzp1_s8(v101, v101).u32[0];
        v16 += 4;
        v17 += 4;
      }

      while (v17);
      if (v62 != (v62 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_124;
      }
    }
  }

LABEL_127:
  v19 = *(a3 + 4);
  if (v13 < v19)
  {
    goto LABEL_165;
  }

LABEL_128:
  if (v13 == v19)
  {
    goto LABEL_165;
  }

  *(v5 + v19) = 39;
LABEL_130:
  *v6 = v18;
  return result;
}

WTF::StringImpl *WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(uint64_t a1, uint64_t *a2, const WTF::StringImpl **a3)
{
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x22577C21CLL);
  }

  v6 = *a2;
  if (!*a2)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8uLL, 0);
    v6 = *a2;
    if (!*a2)
    {
      v7 = 0;
      v8 = *a3;
      v9 = *(*a3 + 4);
      if (v9 >= 0x100)
      {
        goto LABEL_6;
      }

LABEL_8:
      v10 = WTF::StringImpl::hashSlowCase(v8);
      goto LABEL_9;
    }
  }

  v7 = *(v6 - 8);
  v8 = *a3;
  v9 = *(*a3 + 4);
  if (v9 < 0x100)
  {
    goto LABEL_8;
  }

LABEL_6:
  v10 = v9 >> 8;
LABEL_9:
  v11 = 0;
  for (i = 1; ; ++i)
  {
    v13 = v10 & v7;
    v14 = (v6 + 8 * (v10 & v7));
    result = *v14;
    if (*v14 == -1)
    {
      v11 = (v6 + 8 * v13);
      goto LABEL_11;
    }

    if (!result)
    {
      if (v11)
      {
        result = 0;
        *v11 = 0;
        --*(*a2 - 16);
        v14 = v11;
      }

      v18 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
        result = *v14;
      }

      *v14 = v18;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

      v19 = *a2;
      if (*a2)
      {
        v20 = *(v19 - 16);
        v21 = *(v19 - 12) + 1;
        *(v19 - 12) = v21;
        v22 = (v20 + v21);
        v23 = *(v19 - 4);
        if (v23 <= 0x400)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v21 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v22 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v23 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
        {
LABEL_26:
          if (3 * v23 > 4 * v22)
          {
LABEL_34:
            v24 = v19 + 8 * v23;
            v25 = 1;
            goto LABEL_37;
          }

          if (!v23)
          {
            result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8uLL, v14);
            v14 = result;
            v19 = *a2;
            if (!*a2)
            {
LABEL_29:
              v23 = 0;
              goto LABEL_34;
            }

LABEL_33:
            v23 = *(v19 - 4);
            goto LABEL_34;
          }

LABEL_32:
          result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, (v23 << (6 * v21 >= (2 * v23))), v14);
          v14 = result;
          v19 = *a2;
          if (!*a2)
          {
            goto LABEL_29;
          }

          goto LABEL_33;
        }
      }

      if (v23 > 2 * v22)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    result = WTF::equal(result, *a3, a3);
    if (result)
    {
      break;
    }

LABEL_11:
    v10 = i + v13;
  }

  v16 = *a2;
  if (*a2)
  {
    v17 = *(v16 - 4);
  }

  else
  {
    v17 = 0;
  }

  v25 = 0;
  v24 = v16 + 8 * v17;
LABEL_37:
  *a1 = v14;
  *(a1 + 8) = v24;
  *(a1 + 16) = v25;
  return result;
}

WTF::StringImpl *WGSL::TemplateTypes<(WGSL::TokenType)13,(WGSL::TokenType)28,(WGSL::TokenType)26,(WGSL::TokenType)34>::appendNameTo(uint64_t a1)
{
  WGSL::toString();
  v9 = ", ";
  v10 = 2;
  v11 = v8;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(a1, &v11, &v9);
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v2);
  }

  WGSL::toString();
  v9 = ", ";
  v10 = 2;
  v11 = 0;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(a1, &v11, &v9);
  WGSL::toString();
  v9 = ", ";
  v10 = 2;
  v11 = 0;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(a1, &v11, &v9);
  WGSL::toString();
  v4 = v9;
  if (*(a1 + 16) || *(a1 + 8))
  {
    if (!v9 || (*(v9 + 16) & 4) != 0)
    {
      WTF::StringBuilder::append();
    }

    else
    {
      WTF::StringBuilder::append();
    }
  }

  else
  {
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    }

    v5 = *a1;
    *a1 = v4;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    v6 = v9;
    if (v9)
    {
      v6 = *(v9 + 1);
    }

    *(a1 + 16) = v6;
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseCompoundStatement(uint64_t a1, unint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  WGSL::Parser<WGSL::Lexer<unsigned char>>::parseAttributes(&v60, a2);
  if (v62)
  {
    if (v62 == 1)
    {
      v8 = v60;
      if (v60)
      {
        atomic_fetch_add_explicit(v60, 2u, memory_order_relaxed);
      }

      *(a1 + 8) = v61;
      *a1 = v8;
      *(a1 + 24) = 1;
      result = v60;
      goto LABEL_6;
    }

LABEL_112:
    mpark::throw_bad_variant_access(v6);
  }

  if (*(a2 + 56) != 43)
  {
    WGSL::toString();
    WGSL::toString();
    if (v59)
    {
      v19 = *(v59 + 1);
      if (v58)
      {
LABEL_26:
        v20 = *(v58 + 1);
        if (v20 < 0)
        {
          goto LABEL_116;
        }

        v18 = __OFADD__(v20, 12);
        v21 = v20 + 12;
        v22 = v18;
        if (v19 < 0)
        {
          goto LABEL_116;
        }

LABEL_90:
        if (v22)
        {
          goto LABEL_116;
        }

        v18 = __OFADD__(v19, v21);
        v45 = v19 + v21;
        if (v18)
        {
          goto LABEL_116;
        }

        v46 = (v45 + 11);
        if (__OFADD__(v45, 11))
        {
          goto LABEL_116;
        }

        if (v59)
        {
          v47 = *(v59 + 4);
          v48 = (v47 >> 2) & 1;
          if (!v58 || (v47 & 4) == 0)
          {
LABEL_100:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v46, v48, "Expected a ", 0xBuLL, v59, ", but got a ", 0xCuLL, &v53, v58);
            v49 = v53;
            if (v53)
            {
              v50 = v58;
              v58 = 0;
              if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v50, v7);
              }

              v51 = v59;
              v59 = 0;
              if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v51, v7);
              }

              v52 = v5 | ((*(a2 + 96) - v5) << 32);
              *a1 = v49;
              *(a1 + 8) = v4;
              *(a1 + 16) = v52;
              *(a1 + 24) = 1;
              result = v60;
LABEL_108:
              if (result)
              {
                v60 = 0;
                LODWORD(v61) = 0;
                return WTF::fastFree(result, v7);
              }

              return result;
            }

LABEL_116:
            __break(0xC471u);
LABEL_117:
            JUMPOUT(0x22577CD38);
          }
        }

        else if (!v58)
        {
          v48 = 1;
          goto LABEL_100;
        }

        v48 = (*(v58 + 16) >> 2) & 1;
        goto LABEL_100;
      }
    }

    else
    {
      v19 = 0;
      if (v58)
      {
        goto LABEL_26;
      }
    }

    v21 = 12;
    v22 = v18;
    if (v19 < 0)
    {
      goto LABEL_116;
    }

    goto LABEL_90;
  }

  do
  {
    v12 = *(a2 + 36);
    v13 = (*(a2 + 40) + 1);
    *(a2 + 40) = v13;
    if (v12 <= v13)
    {
      __break(0xC471u);
      JUMPOUT(0x22577CD40);
    }

    v14 = *(a2 + 24) + 32 * v13;
    v10 = *v14;
    *(a2 + 56) = *v14;
    *(a2 + 60) = *(v14 + 4);
    v15 = *v14;
    if (*v14 <= 8u)
    {
      if (((1 << v15) & 0x38) != 0)
      {
        *(a2 + 80) = *(v14 + 24);
LABEL_12:
        v10 = *(a2 + 56);
        goto LABEL_13;
      }

      if (((1 << v15) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v14 + 24);
        goto LABEL_12;
      }

      if (v15 == 8)
      {
        *(a2 + 80) = 0;
        v16 = *(v14 + 24);
        if (v16)
        {
          atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
          v17 = *(a2 + 80);
          *(a2 + 80) = v16;
          if (v17)
          {
            if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v7);
            }
          }
        }

        goto LABEL_12;
      }
    }

LABEL_13:
    v11 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v11;
  }

  while (v10 == 82);
  v56 = 0;
  v57 = 0;
  v23 = *a1;
  v24 = *(a1 + 24);
  while (1)
  {
LABEL_33:
    if (v10 == 73)
    {
      while (1)
      {
        v28 = *(a2 + 36);
        v29 = (*(a2 + 40) + 1);
        *(a2 + 40) = v29;
        if (v28 <= v29)
        {
          *(a1 + 24) = v24;
          *a1 = v23;
          __break(0xC471u);
          goto LABEL_117;
        }

        v30 = *(a2 + 24) + 32 * v29;
        v10 = *v30;
        *(a2 + 56) = *v30;
        *(a2 + 60) = *(v30 + 4);
        v31 = *v30;
        if (*v30 <= 8u)
        {
          if (((1 << v31) & 0x38) != 0)
          {
            *(a2 + 80) = *(v30 + 24);
          }

          else if (((1 << v31) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v30 + 24);
          }

          else
          {
            if (v31 != 8)
            {
              goto LABEL_43;
            }

            *(a2 + 80) = 0;
            v32 = *(v30 + 24);
            if (v32)
            {
              atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
              v33 = *(a2 + 80);
              *(a2 + 80) = v32;
              if (v33)
              {
                if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v33, v7);
                }
              }
            }
          }

          v10 = *(a2 + 56);
        }

LABEL_43:
        v27 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v27;
        if (v10 != 82)
        {
          goto LABEL_33;
        }
      }
    }

    if (v10 == 44)
    {
      *(a1 + 24) = v24;
      *a1 = v23;
      while (1)
      {
        v38 = *(a2 + 36);
        v39 = (*(a2 + 40) + 1);
        *(a2 + 40) = v39;
        if (v38 <= v39)
        {
          __break(0xC471u);
          JUMPOUT(0x22577CD48);
        }

        v40 = *(a2 + 24) + 32 * v39;
        v36 = *v40;
        *(a2 + 56) = *v40;
        *(a2 + 60) = *(v40 + 4);
        v41 = *v40;
        if (*v40 <= 8u)
        {
          if (((1 << v41) & 0x38) != 0)
          {
            *(a2 + 80) = *(v40 + 24);
          }

          else if (((1 << v41) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v40 + 24);
          }

          else
          {
            if (v41 != 8)
            {
              goto LABEL_67;
            }

            *(a2 + 80) = 0;
            v42 = *(v40 + 24);
            if (v42)
            {
              atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
              v43 = *(a2 + 80);
              *(a2 + 80) = v42;
              if (v43)
              {
                if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v43, v7);
                }
              }
            }
          }

          v36 = *(a2 + 56);
        }

LABEL_67:
        v37 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v37;
        if (v36 != 82)
        {
          v44 = *(a2 + 8);
          v53 = v4;
          LODWORD(v54) = v5;
          DWORD1(v54) = v37 - v5;
          WGSL::AST::Builder::construct<WGSL::AST::CompoundStatement,WGSL::SourceSpan,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WTF::ReferenceWrapperVector<WGSL::AST::Statement,0ul>,void>(v44, &v53, &v60, &v56);
        }
      }
    }

    v6 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseStatement(&v53, a2);
    v25 = v55;
    if (!v55)
    {
      if (HIDWORD(v57) == v57)
      {
        v34 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v56, HIDWORD(v57) + 1, &v53);
        *(v56 + HIDWORD(v57)) = *v34;
        ++HIDWORD(v57);
        v26 = v55;
        if (!v55)
        {
          goto LABEL_62;
        }
      }

      else
      {
        *(v56 + HIDWORD(v57)) = v53;
        ++HIDWORD(v57);
        v26 = v55;
        if (!v55)
        {
          goto LABEL_62;
        }
      }

LABEL_58:
      if (v26 != 255)
      {
        v35 = v53;
        v53 = 0;
        if (v35)
        {
          if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v35, v7);
          }
        }
      }

      goto LABEL_62;
    }

    if (v55 != 1)
    {
      *(a1 + 24) = v24;
      *a1 = v23;
      goto LABEL_112;
    }

    v23 = v53;
    if (v53)
    {
      atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
    }

    *(a1 + 8) = v54;
    v24 = 1;
    v26 = v55;
    if (v55)
    {
      goto LABEL_58;
    }

LABEL_62:
    if (v25)
    {
      break;
    }

    v10 = *(a2 + 56);
  }

  *(a1 + 24) = v24;
  *a1 = v23;
  result = v56;
  if (v56)
  {
    v56 = 0;
    LODWORD(v57) = 0;
    result = WTF::fastFree(result, v7);
  }

  if (v62 != 255)
  {
    result = v60;
    if (v62)
    {
LABEL_6:
      v60 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v7);
        }
      }

      return result;
    }

    goto LABEL_108;
  }

  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseStatement(WTF::StringImpl **a1, unint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  v6 = *(a2 + 44);
  *(a2 + 44) = v6 + 1;
  if ((v6 + 1) >= 0x81)
  {
    goto LABEL_2;
  }

  switch(*(a2 + 56))
  {
    case 8:
      result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v491, a2);
      if (v493)
      {
        if (v493 != 1)
        {
          goto LABEL_971;
        }

        v63 = *v491;
        if (*v491)
        {
          atomic_fetch_add_explicit(*v491, 2u, memory_order_relaxed);
        }

        *(a1 + 1) = *&v491[8];
        *a1 = v63;
        *(a1 + 24) = 1;
      }

      else
      {
        if ((*(a2 + 56) | 0x10) != 0x53)
        {
          v310 = *(a2 + 8);
          v311 = *(a2 + 96) - v5;
          v482 = v4;
          *&v483 = __PAIR64__(v311, v5);
          WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>(v310, &v482, v491);
        }

        result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseTypeNameAfterIdentifier(&v504, a2, v491, v4, v5);
        if (v506)
        {
          if (v506 != 1)
          {
            goto LABEL_971;
          }

          v312 = v504;
          if (v504)
          {
            atomic_fetch_add_explicit(v504, 2u, memory_order_relaxed);
          }

          *(a1 + 1) = v505;
          *a1 = v312;
          *(a1 + 24) = 1;
        }

        else
        {
          result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseArgumentExpressionList(&v499, a2);
          if (!v501)
          {
            v391 = *(a2 + 8);
            v392 = *(a2 + 96) - v5;
            v482 = v4;
            *&v483 = __PAIR64__(v392, v5);
            WGSL::AST::Builder::construct<WGSL::AST::CallExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,WTF::ReferenceWrapperVector<WGSL::AST::Expression,0ul>,void>(v391, &v482, &v504, &v499);
          }

          if (v501 != 1)
          {
            goto LABEL_971;
          }

          v181 = v499;
          if (v499)
          {
            atomic_fetch_add_explicit(v499, 2u, memory_order_relaxed);
          }

          *(a1 + 1) = v500;
          *a1 = v181;
          *(a1 + 24) = 1;
          std::experimental::fundamentals_v3::expected<WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::CompilationMessage>::~expected(&v499, v180);
        }

        result = std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v504, v179);
      }

      if (v493 == 255)
      {
        goto LABEL_4;
      }

      if (!v493)
      {
        result = v492;
        *v491 = off_2838D37C0;
        v492 = 0;
        if (result)
        {
          goto LABEL_951;
        }

        goto LABEL_4;
      }

      result = *v491;
      *v491 = 0;
      if (!result)
      {
        goto LABEL_4;
      }

      goto LABEL_951;
    case 0xB:
      while (1)
      {
        v66 = *(a2 + 36);
        v67 = (*(a2 + 40) + 1);
        *(a2 + 40) = v67;
        if (v66 <= v67)
        {
          __break(0xC471u);
          JUMPOUT(0x225781290);
        }

        v68 = *(a2 + 24) + 32 * v67;
        v64 = *v68;
        *(a2 + 56) = *v68;
        *(a2 + 60) = *(v68 + 4);
        v69 = *v68;
        if (*v68 > 8u)
        {
          goto LABEL_129;
        }

        if (((1 << v69) & 0x38) != 0)
        {
          *(a2 + 80) = *(v68 + 24);
        }

        else if (((1 << v69) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v68 + 24);
        }

        else
        {
          if (v69 != 8)
          {
            goto LABEL_129;
          }

          *(a2 + 80) = 0;
          v70 = *(v68 + 24);
          if (v70)
          {
            atomic_fetch_add_explicit(v70, 2u, memory_order_relaxed);
            v71 = *(a2 + 80);
            *(a2 + 80) = v70;
            if (v71)
            {
              if (atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v71, a2);
              }
            }
          }
        }

        v64 = *(a2 + 56);
LABEL_129:
        v65 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v65;
        if (v64 != 82)
        {
          if (v64 != 73)
          {
            *v491 = v64;
            LOBYTE(v493) = 1;
            WGSL::toString();
            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v472, 13, &v471, &v482, ", but got a ");
            v168 = v471;
            v471 = 0;
            if (v168 && atomic_fetch_add_explicit(v168, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v168, v148);
            }

            v164 = v472;
            v472 = 0;
            if (!v164)
            {
              goto LABEL_394;
            }

            goto LABEL_392;
          }

          *v491 = 73;
          *&v491[4] = *(a2 + 60);
          LOBYTE(v493) = 0;
          while (2)
          {
            v124 = *(a2 + 36);
            v125 = (*(a2 + 40) + 1);
            *(a2 + 40) = v125;
            if (v124 <= v125)
            {
              __break(0xC471u);
              JUMPOUT(0x2257812E8);
            }

            v126 = *(a2 + 24) + 32 * v125;
            v122 = *v126;
            *(a2 + 56) = *v126;
            *(a2 + 60) = *(v126 + 4);
            v127 = *v126;
            if (*v126 <= 8u)
            {
              if (((1 << v127) & 0x38) != 0)
              {
                *(a2 + 80) = *(v126 + 24);
                goto LABEL_234;
              }

              if (((1 << v127) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v126 + 24);
                goto LABEL_234;
              }

              if (v127 == 8)
              {
                *(a2 + 80) = 0;
                v128 = *(v126 + 24);
                if (v128)
                {
                  atomic_fetch_add_explicit(v128, 2u, memory_order_relaxed);
                  v129 = *(a2 + 80);
                  *(a2 + 80) = v128;
                  if (v129)
                  {
                    if (atomic_fetch_add_explicit(v129, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v129, a2);
                    }
                  }
                }

LABEL_234:
                v122 = *(a2 + 56);
              }
            }

            v123 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v123;
            if (v122 != 82)
            {
              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v491, a2);
              v173 = *(a2 + 8);
              v174 = *(a2 + 96) - v5;
              *v491 = v4;
              *&v491[8] = v5;
              *&v491[12] = v174;
              WGSL::AST::Builder::construct<WGSL::AST::BreakStatement,WGSL::SourceSpan,void>(v173, v491);
            }

            continue;
          }
        }
      }

    case 0xD:
    case 0x1A:
    case 0x22:
      *v491 = 0;
      *&v491[8] = 0;
      WGSL::Parser<WGSL::Lexer<unsigned char>>::parseVariableWithAttributes(&v482, a2, v491);
      result = *v491;
      if (*v491)
      {
        result = WTF::fastFree(*v491, a2);
      }

      if (v484)
      {
        if (v484 != 1)
        {
          goto LABEL_971;
        }

        goto LABEL_196;
      }

      if (*(a2 + 56) != 73)
      {
        *v491 = *(a2 + 56);
        LOBYTE(v493) = 1;
        result = WGSL::toString();
        if (v493 != 1)
        {
          goto LABEL_971;
        }

        WGSL::toString();
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v476, 13, &v475, &v504, ", but got a ");
        v149 = v475;
        v475 = 0;
        if (v149 && atomic_fetch_add_explicit(v149, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v149, v148);
        }

        v150 = v476;
        v476 = 0;
        if (v150 && atomic_fetch_add_explicit(v150, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v150, v148);
        }

        v151 = (*(a2 + 96) - v5);
        v152 = v504;
        goto LABEL_395;
      }

      *v491 = 73;
      *&v491[4] = *(a2 + 60);
      LOBYTE(v493) = 0;
      while (1)
      {
        v12 = *(a2 + 36);
        v13 = (*(a2 + 40) + 1);
        *(a2 + 40) = v13;
        if (v12 <= v13)
        {
          __break(0xC471u);
          JUMPOUT(0x2257812B8);
        }

        v14 = *(a2 + 24) + 32 * v13;
        v10 = *v14;
        *(a2 + 56) = *v14;
        *(a2 + 60) = *(v14 + 4);
        v15 = *v14;
        if (*v14 <= 8u)
        {
          if (((1 << v15) & 0x38) != 0)
          {
            *(a2 + 80) = *(v14 + 24);
          }

          else if (((1 << v15) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v14 + 24);
          }

          else
          {
            if (v15 != 8)
            {
              goto LABEL_20;
            }

            *(a2 + 80) = 0;
            v16 = *(v14 + 24);
            if (v16)
            {
              atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
              v17 = *(a2 + 80);
              *(a2 + 80) = v16;
              if (v17)
              {
                if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v17, a2);
                }
              }
            }
          }

          v10 = *(a2 + 56);
        }

LABEL_20:
        v11 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v11;
        if (v10 != 82)
        {
          std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v491, a2);
          v153 = *(a2 + 8);
          v154 = *(a2 + 96) - v5;
          *v491 = v4;
          *&v491[8] = v5;
          *&v491[12] = v154;
          WGSL::AST::Builder::construct<WGSL::AST::VariableStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Variable>,void>(v153, v491, &v482);
        }
      }

    case 0xE:
      result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseConstAssert(v491, a2);
      v52 = v492;
      if (!v492)
      {
        v53 = *(a2 + 8);
        v54 = *(a2 + 96) - v5;
        v482 = v4;
        *&v483 = __PAIR64__(v54, v5);
        WGSL::AST::Builder::construct<WGSL::AST::ConstAssertStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::ConstAssert>,void>(v53, &v482, v491);
      }

      goto LABEL_267;
    case 0xF:
      while (1)
      {
        v82 = *(a2 + 36);
        v83 = (*(a2 + 40) + 1);
        *(a2 + 40) = v83;
        if (v82 <= v83)
        {
          __break(0xC471u);
          JUMPOUT(0x2257812A0);
        }

        v84 = *(a2 + 24) + 32 * v83;
        v80 = *v84;
        *(a2 + 56) = *v84;
        *(a2 + 60) = *(v84 + 4);
        v85 = *v84;
        if (*v84 > 8u)
        {
          goto LABEL_155;
        }

        if (((1 << v85) & 0x38) != 0)
        {
          *(a2 + 80) = *(v84 + 24);
        }

        else if (((1 << v85) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v84 + 24);
        }

        else
        {
          if (v85 != 8)
          {
            goto LABEL_155;
          }

          *(a2 + 80) = 0;
          v86 = *(v84 + 24);
          if (v86)
          {
            atomic_fetch_add_explicit(v86, 2u, memory_order_relaxed);
            v87 = *(a2 + 80);
            *(a2 + 80) = v86;
            if (v87)
            {
              if (atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v87, a2);
              }
            }
          }
        }

        v80 = *(a2 + 56);
LABEL_155:
        v81 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v81;
        if (v80 != 82)
        {
          if (v80 != 73)
          {
            *v491 = v80;
            LOBYTE(v493) = 1;
            WGSL::toString();
            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v470, 13, &v469, &v482, ", but got a ");
            v169 = v469;
            v469 = 0;
            if (v169 && atomic_fetch_add_explicit(v169, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v169, v148);
            }

            v164 = v470;
            v470 = 0;
            if (!v164)
            {
              goto LABEL_394;
            }

            goto LABEL_392;
          }

          *v491 = 73;
          *&v491[4] = *(a2 + 60);
          LOBYTE(v493) = 0;
          while (2)
          {
            v133 = *(a2 + 36);
            v134 = (*(a2 + 40) + 1);
            *(a2 + 40) = v134;
            if (v133 <= v134)
            {
              __break(0xC471u);
              JUMPOUT(0x2257812F0);
            }

            v135 = *(a2 + 24) + 32 * v134;
            v131 = *v135;
            *(a2 + 56) = *v135;
            *(a2 + 60) = *(v135 + 4);
            v136 = *v135;
            if (*v135 <= 8u)
            {
              if (((1 << v136) & 0x38) != 0)
              {
                *(a2 + 80) = *(v135 + 24);
                goto LABEL_254;
              }

              if (((1 << v136) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v135 + 24);
                goto LABEL_254;
              }

              if (v136 == 8)
              {
                *(a2 + 80) = 0;
                v137 = *(v135 + 24);
                if (v137)
                {
                  atomic_fetch_add_explicit(v137, 2u, memory_order_relaxed);
                  v138 = *(a2 + 80);
                  *(a2 + 80) = v137;
                  if (v138)
                  {
                    if (atomic_fetch_add_explicit(v138, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v138, a2);
                    }
                  }
                }

LABEL_254:
                v131 = *(a2 + 56);
              }
            }

            v132 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v132;
            if (v131 != 82)
            {
              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v491, a2);
              v175 = *(a2 + 8);
              v176 = *(a2 + 96) - v5;
              *v491 = v4;
              *&v491[8] = v5;
              *&v491[12] = v176;
              WGSL::AST::Builder::construct<WGSL::AST::ContinueStatement,WGSL::SourceSpan,void>(v175, v491);
            }

            continue;
          }
        }
      }

    case 0x13:
      while (1)
      {
        v45 = *(a2 + 36);
        v46 = (*(a2 + 40) + 1);
        *(a2 + 40) = v46;
        if (v45 <= v46)
        {
          __break(0xC471u);
          JUMPOUT(0x225781280);
        }

        v47 = *(a2 + 24) + 32 * v46;
        v43 = *v47;
        *(a2 + 56) = *v47;
        *(a2 + 60) = *(v47 + 4);
        v48 = *v47;
        if (*v47 > 8u)
        {
          goto LABEL_86;
        }

        if (((1 << v48) & 0x38) != 0)
        {
          *(a2 + 80) = *(v47 + 24);
        }

        else if (((1 << v48) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v47 + 24);
        }

        else
        {
          if (v48 != 8)
          {
            goto LABEL_86;
          }

          *(a2 + 80) = 0;
          v49 = *(v47 + 24);
          if (v49)
          {
            atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
            v50 = *(a2 + 80);
            *(a2 + 80) = v49;
            if (v50)
            {
              if (atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v50, a2);
              }
            }
          }
        }

        v43 = *(a2 + 56);
LABEL_86:
        v44 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v44;
        if (v43 != 82)
        {
          if (v43 != 73)
          {
            *v491 = v43;
            LOBYTE(v493) = 1;
            WGSL::toString();
            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v468, 13, &v467, &v482, ", but got a ");
            v163 = v467;
            v467 = 0;
            if (v163 && atomic_fetch_add_explicit(v163, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v163, v148);
            }

            v164 = v468;
            v468 = 0;
            if (!v164)
            {
              goto LABEL_394;
            }

            goto LABEL_392;
          }

          *v491 = 73;
          *&v491[4] = *(a2 + 60);
          LOBYTE(v493) = 0;
          while (2)
          {
            v108 = *(a2 + 36);
            v109 = (*(a2 + 40) + 1);
            *(a2 + 40) = v109;
            if (v108 <= v109)
            {
              __break(0xC471u);
              JUMPOUT(0x2257812E0);
            }

            v110 = *(a2 + 24) + 32 * v109;
            v106 = *v110;
            *(a2 + 56) = *v110;
            *(a2 + 60) = *(v110 + 4);
            v111 = *v110;
            if (*v110 <= 8u)
            {
              if (((1 << v111) & 0x38) != 0)
              {
                *(a2 + 80) = *(v110 + 24);
                goto LABEL_204;
              }

              if (((1 << v111) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v110 + 24);
                goto LABEL_204;
              }

              if (v111 == 8)
              {
                *(a2 + 80) = 0;
                v112 = *(v110 + 24);
                if (v112)
                {
                  atomic_fetch_add_explicit(v112, 2u, memory_order_relaxed);
                  v113 = *(a2 + 80);
                  *(a2 + 80) = v112;
                  if (v113)
                  {
                    if (atomic_fetch_add_explicit(v113, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v113, a2);
                    }
                  }
                }

LABEL_204:
                v106 = *(a2 + 56);
              }
            }

            v107 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v107;
            if (v106 != 82)
            {
              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v491, a2);
              v171 = *(a2 + 8);
              v172 = *(a2 + 96) - v5;
              *v491 = v4;
              *&v491[8] = v5;
              *&v491[12] = v172;
              WGSL::AST::Builder::construct<WGSL::AST::DiscardStatement,WGSL::SourceSpan,void>(v171, v491);
            }

            continue;
          }
        }
      }

    case 0x18:
      do
      {
        v57 = *(a2 + 36);
        v58 = (*(a2 + 40) + 1);
        *(a2 + 40) = v58;
        if (v57 <= v58)
        {
          __break(0xC471u);
          JUMPOUT(0x225781288);
        }

        v59 = *(a2 + 24) + 32 * v58;
        v55 = *v59;
        *(a2 + 56) = *v59;
        *(a2 + 60) = *(v59 + 4);
        v60 = *v59;
        if (*v59 <= 8u)
        {
          if (((1 << v60) & 0x38) != 0)
          {
            *(a2 + 80) = *(v59 + 24);
LABEL_105:
            v55 = *(a2 + 56);
            goto LABEL_106;
          }

          if (((1 << v60) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v59 + 24);
            goto LABEL_105;
          }

          if (v60 == 8)
          {
            *(a2 + 80) = 0;
            v61 = *(v59 + 24);
            if (v61)
            {
              atomic_fetch_add_explicit(v61, 2u, memory_order_relaxed);
              v62 = *(a2 + 80);
              *(a2 + 80) = v61;
              if (v62)
              {
                if (atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v62, a2);
                }
              }
            }

            goto LABEL_105;
          }
        }

LABEL_106:
        v56 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v56;
      }

      while (v55 == 82);
      v504 = 0;
      v499 = 0;
      v486 = 0;
      if (v55 != 67)
      {
        WGSL::toString();
        WGSL::toString();
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v502, 13, &v497, v491, ", but got a ");
        v166 = v497;
        v497 = 0;
        if (v166 && atomic_fetch_add_explicit(v166, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v166, v165);
        }

        result = v502;
        v502 = 0;
        if (result)
        {
          goto LABEL_325;
        }

        goto LABEL_327;
      }

      while (2)
      {
        v114 = *(a2 + 36);
        v115 = (*(a2 + 40) + 1);
        *(a2 + 40) = v115;
        if (v114 <= v115)
        {
          __break(0xC471u);
          JUMPOUT(0x225781350);
        }

        v116 = *(a2 + 24) + 32 * v115;
        v117 = *v116;
        *(a2 + 56) = *v116;
        *(a2 + 60) = *(v116 + 4);
        v118 = *v116;
        if (*v116 <= 8u)
        {
          if (((1 << v118) & 0x38) != 0)
          {
            *(a2 + 80) = *(v116 + 24);
            goto LABEL_223;
          }

          if (((1 << v118) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v116 + 24);
            goto LABEL_223;
          }

          if (v118 == 8)
          {
            *(a2 + 80) = 0;
            v120 = *(v116 + 24);
            if (v120)
            {
              atomic_fetch_add_explicit(v120, 2u, memory_order_relaxed);
              v121 = *(a2 + 80);
              *(a2 + 80) = v120;
              if (v121)
              {
                if (atomic_fetch_add_explicit(v121, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v121, a2);
                }
              }
            }

LABEL_223:
            v117 = *(a2 + 56);
          }
        }

        v119 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v119;
        if (v117 == 82)
        {
          continue;
        }

        break;
      }

      if (v117 > 25)
      {
        if (v117 != 26 && v117 != 34)
        {
          if (v117 == 73)
          {
            goto LABEL_864;
          }

LABEL_814:
          result = WTF::StringImpl::createWithoutCopyingNonEmpty();
          v167 = v5 | ((*(a2 + 96) - v5) << 32);
LABEL_825:
          a1[1] = v4;
          a1[2] = v167;
          goto LABEL_3;
        }

LABEL_617:
        v482 = 0;
        *&v483 = 0;
        WGSL::Parser<WGSL::Lexer<unsigned char>>::parseVariableWithAttributes(v491, a2, &v482);
        result = v482;
        if (v482)
        {
          result = WTF::fastFree(v482, a2);
        }

        v52 = v492;
        if (!v492)
        {
          v300 = *(a2 + 8);
          v301 = *(a2 + 96) - v5;
          v482 = v4;
          *&v483 = __PAIR64__(v301, v5);
          WGSL::AST::Builder::construct<WGSL::AST::VariableStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Variable>,void>(v300, &v482, v491);
        }

LABEL_267:
        if (v52 != 1)
        {
          goto LABEL_971;
        }

        result = *v491;
        if (*v491)
        {
          atomic_fetch_add_explicit(*v491, 2u, memory_order_relaxed);
          v139 = *&v491[8];
          goto LABEL_270;
        }

LABEL_967:
        v447 = *&v491[8];
LABEL_968:
        *(a1 + 1) = v447;
        *a1 = 0;
        goto LABEL_3;
      }

      if (v117 != 8)
      {
        if (v117 != 13)
        {
          goto LABEL_814;
        }

        goto LABEL_617;
      }

      result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseLHSExpression(v491, a2);
      if (v492)
      {
        if (v492 != 1)
        {
          goto LABEL_971;
        }

        v390 = *v491;
        if (*v491)
        {
          atomic_fetch_add_explicit(*v491, 2u, memory_order_relaxed);
        }

        v483 = *&v491[8];
        v482 = v390;
        v484 = 1;
      }

      else
      {
        result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseVariableUpdatingStatement(&v482, a2, v491);
      }

      if (v492)
      {
        if (v492 != 255)
        {
          result = *v491;
          *v491 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, a2);
            }
          }
        }
      }

      if (!v484)
      {
        v504 = v482;
        if (*(a2 + 56) == 73)
        {
          while (1)
          {
LABEL_864:
            v409 = *(a2 + 36);
            v410 = (*(a2 + 40) + 1);
            *(a2 + 40) = v410;
            if (v409 <= v410)
            {
              __break(0xC471u);
              JUMPOUT(0x225781360);
            }

            v411 = *(a2 + 24) + 32 * v410;
            v412 = *v411;
            *(a2 + 56) = *v411;
            *(a2 + 60) = *(v411 + 4);
            v413 = *v411;
            if (*v411 > 8u)
            {
              goto LABEL_871;
            }

            if (((1 << v413) & 0x38) != 0)
            {
              *(a2 + 80) = *(v411 + 24);
            }

            else if (((1 << v413) & 0xC4) != 0)
            {
              *(a2 + 80) = *(v411 + 24);
            }

            else
            {
              if (v413 != 8)
              {
                goto LABEL_871;
              }

              *(a2 + 80) = 0;
              v415 = *(v411 + 24);
              if (v415)
              {
                atomic_fetch_add_explicit(v415, 2u, memory_order_relaxed);
                v416 = *(a2 + 80);
                *(a2 + 80) = v415;
                if (v416)
                {
                  if (atomic_fetch_add_explicit(v416, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v416, a2);
                  }
                }
              }
            }

            v412 = *(a2 + 56);
LABEL_871:
            v414 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v414;
            if (v412 != 82)
            {
              if (v412 == 73)
              {
                goto LABEL_879;
              }

              result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(v491, a2);
              if (v492)
              {
                if (v492 != 1)
                {
                  goto LABEL_971;
                }

                result = *v491;
                if (!*v491)
                {
LABEL_912:
                  *a1 = 0;
                  *(a1 + 1) = *&v491[8];
                  goto LABEL_3;
                }

LABEL_120:
                atomic_fetch_add_explicit(result, 2u, memory_order_relaxed);
                *a1 = result;
                *(a1 + 1) = *&v491[8];
                *(a1 + 24) = 1;
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
                {
                  goto LABEL_4;
                }

LABEL_952:
                result = WTF::StringImpl::destroy(result, a2);
                goto LABEL_4;
              }

              v499 = *v491;
              if (*(a2 + 56) != 73)
              {
                WGSL::toString();
                WGSL::toString();
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v490, 13, &v489, v491, ", but got a ");
                v437 = v489;
                v489 = 0;
                if (v437 && atomic_fetch_add_explicit(v437, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v437, v165);
                }

                result = v490;
                v490 = 0;
                if (!result)
                {
                  goto LABEL_327;
                }

LABEL_325:
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v165);
                }

                goto LABEL_327;
              }

LABEL_879:
              while (2)
              {
                v417 = *(a2 + 36);
                v418 = (*(a2 + 40) + 1);
                *(a2 + 40) = v418;
                if (v417 <= v418)
                {
                  __break(0xC471u);
                  JUMPOUT(0x225781378);
                }

                v419 = *(a2 + 24) + 32 * v418;
                v420 = *v419;
                *(a2 + 56) = *v419;
                *(a2 + 60) = *(v419 + 4);
                v421 = *v419;
                if (*v419 <= 8u)
                {
                  if (((1 << v421) & 0x38) != 0)
                  {
                    *(a2 + 80) = *(v419 + 24);
                    goto LABEL_885;
                  }

                  if (((1 << v421) & 0xC4) != 0)
                  {
                    *(a2 + 80) = *(v419 + 24);
                    goto LABEL_885;
                  }

                  if (v421 == 8)
                  {
                    *(a2 + 80) = 0;
                    v423 = *(v419 + 24);
                    if (v423)
                    {
                      atomic_fetch_add_explicit(v423, 2u, memory_order_relaxed);
                      v424 = *(a2 + 80);
                      *(a2 + 80) = v423;
                      if (v424)
                      {
                        if (atomic_fetch_add_explicit(v424, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v424, a2);
                        }
                      }
                    }

LABEL_885:
                    v420 = *(a2 + 56);
                  }
                }

                v422 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v422;
                if (v420 != 82)
                {
                  if (v420 != 8)
                  {
                    if (v420 == 68)
                    {
                      goto LABEL_895;
                    }

LABEL_2:
                    result = WTF::StringImpl::createWithoutCopyingNonEmpty();
                    v8 = v5 | ((*(a2 + 96) - v5) << 32);
                    *a1 = *v491;
                    a1[1] = v4;
                    a1[2] = v8;
LABEL_3:
                    *(a1 + 24) = 1;
                    goto LABEL_4;
                  }

                  result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseVariableUpdatingStatement(v491, a2);
                  if (v492)
                  {
                    if (v492 != 1)
                    {
                      goto LABEL_971;
                    }

                    v436 = *v491;
                    if (*v491)
                    {
                      atomic_fetch_add_explicit(*v491, 2u, memory_order_relaxed);
                    }

LABEL_933:
                    *(a1 + 1) = *&v491[8];
                    *a1 = v436;
                    *(a1 + 24) = 1;
                    result = std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(v491, v435);
                    goto LABEL_4;
                  }

                  v486 = *v491;
                  std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(v491, v435);
                  if (*(a2 + 56) != 68)
                  {
                    *v491 = *(a2 + 56);
                    LOBYTE(v493) = 1;
                    result = WGSL::toString();
                    if (v493 != 1)
                    {
                      goto LABEL_971;
                    }

                    WGSL::toString();
                    WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v481, 13, &v480, &v482, ", but got a ");
                    v442 = v480;
                    v480 = 0;
                    if (v442 && atomic_fetch_add_explicit(v442, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v442, v148);
                    }

                    v164 = v481;
                    v481 = 0;
                    if (!v164)
                    {
LABEL_394:
                      v151 = (*(a2 + 96) - v5);
                      v152 = v482;
LABEL_395:
                      *a1 = v152;
                      a1[1] = v4;
                      a1[2] = (v5 | (v151 << 32));
                      *(a1 + 24) = 1;
                      result = std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v491, v148);
                      goto LABEL_4;
                    }

LABEL_392:
                    if (atomic_fetch_add_explicit(v164, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v164, v148);
                    }

                    goto LABEL_394;
                  }

LABEL_895:
                  *v491 = 68;
                  *&v491[4] = *(a2 + 60);
                  LOBYTE(v493) = 0;
                  while (2)
                  {
                    v427 = *(a2 + 36);
                    v428 = (*(a2 + 40) + 1);
                    *(a2 + 40) = v428;
                    if (v427 <= v428)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x225781370);
                    }

                    v429 = *(a2 + 24) + 32 * v428;
                    v425 = *v429;
                    *(a2 + 56) = *v429;
                    *(a2 + 60) = *(v429 + 4);
                    v430 = *v429;
                    if (*v429 <= 8u)
                    {
                      if (((1 << v430) & 0x38) != 0)
                      {
                        *(a2 + 80) = *(v429 + 24);
                        goto LABEL_897;
                      }

                      if (((1 << v430) & 0xC4) != 0)
                      {
                        *(a2 + 80) = *(v429 + 24);
                        goto LABEL_897;
                      }

                      if (v430 == 8)
                      {
                        *(a2 + 80) = 0;
                        v431 = *(v429 + 24);
                        if (v431)
                        {
                          atomic_fetch_add_explicit(v431, 2u, memory_order_relaxed);
                          v432 = *(a2 + 80);
                          *(a2 + 80) = v431;
                          if (v432)
                          {
                            if (atomic_fetch_add_explicit(v432, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v432, a2);
                            }
                          }
                        }

LABEL_897:
                        v425 = *(a2 + 56);
                      }
                    }

                    v426 = *(a2 + 68);
                    *(a2 + 88) = *(a2 + 60);
                    *(a2 + 96) = v426;
                    if (v425 != 82)
                    {
                      v434 = std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v491, a2);
                      result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseCompoundStatement(v434, a2);
                      if (!v492)
                      {
                        v440 = *(a2 + 8);
                        v441 = *(a2 + 96) - v5;
                        v482 = v4;
                        *&v483 = __PAIR64__(v441, v5);
                        WGSL::AST::Builder::construct<WGSL::AST::ForStatement,WGSL::SourceSpan,WGSL::AST::Statement *&,WGSL::AST::Expression *&,WGSL::AST::Statement *&,std::reference_wrapper<WGSL::AST::CompoundStatement>,void>(v440, &v482, &v504, &v499, &v486, v491);
                      }

                      if (v492 == 1)
                      {
                        v436 = *v491;
                        if (*v491)
                        {
                          atomic_fetch_add_explicit(*v491, 2u, memory_order_relaxed);
                        }

                        goto LABEL_933;
                      }

LABEL_971:
                      mpark::throw_bad_variant_access(result);
                    }

                    continue;
                  }
                }

                continue;
              }
            }
          }
        }

        WGSL::toString();
        WGSL::toString();
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v496, 13, &v495, v491, ", but got a ");
        v433 = v495;
        v495 = 0;
        if (v433 && atomic_fetch_add_explicit(v433, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v433, v165);
        }

        result = v496;
        v496 = 0;
        if (result)
        {
          goto LABEL_325;
        }

LABEL_327:
        v167 = v5 | ((*(a2 + 96) - v5) << 32);
        *a1 = *v491;
        goto LABEL_825;
      }

      if (v484 != 1)
      {
        goto LABEL_971;
      }

      v408 = v482;
      if (!v482)
      {
        *a1 = 0;
        *(a1 + 1) = v483;
        goto LABEL_3;
      }

      atomic_fetch_add_explicit(v482, 2u, memory_order_relaxed);
      v159 = v484;
      *a1 = v408;
      *(a1 + 1) = v483;
      *(a1 + 24) = 1;
      if (v159)
      {
        goto LABEL_306;
      }

LABEL_4:
      *(a2 + 44) = v6;
      return result;
    case 0x19:
      WGSL::Parser<WGSL::Lexer<unsigned char>>::parseAttributes(v491, a2);
      if (v492)
      {
        if (v492 != 1)
        {
          goto LABEL_971;
        }

        v51 = *v491;
        if (*v491)
        {
          atomic_fetch_add_explicit(*v491, 2u, memory_order_relaxed);
        }

        *(a1 + 1) = *&v491[8];
        *a1 = v51;
        *(a1 + 24) = 1;
        result = *v491;
        goto LABEL_805;
      }

      result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIfStatementWithAttributes(a1, a2, v491, v4, v5);
      if (v492 == 255)
      {
        goto LABEL_4;
      }

      result = *v491;
      if (!v492)
      {
        goto LABEL_403;
      }

      goto LABEL_805;
    case 0x1B:
      while (1)
      {
        v74 = *(a2 + 36);
        v75 = (*(a2 + 40) + 1);
        *(a2 + 40) = v75;
        if (v74 <= v75)
        {
          __break(0xC471u);
          JUMPOUT(0x225781298);
        }

        v76 = *(a2 + 24) + 32 * v75;
        v72 = *v76;
        *(a2 + 56) = *v76;
        *(a2 + 60) = *(v76 + 4);
        v77 = *v76;
        if (*v76 > 8u)
        {
          goto LABEL_142;
        }

        if (((1 << v77) & 0x38) != 0)
        {
          *(a2 + 80) = *(v76 + 24);
        }

        else if (((1 << v77) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v76 + 24);
        }

        else
        {
          if (v77 != 8)
          {
            goto LABEL_142;
          }

          *(a2 + 80) = 0;
          v78 = *(v76 + 24);
          if (v78)
          {
            atomic_fetch_add_explicit(v78, 2u, memory_order_relaxed);
            v79 = *(a2 + 80);
            *(a2 + 80) = v78;
            if (v79)
            {
              if (atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v79, a2);
              }
            }
          }
        }

        v72 = *(a2 + 56);
LABEL_142:
        v73 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v73;
        if (v72 != 82)
        {
          WGSL::Parser<WGSL::Lexer<unsigned char>>::parseAttributes(&v504, a2);
          if (v506)
          {
            if (v506 != 1)
            {
              goto LABEL_971;
            }

            v130 = v504;
            if (v504)
            {
              atomic_fetch_add_explicit(v504, 2u, memory_order_relaxed);
            }

            *(a1 + 1) = v505;
            *a1 = v130;
            *(a1 + 24) = 1;
            result = v504;
            goto LABEL_805;
          }

          if (*(a2 + 56) != 43)
          {
            WGSL::toString();
            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v482, 13, &v499, v491, ", but got a ");
            v193 = v499;
            v499 = 0;
            if (v193 && atomic_fetch_add_explicit(v193, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v193, a2);
            }

            v194 = v482;
            v482 = 0;
            if (v194 && atomic_fetch_add_explicit(v194, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v194, a2);
            }

            v195 = v5 | ((*(a2 + 96) - v5) << 32);
            *a1 = *v491;
            a1[1] = v4;
            a1[2] = v195;
            *(a1 + 24) = 1;
            result = v504;
            goto LABEL_403;
          }

          while (2)
          {
            v185 = *(a2 + 36);
            v186 = (*(a2 + 40) + 1);
            *(a2 + 40) = v186;
            if (v185 <= v186)
            {
              __break(0xC471u);
              JUMPOUT(0x225781330);
            }

            v187 = *(a2 + 24) + 32 * v186;
            v183 = *v187;
            *(a2 + 56) = *v187;
            *(a2 + 60) = *(v187 + 4);
            v188 = *v187;
            if (*v187 <= 8u)
            {
              if (((1 << v188) & 0x38) != 0)
              {
                *(a2 + 80) = *(v187 + 24);
                goto LABEL_375;
              }

              if (((1 << v188) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v187 + 24);
                goto LABEL_375;
              }

              if (v188 == 8)
              {
                *(a2 + 80) = 0;
                v189 = *(v187 + 24);
                if (v189)
                {
                  atomic_fetch_add_explicit(v189, 2u, memory_order_relaxed);
                  v190 = *(a2 + 80);
                  *(a2 + 80) = v189;
                  if (v190)
                  {
                    if (atomic_fetch_add_explicit(v190, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v190, a2);
                    }
                  }
                }

LABEL_375:
                v183 = *(a2 + 56);
              }
            }

            v184 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v184;
            if (v183 == 82)
            {
              continue;
            }

            break;
          }

          v459 = 0;
          v502 = 0;
          v503 = 0;
          v491[0] = 0;
          v494 = 0;
          v196 = *a1;
          v197 = *(a1 + 24);
          while (2)
          {
            while (2)
            {
              v198 = *(a2 + 56);
              if (v198 != 16)
              {
                if (v198 != 44)
                {
                  v199 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseStatement(&v482, a2);
                  v200 = v484;
                  if (v484)
                  {
                    if (v484 != 1)
                    {
LABEL_972:
                      *(a1 + 24) = v197;
                      *a1 = v196;
                      mpark::throw_bad_variant_access(v199);
                    }

                    v196 = v482;
                    if (v482)
                    {
                      atomic_fetch_add_explicit(v482, 2u, memory_order_relaxed);
                    }

                    *(a1 + 1) = v483;
                    v197 = 1;
                    v201 = v484;
                    if (!v484)
                    {
                      goto LABEL_406;
                    }

LABEL_419:
                    if (v201 != 255)
                    {
                      v206 = v482;
                      v482 = 0;
                      if (v206)
                      {
                        if (atomic_fetch_add_explicit(v206, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v206, a2);
                        }
                      }
                    }
                  }

                  else
                  {
                    v202 = HIDWORD(v503);
                    if (HIDWORD(v503) == v503)
                    {
                      v203 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v502, HIDWORD(v503) + 1, &v482);
                      v202 = HIDWORD(v503);
                      v204 = v502;
                      v205 = *v203;
                    }

                    else
                    {
                      v204 = v502;
                      v205 = v482;
                    }

                    *(v204 + v202) = v205;
                    ++HIDWORD(v503);
                    v201 = v484;
                    if (v484)
                    {
                      goto LABEL_419;
                    }
                  }

LABEL_406:
                  if (v200)
                  {
                    *(a1 + 24) = v197;
                    *a1 = v196;
                    goto LABEL_796;
                  }

                  continue;
                }

                *(a1 + 24) = v197;
                *a1 = v196;
                while (2)
                {
                  v381 = *(a2 + 36);
                  v382 = (*(a2 + 40) + 1);
                  *(a2 + 40) = v382;
                  if (v381 <= v382)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x225781348);
                  }

                  v383 = *(a2 + 24) + 32 * v382;
                  v379 = *v383;
                  *(a2 + 56) = *v383;
                  *(a2 + 60) = *(v383 + 4);
                  v384 = *v383;
                  if (*v383 <= 8u)
                  {
                    if (((1 << v384) & 0x38) != 0)
                    {
                      *(a2 + 80) = *(v383 + 24);
                      goto LABEL_782;
                    }

                    if (((1 << v384) & 0xC4) != 0)
                    {
                      *(a2 + 80) = *(v383 + 24);
                      goto LABEL_782;
                    }

                    if (v384 == 8)
                    {
                      *(a2 + 80) = 0;
                      v385 = *(v383 + 24);
                      if (v385)
                      {
                        atomic_fetch_add_explicit(v385, 2u, memory_order_relaxed);
                        v386 = *(a2 + 80);
                        *(a2 + 80) = v385;
                        if (v386)
                        {
                          if (atomic_fetch_add_explicit(v386, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v386, a2);
                          }
                        }
                      }

LABEL_782:
                      v379 = *(a2 + 56);
                    }
                  }

                  v380 = *(a2 + 68);
                  *(a2 + 88) = *(a2 + 60);
                  *(a2 + 96) = v380;
                  if (v379 != 82)
                  {
                    v387 = *(a2 + 8);
                    v482 = v4;
                    LODWORD(v483) = v5;
                    DWORD1(v483) = v380 - v5;
                    WGSL::AST::Builder::construct<WGSL::AST::LoopStatement,WGSL::SourceSpan,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WTF::ReferenceWrapperVector<WGSL::AST::Statement,0ul>,std::optional<WGSL::AST::Continuing>,void>(v387, &v482, &v504, &v502, v491);
                  }

                  continue;
                }
              }

              break;
            }

            *(a1 + 24) = v197;
            *a1 = v196;
LABEL_427:
            v209 = *(a2 + 36);
            v210 = (*(a2 + 40) + 1);
            *(a2 + 40) = v210;
            if (v209 <= v210)
            {
              __break(0xC471u);
              JUMPOUT(0x225781338);
            }

            v211 = *(a2 + 24) + 32 * v210;
            v207 = *v211;
            *(a2 + 56) = *v211;
            *(a2 + 60) = *(v211 + 4);
            v212 = *v211;
            if (*v211 <= 8u)
            {
              if (((1 << v212) & 0x38) != 0)
              {
                *(a2 + 80) = *(v211 + 24);
                goto LABEL_425;
              }

              if (((1 << v212) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v211 + 24);
                goto LABEL_425;
              }

              if (v212 == 8)
              {
                *(a2 + 80) = 0;
                v213 = *(v211 + 24);
                if (v213)
                {
                  atomic_fetch_add_explicit(v213, 2u, memory_order_relaxed);
                  v214 = *(a2 + 80);
                  *(a2 + 80) = v213;
                  if (v214)
                  {
                    if (atomic_fetch_add_explicit(v214, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v214, a2);
                    }
                  }
                }

LABEL_425:
                v207 = *(a2 + 56);
              }
            }

            v208 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v208;
            if (v207 != 82)
            {
              v497 = 0;
              v498 = 0;
              WGSL::Parser<WGSL::Lexer<unsigned char>>::parseAttributes(&v499, a2);
              if (v501)
              {
                if (v501 != 1)
                {
                  goto LABEL_971;
                }

                v196 = v499;
                if (v499)
                {
                  atomic_fetch_add_explicit(v499, 2u, memory_order_relaxed);
                }

                v215 = 0;
                *(a1 + 1) = v500;
                *a1 = v196;
                v197 = 1;
                *(a1 + 24) = 1;
                v216 = v499;
LABEL_442:
                if (v216 && atomic_fetch_add_explicit(v216, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v216, a2);
                }

                goto LABEL_553;
              }

              if (*(a2 + 56) != 43)
              {
                WGSL::toString();
                WGSL::toString();
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v496, 13, &v495, &v482, ", but got a ");
                v217 = v495;
                v495 = 0;
                if (v217 && atomic_fetch_add_explicit(v217, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v217, a2);
                }

                v218 = v496;
                v496 = 0;
                if (v218)
                {
                  goto LABEL_531;
                }

                goto LABEL_564;
              }

              while (2)
              {
                v221 = *(a2 + 36);
                v222 = (*(a2 + 40) + 1);
                *(a2 + 40) = v222;
                if (v221 <= v222)
                {
                  __break(0xC471u);
                  JUMPOUT(0x225781380);
                }

                v223 = *(a2 + 24) + 32 * v222;
                v219 = *v223;
                *(a2 + 56) = *v223;
                *(a2 + 60) = *(v223 + 4);
                v224 = *v223;
                if (*v223 <= 8u)
                {
                  if (((1 << v224) & 0x38) != 0)
                  {
                    *(a2 + 80) = *(v223 + 24);
                    goto LABEL_452;
                  }

                  if (((1 << v224) & 0xC4) != 0)
                  {
                    *(a2 + 80) = *(v223 + 24);
                    goto LABEL_452;
                  }

                  if (v224 == 8)
                  {
                    *(a2 + 80) = 0;
                    v225 = *(v223 + 24);
                    if (v225)
                    {
                      atomic_fetch_add_explicit(v225, 2u, memory_order_relaxed);
                      v226 = *(a2 + 80);
                      *(a2 + 80) = v225;
                      if (v226)
                      {
                        if (atomic_fetch_add_explicit(v226, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v226, a2);
                        }
                      }
                    }

LABEL_452:
                    v219 = *(a2 + 56);
                  }
                }

                v220 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v220;
                if (v219 == 82)
                {
                  continue;
                }

                break;
              }

              while (2)
              {
                v227 = *(a2 + 56);
                if (v227 != 11)
                {
                  if (v227 != 44)
                  {
                    v199 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseStatement(&v482, a2);
                    v245 = v484;
                    if (v484)
                    {
                      if (v484 != 1)
                      {
                        goto LABEL_972;
                      }

                      v196 = v482;
                      if (v482)
                      {
                        atomic_fetch_add_explicit(v482, 2u, memory_order_relaxed);
                      }

                      *(a1 + 1) = v483;
                      v197 = 1;
                    }

                    else
                    {
                      v246 = HIDWORD(v498);
                      if (HIDWORD(v498) == v498)
                      {
                        v247 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v497, HIDWORD(v498) + 1, &v482);
                        v246 = HIDWORD(v498);
                        v248 = v497;
                        v249 = *v247;
                      }

                      else
                      {
                        v248 = v497;
                        v249 = v482;
                      }

                      *(v248 + v246) = v249;
                      ++HIDWORD(v498);
                    }

                    if (v484)
                    {
                      if (v484 != 255)
                      {
                        v250 = v482;
                        v482 = 0;
                        if (v250)
                        {
                          if (atomic_fetch_add_explicit(v250, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v250, a2);
                          }
                        }
                      }
                    }

                    if (v245)
                    {
                      v215 = 0;
                      *(a1 + 24) = v197;
                      *a1 = v196;
                      goto LABEL_549;
                    }

                    continue;
                  }

                  v455 = 0;
                  *(a1 + 24) = v197;
                  *a1 = v196;
LABEL_570:
                  while (2)
                  {
                    v276 = *(a2 + 36);
                    v277 = (*(a2 + 40) + 1);
                    *(a2 + 40) = v277;
                    if (v276 <= v277)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x2257813C0);
                    }

                    v278 = *(a2 + 24) + 32 * v277;
                    v274 = *v278;
                    *(a2 + 56) = *v278;
                    *(a2 + 60) = *(v278 + 4);
                    v279 = *v278;
                    if (*v278 <= 8u)
                    {
                      if (((1 << v279) & 0x38) != 0)
                      {
                        *(a2 + 80) = *(v278 + 24);
                        goto LABEL_568;
                      }

                      if (((1 << v279) & 0xC4) != 0)
                      {
                        *(a2 + 80) = *(v278 + 24);
                        goto LABEL_568;
                      }

                      if (v279 == 8)
                      {
                        *(a2 + 80) = 0;
                        v280 = *(v278 + 24);
                        if (v280)
                        {
                          atomic_fetch_add_explicit(v280, 2u, memory_order_relaxed);
                          v281 = *(a2 + 80);
                          *(a2 + 80) = v280;
                          if (v281)
                          {
                            if (atomic_fetch_add_explicit(v281, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v281, a2);
                            }
                          }
                        }

LABEL_568:
                        v274 = *(a2 + 56);
                      }
                    }

                    v275 = *(a2 + 68);
                    *(a2 + 88) = *(a2 + 60);
                    *(a2 + 96) = v275;
                    if (v274 != 82)
                    {
                      v282 = v497;
                      v497 = 0;
                      v283 = HIDWORD(v498);
                      v448 = v498;
                      v498 = 0;
                      __src = v499;
                      v499 = 0;
                      v284 = DWORD1(v500);
                      v449 = v283;
                      v451 = v500;
                      *&v500 = 0;
                      if ((v459 & 1) == 0)
                      {
                        *v491 = v282;
                        *&v491[8] = v448;
                        *&v491[12] = v283;
                        *&v491[16] = __src;
                        v492 = __PAIR64__(v284, v451);
                        v493 = v455;
                        v215 = 1;
                        v459 = 1;
                        v457 = __src;
                        v494 = 1;
                        goto LABEL_549;
                      }

                      if (*v491)
                      {
                        WTF::fastFree(*v491, a2);
                      }

                      *v491 = v282;
                      *&v491[8] = v448;
                      *&v491[12] = v449;
                      if (!v457)
                      {
                        v266 = __src;
                        *&v491[16] = __src;
                        v492 = __PAIR64__(v284, v451);
                        v493 = v455;
                        v459 = 1;
                        v215 = 1;
                        v216 = v499;
                        goto LABEL_550;
                      }

                      *&v491[16] = 0;
                      LODWORD(v492) = 0;
                      WTF::fastFree(v457, a2);
                      *&v491[16] = __src;
                      v492 = __PAIR64__(v284, v451);
                      v493 = v455;
                      if (v501 == 255)
                      {
                        v215 = 1;
                        v459 = 1;
                        v457 = __src;
                        goto LABEL_553;
                      }

                      v459 = 1;
                      v216 = v499;
                      v215 = 1;
                      v266 = __src;
                      v457 = __src;
                      if (!v501)
                      {
                        goto LABEL_550;
                      }

                      goto LABEL_442;
                    }

                    continue;
                  }
                }

                break;
              }

              while (2)
              {
                v228 = *(a2 + 36);
                v229 = (*(a2 + 40) + 1);
                *(a2 + 40) = v229;
                if (v228 <= v229)
                {
                  *a1 = v196;
                  *(a1 + 24) = v197;
                  __break(0xC471u);
                  JUMPOUT(0x225781390);
                }

                v230 = *(a2 + 24) + 32 * v229;
                v231 = *v230;
                *(a2 + 56) = *v230;
                *(a2 + 60) = *(v230 + 4);
                v232 = *v230;
                if (*v230 <= 8u)
                {
                  if (((1 << v232) & 0x38) != 0)
                  {
                    *(a2 + 80) = *(v230 + 24);
                    goto LABEL_471;
                  }

                  if (((1 << v232) & 0xC4) != 0)
                  {
                    *(a2 + 80) = *(v230 + 24);
                    goto LABEL_471;
                  }

                  if (v232 == 8)
                  {
                    *(a2 + 80) = 0;
                    v234 = *(v230 + 24);
                    if (v234)
                    {
                      atomic_fetch_add_explicit(v234, 2u, memory_order_relaxed);
                      v235 = *(a2 + 80);
                      *(a2 + 80) = v234;
                      if (v235)
                      {
                        if (atomic_fetch_add_explicit(v235, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v235, a2);
                        }
                      }
                    }

LABEL_471:
                    v231 = *(a2 + 56);
                  }
                }

                v233 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v233;
                if (v231 == 82)
                {
                  continue;
                }

                break;
              }

              if (v231 != 25)
              {
                if (v231 != 73)
                {
                  WGSL::toString();
                  WGSL::toString();
                  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v490, 13, &v489, &v482, ", but got a ");
                  v259 = v489;
                  v489 = 0;
                  if (v259 && atomic_fetch_add_explicit(v259, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v259, a2);
                  }

                  v218 = v490;
                  v490 = 0;
                  if (v218)
                  {
LABEL_531:
                    if (atomic_fetch_add_explicit(v218, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v218, a2);
                    }
                  }

LABEL_564:
                  v215 = 0;
                  v196 = v482;
                  v273 = v5 | ((*(a2 + 96) - v5) << 32);
                  *a1 = v482;
                  a1[1] = v4;
                  a1[2] = v273;
                  v197 = 1;
                  *(a1 + 24) = 1;
                  goto LABEL_549;
                }

                while (2)
                {
                  v238 = *(a2 + 36);
                  v239 = (*(a2 + 40) + 1);
                  *(a2 + 40) = v239;
                  if (v238 <= v239)
                  {
                    *a1 = v196;
                    *(a1 + 24) = v197;
                    __break(0xC471u);
                    JUMPOUT(0x2257813A0);
                  }

                  v240 = *(a2 + 24) + 32 * v239;
                  v236 = *v240;
                  *(a2 + 56) = *v240;
                  *(a2 + 60) = *(v240 + 4);
                  v241 = *v240;
                  if (*v240 <= 8u)
                  {
                    if (((1 << v241) & 0x38) != 0)
                    {
                      *(a2 + 80) = *(v240 + 24);
                      goto LABEL_483;
                    }

                    if (((1 << v241) & 0xC4) != 0)
                    {
                      *(a2 + 80) = *(v240 + 24);
                      goto LABEL_483;
                    }

                    if (v241 == 8)
                    {
                      *(a2 + 80) = 0;
                      v242 = *(v240 + 24);
                      if (v242)
                      {
                        atomic_fetch_add_explicit(v242, 2u, memory_order_relaxed);
                        v243 = *(a2 + 80);
                        *(a2 + 80) = v242;
                        if (v243)
                        {
                          if (atomic_fetch_add_explicit(v243, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v243, a2);
                          }
                        }
                      }

LABEL_483:
                      v236 = *(a2 + 56);
                    }
                  }

                  v237 = *(a2 + 68);
                  *(a2 + 88) = *(a2 + 60);
                  *(a2 + 96) = v237;
                  if (v236 != 82)
                  {
                    v244 = *(a2 + 8);
                    v482 = v4;
                    LODWORD(v483) = v5;
                    DWORD1(v483) = v237 - v5;
                    WGSL::AST::Builder::construct<WGSL::AST::BreakStatement,WGSL::SourceSpan,void>(v244, &v482);
                  }

                  continue;
                }
              }

              *a1 = v196;
              *(a1 + 24) = v197;
              while (2)
              {
                v253 = *(a2 + 36);
                v254 = (*(a2 + 40) + 1);
                *(a2 + 40) = v254;
                if (v253 <= v254)
                {
                  __break(0xC471u);
                  JUMPOUT(0x2257813A8);
                }

                v255 = *(a2 + 24) + 32 * v254;
                v251 = *v255;
                *(a2 + 56) = *v255;
                *(a2 + 60) = *(v255 + 4);
                v256 = *v255;
                if (*v255 <= 8u)
                {
                  if (((1 << v256) & 0x38) != 0)
                  {
                    *(a2 + 80) = *(v255 + 24);
                    goto LABEL_515;
                  }

                  if (((1 << v256) & 0xC4) != 0)
                  {
                    *(a2 + 80) = *(v255 + 24);
                    goto LABEL_515;
                  }

                  if (v256 == 8)
                  {
                    *(a2 + 80) = 0;
                    v257 = *(v255 + 24);
                    if (v257)
                    {
                      atomic_fetch_add_explicit(v257, 2u, memory_order_relaxed);
                      v258 = *(a2 + 80);
                      *(a2 + 80) = v257;
                      if (v258)
                      {
                        if (atomic_fetch_add_explicit(v258, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v258, a2);
                        }
                      }
                    }

LABEL_515:
                    v251 = *(a2 + 56);
                  }
                }

                v252 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v252;
                if (v251 == 82)
                {
                  continue;
                }

                break;
              }

              result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v486, a2);
              if (v488)
              {
                if (v488 != 1)
                {
                  goto LABEL_971;
                }

                v196 = v486;
                if (v486)
                {
                  atomic_fetch_add_explicit(v486, 2u, memory_order_relaxed);
                }

                *(a1 + 1) = v487;
                *a1 = v196;
                *(a1 + 24) = 1;
                goto LABEL_548;
              }

              WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(&v482, a2, 73);
              if (!v485)
              {
                std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(&v482, v261);
                v455 = v486;
                std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v486, v270);
                if (*(a2 + 56) == 44)
                {
                  goto LABEL_570;
                }

                WGSL::toString();
                WGSL::toString();
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v478, 13, &v477, &v482, ", but got a ");
                v271 = v477;
                v477 = 0;
                if (v271 && atomic_fetch_add_explicit(v271, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v271, a2);
                }

                v272 = v478;
                v478 = 0;
                if (v272 && atomic_fetch_add_explicit(v272, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v272, a2);
                }

                goto LABEL_564;
              }

              result = WGSL::toString();
              if (v485 != 1)
              {
                goto LABEL_971;
              }

              WGSL::toString();
              WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v480, 13, &v479, &v481, ", but got a ");
              v263 = v479;
              v479 = 0;
              if (v263 && atomic_fetch_add_explicit(v263, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v263, v262);
              }

              v264 = v480;
              v480 = 0;
              if (v264 && atomic_fetch_add_explicit(v264, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v264, v262);
              }

              v196 = v481;
              v265 = v5 | ((*(a2 + 96) - v5) << 32);
              *a1 = v481;
              a1[1] = v4;
              a1[2] = v265;
              *(a1 + 24) = 1;
              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(&v482, v262);
LABEL_548:
              std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v486, v260);
              v215 = 0;
              v197 = 1;
LABEL_549:
              v216 = v499;
              v266 = v457;
LABEL_550:
              if (v216)
              {
                v499 = 0;
                v267 = v215;
                v268 = v266;
                WTF::fastFree(v216, a2);
                v457 = v268;
                v215 = v267;
              }

              else
              {
                v457 = v266;
              }

LABEL_553:
              v269 = v497;
              if (v497)
              {
                v497 = 0;
                LODWORD(v498) = 0;
                WTF::fastFree(v269, a2);
              }

              if ((v215 & 1) == 0)
              {
LABEL_796:
                if (v459)
                {
                  if (*&v491[16])
                  {
                    WTF::fastFree(*&v491[16], a2);
                  }

                  if (*v491)
                  {
                    WTF::fastFree(*v491, a2);
                  }
                }

                result = v502;
                if (v502)
                {
                  v502 = 0;
                  LODWORD(v503) = 0;
                  result = WTF::fastFree(result, a2);
                }

                if (v506 == 255)
                {
                  goto LABEL_4;
                }

                result = v504;
                if (v506)
                {
LABEL_805:
                  if (!result)
                  {
                    goto LABEL_4;
                  }

                  goto LABEL_951;
                }

LABEL_403:
                if (result)
                {
                  result = WTF::fastFree(result, a2);
                }

                goto LABEL_4;
              }

              continue;
            }

            goto LABEL_427;
          }
        }
      }

    case 0x1E:
      while (1)
      {
        v35 = *(a2 + 36);
        v36 = (*(a2 + 40) + 1);
        *(a2 + 40) = v36;
        if (v35 <= v36)
        {
          __break(0xC471u);
          JUMPOUT(0x2257812D8);
        }

        v37 = *(a2 + 24) + 32 * v36;
        v38 = *v37;
        *(a2 + 56) = *v37;
        *(a2 + 60) = *(v37 + 4);
        v39 = *v37;
        if (*v37 > 8u)
        {
          goto LABEL_77;
        }

        if (((1 << v39) & 0x38) != 0)
        {
          *(a2 + 80) = *(v37 + 24);
        }

        else if (((1 << v39) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v37 + 24);
        }

        else
        {
          if (v39 != 8)
          {
            goto LABEL_77;
          }

          *(a2 + 80) = 0;
          v41 = *(v37 + 24);
          if (v41)
          {
            atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
            v42 = *(a2 + 80);
            *(a2 + 80) = v41;
            if (v42)
            {
              if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v42, a2);
              }
            }
          }
        }

        v38 = *(a2 + 56);
LABEL_77:
        v40 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v40;
        if (v38 != 82)
        {
          if (v38 == 73)
          {
            v104 = *(a2 + 8);
            *v491 = v4;
            *&v491[8] = v5;
            *&v491[12] = v40 - v5;
            WGSL::AST::Builder::construct<WGSL::AST::ReturnStatement,WGSL::SourceSpan,decltype(nullptr),void>(v104, v491);
          }

          result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(v491, a2);
          if (!v492)
          {
            v191 = *(a2 + 8);
            v192 = *(a2 + 96) - v5;
            v482 = v4;
            *&v483 = __PAIR64__(v192, v5);
            v504 = *v491;
            WGSL::AST::Builder::construct<WGSL::AST::ReturnStatement,WGSL::SourceSpan,WGSL::AST::Expression *,void>(v191, &v482, &v504);
          }

          if (v492 != 1)
          {
            goto LABEL_971;
          }

          v161 = *v491;
          if (*v491)
          {
            atomic_fetch_add_explicit(*v491, 2u, memory_order_relaxed);
            v162 = *&v491[8];
            if (atomic_fetch_add_explicit(v161, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v461 = v162;
              result = WTF::StringImpl::destroy(v161, v160);
              v162 = v461;
            }

            atomic_fetch_add_explicit(v161, 2u, memory_order_relaxed);
            *(a1 + 1) = v162;
            *a1 = v161;
            *(a1 + 24) = 1;
            if (atomic_fetch_add_explicit(v161, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(v161, v160);
            }

            goto LABEL_4;
          }

          goto LABEL_967;
        }
      }

    case 0x20:
      while (1)
      {
        v29 = *(a2 + 36);
        v30 = (*(a2 + 40) + 1);
        *(a2 + 40) = v30;
        if (v29 <= v30)
        {
          __break(0xC471u);
          JUMPOUT(0x225781278);
        }

        v31 = *(a2 + 24) + 32 * v30;
        v27 = *v31;
        *(a2 + 56) = *v31;
        *(a2 + 60) = *(v31 + 4);
        v32 = *v31;
        if (*v31 > 8u)
        {
          goto LABEL_59;
        }

        if (((1 << v32) & 0x38) != 0)
        {
          *(a2 + 80) = *(v31 + 24);
        }

        else if (((1 << v32) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v31 + 24);
        }

        else
        {
          if (v32 != 8)
          {
            goto LABEL_59;
          }

          *(a2 + 80) = 0;
          v33 = *(v31 + 24);
          if (v33)
          {
            atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
            v34 = *(a2 + 80);
            *(a2 + 80) = v33;
            if (v34)
            {
              if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v34, a2);
              }
            }
          }
        }

        v27 = *(a2 + 56);
LABEL_59:
        v28 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v28;
        if (v27 != 82)
        {
          result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v482, a2);
          if (v484)
          {
            if (v484 != 1)
            {
              goto LABEL_971;
            }

LABEL_196:
            v105 = v482;
            if (v482)
            {
              atomic_fetch_add_explicit(v482, 2u, memory_order_relaxed);
            }

            *(a1 + 1) = v483;
            *a1 = v105;
            *(a1 + 24) = 1;
LABEL_199:
            result = v482;
            if (!v482)
            {
              goto LABEL_4;
            }

LABEL_951:
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
            {
              goto LABEL_4;
            }

            goto LABEL_952;
          }

          WGSL::Parser<WGSL::Lexer<unsigned char>>::parseAttributes(&v504, a2);
          if (v506)
          {
            if (v506 != 1)
            {
              goto LABEL_971;
            }

            v182 = v504;
            if (v504)
            {
              atomic_fetch_add_explicit(v504, 2u, memory_order_relaxed);
            }

            *(a1 + 1) = v505;
            *a1 = v182;
            *(a1 + 24) = 1;
            result = v504;
            goto LABEL_369;
          }

          if (*(a2 + 56) != 43)
          {
            WGSL::toString();
            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v499, 13, &v486, v491, ", but got a ");
            v313 = v486;
            v486 = 0;
            if (v313 && atomic_fetch_add_explicit(v313, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v313, a2);
            }

            v314 = v499;
            v499 = 0;
            if (v314 && atomic_fetch_add_explicit(v314, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v314, a2);
            }

            v315 = v5 | ((*(a2 + 96) - v5) << 32);
            *a1 = *v491;
            a1[1] = v4;
            a1[2] = v315;
            *(a1 + 24) = 1;
            result = v504;
            goto LABEL_651;
          }

          while (2)
          {
            v292 = *(a2 + 36);
            v293 = (*(a2 + 40) + 1);
            *(a2 + 40) = v293;
            if (v292 <= v293)
            {
              __break(0xC471u);
              JUMPOUT(0x225781340);
            }

            v294 = *(a2 + 24) + 32 * v293;
            v290 = *v294;
            *(a2 + 56) = *v294;
            *(a2 + 60) = *(v294 + 4);
            v295 = *v294;
            if (*v294 <= 8u)
            {
              if (((1 << v295) & 0x38) != 0)
              {
                *(a2 + 80) = *(v294 + 24);
                goto LABEL_602;
              }

              if (((1 << v295) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v294 + 24);
                goto LABEL_602;
              }

              if (v295 == 8)
              {
                *(a2 + 80) = 0;
                v296 = *(v294 + 24);
                if (v296)
                {
                  atomic_fetch_add_explicit(v296, 2u, memory_order_relaxed);
                  v297 = *(a2 + 80);
                  *(a2 + 80) = v296;
                  if (v297)
                  {
                    if (atomic_fetch_add_explicit(v297, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v297, a2);
                    }
                  }
                }

LABEL_602:
                v290 = *(a2 + 56);
              }
            }

            v291 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v291;
            if (v290 == 82)
            {
              continue;
            }

            break;
          }

          v450 = 0;
          v460 = 0;
          __srca = 0;
          v502 = 0;
          v503 = 0;
          LOBYTE(v499) = 0;
          v501 = 0;
LABEL_655:
          v316 = *(a2 + 56);
          if (v316 != 44)
          {
            v497 = 0;
            v498 = 0;
            if (v316 != 12)
            {
              if (v316 != 17)
              {
                WTF::StringImpl::createWithoutCopyingNonEmpty();
                v317 = 0;
                v318 = v5 | ((*(a2 + 96) - v5) << 32);
                a1[1] = v4;
                a1[2] = v318;
                *(a1 + 24) = 1;
                goto LABEL_772;
              }

              while (2)
              {
                v321 = *(a2 + 36);
                v322 = (*(a2 + 40) + 1);
                *(a2 + 40) = v322;
                if (v321 <= v322)
                {
                  __break(0xC471u);
                  JUMPOUT(0x2257812C8);
                }

                v323 = *(a2 + 24) + 32 * v322;
                v319 = *v323;
                *(a2 + 56) = *v323;
                *(a2 + 60) = *(v323 + 4);
                v324 = *v323;
                if (*v323 <= 8u)
                {
                  if (((1 << v324) & 0x38) != 0)
                  {
                    *(a2 + 80) = *(v323 + 24);
                    goto LABEL_660;
                  }

                  if (((1 << v324) & 0xC4) != 0)
                  {
                    *(a2 + 80) = *(v323 + 24);
                    goto LABEL_660;
                  }

                  if (v324 == 8)
                  {
                    *(a2 + 80) = 0;
                    v325 = *(v323 + 24);
                    if (v325)
                    {
                      atomic_fetch_add_explicit(v325, 2u, memory_order_relaxed);
                      v326 = *(a2 + 80);
                      *(a2 + 80) = v325;
                      if (v326)
                      {
                        if (atomic_fetch_add_explicit(v326, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v326, a2);
                        }
                      }
                    }

LABEL_660:
                    v319 = *(a2 + 56);
                  }
                }

                v320 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v320;
                if (v319 != 82)
                {
                  v462 = 0;
                  goto LABEL_736;
                }

                continue;
              }
            }

            while (2)
            {
              v328 = *(a2 + 36);
              v329 = (*(a2 + 40) + 1);
              *(a2 + 40) = v329;
              if (v328 <= v329)
              {
                __break(0xC471u);
                JUMPOUT(0x2257812D0);
              }

              v330 = *(a2 + 24) + 32 * v329;
              v319 = *v330;
              *(a2 + 56) = *v330;
              *(a2 + 60) = *(v330 + 4);
              v331 = *v330;
              if (*v330 <= 8u)
              {
                if (((1 << v331) & 0x38) != 0)
                {
                  *(a2 + 80) = *(v330 + 24);
                  goto LABEL_674;
                }

                if (((1 << v331) & 0xC4) != 0)
                {
                  *(a2 + 80) = *(v330 + 24);
                  goto LABEL_674;
                }

                if (v331 == 8)
                {
                  *(a2 + 80) = 0;
                  v332 = *(v330 + 24);
                  if (v332)
                  {
                    atomic_fetch_add_explicit(v332, 2u, memory_order_relaxed);
                    v333 = *(a2 + 80);
                    *(a2 + 80) = v332;
                    if (v333)
                    {
                      if (atomic_fetch_add_explicit(v333, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v333, a2);
                      }
                    }
                  }

LABEL_674:
                  v319 = *(a2 + 56);
                }
              }

              v327 = *(a2 + 68);
              *(a2 + 88) = *(a2 + 60);
              *(a2 + 96) = v327;
              if (v319 == 82)
              {
                continue;
              }

              break;
            }

            v452 = 0;
            v462 = 0;
            v458 = 0;
            v334 = *a1;
            v456 = *(a1 + 24);
LABEL_688:
            if (v319 != 17)
            {
              v335 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(v491, a2);
              v336 = v492;
              if (v492)
              {
                if (v492 != 1)
                {
                  *(a1 + 24) = v456;
                  *a1 = v334;
                  mpark::throw_bad_variant_access(v335);
                }

                v334 = *v491;
                if (*v491)
                {
                  atomic_fetch_add_explicit(*v491, 2u, memory_order_relaxed);
                }

                *(a1 + 1) = *&v491[8];
                v456 = 1;
              }

              else
              {
                v344 = v462;
                if (v462 == v498)
                {
                  v345 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v497, v462 + 1, v491);
                  v346 = HIDWORD(v498);
                  v452 = v497;
                  *(v497 + HIDWORD(v498)) = *v345;
                  v462 = v346 + 1;
                  HIDWORD(v498) = v346 + 1;
                }

                else
                {
                  *(v452 + v462++) = *v491;
                  HIDWORD(v498) = v344 + 1;
                }
              }

              if (v492)
              {
                if (v492 != 255)
                {
                  v347 = *v491;
                  *v491 = 0;
                  if (v347)
                  {
                    if (atomic_fetch_add_explicit(v347, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v347, a2);
                    }
                  }
                }
              }

              ++__srca;
              if (v336)
              {
                v317 = 0;
                *(a1 + 24) = v456;
                *a1 = v334;
                goto LABEL_772;
              }

              v319 = *(a2 + 56);
LABEL_718:
              if (v319 != 48)
              {
                goto LABEL_735;
              }

              while (1)
              {
                v348 = *(a2 + 36);
                v349 = (*(a2 + 40) + 1);
                *(a2 + 40) = v349;
                if (v348 <= v349)
                {
                  *(a1 + 24) = v456;
                  *a1 = v334;
                  __break(0xC471u);
                  JUMPOUT(0x225781328);
                }

                v350 = *(a2 + 24) + 32 * v349;
                v319 = *v350;
                *(a2 + 56) = *v350;
                *(a2 + 60) = *(v350 + 4);
                v351 = *v350;
                if (*v350 > 8u)
                {
                  goto LABEL_726;
                }

                if (((1 << v351) & 0x38) != 0)
                {
                  *(a2 + 80) = *(v350 + 24);
                }

                else if (((1 << v351) & 0xC4) != 0)
                {
                  *(a2 + 80) = *(v350 + 24);
                }

                else
                {
                  if (v351 != 8)
                  {
                    goto LABEL_726;
                  }

                  *(a2 + 80) = 0;
                  v353 = *(v350 + 24);
                  if (v353)
                  {
                    atomic_fetch_add_explicit(v353, 2u, memory_order_relaxed);
                    v354 = *(a2 + 80);
                    *(a2 + 80) = v353;
                    if (v354)
                    {
                      if (atomic_fetch_add_explicit(v354, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v354, a2);
                      }
                    }
                  }
                }

                v319 = *(a2 + 56);
LABEL_726:
                v352 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v352;
                if (v319 != 82)
                {
                  if (v319 == 43 || v319 == 47)
                  {
LABEL_735:
                    *(a1 + 24) = v456;
                    *a1 = v334;
                    if (v458)
                    {
LABEL_736:
                      v355 = 1;
                      if (v460)
                      {
                        WTF::StringImpl::createWithoutCopyingNonEmpty();
                        v317 = 0;
                        v356 = v5 | ((*(a2 + 96) - v5) << 32);
                        *a1 = *v491;
                        a1[1] = v4;
                        a1[2] = v356;
                        *(a1 + 24) = 1;
                        v460 = 1;
                        goto LABEL_772;
                      }
                    }

                    else
                    {
                      v355 = 0;
                    }

                    if (v319 != 47)
                    {
LABEL_740:
                      result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseCompoundStatement(v491, a2);
                      if (v492)
                      {
                        if (v492 != 1)
                        {
                          goto LABEL_971;
                        }

                        v357 = *v491;
                        if (*v491)
                        {
                          atomic_fetch_add_explicit(*v491, 2u, memory_order_relaxed);
                          *(a1 + 1) = *&v491[8];
                          *a1 = v357;
                          *(a1 + 24) = 1;
                          if (atomic_fetch_add_explicit(v357, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v357, a2);
                          }

                          v317 = 0;
                        }

                        else
                        {
                          v317 = 0;
                          *(a1 + 1) = *&v491[8];
                          *a1 = 0;
                          *(a1 + 24) = 1;
                        }
                      }

                      else
                      {
                        if (v355)
                        {
                          v366 = v497;
                          v367 = v498;
                          v497 = 0;
                          v498 = 0;
                          v368 = *v491;
                          if (v450)
                          {
                            if (v499)
                            {
                              WTF::fastFree(v499, a2);
                            }

                            v499 = v366;
                            *&v500 = __PAIR64__(v462, v367);
                            v450 = 1;
                            v460 = 1;
                            *(&v500 + 1) = v368;
                          }

                          else
                          {
                            v499 = v366;
                            *&v500 = __PAIR64__(v462, v367);
                            *(&v500 + 1) = *v491;
                            v460 = 1;
                            v450 = 1;
                            v501 = 1;
                          }
                        }

                        else
                        {
                          v486 = v497;
                          v369 = v498;
                          v497 = 0;
                          v498 = 0;
                          *&v487 = __PAIR64__(v462, v369);
                          *(&v487 + 1) = *v491;
                          v370 = HIDWORD(v503);
                          if (HIDWORD(v503) == v503)
                          {
                            v371 = WTF::Vector<WGSL::AST::SwitchClause,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v502, HIDWORD(v503) + 1, &v486);
                            v370 = HIDWORD(v503);
                            v372 = v502 + 24 * HIDWORD(v503);
                            *v372 = 0;
                            *(v372 + 1) = 0;
                            v373 = *v371;
                            *v371 = 0;
                            *v372 = v373;
                            LODWORD(v373) = *(v371 + 8);
                            *(v371 + 8) = 0;
                            *(v372 + 2) = v373;
                            LODWORD(v373) = *(v371 + 12);
                            *(v371 + 12) = 0;
                            *(v372 + 3) = v373;
                            v374 = (v371 + 16);
                          }

                          else
                          {
                            v372 = v502 + 24 * HIDWORD(v503);
                            *v372 = 0;
                            *(v372 + 1) = 0;
                            v375 = v486;
                            v486 = 0;
                            *v372 = v375;
                            *(v372 + 2) = v487;
                            LODWORD(v375) = DWORD1(v487);
                            DWORD1(v487) = 0;
                            *(v372 + 3) = v375;
                            v374 = &v487 + 1;
                          }

                          *(v372 + 2) = *v374;
                          HIDWORD(v503) = v370 + 1;
                          v376 = v486;
                          if (v486)
                          {
                            v486 = 0;
                            LODWORD(v487) = 0;
                            WTF::fastFree(v376, a2);
                          }
                        }

                        if (__srca >= 0x400)
                        {
                          WTF::String::number(&v496, 0x3FF);
                          WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("switch statement cannot have more than ", 40, &v496, " case selector values", 22, &v486);
                          v377 = v5 | ((*(a2 + 96) - v5) << 32);
                          *a1 = v486;
                          a1[1] = v4;
                          a1[2] = v377;
                          *(a1 + 24) = 1;
                          v486 = 0;
                          v378 = v496;
                          v496 = 0;
                          if (v378 && atomic_fetch_add_explicit(v378, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v378, a2);
                          }

                          v317 = 0;
                        }

                        else
                        {
                          v317 = 1;
                        }
                      }

LABEL_772:
                      result = v497;
                      if (v497)
                      {
                        v497 = 0;
                        result = WTF::fastFree(result, a2);
                      }

                      if ((v317 & 1) == 0)
                      {
LABEL_849:
                        if (v450)
                        {
                          result = v499;
                          if (v499)
                          {
                            result = WTF::fastFree(v499, a2);
                          }
                        }

                        goto LABEL_954;
                      }

                      goto LABEL_655;
                    }

                    while (2)
                    {
                      v360 = *(a2 + 36);
                      v361 = (*(a2 + 40) + 1);
                      *(a2 + 40) = v361;
                      if (v360 <= v361)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x225781314);
                      }

                      v362 = *(a2 + 24) + 32 * v361;
                      v358 = *v362;
                      *(a2 + 56) = *v362;
                      *(a2 + 60) = *(v362 + 4);
                      v363 = *v362;
                      if (*v362 <= 8u)
                      {
                        if (((1 << v363) & 0x38) != 0)
                        {
                          *(a2 + 80) = *(v362 + 24);
                          goto LABEL_747;
                        }

                        if (((1 << v363) & 0xC4) != 0)
                        {
                          *(a2 + 80) = *(v362 + 24);
                          goto LABEL_747;
                        }

                        if (v363 == 8)
                        {
                          *(a2 + 80) = 0;
                          v364 = *(v362 + 24);
                          if (v364)
                          {
                            atomic_fetch_add_explicit(v364, 2u, memory_order_relaxed);
                            v365 = *(a2 + 80);
                            *(a2 + 80) = v364;
                            if (v365)
                            {
                              if (atomic_fetch_add_explicit(v365, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v365, a2);
                              }
                            }
                          }

LABEL_747:
                          v358 = *(a2 + 56);
                        }
                      }

                      v359 = *(a2 + 68);
                      *(a2 + 88) = *(a2 + 60);
                      *(a2 + 96) = v359;
                      if (v358 != 82)
                      {
                        goto LABEL_740;
                      }

                      continue;
                    }
                  }

                  goto LABEL_688;
                }
              }
            }

            while (2)
            {
              v338 = *(a2 + 36);
              v339 = (*(a2 + 40) + 1);
              *(a2 + 40) = v339;
              if (v338 <= v339)
              {
                *(a1 + 24) = v456;
                *a1 = v334;
                __break(0xC471u);
                JUMPOUT(0x22578130CLL);
              }

              v340 = *(a2 + 24) + 32 * v339;
              v319 = *v340;
              *(a2 + 56) = *v340;
              *(a2 + 60) = *(v340 + 4);
              v341 = *v340;
              if (*v340 <= 8u)
              {
                if (((1 << v341) & 0x38) != 0)
                {
                  *(a2 + 80) = *(v340 + 24);
                  goto LABEL_695;
                }

                if (((1 << v341) & 0xC4) != 0)
                {
                  *(a2 + 80) = *(v340 + 24);
                  goto LABEL_695;
                }

                if (v341 == 8)
                {
                  *(a2 + 80) = 0;
                  v342 = *(v340 + 24);
                  if (v342)
                  {
                    atomic_fetch_add_explicit(v342, 2u, memory_order_relaxed);
                    v343 = *(a2 + 80);
                    *(a2 + 80) = v342;
                    if (v343)
                    {
                      if (atomic_fetch_add_explicit(v343, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v343, a2);
                      }
                    }
                  }

LABEL_695:
                  v319 = *(a2 + 56);
                }
              }

              v337 = *(a2 + 68);
              *(a2 + 88) = *(a2 + 60);
              *(a2 + 96) = v337;
              if (v319 != 82)
              {
                v458 = 1;
                goto LABEL_718;
              }

              continue;
            }
          }

          *v491 = 44;
          *&v491[4] = *(a2 + 60);
          LOBYTE(v493) = 0;
          while (2)
          {
            v398 = *(a2 + 36);
            v399 = (*(a2 + 40) + 1);
            *(a2 + 40) = v399;
            if (v398 <= v399)
            {
              __break(0xC471u);
              JUMPOUT(0x225781368);
            }

            v400 = *(a2 + 24) + 32 * v399;
            v396 = *v400;
            *(a2 + 56) = *v400;
            *(a2 + 60) = *(v400 + 4);
            v401 = *v400;
            if (*v400 <= 8u)
            {
              if (((1 << v401) & 0x38) != 0)
              {
                *(a2 + 80) = *(v400 + 24);
                goto LABEL_828;
              }

              if (((1 << v401) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v400 + 24);
                goto LABEL_828;
              }

              if (v401 == 8)
              {
                *(a2 + 80) = 0;
                v402 = *(v400 + 24);
                if (v402)
                {
                  atomic_fetch_add_explicit(v402, 2u, memory_order_relaxed);
                  v403 = *(a2 + 80);
                  *(a2 + 80) = v402;
                  if (v403)
                  {
                    if (atomic_fetch_add_explicit(v403, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v403, a2);
                    }
                  }
                }

LABEL_828:
                v396 = *(a2 + 56);
              }
            }

            v397 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v397;
            if (v396 != 82)
            {
              if (v493)
              {
                result = WGSL::toString();
                if (v493 != 1)
                {
                  goto LABEL_971;
                }

                WGSL::toString();
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v497, 13, &v495, &v486, ", but got a ");
                v405 = v495;
                v495 = 0;
                if (v405 && atomic_fetch_add_explicit(v405, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v405, v404);
                }

                v406 = v497;
                v497 = 0;
                if (v406 && atomic_fetch_add_explicit(v406, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v406, v404);
                }

                v407 = v5 | ((*(a2 + 96) - v5) << 32);
                *a1 = v486;
                a1[1] = v4;
                a1[2] = v407;
                *(a1 + 24) = 1;
                result = std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v491, v404);
                goto LABEL_849;
              }

              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v491, a2);
              if (v450)
              {
                v438 = *(a2 + 8);
                v439 = *(a2 + 96) - v5;
                *v491 = v4;
                *&v491[8] = v5;
                *&v491[12] = v439;
                WGSL::AST::Builder::construct<WGSL::AST::SwitchStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WTF::Vector<WGSL::AST::SwitchClause,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WGSL::AST::SwitchClause,void>(v438, v491, &v482, &v504, &v502, &v499);
              }

              result = WTF::StringImpl::createWithoutCopyingNonEmpty();
              v443 = v5 | ((*(a2 + 96) - v5) << 32);
              *a1 = *v491;
              a1[1] = v4;
              a1[2] = v443;
              *(a1 + 24) = 1;
LABEL_954:
              v444 = v502;
              if (HIDWORD(v503))
              {
                v445 = 24 * HIDWORD(v503);
                v446 = v502;
                do
                {
                  result = *v446;
                  if (*v446)
                  {
                    *v446 = 0;
                    *(v446 + 2) = 0;
                    result = WTF::fastFree(result, a2);
                  }

                  v446 = (v446 + 24);
                  v445 -= 24;
                }

                while (v445);
              }

              if (v444)
              {
                result = WTF::fastFree(v444, a2);
              }

              if (v506 == 255)
              {
LABEL_962:
                if (!v484 || v484 == 255)
                {
                  goto LABEL_4;
                }

                goto LABEL_199;
              }

              result = v504;
              if (!v506)
              {
LABEL_651:
                if (result)
                {
                  result = WTF::fastFree(result, a2);
                }

                goto LABEL_962;
              }

LABEL_369:
              if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, a2);
              }

              goto LABEL_962;
            }

            continue;
          }
        }
      }

    case 0x23:
      while (1)
      {
        v90 = *(a2 + 36);
        v91 = (*(a2 + 40) + 1);
        *(a2 + 40) = v91;
        if (v90 <= v91)
        {
          __break(0xC471u);
          JUMPOUT(0x2257812A8);
        }

        v92 = *(a2 + 24) + 32 * v91;
        v88 = *v92;
        *(a2 + 56) = *v92;
        *(a2 + 60) = *(v92 + 4);
        v93 = *v92;
        if (*v92 > 8u)
        {
          goto LABEL_168;
        }

        if (((1 << v93) & 0x38) != 0)
        {
          *(a2 + 80) = *(v92 + 24);
        }

        else if (((1 << v93) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v92 + 24);
        }

        else
        {
          if (v93 != 8)
          {
            goto LABEL_168;
          }

          *(a2 + 80) = 0;
          v94 = *(v92 + 24);
          if (v94)
          {
            atomic_fetch_add_explicit(v94, 2u, memory_order_relaxed);
            v95 = *(a2 + 80);
            *(a2 + 80) = v94;
            if (v95)
            {
              if (atomic_fetch_add_explicit(v95, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v95, a2);
              }
            }
          }
        }

        v88 = *(a2 + 56);
LABEL_168:
        v89 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v89;
        if (v88 != 82)
        {
          result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(v491, a2);
          v52 = v492;
          if (v492)
          {
            goto LABEL_267;
          }

          result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseCompoundStatement(&v482, a2);
          if (!v484)
          {
            v298 = *(a2 + 8);
            v299 = *(a2 + 96) - v5;
            v504 = v4;
            *&v505 = __PAIR64__(v299, v5);
            WGSL::AST::Builder::construct<WGSL::AST::WhileStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::CompoundStatement>,void>(v298, &v504, v491, &v482);
          }

          if (v484 != 1)
          {
            goto LABEL_971;
          }

          result = v482;
          if (v482)
          {
            atomic_fetch_add_explicit(v482, 2u, memory_order_relaxed);
            v139 = v483;
LABEL_270:
            *(a1 + 1) = v139;
            *a1 = result;
            *(a1 + 24) = 1;
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
            {
              goto LABEL_4;
            }

            goto LABEL_952;
          }

          v447 = v483;
          goto LABEL_968;
        }
      }

    case 0x24:
    case 0x43:
    case 0x4C:
      result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseLHSExpression(v491, a2);
      if (v492)
      {
        if (v492 != 1)
        {
          goto LABEL_971;
        }

        v9 = *v491;
        if (*v491)
        {
          atomic_fetch_add_explicit(*v491, 2u, memory_order_relaxed);
        }

        v483 = *&v491[8];
        v482 = v9;
        v484 = 1;
      }

      else
      {
        result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseVariableUpdatingStatement(&v482, a2, v491);
      }

      if (v492)
      {
        if (v492 != 255)
        {
          result = *v491;
          *v491 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, a2);
            }
          }
        }
      }

      if (v484)
      {
        if (v484 != 1)
        {
          goto LABEL_971;
        }

        v18 = v482;
        if (v482)
        {
          atomic_fetch_add_explicit(v482, 2u, memory_order_relaxed);
        }

        *(a1 + 1) = v483;
        *a1 = v18;
        *(a1 + 24) = 1;
        goto LABEL_305;
      }

      if (*(a2 + 56) != 73)
      {
        *v491 = *(a2 + 56);
        LOBYTE(v493) = 1;
        result = WGSL::toString();
        if (v493 != 1)
        {
          goto LABEL_971;
        }

        WGSL::toString();
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v474, 13, &v473, &v504, ", but got a ");
        v156 = v473;
        v473 = 0;
        if (v156 && atomic_fetch_add_explicit(v156, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v156, v155);
        }

        v157 = v474;
        v474 = 0;
        if (v157 && atomic_fetch_add_explicit(v157, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v157, v155);
        }

        v158 = v5 | ((*(a2 + 96) - v5) << 32);
        *a1 = v504;
        a1[1] = v4;
        a1[2] = v158;
        *(a1 + 24) = 1;
        result = std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v491, v155);
LABEL_305:
        v159 = v484;
        if (!v484)
        {
          goto LABEL_4;
        }

LABEL_306:
        if (v159 == 255)
        {
          goto LABEL_4;
        }

        result = v482;
        v482 = 0;
        if (!result)
        {
          goto LABEL_4;
        }

        goto LABEL_951;
      }

      *v491 = 73;
      *&v491[4] = *(a2 + 60);
      LOBYTE(v493) = 0;
      while (1)
      {
        v21 = *(a2 + 36);
        v22 = (*(a2 + 40) + 1);
        *(a2 + 40) = v22;
        if (v21 <= v22)
        {
          __break(0xC471u);
          JUMPOUT(0x2257812C0);
        }

        v23 = *(a2 + 24) + 32 * v22;
        v19 = *v23;
        *(a2 + 56) = *v23;
        *(a2 + 60) = *(v23 + 4);
        v24 = *v23;
        if (*v23 > 8u)
        {
          goto LABEL_46;
        }

        if (((1 << v24) & 0x38) != 0)
        {
          *(a2 + 80) = *(v23 + 24);
        }

        else if (((1 << v24) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v23 + 24);
        }

        else
        {
          if (v24 != 8)
          {
            goto LABEL_46;
          }

          *(a2 + 80) = 0;
          v25 = *(v23 + 24);
          if (v25)
          {
            atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
            v26 = *(a2 + 80);
            *(a2 + 80) = v25;
            if (v26)
            {
              if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v26, a2);
              }
            }
          }
        }

        v19 = *(a2 + 56);
LABEL_46:
        v20 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v20;
        if (v19 != 82)
        {
          result = std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v491, a2);
          *a1 = v482;
          *(a1 + 24) = 0;
          goto LABEL_305;
        }
      }

    case 0x2B:
      result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseCompoundStatement(v491, a2);
      if (!v492)
      {
        *a1 = *v491;
        *(a1 + 24) = 0;
        goto LABEL_4;
      }

      if (v492 != 1)
      {
        goto LABEL_971;
      }

      result = *v491;
      if (*v491)
      {
        goto LABEL_120;
      }

      goto LABEL_912;
    case 0x4F:
      goto LABEL_182;
    default:
      goto LABEL_2;
  }

  while (1)
  {
LABEL_182:
    v98 = *(a2 + 36);
    v99 = (*(a2 + 40) + 1);
    *(a2 + 40) = v99;
    if (v98 <= v99)
    {
      __break(0xC471u);
      JUMPOUT(0x2257812B0);
    }

    v100 = *(a2 + 24) + 32 * v99;
    v96 = *v100;
    *(a2 + 56) = *v100;
    *(a2 + 60) = *(v100 + 4);
    v101 = *v100;
    if (*v100 > 8u)
    {
      goto LABEL_181;
    }

    if (((1 << v101) & 0x38) != 0)
    {
      *(a2 + 80) = *(v100 + 24);
    }

    else if (((1 << v101) & 0xC4) != 0)
    {
      *(a2 + 80) = *(v100 + 24);
    }

    else
    {
      if (v101 != 8)
      {
        goto LABEL_181;
      }

      *(a2 + 80) = 0;
      v102 = *(v100 + 24);
      if (v102)
      {
        atomic_fetch_add_explicit(v102, 2u, memory_order_relaxed);
        v103 = *(a2 + 80);
        *(a2 + 80) = v102;
        if (v103)
        {
          if (atomic_fetch_add_explicit(v103, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v103, a2);
          }
        }
      }
    }

    v96 = *(a2 + 56);
LABEL_181:
    v97 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v97;
    if (v96 != 82)
    {
      if (v96 == 49)
      {
        *v491 = 49;
        *&v491[4] = *(a2 + 60);
        LOBYTE(v493) = 0;
        while (1)
        {
          v142 = *(a2 + 36);
          v143 = (*(a2 + 40) + 1);
          *(a2 + 40) = v143;
          if (v142 <= v143)
          {
            __break(0xC471u);
            JUMPOUT(0x2257812F8);
          }

          v144 = *(a2 + 24) + 32 * v143;
          v140 = *v144;
          *(a2 + 56) = *v144;
          *(a2 + 60) = *(v144 + 4);
          v145 = *v144;
          if (*v144 > 8u)
          {
            goto LABEL_276;
          }

          if (((1 << v145) & 0x38) != 0)
          {
            *(a2 + 80) = *(v144 + 24);
          }

          else if (((1 << v145) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v144 + 24);
          }

          else
          {
            if (v145 != 8)
            {
              goto LABEL_276;
            }

            *(a2 + 80) = 0;
            v146 = *(v144 + 24);
            if (v146)
            {
              atomic_fetch_add_explicit(v146, 2u, memory_order_relaxed);
              v147 = *(a2 + 80);
              *(a2 + 80) = v146;
              if (v147)
              {
                if (atomic_fetch_add_explicit(v147, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v147, a2);
                }
              }
            }
          }

          v140 = *(a2 + 56);
LABEL_276:
          v141 = *(a2 + 68);
          *(a2 + 88) = *(a2 + 60);
          *(a2 + 96) = v141;
          if (v140 != 82)
          {
            std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v491, a2);
            result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v482, a2);
            if (v484)
            {
              if (v484 != 1)
              {
                goto LABEL_971;
              }

              v178 = v482;
              if (v482)
              {
                atomic_fetch_add_explicit(v482, 2u, memory_order_relaxed);
              }

              *(a1 + 1) = v483;
              *a1 = v178;
              *(a1 + 24) = 1;
            }

            else
            {
              WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v491, a2, 73);
              if (!v493)
              {
                std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v491, v285);
                v388 = *(a2 + 8);
                v389 = *(a2 + 96) - v5;
                *v491 = v4;
                *&v491[8] = v5;
                *&v491[12] = v389;
                WGSL::AST::Builder::construct<WGSL::AST::PhonyAssignmentStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,void>(v388, v491, &v482);
              }

              result = WGSL::toString();
              if (v493 != 1)
              {
                goto LABEL_971;
              }

              WGSL::toString();
              WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v464, 13, &v463, &v504, ", but got a ");
              v287 = v463;
              v463 = 0;
              if (v287 && atomic_fetch_add_explicit(v287, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v287, v286);
              }

              v288 = v464;
              v464 = 0;
              if (v288 && atomic_fetch_add_explicit(v288, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v288, v286);
              }

              v289 = v5 | ((*(a2 + 96) - v5) << 32);
              *a1 = v504;
              a1[1] = v4;
              a1[2] = v289;
              *(a1 + 24) = 1;
              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v491, v286);
            }

            result = std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v482, v177);
            goto LABEL_4;
          }
        }
      }

      WGSL::toString();
      WGSL::toString();
      if (v466)
      {
        v170 = *(v466 + 1);
      }

      else
      {
        v170 = 0;
      }

      if (v465)
      {
        v302 = *(v465 + 1);
        if (v302 < 0)
        {
          goto LABEL_999;
        }
      }

      else
      {
        v302 = 0;
      }

      v303 = __OFADD__(v302, 12);
      v304 = v302 + 12;
      v305 = v303;
      if ((v170 & 0x80000000) == 0 && (v305 & 1) == 0)
      {
        v303 = __OFADD__(v170, v304);
        v306 = v170 + v304;
        if (!v303)
        {
          v307 = (v306 + 11);
          if (!__OFADD__(v306, 11))
          {
            if (v466)
            {
              v308 = *(v466 + 4);
              v309 = (v308 >> 2) & 1;
              if (!v465 || (v308 & 4) == 0)
              {
                goto LABEL_817;
              }

LABEL_638:
              v309 = (*(v465 + 16) >> 2) & 1;
            }

            else
            {
              if (v465)
              {
                goto LABEL_638;
              }

              v309 = 1;
            }

LABEL_817:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v307, v309, "Expected a ", 0xBuLL, v466, ", but got a ", 0xCuLL, &v482, v465);
            v394 = v482;
            if (v482)
            {
              v395 = v465;
              v465 = 0;
              if (v395 && atomic_fetch_add_explicit(v395, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v395, v393);
              }

              result = v466;
              v466 = 0;
              if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v393);
              }

              v167 = v5 | ((*(a2 + 96) - v5) << 32);
              *a1 = v394;
              goto LABEL_825;
            }
          }
        }
      }

LABEL_999:
      __break(0xC471u);
      JUMPOUT(0x225781358);
    }
  }
}