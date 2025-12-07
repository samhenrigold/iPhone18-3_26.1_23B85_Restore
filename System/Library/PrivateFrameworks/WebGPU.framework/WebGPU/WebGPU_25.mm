WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseVariableUpdatingStatement(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  v8 = *(a2 + 56);
  if (v8 == 71)
  {
    v9 = 257;
    goto LABEL_5;
  }

  if (v8 == 60)
  {
    v9 = 256;
LABEL_5:
    LOWORD(v46) = v9;
    while (1)
    {
      v12 = *(a2 + 36);
      v13 = (*(a2 + 40) + 1);
      *(a2 + 40) = v13;
      if (v12 <= v13)
      {
        goto LABEL_66;
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
            goto LABEL_8;
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

LABEL_8:
      v11 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v11;
      if (v10 != 82)
      {
        v18 = *(a2 + 8);
        v47 = v6;
        LODWORD(v48) = v7;
        DWORD1(v48) = v11 - v7;
        WGSL::AST::Builder::construct<WGSL::AST::DecrementIncrementStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::DecrementIncrementStatement::Operation &,void>(v18, &v47, a3, &v46);
      }
    }
  }

  v19 = (v8 - 38);
  if (v19 > 0x2B)
  {
    goto LABEL_60;
  }

  if (((1 << (v8 - 38)) & 0x8A412910001) != 0)
  {
    v50 = WGSL::toBinaryOperation(v8) | 0x100;
    while (1)
    {
      v23 = *(a2 + 36);
      v24 = (*(a2 + 40) + 1);
      *(a2 + 40) = v24;
      if (v23 <= v24)
      {
        __break(0xC471u);
        JUMPOUT(0x225781A64);
      }

      v25 = *(a2 + 24) + 32 * v24;
      v21 = *v25;
      *(a2 + 56) = *v25;
      *(a2 + 60) = *(v25 + 4);
      v26 = *v25;
      if (*v25 > 8u)
      {
        goto LABEL_26;
      }

      if (((1 << v26) & 0x38) != 0)
      {
        *(a2 + 80) = *(v25 + 24);
      }

      else if (((1 << v26) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v25 + 24);
      }

      else
      {
        if (v26 != 8)
        {
          goto LABEL_26;
        }

        *(a2 + 80) = 0;
        v27 = *(v25 + 24);
        if (v27)
        {
          atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
          v28 = *(a2 + 80);
          *(a2 + 80) = v27;
          if (v28)
          {
            if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, v20);
            }
          }
        }
      }

      v21 = *(a2 + 56);
LABEL_26:
      v22 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v22;
      if (v21 != 82)
      {
        v29 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v47, a2);
        v31 = v49;
        if (!v49)
        {
          v33 = *(a2 + 8);
          v34 = *(a2 + 96) - v7;
          *&v46 = v6;
          *(&v46 + 1) = __PAIR64__(v34, v7);
          WGSL::AST::Builder::construct<WGSL::AST::CompoundAssignmentStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::BinaryOperation &,void>(v33, &v46, a3, &v47, &v50);
        }

        goto LABEL_38;
      }
    }
  }

  if (v19 != 11)
  {
LABEL_60:
    result = WTF::StringImpl::createWithoutCopyingNonEmpty();
    v45 = v7 | ((*(a2 + 96) - v7) << 32);
    *(a1 + 8) = v6;
    *(a1 + 16) = v45;
LABEL_61:
    *(a1 + 24) = 1;
    return result;
  }

  do
  {
    v37 = *(a2 + 36);
    v38 = (*(a2 + 40) + 1);
    *(a2 + 40) = v38;
    if (v37 <= v38)
    {
LABEL_66:
      __break(0xC471u);
      JUMPOUT(0x225781A5CLL);
    }

    v39 = *(a2 + 24) + 32 * v38;
    v35 = *v39;
    *(a2 + 56) = *v39;
    *(a2 + 60) = *(v39 + 4);
    v40 = *v39;
    if (*v39 <= 8u)
    {
      if (((1 << v40) & 0x38) != 0)
      {
        *(a2 + 80) = *(v39 + 24);
LABEL_46:
        v35 = *(a2 + 56);
        goto LABEL_47;
      }

      if (((1 << v40) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v39 + 24);
        goto LABEL_46;
      }

      if (v40 == 8)
      {
        *(a2 + 80) = 0;
        v41 = *(v39 + 24);
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

        goto LABEL_46;
      }
    }

LABEL_47:
    v36 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v36;
  }

  while (v35 == 82);
  v29 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v47, a2);
  v31 = v49;
  if (!v49)
  {
    v43 = *(a2 + 8);
    v44 = *(a2 + 96) - v7;
    *&v46 = v6;
    *(&v46 + 1) = __PAIR64__(v44, v7);
    WGSL::AST::Builder::construct<WGSL::AST::AssignmentStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::Expression>,void>(v43, &v46, a3, &v47);
  }

LABEL_38:
  if (v31 != 1)
  {
    mpark::throw_bad_variant_access(v29);
  }

  result = v47;
  if (!v47)
  {
    *(a1 + 8) = v48;
    *a1 = 0;
    goto LABEL_61;
  }

  atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
  *(a1 + 8) = v48;
  *a1 = result;
  *(a1 + 24) = 1;
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v30);
  }

  return result;
}

mpark *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseVariableUpdatingStatement(uint64_t a1, uint64_t a2)
{
  result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseLHSExpression(&v8, a2);
  if (!v10)
  {
    result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseVariableUpdatingStatement(a1, a2, &v8);
    v7 = v10;
    if (!v10)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v10 != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(a1 + 8) = v9;
  *a1 = v6;
  *(a1 + 24) = 1;
  v7 = v10;
  if (v10)
  {
LABEL_8:
    if (v7 != 255)
    {
      result = v8;
      v8 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIfStatementWithAttributes(uint64_t a1, uint64_t a2, uint64_t *a3, WTF::StringImpl *a4, unsigned int a5)
{
  if (*(a2 + 56) != 25)
  {
    WGSL::toString();
    WGSL::toString();
    if (v64)
    {
      v19 = *(v64 + 1);
      if (v63)
      {
LABEL_18:
        v20 = *(v63 + 4);
        if (v20 < 0)
        {
          goto LABEL_108;
        }

        v18 = __OFADD__(v20, 12);
        v21 = v20 + 12;
        v22 = v18;
        if (v19 < 0)
        {
          goto LABEL_108;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v19 = 0;
      if (v63)
      {
        goto LABEL_18;
      }
    }

    v21 = 12;
    v22 = v18;
    if (v19 < 0)
    {
      goto LABEL_108;
    }

LABEL_39:
    if (v22)
    {
      goto LABEL_108;
    }

    v18 = __OFADD__(v19, v21);
    v29 = v19 + v21;
    if (v18)
    {
      goto LABEL_108;
    }

    v30 = (v29 + 11);
    if (__OFADD__(v29, 11))
    {
      goto LABEL_108;
    }

    if (v64)
    {
      v31 = *(v64 + 4);
      v32 = (v31 >> 2) & 1;
      if (!v63 || (v31 & 4) == 0)
      {
LABEL_64:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v30, v32, "Expected a ", 0xBuLL, v64, ", but got a ", 0xCuLL, &v60, v63);
        v42 = v60;
        if (v60)
        {
          v43 = v63;
          v63 = 0;
          if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v43, v41);
          }

          result = v64;
          v64 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v41);
          }

          v45 = a5 | ((*(a2 + 96) - a5) << 32);
          *a1 = v42;
          *(a1 + 8) = a4;
          *(a1 + 16) = v45;
          *(a1 + 24) = 1;
          return result;
        }

LABEL_108:
        __break(0xC471u);
        JUMPOUT(0x2257826B0);
      }
    }

    else if (!v63)
    {
      v32 = 1;
      goto LABEL_64;
    }

    v32 = (*(v63 + 16) >> 2) & 1;
    goto LABEL_64;
  }

  do
  {
    v12 = *(a2 + 36);
    v13 = (*(a2 + 40) + 1);
    *(a2 + 40) = v13;
    if (v12 <= v13)
    {
      __break(0xC471u);
      goto LABEL_110;
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
  v23 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v60, a2);
  v25 = v62;
  if (v62)
  {
    if (v62 == 1)
    {
      v26 = v60;
      if (v60)
      {
        atomic_fetch_add_explicit(v60, 2u, memory_order_relaxed);
      }

      *(a1 + 8) = v61;
      *a1 = v26;
      *(a1 + 24) = 1;
      goto LABEL_100;
    }

LABEL_106:
    mpark::throw_bad_variant_access(v23);
  }

  v23 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseCompoundStatement(&v57, a2);
  v27 = v59;
  if (v59)
  {
    if (v59 == 1)
    {
      v28 = v57;
      if (v57)
      {
        atomic_fetch_add_explicit(v57, 2u, memory_order_relaxed);
      }

      *(a1 + 8) = v58;
      *a1 = v28;
      *(a1 + 24) = 1;
      goto LABEL_95;
    }

    goto LABEL_106;
  }

  v56 = 0;
  if (*(a2 + 56) != 20)
  {
LABEL_92:
    v50 = *(a2 + 8);
    v51 = *(a2 + 96) - a5;
    v53 = a4;
    *&v54 = __PAIR64__(v51, a5);
    WGSL::AST::Builder::construct<WGSL::AST::IfStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::CompoundStatement>,WGSL::AST::Statement *&,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,void>(v50, &v53, &v60, &v57, &v56, a3);
  }

  while (2)
  {
    v33 = *(a2 + 36);
    v34 = (*(a2 + 40) + 1);
    *(a2 + 40) = v34;
    if (v33 <= v34)
    {
      __break(0xC471u);
LABEL_110:
      JUMPOUT(0x2257826A8);
    }

    v35 = *(a2 + 24) + 32 * v34;
    v36 = *v35;
    *(a2 + 56) = *v35;
    *(a2 + 60) = *(v35 + 4);
    v37 = *v35;
    if (*v35 <= 8u)
    {
      if (((1 << v37) & 0x38) != 0)
      {
        *(a2 + 80) = *(v35 + 24);
        goto LABEL_55;
      }

      if (((1 << v37) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v35 + 24);
        goto LABEL_55;
      }

      if (v37 == 8)
      {
        *(a2 + 80) = 0;
        v39 = *(v35 + 24);
        if (v39)
        {
          atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
          v40 = *(a2 + 80);
          *(a2 + 80) = v39;
          if (v40)
          {
            if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v40, v24);
            }
          }
        }

LABEL_55:
        v36 = *(a2 + 56);
      }
    }

    v38 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v38;
    if (v36 == 82)
    {
      continue;
    }

    break;
  }

  if (v36 != 25)
  {
    v23 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseCompoundStatement(&v53, a2);
    if (v55)
    {
      if (v55 == 1)
      {
        result = v53;
        if (!v53)
        {
          *a1 = 0;
          *(a1 + 8) = v54;
          *(a1 + 24) = 1;
          if (!v27)
          {
            goto LABEL_98;
          }

          goto LABEL_94;
        }

        atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
        *a1 = result;
        *(a1 + 8) = v54;
        *(a1 + 24) = 1;
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v24);
          if (!v27)
          {
            goto LABEL_98;
          }

          goto LABEL_94;
        }

        if (v27)
        {
          goto LABEL_94;
        }

        goto LABEL_98;
      }

      goto LABEL_106;
    }

    v56 = v53;
    goto LABEL_92;
  }

  v46 = *(a2 + 44);
  *(a2 + 44) = v46 + 1;
  if ((v46 + 1) < 0x81)
  {
    v52[0] = 0;
    v52[1] = 0;
    WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIfStatementWithAttributes(&v53, a2, v52, a4, a5);
    v23 = v52[0];
    if (v52[0])
    {
      v23 = WTF::fastFree(v52[0], v48);
    }

    if (v55)
    {
      if (v55 == 1)
      {
        v49 = v53;
        if (v53)
        {
          atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
        }

        *(a1 + 8) = v54;
        *a1 = v49;
        *(a1 + 24) = 1;
        result = std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v53, v48);
        *(a2 + 44) = v46;
        if (v27)
        {
          goto LABEL_94;
        }

        goto LABEL_98;
      }

      goto LABEL_106;
    }

    v56 = v53;
    std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v53, v48);
    *(a2 + 44) = v46;
    goto LABEL_92;
  }

  result = WTF::StringImpl::createWithoutCopyingNonEmpty();
  v47 = a5 | ((*(a2 + 96) - a5) << 32);
  *a1 = v53;
  *(a1 + 8) = a4;
  *(a1 + 16) = v47;
  *(a1 + 24) = 1;
  *(a2 + 44) = v46;
  if (!v27)
  {
    goto LABEL_98;
  }

LABEL_94:
  if (v27 != 255)
  {
LABEL_95:
    result = v57;
    if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v24);
    }
  }

LABEL_98:
  if (v25 && v25 != 255)
  {
LABEL_100:
    result = v60;
    if (v60)
    {
      if (atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v24);
      }
    }
  }

  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseLHSExpression(uint64_t a1, uint64_t a2)
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
    goto LABEL_3;
  }

  v9 = *(a2 + 56);
  switch(v9)
  {
    case 76:
      v10 = 2;
      goto LABEL_8;
    case 36:
      v10 = 0;
LABEL_8:
      LOBYTE(v52) = v10;
      while (1)
      {
        v13 = *(a2 + 36);
        v14 = (*(a2 + 40) + 1);
        *(a2 + 40) = v14;
        if (v13 <= v14)
        {
          __break(0xC471u);
          goto LABEL_107;
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
          }

          else if (((1 << v16) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v15 + 24);
          }

          else
          {
            if (v16 != 8)
            {
              goto LABEL_11;
            }

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
          }

          v11 = *(a2 + 56);
        }

LABEL_11:
        v12 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v12;
        if (v11 != 82)
        {
          result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseLHSExpression(&v53, a2);
          if (!v55)
          {
            v29 = *(a2 + 8);
            v30 = *(a2 + 96) - v5;
            v49 = v4;
            *&v50 = __PAIR64__(v30, v5);
            WGSL::AST::Builder::construct<WGSL::AST::UnaryExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::UnaryOperation &,void>(v29, &v49, &v53, &v52);
          }

          if (v55 == 1)
          {
            v20 = v53;
            if (v53)
            {
              atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
            }

            *(a1 + 8) = v54;
            *a1 = v20;
            *(a1 + 24) = 1;
            if (!v55)
            {
              goto LABEL_3;
            }

            if (v55 == 255)
            {
              goto LABEL_3;
            }

            result = v53;
            v53 = 0;
            if (!result)
            {
              goto LABEL_3;
            }

LABEL_101:
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v19);
            }

            goto LABEL_3;
          }

LABEL_103:
          mpark::throw_bad_variant_access(result);
        }
      }

    case 8:
      result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v53, a2);
      v31 = v56;
      if (!v56)
      {
        v36 = *(a2 + 8);
        v37 = *(a2 + 96) - v5;
        *&v52 = v4;
        *(&v52 + 1) = __PAIR64__(v37, v5);
        WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>(v36, &v52, &v53);
      }

      if (v56 != 1)
      {
        goto LABEL_103;
      }

      v32 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
      }

      v50 = v54;
      v49 = v32;
      v51 = 1;
      if (v56 == 255)
      {
        goto LABEL_93;
      }

      if (v56)
      {
        goto LABEL_90;
      }

      result = v55;
      v53 = off_2838D37C0;
      v55 = 0;
      if (!result)
      {
        goto LABEL_93;
      }

LABEL_91:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v19);
      }

      goto LABEL_93;
  }

  if (v9 != 67)
  {
    result = WTF::StringImpl::createWithoutCopyingNonEmpty();
    v33 = v5 | ((*(a2 + 96) - v5) << 32);
    *&v50 = v4;
    *(&v50 + 1) = v33;
    v51 = 1;
    goto LABEL_94;
  }

  do
  {
    v23 = *(a2 + 36);
    v24 = (*(a2 + 40) + 1);
    *(a2 + 40) = v24;
    if (v23 <= v24)
    {
      __break(0xC471u);
      JUMPOUT(0x2257834E0);
    }

    v25 = *(a2 + 24) + 32 * v24;
    v21 = *v25;
    *(a2 + 56) = *v25;
    *(a2 + 60) = *(v25 + 4);
    v26 = *v25;
    if (*v25 <= 8u)
    {
      if (((1 << v26) & 0x38) != 0)
      {
        *(a2 + 80) = *(v25 + 24);
LABEL_32:
        v21 = *(a2 + 56);
        goto LABEL_33;
      }

      if (((1 << v26) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v25 + 24);
        goto LABEL_32;
      }

      if (v26 == 8)
      {
        *(a2 + 80) = 0;
        v27 = *(v25 + 24);
        if (v27)
        {
          atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
          v28 = *(a2 + 80);
          *(a2 + 80) = v27;
          if (v28)
          {
            if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, a2);
            }
          }
        }

        goto LABEL_32;
      }
    }

