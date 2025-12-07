uint64_t *mlir::parseType(uint64_t ***a1, uint64_t **a2, uint64_t **a3, uint64_t ***a4, int a5)
{
  if (a5)
  {
    llvm::MemoryBuffer::getMemBuffer(a1, a2, a1, a2, &v51);
  }

  else
  {
    v70 = 261;
    v68 = a1;
    v69[0] = a2;
    llvm::MemoryBuffer::getMemBufferCopy(a1, a2, &v68, &v51);
  }

  llvm::SourceMgr::SourceMgr(&v48);
  v9 = v51;
  v51 = 0;
  v69[1] = 0;
  v69[0] = 0;
  v68 = v9;
  if (v49 >= v50)
  {
    v10 = sub_10003D320(&v48, &v68);
  }

  else
  {
    v10 = llvm::SourceMgr::SrcBuffer::SrcBuffer(v49, &v68) + 3;
  }

  v49 = v10;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v68);
  v43[0] = 0;
  v43[1] = 0;
  v43[2] = 0x1000000000;
  v43[3] = 0;
  v43[4] = 0;
  v43[5] = 0x1000000000;
  v43[6] = 0;
  v43[7] = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v86 = a3;
  v87 = 1;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = v94;
  v93 = 0x600000000;
  v94[6] = &v95;
  v94[7] = 0x600000000;
  v68 = &v86;
  mlir::Lexer::Lexer(v69, &v48, a3, 0);
  mlir::Lexer::lexToken(&v71, v69);
  v73 = 1;
  v74 = "";
  v75 = 0;
  v78 = 0;
  v76 = v43;
  v77 = 0;
  v79 = 0;
  v80 = v82;
  v81 = 0;
  v82[1] = 0;
  v82[0] = 0;
  v85[0] = "builtin";
  v85[1] = 7;
  v83 = v85;
  v84 = 0x300000001;
  v41 = *v68;
  v42 = &v68;
  v39 = v71;
  v40 = v72;
  v11 = mlir::detail::Parser::parseType(&v41);
  if (v11)
  {
    v37 = *(v42 + 7);
    v38 = v42[9];
    Loc = mlir::Token::getLoc(&v37);
    v13 = (Loc - mlir::Token::getLoc(&v39));
    if (a4)
    {
      *a4 = v13;
    }

    else if (v13 != a2)
    {
      v14 = mlir::Token::getLoc(&v37);
      v36 = 257;
      mlir::detail::Parser::emitError(&v41, v14, v35, &v56);
      if (v56)
      {
        LODWORD(v52) = 3;
        v53 = "found trailing characters: '";
        v54 = 28;
        v15 = &v52;
        v16 = v58;
        if (v59 >= v60)
        {
          if (v58 <= &v52 && v58 + 24 * v59 > &v52)
          {
            v33 = &v52 - v58;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
            v16 = v58;
            v15 = (v58 + v33);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
            v15 = &v52;
            v16 = v58;
          }
        }

        v17 = &v16[24 * v59];
        v18 = *v15;
        *(v17 + 2) = v15[2];
        *v17 = v18;
        ++v59;
        if (v56)
        {
          v19 = a2 >= v13 ? v13 : a2;
          v55 = 261;
          v52 = v19 + a1;
          v53 = (a2 - v19);
          mlir::Diagnostic::operator<<(&v57, &v52);
          if (v56)
          {
            LODWORD(v52) = 3;
            v53 = "'";
            v54 = 1;
            v20 = &v52;
            v21 = v58;
            if (v59 >= v60)
            {
              if (v58 <= &v52 && v58 + 24 * v59 > &v52)
              {
                v34 = &v52 - v58;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
                v21 = v58;
                v20 = (v58 + v34);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
                v20 = &v52;
                v21 = v58;
              }
            }

            v22 = &v21[24 * v59];
            v23 = *v20;
            *(v22 + 2) = v20[2];
            *v22 = v23;
            ++v59;
            if (v56)
            {
              mlir::InFlightDiagnostic::report(&v56);
            }
          }
        }
      }

      if (v67 == 1)
      {
        if (v66 != &v67)
        {
          free(v66);
        }

        v24 = __p;
        if (__p)
        {
          v25 = v65;
          v26 = __p;
          if (v65 != __p)
          {
            do
            {
              v25 = sub_10005BEF4(v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v65 = v24;
          operator delete(v26);
        }

        v27 = v62;
        if (v62)
        {
          v28 = v63;
          v29 = v62;
          if (v63 != v62)
          {
            do
            {
              v30 = *--v28;
              *v28 = 0;
              if (v30)
              {
                operator delete[]();
              }
            }

            while (v28 != v27);
            v29 = v62;
          }

          v63 = v27;
          operator delete(v29);
        }

        if (v58 != v61)
        {
          free(v58);
        }
      }

      v11 = 0;
    }
  }

  if (v83 != v85)
  {
    free(v83);
  }

  if (v80 != v82)
  {
    free(v80);
  }

  llvm::deallocate_buffer(v77, (8 * v79), 8uLL);
  sub_10005C084(&v86);
  sub_10005C208(v43);
  llvm::SourceMgr::~SourceMgr(&v48);
  v31 = v51;
  v51 = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  return v11;
}

uint64_t sub_10006BAFC(uint64_t a1, mlir::InFlightDiagnostic *this)
{
  v4 = *this;
  *(a1 + 8) = 0;
  *a1 = v4;
  *(a1 + 200) = 0;
  v5 = (a1 + 200);
  if (*(this + 200) == 1)
  {
    v6 = *(this + 1);
    *(a1 + 16) = *(this + 4);
    *(a1 + 8) = v6;
    *(a1 + 24) = a1 + 40;
    v7 = a1 + 24;
    *(a1 + 32) = 0x400000000;
    if (*(this + 8))
    {
      sub_1000B153C(v7, this + 3);
    }

    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = *(this + 136);
    *(a1 + 152) = *(this + 19);
    *(this + 17) = 0;
    *(this + 18) = 0;
    *(this + 19) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 160) = *(this + 10);
    *(a1 + 176) = *(this + 22);
    *(this + 20) = 0;
    *(this + 21) = 0;
    *(this + 22) = 0;
    *(a1 + 184) = v5;
    *(a1 + 192) = 0;
    if (*(this + 48))
    {
      sub_1000B153C(a1 + 184, this + 23);
    }

    *v5 = 1;
    if (*(this + 200))
    {
      sub_10005BE10(this + 1);
      *(this + 200) = 0;
    }
  }

  mlir::InFlightDiagnostic::abandon(this);
  return a1;
}

void *sub_10006BC04(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    sub_100299524();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v11 = *result;
  {
    v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    v22 = v11;
    v24 = result;
    sub_100299524();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v13 = *(v22 + 8);
    v14 = *(v22 + 16);
    if (!v14)
    {
      return result;
    }
  }

  v15 = v13;
  v16 = v14;
  do
  {
    v17 = v16 >> 1;
    v18 = &v15[2 * (v16 >> 1)];
    v20 = *v18;
    v19 = v18 + 2;
    v16 += ~(v16 >> 1);
    if (v20 < v12)
    {
      v15 = v19;
    }

    else
    {
      v16 = v17;
    }
  }

  while (v16);
  return result;
}

uint64_t sub_10006BD98(uint64_t a1, uint64_t a2)
{
  {
    sub_100299578();
  }

  return llvm::getTypeName<mlir::TypedAttr>(void)::Name;
}

const char *sub_10006BDE0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::TypedAttr]";
  v6 = 77;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void sub_10006BE64(mlir::DialectAsmParser *a1)
{
  mlir::DialectAsmParser::~DialectAsmParser(a1);

  operator delete();
}

BOOL sub_10006BEDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '->'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 13, &v3);
}

BOOL sub_10006BF1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 13)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 13;
}

BOOL sub_10006BF94(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '{'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 20, &v3);
}

BOOL sub_10006BFD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 20)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 20;
}

BOOL sub_10006C04C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '}'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 27, &v3);
}

BOOL sub_10006C08C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 27)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 27;
}

BOOL sub_10006C104(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ':'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 15, &v3);
}

BOOL sub_10006C144(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 15)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 15;
}

BOOL sub_10006C1BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ','";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 16, &v3);
}

BOOL sub_10006C1FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 16)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 16;
}

BOOL sub_10006C274(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '='";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 18, &v3);
}

BOOL sub_10006C2B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 18)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 18;
}

BOOL sub_10006C32C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '<'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 23, &v3);
}

BOOL sub_10006C36C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 23)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 23;
}

BOOL sub_10006C3E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '>'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 19, &v3);
}

BOOL sub_10006C424(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 19)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 19;
}

BOOL sub_10006C49C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '?'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 26, &v3);
}

BOOL sub_10006C4DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 26)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 26;
}

BOOL sub_10006C554(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '+'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 25, &v3);
}

BOOL sub_10006C594(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 25)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 25;
}

BOOL sub_10006C60C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '-'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 24, &v3);
}

BOOL sub_10006C64C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 24)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 24;
}

BOOL sub_10006C6C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '*'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 30, &v3);
}

BOOL sub_10006C704(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 30)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 30;
}

BOOL sub_10006C77C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '|'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 31, &v3);
}

BOOL sub_10006C7BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 31)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 31;
}

BOOL sub_10006C83C(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 40))(a1);
  v5 = a1[2];
  v6 = *(v5 + 8);
  if (*(v6 + 56) == 11)
  {
    if (a2)
    {
      v7 = *(v6 + 72);
      v35 = *(v6 + 64);
      v36 = v7;
      first_not_of = llvm::StringRef::find_first_not_of(&v35, "  \t\n\v\f\r", 8, 0);
      if (first_not_of >= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = first_not_of;
      }

      if (v36 < v9)
      {
        v9 = v36;
      }

      v10 = v36 - v9;
      *&v39 = v35 + v9;
      *(&v39 + 1) = v36 - v9;
      last_not_of = llvm::StringRef::find_last_not_of(&v39, " \t\n\v\f\r", 7, 0xFFFFFFFFFFFFFFFFLL);
      v12 = v10 - (last_not_of + 1);
      if (v10 < last_not_of + 1)
      {
        v12 = 0;
      }

      v13 = *(&v39 + 1) - v12;
      if (*(&v39 + 1) >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = *(&v39 + 1);
      }

      llvm::decodeBase64(v39, v14, a2, &v34);
      if (v34)
      {
        v32 = v34;
        v34 = 0;
        llvm::toString(&v32, &v33);
        v38 = 260;
        v37[0] = &v33;
        (*(*a1 + 24))(&v39, a1, v4, v37);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
        if (v39)
        {
          mlir::InFlightDiagnostic::report(&v39);
        }

        if (v48 == 1)
        {
          if (v47 != &v48)
          {
            free(v47);
          }

          v16 = __p;
          if (__p)
          {
            v17 = v46;
            v18 = __p;
            if (v46 != __p)
            {
              do
              {
                v17 = sub_10005BEF4(v17 - 1);
              }

              while (v17 != v16);
              v18 = __p;
            }

            v46 = v16;
            operator delete(v18);
          }

          v19 = v43;
          if (v43)
          {
            v20 = v44;
            v21 = v43;
            if (v44 != v43)
            {
              do
              {
                v22 = *--v20;
                *v20 = 0;
                if (v22)
                {
                  operator delete[]();
                }
              }

              while (v20 != v19);
              v21 = v43;
            }

            v44 = v19;
            operator delete(v21);
          }

          if (v41 != v42)
          {
            free(v41);
          }
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        if (v32)
        {
          (*(*v32 + 8))(v32);
        }

        if (v34)
        {
          (*(*v34 + 8))(v34);
        }

        return v15;
      }

      v5 = a1[2];
      v6 = *(v5 + 8);
    }

    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken(&v39, (*(v5 + 8) + 8));
    v30 = *(v5 + 8);
    *(v30 + 56) = v39;
    *(v30 + 72) = v40;
    return 1;
  }

  v37[0] = "expected string";
  v38 = 259;
  (*(*a1 + 24))(&v39, a1, v4, v37);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
  if (v39)
  {
    mlir::InFlightDiagnostic::report(&v39);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v46;
      v25 = __p;
      if (v46 != __p)
      {
        do
        {
          v24 = sub_10005BEF4(v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v46 = v23;
      operator delete(v25);
    }

    v26 = v43;
    if (v43)
    {
      v27 = v44;
      v28 = v43;
      if (v44 != v43)
      {
        do
        {
          v29 = *--v27;
          *v27 = 0;
          if (v29)
          {
            operator delete[]();
          }
        }

        while (v27 != v26);
        v28 = v43;
      }

      v44 = v26;
      operator delete(v28);
    }

    if (v41 != v42)
    {
      free(v41);
    }
  }

  return v15;
}

BOOL sub_10006CC90(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '('";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 21, &v3);
}

BOOL sub_10006CCD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 21)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 21;
}

BOOL sub_10006CD48(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ')'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 28, &v3);
}

BOOL sub_10006CD88(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 28)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 28;
}

BOOL sub_10006CE00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '['";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 22, &v3);
}

BOOL sub_10006CE40(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 22)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 22;
}

BOOL sub_10006CEB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ']'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 29, &v3);
}

BOOL sub_10006CEF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 29)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 29;
}

BOOL sub_10006CF70(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '...'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 17, &v3);
}

BOOL sub_10006CFB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 17)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 17;
}

uint64_t sub_10006D028(uint64_t a1, double *a2, uint64_t a3, unsigned int a4)
{
  v6 = llvm::detail::IEEEFloat::IEEEFloat(v17, 0.0, a2, a3, a4);
  v7 = llvm::APFloatBase::IEEEdouble(v6);
  llvm::APFloat::Storage::Storage(&v18, v17, v7);
  llvm::detail::IEEEFloat::~IEEEFloat(v17);
  v8 = (*(*a1 + 368))(a1, v7, &v18);
  if ((v8 & 1) == 0)
  {
    v12 = 0;
    v16 = v18;
    if (llvm::APFloatBase::PPCDoubleDouble(v8) != v16)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_10006E49C(&v19);
    return v12;
  }

  *a2 = llvm::APFloat::convertToDouble(&v18, v9, v10, v11);
  v12 = 1;
  v13 = v18;
  if (llvm::APFloatBase::PPCDoubleDouble(v14) == v13)
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(&v18);
  return v12;
}

uint64_t sub_10006D160(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *(v6 + 8);
  v8 = *(v7 + 56);
  if (v8 == 24)
  {
    *(v7 + 80) = *(v7 + 56);
    *(v7 + 96) = *(v7 + 72);
    v9 = v6;
    mlir::Lexer::lexToken(&v22, (*(v6 + 8) + 8));
    v10 = *(v9 + 8);
    *(v10 + 56) = v22;
    *(v10 + 72) = v23;
    v6 = *(a1 + 16);
    v7 = *(v6 + 8);
  }

  v18 = *(v7 + 56);
  v19 = *(v7 + 72);
  LOBYTE(v22) = 0;
  v24 = 0;
  v11 = mlir::detail::Parser::parseFloatFromLiteral(v6, &v22, &v18, v8 == 24, a2);
  v12 = 0;
  if (v11)
  {
    v14 = *(a1 + 16);
    v15 = *(v14 + 8);
    *(v15 + 80) = *(v15 + 56);
    *(v15 + 96) = *(v15 + 72);
    mlir::Lexer::lexToken(&v20, (*(v14 + 8) + 8));
    v16 = *(v14 + 8);
    *(v16 + 56) = v20;
    *(v16 + 72) = v21;
    v11 = sub_10006E554(a3, &v22);
    v12 = 1;
    if (v24 != 1)
    {
      return v12;
    }
  }

  else if (v24 != 1)
  {
    return v12;
  }

  v17 = v22;
  if (llvm::APFloatBase::PPCDoubleDouble(v11) == v17)
  {
    sub_10006E49C((&v22 + 8));
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v22);
  }

  return v12;
}

uint64_t sub_10006D334(void *a1, const char *a2, const char *a3, const char **a4)
{
  v26[0] = a2;
  v26[1] = a3;
  v5 = a1[2];
  if (*(*(v5 + 8) + 56) == 2)
  {
    return mlir::detail::Parser::codeCompleteExpectedTokens(v5, v26, 1);
  }

  v10 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 408))(a1, a2, a3))
  {
    return 1;
  }

  v24 = "expected '";
  v25 = 259;
  (*(*a1 + 24))(&v31, a1, v10, &v24);
  if (v31)
  {
    v30 = 261;
    v27 = a2;
    v28 = a3;
    mlir::Diagnostic::operator<<(v32, &v27);
    if (v31)
    {
      LODWORD(v27) = 3;
      v28 = "'";
      v29 = 1;
      v11 = &v27;
      v12 = v33;
      if (v34 >= v35)
      {
        if (v33 <= &v27 && v33 + 24 * v34 > &v27)
        {
          v23 = &v27 - v33;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
          v12 = v33;
          v11 = (v33 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
          v11 = &v27;
          v12 = v33;
        }
      }

      v13 = &v12[24 * v34];
      v14 = *v11;
      *(v13 + 2) = v11[2];
      *v13 = v14;
      ++v34;
      if (v31)
      {
        mlir::Diagnostic::operator<<(v32, a4);
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  v15 = result;
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
    result = v15;
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
      result = v15;
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = sub_10005BEF4(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
      result = v15;
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
      {
        do
        {
          v22 = *--v20;
          *v20 = 0;
          if (v22)
          {
            operator delete[]();
          }
        }

        while (v20 != v19);
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
      result = v15;
    }

    if (v33 != v36)
    {
      free(v33);
      return v15;
    }
  }

  return result;
}

uint64_t sub_10006D694(uint64_t a1, const void *a2, size_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v3 = *(a1 + 16);
  v4 = *(v3 + 8);
  v5 = *(v4 + 56);
  if (v5 == 12 || v5 == 3)
  {
    if (*(v4 + 72) != a3)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v5 == 2)
  {
    return mlir::detail::Parser::codeCompleteOptionalTokens(*(a1 + 16), v12, 1);
  }

  v9 = a2;
  v10 = a3;
  result = mlir::Token::isKeyword((v4 + 56));
  if (result)
  {
    v3 = *(a1 + 16);
    v4 = *(v3 + 8);
    a3 = v10;
    a2 = v9;
    if (*(v4 + 72) != v10)
    {
      return 0;
    }

LABEL_7:
    if (!a3 || !memcmp(*(v4 + 64), a2, a3))
    {
      *(v4 + 80) = *(v4 + 56);
      *(v4 + 96) = *(v4 + 72);
      mlir::Lexer::lexToken(&v13, (*(v3 + 8) + 8));
      v11 = *(v3 + 8);
      *(v11 + 56) = v13;
      *(v11 + 72) = v14;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006D7CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *(v7 + 8);
  v9 = *(v8 + 56);
  if (v9 != 12 && v9 != 3)
  {
    if (v9 == 2)
    {
      v15 = *(a1 + 16);

      return mlir::detail::Parser::codeCompleteOptionalTokens(v15, a3, a4);
    }

    result = mlir::Token::isKeyword((v8 + 56));
    if (!result)
    {
      return result;
    }

    v7 = *(a1 + 16);
    v8 = *(v7 + 8);
    v12 = *(v8 + 64);
    v11 = *(v8 + 72);
    if (!a4)
    {
      goto LABEL_19;
    }

LABEL_7:
    if (v11)
    {
      v13 = 16 * a4;
      for (i = a3; *(i + 8) != v11 || memcmp(*i, v12, v11); i += 16)
      {
        v13 -= 16;
        if (!v13)
        {
          return 0;
        }
      }
    }

    else
    {
      v19 = 16 * a4;
      for (i = a3; *(i + 8); i += 16)
      {
        v19 -= 16;
        if (!v19)
        {
          return 0;
        }
      }
    }

    goto LABEL_20;
  }

  v12 = *(v8 + 64);
  v11 = *(v8 + 72);
  if (a4)
  {
    goto LABEL_7;
  }

LABEL_19:
  i = a3;
LABEL_20:
  if (i == a3 + 16 * a4)
  {
    return 0;
  }

  *a2 = v12;
  a2[1] = v11;
  *(v8 + 80) = *(v8 + 56);
  *(v8 + 96) = *(v8 + 72);
  mlir::Lexer::lexToken(&v20, (*(v7 + 8) + 8));
  v18 = *(v7 + 8);
  *(v18 + 56) = v20;
  *(v18 + 72) = v21;
  return 1;
}

BOOL sub_10006D95C(uint64_t a1, mlir::detail::Parser **a2, uint64_t *a3, unsigned int a4)
{
  v5 = mlir::detail::Parser::parseAttribute(*(a1 + 16), a3, a3, a4);
  *a2 = v5;
  return v5 != 0;
}

uint64_t sub_10006D994(uint64_t a1, mlir::detail::Parser **a2, uint64_t *a3, uint64_t (*a4)(uint64_t, mlir::detail::Parser **, uint64_t *), uint64_t a5)
{
  v6 = *(a1 + 16);
  if (*(*(v6 + 8) + 56) == 5)
  {
    v8 = mlir::detail::Parser::parseAttribute(v6, a3, a3, a4);
    *a2 = v8;
    return v8 != 0;
  }

  else
  {

    return a4(a5, a2, a3);
  }
}

BOOL sub_10006DA30(void *a1, mlir::NamedAttrList *a2)
{
  if (((*(*a1 + 408))(a1, "attributes", 10) & 1) == 0)
  {
    return 1;
  }

  v4 = a1[2];

  return mlir::detail::Parser::parseAttributeDict(v4, a2);
}

uint64_t sub_10006DAD0(void *a1, uint64_t *a2)
{
  v2 = *(a1[2] + 8);
  v19 = *(v2 + 56);
  v20 = *(v2 + 72);
  if (v19 != 4)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  mlir::Token::getSymbolReference(&v19, __p);
  v18 = 260;
  *&v16 = __p;
  *a2 = mlir::Builder::getStringAttr(v5, &v16, v6);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = a1[2];
  v8 = *(v7 + 8);
  *(v8 + 80) = *(v8 + 56);
  *(v8 + 96) = *(v8 + 72);
  mlir::Lexer::lexToken(&v16, (*(v7 + 8) + 8));
  v9 = *(v7 + 8);
  *(v9 + 56) = v16;
  *(v9 + 72) = v17;
  v10 = *(*(a1[2] + 8) + 152);
  if (v10)
  {
    v11 = mlir::SymbolRefAttr::get(*a2);
    *&v16 = mlir::Token::getLocRange(&v19);
    *(&v16 + 1) = v12;
    mlir::AsmParserState::addUses(v10, v11, &v16, 1);
  }

  return 1;
}

BOOL sub_10006DC44(uint64_t a1, uint64_t **a2)
{
  v3 = mlir::detail::Parser::parseType(*(a1 + 16));
  *a2 = v3;
  return v3 != 0;
}

uint64_t sub_10006DC78(uint64_t a1, uint64_t **a2, uint64_t (*a3)(uint64_t, uint64_t **), uint64_t a4)
{
  v5 = *(a1 + 16);
  if (*(*(v5 + 1) + 56) == 8)
  {
    v7 = mlir::detail::Parser::parseType(v5);
    *a2 = v7;
    return v7 != 0;
  }

  else
  {

    return a3(a4, a2);
  }
}

uint64_t sub_10006DCD8(void *a1, unsigned int *a2)
{
  if ((*(*a1 + 56))(a1))
  {
    return mlir::detail::Parser::parseFunctionResultTypes(a1[2], a2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006DD44(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 13)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken(&v8, (*(v2 + 8) + 8));
  v6 = *(v2 + 8);
  *(v6 + 56) = v8;
  *(v6 + 72) = v9;
  return mlir::detail::Parser::parseFunctionResultTypes(*(a1 + 16), a2);
}

BOOL sub_10006DDE8(uint64_t a1, uint64_t **a2)
{
  v4 = *(a1 + 16);
  v7 = "expected ':'";
  v8 = 259;
  if (!mlir::detail::Parser::parseToken(v4, 15, &v7))
  {
    return 0;
  }

  v5 = mlir::detail::Parser::parseType(*(a1 + 16));
  *a2 = v5;
  return v5 != 0;
}

BOOL sub_10006DE64(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v6 = "expected ':'";
  v7 = 259;
  return mlir::detail::Parser::parseToken(v4, 15, &v6) && mlir::detail::Parser::parseTypeListNoParens(*(a1 + 16), a2);
}

BOOL sub_10006DED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 15)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken(&v8, (*(v2 + 8) + 8));
  v6 = *(v2 + 8);
  *(v6 + 56) = v8;
  *(v6 + 72) = v9;
  return mlir::detail::Parser::parseTypeListNoParens(*(a1 + 16), a2);
}

void sub_10006DF8C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (sub_10006E654(a2))
  {
    v6 = sub_10006E654(a2);
    __p = 0uLL;
    v35 = 0;
    mlir::detail::Parser::parseResourceHandle(*(a1 + 16), v6, &__p, a3);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p.i64[0]);
    }
  }

  else
  {
    v7 = *(a1 + 16);
    v29 = 257;
    mlir::detail::Parser::emitError(&__p, v7, v28);
    if (!__p.i64[0])
    {
      goto LABEL_11;
    }

    LODWORD(v30) = 3;
    v31 = "dialect '";
    v32 = 9;
    v8 = &v30;
    v9 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v30 && v36 + 24 * v37 > &v30)
      {
        v26 = &v30 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v9 = v36;
        v8 = (v36 + v26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v8 = &v30;
        v9 = v36;
      }
    }

    v10 = &v9[24 * v37];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    ++v37;
    if (__p.i64[0] && (v12 = *(a2 + 8), v13 = *(a2 + 16), v33 = 261, v30 = v12, v31 = v13, mlir::Diagnostic::operator<<(&__p.i64[1], &v30), __p.i64[0]))
    {
      LODWORD(v30) = 3;
      v31 = "' does not expect resource handles";
      v32 = 34;
      v14 = &v30;
      v15 = v36;
      if (v37 >= v38)
      {
        if (v36 <= &v30 && v36 + 24 * v37 > &v30)
        {
          v27 = &v30 - v36;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
          v15 = v36;
          v14 = (v36 + v27);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
          v14 = &v30;
          v15 = v36;
        }
      }

      v16 = &v15[24 * v37];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v37;
      v18 = __p.i64[0];
      *a3 = 0;
      a3[24] = 0;
      if (v18)
      {
        mlir::InFlightDiagnostic::report(&__p);
      }
    }

    else
    {
LABEL_11:
      *a3 = 0;
      a3[24] = 0;
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v19 = v42;
      if (v42)
      {
        v20 = v43;
        v21 = v42;
        if (v43 != v42)
        {
          do
          {
            v20 = sub_10005BEF4(v20 - 1);
          }

          while (v20 != v19);
          v21 = v42;
        }

        v43 = v19;
        operator delete(v21);
      }

      v22 = v40;
      if (v40)
      {
        v23 = v41;
        v24 = v40;
        if (v41 != v40)
        {
          do
          {
            v25 = *--v23;
            *v23 = 0;
            if (v25)
            {
              operator delete[]();
            }
          }

          while (v23 != v22);
          v24 = v40;
        }

        v41 = v22;
        operator delete(v24);
      }

      if (v36 != v39)
      {
        free(v36);
      }
    }
  }
}

uint64_t sub_10006E300(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(*(a1 + 16) + 8);
  sub_10006E7E0((v2 + 112), &v7, &v8);
  result = v9;
  if (v9 == 1)
  {
    v4 = v7;
    v5 = *(v2 + 144);
    if (v5 >= *(v2 + 148))
    {
      v6 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 136, (v2 + 152), v5 + 1, 8);
      result = v6;
      LODWORD(v5) = *(v2 + 144);
    }

    *(*(v2 + 136) + 8 * v5) = v4;
    ++*(v2 + 144);
  }

  return result;
}

uint64_t sub_10006E398(uint64_t result)
{
  v1 = *(*(result + 16) + 8);
  v2 = v1[16].i32[0];
  if (v2)
  {
    v3 = v1[14];
    v4 = v1[18].u32[0];
    v5 = *(*&v1[17] + 8 * v4 - 8);
    v6 = v2 - 1;
    v7 = ((v5 >> 4) ^ (v5 >> 9)) & (v2 - 1);
    v8 = *(*&v3 + 8 * v7);
    if (v5 == v8)
    {
LABEL_3:
      *(*&v3 + 8 * v7) = -8192;
      v1[15] = vadd_s32(v1[15], 0x1FFFFFFFFLL);
    }

    else
    {
      v9 = 1;
      while (v8 != -4096)
      {
        v10 = v7 + v9++;
        v7 = v10 & v6;
        v8 = *(*&v3 + 8 * v7);
        if (v5 == v8)
        {
          goto LABEL_3;
        }
      }
    }

    v1[18].i32[0] = v4 - 1;
  }

  else
  {
    --v1[18].i32[0];
  }

  return result;
}

BOOL sub_10006E438(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 16) + 8);
  if (*(v2 + 56) != 2 || *(v2 + 72))
  {
    return sub_10006EC0C(a1, a2);
  }

  *a2 = "";
  a2[1] = 0;
  return 1;
}

uint64_t sub_10006E46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 16);
  v4 = *(result + 8);
  if (*(v4 + 56) == 2 && !*(v4 + 72))
  {
    return mlir::detail::Parser::codeCompleteExpectedTokens(result, a2, a3);
  }

  return result;
}

llvm::APFloatBase *sub_10006E49C(llvm::APFloatBase *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 - 8);
    if (v2)
    {
      v3 = llvm::APFloatBase::PPCDoubleDouble(result);
      v4 = v1 + 24 * v2 - 24;
      v5 = -24 * v2;
      do
      {
        while (v3 == *v4)
        {
          sub_10006E49C((v4 + 8));
          v4 -= 24;
          v5 += 24;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

        llvm::detail::IEEEFloat::~IEEEFloat(v4);
        v4 -= 24;
        v5 += 24;
      }

      while (v5);
    }

LABEL_7:
    operator delete[]();
  }

  return result;
}

uint64_t sub_10006E554(uint64_t a1, const llvm::detail::IEEEFloat *a2)
{
  v4 = *a1;
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v8 = *a2;
  if (v5 != v4 && v5 != v8)
  {
    llvm::detail::IEEEFloat::operator=(a1, a2, v6, v7);
    return a1;
  }

  if (v5 != v4)
  {
    if (a1 == a2)
    {
      return a1;
    }

    v10 = v5;
    llvm::detail::IEEEFloat::~IEEEFloat(a1);
    v12 = a2;
    if (v10 != *a2)
    {
LABEL_9:
      llvm::detail::IEEEFloat::IEEEFloat(v11, v12);
      return a1;
    }

    goto LABEL_14;
  }

  if (v4 != v8)
  {
    if (a1 == a2)
    {
      return a1;
    }

    v14 = v5;
    sub_10006E49C((a1 + 8));
    v11 = a1;
    v12 = a2;
    if (v14 != *a2)
    {
      goto LABEL_9;
    }

LABEL_14:
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v11, v12);
    return a1;
  }

  llvm::detail::DoubleAPFloat::operator=(a1, a2, v6, v7);
  return a1;
}

uint64_t sub_10006E654(uint64_t a1)
{
  if (atomic_load_explicit(byte_1002E04E0, memory_order_acquire))
  {
    v1 = *(a1 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    v8 = a1;
    sub_1002995CC();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((qword_1002E04D8 >> 4) ^ (qword_1002E04D8 >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != qword_1002E04D8)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == qword_1002E04D8)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if (v3 == v1)
  {
    return 0;
  }

  return *(v2 + 16 * v3 + 8);
}

uint64_t sub_10006E718(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_1002E04F8, memory_order_acquire) & 1) == 0)
  {
    sub_100299620();
  }

  return qword_1002E04E8;
}

const char *sub_10006E760()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpAsmDialectInterface]";
  v6 = 89;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t *sub_10006E7E0@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 8 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 2);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 3) > v4 >> 3)
    {
      *(result + 2) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v5 = *result;
        v4 = *(result + 4);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    sub_10006E9F8(result, v4);
    sub_10006E954(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 2);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t sub_10006E954(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void sub_10006E9F8(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((8 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_41;
      }

      v13 = v12 + 1;
      v10 = &buffer->i8[8 * (v13 & 0x3FFFFFFFFFFFFFFCLL)];
      v14 = buffer + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != buffer + 8 * v11);
      }
    }

    if (v3)
    {
      v17 = 0;
      v18 = v11 - 1;
      v19 = v4;
      do
      {
        v28 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = ((v28 >> 4) ^ (v28 >> 9)) & v18;
          v27 = (*a1 + 8 * v29);
          v30 = *v27;
          if (v28 != *v27)
          {
            v31 = 0;
            v32 = 1;
            while (v30 != -4096)
            {
              if (v31)
              {
                v33 = 0;
              }

              else
              {
                v33 = v30 == -8192;
              }

              if (v33)
              {
                v31 = v27;
              }

              v34 = v29 + v32++;
              v29 = v34 & v18;
              v27 = (*a1 + 8 * (v34 & v18));
              v30 = *v27;
              if (v28 == *v27)
              {
                goto LABEL_23;
              }
            }

            if (v31)
            {
              v27 = v31;
            }
          }

LABEL_23:
          *v27 = v28;
          *(a1 + 8) = ++v17;
        }

        v19 = (v19 + 8);
      }

      while (v19 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v20 = *(a1 + 16);
    if (v20)
    {
      v21 = (v20 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v21 < 3)
      {
        goto LABEL_18;
      }

      v22 = v21 + 1;
      v10 = &buffer->i8[8 * (v22 & 0x3FFFFFFFFFFFFFFCLL)];
      v23 = buffer + 1;
      v24 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v25 = v22 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v23[-1] = v24;
        *v23 = v24;
        v23 += 2;
        v25 -= 4;
      }

      while (v25);
      if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_18:
        v26 = &buffer->i8[8 * v20];
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != v26);
      }
    }
  }
}

BOOL sub_10006EC0C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 416))(a1, a2))
  {
    return 1;
  }

  v14 = "expected valid keyword";
  v15 = 259;
  (*(*a1 + 24))(v16, a1, v4, &v14);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v22;
      v8 = __p;
      if (v22 != __p)
      {
        do
        {
          v7 = sub_10005BEF4(v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v22 = v6;
      operator delete(v8);
    }

    v9 = v19;
    if (v19)
    {
      v10 = v20;
      v11 = v19;
      if (v20 != v19)
      {
        do
        {
          v12 = *--v10;
          *v10 = 0;
          if (v12)
          {
            operator delete[]();
          }
        }

        while (v10 != v9);
        v11 = v19;
      }

      v20 = v9;
      operator delete(v11);
    }

    if (v17 != &v18)
    {
      free(v17);
    }
  }

  return v5;
}

void sub_10006EE10(uint64_t *a1@<X0>, mlir::InFlightDiagnostic *a2@<X8>)
{
  v2 = *a1;
  v3 = *a1[1];
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void sub_10006EE48(uint64_t *a1@<X0>, mlir::InFlightDiagnostic *a2@<X8>)
{
  v2 = *a1;
  v3 = *a1[1];
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

uint64_t ***mlir::Lexer::Lexer(uint64_t ***result, uint64_t **a2, uint64_t **a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  result[3] = 0;
  v4 = **a2;
  v5 = *(v4 + 8);
  v6 = (*(v4 + 16) - v5);
  result[2] = v5;
  result[3] = v6;
  result[4] = v5;
  result[5] = 0;
  if (a4)
  {
    result[5] = *(a4 + 8);
  }

  return result;
}

uint64_t mlir::Lexer::getEncodedSourceLocation(uint64_t a1, const char *a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = **a1;
  LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v5, a2);
  v7 = v2 - llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(v5, LineNumber);
  v8 = *(a1 + 8);
  v10 = (*(***v4 + 16))(**v4);

  return mlir::FileLineColLoc::get(v8, v10, v9, LineNumber, v7 + 1);
}

void mlir::Lexer::emitError(llvm::SourceMgr::SrcBuffer ***this@<X0>, const char *a2@<X1>, const llvm::Twine *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *this;
  v9 = **this;
  LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v9, a2);
  v11 = a2 - llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(v9, LineNumber);
  v12 = this[1];
  v13 = (*(***v8 + 16))(**v8);
  v15 = mlir::FileLineColLoc::get(v12, v13, v14, LineNumber, v11 + 1);
  mlir::emitError(v15, a3, v24);
  if (v24[0])
  {
    mlir::InFlightDiagnostic::report(v24);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v30;
      v18 = __p;
      if (v30 != __p)
      {
        do
        {
          v17 = sub_10005BEF4(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v30 = v16;
      operator delete(v18);
    }

    v19 = v27;
    if (v27)
    {
      v20 = v28;
      v21 = v27;
      if (v28 != v27)
      {
        do
        {
          v22 = *--v20;
          *v20 = 0;
          if (v22)
          {
            operator delete[]();
          }
        }

        while (v20 != v19);
        v21 = v27;
      }

      v28 = v19;
      operator delete(v21);
    }

    if (v25 != &v26)
    {
      free(v25);
    }
  }

  v23 = this[4] - a2;
  *a4 = 1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v23;
}

void mlir::Lexer::lexToken(uint64_t *__return_ptr a1@<X8>, mlir::Lexer *this@<X0>)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v2 != v3)
  {
    do
    {
      v4 = (v2 + 1);
      *(this + 4) = v2 + 1;
      v5 = *v2;
      switch(*v2)
      {
        case 0:
          if (v2 != *(this + 2) + *(this + 3))
          {
            goto LABEL_4;
          }

          *a1 = 0;
          goto LABEL_63;
        case 9:
        case 0xA:
        case 0xD:
        case 0x20:
          goto LABEL_4;
        case 0x21:
        case 0x25:
        case 0x5E:
          goto LABEL_32;
        case 0x22:

          mlir::Lexer::lexString(a1, this, v2);
          return;
        case 0x23:
          if (*v4 == 45 && *(v2 + 2) == 125)
          {
            *(this + 4) = v2 + 3;
            v9 = 33;
            goto LABEL_54;
          }

LABEL_32:

          mlir::Lexer::lexPrefixedIdentifier(this, v2, a1);
          return;
        case 0x28:
          v10 = 21;
          goto LABEL_62;
        case 0x29:
          v10 = 28;
          goto LABEL_62;
        case 0x2A:
          v10 = 30;
          goto LABEL_62;
        case 0x2B:
          v10 = 25;
          goto LABEL_62;
        case 0x2C:
          v10 = 16;
          goto LABEL_62;
        case 0x2D:
          if (*v4 == 62)
          {
            *(this + 4) = v2 + 2;
            *a1 = 13;
            a1[1] = v2;
            a1[2] = 2;
            return;
          }

          v10 = 24;
          goto LABEL_62;
        case 0x2E:
          if (v4 != (*(this + 2) + *(this + 3)) && *v4 == 46 && *(v2 + 2) == 46)
          {
            *(this + 4) = v2 + 3;
            v9 = 17;
            goto LABEL_54;
          }

          v16[0] = "expected three consecutive dots for an ellipsis";
          v17 = 259;
          mlir::Lexer::emitError(this, (v2 + 1), v16, a1);
          return;
        case 0x2F:
          if (*v4 != 47)
          {
            goto LABEL_69;
          }

          v6 = (v2 + 2);
          break;
        case 0x30:
        case 0x31:
        case 0x32:
        case 0x33:
        case 0x34:
        case 0x35:
        case 0x36:
        case 0x37:
        case 0x38:
        case 0x39:

          mlir::Lexer::lexNumber(this, v2, a1);
          return;
        case 0x3A:
          v10 = 15;
          goto LABEL_62;
        case 0x3C:
          v10 = 23;
          goto LABEL_62;
        case 0x3D:
          v10 = 18;
          goto LABEL_62;
        case 0x3E:
          v10 = 19;
          goto LABEL_62;
        case 0x3F:
          v10 = 26;
          goto LABEL_62;
        case 0x40:

          mlir::Lexer::lexAtIdentifier(this, v2, a1);
          return;
        case 0x5B:
          v10 = 22;
          goto LABEL_62;
        case 0x5D:
          v10 = 29;
          goto LABEL_62;
        case 0x5F:
          goto LABEL_66;
        case 0x7B:
          if (*v4 == 45 && *(v2 + 2) == 35)
          {
            *(this + 4) = v2 + 3;
            v9 = 32;
LABEL_54:
            *a1 = v9;
            a1[1] = v2;
            a1[2] = 3;
          }

          else
          {
            v10 = 20;
LABEL_62:
            *a1 = v10;
LABEL_63:
            a1[1] = v2;
            a1[2] = 1;
          }

          return;
        case 0x7C:
          v10 = 31;
          goto LABEL_62;
        case 0x7D:
          v10 = 27;
          goto LABEL_62;
        default:
          if (v5 < 0)
          {
            v12 = this;
            v13 = v2;
            v14 = a1;
            v15 = __maskrune(v5, 0x100uLL);
            v2 = v13;
            a1 = v14;
            v11 = v15;
            this = v12;
          }

          else
          {
            v11 = _DefaultRuneLocale.__runetype[v5] & 0x100;
          }

          if (v11)
          {
LABEL_66:

            mlir::Lexer::lexBareIdentifierOrKeyword(this, v2, a1);
          }

          else
          {
LABEL_69:
            v16[0] = "unexpected character";
            v17 = 259;
            mlir::Lexer::emitError(this, v2, v16, a1);
          }

          return;
      }

      do
      {
        while (1)
        {
          v4 = v6++;
          *(this + 4) = v6;
          v7 = *v4;
          if (!*v4)
          {
            break;
          }

          if (v7 == 10 || v7 == 13)
          {
            ++v4;
            goto LABEL_4;
          }
        }
      }

      while (v4 != (*(this + 2) + *(this + 3)));
      *(this + 4) = v4;
LABEL_4:
      v2 = v4;
    }

    while (v4 != v3);
  }

  *a1 = 2;
  a1[1] = v3;
  a1[2] = 0;
}