LABEL_33:
    v22 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v22;
  }

  while (v21 == 82);
  result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseLHSExpression(&v53, a2);
  if (v55)
  {
    if (v55 != 1)
    {
      goto LABEL_103;
    }

    v34 = v53;
    if (v53)
    {
      atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
    }

    v50 = v54;
    v49 = v34;
    v31 = 1;
    v51 = 1;
    v35 = v55;
    if (!v55)
    {
      goto LABEL_93;
    }

LABEL_89:
    if (v35 == 255)
    {
      goto LABEL_93;
    }

LABEL_90:
    result = v53;
    v53 = 0;
    if (!result)
    {
      goto LABEL_93;
    }

    goto LABEL_91;
  }

  if (*(a2 + 56) != 68)
  {
    WGSL::toString();
    WGSL::toString();
    WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v58, 13, &v57, &v52, ", but got a ");
    v45 = v57;
    v57 = 0;
    if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v45, v19);
    }

    result = v58;
    v58 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v19);
    }

    v46 = v5 | ((*(a2 + 96) - v5) << 32);
    v49 = v52;
    *&v50 = v4;
    *(&v50 + 1) = v46;
    v31 = 1;
    v51 = 1;
    v35 = v55;
    if (!v55)
    {
      goto LABEL_93;
    }

    goto LABEL_89;
  }

  while (2)
  {
    v40 = *(a2 + 36);
    v41 = (*(a2 + 40) + 1);
    *(a2 + 40) = v41;
    if (v40 <= v41)
    {
      __break(0xC471u);
LABEL_107:
      JUMPOUT(0x2257834D8);
    }

    v42 = *(a2 + 24) + 32 * v41;
    v38 = *v42;
    *(a2 + 56) = *v42;
    *(a2 + 60) = *(v42 + 4);
    v43 = *v42;
    if (*v42 <= 8u)
    {
      if (((1 << v43) & 0x38) != 0)
      {
        *(a2 + 80) = *(v42 + 24);
        goto LABEL_68;
      }

      if (((1 << v43) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v42 + 24);
        goto LABEL_68;
      }

      if (v43 == 8)
      {
        *(a2 + 80) = 0;
        v44 = *(v42 + 24);
        if (v44)
        {
          atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
          result = *(a2 + 80);
          *(a2 + 80) = v44;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v19);
            }
          }
        }

LABEL_68:
        v38 = *(a2 + 56);
      }
    }

    v39 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v39;
    if (v38 == 82)
    {
      continue;
    }

    break;
  }

  v31 = 0;
  v49 = v53;
  v51 = 0;
  v35 = v55;
  if (v55)
  {
    goto LABEL_89;
  }

LABEL_93:
  if (!v31)
  {
    result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parsePostfixExpression(a1, a2, v49, v4, v5);
    v48 = v51;
    if (!v51)
    {
      goto LABEL_3;
    }

LABEL_99:
    if (v48 == 255)
    {
      goto LABEL_3;
    }

    result = v49;
    v49 = 0;
    if (!result)
    {
      goto LABEL_3;
    }

    goto LABEL_101;
  }

LABEL_94:
  v47 = v49;
  if (v49)
  {
    atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
  }

  *(a1 + 8) = v50;
  *a1 = v47;
  *(a1 + 24) = 1;
  v48 = v51;
  if (v51)
  {
    goto LABEL_99;
  }

LABEL_3:
  *(a2 + 44) = v6;
  return result;
}

void WGSL::AST::LoopStatement::~LoopStatement(WGSL::AST::LoopStatement *this, void *a2)
{
  if (*(this + 96) == 1)
  {
    v3 = *(this + 9);
    if (v3)
    {
      *(this + 9) = 0;
      *(this + 20) = 0;
      WTF::fastFree(v3, a2);
    }

    v4 = *(this + 7);
    if (v4)
    {
      *(this + 7) = 0;
      *(this + 16) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 5) = 0;
    *(this + 12) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 3) = 0;
    *(this + 8) = 0;
    WTF::fastFree(v6, a2);
  }
}

{
  if (*(this + 96) == 1)
  {
    v3 = *(this + 9);
    if (v3)
    {
      *(this + 9) = 0;
      *(this + 20) = 0;
      WTF::fastFree(v3, a2);
    }

    v4 = *(this + 7);
    if (v4)
    {
      *(this + 7) = 0;
      *(this + 16) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 5) = 0;
    *(this + 12) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 3) = 0;
    *(this + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  JUMPOUT(0x22AA68560);
}

unint64_t WTF::Vector<WGSL::AST::SwitchClause,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(WTF *a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + 24 * *(a1 + 3) <= a3)
  {
    v11 = *(a1 + 2);
    if (v11 + (v11 >> 1) <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11 + (v11 >> 1);
    }

    if (v12 <= a2)
    {
      v12 = a2;
    }

    if (v12 <= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    WTF::Vector<WGSL::AST::SwitchClause,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    return a3;
  }

  else
  {
    v5 = a3 - v4;
    v6 = *(a1 + 2);
    if (v6 + (v6 >> 1) <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 + (v6 >> 1);
    }

    if (v7 <= a2)
    {
      v7 = a2;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<WGSL::AST::SwitchClause,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
    return *a1 + v5;
  }
}

WTF *WTF::Vector<WGSL::AST::SwitchClause,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = *(result + 3);
      v5 = 24 * a2;
      result = WTF::fastMalloc((24 * a2));
      *(v2 + 2) = v5 / 0x18;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        v8 = 24 * v4;
        v9 = v3 + 8;
        do
        {
          *v7 = 0;
          *(v7 + 1) = 0;
          v10 = *(v9 - 1);
          *(v9 - 1) = 0;
          *v7 = v10;
          LODWORD(v10) = *v9;
          *v9 = 0;
          *(v7 + 2) = v10;
          LODWORD(v10) = *(v9 + 1);
          *(v9 + 1) = 0;
          *(v7 + 3) = v10;
          *(v7 + 2) = *(v9 + 1);
          result = *(v9 - 1);
          if (result)
          {
            *(v9 - 1) = 0;
            *v9 = 0;
            result = WTF::fastFree(result, v6);
          }

          v7 = (v7 + 24);
          v9 += 24;
          v8 -= 24;
        }

        while (v8);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          *(v2 + 2) = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

void WGSL::AST::SwitchStatement::~SwitchStatement(WGSL::AST::SwitchStatement *this, void *a2)
{
  v3 = *(this + 9);
  if (v3)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 17);
  v5 = *(this + 7);
  if (v4)
  {
    v6 = 24 * v4;
    do
    {
      v7 = *v5;
      if (*v5)
      {
        *v5 = 0;
        *(v5 + 2) = 0;
        WTF::fastFree(v7, a2);
      }

      v5 = (v5 + 24);
      v6 -= 24;
    }

    while (v6);
    v5 = *(this + 7);
  }

  if (v5)
  {
    *(this + 7) = 0;
    *(this + 16) = 0;
    WTF::fastFree(v5, a2);
  }

  v8 = *(this + 5);
  if (v8)
  {
    *(this + 5) = 0;
    *(this + 12) = 0;
    WTF::fastFree(v8, a2);
  }
}

{
  v3 = *(this + 9);
  if (v3)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 17);
  v5 = *(this + 7);
  if (v4)
  {
    v6 = 24 * v4;
    do
    {
      v7 = *v5;
      if (*v5)
      {
        *v5 = 0;
        *(v5 + 2) = 0;
        WTF::fastFree(v7, a2);
      }

      v5 = (v5 + 24);
      v6 -= 24;
    }

    while (v6);
    v5 = *(this + 7);
  }

  if (v5)
  {
    *(this + 7) = 0;
    *(this + 16) = 0;
    WTF::fastFree(v5, a2);
  }

  v8 = *(this + 5);
  if (v8)
  {
    *(this + 5) = 0;
    *(this + 12) = 0;
    WTF::fastFree(v8, a2);
  }

  JUMPOUT(0x22AA68560);
}

void WGSL::AST::Function::~Function(WGSL::AST::Function *this, void *a2)
{
  v3 = *(this + 11);
  if (v3)
  {
    *(this + 11) = 0;
    *(this + 24) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 7) = 0;
    *(this + 16) = 0;
    WTF::fastFree(v5, a2);
  }

  *(this + 3) = off_2838D37C0;
  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }
}

{
  v3 = *(this + 11);
  if (v3)
  {
    *(this + 11) = 0;
    *(this + 24) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 7) = 0;
    *(this + 16) = 0;
    WTF::fastFree(v5, a2);
  }

  *(this + 3) = off_2838D37C0;
  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  JUMPOUT(0x22AA68560);
}

void WGSL::Parser<WGSL::Lexer<char16_t>>::parseDeclaration(uint64_t a1, unint64_t a2)
{
  v5 = *(a2 + 88);
  v6 = *(a2 + 96);
  v7 = *(a2 + 56);
  if (v7 != 10)
  {
    if (v7 == 14)
    {
      v9 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseConstAssert(v353, a2);
      if (!v354)
      {
LABEL_60:
        *a1 = *v353;
        *(a1 + 24) = 0;
        return;
      }

      if (v354 != 1)
      {
        goto LABEL_791;
      }

      v10 = *v353;
      if (*v353)
      {
        atomic_fetch_add_explicit(*v353, 2u, memory_order_relaxed);
        *a1 = v10;
        *(a1 + 8) = *&v353[8];
        goto LABEL_14;
      }

      *a1 = 0;
      *(a1 + 8) = *&v353[8];
LABEL_252:
      *(a1 + 24) = 1;
      return;
    }

    if (v7 == 13)
    {
      v346 = 0;
      *&v347 = 0;
      WGSL::Parser<WGSL::Lexer<char16_t>>::parseVariableWithAttributes(v353, a2, &v346);
      v9 = v346;
      if (v346)
      {
        v9 = WTF::fastFree(v346, v8);
      }

      if (v354)
      {
        if (v354 != 1)
        {
          goto LABEL_791;
        }

        v10 = *v353;
        if (*v353)
        {
          atomic_fetch_add_explicit(*v353, 2u, memory_order_relaxed);
          *(a1 + 8) = *&v353[8];
          *a1 = v10;
LABEL_14:
          *(a1 + 24) = 1;
          goto LABEL_38;
        }

        *(a1 + 8) = *&v353[8];
        *a1 = 0;
        goto LABEL_252;
      }

      if (*(a2 + 56) == 73)
      {
        while (1)
        {
          v24 = *(a2 + 36);
          v25 = (*(a2 + 40) + 1);
          *(a2 + 40) = v25;
          if (v24 <= v25)
          {
            __break(0xC471u);
            JUMPOUT(0x2257869C0);
          }

          v26 = *(a2 + 24) + 32 * v25;
          v22 = *v26;
          *(a2 + 56) = *v26;
          *(a2 + 60) = *(v26 + 4);
          v27 = *v26;
          if (*v26 > 8u)
          {
            goto LABEL_49;
          }

          if (((1 << v27) & 0x38) != 0)
          {
            *(a2 + 80) = *(v26 + 24);
          }

          else if (((1 << v27) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v26 + 24);
          }

          else
          {
            if (v27 != 8)
            {
              goto LABEL_49;
            }

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
                  WTF::StringImpl::destroy(v29, v8);
                }
              }
            }
          }

          v22 = *(a2 + 56);
LABEL_49:
          v23 = *(a2 + 68);
          *(a2 + 88) = *(a2 + 60);
          *(a2 + 96) = v23;
          if (v22 != 82)
          {
            goto LABEL_60;
          }
        }
      }

      WGSL::toString();
      WGSL::toString();
      if (v330)
      {
        v39 = *(v330 + 1);
        if (v329)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v39 = 0;
        if (v329)
        {
LABEL_82:
          v40 = *(v329 + 1);
          if (v40 < 0)
          {
            goto LABEL_802;
          }

LABEL_173:
          v83 = __OFADD__(v40, 12);
          v84 = v40 + 12;
          v85 = v83;
          if (v39 < 0)
          {
            goto LABEL_802;
          }

          if (v85)
          {
            goto LABEL_802;
          }

          v83 = __OFADD__(v39, v84);
          v86 = v39 + v84;
          if (v83)
          {
            goto LABEL_802;
          }

          v87 = (v86 + 11);
          if (__OFADD__(v86, 11))
          {
            goto LABEL_802;
          }

          if (v330)
          {
            v88 = *(v330 + 4);
            v89 = (v88 >> 2) & 1;
            if (!v329 || (v88 & 4) == 0)
            {
LABEL_244:
              WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v87, v89, "Expected a ", 0xBuLL, v330, ", but got a ", 0xCuLL, &v346, v329);
              v121 = v346;
              if (v346)
              {
                v122 = v329;
                v329 = 0;
                if (v122 && atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v122, v120);
                }

                v123 = v330;
                v330 = 0;
                if (v123 && atomic_fetch_add_explicit(v123, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v123, v120);
                }

                v124 = v6 | ((*(a2 + 96) - v6) << 32);
                *a1 = v121;
                *(a1 + 8) = v5;
                *(a1 + 16) = v124;
                goto LABEL_252;
              }

LABEL_802:
              __break(0xC471u);
              JUMPOUT(0x2257869F8);
            }
          }

          else if (!v329)
          {
            v89 = 1;
            goto LABEL_244;
          }

          v89 = (*(v329 + 16) >> 2) & 1;
          goto LABEL_244;
        }
      }

      v40 = 0;
      goto LABEL_173;
    }

    WGSL::Parser<WGSL::Lexer<char16_t>>::parseAttributes(&v326, a2);
    if (v328)
    {
      if (v328 == 1)
      {
        v19 = v326;
        if (v326)
        {
          atomic_fetch_add_explicit(v326, 2u, memory_order_relaxed);
        }

        *(a1 + 8) = v327;
        *a1 = v19;
        goto LABEL_34;
      }

      goto LABEL_791;
    }

    v30 = *(a2 + 56);
    if (v30 <= 30)
    {
      if (v30 != 23)
      {
        if (v30 != 28)
        {
          goto LABEL_131;
        }

        goto LABEL_109;
      }

      v63 = *(a2 + 88);
      v64 = *(a2 + 96);
      while (1)
      {
        v67 = *(a2 + 36);
        v68 = (*(a2 + 40) + 1);
        *(a2 + 40) = v68;
        if (v67 <= v68)
        {
          __break(0xC471u);
          JUMPOUT(0x2257869D8);
        }

        v69 = *(a2 + 24) + 32 * v68;
        v65 = *v69;
        *(a2 + 56) = *v69;
        *(a2 + 60) = *(v69 + 4);
        v70 = *v69;
        if (*v69 > 8u)
        {
          goto LABEL_135;
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
            goto LABEL_135;
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
                WTF::StringImpl::destroy(v72, v8);
              }
            }
          }
        }

        v65 = *(a2 + 56);