uint64_t mlir::Lexer::lexBareIdentifierOrKeyword@<X0>(mlir::Lexer *this@<X0>, const char *__s1@<X1>, uint64_t a3@<X8>)
{
  for (i = *(this + 4); ; *(this + 4) = i)
  {
    v11 = *i;
    if (v11 < 0)
    {
      result = __maskrune(v11, 0x100uLL);
      i = *(this + 4);
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = _DefaultRuneLocale.__runetype[v11] & 0x100;
      if (result)
      {
        goto LABEL_6;
      }
    }

    v13 = *i;
    if (v13 < 0 || (_DefaultRuneLocale.__runetype[v13] & 0x400) == 0)
    {
      v7 = *i - 36;
      v8 = v7 > 0x3B;
      v9 = (1 << v7) & 0x800000000000401;
      if (v8 || v9 == 0)
      {
        break;
      }
    }

LABEL_6:
    ++i;
  }

  v14 = i - __s1;
  if ((i - __s1) < 2)
  {
    goto LABEL_22;
  }

  v15 = *__s1;
  if (v15 == 105)
  {
    v16 = __s1 + 1;
    while (*v16 - 48 < 0xA)
    {
      if (++v16 == i)
      {
LABEL_30:
        v17 = 12;
        goto LABEL_23;
      }
    }
  }

  if (v14 == 2)
  {
    result = memcmp(__s1, "to", i - __s1);
    if (result)
    {
      goto LABEL_22;
    }

    v17 = 79;
  }

  else
  {
    if (__s1[1] == 105 && (v15 == 117 || v15 == 115))
    {
      v18 = __s1 + 2;
      while (*v18 - 48 < 0xA)
      {
        if (++v18 == i)
        {
          goto LABEL_30;
        }
      }
    }

    if (v14 <= 6)
    {
      if (v14 <= 3)
      {
        if (v14 == 3)
        {
          if (*__s1 == 12646 && __s1[2] == 54)
          {
            v17 = 44;
            goto LABEL_23;
          }

          if (*__s1 == 13158 && __s1[2] == 50)
          {
            v17 = 45;
            goto LABEL_23;
          }

          if (*__s1 == 13926 && __s1[2] == 52)
          {
            v17 = 46;
            goto LABEL_23;
          }

          if (*__s1 == 14438 && __s1[2] == 48)
          {
            v17 = 47;
            goto LABEL_23;
          }

          if (*__s1 == 28518 && __s1[2] == 114)
          {
            v17 = 62;
            goto LABEL_23;
          }

          if (*__s1 == 28524 && __s1[2] == 99)
          {
            v17 = 65;
            goto LABEL_23;
          }

          if (*__s1 == 24941 && __s1[2] == 120)
          {
            v17 = 66;
            goto LABEL_23;
          }

          if (*__s1 == 26989 && __s1[2] == 110)
          {
            v17 = 68;
            goto LABEL_23;
          }

          if (*__s1 == 28525 && __s1[2] == 100)
          {
            v17 = 69;
            goto LABEL_23;
          }
        }
      }

      else if (v14 == 4)
      {
        switch(*__s1)
        {
          case 0x36316662:
            v17 = 38;
            goto LABEL_23;
          case 0x38323166:
            v17 = 59;
            goto LABEL_23;
          case 0x636E7566:
            v17 = 63;
            goto LABEL_23;
          case 0x656E6F6E:
            v17 = 70;
            goto LABEL_23;
          case 0x657A6973:
            v17 = 72;
            goto LABEL_23;
          case 0x70657473:
            v17 = 74;
            goto LABEL_23;
          case 0x32336674:
            v17 = 78;
            goto LABEL_23;
          case 0x65757274:
            v17 = 80;
            goto LABEL_23;
          case 0x65707974:
            v17 = 82;
            goto LABEL_23;
          case 0x74696E75:
            v17 = 83;
            goto LABEL_23;
        }
      }

      else if (v14 == 5)
      {
        if (*__s1 == 1634890337 && __s1[4] == 121)
        {
          v17 = 36;
          goto LABEL_23;
        }

        if (*__s1 == 1936614756 && __s1[4] == 101)
        {
          v17 = 41;
          goto LABEL_23;
        }

        if (*__s1 == 1936482662 && __s1[4] == 101)
        {
          v17 = 60;
          goto LABEL_23;
        }

        if (*__s1 == 1701080681 && __s1[4] == 120)
        {
          v17 = 64;
          goto LABEL_23;
        }

        if (*__s1 == 1819309428 && __s1[4] == 101)
        {
          v17 = 81;
          goto LABEL_23;
        }
      }

      else
      {
        if (*__s1 == 893728870 && *(__s1 + 2) == 12877)
        {
          v17 = 48;
          goto LABEL_23;
        }

        if (*__s1 == 876951654 && *(__s1 + 2) == 13133)
        {
          v17 = 49;
          goto LABEL_23;
        }

        if (*__s1 == 860174438 && *(__s1 + 2) == 13389)
        {
          v17 = 54;
          goto LABEL_23;
        }

        if (*__s1 == 1919772013 && *(__s1 + 2) == 26213)
        {
          v17 = 67;
          goto LABEL_23;
        }

        if (*__s1 == 1936090735 && *(__s1 + 2) == 29797)
        {
          v17 = 71;
          goto LABEL_23;
        }

        if (*__s1 == 1918988403 && *(__s1 + 2) == 25971)
        {
          v17 = 73;
          goto LABEL_23;
        }

        if (*__s1 == 1651341683 && *(__s1 + 2) == 27759)
        {
          v17 = 76;
          goto LABEL_23;
        }

        if (*__s1 == 1936614772 && *(__s1 + 2) == 29295)
        {
          v17 = 77;
          goto LABEL_23;
        }

        if (*__s1 == 1952671094 && *(__s1 + 2) == 29295)
        {
          v17 = 84;
          goto LABEL_23;
        }
      }
    }

    else if (v14 > 9)
    {
      switch(v14)
      {
        case 14:
          if (*__s1 == 0x65725F65736E6564 && *(__s1 + 6) == 0x656372756F736572)
          {
            v17 = 42;
            goto LABEL_23;
          }

          break;
        case 13:
          if (*__s1 == 0x3142334D34453866 && *(__s1 + 5) == 0x5A554E4631314233)
          {
            v17 = 53;
            goto LABEL_23;
          }

          break;
        case 10:
          if (*__s1 == 0x6D5F656E69666661 && *(__s1 + 4) == 28769)
          {
            v17 = 34;
            goto LABEL_23;
          }

          if (*__s1 == 0x735F656E69666661 && *(__s1 + 4) == 29797)
          {
            v17 = 35;
            goto LABEL_23;
          }

          if (*__s1 == 0x7475626972747461 && *(__s1 + 4) == 29541)
          {
            v17 = 37;
            goto LABEL_23;
          }

          if (*__s1 == 0x4E46324D35453866 && *(__s1 + 4) == 23125)
          {
            v17 = 51;
            goto LABEL_23;
          }

          if (*__s1 == 0x4E46334D34453866 && *(__s1 + 4) == 23125)
          {
            v17 = 52;
            goto LABEL_23;
          }

          break;
      }
    }

    else if (v14 == 7)
    {
      if (*__s1 == 1818846563 && *(__s1 + 3) == 1986618476)
      {
        v17 = 39;
        goto LABEL_23;
      }

      if (*__s1 == 1886220131 && *(__s1 + 3) == 2019912816)
      {
        v17 = 40;
        goto LABEL_23;
      }

      if (*__s1 == 1769108595 && *(__s1 + 3) == 1684366441)
      {
        v17 = 75;
        goto LABEL_23;
      }
    }

    else if (v14 == 8)
    {
      switch(*__s1)
      {
        case 0x74636E6974736964:
          v17 = 43;
          goto LABEL_23;
        case 0x4E46334D34453866:
          v17 = 50;
          goto LABEL_23;
        case 0x4E46314D32453466:
          v17 = 55;
          goto LABEL_23;
        case 0x4E46334D32453666:
          v17 = 56;
          goto LABEL_23;
        case 0x4E46324D33453666:
          v17 = 57;
          goto LABEL_23;
        case 0x766964726F6F6C66:
          v17 = 61;
          goto LABEL_23;
      }
    }

    else if (*__s1 == 0x4E46304D38453866 && __s1[8] == 85)
    {
      v17 = 58;
      goto LABEL_23;
    }

LABEL_22:
    v17 = 3;
  }

LABEL_23:
  *a3 = v17;
  *(a3 + 8) = __s1;
  *(a3 + 16) = v14;
  return result;
}

void mlir::Lexer::lexAtIdentifier(mlir::Lexer *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 4);
  *(this + 4) = v6 + 1;
  v7 = *v6;
  if (v7 != 34)
  {
    if ((v7 & 0x80000000) == 0)
    {
      v9 = *(this + 4);
      if (v7 == 95 || (_DefaultRuneLocale.__runetype[v7] & 0x100) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }

    v18 = __maskrune(*v6, 0x100uLL);
    v9 = *(this + 4);
    if (v7 != 95 && v18 == 0)
    {
LABEL_31:
      *&v20 = "@ identifier expected to start with letter or '_'";
      v22 = 259;
      mlir::Lexer::emitError(this, v9 - 1, &v20, a3);
      return;
    }

    while (1)
    {
LABEL_15:
      v15 = *v9;
      if (v15 < 0)
      {
        v16 = __maskrune(v15, 0x100uLL);
        v9 = *(this + 4);
        if (v16)
        {
          goto LABEL_14;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v15] & 0x100) != 0)
      {
        goto LABEL_14;
      }

      v17 = *v9;
      if (v17 < 0 || (_DefaultRuneLocale.__runetype[v17] & 0x400) == 0)
      {
        v11 = *v9 - 36;
        v12 = v11 > 0x3B;
        v13 = (1 << v11) & 0x800000000000401;
        if (v12 || v13 == 0)
        {
          *a3 = 4;
          v8 = v9 - a2;
LABEL_24:
          *(a3 + 8) = a2;
          goto LABEL_25;
        }
      }

LABEL_14:
      *(this + 4) = ++v9;
    }
  }

  mlir::Lexer::lexString(&v20, this, v6 + 1);
  if (v20 != 1)
  {
    v8 = *(this + 4) - a2;
    *a3 = 4;
    goto LABEL_24;
  }

  *a3 = v20;
  v8 = v21;
LABEL_25:
  *(a3 + 16) = v8;
}

void mlir::Lexer::lexPrefixedIdentifier(mlir::Lexer *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  if (v6 > 0x24)
  {
    if (v6 == 94)
    {
      v9 = 7;
      v8 = "invalid block name";
      v7 = 18;
      v10 = *(this + 4);
      v11 = *v10;
      if (v11 < 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v9 = 6;
      v8 = "invalid SSA name";
      v7 = 16;
      v10 = *(this + 4);
      v11 = *v10;
      if (v11 < 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (v6 == 33)
    {
      v7 = 23;
    }

    else
    {
      v7 = 22;
    }

    if (v6 == 33)
    {
      v8 = "invalid type identifier";
    }

    else
    {
      v8 = "invalid attribute name";
    }

    if (v6 == 33)
    {
      v9 = 8;
    }

    else
    {
      v9 = 5;
    }

    v10 = *(this + 4);
    v11 = *v10;
    if (v11 < 0)
    {
LABEL_31:
      if (__maskrune(v11, 0x100uLL))
      {
        goto LABEL_41;
      }

      goto LABEL_32;
    }
  }

  v12 = _DefaultRuneLocale.__runetype[v11];
  if ((v12 & 0x400) != 0)
  {
    v13 = v10 + 1;
    do
    {
      if ((_DefaultRuneLocale.__runetype[v11] & 0x400) == 0)
      {
        break;
      }

      *(this + 4) = v13;
      v14 = *v13++;
      LOBYTE(v11) = v14;
    }

    while ((v14 & 0x80000000) == 0);
    v15 = (v13 - 1);
LABEL_22:
    v16 = *(this + 5);
    v17 = v16 < a2 || v16 > v15;
    if (!v17)
    {
      *a3 = 2;
      *(a3 + 8) = a2;
      *(a3 + 16) = v16 - a2;
      return;
    }

    v18 = v15 - a2;
    *a3 = v9;
    goto LABEL_28;
  }

  if ((v12 & 0x100) != 0)
  {
    goto LABEL_41;
  }

LABEL_32:
  v19 = *(this + 4);
  v20 = *v19 - 36;
  v17 = v20 > 0x3B;
  v21 = (1 << v20) & 0x800000000000601;
  if (!v17 && v21 != 0)
  {
    while (1)
    {
LABEL_41:
      while (1)
      {
        v26 = (*(this + 4) + 1);
        *(this + 4) = v26;
        v27 = *v26;
        if (v27 < 0)
        {
          break;
        }

        if ((_DefaultRuneLocale.__runetype[v27] & 0x100) == 0)
        {
          goto LABEL_45;
        }
      }

      if (!__maskrune(v27, 0x100uLL))
      {
LABEL_45:
        v15 = *(this + 4);
        v28 = *v15;
        if (v28 < 0 || (_DefaultRuneLocale.__runetype[v28] & 0x400) == 0)
        {
          v23 = *v15 - 36;
          v17 = v23 > 0x3B;
          v24 = (1 << v23) & 0x800000000000601;
          if (v17 || v24 == 0)
          {
            goto LABEL_22;
          }
        }
      }
    }
  }

  if (v19 != *(this + 5))
  {
    v30 = 261;
    v29[0] = v8;
    v29[1] = v7;
    mlir::Lexer::emitError(this, v19 - 1, v29, a3);
    return;
  }

  *a3 = 2;
  v18 = v19 - a2;
LABEL_28:
  *(a3 + 8) = a2;
  *(a3 + 16) = v18;
}

void mlir::Lexer::lexString(uint64_t *__return_ptr a1@<X8>, mlir::Lexer *this@<X0>, const char *a3@<X1>)
{
  v4 = *(this + 4);
  v5 = *(this + 5);
  if (v4 == v5)
  {
LABEL_22:
    *a1 = 2;
    a1[1] = a3;
    a1[2] = v5 - a3;
    return;
  }

  while (1)
  {
    v6 = v4 + 1;
    *(this + 4) = v4 + 1;
    v7 = *v4;
    if (v7 > 0x21)
    {
      break;
    }

    if (*v4)
    {
      if (v7 - 10 < 3)
      {
LABEL_23:
        v11 = "expected '' in string literal";
        goto LABEL_24;
      }
    }

    else if (v4 == (*(this + 2) + *(this + 3)))
    {
      goto LABEL_23;
    }

LABEL_5:
    v4 = v6;
    if (v6 == v5)
    {
      goto LABEL_22;
    }
  }

  if (v7 != 92)
  {
    if (v7 == 34)
    {
      *a1 = 11;
      a1[1] = a3;
      a1[2] = v6 - a3;
      return;
    }

    goto LABEL_5;
  }

  v8 = *v6;
  if ((v8 - 92) <= 0x18 && ((1 << (v8 - 92)) & 0x1040001) != 0)
  {
    v10 = 2;
LABEL_21:
    v6 = &v4[v10];
    *(this + 4) = &v4[v10];
    goto LABEL_5;
  }

  v10 = 2;
  if (v8 == 34)
  {
    goto LABEL_21;
  }

  if (word_1002B0918[v8] != -1 && word_1002B0918[v4[2]] != -1)
  {
    v10 = 3;
    goto LABEL_21;
  }

  v11 = "unknown escape in string literal";
LABEL_24:
  v12 = v11;
  v13 = 259;
  mlir::Lexer::emitError(this, v4, &v12, a1);
}

uint64_t mlir::Lexer::lexNumber@<X0>(uint64_t this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(this + 32);
  v4 = *v3;
  if (__PAIR64__(v4, *(v3 - 1)) == 0x7800000030)
  {
    v5 = v3[1];
    if (v5 < 0 || (_DefaultRuneLocale.__runetype[v5] & 0x10000) == 0)
    {
LABEL_28:
      *a3 = 10;
      *(a3 + 8) = a2;
      *(a3 + 16) = v3 - a2;
      return this;
    }

    *(this + 32) = v3 + 2;
    if ((v3[2] & 0x80000000) == 0)
    {
      v6 = v3[2];
      v7 = v3 + 3;
      do
      {
        if ((_DefaultRuneLocale.__runetype[v6] & 0x10000) == 0)
        {
          break;
        }

        *(this + 32) = v7;
        v8 = *v7++;
        v6 = v8;
      }

      while ((v8 & 0x80000000) == 0);
      v3 = v7 - 1;
      goto LABEL_28;
    }

    *a3 = 10;
    *(a3 + 8) = a2;
    *(a3 + 16) = v3 + 2 - a2;
  }

  else
  {
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_28;
    }

    while ((_DefaultRuneLocale.__runetype[v4] & 0x400) != 0)
    {
      v9 = (v3 + 1);
      *(this + 32) = v3 + 1;
      v10 = v3[1];
      v4 = *++v3;
      if (v10 < 0)
      {
        *a3 = 10;
        *(a3 + 8) = a2;
        *(a3 + 16) = v9 - a2;
        return this;
      }
    }

    if (v4 != 46)
    {
      goto LABEL_28;
    }

    v11 = (v3 + 4);
    do
    {
      v12 = v11;
      v13 = (v11 - 3);
      *(this + 32) = v11 - 3;
      v14 = *(v11 - 3);
      if (v14 < 0)
      {
        break;
      }

      ++v11;
    }

    while ((_DefaultRuneLocale.__runetype[v14] & 0x400) != 0);
    if ((v14 | 0x20) == 0x65)
    {
      v15 = *(v12 - 2);
      if ((_DefaultRuneLocale.__runetype[v15] & 0x400) != 0 || (v15 == 43 || v15 == 45) && (_DefaultRuneLocale.__runetype[*(v12 - 1)] & 0x400) != 0)
      {
        v13 = (v12 - 1);
        *(this + 32) = v12 - 1;
        if ((*(v12 - 1) & 0x80000000) == 0)
        {
          v16 = *(v12 - 1);
          do
          {
            if ((_DefaultRuneLocale.__runetype[v16] & 0x400) == 0)
            {
              break;
            }

            *(this + 32) = v12;
            v17 = *v12++;
            v16 = v17;
          }

          while ((v17 & 0x80000000) == 0);
          v13 = (v12 - 1);
        }
      }
    }

    *a3 = 9;
    *(a3 + 8) = a2;
    *(a3 + 16) = v13 - a2;
  }

  return this;
}

BOOL mlir::detail::Parser::parseCallSiteLocation(mlir::detail::Parser *a1, uint64_t *a2)
{
  v4 = *(a1 + 1);
  *(v4 + 80) = *(v4 + 56);
  *(v4 + 96) = *(v4 + 72);
  mlir::Lexer::lexToken(&v20, (*(a1 + 1) + 8));
  v5 = *(a1 + 1);
  *(v5 + 56) = v20;
  *(v5 + 72) = v21;
  *&v20 = "expected '(' in callsite location";
  v23 = 259;
  if (!mlir::detail::Parser::parseToken(a1, 21, &v20))
  {
    return 0;
  }

  v19 = 0;
  if ((mlir::detail::Parser::parseLocationInstance(a1, &v19) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 1);
  if (*(v6 + 56) == 3 && *(v6 + 72) == 2 && **(v6 + 64) == 29793)
  {
    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken(&v20, (*(a1 + 1) + 8));
    v16 = *(a1 + 1);
    *(v16 + 56) = v20;
    *(v16 + 72) = v21;
    v17[0] = 0;
    if (mlir::detail::Parser::parseLocationInstance(a1, v17))
    {
      *&v20 = "expected ')' in callsite location";
      v23 = 259;
      if (mlir::detail::Parser::parseToken(a1, 28, &v20))
      {
        *a2 = mlir::CallSiteLoc::get(v19, v17[0]);
        return 1;
      }
    }

    return 0;
  }

  v17[0] = "expected 'at' in callsite location";
  v18 = 259;
  mlir::detail::Parser::emitWrongTokenError(&v20, a1, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v20);
  v8 = result;
  if (v20)
  {
    mlir::InFlightDiagnostic::report(&v20);
    result = v8;
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
      result = v8;
    }

    v9 = __p;
    if (__p)
    {
      v10 = v28;
      v11 = __p;
      if (v28 != __p)
      {
        do
        {
          v10 = sub_10005BEF4(v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v28 = v9;
      operator delete(v11);
      result = v8;
    }

    v12 = v25;
    if (v25)
    {
      v13 = v26;
      v14 = v25;
      if (v26 != v25)
      {
        do
        {
          v15 = *--v13;
          *v13 = 0;
          if (v15)
          {
            operator delete[]();
          }
        }

        while (v13 != v12);
        v14 = v25;
      }

      v26 = v12;
      operator delete(v14);
      result = v8;
    }

    if (v22 != &v24)
    {
      free(v22);
      return v8;
    }
  }

  return result;
}

uint64_t mlir::detail::Parser::parseLocationInstance(mlir::detail::Parser *a1, uint64_t *a2)
{
  v2 = *(a1 + 1);
  v3 = *(v2 + 56);
  if (v3 == 3)
  {
    v11 = *(v2 + 64);
    v10 = *(v2 + 72);
    if (v10 == 5)
    {
      v24 = a1;
      v26 = memcmp(v11, "fused", 5uLL);
      a1 = v24;
      if (!v26)
      {

        return mlir::detail::Parser::parseFusedLocation(v24, a2);
      }
    }

    else if (v10 == 7)
    {
      v19 = a1;
      v21 = memcmp(*(v2 + 64), "unknown", 7uLL);
      a1 = v19;
      if (!v21)
      {
        *(v2 + 80) = *(v2 + 56);
        *(v2 + 96) = *(v2 + 72);
        mlir::Lexer::lexToken(&v40, (v19[1] + 1));
        v22 = v19[1];
        *(v22 + 7) = v40;
        v22[9] = v41;
        *a2 = mlir::UnknownLoc::get(**v19[1], v23);
        return 1;
      }
    }

    else if (v10 == 8 && *v11 == 0x657469736C6C6163)
    {

      return mlir::detail::Parser::parseCallSiteLocation(a1, a2);
    }

    v37[0] = "expected location instance";
    v38 = 259;
    mlir::detail::Parser::emitWrongTokenError(&v40, a1, v37);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v40);
    sub_10006296C(&v40);
    return v7;
  }

  if (v3 != 11)
  {
    if (v3 == 5)
    {
      v5 = a1;
      v6 = mlir::detail::Parser::parseExtendedAttr(a1, 0);
      v7 = v6;
      if (!v6)
      {
        return v7;
      }

      if (mlir::LocationAttr::classof(v6))
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      *a2 = v8;
      if (v8)
      {
        return 1;
      }

      v37[0] = "expected location attribute, but got";
      v38 = 259;
      mlir::detail::Parser::emitError(&v40, v5, v37);
      if (v40)
      {
        v27 = v39;
        mlir::DiagnosticArgument::DiagnosticArgument(v39, v7);
        v28 = v42;
        if (v43 >= v44)
        {
          if (v42 <= v39 && v42 + 24 * v43 > v39)
          {
            v36 = v39 - v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
            v28 = v42;
            v27 = v42 + v36;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
            v27 = v39;
            v28 = v42;
          }
        }

        v29 = &v28[24 * v43];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        ++v43;
      }

      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v40);
      if (v40)
      {
        mlir::InFlightDiagnostic::report(&v40);
      }

      if (v51 != 1)
      {
        return v7;
      }

      if (v50 != &v51)
      {
        free(v50);
      }

      v31 = __p;
      if (__p)
      {
        v32 = v49;
        v33 = __p;
        if (v49 != __p)
        {
          do
          {
            v32 = sub_10005BEF4(v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v49 = v31;
        operator delete(v33);
      }

      v15 = v46;
      if (!v46)
      {
LABEL_61:
        if (v42 != v45)
        {
          free(v42);
        }

        return v7;
      }

      v34 = v47;
      v17 = v46;
      if (v47 == v46)
      {
LABEL_60:
        v47 = v15;
        operator delete(v17);
        goto LABEL_61;
      }

      do
      {
        v35 = *--v34;
        *v34 = 0;
        if (v35)
        {
          operator delete[]();
        }
      }

      while (v34 != v15);
    }

    else
    {
      v37[0] = "expected location instance";
      v38 = 259;
      mlir::detail::Parser::emitWrongTokenError(&v40, a1, v37);
      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v40);
      if (v40)
      {
        mlir::InFlightDiagnostic::report(&v40);
      }

      if (v51 != 1)
      {
        return v7;
      }

      if (v50 != &v51)
      {
        free(v50);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v49;
        v14 = __p;
        if (v49 != __p)
        {
          do
          {
            v13 = sub_10005BEF4(v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v49 = v12;
        operator delete(v14);
      }

      v15 = v46;
      if (!v46)
      {
        goto LABEL_61;
      }

      v16 = v47;
      v17 = v46;
      if (v47 == v46)
      {
        goto LABEL_60;
      }

      do
      {
        v18 = *--v16;
        *v16 = 0;
        if (v18)
        {
          operator delete[]();
        }
      }

      while (v16 != v15);
    }

    v17 = v46;
    goto LABEL_60;
  }

  return mlir::detail::Parser::parseNameOrFileLineColRange(a1, a2);
}

uint64_t mlir::detail::Parser::parseFusedLocation(mlir::MLIRContext ****a1, uint64_t *a2)
{
  v4 = a1[1];
  *(v4 + 5) = *(v4 + 7);
  v4[12] = v4[9];
  mlir::Lexer::lexToken(v14, (a1[1] + 1));
  v5 = a1[1];
  *(v5 + 7) = *v14;
  v5[9] = v15[0];
  v6 = a1[1];
  if (*(v6 + 14) != 23)
  {
    v9 = 0;
    goto LABEL_6;
  }

  *(v6 + 5) = *(v6 + 7);
  v6[12] = v6[9];
  mlir::Lexer::lexToken(v14, (a1[1] + 1));
  v7 = a1[1];
  *(v7 + 7) = *v14;
  v7[9] = v15[0];
  v8 = mlir::detail::Parser::parseAttribute(a1, 0);
  if (v8)
  {
    v9 = v8;
    v14[0] = "expected '>' after fused location metadata";
    v16 = 259;
    if (mlir::detail::Parser::parseToken(a1, 19, v14))
    {
LABEL_6:
      v13[1] = v14;
      v14[0] = v15;
      v14[1] = 0x400000000;
      v13[0] = a1;
      if (mlir::detail::Parser::parseCommaSeparatedList(a1, 2, sub_100071930, v13, " in fused location", 18))
      {
        *a2 = mlir::FusedLoc::get(v14[0], LODWORD(v14[1]), v9, **a1[1]);
        v10 = 1;
        v11 = v14[0];
        if (v14[0] == v15)
        {
          return v10;
        }
      }

      else
      {
        v10 = 0;
        v11 = v14[0];
        if (v14[0] == v15)
        {
          return v10;
        }
      }

      free(v11);
      return v10;
    }
  }

  return 0;
}

BOOL mlir::detail::Parser::parseNameOrFileLineColRange(mlir::detail::Parser *a1, uint64_t *a2)
{
  v4 = *(a1 + 1);
  v5 = **v4;
  mlir::Token::getStringValue((v4 + 7), &v75);
  v6 = *(a1 + 1);
  *(v6 + 80) = *(v6 + 56);
  *(v6 + 96) = *(v6 + 72);
  mlir::Lexer::lexToken(&v76, (*(a1 + 1) + 8));
  v8 = *(a1 + 1);
  *(v8 + 56) = v76;
  *(v8 + 72) = v77;
  v9 = *(a1 + 1);
  v10 = (v9 + 56);
  v11 = *(v9 + 56);
  if (v11 == 21)
  {
    *(v9 + 80) = *v10;
    *(v9 + 96) = *(v9 + 72);
    mlir::Lexer::lexToken(&v76, (*(a1 + 1) + 8));
    v25 = *(a1 + 1);
    *(v25 + 56) = v76;
    *(v25 + 72) = v77;
    v73[0] = 0;
    v17 = 0;
    if (mlir::detail::Parser::parseLocationInstance(a1, v73))
    {
      v79 = 260;
      *&v76 = &v75;
      v27 = mlir::StringAttr::get(v5, &v76, v26);
      *a2 = mlir::NameLoc::get(v27, v73[0]);
      *&v76 = "expected ')' after child location of NameLoc";
      v79 = 259;
      if (mlir::detail::Parser::parseToken(a1, 28, &v76))
      {
        v17 = 1;
      }
    }

    goto LABEL_52;
  }

  if (v11 != 15)
  {
    v79 = 260;
    *&v76 = &v75;
    v28 = mlir::StringAttr::get(v5, &v76, v7);
    v29 = mlir::NameLoc::get(v28);
    goto LABEL_25;
  }

  *(v9 + 80) = *v10;
  *(v9 + 96) = *(v9 + 72);
  mlir::Lexer::lexToken(&v76, (*(a1 + 1) + 8));
  v12 = *(a1 + 1);
  *(v12 + 56) = v76;
  *(v12 + 72) = v77;
  v13 = *(a1 + 1);
  v15 = *(v13 + 56);
  v14 = (v13 + 56);
  if (v15 == 10)
  {
    UnsignedIntegerValue = mlir::Token::getUnsignedIntegerValue(v14);
    if ((UnsignedIntegerValue & 0x100000000) == 0)
    {
      v73[0] = "expected integer line number in FileLineColRange";
      v74 = 259;
      mlir::detail::Parser::emitWrongTokenError(&v76, a1, v73);
      v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v76);
      if (v76)
      {
        mlir::InFlightDiagnostic::report(&v76);
      }

      if (v86 == 1)
      {
        if (v85 != &v86)
        {
          free(v85);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v84;
          v20 = __p;
          if (v84 != __p)
          {
            do
            {
              v19 = sub_10005BEF4(v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v84 = v18;
          operator delete(v20);
        }

        v21 = v81;
        if (!v81)
        {
          goto LABEL_50;
        }

        v22 = v82;
        v23 = v81;
        if (v82 == v81)
        {
LABEL_49:
          v82 = v21;
          operator delete(v23);
LABEL_50:
          if (v78 != &v80)
          {
            free(v78);
          }

          goto LABEL_52;
        }

        do
        {
          v24 = *--v22;
          *v22 = 0;
          if (v24)
          {
            operator delete[]();
          }
        }

        while (v22 != v21);
LABEL_48:
        v23 = v81;
        goto LABEL_49;
      }

      goto LABEL_52;
    }

    v35 = UnsignedIntegerValue;
    v36 = *(a1 + 1);
    *(v36 + 80) = *(v36 + 56);
    *(v36 + 96) = *(v36 + 72);
    mlir::Lexer::lexToken(&v76, (*(a1 + 1) + 8));
    v38 = *(a1 + 1);
    *(v38 + 56) = v76;
    *(v38 + 72) = v77;
    v39 = *(a1 + 1);
    if (*(v39 + 56) == 15)
    {
      *(v39 + 80) = *(v39 + 56);
      *(v39 + 96) = *(v39 + 72);
      mlir::Lexer::lexToken(&v76, (*(a1 + 1) + 8));
      v40 = *(a1 + 1);
      *(v40 + 56) = v76;
      *(v40 + 72) = v77;
      v41 = *(a1 + 1);
      v43 = *(v41 + 56);
      v42 = (v41 + 56);
      if (v43 != 10)
      {
        v73[0] = "expected integer column number in FileLineColRange";
        v74 = 259;
        mlir::detail::Parser::emitWrongTokenError(&v76, a1, v73);
        v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v76);
        if (v76)
        {
          mlir::InFlightDiagnostic::report(&v76);
        }

        if (v86 == 1)
        {
          sub_10005BE10(&v76 + 1);
        }

        goto LABEL_52;
      }

      v44 = mlir::Token::getUnsignedIntegerValue(v42);
      if ((v44 & 0x100000000) == 0)
      {
        goto LABEL_46;
      }

      v47 = v44;
      v48 = *(a1 + 1);
      *(v48 + 80) = *(v48 + 56);
      *(v48 + 96) = *(v48 + 72);
      mlir::Lexer::lexToken(&v76, (*(a1 + 1) + 8));
      v49 = *(a1 + 1);
      *(v49 + 56) = v76;
      *(v49 + 72) = v77;
      v50 = *(a1 + 1);
      v51 = *(v50 + 56);
      if (v51 != 3 && v51 != 12)
      {
        if (!mlir::Token::isKeyword((v50 + 56)))
        {
          goto LABEL_66;
        }

        v50 = *(a1 + 1);
      }

      if (*(v50 + 72) != 2 || **(v50 + 64) != 28532)
      {
LABEL_66:
        if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v52 = &v75;
        }

        else
        {
          v52 = v75.__r_.__value_.__r.__words[0];
        }

        if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(v75.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v75.__r_.__value_.__l.__size_;
        }

        v29 = mlir::FileLineColLoc::get(v5, v52, size, v35, v47);
        goto LABEL_25;
      }

      *(v50 + 80) = *(v50 + 56);
      *(v50 + 96) = *(v50 + 72);
      mlir::Lexer::lexToken(&v76, (*(a1 + 1) + 8));
      v54 = *(a1 + 1);
      *(v54 + 56) = v76;
      *(v54 + 72) = v77;
      v55 = *(a1 + 1);
      v56 = *(v55 + 56);
      if (v56 == 10)
      {
        v57 = mlir::Token::getUnsignedIntegerValue((v55 + 56));
        if ((v57 & 0x100000000) == 0)
        {
          v58 = "expected integer line number in FileLineColRange";
LABEL_85:
          v73[0] = v58;
          v74 = 259;
          mlir::detail::Parser::emitWrongTokenError(&v76, a1, v73);
          goto LABEL_47;
        }

        v59 = v57;
        v61 = *(a1 + 1);
        *(v61 + 80) = *(v61 + 56);
        *(v61 + 96) = *(v61 + 72);
        mlir::Lexer::lexToken(&v76, (*(a1 + 1) + 8));
        v62 = *(a1 + 1);
        *(v62 + 56) = v76;
        *(v62 + 72) = v77;
        v55 = *(a1 + 1);
        v60 = *(v55 + 56);
      }

      else
      {
        v59 = 0;
        v60 = *(v55 + 56);
      }

      if (v60 != 15)
      {
        goto LABEL_85;
      }

      *(v55 + 80) = *(v55 + 56);
      *(v55 + 96) = *(v55 + 72);
      mlir::Lexer::lexToken(&v76, (*(a1 + 1) + 8));
      v63 = *(a1 + 1);
      *(v63 + 56) = v76;
      *(v63 + 72) = v77;
      v64 = *(a1 + 1);
      v66 = *(v64 + 56);
      v65 = (v64 + 56);
      if (v66 != 10)
      {
        v58 = "expected integer column number in FileLineColRange";
        goto LABEL_85;
      }

      v67 = mlir::Token::getUnsignedIntegerValue(v65);
      if ((v67 & 0x100000000) == 0)
      {
LABEL_46:
        v73[0] = "expected integer column number in FileLineColRange";
        v74 = 259;
        mlir::detail::Parser::emitError(&v76, a1, v73);
LABEL_47:
        v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v76);
        sub_10006296C(&v76);
        goto LABEL_52;
      }

      v68 = v67;
      v69 = *(a1 + 1);
      *(v69 + 80) = *(v69 + 56);
      *(v69 + 96) = *(v69 + 72);
      mlir::Lexer::lexToken(&v76, (*(a1 + 1) + 8));
      v70 = *(a1 + 1);
      *(v70 + 56) = v76;
      *(v70 + 72) = v77;
      v79 = 260;
      *&v76 = &v75;
      v72 = mlir::StringAttr::get(v5, &v76, v71);
      if (v56 == 10)
      {
        v29 = mlir::FileLineColRange::get(v72, v35, v47, v59, v68);
      }

      else
      {
        v29 = mlir::FileLineColRange::get(v72, v35, v47, v68);
      }
    }

    else
    {
      v79 = 260;
      *&v76 = &v75;
      v46 = mlir::StringAttr::get(v5, &v76, v37);
      v29 = mlir::FileLineColRange::get(v46, v35);
    }

LABEL_25:
    *a2 = v29;
    v17 = 1;
    goto LABEL_52;
  }

  v73[0] = "expected integer line number in FileLineColRange";
  v74 = 259;
  mlir::detail::Parser::emitWrongTokenError(&v76, a1, v73);
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v76);
  if (v76)
  {
    mlir::InFlightDiagnostic::report(&v76);
  }

  if (v86 == 1)
  {
    if (v85 != &v86)
    {
      free(v85);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v84;
      v32 = __p;
      if (v84 != __p)
      {
        do
        {
          v31 = sub_10005BEF4(v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v84 = v30;
      operator delete(v32);
    }

    v21 = v81;
    if (!v81)
    {
      goto LABEL_50;
    }

    v33 = v82;
    v23 = v81;
    if (v82 == v81)
    {
      goto LABEL_49;
    }

    do
    {
      v34 = *--v33;
      *v33 = 0;
      if (v34)
      {
        operator delete[]();
      }
    }

    while (v33 != v21);
    goto LABEL_48;
  }

LABEL_52:
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  return v17;
}

uint64_t sub_100071930(uint64_t a1)
{
  v2 = *a1;
  v7 = 0;
  if ((mlir::detail::Parser::parseLocationInstance(v2, &v7) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = v7;
  v5 = *(v3 + 8);
  if (v5 >= *(v3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v3, (v3 + 16), v5 + 1, 8);
    LODWORD(v5) = *(v3 + 8);
  }

  *(*v3 + 8 * v5) = v4;
  ++*(v3 + 8);
  return 1;
}

BOOL mlir::detail::Parser::parseCommaSeparatedList(mlir::detail::Parser *a1, int a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 <= 4)
  {
    if (a2 <= 2)
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
          goto LABEL_27;
        }

LABEL_9:
        v23 = 1283;
        *&v20 = "expected '['";
        v21 = a5;
        v22 = a6;
        if (mlir::detail::Parser::parseToken(a1, 22, &v20))
        {
          v12 = *(a1 + 1);
          v13 = v12 + 56;
          if (*(v12 + 56) != 29)
          {
            goto LABEL_27;
          }

LABEL_23:
          *(v12 + 80) = *v13;
          *(v12 + 96) = *(v13 + 16);
          mlir::Lexer::lexToken(&v20, (*(a1 + 1) + 8));
          v14 = *(a1 + 1);
          *(v14 + 56) = v20;
          *(v14 + 72) = v21;
          return 1;
        }

        return 0;
      }

      goto LABEL_21;
    }

    if (a2 != 3)
    {
      goto LABEL_17;
    }

LABEL_25:
    v23 = 1283;
    *&v20 = "expected '<'";
    v21 = a5;
    v22 = a6;
    if (!mlir::detail::Parser::parseToken(a1, 23, &v20))
    {
      return 1;
    }

    v12 = *(a1 + 1);
    v13 = v12 + 56;
    if (*(v12 + 56) == 19)
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  if (a2 <= 6)
  {
    if (a2 != 5)
    {
      if (*(*(a1 + 1) + 56) != 22)
      {
        return 1;
      }

      goto LABEL_9;
    }

    if (*(*(a1 + 1) + 56) != 21)
    {
      return 1;
    }

LABEL_21:
    v23 = 1283;
    *&v20 = "expected '('";
    v21 = a5;
    v22 = a6;
    if (mlir::detail::Parser::parseToken(a1, 21, &v20))
    {
      v12 = *(a1 + 1);
      v13 = v12 + 56;
      if (*(v12 + 56) != 28)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }

    return 0;
  }

  if (a2 == 7)
  {
    if (*(*(a1 + 1) + 56) != 23)
    {
      return 1;
    }

    goto LABEL_25;
  }

  if (a2 != 8)
  {
    goto LABEL_27;
  }

  if (*(*(a1 + 1) + 56) != 20)
  {
    return 1;
  }

LABEL_17:
  v23 = 1283;
  *&v20 = "expected '{'";
  v21 = a5;
  v22 = a6;
  if (!mlir::detail::Parser::parseToken(a1, 20, &v20))
  {
    return 0;
  }

  v12 = *(a1 + 1);
  v13 = v12 + 56;
  if (*(v12 + 56) == 27)
  {
    goto LABEL_23;
  }

LABEL_27:
  if ((a3(a4) & 1) == 0)
  {
    return 0;
  }

  while (1)
  {
    v15 = *(a1 + 1);
    if (*(v15 + 56) != 16)
    {
      break;
    }

    *(v15 + 80) = *(v15 + 56);
    *(v15 + 96) = *(v15 + 72);
    mlir::Lexer::lexToken(&v20, (*(a1 + 1) + 8));
    v16 = *(a1 + 1);
    *(v16 + 56) = v20;
    *(v16 + 72) = v21;
    if ((a3(a4) & 1) == 0)
    {
      return 0;
    }
  }

  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
LABEL_41:
        v23 = 1283;
        *&v20 = "expected '>'";
        v21 = a5;
        v22 = a6;
        v18 = a1;
        v19 = 19;
        return mlir::detail::Parser::parseToken(v18, v19, &v20);
      }

      goto LABEL_40;
    }

    if (a2)
    {
LABEL_44:
      v23 = 1283;
      *&v20 = "expected ')'";
      v21 = a5;
      v22 = a6;
      v18 = a1;
      v19 = 28;
      return mlir::detail::Parser::parseToken(v18, v19, &v20);
    }

    return 1;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  if (a2 != 6)
  {
    if (a2 == 7)
    {
      goto LABEL_41;
    }

LABEL_43:
    v23 = 1283;
    *&v20 = "expected '}'";
    v21 = a5;
    v22 = a6;
    v18 = a1;
    v19 = 27;
    return mlir::detail::Parser::parseToken(v18, v19, &v20);
  }

LABEL_40:
  v23 = 1283;
  *&v20 = "expected ']'";
  v21 = a5;
  v22 = a6;
  v18 = a1;
  v19 = 29;
  return mlir::detail::Parser::parseToken(v18, v19, &v20);
}

BOOL mlir::detail::Parser::parseToken(mlir::detail::Parser *a1, int a2, const llvm::Twine *a3)
{
  v3 = *(a1 + 1);
  if (*(v3 + 56) == a2)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken(&v15, (*(a1 + 1) + 8));
    v5 = *(a1 + 1);
    *(v5 + 56) = v15;
    *(v5 + 72) = v16;
    return 1;
  }

  else
  {
    mlir::detail::Parser::emitWrongTokenError(&v15, a1, a3);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v15);
    if (v15)
    {
      mlir::InFlightDiagnostic::report(&v15);
    }

    if (v24 == 1)
    {
      if (v23 != &v24)
      {
        free(v23);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v22;
        v9 = __p;
        if (v22 != __p)
        {
          do
          {
            v8 = sub_10005BEF4(v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v22 = v7;
        operator delete(v9);
      }

      v10 = v19;
      if (v19)
      {
        v11 = v20;
        v12 = v19;
        if (v20 != v19)
        {
          do
          {
            v13 = *--v11;
            *v11 = 0;
            if (v13)
            {
              operator delete[]();
            }
          }

          while (v11 != v10);
          v12 = v19;
        }

        v20 = v10;
        operator delete(v12);
      }

      if (v17 != &v18)
      {
        free(v17);
      }
    }
  }

  return v6;
}

BOOL mlir::detail::Parser::parseCommaSeparatedListUntil(mlir::detail::Parser *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, char a5)
{
  v6 = *(a1 + 1);
  if (*(v6 + 56) == a2)
  {
    if (a5)
    {
      *(v6 + 80) = *(v6 + 56);
      *(v6 + 96) = *(v6 + 72);
      mlir::Lexer::lexToken(&v25, (*(a1 + 1) + 8));
      v7 = *(a1 + 1);
      *(v7 + 56) = v25;
      *(v7 + 72) = v26;
      return 1;
    }

    else
    {
      v23[0] = "expected list element";
      v24 = 259;
      mlir::detail::Parser::emitWrongTokenError(&v25, a1, v23);
      v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v25);
      if (v25)
      {
        mlir::InFlightDiagnostic::report(&v25);
      }

      if (v35 == 1)
      {
        if (v34 != &v35)
        {
          free(v34);
        }

        v14 = __p;
        if (__p)
        {
          v15 = v33;
          v16 = __p;
          if (v33 != __p)
          {
            do
            {
              v15 = sub_10005BEF4(v15 - 1);
            }

            while (v15 != v14);
            v16 = __p;
          }

          v33 = v14;
          operator delete(v16);
        }

        v17 = v30;
        if (v30)
        {
          v18 = v31;
          v19 = v30;
          if (v31 != v30)
          {
            do
            {
              v20 = *--v18;
              *v18 = 0;
              if (v20)
              {
                operator delete[]();
              }
            }

            while (v18 != v17);
            v19 = v30;
          }

          v31 = v17;
          operator delete(v19);
        }

        if (v27 != &v29)
        {
          free(v27);
        }
      }
    }
  }

  else
  {
    v11 = a2;
    if (a3(a4))
    {
      while (1)
      {
        v12 = *(a1 + 1);
        if (*(v12 + 56) != 16)
        {
          break;
        }

        *(v12 + 80) = *(v12 + 56);
        *(v12 + 96) = *(v12 + 72);
        mlir::Lexer::lexToken(&v25, (*(a1 + 1) + 8));
        v13 = *(a1 + 1);
        *(v13 + 56) = v25;
        *(v13 + 72) = v26;
        if ((a3(a4) & 1) == 0)
        {
          return 0;
        }
      }

      v24 = 1283;
      v23[0] = "expected ',' or '";
      v23[2] = mlir::Token::getTokenSpelling(v11);
      v23[3] = v21;
      *&v25 = v23;
      v26 = "'";
      v28 = 770;
      return mlir::detail::Parser::parseToken(a1, v11, &v25);
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

void mlir::detail::Parser::emitWrongTokenError(mlir::InFlightDiagnostic *__return_ptr a1@<X8>, mlir::detail::Parser *this@<X0>, const llvm::Twine *a3@<X1>)
{
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v7 = *(this + 1);
  v8 = *(v7 + 56) == 0;
  v9 = *(v7 + 24);
  v10 = (Loc - v8);
  v11 = Loc - v8 - v9;
  *&v28 = v9;
  *(&v28 + 1) = v11;
  last_not_of = llvm::StringRef::find_last_not_of(&v28, " \t", 2, 0xFFFFFFFFFFFFFFFFLL);
  v13 = v11 - (last_not_of + 1);
  if (v11 < last_not_of + 1)
  {
    v13 = 0;
  }

  v14 = v28;
  v15 = *(&v28 + 1) - v13;
  if (*(&v28 + 1) < v15)
  {
    v15 = *(&v28 + 1);
  }

  *(&v28 + 1) = v15;
  if (v15)
  {
    while (1)
    {
      v18 = (v14 + v15);
      v19 = *(v14 + v15 - 1);
      if (v19 != 10 && v19 != 13)
      {
        break;
      }

      *(&v28 + 1) = v15 - 1;
      v27 = v28;
      last_of = llvm::StringRef::find_last_of(&v27, "\n\r", 2, 0xFFFFFFFFFFFFFFFFLL);
      if (last_of != -1)
      {
        if (*(&v27 + 1) >= last_of)
        {
          v22 = last_of;
        }

        else
        {
          v22 = *(&v27 + 1);
        }

        *&v27 = v27 + v22;
        *(&v27 + 1) -= v22;
      }

      v23 = llvm::StringRef::find(&v27, "//", 2uLL, 0);
      v24 = *(&v28 + 1);
      if (v23 != -1)
      {
        if (*(&v28 + 1) >= v23 - *(&v27 + 1) + *(&v28 + 1))
        {
          v24 = v23 - *(&v27 + 1) + *(&v28 + 1);
        }

        *(&v28 + 1) = v24;
      }

      v16 = llvm::StringRef::find_last_not_of(&v28, " \t", 2, 0xFFFFFFFFFFFFFFFFLL);
      v17 = v24 - (v16 + 1);
      if (v24 < v16 + 1)
      {
        v17 = 0;
      }

      v14 = v28;
      v15 = *(&v28 + 1) - v17;
      if (*(&v28 + 1) < v15)
      {
        v15 = *(&v28 + 1);
      }

      *(&v28 + 1) = v15;
      if (!v15)
      {
        goto LABEL_26;
      }
    }

    v25 = *(this + 1) + 8;
  }

  else
  {
LABEL_26:
    v25 = *(this + 1) + 8;
    v18 = v10;
  }

  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(v25, v18);
  mlir::emitError(EncodedSourceLocation, a3, a1);
  if (*(*(this + 1) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(a1);
  }
}

void mlir::detail::Parser::emitError(mlir::InFlightDiagnostic *__return_ptr a1@<X8>, mlir::detail::Parser *this@<X0>, const llvm::Twine *a3@<X1>)
{
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v7 = Loc;
  v8 = *(this + 1);
  if (!*(v8 + 56))
  {
    v7 = (Loc - 1);
  }

  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(v8 + 8, v7);
  mlir::emitError(EncodedSourceLocation, a3, a1);
  if (*(*(this + 1) + 56) == 1)
  {

    mlir::InFlightDiagnostic::abandon(a1);
  }
}

void mlir::detail::Parser::emitError(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, mlir::InFlightDiagnostic *a4@<X8>)
{
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, a2);
  mlir::emitError(EncodedSourceLocation, a3, a4);
  if (*(*(a1 + 8) + 56) == 1)
  {

    mlir::InFlightDiagnostic::abandon(a4);
  }
}

uint64_t mlir::detail::Parser::parseOptionalString(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 56) != 11)
  {
    return 0;
  }

  if (a2)
  {
    mlir::Token::getStringValue((v3 + 56), &v6);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v6;
    v3 = *(a1 + 8);
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken(&v6, (*(a1 + 8) + 8));
  *(*(a1 + 8) + 56) = v6;
  return 1;
}

uint64_t mlir::detail::Parser::parseOptionalInteger(mlir::detail::Parser *this, llvm::APInt *a2)
{
  v4 = 0;
  v5 = *(this + 1);
  v6 = (v5 + 56);
  v7 = *(v5 + 56);
  if (v7 > 59)
  {
    if (v7 == 80)
    {
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v26, (*(this + 1) + 8));
      v16 = *(this + 1);
      *(v16 + 56) = v26;
      *(v16 + 72) = v27;
      v17 = *(a2 + 2);
      if (v17 > 0x40)
      {
        v4 = 1;
        **a2 = 1;
        bzero((*a2 + 8), (((v17 + 63) >> 3) - 8) & 0xFFFFFFF8);
        goto LABEL_39;
      }

      *a2 = v17 != 0;
    }

    else
    {
      v9 = 0;
      if (v7 != 60)
      {
        return v4 | (v9 << 8);
      }

      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v26, (*(this + 1) + 8));
      v14 = *(this + 1);
      *(v14 + 56) = v26;
      *(v14 + 72) = v27;
      v15 = *(a2 + 2);
      if (v15 > 0x40)
      {
        **a2 = 0;
        bzero((*a2 + 8), (((v15 + 63) >> 3) - 8) & 0xFFFFFFF8);
      }

      else
      {
        *a2 = 0;
      }
    }

    goto LABEL_38;
  }

  v8 = v7 == 10 || v7 == 24;
  v9 = 0;
  if (v8)
  {
    if (v7 == 24)
    {
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v26, (*(this + 1) + 8));
      v10 = *(this + 1);
      *(v10 + 56) = v26;
      *(v10 + 72) = v27;
      v5 = *(this + 1);
    }

    v24 = *(v5 + 56);
    v25 = *(v5 + 72);
    *&v26 = "expected integer value";
    v28 = 259;
    if (!mlir::detail::Parser::parseToken(this, 10, &v26))
    {
      goto LABEL_21;
    }

    v23[0] = *(&v24 + 1);
    v23[1] = v25;
    v11 = 10;
    if (v25 >= 2)
    {
      if (*(*(&v24 + 1) + 1) == 120)
      {
        v11 = 0;
      }

      else
      {
        v11 = 10;
      }
    }

    if (llvm::StringRef::getAsInteger(v23, v11, a2))
    {
      Loc = mlir::Token::getLoc(&v24);
      v21 = "integer value too large";
      v22 = 259;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
      mlir::emitError(EncodedSourceLocation, &v21, &v26);
      if (*(*(this + 1) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v26);
      }

      if (v26)
      {
        mlir::InFlightDiagnostic::report(&v26);
      }

      if (v29 == 1)
      {
        sub_10005BE10(&v26 + 1);
      }

LABEL_21:
      v4 = 0;
LABEL_39:
      v9 = 1;
      return v4 | (v9 << 8);
    }

    v18 = *(a2 + 2);
    v19 = (*a2 + 8 * ((v18 - 1) >> 6));
    if (v18 < 0x41)
    {
      v19 = a2;
    }

    if ((*v19 >> (v18 - 1)))
    {
      llvm::APInt::zext(&v26, a2, v18 + 1);
      if (*(a2 + 2) >= 0x41u && *a2)
      {
        operator delete[]();
      }

      *a2 = v26;
      *(a2 + 2) = DWORD2(v26);
    }

    if (v7 == 24)
    {
      sub_1000309DC(a2);
    }

LABEL_38:
    v4 = 1;
    goto LABEL_39;
  }

  return v4 | (v9 << 8);
}

uint64_t mlir::detail::Parser::parseOptionalDecimalInteger(mlir::detail::Parser *this, llvm::APInt *a2)
{
  v2 = *(this + 1);
  v3 = *(v2 + 56);
  if (v3 == 24 || v3 == 10)
  {
    if (v3 == 24)
    {
      *(v2 + 80) = *(v2 + 56);
      *(v2 + 96) = *(v2 + 72);
      mlir::Lexer::lexToken(&v37, (*(this + 1) + 8));
      v7 = *(this + 1);
      *(v7 + 56) = v37;
      *(v7 + 72) = v38;
      v2 = *(this + 1);
    }

    v35 = *(v2 + 56);
    v36 = *(v2 + 72);
    *&v37 = "expected integer value";
    v40 = 259;
    if (mlir::detail::Parser::parseToken(this, 10, &v37))
    {
      v34[0] = *(&v35 + 1);
      v34[1] = v36;
      if (**(&v35 + 1) == 48 && v36 >= 2)
      {
        v11 = *(*(&v35 + 1) + 1);
        v10 = *(&v35 + 1) + 1;
        v9 = v11;
        v12 = v11 + 32;
        if ((v11 - 65) < 0x1A)
        {
          v9 = v12;
        }

        if (v9 == 120)
        {
          v13 = *(a2 + 2);
          if (v13 > 0x40)
          {
            **a2 = 0;
            bzero((*a2 + 8), (((v13 + 63) >> 3) - 8) & 0xFFFFFFF8);
          }

          else
          {
            *a2 = 0;
          }

          v29 = *(this + 1);
          *(v29 + 40) = v10;
          *(v29 + 80) = *(v29 + 56);
          *(v29 + 96) = *(v29 + 72);
          mlir::Lexer::lexToken(&v37, (*(this + 1) + 8));
          v30 = *(this + 1);
          *(v30 + 56) = v37;
          *(v30 + 72) = v38;
LABEL_55:
          v14 = 1;
LABEL_61:
          v15 = 1;
          return v14 | (v15 << 8);
        }
      }

      if (!llvm::StringRef::getAsInteger(v34, 0xAu, a2))
      {
        v25 = *(a2 + 2);
        v26 = *a2;
        v27 = (*a2 + 8 * ((v25 - 1) >> 6));
        if (v25 < 0x41)
        {
          v27 = a2;
        }

        if ((*v27 >> (v25 - 1)))
        {
          llvm::APInt::zext(&v37, a2, v25 + 1);
          if (*(a2 + 2) >= 0x41u && *a2)
          {
            operator delete[]();
          }

          v26 = v37;
          *a2 = v37;
          v25 = DWORD2(v37);
          *(a2 + 2) = DWORD2(v37);
        }

        if (v3 == 24)
        {
          if (v25 > 0x40)
          {
            llvm::APInt::flipAllBitsSlowCase(a2);
          }

          else
          {
            if (v25)
            {
              v28 = 0xFFFFFFFFFFFFFFFFLL >> -v25;
            }

            else
            {
              v28 = 0;
            }

            *a2 = v28 & ~v26;
          }

          llvm::APInt::operator++(a2);
        }

        goto LABEL_55;
      }

      Loc = mlir::Token::getLoc(&v35);
      v32 = "integer value too large";
      v33 = 259;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
      mlir::emitError(EncodedSourceLocation, &v32, &v37);
      if (*(*(this + 1) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v37);
      }

      if (v37)
      {
        mlir::InFlightDiagnostic::report(&v37);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v45;
          v20 = __p;
          if (v45 != __p)
          {
            do
            {
              v19 = sub_10005BEF4(v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v45 = v18;
          operator delete(v20);
        }

        v21 = v42;
        if (v42)
        {
          v22 = v43;
          v23 = v42;
          if (v43 != v42)
          {
            do
            {
              v24 = *--v22;
              *v22 = 0;
              if (v24)
              {
                operator delete[]();
              }
            }

            while (v22 != v21);
            v23 = v42;
          }

          v43 = v21;
          operator delete(v23);
        }

        if (v39 != &v41)
        {
          free(v39);
        }
      }
    }

    v14 = 0;
    goto LABEL_61;
  }

  v14 = 0;
  v15 = 0;
  return v14 | (v15 << 8);
}

BOOL mlir::detail::Parser::parseFloatFromLiteral(uint64_t a1, llvm::detail::IEEEFloat *a2, mlir::Token *this, unsigned int a4, void *a5)
{
  if (*this != 10)
  {
    if (*this == 9)
    {
      v10 = COERCE_DOUBLE(mlir::Token::getFloatingPointValue(this, a2, this, a4));
      if (v13)
      {
        v14 = v10;
        if (a4)
        {
          v14 = -v10;
        }

        v48[0] = v14;
        sub_100073128(a2, v48, v11, v12);
        LOBYTE(v48[0]) = 0;
        v15 = 1;
        llvm::APFloat::convert(a2, a5, 1, v48);
        return v15;
      }

      Loc = mlir::Token::getLoc(this);
      v44 = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc);
      mlir::emitError(EncodedSourceLocation, v43, v48);
      if (*(*(a1 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(v48);
      }

      if (*&v48[0])
      {
        v45 = 3;
        v46 = "floating point value too large";
        v47 = 30;
        v32 = &v45;
        v33 = v49;
        if (v50 >= v51)
        {
          if (v49 <= &v45 && v49 + 24 * v50 > &v45)
          {
            v42 = &v45 - v49;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v33 = v49;
            v32 = (v49 + v42);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v32 = &v45;
            v33 = v49;
          }
        }

        v34 = &v33[24 * v50];
        v35 = *v32;
        *(v34 + 2) = *(v32 + 2);
        *v34 = v35;
        ++v50;
      }

      v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
      if (*&v48[0])
      {
        mlir::InFlightDiagnostic::report(v48);
      }

      if (v58 != 1)
      {
        return v15;
      }

      if (v57 != &v58)
      {
        free(v57);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v56;
        v38 = __p;
        if (v56 != __p)
        {
          do
          {
            v37 = sub_10005BEF4(v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v56 = v36;
        operator delete(v38);
      }

      v26 = v53;
      if (!v53)
      {
LABEL_54:
        if (v49 != v52)
        {
          free(v49);
        }

        return v15;
      }

      v39 = v54;
      v28 = v53;
      if (v54 == v53)
      {
LABEL_53:
        v54 = v26;
        operator delete(v28);
        goto LABEL_54;
      }

      do
      {
        v40 = *--v39;
        *v39 = 0;
        if (v40)
        {
          operator delete[]();
        }
      }

      while (v39 != v26);
    }

    else
    {
      v17 = mlir::Token::getLoc(this);
      v44 = 257;
      v18 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v17);
      mlir::emitError(v18, v43, v48);
      if (*(*(a1 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(v48);
      }

      if (*&v48[0])
      {
        v45 = 3;
        v46 = "expected floating point literal";
        v47 = 31;
        v19 = &v45;
        v20 = v49;
        if (v50 >= v51)
        {
          if (v49 <= &v45 && v49 + 24 * v50 > &v45)
          {
            v41 = &v45 - v49;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v20 = v49;
            v19 = (v49 + v41);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v19 = &v45;
            v20 = v49;
          }
        }

        v21 = &v20[24 * v50];
        v22 = *v19;
        *(v21 + 2) = *(v19 + 2);
        *v21 = v22;
        ++v50;
      }

      v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
      if (*&v48[0])
      {
        mlir::InFlightDiagnostic::report(v48);
      }

      if (v58 != 1)
      {
        return v15;
      }

      if (v57 != &v58)
      {
        free(v57);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v56;
        v25 = __p;
        if (v56 != __p)
        {
          do
          {
            v24 = sub_10005BEF4(v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v56 = v23;
        operator delete(v25);
      }

      v26 = v53;
      if (!v53)
      {
        goto LABEL_54;
      }

      v27 = v54;
      v28 = v53;
      if (v54 == v53)
      {
        goto LABEL_53;
      }

      do
      {
        v29 = *--v27;
        *v27 = 0;
        if (v29)
        {
          operator delete[]();
        }
      }

      while (v27 != v26);
    }

    v28 = v53;
    goto LABEL_53;
  }

  return mlir::detail::Parser::parseFloatFromIntegerLiteral(a1, a2, this, a4, a5);
}

llvm::detail::IEEEFloat *sub_100073128(llvm::detail::IEEEFloat *a1, double *a2, uint64_t a3, unsigned int a4)
{
  if (*(a1 + 24) == 1)
  {
    v6 = *a1;
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v6)
    {
      sub_10002B154(a1);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(a1);
    }

    *(a1 + 24) = 0;
  }

  v7 = llvm::detail::IEEEFloat::IEEEFloat(v10, *a2, a2, a3, a4);
  v8 = llvm::APFloatBase::IEEEdouble(v7);
  llvm::APFloat::Storage::Storage(a1, v10, v8);
  llvm::detail::IEEEFloat::~IEEEFloat(v10);
  *(a1 + 24) = 1;
  return a1;
}

BOOL mlir::detail::Parser::parseFloatFromIntegerLiteral(uint64_t a1, llvm::detail::IEEEFloat *a2, mlir::Token *this, int a4, uint64_t a5)
{
  v6 = *(this + 2);
  if (v6 < 2 || (v7 = *(this + 1), *(v7 + 1) != 120))
  {
    Loc = mlir::Token::getLoc(this);
    v44[0] = "unexpected decimal integer literal for a floating point value";
    v45 = 259;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc);
    mlir::emitError(EncodedSourceLocation, v44, &v48);
    if (*(*(a1 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v48);
    }

    mlir::Diagnostic::attachNote(&v49, 0, 0);
  }

  if (a4)
  {
    v8 = mlir::Token::getLoc(this);
    v44[0] = "hexadecimal float literal should not have a leading minus";
    v45 = 259;
    v9 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v8);
    mlir::emitError(v9, v44, &v48);
    if (*(*(a1 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v48);
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v48);
    if (v48)
    {
      mlir::InFlightDiagnostic::report(&v48);
    }

    if (v57 == 1)
    {
      if (v56 != &v57)
      {
        free(v56);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v55;
        v13 = __p;
        if (v55 != __p)
        {
          do
          {
            v12 = sub_10005BEF4(v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v55 = v11;
        operator delete(v13);
      }

      v14 = v52;
      if (v52)
      {
        v15 = v53;
        v16 = v52;
        if (v53 != v52)
        {
          do
          {
            v17 = *--v15;
            *v15 = 0;
            if (v17)
            {
              operator delete[]();
            }
          }

          while (v15 != v14);
          v16 = v52;
        }

        v53 = v14;
        operator delete(v16);
      }

      if (v50 != v51)
      {
        free(v50);
      }
    }

    return v10;
  }

  LODWORD(v47) = 1;
  v46 = 0;
  v48 = v7;
  v49 = v6;
  llvm::StringRef::getAsInteger(&v48, 0, &v46);
  v24 = a5;
  v25 = llvm::APFloatBase::semanticsSizeInBits(a5);
  v26 = v25;
  v27 = v47;
  if (v47 <= 0x40)
  {
    if (64 - __clz(v46) <= v25)
    {
      v28 = llvm::APInt::APInt(&v48, v25, (v47 + 63) >> 6, &v46);
      if ((*(a2 + 24) & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_56:
      v42 = *a2;
      v43 = llvm::APFloatBase::PPCDoubleDouble(v28);
      if (v43 == v42)
      {
        sub_10002B154(a2);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(a2);
      }

      *(a2 + 24) = 0;
      v31 = v24;
      v32 = a2;
      if (v43 != v24)
      {
        goto LABEL_34;
      }

LABEL_64:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v32, v31, &v48);
    }

LABEL_37:
    v33 = mlir::Token::getLoc(this);
    v44[0] = "hexadecimal float constant out of range for type";
    v45 = 259;
    v34 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v33);
    mlir::emitError(v34, v44, &v48);
    if (*(*(a1 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v48);
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v48);
    if (v48)
    {
      mlir::InFlightDiagnostic::report(&v48);
    }

    if (v57 == 1)
    {
      if (v56 != &v57)
      {
        free(v56);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v55;
        v37 = __p;
        if (v55 != __p)
        {
          do
          {
            v36 = sub_10005BEF4(v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v55 = v35;
        operator delete(v37);
      }

      v38 = v52;
      if (v52)
      {
        v39 = v53;
        v40 = v52;
        if (v53 != v52)
        {
          do
          {
            v41 = *--v39;
            *v39 = 0;
            if (v41)
            {
              operator delete[]();
            }
          }

          while (v39 != v38);
          v40 = v52;
        }

        v53 = v38;
        operator delete(v40);
      }

      if (v50 != v51)
      {
        free(v50);
      }
    }

    goto LABEL_68;
  }

  if (v27 - llvm::APInt::countLeadingZerosSlowCase(&v46) > v25)
  {
    goto LABEL_37;
  }

  v28 = llvm::APInt::APInt(&v48, v26, (v27 + 63) >> 6, v46);
  if (*(a2 + 24))
  {
    goto LABEL_56;
  }

LABEL_33:
  v30 = llvm::APFloatBase::PPCDoubleDouble(v28);
  v31 = v24;
  v32 = a2;
  if (v30 == v24)
  {
    goto LABEL_64;
  }

LABEL_34:
  llvm::detail::IEEEFloat::IEEEFloat(v32, v31, &v48, v29);
  *(a2 + 24) = 1;
  if (v49 >= 0x41 && v48)
  {
    operator delete[]();
  }

  v10 = 1;
LABEL_68:
  if (v47 >= 0x41 && v46)
  {
    operator delete[]();
  }

  return v10;
}

BOOL mlir::detail::Parser::parseOptionalKeyword(mlir::detail::Parser *this, llvm::StringRef *a2)
{
  v3 = *(this + 1);
  v4 = *(v3 + 56);
  if (v4 == 3 || v4 == 12)
  {
    goto LABEL_6;
  }

  v7 = a2;
  result = mlir::Token::isKeyword((v3 + 56));
  if (result)
  {
    v3 = *(this + 1);
    a2 = v7;
LABEL_6:
    *a2 = *(v3 + 64);
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken(&v9, (*(this + 1) + 8));
    v6 = *(this + 1);
    *(v6 + 56) = v9;
    *(v6 + 72) = v10;
    return 1;
  }

  return result;
}

uint64_t mlir::detail::Parser::parseOptionalKeywordOrString(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 56);
  v6 = v5 == 3 || v5 == 12;
  if (v6 || (isKeyword = mlir::Token::isKeyword((v4 + 56)), v4 = *(a1 + 8), isKeyword))
  {
    v8 = *(v4 + 64);
    v7 = *(v4 + 72);
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = v7;
    mlir::Lexer::lexToken(&__dst, (*(a1 + 8) + 8));
    *(*(a1 + 8) + 56) = __dst;
    if (v8)
    {
      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100003FC0();
      }

      if (v7 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v7;
      if (v7)
      {
        memmove(&__dst, v8, v7);
      }

      __dst.__r_.__value_.__s.__data_[v7] = 0;
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
LABEL_24:
        *a2 = __dst;
        return 1;
      }
    }

    operator delete(*a2);
    goto LABEL_24;
  }

  if (*(v4 + 56) == 11)
  {
    if (a2)
    {
      mlir::Token::getStringValue((v4 + 56), &__dst);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = __dst;
      v4 = *(a1 + 8);
    }

    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = *(v4 + 72);
    mlir::Lexer::lexToken(&__dst, (*(a1 + 8) + 8));
    *(*(a1 + 8) + 56) = __dst;
    return 1;
  }

  return 0;
}

void mlir::detail::Parser::parseResourceHandle(mlir::detail::Parser *a1@<X0>, void *a2@<X1>, int8x16_t *a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a2;
  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  if (mlir::detail::Parser::parseOptionalKeywordOrString(a1, a3))
  {
    v8 = sub_100074150(*(*(a1 + 1) + 104) + 48, &v52);
    v9 = a3[1].i8[7];
    if (v9 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = a3->i64[0];
    }

    if (v9 >= 0)
    {
      v11 = a3[1].i8[7];
    }

    else
    {
      v11 = a3->u64[1];
    }

    v12 = llvm::StringMapImpl::hash(v10, v11);
    v13 = sub_1000884C4(v8, v10, v11, v12);
    v14 = *v13;
    if ((*(*v13 + 31) & 0x8000000000000000) != 0)
    {
      if (!*(v14 + 16))
      {
        goto LABEL_28;
      }
    }

    else if (!*(*v13 + 31))
    {
LABEL_28:
      (*(*v52 + 32))(&v49);
      if (v51)
      {
        (*(*v52 + 40))(&v57);
        if (*(v14 + 31) < 0)
        {
          operator delete(*(v14 + 8));
        }

        v22 = v57;
        *(v14 + 24) = v58;
        *(v14 + 8) = v22;
        *(v14 + 32) = v49;
        *(v14 + 48) = v50;
        goto LABEL_32;
      }

      v48[16] = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 1) + 8, Loc);
      mlir::emitError(EncodedSourceLocation, v48, &v57);
      if (*(*(a1 + 1) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v57);
      }

      if (!v57)
      {
        goto LABEL_45;
      }

      LODWORD(v53) = 3;
      v54 = "unknown 'resource' key '";
      v55 = 24;
      v24 = &v53;
      v25 = v59;
      if (v60 >= v61)
      {
        if (v59 <= &v53 && v59 + 24 * v60 > &v53)
        {
          v45 = &v53 - v59;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
          v25 = v59;
          v24 = (v59 + v45);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
          v24 = &v53;
          v25 = v59;
        }
      }

      v26 = &v25[24 * v60];
      v27 = *v24;
      *(v26 + 2) = v24[2];
      *v26 = v27;
      ++v60;
      if (!v57)
      {
        goto LABEL_45;
      }

      v56 = 260;
      v53 = a3;
      mlir::Diagnostic::operator<<(&v57 + 8, &v53);
      if (!v57)
      {
        goto LABEL_45;
      }

      LODWORD(v53) = 3;
      v54 = "' for dialect '";
      v55 = 15;
      v28 = &v53;
      v29 = v59;
      if (v60 >= v61)
      {
        if (v59 <= &v53 && v59 + 24 * v60 > &v53)
        {
          v46 = &v53 - v59;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
          v29 = v59;
          v28 = (v59 + v46);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
          v28 = &v53;
          v29 = v59;
        }
      }

      v30 = &v29[24 * v60];
      v31 = *v28;
      *(v30 + 2) = v28[2];
      *v30 = v31;
      ++v60;
      if (v57 && (v32 = v52[1], v34 = *(v32 + 8), v33 = *(v32 + 16), v56 = 261, v53 = v34, v54 = v33, mlir::Diagnostic::operator<<(&v57 + 8, &v53), v57))
      {
        LODWORD(v53) = 3;
        v54 = "'";
        v55 = 1;
        v35 = &v53;
        v36 = v59;
        if (v60 >= v61)
        {
          if (v59 <= &v53 && v59 + 24 * v60 > &v53)
          {
            v47 = &v53 - v59;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
            v36 = v59;
            v35 = (v59 + v47);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
            v35 = &v53;
            v36 = v59;
          }
        }

        v37 = &v36[24 * v60];
        v38 = *v35;
        *(v37 + 2) = v35[2];
        *v37 = v38;
        ++v60;
        v39 = v57;
        *a4 = 0;
        *(a4 + 24) = 0;
        if (v39)
        {
          mlir::InFlightDiagnostic::report(&v57);
        }
      }

      else
      {
LABEL_45:
        *a4 = 0;
        *(a4 + 24) = 0;
      }

      if (v68)
      {
        if (v67 != &v68)
        {
          free(v67);
        }

        v40 = __p;
        if (__p)
        {
          v41 = v66;
          v42 = __p;
          if (v66 != __p)
          {
            do
            {
              v41 = sub_10005BEF4(v41 - 1);
            }

            while (v41 != v40);
            v42 = __p;
          }

          v66 = v40;
          operator delete(v42);
        }

        v18 = v63;
        if (!v63)
        {
          goto LABEL_62;
        }

        v43 = v64;
        v20 = v63;
        if (v64 == v63)
        {
LABEL_61:
          v64 = v18;
          operator delete(v20);
LABEL_62:
          if (v59 != v62)
          {
            free(v59);
          }

          return;
        }

        do
        {
          v44 = *--v43;
          *v43 = 0;
          if (v44)
          {
            operator delete[]();
          }
        }

        while (v43 != v18);
LABEL_60:
        v20 = v63;
        goto LABEL_61;
      }

      return;
    }

LABEL_32:
    std::string::operator=(a3, (v14 + 8));
    *a4 = *(v14 + 32);
    *(a4 + 16) = *(v14 + 48);
    *(a4 + 24) = 1;
    return;
  }

  v53 = "expected identifier key for 'resource' entry";
  v56 = 259;
  mlir::detail::Parser::emitError(&v57, a1, &v53);
  *a4 = 0;
  *(a4 + 24) = 0;
  if (v57)
  {
    mlir::InFlightDiagnostic::report(&v57);
  }

  if (v68 == 1)
  {
    if (v67 != &v68)
    {
      free(v67);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v66;
      v17 = __p;
      if (v66 != __p)
      {
        do
        {
          v16 = sub_10005BEF4(v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v66 = v15;
      operator delete(v17);
    }

    v18 = v63;
    if (!v63)
    {
      goto LABEL_62;
    }

    v19 = v64;
    v20 = v63;
    if (v64 == v63)
    {
      goto LABEL_61;
    }

    do
    {
      v21 = *--v19;
      *v19 = 0;
      if (v21)
      {
        operator delete[]();
      }
    }

    while (v19 != v18);
    goto LABEL_60;
  }
}

void *sub_100074150(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = (*a1 + 32 * v3);
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 1;
    }

    v8 = 0;
    v9 = 1;
    while (v5 != -4096)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v5 == -8192;
      }

      if (v10)
      {
        v8 = v4;
      }

      v11 = v3 + v9++;
      v3 = v11 & (v2 - 1);
      v4 = (*a1 + 32 * v3);
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 1;
      }
    }

    if (v8)
    {
      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = v4;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v12 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v12 = a2;
LABEL_24:
    v13 = a1;
    sub_1000882A8(a1, v2);
    sub_100088204(v13, v12, &v14);
    a1 = v13;
    a2 = v12;
    v4 = v14;
    ++*(v13 + 8);
    if (*v4 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v7 + 1;
  if (*v4 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v4 = *a2;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0x3800000000;
  return v4 + 1;
}

void mlir::detail::Parser::parseResourceHandle(uint64_t *__return_ptr a1@<X8>, mlir::detail::Parser *this@<X0>, mlir::Dialect *a3@<X1>)
{
  if (sub_10006E654(a3))
  {
    v6 = sub_10006E654(a3);
    __p = 0uLL;
    v34 = 0;
    mlir::detail::Parser::parseResourceHandle(this, v6, &__p, a1);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p.i64[0]);
    }
  }

  else
  {
    v28 = 257;
    mlir::detail::Parser::emitError(&__p, this, v27);
    if (!__p.i64[0])
    {
      goto LABEL_11;
    }

    LODWORD(v29) = 3;
    v30 = "dialect '";
    v31 = 9;
    v7 = &v29;
    v8 = v35;
    if (v36 >= v37)
    {
      if (v35 <= &v29 && v35 + 24 * v36 > &v29)
      {
        v25 = &v29 - v35;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v8 = v35;
        v7 = (v35 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v7 = &v29;
        v8 = v35;
      }
    }

    v9 = &v8[24 * v36];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v36;
    if (__p.i64[0] && (v11 = *(a3 + 1), v12 = *(a3 + 2), v32 = 261, v29 = v11, v30 = v12, mlir::Diagnostic::operator<<(&__p.i64[1], &v29), __p.i64[0]))
    {
      LODWORD(v29) = 3;
      v30 = "' does not expect resource handles";
      v31 = 34;
      v13 = &v29;
      v14 = v35;
      if (v36 >= v37)
      {
        if (v35 <= &v29 && v35 + 24 * v36 > &v29)
        {
          v26 = &v29 - v35;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
          v14 = v35;
          v13 = (v35 + v26);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
          v13 = &v29;
          v14 = v35;
        }
      }

      v15 = &v14[24 * v36];
      v16 = *v13;
      *(v15 + 2) = v13[2];
      *v15 = v16;
      ++v36;
      v17 = __p.i64[0];
      *a1 = 0;
      *(a1 + 24) = 0;
      if (v17)
      {
        mlir::InFlightDiagnostic::report(&__p);
      }
    }

    else
    {
LABEL_11:
      *a1 = 0;
      *(a1 + 24) = 0;
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v18 = v41;
      if (v41)
      {
        v19 = v42;
        v20 = v41;
        if (v42 != v41)
        {
          do
          {
            v19 = sub_10005BEF4(v19 - 1);
          }

          while (v19 != v18);
          v20 = v41;
        }

        v42 = v18;
        operator delete(v20);
      }

      v21 = v39;
      if (v39)
      {
        v22 = v40;
        v23 = v39;
        if (v40 != v39)
        {
          do
          {
            v24 = *--v22;
            *v22 = 0;
            if (v24)
            {
              operator delete[]();
            }
          }

          while (v22 != v21);
          v23 = v39;
        }

        v40 = v21;
        operator delete(v23);
      }

      if (v35 != v38)
      {
        free(v35);
      }
    }
  }
}

uint64_t mlir::detail::Parser::codeCompleteDialectOrElidedOpName(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  for (i = (a2 - 1); i > *(v3 + 24); --i)
  {
    v6 = *i;
    if (v6 > 0xC)
    {
      if (v6 != 32 && v6 != 13)
      {
        return 0;
      }
    }

    else if (v6 != 9)
    {
      if (v6 != 10)
      {
        return 0;
      }

      break;
    }
  }

  (*(**(v3 + 160) + 16))(*(v3 + 160), "", 0);
  v7 = *(a1 + 8);
  v8 = *(v7 + 168) + 16 * *(v7 + 176);
  v9 = *(v8 - 8);
  if (v9)
  {
    v10 = *(v8 - 16);
    v11 = memchr(v10, 46, *(v8 - 8));
    if (v11)
    {
      v12 = v11 - v10 == -1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      (*(**(v7 + 160) + 24))(*(v7 + 160), v10, v9);
    }
  }

  return 0;
}

uint64_t mlir::detail::Parser::codeCompleteDialectSymbol(uint64_t a1)
{
  (*(**(*(a1 + 8) + 160) + 64))(*(*(a1 + 8) + 160));
  return 0;
}

{
  (*(**(*(a1 + 8) + 160) + 80))(*(*(a1 + 8) + 160));
  return 0;
}

void mlir::parseAsmSourceFile(uint64_t **a1, uint64_t a2, uint64_t ***a3, mlir::AsmParserState *a4, mlir::AsmParserState *a5)
{
  v9 = *a3;
  v10 = (*(***a1 + 16))(**a1);
  v12 = mlir::FileLineColLoc::get(v9, v10, v11, 0, 0);
  v13[0] = 0;
  v13[1] = 0;
  v13[2] = 0x1000000000;
  v13[3] = 0;
  v13[4] = 0;
  v13[5] = 0x1000000000;
  v13[6] = 0;
  v13[7] = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = a3;
  mlir::Lexer::Lexer(v19, a1, *a3, a5);
  mlir::Lexer::lexToken(v20, v19);
  v21 = 1;
  v22 = "";
  v23 = 0;
  v25 = 0;
  v26 = 0;
  v24 = v13;
  v27 = 0;
  v28 = v30;
  v29 = 0;
  v30[0] = a4;
  v30[1] = a5;
  v31[0] = "builtin";
  v31[1] = 7;
  v30[2] = v31;
  v30[3] = 0x300000001;
  LOBYTE(v32) = 0;
  LOBYTE(v33) = 0;
  mlir::ModuleOp::create(v12, &v32);
}

uint64_t sub_100075A98(mlir::MLIRContext ****a1)
{
  Loc = mlir::Token::getLoc((a1[1] + 7));
  v3 = v243;
  v241 = v243;
  v242 = &_mh_execute_header;
  v216 = 0;
  v4 = a1[1];
  if (*(v4 + 14) == 6)
  {
    v265 = a1;
    v266 = &v241;
    v267 = &v216;
    if (!sub_1000799D4(&v265))
    {
      goto LABEL_277;
    }

    while (1)
    {
      v5 = a1[1];
      if (*(v5 + 14) != 16)
      {
        break;
      }

      *(v5 + 5) = *(v5 + 7);
      v5[12] = v5[9];
      mlir::Lexer::lexToken(&v244, (a1[1] + 1));
      *(a1[1] + 7) = v244;
      if (!sub_1000799D4(&v265))
      {
        goto LABEL_277;
      }
    }

    v244.__r_.__value_.__r.__words[0] = "expected '=' after SSA name";
    LOWORD(v246) = 259;
    if (!mlir::detail::Parser::parseToken(a1, 18, &v244))
    {
      goto LABEL_277;
    }

    v4 = a1[1];
  }

  v214 = *(v4 + 7);
  v215 = v4[9];
  if (v214 != 3)
  {
    if (!mlir::Token::isKeyword(&v214))
    {
      if (v214 != 11)
      {
        if (!mlir::Token::isCodeCompletionFor(&v214, 11))
        {
          if (v214 == 2)
          {
            v38 = mlir::detail::Parser::codeCompleteDialectOrElidedOpName(a1, Loc);
          }

          else
          {
            v265 = "expected operation name in quotes";
            LOWORD(v269) = 259;
            mlir::detail::Parser::emitWrongTokenError(&v244, a1, &v265);
            v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v244);
            sub_10006296C(&v244);
          }

          goto LABEL_278;
        }

        v34 = &v244;
        mlir::Token::getStringValue(&v214, &v244);
        size = SHIBYTE(v244.__r_.__value_.__r.__words[2]);
        if ((v244.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v244.__r_.__value_.__r.__words[0];
        }

        if ((v244.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v244.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          if (v34->__r_.__value_.__s.__data_[size - 1] == 46)
          {
            v36 = size - 1;
            if (size != 1)
            {
              v37 = memchr(v34, 46, size - 1);
              if (!v37 || v37 - v34 == -1)
              {
                (*(*a1[1][20] + 3))(a1[1][20], v34, v36);
              }
            }
          }
        }

        else
        {
          (*(*a1[1][20] + 2))(a1[1][20], "", 0);
        }

        if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v244.__r_.__value_.__l.__data_);
        }

LABEL_277:
        v38 = 0;
        goto LABEL_278;
      }

      v29 = sub_100078C48(a1);
      goto LABEL_269;
    }

    v4 = a1[1];
  }

  v6 = v241;
  v7 = v242;
  v8 = mlir::Token::getLoc((v4 + 7));
  v9 = a1[1];
  v11 = v9[8];
  v10 = v9[9];
  v12 = sub_100079EAC(a1);
  v230 = v12;
  v231 = v13;
  if ((v13 & 1) == 0)
  {
    v29 = 0;
    goto LABEL_269;
  }

  v244.__r_.__value_.__r.__words[0] = *(v12 + 8);
  __s2 = mlir::StringAttr::getValue(&v244);
  v15 = v14;
  v264 = 0;
  v16 = v230;
  if (*(v230 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v244.__r_.__value_.__r.__words[0] = *(v230 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v244);
    if (!ReferencedDialect)
    {
      LOWORD(v221) = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation((a1[1] + 1), v8);
      mlir::emitError(EncodedSourceLocation, &v217, &v265);
      if (*(a1[1] + 14) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v265);
      }

      if (v265)
      {
        LODWORD(v244.__r_.__value_.__l.__data_) = 3;
        v244.__r_.__value_.__r.__words[2] = 9;
        v40 = &v244;
        v41 = v268;
        if (v269 >= v270)
        {
          if (v268 <= &v244 && v268 + 24 * v269 > &v244)
          {
            v199 = &v244 - v268;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
            v41 = v268;
            v40 = (v268 + v199);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
            v40 = &v244;
            v41 = v268;
          }
        }

        v42 = &v41[24 * v269];
        v43 = *&v40->__r_.__value_.__l.__data_;
        *(v42 + 2) = *(&v40->__r_.__value_.__l + 2);
        *v42 = v43;
        ++v269;
      }

      DialectNamespace = mlir::OperationName::getDialectNamespace(&v230);
      if (v265)
      {
        LOWORD(v246) = 261;
        v244.__r_.__value_.__r.__words[0] = DialectNamespace;
        v244.__r_.__value_.__l.__size_ = v45;
        mlir::Diagnostic::operator<<(&v266, &v244.__r_.__value_.__l.__data_);
        if (v265)
        {
          LODWORD(v244.__r_.__value_.__l.__data_) = 3;
          v244.__r_.__value_.__l.__size_ = "' not found for custom op '";
          v244.__r_.__value_.__r.__words[2] = 27;
          v46 = &v244;
          v47 = v268;
          if (v269 >= v270)
          {
            if (v268 <= &v244 && v268 + 24 * v269 > &v244)
            {
              v204 = &v244 - v268;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
              v47 = v268;
              v46 = (v268 + v204);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
              v46 = &v244;
              v47 = v268;
            }
          }

          v48 = &v47[24 * v269];
          v49 = *&v46->__r_.__value_.__l.__data_;
          *(v48 + 2) = *(&v46->__r_.__value_.__l + 2);
          *v48 = v49;
          ++v269;
          if (v265)
          {
            LOWORD(v246) = 261;
            v244.__r_.__value_.__r.__words[0] = v11;
            v244.__r_.__value_.__l.__size_ = v10;
            mlir::Diagnostic::operator<<(&v266, &v244.__r_.__value_.__l.__data_);
            if (v265)
            {
              LODWORD(v244.__r_.__value_.__l.__data_) = 3;
              v244.__r_.__value_.__l.__size_ = "' ";
              v244.__r_.__value_.__r.__words[2] = 2;
              v50 = &v244;
              v51 = v268;
              if (v269 >= v270)
              {
                if (v268 <= &v244 && v268 + 24 * v269 > &v244)
                {
                  v209 = &v244 - v268;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
                  v51 = v268;
                  v50 = (v268 + v209);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
                  v50 = &v244;
                  v51 = v268;
                }
              }

              v52 = &v51[24 * v269];
              v53 = *&v50->__r_.__value_.__l.__data_;
              *(v52 + 2) = *(&v50->__r_.__value_.__l + 2);
              *v52 = v53;
              ++v269;
            }
          }
        }
      }

      sub_10006BAFC(&v244, &v265);
      if (v265)
      {
        mlir::InFlightDiagnostic::report(&v265);
      }

      if (v277 == 1)
      {
        if (v276 != &v277)
        {
          free(v276);
        }

        v54 = __p;
        if (__p)
        {
          v55 = v275;
          v56 = __p;
          if (v275 != __p)
          {
            do
            {
              v55 = sub_10005BEF4(v55 - 1);
            }

            while (v55 != v54);
            v56 = __p;
          }

          v275 = v54;
          operator delete(v56);
        }

        v57 = v272;
        if (v272)
        {
          v58 = v273;
          v59 = v272;
          if (v273 != v272)
          {
            do
            {
              v60 = *--v58;
              *v58 = 0;
              if (v60)
              {
                operator delete[]();
              }
            }

            while (v58 != v57);
            v59 = v272;
          }

          v273 = v57;
          operator delete(v59);
        }

        if (v268 != v271)
        {
          free(v268);
        }
      }

      if ((v10 != v15 || v10 && memcmp(v11, __s2, v10)) && v244.__r_.__value_.__r.__words[0])
      {
        LODWORD(v265) = 3;
        v266 = " (tried '";
        v267 = 9;
        v77 = &v265;
        v78 = v245;
        if (v246 >= v247)
        {
          if (v245 <= &v265 && v245 + 24 * v246 > &v265)
          {
            v203 = &v265 - v245;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
            v78 = v245;
            v77 = (v245 + v203);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
            v77 = &v265;
            v78 = v245;
          }
        }

        v79 = &v78[24 * v246];
        v80 = *v77;
        *(v79 + 2) = v77[2];
        *v79 = v80;
        ++v246;
        if (v244.__r_.__value_.__r.__words[0])
        {
          LOWORD(v269) = 261;
          v265 = __s2;
          v266 = v15;
          mlir::Diagnostic::operator<<(&v244.__r_.__value_.__l.__size_, &v265);
          if (v244.__r_.__value_.__r.__words[0])
          {
            LODWORD(v265) = 3;
            v266 = "' as well)";
            v267 = 10;
            v81 = &v265;
            v82 = v245;
            if (v246 >= v247)
            {
              if (v245 <= &v265 && v245 + 24 * v246 > &v265)
              {
                v208 = &v265 - v245;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
                v82 = v245;
                v81 = (v245 + v208);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
                v81 = &v265;
                v82 = v245;
              }
            }

            v83 = &v82[24 * v246];
            v84 = *v81;
            *(v83 + 2) = v81[2];
            *v83 = v84;
            ++v246;
          }
        }
      }

      mlir::Diagnostic::attachNote(&v244.__r_.__value_.__l.__size_, 0, 0);
    }

    (*(*ReferencedDialect + 64))(&v244);
    if (v244.__r_.__value_.__s.__data_[16])
    {
      v31 = &llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,void>::Callbacks + 2;
      v245 = &llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,void>::Callbacks + 2;
      v32 = v264;
      if (v264 >= 8)
      {
        if ((v264 & 4) != 0)
        {
          if ((v264 & 2) != 0)
          {
            v33 = v262;
          }

          else
          {
            v33 = v262[0];
          }

          (*((v264 & 0xFFFFFFFFFFFFFFF8) + 16))(v33);
        }

        if ((v32 & 2) == 0)
        {
          llvm::deallocate_buffer(v262[0], v262[1], v263);
        }

        v31 = v245;
      }

      v264 = v31;
      if (v31 >= 8)
      {
        if ((v31 & 2) != 0 && (v31 & 4) != 0)
        {
          (*((v31 & 0xFFFFFFFFFFFFFFF8) + 8))(v262, &v244);
          (*((v264 & 0xFFFFFFFFFFFFFFF8) + 16))(&v244);
        }

        else
        {
          *v262 = *&v244.__r_.__value_.__l.__data_;
          v263 = v244.__r_.__value_.__r.__words[2];
        }
      }

      v101 = 0;
      v19 = 0;
      goto LABEL_206;
    }

    LOWORD(v221) = 257;
    v61 = mlir::Lexer::getEncodedSourceLocation((a1[1] + 1), v8);
    mlir::emitError(v61, &v217, &v265);
    if (*(a1[1] + 14) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v265);
    }

    if (v265)
    {
      LODWORD(v244.__r_.__value_.__l.__data_) = 3;
      v244.__r_.__value_.__l.__size_ = "custom op '";
      v244.__r_.__value_.__r.__words[2] = 11;
      v62 = &v244;
      v63 = v268;
      if (v269 >= v270)
      {
        if (v268 <= &v244 && v268 + 24 * v269 > &v244)
        {
          v200 = &v244 - v268;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
          v63 = v268;
          v62 = (v268 + v200);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
          v62 = &v244;
          v63 = v268;
        }
      }

      v64 = &v63[24 * v269];
      v65 = *&v62->__r_.__value_.__l.__data_;
      *(v64 + 2) = *(&v62->__r_.__value_.__l + 2);
      *v64 = v65;
      ++v269;
      if (v265)
      {
        LOWORD(v246) = 261;
        v244.__r_.__value_.__r.__words[0] = v11;
        v244.__r_.__value_.__l.__size_ = v10;
        mlir::Diagnostic::operator<<(&v266, &v244.__r_.__value_.__l.__data_);
        if (v265)
        {
          LODWORD(v244.__r_.__value_.__l.__data_) = 3;
          v244.__r_.__value_.__l.__size_ = "' is unknown";
          v244.__r_.__value_.__r.__words[2] = 12;
          v66 = &v244;
          v67 = v268;
          if (v269 >= v270)
          {
            if (v268 <= &v244 && v268 + 24 * v269 > &v244)
            {
              v207 = &v244 - v268;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
              v67 = v268;
              v66 = (v268 + v207);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
              v66 = &v244;
              v67 = v268;
            }
          }

          v68 = &v67[24 * v269];
          v69 = *&v66->__r_.__value_.__l.__data_;
          *(v68 + 2) = *(&v66->__r_.__value_.__l + 2);
          *v68 = v69;
          ++v269;
        }
      }
    }

    sub_10006BAFC(&v244, &v265);
    if (v265)
    {
      mlir::InFlightDiagnostic::report(&v265);
    }

    if (v277 == 1)
    {
      if (v276 != &v277)
      {
        free(v276);
      }

      v70 = __p;
      if (__p)
      {
        v71 = v275;
        v72 = __p;
        if (v275 != __p)
        {
          do
          {
            v71 = sub_10005BEF4(v71 - 1);
          }

          while (v71 != v70);
          v72 = __p;
        }

        v275 = v70;
        operator delete(v72);
      }

      v73 = v272;
      if (v272)
      {
        v74 = v273;
        v75 = v272;
        if (v273 != v272)
        {
          do
          {
            v76 = *--v74;
            *v74 = 0;
            if (v76)
            {
              operator delete[]();
            }
          }

          while (v74 != v73);
          v75 = v272;
        }

        v273 = v73;
        operator delete(v75);
      }

      if (v268 != v271)
      {
        free(v268);
      }
    }

    if (v10 != v15 || v10 && memcmp(v11, __s2, v10))
    {
      if (!v244.__r_.__value_.__r.__words[0])
      {
        goto LABEL_153;
      }

      LODWORD(v265) = 3;
      v266 = " (tried '";
      v267 = 9;
      v85 = &v265;
      v86 = v245;
      if (v246 >= v247)
      {
        if (v245 <= &v265 && v245 + 24 * v246 > &v265)
        {
          v205 = &v265 - v245;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
          v86 = v245;
          v85 = (v245 + v205);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
          v85 = &v265;
          v86 = v245;
        }
      }

      v87 = &v86[24 * v246];
      v88 = *v85;
      *(v87 + 2) = v85[2];
      *v87 = v88;
      ++v246;
      if (!v244.__r_.__value_.__r.__words[0] || (LOWORD(v269) = 261, v265 = __s2, v266 = v15, mlir::Diagnostic::operator<<(&v244.__r_.__value_.__l.__size_, &v265), !v244.__r_.__value_.__r.__words[0]))
      {
LABEL_153:
        if (v255[0] == 1)
        {
          if (v254 != v255)
          {
            free(v254);
          }

          v93 = v252;
          if (v252)
          {
            v94 = v253;
            v95 = v252;
            if (v253 != v252)
            {
              do
              {
                v94 = sub_10005BEF4(v94 - 1);
              }

              while (v94 != v93);
              v95 = v252;
            }

            v253 = v93;
            operator delete(v95);
          }

          v96 = v250;
          if (v250)
          {
            v97 = v251;
            v98 = v250;
            if (v251 != v250)
            {
              do
              {
                v99 = *--v97;
                *v97 = 0;
                if (v99)
                {
                  operator delete[]();
                }
              }

              while (v97 != v96);
              v98 = v250;
            }

            v251 = v96;
            operator delete(v98);
          }

          if (v245 != v248)
          {
            free(v245);
          }
        }

        v29 = 0;
        v100 = v264;
        if (v264 >= 8)
        {
          goto LABEL_262;
        }

        goto LABEL_269;
      }

      LODWORD(v265) = 3;
      v266 = "' as well)";
      v267 = 10;
      v89 = &v265;
      v90 = v245;
      if (v246 >= v247)
      {
        if (v245 <= &v265 && v245 + 24 * v246 > &v265)
        {
          v210 = &v265 - v245;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
          v90 = v245;
          v89 = (v245 + v210);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
          v89 = &v265;
          v90 = v245;
        }
      }

      v91 = &v90[24 * v246];
      v92 = *v89;
      *(v91 + 2) = v89[2];
      *v91 = v92;
      ++v246;
    }

    if (v244.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v244);
    }

    goto LABEL_153;
  }

  (*(*v230 + 40))(&v244, v230);
  v17 = v264;
  if (v264 >= 8)
  {
    if ((v264 & 4) != 0)
    {
      if ((v264 & 2) != 0)
      {
        v18 = v262;
      }

      else
      {
        v18 = v262[0];
      }

      (*((v264 & 0xFFFFFFFFFFFFFFF8) + 16))(v18);
    }

    if ((v17 & 2) == 0)
    {
      llvm::deallocate_buffer(v262[0], v262[1], v263);
    }
  }

  v264 = v245;
  if (v245 >= 8)
  {
    if ((v245 & 2) != 0 && (v245 & 4) != 0)
    {
      (*((v245 & 0xFFFFFFFFFFFFFFF8) + 8))(v262, &v244);
      (*((v264 & 0xFFFFFFFFFFFFFFF8) + 16))(&v244);
      {
        goto LABEL_26;
      }

      goto LABEL_120;
    }

    *v262 = *&v244.__r_.__value_.__l.__data_;
    v263 = v244.__r_.__value_.__r.__words[2];
  }

  {
    goto LABEL_26;
  }

LABEL_120:
  sub_100299674();
LABEL_26:
  v19 = (*(*v16 + 32))(v16, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id);
  {
    sub_1002996B4();
    v20 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
    v21 = *(v16 + 32);
    v22 = *(v16 + 40);
    if (v22)
    {
      goto LABEL_28;
    }

LABEL_205:
    v101 = 0;
    goto LABEL_206;
  }

  v20 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
  v21 = *(v16 + 32);
  v22 = *(v16 + 40);
  if (!v22)
  {
    goto LABEL_205;
  }

LABEL_28:
  v23 = v21;
  v24 = v22;
  do
  {
    v25 = v24 >> 1;
    v26 = &v23[2 * (v24 >> 1)];
    v28 = *v26;
    v27 = (v26 + 2);
    v24 += ~(v24 >> 1);
    if (v28 < v20)
    {
      v23 = v27;
    }

    else
    {
      v24 = v25;
    }
  }

  while (v24);
  if (v23 == &v21[2 * v22])
  {
    goto LABEL_205;
  }

  if (*v23 != v20)
  {
    goto LABEL_205;
  }

  v125 = v23[1];
  if (!v125)
  {
    goto LABEL_205;
  }

  v126 = v125[3]();
  if (v101)
  {
    v102 = (v125[3])(v126);
    v103 = a1[1];
    v104 = *(v103 + 44);
    if (v104 < *(v103 + 45))
    {
      goto LABEL_207;
    }

    goto LABEL_237;
  }

LABEL_206:
  v102 = "";
  v103 = a1[1];
  v104 = *(v103 + 44);
  if (v104 < *(v103 + 45))
  {
    goto LABEL_207;
  }

LABEL_237:
  v211 = v102;
  v127 = v101;
  llvm::SmallVectorBase<unsigned int>::grow_pod((v103 + 21), v103 + 23, v104 + 1, 16);
  v102 = v211;
  v101 = v127;
  v3 = v243;
  LODWORD(v104) = *(v103 + 44);
LABEL_207:
  v105 = &v103[21][2 * v104];
  *v105 = v102;
  v105[1] = v101;
  ++*(v103 + 44);
  v244.__r_.__value_.__r.__words[0] = *(v230 + 8);
  Value = mlir::StringAttr::getValue(&v244);
  llvm::PrettyStackTraceFormat::PrettyStackTraceFormat(v259, "MLIR Parser: custom op parser '%s'", Value);
  v229 = mlir::Lexer::getEncodedSourceLocation((a1[1] + 1), v8);
  v107.n128_f64[0] = mlir::OperationState::OperationState(&v244, v229, v230);
  v108 = a1[1][19];
  if (v108)
  {
    mlir::AsmParserState::startOperationDefinition(v108, &v244.__r_.__value_.__r.__words[1]);
  }

  v218 = v8;
  v219 = a1;
  v220 = 0;
  v217 = &off_1002D57B0;
  v221 = v6;
  v222 = v7;
  v223 = sub_10007A570;
  v224 = v262;
  v225 = v19;
  v226 = __s2;
  v227 = v15;
  v228 = a1;
  if ((v264 & 2) != 0)
  {
    v109 = v262;
  }

  else
  {
    v109 = v262[0];
  }

  if (((*(v264 & 0xFFFFFFFFFFFFFFF8))(v109, &v217, &v244, v107) & 1) == 0)
  {
    goto LABEL_244;
  }

  mlir::NamedAttrList::findDuplicate(v235, &v249);
  if (v236)
  {
    v110 = (*(v217 + 2))(&v217);
    v233[0] = "attribute '";
    v234 = 259;
    (*(v217 + 3))(&v265, &v217, v110, v233);
    Name = mlir::NamedAttribute::getName(v235);
    v111 = mlir::StringAttr::getValue(&Name);
    if (v265)
    {
      v240 = 261;
      v237 = v111;
      v238 = v112;
      mlir::Diagnostic::operator<<(&v266, &v237);
      if (v265)
      {
        LODWORD(v237) = 3;
        v238 = "' occurs more than once in the attribute list";
        v239 = 45;
        v113 = &v237;
        v114 = v268;
        if (v269 >= v270)
        {
          if (v268 <= &v237 && v268 + 24 * v269 > &v237)
          {
            v201 = &v237 - v268;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
            v114 = v268;
            v113 = (v268 + v201);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
            v113 = &v237;
            v114 = v268;
          }
        }

        v115 = &v114[24 * v269];
        v116 = *v113;
        *(v115 + 2) = v113[2];
        *v115 = v116;
        ++v269;
      }
    }

    v117 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v265);
    if (v265)
    {
      mlir::InFlightDiagnostic::report(&v265);
    }

    if (v277 == 1)
    {
      if (v276 != &v277)
      {
        free(v276);
      }

      v118 = __p;
      if (__p)
      {
        v119 = v275;
        v120 = __p;
        if (v275 != __p)
        {
          do
          {
            v119 = sub_10005BEF4(v119 - 1);
          }

          while (v119 != v118);
          v120 = __p;
        }

        v275 = v118;
        operator delete(v120);
      }

      v121 = v272;
      if (v272)
      {
        v122 = v273;
        v123 = v272;
        if (v273 != v272)
        {
          do
          {
            v124 = *--v122;
            *v122 = 0;
            if (v124)
            {
              operator delete[]();
            }
          }

          while (v122 != v121);
          v123 = v272;
        }

        v273 = v121;
        operator delete(v123);
      }

      if (v268 != v271)
      {
        free(v268);
      }
    }

    if (!v117)
    {
      goto LABEL_244;
    }
  }

  if ((v220 & 1) == 0)
  {
    v178 = v258;
    v237 = v258;
    v258 = 0;
    v179 = mlir::OpBuilder::create(a1 + 48, &v244);
    v233[0] = v179;
    v29 = 0;
    if (sub_10007A26C(a1, v179 & 0xFFFFFFFFFFFFFFFBLL))
    {
      if (v178)
      {
        v265 = &v229;
        v266 = &v237;
        v267 = v233;
        if (mlir::Operation::setPropertiesFromAttribute(v179, v178, sub_100083F50, &v265))
        {
          v29 = v233[0];
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = v179;
      }
    }
  }

  else
  {
LABEL_244:
    v29 = 0;
  }

  mlir::OpAsmParser::~OpAsmParser(&v217);
  v265 = &v267;
  v266 = 0x400000000;
  v128 = v257;
  if (v257 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v265, &v267, v257, 8);
    v128 = v257;
  }

  if (v128)
  {
    v129 = v256;
    v130 = &v256[v128];
    do
    {
      v131 = *v129;
      if (*v129)
      {
        for (i = *(v131 + 8); i != v131; i = *(i + 8))
        {
          if (i)
          {
            v133 = (i - 8);
          }

          else
          {
            v133 = 0;
          }

          mlir::Block::dropAllDefinedValueUses(v133);
        }
      }

      ++v129;
    }

    while (v129 != v130);
  }

  if (v265 != &v267)
  {
    free(v265);
  }

  mlir::OperationState::~OperationState(&v244);
  v259[0] = off_1002D4750;
  if (v260 != &v261)
  {
    free(v260);
  }

  llvm::PrettyStackTraceEntry::~PrettyStackTraceEntry(v259);
  --*(a1[1] + 44);
  v100 = v264;
  if (v264 >= 8)
  {
LABEL_262:
    if ((v100 & 4) != 0)
    {
      if ((v100 & 2) != 0)
      {
        v134 = v262;
      }

      else
      {
        v134 = v262[0];
      }

      (*((v100 & 0xFFFFFFFFFFFFFFF8) + 16))(v134);
    }

    if ((v100 & 2) == 0)
    {
      llvm::deallocate_buffer(v262[0], v262[1], v263);
    }
  }

LABEL_269:
  if (!v29)
  {
    goto LABEL_277;
  }

  if (!v242)
  {
    v139 = a1[1][19];
    if (v139)
    {
      LocRange = mlir::Token::getLocRange(&v214);
      v142 = v141;
      EndLoc = mlir::Token::getEndLoc((a1[1] + 10));
      mlir::AsmParserState::finalizeOperationDefinition(v139, v29, LocRange, v142, EndLoc, 0, 0);
    }

    v38 = 1;
    goto LABEL_278;
  }

  v135 = *(v29 + 36);
  if (!v135)
  {
    v265 = "cannot name an operation with no results";
    LOWORD(v269) = 259;
    v144 = mlir::Lexer::getEncodedSourceLocation((a1[1] + 1), Loc);
    mlir::emitError(v144, &v265, &v244);
    if (*(a1[1] + 14) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v244);
    }

    v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v244);
    if (v244.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v244);
    }

    if (v255[0] != 1)
    {
      goto LABEL_278;
    }

    if (v254 != v255)
    {
      free(v254);
    }

    v145 = v252;
    if (v252)
    {
      v146 = v253;
      v147 = v252;
      if (v253 != v252)
      {
        do
        {
          v146 = sub_10005BEF4(v146 - 1);
        }

        while (v146 != v145);
        v147 = v252;
      }

      v253 = v145;
      operator delete(v147);
    }

    v148 = v250;
    if (v250)
    {
      v149 = v251;
      v150 = v250;
      if (v251 != v250)
      {
        do
        {
          v151 = *--v149;
          *v149 = 0;
          if (v151)
          {
            operator delete[]();
          }
        }

        while (v149 != v148);
        goto LABEL_334;
      }

LABEL_335:
      v251 = v148;
      operator delete(v150);
    }

LABEL_336:
    if (v245 != v248)
    {
      free(v245);
    }

    goto LABEL_278;
  }

  if (v216 != v135)
  {
    v265 = "operation defines ";
    LOWORD(v269) = 259;
    v152 = mlir::Lexer::getEncodedSourceLocation((a1[1] + 1), Loc);
    mlir::emitError(v152, &v265, &v244);
    if (*(a1[1] + 14) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v244);
    }

    if (v244.__r_.__value_.__r.__words[0])
    {
      v153 = *(v29 + 36);
      LODWORD(v217) = 5;
      v218 = v153;
      v154 = &v217;
      v155 = v245;
      if (v246 >= v247)
      {
        if (v245 <= &v217 && v245 + 24 * v246 > &v217)
        {
          v197 = &v217 - v245;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
          v155 = v245;
          v154 = (v245 + v197);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
          v154 = &v217;
          v155 = v245;
        }
      }

      v156 = &v155[24 * v246];
      v157 = *v154;
      *(v156 + 2) = v154[2];
      *v156 = v157;
      v158 = ++v246;
      if (v244.__r_.__value_.__r.__words[0])
      {
        LODWORD(v217) = 3;
        v218 = " results but was provided ";
        v219 = 26;
        v159 = &v217;
        v160 = v245;
        if (v158 >= v247)
        {
          if (v245 <= &v217 && v245 + 24 * v158 > &v217)
          {
            v198 = &v217 - v245;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v158 + 1, 24);
            v160 = v245;
            v159 = (v245 + v198);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v158 + 1, 24);
            v159 = &v217;
            v160 = v245;
          }
        }

        v161 = &v160[24 * v246];
        v162 = *v159;
        *(v161 + 2) = v159[2];
        *v161 = v162;
        v163 = ++v246;
        if (v244.__r_.__value_.__r.__words[0])
        {
          LODWORD(v217) = 5;
          v218 = v216;
          v164 = &v217;
          v165 = v245;
          if (v163 >= v247)
          {
            if (v245 <= &v217 && v245 + 24 * v163 > &v217)
            {
              v202 = &v217 - v245;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v163 + 1, 24);
              v165 = v245;
              v164 = (v245 + v202);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v163 + 1, 24);
              v164 = &v217;
              v165 = v245;
            }
          }

          v166 = &v165[24 * v246];
          v167 = *v164;
          *(v166 + 2) = v164[2];
          *v166 = v167;
          v168 = ++v246;
          if (v244.__r_.__value_.__r.__words[0])
          {
            LODWORD(v217) = 3;
            v218 = " to bind";
            v219 = 8;
            v169 = &v217;
            v170 = v245;
            if (v168 >= v247)
            {
              if (v245 <= &v217 && v245 + 24 * v168 > &v217)
              {
                v206 = &v217 - v245;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v168 + 1, 24);
                v170 = v245;
                v169 = (v245 + v206);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v168 + 1, 24);
                v169 = &v217;
                v170 = v245;
              }
            }

            v171 = &v170[24 * v246];
            v172 = *v169;
            *(v171 + 2) = v169[2];
            *v171 = v172;
            ++v246;
          }
        }
      }
    }

    v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v244);
    if (v244.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v244);
    }

    if (v255[0] != 1)
    {
      goto LABEL_278;
    }

    if (v254 != v255)
    {
      free(v254);
    }

    v173 = v252;
    if (v252)
    {
      v174 = v253;
      v175 = v252;
      if (v253 != v252)
      {
        do
        {
          v174 = sub_10005BEF4(v174 - 1);
        }

        while (v174 != v173);
        v175 = v252;
      }

      v253 = v173;
      operator delete(v175);
    }

    v148 = v250;
    if (v250)
    {
      v176 = v251;
      v150 = v250;
      if (v251 != v250)
      {
        do
        {
          v177 = *--v176;
          *v176 = 0;
          if (v177)
          {
            operator delete[]();
          }
        }

        while (v176 != v148);
LABEL_334:
        v150 = v250;
        goto LABEL_335;
      }

      goto LABEL_335;
    }

    goto LABEL_336;
  }

  if (a1[1][19])
  {
    LODWORD(v265) = 0;
    v244.__r_.__value_.__r.__words[0] = &v244.__r_.__value_.__r.__words[2];
    v244.__r_.__value_.__l.__size_ = 0x300000000;
    if (v242 <= 3)
    {
      v136 = v241;
      v137 = v241 + 32 * v242;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v244, &v244.__r_.__value_.__r.__words[2], v242, 16);
      if (!v242)
      {
        goto LABEL_346;
      }

      v136 = v241;
      v137 = v241 + 32 * v242;
    }

    v181 = 0;
    v182 = (v136 + 24);
    do
    {
      v183 = v244.__r_.__value_.__r.__words[1];
      if (LODWORD(v244.__r_.__value_.__r.__words[1]) >= HIDWORD(v244.__r_.__value_.__r.__words[1]))
      {
        sub_100084A6C(&v244, &v265, v182);
      }

      else
      {
        v184 = v244.__r_.__value_.__r.__words[0] + 16 * LODWORD(v244.__r_.__value_.__r.__words[1]);
        *v184 = v181;
        *(v184 + 8) = *v182;
        LODWORD(v244.__r_.__value_.__r.__words[1]) = v183 + 1;
      }

      v181 = v265 + *(v182 - 2);
      LODWORD(v265) = v181;
      v185 = (v182 + 1);
      v182 += 4;
    }

    while (v185 != v137);
LABEL_346:
    v186 = a1[1][19];
    v187 = mlir::Token::getLocRange(&v214);
    v189 = v188;
    v190 = mlir::Token::getEndLoc((a1[1] + 10));
    mlir::AsmParserState::finalizeOperationDefinition(v186, v29, v187, v189, v190, v244.__r_.__value_.__l.__data_, LODWORD(v244.__r_.__value_.__r.__words[1]));
  }

  v180 = v241;
  __s2a = v241 + 32 * v242;
  v191 = 0;
  while (1)
  {
    v192 = v3;
    v193 = *(v180 + 4);
    if (v193)
    {
      break;
    }

    v195 = v191;
LABEL_356:
    v180 += 32;
    v38 = 1;
    v191 = v195;
    v3 = v192;
    if (v180 == __s2a)
    {
      goto LABEL_278;
    }
  }

  v194 = 0;
  while (1)
  {
    v244.__r_.__value_.__r.__words[0] = *(v180 + 3);
    *&v244.__r_.__value_.__r.__words[1] = *v180;
    LODWORD(v245) = v194;
    v195 = (v191 + 1);
    v196 = (v191 >= 6 ? v29 - 96 - 24 * (v191 - 5) : v29 - 16 * v195);
    if ((sub_1000792A8(a1, &v244, v196) & 1) == 0)
    {
      break;
    }

    ++v194;
    LODWORD(v191) = v195;
    if (v193 == v194)
    {
      goto LABEL_356;
    }
  }

  v38 = 0;
  v3 = v192;
LABEL_278:
  if (v241 != v3)
  {
    free(v241);
  }

  return v38;
}

void sub_100077C9C(uint64_t a1, int a2)
{
  v5 = (a1 + 208);
  v4 = *(a1 + 208);
  v37[0] = 0;
  v37[1] = 0;
  LODWORD(v38) = 0;
  v6 = *(a1 + 216);
  v7 = v37;
  if (v6 >= *(a1 + 220))
  {
    if (v4 <= v37 && v4 + 24 * v6 > v37)
    {
      v33 = v37 - v4;
      sub_1000781F8(a1 + 208, v6 + 1);
      v4 = *v5;
      v7 = &v33[*v5];
    }

    else
    {
      sub_1000781F8(a1 + 208, v6 + 1);
      v4 = *v5;
      v7 = v37;
    }
  }

  v8 = v4 + 24 * *(a1 + 216);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = *v7;
  *v7 = 0;
  *(v8 + 8) = *(v7 + 2);
  *(v7 + 2) = 0;
  v9 = *(v8 + 12);
  *(v8 + 12) = *(v7 + 3);
  *(v7 + 3) = v9;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(v7 + 4);
  *(v7 + 4) = v10;
  ++*(a1 + 216);
  llvm::deallocate_buffer(v37[0], (32 * v38), 8uLL);
  v37[0] = 0;
  v37[1] = 0;
  LODWORD(v38) = 0;
  v11 = *(a1 + 280);
  v12 = *(a1 + 272);
  v13 = v37;
  if (v11 >= *(a1 + 284))
  {
    if (v12 <= v37 && v12 + 24 * v11 > v37)
    {
      v34 = v37 - v12;
      sub_100078310(a1 + 272, v11 + 1);
      v12 = *(a1 + 272);
      v13 = &v34[v12];
    }

    else
    {
      sub_100078310(a1 + 272, v11 + 1);
      v12 = *(a1 + 272);
      v13 = v37;
    }
  }

  v14 = v12 + 24 * *(a1 + 280);
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = *v13;
  *v13 = 0;
  *(v14 + 8) = *(v13 + 2);
  *(v13 + 2) = 0;
  v15 = *(v14 + 12);
  *(v14 + 12) = *(v13 + 3);
  *(v13 + 3) = v15;
  v16 = *(v14 + 16);
  *(v14 + 16) = *(v13 + 4);
  *(v13 + 4) = v16;
  ++*(a1 + 280);
  llvm::deallocate_buffer(v37[0], (16 * v38), 8uLL);
  if (a2)
  {
    v18 = (a1 + 16);
    v17 = *(a1 + 16);
    *v37 = 0u;
    v19 = v37;
    v38 = 0x2800000000;
    v39 = &v41;
    v40 = 0x200000000;
    v20 = *(a1 + 24);
    if (v20 >= *(a1 + 28))
    {
      if (v17 <= v37 && v17 + 88 * v20 > v37)
      {
        v36 = v37 - v17;
        sub_100078428((a1 + 16), v20 + 1);
        v17 = *v18;
        v19 = &v36[*v18];
      }

      else
      {
        sub_100078428((a1 + 16), v20 + 1);
        v17 = *v18;
        v19 = v37;
      }
    }

    v21 = v17 + 88 * *(a1 + 24);
    *v21 = *v19;
    *(v21 + 8) = *(v19 + 1);
    *v19 = 0;
    v19[1] = 0;
    *(v19 + 4) = 0;
    *(v21 + 24) = v21 + 40;
    v22 = v21 + 24;
    *(v22 + 8) = 0x200000000;
    if (*(v19 + 8))
    {
      sub_100078554(v22, (v19 + 3));
    }

    ++*(a1 + 24);
    sub_1000780C0(v37);
  }

  v23 = *(a1 + 16) + 88 * *(a1 + 24);
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  v25 = (v23 - 64);
  v24 = *(v23 - 64);
  HIDWORD(v38) = 8;
  v26 = *(v23 - 56);
  v27 = v37;
  if (v26 >= *(v23 - 52))
  {
    if (v24 <= v37 && v24 + 24 * v26 > v37)
    {
      v35 = v37 - v24;
      sub_100078AEC(v23 - 64, v26 + 1);
      v24 = *v25;
      v27 = &v35[*v25];
    }

    else
    {
      sub_100078AEC(v23 - 64, v26 + 1);
      v24 = *v25;
      v27 = v37;
    }
  }

  v28 = v24 + 24 * *(v23 - 56);
  *v28 = *v27;
  *(v28 + 8) = *(v27 + 1);
  *v27 = 0;
  v27[1] = 0;
  *(v27 + 4) = 0;
  ++*(v23 - 56);
  if (HIDWORD(v37[1]) && LODWORD(v37[1]))
  {
    v29 = 0;
    v30 = 8 * LODWORD(v37[1]);
    do
    {
      v31 = *(v37[0] + v29);
      if (v31 != -8 && v31 != 0)
      {
        llvm::deallocate_buffer(v31, (*v31 + 9), 8uLL);
      }

      v29 += 8;
    }

    while (v30 != v29);
  }

  free(v37[0]);
}

uint64_t sub_1000780C0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = &v2[3 * v3];
    do
    {
      v5 = v4;
      v4 -= 3;
      if (*(v5 - 3))
      {
        v6 = *(v5 - 4);
        if (v6)
        {
          v7 = 0;
          v8 = 8 * v6;
          do
          {
            v9 = *(*v4 + v7);
            if (v9 != -8 && v9 != 0)
            {
              llvm::deallocate_buffer(v9, (*v9 + 9), 8uLL);
            }

            v7 += 8;
          }

          while (v8 != v7);
        }
      }

      free(*v4);
    }

    while (v4 != v2);
    v2 = *(a1 + 24);
  }

  if (v2 != (a1 + 40))
  {
    free(v2);
  }

  if (*(a1 + 12))
  {
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = 0;
      v13 = 8 * v11;
      do
      {
        v14 = *(*a1 + v12);
        if (v14 != -8 && v14 != 0)
        {
          v17 = *v14;
          v16 = *(v14 + 1);
          if (v16 != (v14 + 24))
          {
            free(v16);
          }

          llvm::deallocate_buffer(v14, (v17 + 41), 8uLL);
        }

        v12 += 8;
      }

      while (v13 != v12);
    }
  }

  free(*a1);
  return a1;
}