LABEL_135:
        v66 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v66;
        if (v65 != 82)
        {
          v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v346, a2);
          if (v349)
          {
            if (v349 == 1)
            {
              v74 = v346;
              if (v346)
              {
                atomic_fetch_add_explicit(v346, 2u, memory_order_relaxed);
              }

              v2 = *(&v347 + 1);
              v63 = v347;
              goto LABEL_774;
            }

            goto LABEL_791;
          }

          if (*(a2 + 56) == 67)
          {
            v74 = 1;
            while (1)
            {
              v114 = *(a2 + 36);
              v115 = (*(a2 + 40) + 1);
              *(a2 + 40) = v115;
              if (v114 <= v115)
              {
                __break(0xC471u);
                JUMPOUT(0x225786A28);
              }

              v116 = *(a2 + 24) + 32 * v115;
              v112 = *v116;
              *(a2 + 56) = *v116;
              *(a2 + 60) = *(v116 + 4);
              v117 = *v116;
              if (*v116 > 8u)
              {
                goto LABEL_232;
              }

              if (((1 << v117) & 0x38) != 0)
              {
                *(a2 + 80) = *(v116 + 24);
              }

              else if (((1 << v117) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v116 + 24);
              }

              else
              {
                if (v117 != 8)
                {
                  goto LABEL_232;
                }

                *(a2 + 80) = 0;
                v118 = *(v116 + 24);
                if (v118)
                {
                  atomic_fetch_add_explicit(v118, 2u, memory_order_relaxed);
                  v119 = *(a2 + 80);
                  *(a2 + 80) = v118;
                  if (v119)
                  {
                    if (atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v119, v8);
                    }
                  }
                }
              }

              v112 = *(a2 + 56);
LABEL_232:
              v113 = *(a2 + 68);
              *(a2 + 88) = *(a2 + 60);
              *(a2 + 96) = v113;
              if (v112 != 82)
              {
                v314 = v63;
                v316 = v64;
                v172 = 0;
                v173 = 0;
                v332 = 0;
                *&v333 = 0;
                while (1)
                {
                  if (*(a2 + 56) == 68)
                  {
                    goto LABEL_536;
                  }

                  v174 = *(a2 + 88);
                  v175 = *(a2 + 96);
                  WGSL::Parser<WGSL::Lexer<char16_t>>::parseAttributes(&v356, a2);
                  if (v358)
                  {
                    if (v358 != 1)
                    {
                      goto LABEL_791;
                    }

                    v9 = v356;
                    if (v356)
                    {
                      atomic_fetch_add_explicit(v356, 2u, memory_order_relaxed);
                    }

                    v344 = v357;
                    v343 = v9;
                    v345 = 1;
LABEL_469:
                    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      v9 = WTF::StringImpl::destroy(v9, v8);
                    }

                    goto LABEL_472;
                  }

                  v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v353, a2);
                  if (v355)
                  {
                    if (v355 != 1)
                    {
                      goto LABEL_791;
                    }

                    v176 = *v353;
                    if (*v353)
                    {
                      atomic_fetch_add_explicit(*v353, 2u, memory_order_relaxed);
                    }

                    v344 = *&v353[8];
                    v343 = v176;
                    v345 = 1;
                    goto LABEL_460;
                  }

                  v318 = v74;
                  v177 = v172;
                  v178 = v2;
                  if (*(a2 + 56) != 47)
                  {
                    WGSL::toString();
                    WGSL::toString();
                    if (v335)
                    {
                      v187 = *(v335 + 1);
                    }

                    else
                    {
                      v187 = 0;
                    }

                    if (v323)
                    {
                      v191 = *(v323 + 1);
                      if (v191 < 0)
                      {
                        goto LABEL_813;
                      }
                    }

                    else
                    {
                      v191 = 0;
                    }

                    v83 = __OFADD__(v191, 12);
                    v192 = v191 + 12;
                    v193 = v83;
                    if ((v187 & 0x80000000) == 0 && (v193 & 1) == 0)
                    {
                      v83 = __OFADD__(v187, v192);
                      v194 = v187 + v192;
                      if (!v83)
                      {
                        v195 = (v194 + 11);
                        if (!__OFADD__(v194, 11))
                        {
                          if (v335)
                          {
                            v196 = *(v335 + 4);
                            v197 = (v196 >> 2) & 1;
                            if (!v323 || (v196 & 4) == 0)
                            {
                              goto LABEL_452;
                            }

LABEL_450:
                            v197 = (*(v323 + 16) >> 2) & 1;
                          }

                          else
                          {
                            if (v323)
                            {
                              goto LABEL_450;
                            }

                            v197 = 1;
                          }

LABEL_452:
                          WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v195, v197, "Expected a ", 0xBuLL, v335, ", but got a ", 0xCuLL, &v350, v323);
                          v198 = v350;
                          if (v350)
                          {
                            v199 = v323;
                            v323 = 0;
                            if (v199 && atomic_fetch_add_explicit(v199, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v199, v8);
                            }

                            v9 = v335;
                            v335 = 0;
                            if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              v9 = WTF::StringImpl::destroy(v9, v8);
                            }

                            v200 = v175 | ((*(a2 + 96) - v175) << 32);
                            v343 = v198;
                            *&v344 = v174;
                            *(&v344 + 1) = v200;
                            v345 = 1;
                            v2 = v178;
                            v172 = v177;
                            v74 = v318;
                            goto LABEL_460;
                          }
                        }
                      }
                    }

LABEL_813:
                    __break(0xC471u);
                    JUMPOUT(0x225786A50);
                  }

                  v172 = v177;
                  v74 = v318;
                  do
                  {
                    v181 = *(a2 + 36);
                    v182 = (*(a2 + 40) + 1);
                    *(a2 + 40) = v182;
                    if (v181 <= v182)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x225786A18);
                    }

                    v183 = *(a2 + 24) + 32 * v182;
                    v179 = *v183;
                    *(a2 + 56) = *v183;
                    *(a2 + 60) = *(v183 + 4);
                    v184 = *v183;
                    if (*v183 <= 8u)
                    {
                      if (((1 << v184) & 0x38) != 0)
                      {
                        *(a2 + 80) = *(v183 + 24);
LABEL_408:
                        v179 = *(a2 + 56);
                        goto LABEL_409;
                      }

                      if (((1 << v184) & 0xC4) != 0)
                      {
                        *(a2 + 80) = *(v183 + 24);
                        goto LABEL_408;
                      }

                      if (v184 == 8)
                      {
                        *(a2 + 80) = 0;
                        v185 = *(v183 + 24);
                        if (v185)
                        {
                          atomic_fetch_add_explicit(v185, 2u, memory_order_relaxed);
                          v186 = *(a2 + 80);
                          *(a2 + 80) = v185;
                          if (v186)
                          {
                            if (atomic_fetch_add_explicit(v186, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v186, v8);
                            }
                          }
                        }

                        goto LABEL_408;
                      }
                    }

LABEL_409:
                    v180 = *(a2 + 68);
                    *(a2 + 88) = *(a2 + 60);
                    *(a2 + 96) = v180;
                  }

                  while (v179 == 82);
                  v9 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeName(&v350, a2);
                  if (!v352)
                  {
                    v189 = *(a2 + 8);
                    v190 = *(a2 + 96) - v175;
                    v335 = v174;
                    *&v336 = __PAIR64__(v190, v175);
                    LOBYTE(v323) = 0;
                    WGSL::AST::Builder::construct<WGSL::AST::Parameter,WGSL::SourceSpan,WGSL::AST::Identifier,std::reference_wrapper<WGSL::AST::Expression>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::AST::ParameterRole,void>(v189, &v335, v353, &v350, &v356, &v323);
                  }

                  if (v352 != 1)
                  {
                    goto LABEL_791;
                  }

                  v188 = v350;
                  if (v350)
                  {
                    atomic_fetch_add_explicit(v350, 2u, memory_order_relaxed);
                  }

                  v344 = v351;
                  v343 = v188;
                  v345 = 1;
                  if (v352)
                  {
                    if (v352 != 255)
                    {
                      v9 = v350;
                      v350 = 0;
                      if (v9)
                      {
                        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          v9 = WTF::StringImpl::destroy(v9, v8);
                        }
                      }
                    }
                  }

LABEL_460:
                  if (v355 != 255)
                  {
                    if (v355)
                    {
                      v9 = *v353;
                      *v353 = 0;
                      if (!v9)
                      {
                        goto LABEL_467;
                      }
                    }

                    else
                    {
                      v9 = v354;
                      *v353 = off_2838D37C0;
                      v354 = 0;
                      if (!v9)
                      {
                        goto LABEL_467;
                      }
                    }

                    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      v9 = WTF::StringImpl::destroy(v9, v8);
                    }
                  }

LABEL_467:
                  if (v358 != 255)
                  {
                    v9 = v356;
                    if (v358)
                    {
                      goto LABEL_469;
                    }

                    if (v356)
                    {
                      v9 = WTF::fastFree(v356, v8);
                    }
                  }

LABEL_472:
                  if (v345)
                  {
                    if (v345 != 1)
                    {
                      goto LABEL_791;
                    }

                    v74 = v343;
                    if (v343)
                    {
                      atomic_fetch_add_explicit(v343, 2u, memory_order_relaxed);
                    }

                    v201 = 1;
                    v2 = *(&v344 + 1);
                    v319 = v344;
                    v202 = v345;
                    if (!v345)
                    {
                      goto LABEL_393;
                    }

LABEL_499:
                    if (v202 != 255)
                    {
                      v213 = v343;
                      v343 = 0;
                      if (v213)
                      {
                        if (atomic_fetch_add_explicit(v213, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v213, v8);
                        }
                      }
                    }

                    goto LABEL_393;
                  }

                  if (v173 == v333)
                  {
                    v203 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v332, v173 + 1, &v343);
                    v204 = DWORD1(v333);
                    v172 = v332;
                    v332[DWORD1(v333)] = *v203;
                  }

                  else
                  {
                    v172[v173] = v343;
                    v204 = DWORD1(v333);
                  }

                  v173 = v204 + 1;
                  DWORD1(v333) = v204 + 1;
                  if ((v204 + 1) >= 0x100)
                  {
                    WTF::String::number(&v341, 0xFF);
                    WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("function cannot have more than ", 32, &v341, " parameters", 12, v353);
                    v214 = *(a2 + 96);
                    v74 = *v353;
                    *v353 = 0;
                    v215 = v341;
                    *&v341 = 0;
                    if (v215 && atomic_fetch_add_explicit(v215, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v215, v8);
                    }

                    v2 = v316 | ((v214 - v316) << 32);
                    v201 = 1;
                    v319 = v314;
                    v202 = v345;
                    if (!v345)
                    {
                      goto LABEL_393;
                    }

                    goto LABEL_499;
                  }

                  if (*(a2 + 56) != 48)
                  {
                    v201 = 7;
                    v202 = v345;
                    if (v345)
                    {
                      goto LABEL_499;
                    }

                    goto LABEL_393;
                  }

                  while (2)
                  {
                    v207 = *(a2 + 36);
                    v208 = (*(a2 + 40) + 1);
                    *(a2 + 40) = v208;
                    if (v207 <= v208)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x2257869E0);
                    }

                    v209 = *(a2 + 24) + 32 * v208;
                    v205 = *v209;
                    *(a2 + 56) = *v209;
                    *(a2 + 60) = *(v209 + 4);
                    v210 = *v209;
                    if (*v209 <= 8u)
                    {
                      if (((1 << v210) & 0x38) != 0)
                      {
                        *(a2 + 80) = *(v209 + 24);
                        goto LABEL_486;
                      }

                      if (((1 << v210) & 0xC4) != 0)
                      {
                        *(a2 + 80) = *(v209 + 24);
                        goto LABEL_486;
                      }

                      if (v210 == 8)
                      {
                        *(a2 + 80) = 0;
                        v211 = *(v209 + 24);
                        if (v211)
                        {
                          atomic_fetch_add_explicit(v211, 2u, memory_order_relaxed);
                          v212 = *(a2 + 80);
                          *(a2 + 80) = v211;
                          if (v212)
                          {
                            if (atomic_fetch_add_explicit(v212, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v212, v8);
                            }
                          }
                        }

LABEL_486:
                        v205 = *(a2 + 56);
                      }
                    }

                    v206 = *(a2 + 68);
                    *(a2 + 88) = *(a2 + 60);
                    *(a2 + 96) = v206;
                    if (v205 == 82)
                    {
                      continue;
                    }

                    break;
                  }

                  v201 = 0;
                  v202 = v345;
                  if (v345)
                  {
                    goto LABEL_499;
                  }

LABEL_393:
                  if (v201)
                  {
                    if (v201 != 7)
                    {
                      v267 = v172;
                      v63 = v319;
                      goto LABEL_772;
                    }

                    if (*(a2 + 56) == 68)
                    {
                      while (1)
                      {
LABEL_536:
                        v227 = *(a2 + 36);
                        v228 = (*(a2 + 40) + 1);
                        *(a2 + 40) = v228;
                        if (v227 <= v228)
                        {
                          __break(0xC471u);
                          JUMPOUT(0x225786A30);
                        }

                        v229 = *(a2 + 24) + 32 * v228;
                        v225 = *v229;
                        *(a2 + 56) = *v229;
                        *(a2 + 60) = *(v229 + 4);
                        v230 = *v229;
                        if (*v229 > 8u)
                        {
                          goto LABEL_535;
                        }

                        if (((1 << v230) & 0x38) != 0)
                        {
                          *(a2 + 80) = *(v229 + 24);
                        }

                        else if (((1 << v230) & 0xC4) != 0)
                        {
                          *(a2 + 80) = *(v229 + 24);
                        }

                        else
                        {
                          if (v230 != 8)
                          {
                            goto LABEL_535;
                          }

                          *(a2 + 80) = 0;
                          v231 = *(v229 + 24);
                          if (v231)
                          {
                            atomic_fetch_add_explicit(v231, 2u, memory_order_relaxed);
                            v232 = *(a2 + 80);
                            *(a2 + 80) = v231;
                            if (v232)
                            {
                              if (atomic_fetch_add_explicit(v232, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v232, v8);
                              }
                            }
                          }
                        }

                        v225 = *(a2 + 56);
LABEL_535:
                        v226 = *(a2 + 68);
                        *(a2 + 88) = *(a2 + 60);
                        *(a2 + 96) = v226;
                        if (v225 != 82)
                        {
                          v350 = 0;
                          *&v351 = 0;
                          v343 = 0;
                          if (v225 != 39)
                          {
                            v268 = 0;
                            v269 = v314;
                            goto LABEL_642;
                          }

                          while (2)
                          {
                            v235 = *(a2 + 36);
                            v236 = (*(a2 + 40) + 1);
                            *(a2 + 40) = v236;
                            if (v235 <= v236)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x225786A40);
                            }

                            v237 = *(a2 + 24) + 32 * v236;
                            v233 = *v237;
                            *(a2 + 56) = *v237;
                            *(a2 + 60) = *(v237 + 4);
                            v238 = *v237;
                            if (*v237 <= 8u)
                            {
                              if (((1 << v238) & 0x38) != 0)
                              {
                                *(a2 + 80) = *(v237 + 24);
                                goto LABEL_549;
                              }

                              if (((1 << v238) & 0xC4) != 0)
                              {
                                *(a2 + 80) = *(v237 + 24);
                                goto LABEL_549;
                              }

                              if (v238 == 8)
                              {
                                *(a2 + 80) = 0;
                                v239 = *(v237 + 24);
                                if (v239)
                                {
                                  atomic_fetch_add_explicit(v239, 2u, memory_order_relaxed);
                                  v240 = *(a2 + 80);
                                  *(a2 + 80) = v239;
                                  if (v240)
                                  {
                                    if (atomic_fetch_add_explicit(v240, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v240, v8);
                                    }
                                  }
                                }

LABEL_549:
                                v233 = *(a2 + 56);
                              }
                            }

                            v234 = *(a2 + 68);
                            *(a2 + 88) = *(a2 + 60);
                            *(a2 + 96) = v234;
                            if (v233 != 82)
                            {
                              WGSL::Parser<WGSL::Lexer<char16_t>>::parseAttributes(v353, a2);
                              if (v354)
                              {
                                if (v354 == 1)
                                {
                                  v74 = *v353;
                                  if (*v353)
                                  {
                                    atomic_fetch_add_explicit(*v353, 2u, memory_order_relaxed);
                                  }

                                  v63 = *&v353[8];
                                  v2 = *&v353[16];
                                  std::experimental::fundamentals_v3::expected<WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::CompilationMessage>::~expected(v353, v270);
LABEL_741:
                                  v267 = v332;
LABEL_772:
                                  if (v267)
                                  {
                                    v332 = 0;
                                    LODWORD(v333) = 0;
                                    WTF::fastFree(v267, v8);
                                  }

LABEL_774:
                                  if (v349 != 255)
                                  {
                                    if (v349)
                                    {
                                      v312 = v346;
                                      v346 = 0;
                                      if (!v312)
                                      {
                                        goto LABEL_781;
                                      }
                                    }

                                    else
                                    {
                                      v312 = v348;
                                      v346 = off_2838D37C0;
                                      v348 = 0;
                                      if (!v312)
                                      {
                                        goto LABEL_781;
                                      }
                                    }

                                    if (atomic_fetch_add_explicit(v312, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v312, v8);
                                    }
                                  }

LABEL_781:
                                  if (v74)
                                  {
                                    atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
                                    *(a1 + 8) = v63;
                                    *(a1 + 16) = v2;
                                    *a1 = v74;
                                    *(a1 + 24) = 1;
                                    if (atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v74, v8);
                                    }

                                    goto LABEL_35;
                                  }

                                  *(a1 + 8) = v63;
                                  *(a1 + 16) = v2;
                                  *a1 = 0;
LABEL_34:
                                  *(a1 + 24) = 1;
                                  goto LABEL_35;
                                }

LABEL_791:
                                mpark::throw_bad_variant_access(v9);
                              }

                              v268 = *v353;
                              v350 = *v353;
                              v285 = *&v353[8];
                              *v353 = 0;
                              *&v353[8] = 0;
                              *&v351 = v285;
                              v9 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeName(&v356, a2);
                              v287 = v358;
                              if (v358)
                              {
                                v269 = v314;
                                if (v358 != 1)
                                {
                                  goto LABEL_791;
                                }

                                v74 = v356;
                                if (v356)
                                {
                                  atomic_fetch_add_explicit(v356, 2u, memory_order_relaxed);
                                }

                                v2 = *(&v357 + 1);
                                v319 = v357;
                              }

                              else
                              {
                                v343 = v356;
                                v269 = v314;
                              }

                              std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v356, v286);
                              std::experimental::fundamentals_v3::expected<WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::CompilationMessage>::~expected(v353, v302);
                              if (v287)
                              {
                                v63 = v319;
                                goto LABEL_739;
                              }

LABEL_642:
                              v9 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseCompoundStatement(v353, a2);
                              if (!v354)
                              {
                                v276 = *(a2 + 8);
                                v277 = *(a2 + 96) - v316;
                                v356 = v269;
                                *&v357 = __PAIR64__(v277, v316);
                                WGSL::AST::Builder::construct<WGSL::AST::Function,WGSL::SourceSpan,WGSL::AST::Identifier,WTF::ReferenceWrapperVector<WGSL::AST::Parameter,0ul>,WGSL::AST::Expression *,std::reference_wrapper<WGSL::AST::CompoundStatement>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,void>(v276, &v356, &v346, &v332, &v343, v353, &v326, &v350);
                              }

                              if (v354 != 1)
                              {
                                goto LABEL_791;
                              }

                              v74 = *v353;
                              if (*v353)
                              {
                                atomic_fetch_add_explicit(*v353, 2u, memory_order_relaxed);
                                v63 = *&v353[8];
                                v2 = *&v353[16];
                                if (atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v74, v8);
                                  if (!v268)
                                  {
                                    goto LABEL_741;
                                  }
                                }

                                else
                                {
LABEL_739:
                                  if (!v268)
                                  {
                                    goto LABEL_741;
                                  }
                                }
                              }

                              else
                              {
                                v63 = *&v353[8];
                                v2 = *&v353[16];
                                if (!v268)
                                {
                                  goto LABEL_741;
                                }
                              }

                              v350 = 0;
                              LODWORD(v351) = 0;
                              WTF::fastFree(v268, v8);
                              goto LABEL_741;
                            }

                            continue;
                          }
                        }
                      }
                    }

                    v274 = v172;
                    WGSL::toString();
                    WGSL::toString();
                    if (v356)
                    {
                      v275 = v356[1];
                    }

                    else
                    {
                      v275 = 0;
                    }

                    v63 = v314;
                    if (v350)
                    {
                      v295 = v350[1];
                      if (v295 < 0)
                      {
                        goto LABEL_818;
                      }
                    }

                    else
                    {
                      v295 = 0;
                    }

                    v83 = __OFADD__(v295, 12);
                    v296 = v295 + 12;
                    v297 = v83;
                    if ((v275 & 0x80000000) == 0 && (v297 & 1) == 0)
                    {
                      v83 = __OFADD__(v275, v296);
                      v298 = v275 + v296;
                      if (!v83)
                      {
                        v299 = (v298 + 11);
                        if (!__OFADD__(v298, 11))
                        {
                          if (v356)
                          {
                            v300 = v356[4];
                            v301 = (v300 >> 2) & 1;
                            if (!v350 || (v300 & 4) == 0)
                            {
                              goto LABEL_764;
                            }

LABEL_735:
                            v301 = (*(v350 + 16) >> 2) & 1;
                          }

                          else
                          {
                            if (v350)
                            {
                              goto LABEL_735;
                            }

                            v301 = 1;
                          }

LABEL_764:
                          WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v299, v301, "Expected a ", 0xBuLL, v356, ", but got a ", 0xCuLL, v353, v350);
                          v74 = *v353;
                          if (*v353)
                          {
                            v310 = v350;
                            v350 = 0;
                            if (v310 && atomic_fetch_add_explicit(v310, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v310, v8);
                            }

                            v311 = v356;
                            v356 = 0;
                            if (v311 && atomic_fetch_add_explicit(v311, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v311, v8);
                            }

                            v2 = v316 | ((*(a2 + 96) - v316) << 32);
                            v267 = v274;
                            goto LABEL_772;
                          }
                        }
                      }
                    }