void sub_1000781F8(uint64_t a1, unint64_t a2)
{
  v17 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v17);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[24 * v6];
    v8 = v4;
    do
    {
      *v8 = 0;
      v8[1] = 0;
      *(v8 + 4) = 0;
      *v8 = *v5;
      *v5 = 0;
      *(v8 + 2) = *(v5 + 2);
      *(v5 + 2) = 0;
      v9 = *(v8 + 3);
      *(v8 + 3) = *(v5 + 3);
      *(v5 + 3) = v9;
      v10 = *(v8 + 4);
      *(v8 + 4) = *(v5 + 4);
      *(v5 + 4) = v10;
      v8 += 3;
      v5 += 24;
    }

    while (v5 != v7);
    v5 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = &v5[24 * v11 - 8];
      v13 = -24 * v11;
      do
      {
        v14 = *(v12 - 2);
        v15 = *v12;
        v12 -= 24;
        llvm::deallocate_buffer(v14, (32 * v15), 8uLL);
        v13 += 24;
      }

      while (v13);
      v5 = *a1;
    }
  }

  v16 = v17;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v16;
}

void sub_100078310(uint64_t a1, unint64_t a2)
{
  v17 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v17);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[24 * v6];
    v8 = v4;
    do
    {
      *v8 = 0;
      v8[1] = 0;
      *(v8 + 4) = 0;
      *v8 = *v5;
      *v5 = 0;
      *(v8 + 2) = *(v5 + 2);
      *(v5 + 2) = 0;
      v9 = *(v8 + 3);
      *(v8 + 3) = *(v5 + 3);
      *(v5 + 3) = v9;
      v10 = *(v8 + 4);
      *(v8 + 4) = *(v5 + 4);
      *(v5 + 4) = v10;
      v8 += 3;
      v5 += 24;
    }

    while (v5 != v7);
    v5 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = &v5[24 * v11 - 8];
      v13 = -24 * v11;
      do
      {
        v14 = *(v12 - 2);
        v15 = *v12;
        v12 -= 24;
        llvm::deallocate_buffer(v14, (16 * v15), 8uLL);
        v13 += 24;
      }

      while (v13);
      v5 = *a1;
    }
  }

  v16 = v17;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v16;
}

void sub_100078428(uint64_t *a1, unint64_t a2)
{
  v15 = 0;
  v3 = a1 + 2;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 88, &v15);
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = 0;
    v8 = &v5[11 * v6];
    do
    {
      v9 = &v5[v7];
      v10 = &v4[v7 * 8];
      *v10 = v5[v7];
      *(v10 + 8) = *&v5[v7 + 1];
      *v9 = 0;
      v9[1] = 0;
      *(v9 + 4) = 0;
      *(v10 + 3) = &v4[v7 * 8 + 40];
      *&v4[v7 * 8 + 32] = 0x200000000;
      if (LODWORD(v5[v7 + 4]))
      {
        sub_100078554(&v4[v7 * 8 + 24], (v9 + 3));
      }

      v7 += 11;
    }

    while (v9 + 11 != v8);
    v5 = *a1;
    v11 = *(a1 + 2);
    if (v11)
    {
      v12 = -88 * v11;
      v13 = &v5[11 * v11 - 11];
      do
      {
        v13 = sub_1000780C0(v13) - 88;
        v12 += 88;
      }

      while (v12);
      v5 = *a1;
    }
  }

  v14 = v15;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 3) = v14;
}

unsigned int **sub_100078554(unsigned int **a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = *a2;
  if (*a2 != a2 + 16)
  {
    sub_100078A08(a1, a2);
    return a1;
  }

  v4 = *(a2 + 8);
  v5 = *(a1 + 2);
  if (v5 < v4)
  {
    if (*(a1 + 3) >= v4)
    {
      v27 = *a1;
      if (v5)
      {
        v28 = a2;
        v29 = &v3[6 * v5];
        do
        {
          v30 = *v3;
          v31 = v3[4];
          v32 = *(v3 + 1);
          *v3 = 0;
          *(v3 + 1) = 0;
          v3[4] = 0;
          v33 = *v27;
          *v27 = v30;
          v34 = v27[2];
          LODWORD(v30) = v27[3];
          *(v27 + 1) = v32;
          v27[4] = v31;
          if (v30 && v34)
          {
            v35 = v33;
            do
            {
              v36 = *v35;
              if (*v35 != -8 && v36 != 0)
              {
                llvm::deallocate_buffer(v36, (*v36 + 9), 8uLL);
              }

              ++v35;
              --v34;
            }

            while (v34);
          }

          free(v33);
          v3 += 6;
          v27 += 6;
        }

        while (v3 != v29);
        v27 = *a1;
        a2 = v28;
        v39 = *v28;
        v40 = *(v28 + 8);
        if (v5 == v40)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v5 = 0;
        v39 = *a2;
        LODWORD(v40) = *(a2 + 8);
        if (!v40)
        {
LABEL_79:
          *(a1 + 2) = v4;
          v60 = a2;
          v61 = *(a2 + 8);
          if (v61)
          {
            v62 = &v39[6 * v61];
            do
            {
              v63 = v62;
              v62 -= 3;
              if (*(v63 - 3))
              {
                v64 = *(v63 - 4);
                if (v64)
                {
                  v65 = 0;
                  v66 = 8 * v64;
                  do
                  {
                    v67 = *(*v62 + v65);
                    if (v67 != -8 && v67 != 0)
                    {
                      llvm::deallocate_buffer(v67, (*v67 + 9), 8uLL);
                    }

                    v65 += 8;
                  }

                  while (v66 != v65);
                }
              }

              free(*v62);
            }

            while (v62 != v39);
          }

          *(v60 + 8) = 0;
          return a1;
        }
      }
    }

    else
    {
      v6 = a2;
      if (v5)
      {
        v7 = *a1;
        v8 = &(*a1)[6 * v5];
        do
        {
          v9 = v8;
          v8 -= 3;
          if (*(v9 - 3))
          {
            v10 = *(v9 - 4);
            if (v10)
            {
              v11 = 0;
              v12 = 8 * v10;
              do
              {
                v13 = *(*v8 + v11);
                if (v13 != -8 && v13 != 0)
                {
                  llvm::deallocate_buffer(v13, (*v13 + 9), 8uLL);
                }

                v11 += 8;
              }

              while (v12 != v11);
            }
          }

          free(*v8);
        }

        while (v8 != v7);
      }

      *(a1 + 2) = 0;
      v70 = 0;
      v27 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, v4, 24, &v70);
      sub_100078B64(a1, v27);
      v38 = v70;
      if (*a1 != (a1 + 2))
      {
        free(*a1);
      }

      v5 = 0;
      *a1 = v27;
      *(a1 + 3) = v38;
      a2 = v6;
      v39 = *v6;
      LODWORD(v40) = *(v6 + 8);
      if (!v40)
      {
        goto LABEL_79;
      }
    }

    v57 = &v39[6 * v40];
    v58 = &v27[6 * v5];
    v59 = &v39[6 * v5];
    do
    {
      *v58 = *v59;
      *(v58 + 2) = *(v59 + 2);
      *v59 = 0;
      *(v59 + 1) = 0;
      v59[4] = 0;
      v58 += 6;
      v59 += 6;
    }

    while (v59 != v57);
    v39 = *a2;
    goto LABEL_79;
  }

  v15 = *a1;
  v16 = a2;
  if (v4)
  {
    v17 = &v3[6 * v4];
    do
    {
      v18 = *v3;
      v19 = v3[4];
      v20 = *(v3 + 1);
      *v3 = 0;
      *(v3 + 1) = 0;
      v3[4] = 0;
      v21 = *v15;
      *v15 = v18;
      v22 = v15[2];
      LODWORD(v18) = v15[3];
      *(v15 + 1) = v20;
      v15[4] = v19;
      if (v18 && v22)
      {
        v23 = v21;
        do
        {
          v24 = *v23;
          if (*v23 != -8 && v24 != 0)
          {
            llvm::deallocate_buffer(v24, (*v24 + 9), 8uLL);
          }

          ++v23;
          --v22;
        }

        while (v22);
      }

      free(v21);
      v3 += 6;
      v15 += 6;
    }

    while (v3 != v17);
    v26 = *a1;
    LODWORD(v5) = *(a1 + 2);
  }

  else
  {
    v26 = *a1;
  }

  for (i = &v26[6 * v5]; i != v15; free(*i))
  {
    v42 = i;
    i -= 3;
    if (*(v42 - 3))
    {
      v43 = *(v42 - 4);
      if (v43)
      {
        v44 = 0;
        v45 = 8 * v43;
        do
        {
          v46 = *(*i + v44);
          if (v46 != -8 && v46 != 0)
          {
            llvm::deallocate_buffer(v46, (*v46 + 9), 8uLL);
          }

          v44 += 8;
        }

        while (v45 != v44);
      }
    }
  }

  *(a1 + 2) = v4;
  v48 = *(v16 + 8);
  if (v48)
  {
    v49 = *v16;
    v50 = (*v16 + 24 * v48);
    do
    {
      v51 = v50;
      v50 -= 3;
      if (*(v51 - 3))
      {
        v52 = *(v51 - 4);
        if (v52)
        {
          v53 = 0;
          v54 = 8 * v52;
          do
          {
            v55 = *(*v50 + v53);
            if (v55 != -8 && v55 != 0)
            {
              llvm::deallocate_buffer(v55, (*v55 + 9), 8uLL);
            }

            v53 += 8;
          }

          while (v54 != v53);
        }
      }

      free(*v50);
    }

    while (v50 != v49);
  }

  *(v16 + 8) = 0;
  return a1;
}