LABEL_818:
                    __break(0xC471u);
LABEL_819:
                    JUMPOUT(0x2257869B8);
                  }
                }
              }
            }
          }

          WGSL::toString();
          WGSL::toString();
          if (v356)
          {
            v128 = v356[1];
          }

          else
          {
            v128 = 0;
          }

          if (v350)
          {
            v248 = v350[1];
            if (v248 < 0)
            {
              goto LABEL_816;
            }
          }

          else
          {
            v248 = 0;
          }

          v83 = __OFADD__(v248, 12);
          v249 = v248 + 12;
          v250 = v83;
          if ((v128 & 0x80000000) == 0 && (v250 & 1) == 0)
          {
            v83 = __OFADD__(v128, v249);
            v251 = v128 + v249;
            if (!v83)
            {
              v252 = (v251 + 11);
              if (!__OFADD__(v251, 11))
              {
                if (v356)
                {
                  v253 = v356[4];
                  v254 = (v253 >> 2) & 1;
                  if (!v350 || (v253 & 4) == 0)
                  {
                    goto LABEL_687;
                  }

LABEL_596:
                  v254 = (*(v350 + 16) >> 2) & 1;
                }

                else
                {
                  if (v350)
                  {
                    goto LABEL_596;
                  }

                  v254 = 1;
                }

LABEL_687:
                WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v252, v254, "Expected a ", 0xBuLL, v356, ", but got a ", 0xCuLL, v353, v350);
                v74 = *v353;
                if (*v353)
                {
                  v283 = v350;
                  v350 = 0;
                  if (v283 && atomic_fetch_add_explicit(v283, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v283, v8);
                  }

                  v284 = v356;
                  v356 = 0;
                  if (v284 && atomic_fetch_add_explicit(v284, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v284, v8);
                  }

                  v2 = v64 | ((*(a2 + 96) - v64) << 32);
                  goto LABEL_774;
                }
              }
            }
          }

LABEL_816:
          __break(0xC471u);
          JUMPOUT(0x225786A68);
        }
      }
    }

    if (v30 == 34)
    {
LABEL_109:
      WGSL::Parser<WGSL::Lexer<char16_t>>::parseVariableWithAttributes(&v346, a2, &v326);
      if (v348)
      {
        if (v348 != 1)
        {
          goto LABEL_791;
        }

        v53 = v346;
        if (!v346)
        {
          *(a1 + 8) = v347;
          *a1 = 0;
          goto LABEL_34;
        }

        atomic_fetch_add_explicit(v346, 2u, memory_order_relaxed);
        *(a1 + 8) = v347;
        *a1 = v53;
        *(a1 + 24) = 1;
        if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_35;
        }

        goto LABEL_113;
      }

      if (*(a2 + 56) != 73)
      {
        *v353 = *(a2 + 56);
        v355 = 1;
        v9 = WGSL::toString();
        if (v355 == 1)
        {
          WGSL::toString();
          WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v322, 13, &v321, &v356, ", but got a ");
          v99 = v321;
          v321 = 0;
          if (v99 && atomic_fetch_add_explicit(v99, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v99, v98);
          }

          v100 = v322;
          v322 = 0;
          if (v100 && atomic_fetch_add_explicit(v100, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v100, v98);
          }

          v101 = v6 | ((*(a2 + 96) - v6) << 32);
          *a1 = v356;
          *(a1 + 8) = v5;
          *(a1 + 16) = v101;
          *(a1 + 24) = 1;
          std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v353, v98);
          goto LABEL_35;
        }

        goto LABEL_791;
      }

      *v353 = 73;
      *&v353[4] = *(a2 + 60);
      v355 = 0;
      while (1)
      {
        v77 = *(a2 + 36);
        v78 = (*(a2 + 40) + 1);
        *(a2 + 40) = v78;
        if (v77 <= v78)
        {
          __break(0xC471u);
          JUMPOUT(0x2257869F0);
        }

        v79 = *(a2 + 24) + 32 * v78;
        v75 = *v79;
        *(a2 + 56) = *v79;
        *(a2 + 60) = *(v79 + 4);
        v80 = *v79;
        if (*v79 > 8u)
        {
          goto LABEL_160;
        }

        if (((1 << v80) & 0x38) != 0)
        {
          *(a2 + 80) = *(v79 + 24);
        }

        else if (((1 << v80) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v79 + 24);
        }

        else
        {
          if (v80 != 8)
          {
            goto LABEL_160;
          }

          *(a2 + 80) = 0;
          v81 = *(v79 + 24);
          if (v81)
          {
            atomic_fetch_add_explicit(v81, 2u, memory_order_relaxed);
            v82 = *(a2 + 80);
            *(a2 + 80) = v81;
            if (v82)
            {
              if (atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v82, v8);
              }
            }
          }
        }

        v75 = *(a2 + 56);
LABEL_160:
        v76 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v76;
        if (v75 != 82)
        {
          std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v353, v8);
          v111 = v346;
          goto LABEL_685;
        }
      }
    }

    if (v30 != 31)
    {
LABEL_131:
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v62 = v6 | ((*(a2 + 96) - v6) << 32);
      *a1 = *v353;
      *(a1 + 8) = v5;
      *(a1 + 16) = v62;
      goto LABEL_34;
    }

    v41 = *(a2 + 88);
    v42 = *(a2 + 96);
    while (1)
    {
      v45 = *(a2 + 36);
      v46 = (*(a2 + 40) + 1);
      *(a2 + 40) = v46;
      if (v45 <= v46)
      {
        __break(0xC471u);
        JUMPOUT(0x2257869D0);
      }

      v47 = *(a2 + 24) + 32 * v46;
      v43 = *v47;
      *(a2 + 56) = *v47;
      *(a2 + 60) = *(v47 + 4);
      v48 = *v47;
      if (*v47 > 8u)
      {
        goto LABEL_89;
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
          goto LABEL_89;
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
              WTF::StringImpl::destroy(v50, v8);
            }
          }
        }
      }

      v43 = *(a2 + 56);
LABEL_89:
      v44 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v44;
      if (v43 != 82)
      {
        v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v346, a2);
        if (v349)
        {
          if (v349 != 1)
          {
            goto LABEL_791;
          }

          v73 = v346;
          if (v346)
          {
            atomic_fetch_add_explicit(v346, 2u, memory_order_relaxed);
          }

          v324 = v347;
          v323 = v73;
LABEL_669:
          v325 = 1;
LABEL_670:
          if (v349 != 255)
          {
            if (v349)
            {
              v9 = v346;
              v346 = 0;
              if (!v9)
              {
                goto LABEL_677;
              }
            }

            else
            {
              v9 = v348;
              v346 = off_2838D37C0;
              v348 = 0;
              if (!v9)
              {
                goto LABEL_677;
              }
            }

            if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v9 = WTF::StringImpl::destroy(v9, v8);
            }
          }

LABEL_677:
          if (v325)
          {
            if (v325 != 1)
            {
              goto LABEL_791;
            }

            v281 = v323;
            if (v323)
            {
              atomic_fetch_add_explicit(v323, 2u, memory_order_relaxed);
              v282 = v325;
              *(a1 + 8) = v324;
              *a1 = v281;
              *(a1 + 24) = 1;
              if (v282 == 255)
              {
                goto LABEL_35;
              }

              v53 = v323;
              v323 = 0;
              if (!v53)
              {
                goto LABEL_35;
              }
            }

            else
            {
              *(a1 + 8) = v324;
              *a1 = 0;
              *(a1 + 24) = 1;
              v53 = v323;
              v323 = 0;
              if (!v53)
              {
                goto LABEL_35;
              }
            }

            if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) != 2)
            {
              goto LABEL_35;
            }

LABEL_113:
            WTF::StringImpl::destroy(v53, v8);
            goto LABEL_35;
          }

          v111 = v323;
LABEL_685:
          *a1 = v111;
          *(a1 + 24) = 0;
LABEL_35:
          if (v328 != 255)
          {
            v10 = v326;
            if (v328)
            {
              v326 = 0;
              if (v10)
              {
LABEL_38:
                if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) != 2)
                {
                  return;
                }

LABEL_621:
                WTF::StringImpl::destroy(v10, v8);
              }
            }

            else if (v326)
            {
              v326 = 0;
              LODWORD(v327) = 0;
              WTF::fastFree(v10, v8);
            }
          }

          return;
        }

        if (*(a2 + 56) == 43)
        {
          v102 = 2;
          while (1)
          {
            v105 = *(a2 + 36);
            v106 = (*(a2 + 40) + 1);
            *(a2 + 40) = v106;
            if (v105 <= v106)
            {
              __break(0xC471u);
              JUMPOUT(0x225786A20);
            }

            v107 = *(a2 + 24) + 32 * v106;
            v103 = *v107;
            *(a2 + 56) = *v107;
            *(a2 + 60) = *(v107 + 4);
            v108 = *v107;
            if (*v107 > 8u)
            {
              goto LABEL_216;
            }

            if (((1 << v108) & 0x38) != 0)
            {
              *(a2 + 80) = *(v107 + 24);
            }

            else if (((1 << v108) & 0xC4) != 0)
            {
              *(a2 + 80) = *(v107 + 24);
            }

            else
            {
              if (v108 != 8)
              {
                goto LABEL_216;
              }

              *(a2 + 80) = 0;
              v109 = *(v107 + 24);
              if (v109)
              {
                atomic_fetch_add_explicit(v109, 2u, memory_order_relaxed);
                v110 = *(a2 + 80);
                *(a2 + 80) = v109;
                if (v110)
                {
                  if (atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v110, v8);
                  }
                }
              }
            }

            v103 = *(a2 + 56);
LABEL_216:
            v104 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v104;
            if (v103 != 82)
            {
              v315 = v41;
              v313 = 0;
              v317 = 0;
              v339 = 0;
              v340 = 0;
              v338 = 0;
              v320 = v325;
              while (2)
              {
                if (*(a2 + 56) == 44)
                {
                  v224 = v42;
                  v223 = v315;
                  goto LABEL_624;
                }

                v129 = *(a2 + 88);
                v130 = *(a2 + 96);
                WGSL::Parser<WGSL::Lexer<char16_t>>::parseAttributes(&v356, a2);
                if (v358)
                {
                  if (v358 != 1)
                  {
                    goto LABEL_791;
                  }

                  v9 = v356;
                  if (v356)
                  {
                    atomic_fetch_add_explicit(v356, 2u, memory_order_relaxed);
                  }

                  v344 = v357;
                  v343 = v9;
                  v345 = 1;
LABEL_343:
                  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    v9 = WTF::StringImpl::destroy(v9, v8);
                  }

                  goto LABEL_346;
                }

                v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v353, a2);
                if (v355)
                {
                  if (v355 != 1)
                  {
                    goto LABEL_791;
                  }

                  v131 = *v353;
                  if (*v353)
                  {
                    atomic_fetch_add_explicit(*v353, 2u, memory_order_relaxed);
                  }

                  v344 = *&v353[8];
                  v343 = v131;
                  v345 = 1;
                  goto LABEL_334;
                }

                if (*(a2 + 56) != 47)
                {
                  WGSL::toString();
                  WGSL::toString();
                  if (v341)
                  {
                    v140 = *(v341 + 4);
                  }

                  else
                  {
                    v140 = 0;
                  }

                  if (v342)
                  {
                    v144 = *(v342 + 1);
                    if (v144 < 0)
                    {
                      goto LABEL_812;
                    }
                  }

                  else
                  {
                    v144 = 0;
                  }

                  v83 = __OFADD__(v144, 12);
                  v145 = v144 + 12;
                  v146 = v83;
                  if ((v140 & 0x80000000) == 0 && (v146 & 1) == 0)
                  {
                    v83 = __OFADD__(v140, v145);
                    v147 = v140 + v145;
                    if (!v83)
                    {
                      v148 = (v147 + 11);
                      if (!__OFADD__(v147, 11))
                      {
                        if (v341)
                        {
                          v149 = *(v341 + 16);
                          v150 = (v149 >> 2) & 1;
                          if (!v342 || (v149 & 4) == 0)
                          {
                            goto LABEL_326;
                          }

LABEL_324:
                          v150 = (*(v342 + 16) >> 2) & 1;
                        }

                        else
                        {
                          if (v342)
                          {
                            goto LABEL_324;
                          }

                          v150 = 1;
                        }

LABEL_326:
                        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v148, v150, "Expected a ", 0xBuLL, v341, ", but got a ", 0xCuLL, &v350, v342);
                        v151 = v350;
                        if (v350)
                        {
                          v152 = v342;
                          v342 = 0;
                          if (v152 && atomic_fetch_add_explicit(v152, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v152, v8);
                          }

                          v9 = v341;
                          *&v341 = 0;
                          if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            v9 = WTF::StringImpl::destroy(v9, v8);
                          }

                          v153 = v130 | ((*(a2 + 96) - v130) << 32);
                          v343 = v151;
                          *&v344 = v129;
                          *(&v344 + 1) = v153;
                          v345 = 1;
                          goto LABEL_334;
                        }
                      }
                    }
                  }