double sub_100078A08(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = &v4[3 * v5];
    do
    {
      v7 = v6;
      v6 -= 3;
      if (*(v7 - 3))
      {
        v8 = *(v7 - 4);
        if (v8)
        {
          v9 = 0;
          v10 = 8 * v8;
          do
          {
            v11 = *(*v6 + v9);
            if (v11 != -8 && v11 != 0)
            {
              llvm::deallocate_buffer(v11, (*v11 + 9), 8uLL);
            }

            v9 += 8;
          }

          while (v10 != v9);
        }
      }

      free(*v6);
    }

    while (v6 != v4);
    v4 = *a1;
  }

  if (v4 != (a1 + 16))
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

void sub_100078AEC(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v6);
  sub_100078B64(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void sub_100078B64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1;
    v4 = *a1 + 24 * v2;
    do
    {
      *a2 = *v3;
      *(a2 + 8) = *(v3 + 1);
      *v3 = 0;
      v3[1] = 0;
      *(v3 + 4) = 0;
      a2 += 24;
      v3 += 3;
    }

    while (v3 != v4);
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = *a1;
      v7 = (*a1 + 24 * v5);
      do
      {
        v8 = v7;
        v7 -= 3;
        if (*(v8 - 3))
        {
          v9 = *(v8 - 4);
          if (v9)
          {
            v10 = 0;
            v11 = 8 * v9;
            do
            {
              v12 = *(*v7 + v10);
              if (v12 != -8 && v12 != 0)
              {
                llvm::deallocate_buffer(v12, (*v12 + 9), 8uLL);
              }

              v10 += 8;
            }

            while (v11 != v10);
          }
        }

        free(*v7);
      }

      while (v7 != v6);
    }
  }
}