LABEL_812:
                  __break(0xC471u);
                  JUMPOUT(0x225786A48);
                }

LABEL_284:
                v134 = *(a2 + 36);
                v135 = (*(a2 + 40) + 1);
                *(a2 + 40) = v135;
                if (v134 <= v135)
                {
                  __break(0xC471u);
                  JUMPOUT(0x225786A08);
                }

                v136 = *(a2 + 24) + 32 * v135;
                v132 = *v136;
                *(a2 + 56) = *v136;
                *(a2 + 60) = *(v136 + 4);
                v137 = *v136;
                if (*v136 <= 8u)
                {
                  if (((1 << v137) & 0x38) != 0)
                  {
                    *(a2 + 80) = *(v136 + 24);
                    goto LABEL_282;
                  }

                  if (((1 << v137) & 0xC4) != 0)
                  {
                    *(a2 + 80) = *(v136 + 24);
                    goto LABEL_282;
                  }

                  if (v137 == 8)
                  {
                    *(a2 + 80) = 0;
                    v138 = *(v136 + 24);
                    if (v138)
                    {
                      atomic_fetch_add_explicit(v138, 2u, memory_order_relaxed);
                      v139 = *(a2 + 80);
                      *(a2 + 80) = v138;
                      if (v139)
                      {
                        if (atomic_fetch_add_explicit(v139, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v139, v8);
                        }
                      }
                    }

LABEL_282:
                    v132 = *(a2 + 56);
                  }
                }

                v133 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v133;
                if (v132 != 82)
                {
                  v9 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeName(&v350, a2);
                  if (!v352)
                  {
                    v142 = *(a2 + 8);
                    v143 = *(a2 + 96) - v130;
                    *&v341 = v129;
                    *(&v341 + 1) = __PAIR64__(v143, v130);
                    WGSL::AST::Builder::construct<WGSL::AST::StructureMember,WGSL::SourceSpan,WGSL::AST::Identifier,std::reference_wrapper<WGSL::AST::Expression>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,void>(v142, &v341, v353, &v350, &v356);
                  }

                  if (v352 != 1)
                  {
                    goto LABEL_791;
                  }

                  v141 = v350;
                  if (v350)
                  {
                    atomic_fetch_add_explicit(v350, 2u, memory_order_relaxed);
                  }

                  v344 = v351;
                  v343 = v141;
                  v345 = 1;
                  if (v352)
                  {
                    if (v352 != 255)
                    {
                      v9 = v350;
                      v350 = 0;
                      if (v9)
                      {
                        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          v9 = WTF::StringImpl::destroy(v9, v8);
                        }
                      }
                    }
                  }

LABEL_334:
                  if (v355 != 255)
                  {
                    if (v355)
                    {
                      v9 = *v353;
                      *v353 = 0;
                      if (!v9)
                      {
                        goto LABEL_341;
                      }
                    }

                    else
                    {
                      v9 = v354;
                      *v353 = off_2838D37C0;
                      v354 = 0;
                      if (!v9)
                      {
                        goto LABEL_341;
                      }
                    }

                    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      v9 = WTF::StringImpl::destroy(v9, v8);
                    }
                  }

LABEL_341:
                  if (v358 != 255)
                  {
                    v9 = v356;
                    if (v358)
                    {
                      goto LABEL_343;
                    }

                    if (v356)
                    {
                      v9 = WTF::fastFree(v356, v8);
                    }
                  }

LABEL_346:
                  if (!v345)
                  {
                    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v353, &v338, v343 + 6);
                    if (v353[16])
                    {
                      if (v317 == v340)
                      {
                        v155 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v339, v317 + 1, &v343);
                        v156 = HIDWORD(v340);
                        v313 = v339;
                        *(v339 + HIDWORD(v340)) = *v155;
                      }

                      else
                      {
                        *(v313 + v317) = v343;
                        v156 = HIDWORD(v340);
                      }

                      HIDWORD(v340) = v156 + 1;
                      v317 = v156 + 1;
                      if ((v156 + 1) < 0x400)
                      {
                        if (*(a2 + 56) != 48)
                        {
                          v154 = 7;
                          goto LABEL_383;
                        }

                        while (2)
                        {
                          v164 = *(a2 + 36);
                          v165 = (*(a2 + 40) + 1);
                          *(a2 + 40) = v165;
                          if (v164 <= v165)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x225786A10);
                          }

                          v166 = *(a2 + 24) + 32 * v165;
                          v162 = *v166;
                          *(a2 + 56) = *v166;
                          *(a2 + 60) = *(v166 + 4);
                          v167 = *v166;
                          if (*v166 <= 8u)
                          {
                            if (((1 << v167) & 0x38) != 0)
                            {
                              *(a2 + 80) = *(v166 + 24);
                              goto LABEL_370;
                            }

                            if (((1 << v167) & 0xC4) != 0)
                            {
                              *(a2 + 80) = *(v166 + 24);
                              goto LABEL_370;
                            }

                            if (v167 == 8)
                            {
                              *(a2 + 80) = 0;
                              v168 = *(v166 + 24);
                              if (v168)
                              {
                                atomic_fetch_add_explicit(v168, 2u, memory_order_relaxed);
                                v169 = *(a2 + 80);
                                *(a2 + 80) = v168;
                                if (v169)
                                {
                                  if (atomic_fetch_add_explicit(v169, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                  {
                                    WTF::StringImpl::destroy(v169, v8);
                                  }
                                }
                              }

LABEL_370:
                              v162 = *(a2 + 56);
                            }
                          }

                          v163 = *(a2 + 68);
                          *(a2 + 88) = *(a2 + 60);
                          *(a2 + 96) = v163;
                          if (v162 != 82)
                          {
                            v154 = 0;
                            goto LABEL_383;
                          }

                          continue;
                        }
                      }

                      WTF::String::number(&v331, 0x3FF);
                      WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("struct cannot have more than ", 30, &v331, " members", 9, &v356);
                      v171 = v42 | ((*(a2 + 96) - v42) << 32);
                      v102 = v356;
                      *&v324 = v315;
                      *(&v324 + 1) = v171;
                      v356 = 0;
                      v161 = v331;
                      v331 = 0;
                      if (!v161)
                      {
LABEL_364:
                        v320 = 1;
                        v154 = 1;
                        goto LABEL_383;
                      }
                    }

                    else
                    {
                      v336 = *(v343 + 2);
                      v335 = off_2838D37C0;
                      v157 = *(v343 + 6);
                      if (v157)
                      {
                        atomic_fetch_add_explicit(v157, 2u, memory_order_relaxed);
                      }

                      v337 = v157;
                      v333 = v347;
                      v332 = off_2838D37C0;
                      v158 = v348;
                      if (v348)
                      {
                        atomic_fetch_add_explicit(v348, 2u, memory_order_relaxed);
                        v157 = v337;
                      }

                      v334 = v158;
                      WTF::makeString<WTF::ASCIILiteral,WGSL::AST::Identifier,WTF::ASCIILiteral,WGSL::AST::Identifier,char>(&v356, v157, v158);
                      v159 = v42 | ((*(a2 + 96) - v42) << 32);
                      v102 = v356;
                      *&v324 = v315;
                      *(&v324 + 1) = v159;
                      v160 = v334;
                      v332 = off_2838D37C0;
                      v334 = 0;
                      if (v160 && atomic_fetch_add_explicit(v160, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v160, v8);
                      }

                      v161 = v337;
                      v335 = off_2838D37C0;
                      v337 = 0;
                      if (!v161)
                      {
                        goto LABEL_364;
                      }
                    }

                    if (atomic_fetch_add_explicit(v161, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v161, v8);
                    }

                    goto LABEL_364;
                  }

                  if (v345 != 1)
                  {
                    goto LABEL_791;
                  }

                  v102 = v343;
                  if (v343)
                  {
                    atomic_fetch_add_explicit(v343, 2u, memory_order_relaxed);
                  }

                  v324 = v344;
                  v320 = 1;
                  v154 = 1;
LABEL_383:
                  if (v345)
                  {
                    if (v345 != 255)
                    {
                      v170 = v343;
                      v343 = 0;
                      if (v170)
                      {
                        if (atomic_fetch_add_explicit(v170, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v170, v8);
                        }
                      }
                    }
                  }

                  if (v154)
                  {
                    v224 = v42;
                    v223 = v315;
                    if (v154 != 7)
                    {
                      v325 = v320;
                      v323 = v102;
                      goto LABEL_752;
                    }

LABEL_624:
                    v325 = v320;
                    v323 = v102;
                    if (!v317)
                    {
                      WTF::StringImpl::createWithoutCopyingNonEmpty();
                      v271 = v224 | ((*(a2 + 96) - v224) << 32);
                      goto LABEL_751;
                    }

                    if (*(a2 + 56) == 44)
                    {
                      while (1)
                      {
                        v261 = *(a2 + 36);
                        v262 = (*(a2 + 40) + 1);
                        *(a2 + 40) = v262;
                        if (v261 <= v262)
                        {
                          __break(0xC471u);
                          JUMPOUT(0x225786A58);
                        }

                        v263 = *(a2 + 24) + 32 * v262;
                        v259 = *v263;
                        *(a2 + 56) = *v263;
                        *(a2 + 60) = *(v263 + 4);
                        v264 = *v263;
                        if (*v263 <= 8u)
                        {
                          if (((1 << v264) & 0x38) != 0)
                          {
                            *(a2 + 80) = *(v263 + 24);
                          }

                          else if (((1 << v264) & 0xC4) != 0)
                          {
                            *(a2 + 80) = *(v263 + 24);
                          }

                          else
                          {
                            if (v264 != 8)
                            {
                              goto LABEL_629;
                            }

                            *(a2 + 80) = 0;
                            v265 = *(v263 + 24);
                            if (v265)
                            {
                              atomic_fetch_add_explicit(v265, 2u, memory_order_relaxed);
                              v266 = *(a2 + 80);
                              *(a2 + 80) = v265;
                              if (v266)
                              {
                                if (atomic_fetch_add_explicit(v266, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v266, v8);
                                }
                              }
                            }
                          }

                          v259 = *(a2 + 56);
                        }

LABEL_629:
                        v260 = *(a2 + 68);
                        *(a2 + 88) = *(a2 + 60);
                        *(a2 + 96) = v260;
                        if (v259 != 82)
                        {
                          v273 = *(a2 + 8);
                          *v353 = v223;
                          *&v353[8] = v224;
                          *&v353[12] = v260 - v224;
                          LOBYTE(v356) = 0;
                          WGSL::AST::Builder::construct<WGSL::AST::Structure,WGSL::SourceSpan,WGSL::AST::Identifier,WTF::ReferenceWrapperVector<WGSL::AST::StructureMember,0ul>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::AST::StructureRole,void>(v273, v353, &v346, &v339, &v326, &v356);
                        }
                      }
                    }

                    WGSL::toString();
                    WGSL::toString();
                    if (v356)
                    {
                      v272 = v356[1];
                    }

                    else
                    {
                      v272 = 0;
                    }

                    if (v350)
                    {
                      v288 = v350[1];
                      if (v288 < 0)
                      {
                        goto LABEL_817;
                      }
                    }

                    else
                    {
                      v288 = 0;
                    }

                    v83 = __OFADD__(v288, 12);
                    v289 = v288 + 12;
                    v290 = v83;
                    if ((v272 & 0x80000000) == 0 && (v290 & 1) == 0)
                    {
                      v83 = __OFADD__(v272, v289);
                      v291 = v272 + v289;
                      if (!v83)
                      {
                        v292 = (v291 + 11);
                        if (!__OFADD__(v291, 11))
                        {
                          if (v356)
                          {
                            v293 = v356[4];
                            v294 = (v293 >> 2) & 1;
                            if (!v350 || (v293 & 4) == 0)
                            {
LABEL_743:
                              WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v292, v294, "Expected a ", 0xBuLL, v356, ", but got a ", 0xCuLL, v353, v350);
                              v303 = *v353;
                              if (*v353)
                              {
                                v304 = v350;
                                v350 = 0;
                                if (v304 && atomic_fetch_add_explicit(v304, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v304, v8);
                                }

                                v305 = v356;
                                v356 = 0;
                                if (v305 && atomic_fetch_add_explicit(v305, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v305, v8);
                                }

                                v271 = v224 | ((*(a2 + 96) - v224) << 32);
                                v323 = v303;
LABEL_751:
                                *&v324 = v223;
                                *(&v324 + 1) = v271;
                                v325 = 1;
LABEL_752:
                                v306 = v338;
                                if (v338)
                                {
                                  v307 = *(v338 - 1);
                                  if (v307)
                                  {
                                    v308 = v338;
                                    do
                                    {
                                      v309 = *v308;
                                      if (*v308 != -1)
                                      {
                                        *v308 = 0;
                                        if (v309)
                                        {
                                          if (atomic_fetch_add_explicit(v309, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                          {
                                            WTF::StringImpl::destroy(v309, v8);
                                          }
                                        }
                                      }

                                      ++v308;
                                      --v307;
                                    }

                                    while (v307);
                                  }

                                  WTF::fastFree((v306 - 16), v8);
                                }

                                v9 = v339;
                                if (v339)
                                {
                                  v339 = 0;
                                  LODWORD(v340) = 0;
                                  v9 = WTF::fastFree(v9, v8);
                                }

                                goto LABEL_670;
                              }

                              goto LABEL_817;
                            }
                          }

                          else if (!v350)
                          {
                            v294 = 1;
                            goto LABEL_743;
                          }

                          v294 = (*(v350 + 16) >> 2) & 1;
                          goto LABEL_743;
                        }
                      }
                    }

LABEL_817:
                    __break(0xC471u);
                    JUMPOUT(0x225786A70);
                  }

                  continue;
                }

                goto LABEL_284;
              }
            }
          }
        }

        WGSL::toString();
        WGSL::toString();
        if (v356)
        {
          v127 = v356[1];
        }

        else
        {
          v127 = 0;
        }

        if (v350)
        {
          v241 = v350[1];
          if (v241 < 0)
          {
            goto LABEL_815;
          }
        }

        else
        {
          v241 = 0;
        }

        v83 = __OFADD__(v241, 12);
        v242 = v241 + 12;
        v243 = v83;
        if ((v127 & 0x80000000) == 0 && (v243 & 1) == 0)
        {
          v83 = __OFADD__(v127, v242);
          v244 = v127 + v242;
          if (!v83)
          {
            v245 = (v244 + 11);
            if (!__OFADD__(v244, 11))
            {
              if (v356)
              {
                v246 = v356[4];
                v247 = (v246 >> 2) & 1;
                if (!v350 || (v246 & 4) == 0)
                {
                  goto LABEL_661;
                }

LABEL_594:
                v247 = (*(v350 + 16) >> 2) & 1;
              }

              else
              {
                if (v350)
                {
                  goto LABEL_594;
                }

                v247 = 1;
              }

LABEL_661:
              WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v245, v247, "Expected a ", 0xBuLL, v356, ", but got a ", 0xCuLL, v353, v350);
              v278 = *v353;
              if (*v353)
              {
                v279 = v350;
                v350 = 0;
                if (v279 && atomic_fetch_add_explicit(v279, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v279, v8);
                }

                v9 = v356;
                v356 = 0;
                if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  v9 = WTF::StringImpl::destroy(v9, v8);
                }

                v280 = v42 | ((*(a2 + 96) - v42) << 32);
                v323 = v278;
                *&v324 = v41;
                *(&v324 + 1) = v280;
                goto LABEL_669;
              }
            }
          }
        }

LABEL_815:
        __break(0xC471u);
        JUMPOUT(0x225786A60);
      }
    }
  }

  do
  {
    v13 = *(a2 + 36);
    v14 = (*(a2 + 40) + 1);
    *(a2 + 40) = v14;
    if (v13 <= v14)
    {
      __break(0xC471u);
      goto LABEL_819;
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
LABEL_17:
        v11 = *(a2 + 56);
        goto LABEL_18;
      }

      if (((1 << v16) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v15 + 24);
        goto LABEL_17;
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

        goto LABEL_17;
      }
    }

LABEL_18:
    v12 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v12;
  }

  while (v11 == 82);
  v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v353, a2);
  if (v355)
  {
    if (v355 != 1)
    {
      goto LABEL_791;
    }

    v20 = *v353;
    if (*v353)
    {
      atomic_fetch_add_explicit(*v353, 2u, memory_order_relaxed);
    }

    v5 = *&v353[8];
    v21 = *&v353[16];
    goto LABEL_611;
  }

  if (*(a2 + 56) != 49)
  {
    WGSL::toString();
    WGSL::toString();
    if (v356)
    {
      v51 = v356[1];
      if (v350)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v51 = 0;
      if (v350)
      {
LABEL_102:
        v52 = v350[1];
        if (v52 < 0)
        {
          goto LABEL_803;
        }

LABEL_188:
        v83 = __OFADD__(v52, 12);
        v90 = v52 + 12;
        v91 = v83;
        if (v51 < 0)
        {
          goto LABEL_803;
        }

        if (v91)
        {
          goto LABEL_803;
        }

        v83 = __OFADD__(v51, v90);
        v92 = v51 + v90;
        if (v83)
        {
          goto LABEL_803;
        }

        v93 = (v92 + 11);
        if (__OFADD__(v92, 11))
        {
          goto LABEL_803;
        }

        if (v356)
        {
          v94 = v356[4];
          v95 = (v94 >> 2) & 1;
          if (!v350 || (v94 & 4) == 0)
          {
LABEL_254:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v93, v95, "Expected a ", 0xBuLL, v356, ", but got a ", 0xCuLL, &v346, v350);
            v20 = v346;
            if (v346)
            {
              v125 = v350;
              v350 = 0;
              if (v125 && atomic_fetch_add_explicit(v125, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v125, v8);
              }

              v126 = v356;
              v356 = 0;
              if (v126 && atomic_fetch_add_explicit(v126, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v126, v8);
              }

              v21 = v6 | ((*(a2 + 96) - v6) << 32);
              goto LABEL_611;
            }

LABEL_803:
            __break(0xC471u);
            JUMPOUT(0x225786A00);
          }
        }

        else if (!v350)
        {
          v95 = 1;
          goto LABEL_254;
        }

        v95 = (*(v350 + 16) >> 2) & 1;
        goto LABEL_254;
      }
    }

    v52 = 0;
    goto LABEL_188;
  }

  while (2)
  {
    v33 = *(a2 + 36);
    v34 = (*(a2 + 40) + 1);
    *(a2 + 40) = v34;
    if (v33 <= v34)
    {
      __break(0xC471u);
      JUMPOUT(0x2257869C8);
    }

    v35 = *(a2 + 24) + 32 * v34;
    v31 = *v35;
    *(a2 + 56) = *v35;
    *(a2 + 60) = *(v35 + 4);
    v36 = *v35;
    if (*v35 <= 8u)
    {
      if (((1 << v36) & 0x38) != 0)
      {
        *(a2 + 80) = *(v35 + 24);
        goto LABEL_68;
      }

      if (((1 << v36) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v35 + 24);
        goto LABEL_68;
      }

      if (v36 == 8)
      {
        *(a2 + 80) = 0;
        v37 = *(v35 + 24);
        if (v37)
        {
          atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
          v38 = *(a2 + 80);
          *(a2 + 80) = v37;
          if (v38)
          {
            if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v38, v8);
            }
          }
        }

LABEL_68:
        v31 = *(a2 + 56);
      }
    }

    v32 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v32;
    if (v31 == 82)
    {
      continue;
    }

    break;
  }

  v9 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeName(&v346, a2);
  if (!v348)
  {
    if (*(a2 + 56) == 73)
    {
      while (1)
      {
        v56 = *(a2 + 36);
        v57 = (*(a2 + 40) + 1);
        *(a2 + 40) = v57;
        if (v56 <= v57)
        {
          __break(0xC471u);
          JUMPOUT(0x2257869E8);
        }

        v58 = *(a2 + 24) + 32 * v57;
        v54 = *v58;
        *(a2 + 56) = *v58;
        *(a2 + 60) = *(v58 + 4);
        v59 = *v58;
        if (*v58 <= 8u)
        {
          if (((1 << v59) & 0x38) != 0)
          {
            *(a2 + 80) = *(v58 + 24);
          }

          else if (((1 << v59) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v58 + 24);
          }

          else
          {
            if (v59 != 8)
            {
              goto LABEL_120;
            }

            *(a2 + 80) = 0;
            v60 = *(v58 + 24);
            if (v60)
            {
              atomic_fetch_add_explicit(v60, 2u, memory_order_relaxed);
              v61 = *(a2 + 80);
              *(a2 + 80) = v60;
              if (v61)
              {
                if (atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v61, v8);
                }
              }
            }
          }

          v54 = *(a2 + 56);
        }

LABEL_120:
        v55 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v55;
        if (v54 != 82)
        {
          v97 = *(a2 + 8);
          v356 = v5;
          LODWORD(v357) = v6;
          DWORD1(v357) = v55 - v6;
          WGSL::AST::Builder::construct<WGSL::AST::TypeAlias,WGSL::SourceSpan,WGSL::AST::Identifier,std::reference_wrapper<WGSL::AST::Expression>,void>(v97, &v356, v353, &v346);
        }
      }
    }

    WGSL::toString();
    WGSL::toString();
    if (v350)
    {
      v96 = v350[1];
    }

    else
    {
      v96 = 0;
    }

    if (v343)
    {
      v216 = *(v343 + 1);
      if (v216 < 0)
      {
        goto LABEL_810;
      }
    }

    else
    {
      v216 = 0;
    }

    v83 = __OFADD__(v216, 12);
    v217 = v216 + 12;
    v218 = v83;
    if (v96 < 0 || (v218 & 1) != 0 || (v83 = __OFADD__(v96, v217), v219 = v96 + v217, v83) || (v220 = (v219 + 11), __OFADD__(v219, 11)))
    {
LABEL_810:
      __break(0xC471u);
      JUMPOUT(0x225786A38);
    }

    if (v350)
    {
      v221 = v350[4];
      v222 = (v221 >> 2) & 1;
      if (!v343 || (v221 & 4) == 0)
      {
LABEL_598:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v220, v222, "Expected a ", 0xBuLL, v350, ", but got a ", 0xCuLL, &v356, v343);
        v20 = v356;
        if (v356)
        {
          v255 = v343;
          v343 = 0;
          if (v255 && atomic_fetch_add_explicit(v255, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v255, v8);
          }

          v256 = v350;
          v350 = 0;
          if (v256 && atomic_fetch_add_explicit(v256, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v256, v8);
          }

          v21 = v6 | ((*(a2 + 96) - v6) << 32);
          goto LABEL_606;
        }

        goto LABEL_810;
      }
    }

    else if (!v343)
    {
      v222 = 1;
      goto LABEL_598;
    }

    v222 = (*(v343 + 16) >> 2) & 1;
    goto LABEL_598;
  }

  if (v348 != 1)
  {
    goto LABEL_791;
  }

  v20 = v346;
  if (v346)
  {
    atomic_fetch_add_explicit(v346, 2u, memory_order_relaxed);
  }

  v21 = *(&v347 + 1);
  v5 = v347;
LABEL_606:
  if (v348)
  {
    if (v348 != 255)
    {
      v257 = v346;
      v346 = 0;
      if (v257)
      {
        if (atomic_fetch_add_explicit(v257, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v257, v8);
        }
      }
    }
  }

LABEL_611:
  if (v355 != 255)
  {
    if (v355)
    {
      v258 = *v353;
      *v353 = 0;
      if (!v258)
      {
        goto LABEL_618;
      }
    }

    else
    {
      v258 = v354;
      *v353 = off_2838D37C0;
      v354 = 0;
      if (!v258)
      {
        goto LABEL_618;
      }
    }

    if (atomic_fetch_add_explicit(v258, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v258, v8);
    }
  }

LABEL_618:
  if (!v20)
  {
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = v21;
    goto LABEL_252;
  }

  atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
  *a1 = v20;
  *(a1 + 8) = v5;
  *(a1 + 16) = v21;
  *(a1 + 24) = 1;
  if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v10 = v20;
    goto LABEL_621;
  }
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<char16_t>>::parseConstAssert(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  if (*(a2 + 56) != 14)
  {
    WGSL::toString();
    WGSL::toString();
    if (v56)
    {
      v15 = *(v56 + 1);
      if (v55)
      {
LABEL_18:
        v16 = *(v55 + 1);
        if (v16 < 0)
        {
          goto LABEL_103;
        }

        v14 = __OFADD__(v16, 12);
        v17 = v16 + 12;
        v18 = v14;
        if (v15 < 0)
        {
          goto LABEL_103;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v15 = 0;
      if (v55)
      {
        goto LABEL_18;
      }
    }

    v17 = 12;
    v18 = v14;
    if (v15 < 0)
    {
      goto LABEL_103;
    }

LABEL_49:
    if (v18)
    {
      goto LABEL_103;
    }

    v14 = __OFADD__(v15, v17);
    v30 = v15 + v17;
    if (v14)
    {
      goto LABEL_103;
    }

    v31 = (v30 + 11);
    if (__OFADD__(v30, 11))
    {
      goto LABEL_103;
    }

    if (v56)
    {
      v32 = *(v56 + 4);
      v33 = (v32 >> 2) & 1;
      if (!v55 || (v32 & 4) == 0)
      {
LABEL_68:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v31, v33, "Expected a ", 0xBuLL, v56, ", but got a ", 0xCuLL, &v52, v55);
        v41 = v52;
        if (v52)
        {
          v42 = v55;
          v55 = 0;
          if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v42, v40);
          }

          result = v56;
          v56 = 0;
          if (!result)
          {
            goto LABEL_75;
          }

LABEL_73:
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v40);
          }

LABEL_75:
          v43 = v5 | ((*(a2 + 96) - v5) << 32);
          *a1 = v41;
          *(a1 + 8) = v4;
          *(a1 + 16) = v43;
LABEL_76:
          *(a1 + 24) = 1;
          return result;
        }

LABEL_103:
        __break(0xC471u);
        JUMPOUT(0x225786F28);
      }
    }

    else if (!v55)
    {
      v33 = 1;
      goto LABEL_68;
    }

    v33 = (*(v55 + 16) >> 2) & 1;
    goto LABEL_68;
  }

  do
  {
    v8 = *(a2 + 36);
    v9 = (*(a2 + 40) + 1);
    *(a2 + 40) = v9;
    if (v8 <= v9)
    {
      __break(0xC471u);
      goto LABEL_105;
    }

    v10 = *(a2 + 24) + 32 * v9;
    v6 = *v10;
    *(a2 + 56) = *v10;
    *(a2 + 60) = *(v10 + 4);
    v11 = *v10;
    if (*v10 <= 8u)
    {
      if (((1 << v11) & 0x38) != 0)
      {
        *(a2 + 80) = *(v10 + 24);
LABEL_4:
        v6 = *(a2 + 56);
        goto LABEL_5;
      }

      if (((1 << v11) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v10 + 24);
        goto LABEL_4;
      }

      if (v11 == 8)
      {
        *(a2 + 80) = 0;
        v12 = *(v10 + 24);
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

        goto LABEL_4;
      }
    }

LABEL_5:
    v7 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v7;
  }

  while (v6 == 82);
  v19 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v52, a2);
  if (!v54)
  {
    if (*(a2 + 56) == 73)
    {
      while (1)
      {
        v24 = *(a2 + 36);
        v25 = (*(a2 + 40) + 1);
        *(a2 + 40) = v25;
        if (v24 <= v25)
        {
          __break(0xC471u);
          JUMPOUT(0x225786F20);
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
          }

          else if (((1 << v27) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v26 + 24);
          }

          else
          {
            if (v27 != 8)
            {
              goto LABEL_33;
            }

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
                  WTF::StringImpl::destroy(v29, v20);
                }
              }
            }
          }

          v22 = *(a2 + 56);
        }

LABEL_33:
        v23 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v23;
        if (v22 != 82)
        {
          v39 = *(a2 + 8);
          *&v49 = v4;
          DWORD2(v49) = v5;
          HIDWORD(v49) = v23 - v5;
          WGSL::AST::Builder::construct<WGSL::AST::ConstAssert,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,void>(v39, &v49, &v52);
        }
      }
    }

    WGSL::toString();
    WGSL::toString();
    if (v51)
    {
      v35 = *(v51 + 1);
      if (v50)
      {
LABEL_60:
        v36 = *(v50 + 1);
        if (v36 < 0)
        {
          goto LABEL_104;
        }

        v14 = __OFADD__(v36, 12);
        v37 = v36 + 12;
        v38 = v14;
        if (v35 < 0)
        {
          goto LABEL_104;
        }

LABEL_83:
        if (v38)
        {
          goto LABEL_104;
        }

        v14 = __OFADD__(v35, v37);
        v44 = v35 + v37;
        if (v14)
        {
          goto LABEL_104;
        }

        v45 = (v44 + 11);
        if (__OFADD__(v44, 11))
        {
          goto LABEL_104;
        }

        if (v51)
        {
          v46 = *(v51 + 4);
          v47 = (v46 >> 2) & 1;
          if (!v50 || (v46 & 4) == 0)
          {
LABEL_93:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v45, v47, "Expected a ", 0xBuLL, v51, ", but got a ", 0xCuLL, &v49, v50);
            v41 = v49;
            if (v49)
            {
              v48 = v50;
              v50 = 0;
              if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v48, v40);
              }

              result = v51;
              v51 = 0;
              if (!result)
              {
                goto LABEL_75;
              }

              goto LABEL_73;
            }

LABEL_104:
            __break(0xC471u);
LABEL_105:
            JUMPOUT(0x225786F18);
          }
        }

        else if (!v50)
        {
          v47 = 1;
          goto LABEL_93;
        }

        v47 = (*(v50 + 16) >> 2) & 1;
        goto LABEL_93;
      }
    }

    else
    {
      v35 = 0;
      if (v50)
      {
        goto LABEL_60;
      }
    }

    v37 = 12;
    if (v34)
    {
      v38 = 1;
    }

    else
    {
      v38 = 0;
    }

    if (v35 < 0)
    {
      goto LABEL_104;
    }

    goto LABEL_83;
  }

  if (v54 != 1)
  {
    mpark::throw_bad_variant_access(v19);
  }

  result = v52;
  if (!v52)
  {
    *(a1 + 8) = v53;
    *a1 = 0;
    goto LABEL_76;
  }

  atomic_fetch_add_explicit(v52, 2u, memory_order_relaxed);
  *(a1 + 8) = v53;
  *a1 = result;
  *(a1 + 24) = 1;
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v20);
  }

  return result;
}

void WGSL::Parser<WGSL::Lexer<char16_t>>::parseAttributes(WTF::StringImpl *result, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v18 = 0;
  v19 = 0;
  v6 = *result;
  v7 = *(result + 24);
  do
  {
    if (*(a2 + 56) != 40)
    {
      *result = v4;
      *(result + 2) = v19;
      *(result + 3) = v5;
      *(result + 24) = 0;
      return;
    }

    WGSL::Parser<WGSL::Lexer<char16_t>>::parseAttribute(&v15, a2);
    v10 = v17;
    if (!v17)
    {
      if (v5 == v19)
      {
        v12 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v18, v5 + 1, &v15);
        v13 = HIDWORD(v19);
        v4 = v18;
        *(v18 + HIDWORD(v19)) = *v12;
        v5 = v13 + 1;
        HIDWORD(v19) = v13 + 1;
        v11 = v17;
        if (!v17)
        {
          continue;
        }
      }

      else
      {
        *(v4 + v5++) = v15;
        HIDWORD(v19) = v5;
        v11 = v17;
        if (!v17)
        {
          continue;
        }
      }

LABEL_14:
      if (v11 != 255)
      {
        v14 = v15;
        v15 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v9);
          }
        }
      }

      continue;
    }

    if (v17 != 1)
    {
      *(result + 24) = v7;
      *result = v6;
      mpark::throw_bad_variant_access(v8);
    }

    v6 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    }

    *(result + 8) = v16;
    v7 = 1;
    v11 = v17;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  while (!v10);
  *(result + 24) = v7;
  *result = v6;
  if (v4)
  {
    v18 = 0;
    LODWORD(v19) = 0;
    WTF::fastFree(v4, v9);
  }
}