uint64_t sub_100078C48(mlir::MLIRContext ****a1)
{
  Loc = mlir::Token::getLoc((a1[1] + 7));
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation((a1[1] + 1), Loc);
  v46 = EncodedSourceLocation;
  mlir::Token::getStringValue((a1[1] + 7), &v45);
  size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v45.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    *&v48 = "empty operation name is invalid";
    v50 = 259;
    mlir::detail::Parser::emitError(v65, a1, &v48);
    if (v65[0])
    {
      mlir::InFlightDiagnostic::report(v65);
    }

    if (v73 == 1)
    {
      if (v72 != &v73)
      {
        free(v72);
      }

      v12 = v70;
      if (v70)
      {
        v13 = v71;
        v14 = v70;
        if (v71 != v70)
        {
          do
          {
            v13 = sub_10005BEF4(v13 - 1);
          }

          while (v13 != v12);
          v14 = v70;
        }

        v71 = v12;
        operator delete(v14);
      }

      v15 = v68;
      if (v68)
      {
        v16 = v69;
        v17 = v68;
        if (v69 != v68)
        {
          do
          {
            v18 = *--v16;
            *v16 = 0;
            if (v18)
            {
              operator delete[]();
            }
          }

          while (v16 != v15);
          v17 = v68;
        }

        v69 = v15;
        operator delete(v17);
      }

      v28 = v66;
      if (v66 != &v67)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_56;
  }

  if (std::string::find(&v45, 0, 0) == -1)
  {
    v19 = a1[1];
    *(v19 + 5) = *(v19 + 7);
    v19[12] = v19[9];
    mlir::Lexer::lexToken(&v48, (a1[1] + 1));
    v20 = a1[1];
    *(v20 + 7) = v48;
    v20[9] = v49;
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v45;
    }

    else
    {
      v21 = v45.__r_.__value_.__r.__words[0];
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v45.__r_.__value_.__l.__size_;
    }

    mlir::OperationState::OperationState(&v48, EncodedSourceLocation, v21, v22);
    if (*(*(&v48 + 1) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v23 = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
      v24 = &v45;
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = v45.__r_.__value_.__r.__words[0];
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v23 = v45.__r_.__value_.__l.__size_;
      }

      v74 = v24;
      v75 = v23;
      LOBYTE(v43) = 46;
      v25 = llvm::StringRef::find(&v74, &v43, 1uLL, 0);
      if (v25 == -1)
      {
        v26 = v74;
        v27 = v75;
      }

      else
      {
        v26 = v74;
        if (v25 >= v75)
        {
          v27 = v75;
        }

        else
        {
          v27 = v25;
        }
      }

      if (mlir::MLIRContext::getLoadedDialect(**a1[1], v26, v27) || mlir::MLIRContext::getOrLoadDialect(**a1[1], v26, v27))
      {
        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v45;
        }

        else
        {
          v31 = v45.__r_.__value_.__r.__words[0];
        }

        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v32 = v45.__r_.__value_.__l.__size_;
        }

        mlir::OperationName::OperationName(&v74, v31, v32, **a1[1]);
        *(&v48 + 1) = v74;
      }

      else if ((mlir::MLIRContext::allowsUnregisteredDialects(**a1[1]) & 1) == 0)
      {
        v74 = "operation being parsed with an unregistered dialect. If this is intended, please use -allow-unregistered-dialect with the MLIR tool used";
        v77 = 259;
        mlir::detail::Parser::emitError(v47, a1, &v74);
        sub_10006296C(v47);
        goto LABEL_86;
      }
    }

    v33 = a1[1][19];
    if (v33)
    {
      mlir::AsmParserState::startOperationDefinition(v33, (&v48 + 8));
    }

    LOBYTE(v74) = 0;
    LOBYTE(v76[0]) = 0;
    LOBYTE(v43) = 0;
    v44 = 0;
    v42[0] = 0;
    v42[16] = 0;
    v41[0] = 0;
    v41[16] = 0;
    v29 = 0;
    if (!sub_10007ED1C(a1, &v48, &v74, &v43, v42, v41, 0, 0, 0, 0) || ((v34 = v54, v43 = v54, v54 = 0, v43) || v55 || *(*(&v48 + 1) + 16) == &mlir::detail::TypeIDResolver<void,void>::id || (v74 = &v46, v75 = &v45, ((*(**(&v48 + 1) + 104))(*(&v48 + 1), *(&v48 + 1), &v51, sub_10008435C, &v74) & 1) != 0)) && (v29 = mlir::OpBuilder::create(a1 + 48, &v48), (sub_10007A26C(a1, v29 & 0xFFFFFFFFFFFFFFFBLL) & 1) != 0) && (!v34 || (v74 = &v46, v75 = &v43, v76[0] = &v45, (mlir::Operation::setPropertiesFromAttribute(v29, v34, sub_100084678, &v74) & 1) != 0)))
    {
LABEL_87:
      v74 = v76;
      v75 = 0x400000000;
      v35 = v53;
      if (v53 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v76, v53, 8);
        v35 = v53;
      }

      if (v35)
      {
        v36 = v52;
        v37 = &v52[v35];
        do
        {
          v38 = *v36;
          if (*v36)
          {
            for (i = *(v38 + 8); i != v38; i = *(i + 8))
            {
              if (i)
              {
                v40 = (i - 8);
              }

              else
              {
                v40 = 0;
              }

              mlir::Block::dropAllDefinedValueUses(v40);
            }
          }

          ++v36;
        }

        while (v36 != v37);
      }

      if (v74 != v76)
      {
        free(v74);
      }

      mlir::OperationState::~OperationState(&v48);
      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_57;
      }

      return v29;
    }

LABEL_86:
    v29 = 0;
    goto LABEL_87;
  }

  *&v48 = "null character not allowed in operation name";
  v50 = 259;
  mlir::detail::Parser::emitError(v56, a1, &v48);
  if (v56[0])
  {
    mlir::InFlightDiagnostic::report(v56);
  }

  if (v64 == 1)
  {
    if (v63 != &v64)
    {
      free(v63);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v62;
      v7 = __p;
      if (v62 != __p)
      {
        do
        {
          v6 = sub_10005BEF4(v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v62 = v5;
      operator delete(v7);
    }

    v8 = v59;
    if (v59)
    {
      v9 = v60;
      v10 = v59;
      if (v60 != v59)
      {
        do
        {
          v11 = *--v9;
          *v9 = 0;
          if (v11)
          {
            operator delete[]();
          }
        }

        while (v9 != v8);
        v10 = v59;
      }

      v60 = v8;
      operator delete(v10);
    }

    v28 = v57;
    if (v57 != &v58)
    {
LABEL_55:
      free(v28);
    }
  }

LABEL_56:
  v29 = 0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_57:
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  return v29;
}