double WGSL::Parser<WGSL::Lexer<char16_t>>::parseVariableWithAttributes(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a2 + 88);
  v6 = *(a2 + 96);
  v7 = *(a2 + 56);
  if (v7 > 0x22)
  {
    goto LABEL_26;
  }

  if (((1 << v7) & 0x414002000) == 0)
  {
    if (v7 == 8)
    {
      v17 = *(a2 + 80);
      if (v17)
      {
        atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
        if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, a2);
        }
      }
    }

LABEL_26:
    memset(v175, 0, 20);
    v175[20] = 1;
    WTF::StringBuilder::append();
    WGSL::TemplateTypes<(WGSL::TokenType)13,(WGSL::TokenType)28,(WGSL::TokenType)26,(WGSL::TokenType)34>::appendNameTo(v175);
    WGSL::toString();
    v170 = "], but got a ";
    *&v171 = 13;
    v167 = v162;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>(v175, &v170, &v167);
    v20 = v162;
    v162 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v18);
    }

    v21 = *v175;
    if (*v175)
    {
      v22 = v6 | ((*(a2 + 96) - v6) << 32);
    }

    else
    {
      WTF::StringBuilder::shrinkToFit(v175);
      WTF::StringBuilder::reifyString(v175);
      v21 = *v175;
      v22 = v6 | ((*(a2 + 96) - v6) << 32);
      if (!*v175)
      {
LABEL_84:
        *a1 = v21;
        *(a1 + 8) = v5;
        *(a1 + 16) = v22;
        *(a1 + 24) = 1;
        v50 = *&v175[8];
        *&v175[8] = 0;
        if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v50, v18);
        }

LABEL_348:
        v119 = *v175;
        *v175 = 0;
        if (v119)
        {
          goto LABEL_349;
        }

        return result;
      }
    }

    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
    goto LABEL_84;
  }

  do
  {
    v10 = *(a2 + 36);
    v11 = (*(a2 + 40) + 1);
    *(a2 + 40) = v11;
    if (v10 <= v11)
    {
      __break(0xC471u);
      goto LABEL_372;
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
LABEL_5:
        v8 = *(a2 + 56);
        goto LABEL_6;
      }

      if (((1 << v13) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v12 + 24);
        goto LABEL_5;
      }

      if (v13 == 8)
      {
        *(a2 + 80) = 0;
        v14 = *(v12 + 24);
        if (v14)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
          v15 = *(a2 + 80);
          *(a2 + 80) = v14;
          if (v15)
          {
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, a2);
            }
          }
        }

        goto LABEL_5;
      }
    }

LABEL_6:
    v9 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v9;
  }

  while (v8 == 82);
  if (v7 == 13)
  {
    v16 = 0;
    v159 = 1;
    v166 = 0;
    v165 = 0;
    if (v8 == 83)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

  if (v7 == 28)
  {
    v159 = 0;
    v16 = 2;
    v166 = 2;
    v165 = 0;
    if (v8 == 83)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

  if (v7 != 26)
  {
    v159 = 0;
    v16 = 3;
    v166 = 3;
    v165 = 0;
    if (v8 != 83)
    {
      goto LABEL_64;
    }

LABEL_32:
    v157 = *(a2 + 88);
    while (1)
    {
      v25 = *(a2 + 36);
      v26 = (*(a2 + 40) + 1);
      *(a2 + 40) = v26;
      if (v25 <= v26)
      {
        __break(0xC471u);
        JUMPOUT(0x225788450);
      }

      v27 = *(a2 + 24) + 32 * v26;
      v23 = *v27;
      *(a2 + 56) = *v27;
      *(a2 + 60) = *(v27 + 4);
      v28 = *v27;
      if (*v27 > 8u)
      {
        goto LABEL_35;
      }

      if (((1 << v28) & 0x38) != 0)
      {
        *(a2 + 80) = *(v27 + 24);
      }

      else if (((1 << v28) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v27 + 24);
      }

      else
      {
        if (v28 != 8)
        {
          goto LABEL_35;
        }

        *(a2 + 80) = 0;
        v29 = *(v27 + 24);
        if (v29)
        {
          atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
          v30 = *(a2 + 80);
          *(a2 + 80) = v29;
          if (v30)
          {
            if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v30, a2);
            }
          }
        }
      }

      v23 = *(a2 + 56);
LABEL_35:
      v24 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v24;
      if (v23 != 82)
      {
        v31 = *(a2 + 88);
        if (v23 == 8)
        {
          *v175 = 8;
          *&v175[4] = *(a2 + 60);
          v176 = 0;
          v32 = *(a2 + 80);
          if (v32)
          {
            atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
            v176 = v32;
          }

          v177 = 0;
          while (2)
          {
            v35 = *(a2 + 36);
            v36 = (*(a2 + 40) + 1);
            *(a2 + 40) = v36;
            if (v35 <= v36)
            {
              __break(0xC471u);
              JUMPOUT(0x225788458);
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
                goto LABEL_51;
              }

              if (((1 << v38) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v37 + 24);
                goto LABEL_51;
              }

              if (v38 == 8)
              {
                *(a2 + 80) = 0;
                v39 = *(v37 + 24);
                if (v39)
                {
                  atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
                  v40 = *(a2 + 80);
                  *(a2 + 80) = v39;
                  if (v40)
                  {
                    if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v40, a2);
                    }
                  }
                }

LABEL_51:
                v33 = *(a2 + 56);
              }
            }

            v34 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v34;
            if (v33 == 82)
            {
              continue;
            }

            break;
          }

          v41 = WTF::SortedArrayMap<std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,WGSL::AddressSpace> [6]>::tryGet<WTF::String>(WGSL::parseAddressSpace(WTF::String const&)::__map, &v176);
          if (v41 && *v41 != 1)
          {
            v49 = 0;
            LOBYTE(v170) = *v41;
          }

          else
          {
            v41 = WTF::StringImpl::createWithoutCopyingNonEmpty();
            v48 = v24 | ((*(a2 + 96) - v24) << 32);
            *&v171 = v31;
            *(&v171 + 1) = v48;
            v49 = 1;
          }

          v172 = v49;
          v55 = v177;
          if (v177 != 255)
          {
            goto LABEL_103;
          }

LABEL_171:
          if (v49)
          {
            goto LABEL_172;
          }

LABEL_109:
          v56 = *(a2 + 56);
          if (v56 == 48)
          {
            if (v170 != 3)
            {
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v75 = v9 | ((*(a2 + 96) - v9) << 32);
              goto LABEL_249;
            }

            while (2)
            {
              v59 = *(a2 + 36);
              v60 = (*(a2 + 40) + 1);
              *(a2 + 40) = v60;
              if (v59 <= v60)
              {
                __break(0xC471u);
                JUMPOUT(0x225788478);
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
                  goto LABEL_113;
                }

                if (((1 << v62) & 0xC4) != 0)
                {
                  *(a2 + 80) = *(v61 + 24);
                  goto LABEL_113;
                }

                if (v62 == 8)
                {
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
                        WTF::StringImpl::destroy(v64, v18);
                      }
                    }
                  }

LABEL_113:
                  v57 = *(a2 + 56);
                }
              }

              v58 = *(a2 + 68);
              *(a2 + 88) = *(a2 + 60);
              *(a2 + 96) = v58;
              if (v57 == 82)
              {
                continue;
              }

              break;
            }

            v76 = *(a2 + 88);
            if (v57 == 8)
            {
              *v175 = 8;
              *&v175[4] = *(a2 + 60);
              v176 = 0;
              v77 = *(a2 + 80);
              if (v77)
              {
                atomic_fetch_add_explicit(v77, 2u, memory_order_relaxed);
                v176 = v77;
              }

              v177 = 0;
              while (1)
              {
                v80 = *(a2 + 36);
                v81 = (*(a2 + 40) + 1);
                *(a2 + 40) = v81;
                if (v80 <= v81)
                {
                  __break(0xC471u);
                  JUMPOUT(0x225788488);
                }

                v82 = *(a2 + 24) + 32 * v81;
                v78 = *v82;
                *(a2 + 56) = *v82;
                *(a2 + 60) = *(v82 + 4);
                v83 = *v82;
                if (*v82 > 8u)
                {
                  goto LABEL_151;
                }

                if (((1 << v83) & 0x38) != 0)
                {
                  *(a2 + 80) = *(v82 + 24);
                }

                else if (((1 << v83) & 0xC4) != 0)
                {
                  *(a2 + 80) = *(v82 + 24);
                }

                else
                {
                  if (v83 != 8)
                  {
                    goto LABEL_151;
                  }

                  *(a2 + 80) = 0;
                  v84 = *(v82 + 24);
                  if (v84)
                  {
                    atomic_fetch_add_explicit(v84, 2u, memory_order_relaxed);
                    v85 = *(a2 + 80);
                    *(a2 + 80) = v84;
                    if (v85)
                    {
                      if (atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v85, v18);
                      }
                    }
                  }
                }

                v78 = *(a2 + 56);
LABEL_151:
                v79 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v79;
                if (v78 != 82)
                {
                  v91 = WGSL::parseAccessMode(&v176);
                  if (v91)
                  {
                    v92 = 0;
                    LOBYTE(v167) = *v91;
                  }

                  else
                  {
                    WTF::StringImpl::createWithoutCopyingNonEmpty();
                    v100 = v58 | ((*(a2 + 96) - v58) << 32);
                    *&v168 = v76;
                    *(&v168 + 1) = v100;
                    v92 = 1;
                  }

                  goto LABEL_208;
                }
              }
            }

            *v175 = v57;
            v177 = 1;
            WGSL::toString();
            WGSL::toString();
            if (v174)
            {
              v90 = *(v174 + 1);
            }

            else
            {
              v90 = 0;
            }

            if (v173)
            {
              v93 = *(v173 + 4);
              if (v93 < 0)
              {
                goto LABEL_367;
              }
            }

            else
            {
              v93 = 0;
            }

            v43 = __OFADD__(v93, 12);
            v94 = v93 + 12;
            v95 = v43;
            if ((v90 & 0x80000000) == 0 && (v95 & 1) == 0)
            {
              v43 = __OFADD__(v90, v94);
              v96 = v90 + v94;
              if (!v43)
              {
                v97 = (v96 + 11);
                if (!__OFADD__(v96, 11))
                {
                  if (v174)
                  {
                    v98 = *(v174 + 4);
                    v99 = (v98 >> 2) & 1;
                    if (!v173 || (v98 & 4) == 0)
                    {
LABEL_200:
                      WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v97, v99, "Expected a ", 0xBuLL, v174, ", but got a ", 0xCuLL, &v178, v173);
                      v101 = v178;
                      if (v178)
                      {
                        v102 = v173;
                        v173 = 0;
                        if (v102 && atomic_fetch_add_explicit(v102, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v102, v18);
                        }

                        v103 = v174;
                        v174 = 0;
                        if (v103 && atomic_fetch_add_explicit(v103, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v103, v18);
                        }

                        v104 = v58 | ((*(a2 + 96) - v58) << 32);
                        v167 = v101;
                        *&v168 = v76;
                        *(&v168 + 1) = v104;
                        v92 = 1;
LABEL_208:
                        v169 = v92;
                        if (v177 != 255)
                        {
                          if (!v177 && *v175 == 8)
                          {
                            v105 = v176;
                            v176 = 0;
                            if (v105)
                            {
                              if (atomic_fetch_add_explicit(v105, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v105, v18);
                              }
                            }
                          }

                          v92 = v169;
                        }

                        if (v92)
                        {
                          if (v167)
                          {
                            atomic_fetch_add_explicit(v167, 2u, memory_order_relaxed);
                            v162 = v167;
                            v163 = v168;
                            v164 = 1;
                            if (v169)
                            {
                              v106 = v167;
                              v167 = 0;
                              if (atomic_fetch_add_explicit(v106, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v106, v18);
                              }
                            }

LABEL_251:
                            if (v172)
                            {
                              if (v172 != 255)
                              {
                                v118 = v170;
                                v170 = 0;
                                if (v118)
                                {
                                  if (atomic_fetch_add_explicit(v118, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                  {
                                    WTF::StringImpl::destroy(v118, v18);
                                  }
                                }
                              }
                            }

                            if (!v162)
                            {
                              *a1 = 0;
                              result = *&v163;
                              *(a1 + 8) = v163;
                              *(a1 + 24) = 1;
                              return result;
                            }

                            atomic_fetch_add_explicit(v162, 2u, memory_order_relaxed);
                            *a1 = v162;
                            result = *&v163;
                            *(a1 + 8) = v163;
                            *(a1 + 24) = 1;
                            v119 = v162;
                            v162 = 0;
                            if (v119)
                            {
                              goto LABEL_349;
                            }

                            return result;
                          }

                          v162 = 0;
                          v163 = v168;
LABEL_250:
                          v164 = 1;
                          goto LABEL_251;
                        }

                        LOBYTE(v174) = v167;
                        if (*(a2 + 56) == 84)
                        {
                          goto LABEL_133;
                        }

LABEL_221:
                        WGSL::toString();
                        WGSL::toString();
                        if (v167)
                        {
                          v107 = *(v167 + 1);
                          if (v178)
                          {
                            goto LABEL_223;
                          }

LABEL_226:
                          v108 = 0;
                          goto LABEL_227;
                        }

                        v107 = 0;
                        if (!v178)
                        {
                          goto LABEL_226;
                        }

LABEL_223:
                        v108 = *(v178 + 4);
                        if (v108 < 0)
                        {
LABEL_365:
                          __break(0xC471u);
                          JUMPOUT(0x225788490);
                        }

LABEL_227:
                        v43 = __OFADD__(v108, 12);
                        v109 = v108 + 12;
                        v110 = v43;
                        if (v107 < 0)
                        {
                          goto LABEL_365;
                        }

                        if (v110)
                        {
                          goto LABEL_365;
                        }

                        v43 = __OFADD__(v107, v109);
                        v111 = v107 + v109;
                        if (v43)
                        {
                          goto LABEL_365;
                        }

                        v112 = (v111 + 11);
                        if (__OFADD__(v111, 11))
                        {
                          goto LABEL_365;
                        }

                        if (v167)
                        {
                          v113 = *(v167 + 4);
                          v114 = (v113 >> 2) & 1;
                          if (!v178 || (v113 & 4) == 0)
                          {
LABEL_241:
                            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v112, v114, "Expected a ", 0xBuLL, v167, ", but got a ", 0xCuLL, v175, v178);
                            v115 = *v175;
                            if (!*v175)
                            {
                              goto LABEL_365;
                            }

                            v116 = v178;
                            v178 = 0;
                            if (v116 && atomic_fetch_add_explicit(v116, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v116, v18);
                            }

                            v117 = v167;
                            v167 = 0;
                            if (v117 && atomic_fetch_add_explicit(v117, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v117, v18);
                            }

                            v75 = v9 | ((*(a2 + 96) - v9) << 32);
                            v162 = v115;
LABEL_249:
                            *&v163 = v157;
                            *(&v163 + 1) = v75;
                            goto LABEL_250;
                          }
                        }

                        else if (!v178)
                        {
                          v114 = 1;
                          goto LABEL_241;
                        }

                        v114 = (*(v178 + 16) >> 2) & 1;
                        goto LABEL_241;
                      }

                      goto LABEL_367;
                    }
                  }

                  else if (!v173)
                  {
                    v99 = 1;
                    goto LABEL_200;
                  }

                  v99 = (*(v173 + 16) >> 2) & 1;
                  goto LABEL_200;
                }
              }
            }

LABEL_367:
            __break(0xC471u);
            JUMPOUT(0x2257884A0);
          }

          if (v170 >= 5u)
          {
            v65 = 1;
          }

          else
          {
            v65 = 0x10001uLL >> (8 * v170);
          }

          LOBYTE(v174) = v65;
          if (v56 != 84)
          {
            goto LABEL_221;
          }

LABEL_133:
          while (2)
          {
            v68 = *(a2 + 36);
            v69 = (*(a2 + 40) + 1);
            *(a2 + 40) = v69;
            if (v68 <= v69)
            {
              __break(0xC471u);
              JUMPOUT(0x225788470);
            }

            v70 = *(a2 + 24) + 32 * v69;
            v66 = *v70;
            *(a2 + 56) = *v70;
            *(a2 + 60) = *(v70 + 4);
            v71 = *v70;
            if (*v70 <= 8u)
            {
              if (((1 << v71) & 0x38) != 0)
              {
                *(a2 + 80) = *(v70 + 24);
                goto LABEL_131;
              }

              if (((1 << v71) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v70 + 24);
                goto LABEL_131;
              }

              if (v71 == 8)
              {
                *(a2 + 80) = 0;
                v72 = *(v70 + 24);
                if (v72)
                {
                  atomic_fetch_add_explicit(v72, 2u, memory_order_relaxed);
                  v73 = *(a2 + 80);
                  *(a2 + 80) = v72;
                  if (v73)
                  {
                    if (atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v73, v18);
                    }
                  }
                }

LABEL_131:
                v66 = *(a2 + 56);
              }
            }

            v67 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v67;
            if (v66 != 82)
            {
              v74 = *(a2 + 8);
              *v175 = v157;
              *&v175[8] = v9;
              *&v175[12] = v67 - v9;
              WGSL::AST::Builder::construct<WGSL::AST::VariableQualifier,WGSL::SourceSpan,WGSL::AddressSpace &,WGSL::AccessMode &,void>(v74, v175, &v170, &v174);
            }

            continue;
          }
        }

        *v175 = v23;
        v177 = 1;
        WGSL::toString();
        WGSL::toString();
        if (v167)
        {
          v44 = *(v167 + 1);
          if (v178)
          {
LABEL_73:
            v45 = *(v178 + 4);
            if (v45 < 0)
            {
              goto LABEL_363;
            }

            v43 = __OFADD__(v45, 12);
            v46 = v45 + 12;
            v47 = v43;
            if (v44 < 0)
            {
              goto LABEL_363;
            }

LABEL_92:
            if (v47)
            {
              goto LABEL_363;
            }

            v43 = __OFADD__(v44, v46);
            v51 = v44 + v46;
            if (v43)
            {
              goto LABEL_363;
            }

            v52 = (v51 + 11);
            if (__OFADD__(v51, 11))
            {
              goto LABEL_363;
            }

            if (v167)
            {
              v53 = *(v167 + 4);
              v54 = (v53 >> 2) & 1;
              if (!v178 || (v53 & 4) == 0)
              {
                goto LABEL_163;
              }

LABEL_100:
              v54 = (*(v178 + 16) >> 2) & 1;
            }

            else
            {
              if (v178)
              {
                goto LABEL_100;
              }

              v54 = 1;
            }

LABEL_163:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v52, v54, "Expected a ", 0xBuLL, v167, ", but got a ", 0xCuLL, &v170, v178);
            v86 = v170;
            if (v170)
            {
              v87 = v178;
              v178 = 0;
              if (v87 && atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v87, v18);
              }

              v41 = v167;
              v167 = 0;
              if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                v41 = WTF::StringImpl::destroy(v41, v18);
              }

              v88 = v24 | ((*(a2 + 96) - v24) << 32);
              v170 = v86;
              *&v171 = v31;
              *(&v171 + 1) = v88;
              v49 = 1;
              v172 = 1;
              v55 = v177;
              if (v177 == 255)
              {
                goto LABEL_171;
              }

LABEL_103:
              if (!v55 && *v175 == 8)
              {
                v41 = v176;
                v176 = 0;
                if (v41)
                {
                  if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    v41 = WTF::StringImpl::destroy(v41, v18);
                  }
                }
              }

              v49 = v172;
              if (!v172)
              {
                goto LABEL_109;
              }

LABEL_172:
              if (v49 != 1)
              {
                goto LABEL_355;
              }

              v89 = v170;
              if (v170)
              {
                atomic_fetch_add_explicit(v170, 2u, memory_order_relaxed);
              }

              v163 = v171;
              v162 = v89;
              goto LABEL_250;
            }

LABEL_363:
            __break(0xC471u);
            JUMPOUT(0x225788480);
          }
        }

        else
        {
          v44 = 0;
          if (v178)
          {
            goto LABEL_73;
          }
        }

        v46 = 12;
        v47 = v43;
        if ((v44 & 0x80000000) == 0)
        {
          goto LABEL_92;
        }

        goto LABEL_363;
      }
    }
  }

  v159 = 1;
  v16 = 1;
  v166 = 1;
  v165 = 0;
  if (v8 == 83)
  {
    goto LABEL_32;
  }

LABEL_64:
  v41 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v175, a2);
  if (v177)
  {
    if (v177 == 1)
    {
      v42 = *v175;
      if (*v175)
      {
        atomic_fetch_add_explicit(*v175, 2u, memory_order_relaxed);
      }

      result = *&v175[8];
      *(a1 + 8) = *&v175[8];
      *a1 = v42;
      goto LABEL_343;
    }

    goto LABEL_355;
  }

  v167 = 0;
  v120 = *(a2 + 56);
  if (v120 != 47)
  {
    v129 = v16;
    v130 = 0;
    v162 = 0;
    if ((v159 & 1) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_275;
  }

  while (2)
  {
    v123 = *(a2 + 36);
    v124 = (*(a2 + 40) + 1);
    *(a2 + 40) = v124;
    if (v123 <= v124)
    {
      __break(0xC471u);
      JUMPOUT(0x225788460);
    }

    v125 = *(a2 + 24) + 32 * v124;
    v121 = *v125;
    *(a2 + 56) = *v125;
    *(a2 + 60) = *(v125 + 4);
    v126 = *v125;
    if (*v125 <= 8u)
    {
      if (((1 << v126) & 0x38) != 0)
      {
        *(a2 + 80) = *(v125 + 24);
        goto LABEL_262;
      }

      if (((1 << v126) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v125 + 24);
        goto LABEL_262;
      }

      if (v126 == 8)
      {
        *(a2 + 80) = 0;
        v127 = *(v125 + 24);
        if (v127)
        {
          atomic_fetch_add_explicit(v127, 2u, memory_order_relaxed);
          v128 = *(a2 + 80);
          *(a2 + 80) = v127;
          if (v128)
          {
            if (atomic_fetch_add_explicit(v128, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v128, v18);
            }
          }
        }

LABEL_262:
        v121 = *(a2 + 56);
      }
    }

    v122 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v122;
    if (v121 == 82)
    {
      continue;
    }

    break;
  }

  v41 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeName(&v170, a2);
  if (!v172)
  {
    v129 = v16;
    v167 = v170;
    v130 = v170 != 0;
    v120 = *(a2 + 56);
    v162 = 0;
    if ((v159 & 1) == 0)
    {
LABEL_289:
      if (v120 != 49)
      {
        if (!v130)
        {
          goto LABEL_312;
        }

        goto LABEL_310;
      }

      while (1)
      {
LABEL_294:
        v138 = *(a2 + 36);
        v139 = (*(a2 + 40) + 1);
        *(a2 + 40) = v139;
        if (v138 <= v139)
        {
          __break(0xC471u);
          JUMPOUT(0x225788468);
        }

        v140 = *(a2 + 24) + 32 * v139;
        v136 = *v140;
        *(a2 + 56) = *v140;
        *(a2 + 60) = *(v140 + 4);
        v141 = *v140;
        if (*v140 > 8u)
        {
          goto LABEL_293;
        }

        if (((1 << v141) & 0x38) != 0)
        {
          *(a2 + 80) = *(v140 + 24);
        }

        else if (((1 << v141) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v140 + 24);
        }

        else
        {
          if (v141 != 8)
          {
            goto LABEL_293;
          }

          *(a2 + 80) = 0;
          v142 = *(v140 + 24);
          if (v142)
          {
            atomic_fetch_add_explicit(v142, 2u, memory_order_relaxed);
            v143 = *(a2 + 80);
            *(a2 + 80) = v142;
            if (v143)
            {
              if (atomic_fetch_add_explicit(v143, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v143, v18);
              }
            }
          }
        }

        v136 = *(a2 + 56);
LABEL_293:
        v137 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v137;
        if (v136 != 82)
        {
          v41 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v170, a2);
          if (v172)
          {
            if (v172 == 1)
            {
              v135 = v170;
              if (v170)
              {
                atomic_fetch_add_explicit(v170, 2u, memory_order_relaxed);
                *a1 = v135;
                result = *&v171;
                *(a1 + 8) = v171;
                *(a1 + 24) = 1;
                if (atomic_fetch_add_explicit(v135, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  goto LABEL_308;
                }

                goto LABEL_344;
              }

LABEL_353:
              *a1 = 0;
              result = *&v171;
              *(a1 + 8) = v171;
LABEL_343:
              *(a1 + 24) = 1;
              goto LABEL_344;
            }

LABEL_355:
            mpark::throw_bad_variant_access(v41);
          }

          v162 = v170;
          if (!v130 && v170 == 0)
          {
LABEL_312:
            if (v129 <= 2)
            {
              if (v129 == 2)
              {
                v146 = "override";
                v147 = 8;
                goto LABEL_316;
              }

              if (!v129)
              {
                __break(0xC471u);
                JUMPOUT(0x2257884CCLL);
              }

              __break(0xC471u);
LABEL_372:
              JUMPOUT(0x225788448);
            }

            v146 = "var";
            v147 = 3;
LABEL_316:
            WTF::tryFastCompactMalloc(&v170, (v147 + 63));
            v148 = v170;
            if (!v170)
            {
              __break(0xC471u);
              JUMPOUT(0x2257884A8);
            }

            *v170 = 2;
            *(v148 + 1) = v147 + 43;
            *(v148 + 1) = v148 + 20;
            *(v148 + 4) = 4;
            memcpy(v148 + 20, v146, v147);
            qmemcpy(v148 + v147 + 20, " declaration requires a type or initializer", 43);
            result = *"e or initializer";
            v149 = v6 | ((*(a2 + 96) - v6) << 32);
            *a1 = v148;
LABEL_342:
            *(a1 + 8) = v5;
            *(a1 + 16) = v149;
            goto LABEL_343;
          }

LABEL_310:
          v144 = *(a2 + 8);
          v145 = *(a2 + 96) - v6;
          v170 = v5;
          *&v171 = __PAIR64__(v145, v6);
          WGSL::AST::Builder::construct<WGSL::AST::Variable,WGSL::SourceSpan,WGSL::AST::VariableFlavor &,WGSL::AST::Identifier,WGSL::AST::VariableQualifier *,WGSL::AST::Expression *,WGSL::AST::Expression *,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,void>(v144, &v170, &v166, v175, &v165, &v167, &v162, a3);
        }
      }
    }

LABEL_275:
    if (v120 == 49)
    {
      goto LABEL_294;
    }

    WGSL::toString();
    WGSL::toString();
    if (v161)
    {
      v131 = *(v161 + 1);
      if (v160)
      {
        goto LABEL_278;
      }
    }

    else
    {
      v131 = 0;
      if (v160)
      {
LABEL_278:
        v132 = *(v160 + 1);
        if (v132 < 0)
        {
          goto LABEL_366;
        }

LABEL_320:
        v43 = __OFADD__(v132, 12);
        v150 = v132 + 12;
        v151 = v43;
        if (v131 < 0)
        {
          goto LABEL_366;
        }

        if (v151)
        {
          goto LABEL_366;
        }

        v43 = __OFADD__(v131, v150);
        v152 = v131 + v150;
        if (v43)
        {
          goto LABEL_366;
        }

        v153 = (v152 + 11);
        if (__OFADD__(v152, 11))
        {
          goto LABEL_366;
        }

        if (v161)
        {
          v154 = *(v161 + 4);
          v155 = (v154 >> 2) & 1;
          if (!v160 || (v154 & 4) == 0)
          {
LABEL_334:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v153, v155, "Expected a ", 0xBuLL, v161, ", but got a ", 0xCuLL, &v170, v160);
            v156 = v170;
            if (v170)
            {
              if (v160 && atomic_fetch_add_explicit(v160, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v160, v18);
              }

              if (v161 && atomic_fetch_add_explicit(v161, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v161, v18);
              }

              v149 = v6 | ((*(a2 + 96) - v6) << 32);
              *a1 = v156;
              goto LABEL_342;
            }

LABEL_366:
            __break(0xC471u);
            JUMPOUT(0x225788498);
          }
        }

        else if (!v160)
        {
          v155 = 1;
          goto LABEL_334;
        }

        v155 = (*(v160 + 16) >> 2) & 1;
        goto LABEL_334;
      }
    }

    v132 = 0;
    goto LABEL_320;
  }

  if (v172 != 1)
  {
    goto LABEL_355;
  }

  v133 = v170;
  if (!v170)
  {
    goto LABEL_353;
  }

  atomic_fetch_add_explicit(v170, 2u, memory_order_relaxed);
  v134 = v172;
  *a1 = v133;
  result = *&v171;
  *(a1 + 8) = v171;
  *(a1 + 24) = 1;
  if (v134)
  {
    if (v134 != 255)
    {
      v135 = v170;
      v170 = 0;
      if (v135)
      {
        if (atomic_fetch_add_explicit(v135, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
LABEL_308:
          WTF::StringImpl::destroy(v135, v18);
        }
      }
    }
  }

LABEL_344:
  if (v177 == 255)
  {
    return result;
  }

  if (v177)
  {
    goto LABEL_348;
  }

  v119 = v176;
  *v175 = off_2838D37C0;
  v176 = 0;
  if (!v119)
  {
    return result;
  }

LABEL_349:
  if (atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v119, v18);
  }

  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeName(uint64_t a1, uint64_t a2)
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
      result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseArrayType(a1, a2);
      v10 = v16;
      if (v16 == 255)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeNameAfterIdentifier(a1, a2, &v13, v4, v5);
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

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<char16_t>>::parseArrayType(uint64_t a1, uint64_t a2)
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
  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeName(&v53, a2);
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
          JUMPOUT(0x225788C34);
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
          JUMPOUT(0x225788C2CLL);
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
      JUMPOUT(0x225788C3CLL);
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

  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v50, a2);
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

WTF *WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeNameAfterIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl *a4, unsigned int a5)
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
      JUMPOUT(0x22578922CLL);
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
    v24 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeName(&v66, a2);
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
        JUMPOUT(0x225789234);
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
    JUMPOUT(0x225789224);
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

atomic_uint *WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(WTF::StringImpl **a1, uint64_t a2)
{
  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseUnaryExpression(&v31, a2);
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
        result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseUnaryExpression(&v34, a2);
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

  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseRelationalExpressionPostUnary(&v34, a2, &v31);
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
    result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseShortCircuitExpression(&v28, a2, &v34, 37, 16);
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

  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseShortCircuitExpression(&v28, a2, &v34, 65, 17);
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

atomic_uint *WGSL::Parser<WGSL::Lexer<char16_t>>::parseUnaryExpression(uint64_t a1, uint64_t a2)
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
    JUMPOUT(0x22578A8B0);
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
                JUMPOUT(0x22578A858);
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
              JUMPOUT(0x22578A888);
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
            JUMPOUT(0x22578A878);
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
              JUMPOUT(0x22578A868);
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
          JUMPOUT(0x22578A870);
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
              JUMPOUT(0x22578A860);
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
              result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(v145, a2);
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
                    JUMPOUT(0x22578A8C8);
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
              JUMPOUT(0x22578A850);
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
            JUMPOUT(0x22578A890);
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
          JUMPOUT(0x22578A880);
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
        result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseArrayType(&v142, a2);
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

        result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseArgumentExpressionList(&v139, a2);
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

        result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeNameAfterIdentifier(&v142, a2, v145, v4, v5);
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
          result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseArgumentExpressionList(&v139, a2);
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
        result = WGSL::Parser<WGSL::Lexer<char16_t>>::parsePostfixExpression(a1, a2, v135, v4, v5);
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
        JUMPOUT(0x22578A8B8);
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
    JUMPOUT(0x22578A8C0);
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
  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseUnaryExpression(v145, a2);
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

mpark *WGSL::Parser<WGSL::Lexer<char16_t>>::parseRelationalExpressionPostUnary(uint64_t a1, uint64_t a2, WTF::StringImpl **a3)
{
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseShiftExpressionPostUnary(&v31, a2, a3);
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
  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseUnaryExpression(&v37, a2);
  if (!v39)
  {
    result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseShiftExpressionPostUnary(&v34, a2, &v37);
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

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<char16_t>>::parseShortCircuitExpression(WTF::StringImpl *result, uint64_t a2, WTF::StringImpl **a3, int a4, char a5)
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
  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseUnaryExpression(&v36, a2);
  if (!v38)
  {
    result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseRelationalExpressionPostUnary(&v33, a2, &v36);
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