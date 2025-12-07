uint64_t mlir::Lexer::getEncodedSourceLocation(uint64_t a1, const char *a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = **a1;
  LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v5, a2);
  v7 = v2 - llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(v5, LineNumber);
  v8 = *(a1 + 8);
  v10 = (*(***v4 + 16))(**v4);

  return mlir::FileLineColLoc::get(v8, v10, v9, LineNumber, (v7 + 1));
}

void mlir::Lexer::emitError(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = **a1;
  LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v9, a2);
  v11 = a2 - llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(v9, LineNumber);
  v12 = *(a1 + 8);
  v13 = (*(***v8 + 16))(**v8);
  v15 = mlir::FileLineColLoc::get(v12, v13, v14, LineNumber, (v11 + 1));
  mlir::emitError(v15, a3, v25);
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v31;
      v18 = __p;
      if (v31 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v31 = v16;
      operator delete(v18);
    }

    v19 = v28;
    if (v28)
    {
      v20 = v29;
      v21 = v28;
      if (v29 != v28)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v28;
      }

      v29 = v19;
      operator delete(v21);
    }

    if (v26 != &v27)
    {
      free(v26);
    }
  }

  v24 = *(a1 + 32) - a2;
  *a4 = 1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v24;
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
            v11 = *(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x100;
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
  v6 = *(this + 4);
  v7 = MEMORY[0x1E69E9830];
  while (1)
  {
    v12 = *v6;
    if ((v12 & 0x80000000) != 0)
    {
      result = __maskrune(v12, 0x100uLL);
      v6 = *(this + 4);
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *(v7 + 4 * v12 + 60) & 0x100;
      if (result)
      {
        goto LABEL_6;
      }
    }

    v14 = *v6;
    if (v14 < 0 || (*(v7 + 4 * v14 + 60) & 0x400) == 0)
    {
      v8 = *v6 - 36;
      v9 = v8 > 0x3B;
      v10 = (1 << v8) & 0x800000000000401;
      if (v9 || v10 == 0)
      {
        break;
      }
    }

LABEL_6:
    *(this + 4) = ++v6;
  }

  v15 = v6 - __s1;
  if ((v6 - __s1) < 2)
  {
    goto LABEL_22;
  }

  v16 = *__s1;
  if (v16 == 105)
  {
    v17 = __s1 + 1;
    while (*v17 - 48 < 0xA)
    {
      if (++v17 == v6)
      {
LABEL_30:
        v18 = 12;
        goto LABEL_23;
      }
    }
  }

  if (v15 == 2)
  {
    result = memcmp(__s1, "to", v6 - __s1);
    if (result)
    {
      goto LABEL_22;
    }

    v18 = 78;
  }

  else
  {
    if (__s1[1] == 105 && (v16 == 117 || v16 == 115))
    {
      v19 = __s1 + 2;
      while (*v19 - 48 < 0xA)
      {
        if (++v19 == v6)
        {
          goto LABEL_30;
        }
      }
    }

    if (v15 > 6)
    {
      if (v15 <= 9)
      {
        if (v15 == 7)
        {
          if (*__s1 == 1818846563 && *(__s1 + 3) == 1986618476)
          {
            v18 = 39;
            goto LABEL_23;
          }

          if (*__s1 == 1886220131 && *(__s1 + 3) == 2019912816)
          {
            v18 = 40;
            goto LABEL_23;
          }

          if (*__s1 == 1769108595 && *(__s1 + 3) == 1684366441)
          {
            v18 = 74;
            goto LABEL_23;
          }
        }

        else if (v15 == 8)
        {
          switch(*__s1)
          {
            case 0x74636E6974736964:
              v18 = 43;
              goto LABEL_23;
            case 0x4E46334D34453866:
              v18 = 50;
              goto LABEL_23;
            case 0x4E46314D32453466:
              v18 = 55;
              goto LABEL_23;
            case 0x4E46334D32453666:
              v18 = 56;
              goto LABEL_23;
            case 0x4E46324D33453666:
              v18 = 57;
              goto LABEL_23;
            case 0x766964726F6F6C66:
              v18 = 60;
              goto LABEL_23;
          }
        }
      }

      else
      {
        switch(v15)
        {
          case 14:
            if (*__s1 == 0x65725F65736E6564 && *(__s1 + 6) == 0x656372756F736572)
            {
              v18 = 42;
              goto LABEL_23;
            }

            break;
          case 13:
            if (*__s1 == 0x3142334D34453866 && *(__s1 + 5) == 0x5A554E4631314233)
            {
              v18 = 53;
              goto LABEL_23;
            }

            break;
          case 10:
            if (*__s1 == 0x6D5F656E69666661 && *(__s1 + 4) == 28769)
            {
              v18 = 34;
              goto LABEL_23;
            }

            if (*__s1 == 0x735F656E69666661 && *(__s1 + 4) == 29797)
            {
              v18 = 35;
              goto LABEL_23;
            }

            if (*__s1 == 0x7475626972747461 && *(__s1 + 4) == 29541)
            {
              v18 = 37;
              goto LABEL_23;
            }

            if (*__s1 == 0x4E46324D35453866 && *(__s1 + 4) == 23125)
            {
              v18 = 51;
              goto LABEL_23;
            }

            if (*__s1 == 0x4E46334D34453866 && *(__s1 + 4) == 23125)
            {
              v18 = 52;
              goto LABEL_23;
            }

            break;
        }
      }
    }

    else if (v15 <= 3)
    {
      if (v15 == 3)
      {
        if (*__s1 == 12646 && __s1[2] == 54)
        {
          v18 = 44;
          goto LABEL_23;
        }

        if (*__s1 == 13158 && __s1[2] == 50)
        {
          v18 = 45;
          goto LABEL_23;
        }

        if (*__s1 == 13926 && __s1[2] == 52)
        {
          v18 = 46;
          goto LABEL_23;
        }

        if (*__s1 == 14438 && __s1[2] == 48)
        {
          v18 = 47;
          goto LABEL_23;
        }

        if (*__s1 == 28518 && __s1[2] == 114)
        {
          v18 = 61;
          goto LABEL_23;
        }

        if (*__s1 == 28524 && __s1[2] == 99)
        {
          v18 = 64;
          goto LABEL_23;
        }

        if (*__s1 == 24941 && __s1[2] == 120)
        {
          v18 = 65;
          goto LABEL_23;
        }

        if (*__s1 == 26989 && __s1[2] == 110)
        {
          v18 = 67;
          goto LABEL_23;
        }

        if (*__s1 == 28525 && __s1[2] == 100)
        {
          v18 = 68;
          goto LABEL_23;
        }
      }
    }

    else if (v15 == 4)
    {
      switch(*__s1)
      {
        case 0x36316662:
          v18 = 38;
          goto LABEL_23;
        case 0x38323166:
          v18 = 58;
          goto LABEL_23;
        case 0x636E7566:
          v18 = 62;
          goto LABEL_23;
        case 0x656E6F6E:
          v18 = 69;
          goto LABEL_23;
        case 0x657A6973:
          v18 = 71;
          goto LABEL_23;
        case 0x70657473:
          v18 = 73;
          goto LABEL_23;
        case 0x32336674:
          v18 = 77;
          goto LABEL_23;
        case 0x65757274:
          v18 = 79;
          goto LABEL_23;
        case 0x65707974:
          v18 = 81;
          goto LABEL_23;
        case 0x74696E75:
          v18 = 82;
          goto LABEL_23;
      }
    }

    else if (v15 == 5)
    {
      if (*__s1 == 1634890337 && __s1[4] == 121)
      {
        v18 = 36;
        goto LABEL_23;
      }

      if (*__s1 == 1936614756 && __s1[4] == 101)
      {
        v18 = 41;
        goto LABEL_23;
      }

      if (*__s1 == 1936482662 && __s1[4] == 101)
      {
        v18 = 59;
        goto LABEL_23;
      }

      if (*__s1 == 1701080681 && __s1[4] == 120)
      {
        v18 = 63;
        goto LABEL_23;
      }

      if (*__s1 == 1819309428 && __s1[4] == 101)
      {
        v18 = 80;
        goto LABEL_23;
      }
    }

    else
    {
      if (*__s1 == 893728870 && *(__s1 + 2) == 12877)
      {
        v18 = 48;
        goto LABEL_23;
      }

      if (*__s1 == 876951654 && *(__s1 + 2) == 13133)
      {
        v18 = 49;
        goto LABEL_23;
      }

      if (*__s1 == 860174438 && *(__s1 + 2) == 13389)
      {
        v18 = 54;
        goto LABEL_23;
      }

      if (*__s1 == 1919772013 && *(__s1 + 2) == 26213)
      {
        v18 = 66;
        goto LABEL_23;
      }

      if (*__s1 == 1936090735 && *(__s1 + 2) == 29797)
      {
        v18 = 70;
        goto LABEL_23;
      }

      if (*__s1 == 1918988403 && *(__s1 + 2) == 25971)
      {
        v18 = 72;
        goto LABEL_23;
      }

      if (*__s1 == 1651341683 && *(__s1 + 2) == 27759)
      {
        v18 = 75;
        goto LABEL_23;
      }

      if (*__s1 == 1936614772 && *(__s1 + 2) == 29295)
      {
        v18 = 76;
        goto LABEL_23;
      }

      if (*__s1 == 1952671094 && *(__s1 + 2) == 29295)
      {
        v18 = 83;
        goto LABEL_23;
      }
    }

LABEL_22:
    v18 = 3;
  }

LABEL_23:
  *a3 = v18;
  *(a3 + 8) = __s1;
  *(a3 + 16) = v15;
  return result;
}

void mlir::Lexer::lexAtIdentifier(mlir::Lexer *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 4);
  *(this + 4) = v6 + 1;
  v7 = *v6;
  if (v7 != 34)
  {
    if ((v7 & 0x80000000) != 0)
    {
      v19 = __maskrune(*v6, 0x100uLL);
      v9 = *(this + 4);
      if (v7 == 95 || v19 != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v9 = *(this + 4);
      if (v7 == 95 || (*(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x100) != 0)
      {
LABEL_9:
        v11 = MEMORY[0x1E69E9830];
        while (1)
        {
          v16 = *v9;
          if ((v16 & 0x80000000) != 0)
          {
            v17 = __maskrune(v16, 0x100uLL);
            v9 = *(this + 4);
            if (v17)
            {
              goto LABEL_14;
            }
          }

          else if ((*(v11 + 4 * v16 + 60) & 0x100) != 0)
          {
            goto LABEL_14;
          }

          v18 = *v9;
          if (v18 < 0 || (*(v11 + 4 * v18 + 60) & 0x400) == 0)
          {
            v12 = *v9 - 36;
            v13 = v12 > 0x3B;
            v14 = (1 << v12) & 0x800000000000401;
            if (v13 || v14 == 0)
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
    }

    *&v21 = "@ identifier expected to start with letter or '_'";
    v23 = 259;
    mlir::Lexer::emitError(this, v9 - 1, &v21, a3);
    return;
  }

  mlir::Lexer::lexString(&v21, this, v6 + 1);
  if (v21 != 1)
  {
    v8 = *(this + 4) - a2;
    *a3 = 4;
    goto LABEL_24;
  }

  *a3 = v21;
  v8 = v22;
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
      v12 = MEMORY[0x1E69E9830];
      if ((v11 & 0x80000000) != 0)
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
      v12 = MEMORY[0x1E69E9830];
      if ((v11 & 0x80000000) != 0)
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
    v12 = MEMORY[0x1E69E9830];
    if ((v11 & 0x80000000) != 0)
    {
LABEL_31:
      if (__maskrune(v11, 0x100uLL))
      {
        goto LABEL_41;
      }

      goto LABEL_32;
    }
  }

  v13 = *(v12 + 4 * v11 + 60);
  if ((v13 & 0x400) != 0)
  {
    v14 = v10 + 1;
    do
    {
      if ((*(v12 + 4 * v11 + 60) & 0x400) == 0)
      {
        break;
      }

      *(this + 4) = v14;
      v15 = *v14++;
      LOBYTE(v11) = v15;
    }

    while ((v15 & 0x80000000) == 0);
    v16 = (v14 - 1);
LABEL_22:
    v17 = *(this + 5);
    v18 = v17 < a2 || v17 > v16;
    if (!v18)
    {
      *a3 = 2;
      *(a3 + 8) = a2;
      *(a3 + 16) = v17 - a2;
      return;
    }

    v19 = v16 - a2;
    *a3 = v9;
    goto LABEL_28;
  }

  if ((v13 & 0x100) != 0)
  {
    goto LABEL_41;
  }

LABEL_32:
  v20 = *(this + 4);
  v21 = *v20 - 36;
  v18 = v21 > 0x3B;
  v22 = (1 << v21) & 0x800000000000601;
  if (!v18 && v22 != 0)
  {
    while (1)
    {
LABEL_41:
      while (1)
      {
        v27 = (*(this + 4) + 1);
        *(this + 4) = v27;
        v28 = *v27;
        if ((v28 & 0x80000000) != 0)
        {
          break;
        }

        if ((*(v12 + 4 * v28 + 60) & 0x100) == 0)
        {
          goto LABEL_45;
        }
      }

      if (!__maskrune(v28, 0x100uLL))
      {
LABEL_45:
        v16 = *(this + 4);
        v29 = *v16;
        if (v29 < 0 || (*(v12 + 4 * v29 + 60) & 0x400) == 0)
        {
          v24 = *v16 - 36;
          v18 = v24 > 0x3B;
          v25 = (1 << v24) & 0x800000000000601;
          if (v18 || v25 == 0)
          {
            goto LABEL_22;
          }
        }
      }
    }
  }

  if (v20 != *(this + 5))
  {
    v31 = 261;
    v30[0] = v8;
    v30[1] = v7;
    mlir::Lexer::emitError(this, v20 - 1, v30, a3);
    return;
  }

  *a3 = 2;
  v19 = v20 - a2;
LABEL_28:
  *(a3 + 8) = a2;
  *(a3 + 16) = v19;
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

  if (llvm::hexDigitValue(char)::LUT[v8] != -1 && llvm::hexDigitValue(char)::LUT[v4[2]] != -1)
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
    if (v5 < 0 || (v6 = MEMORY[0x1E69E9830], (*(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x10000) == 0))
    {
LABEL_29:
      *a3 = 10;
      *(a3 + 8) = a2;
      *(a3 + 16) = v3 - a2;
      return this;
    }

    *(this + 32) = v3 + 2;
    if ((v3[2] & 0x80000000) == 0)
    {
      v7 = v3[2];
      v8 = v3 + 3;
      do
      {
        if ((*(v6 + 4 * v7 + 60) & 0x10000) == 0)
        {
          break;
        }

        *(this + 32) = v8;
        v9 = *v8++;
        v7 = v9;
      }

      while ((v9 & 0x80000000) == 0);
      v3 = v8 - 1;
      goto LABEL_29;
    }

    *a3 = 10;
    *(a3 + 8) = a2;
    *(a3 + 16) = v3 + 2 - a2;
  }

  else
  {
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_29;
    }

    v10 = MEMORY[0x1E69E9830];
    while ((*(v10 + 4 * v4 + 60) & 0x400) != 0)
    {
      v11 = (v3 + 1);
      *(this + 32) = v3 + 1;
      v12 = v3[1];
      v4 = *++v3;
      if (v12 < 0)
      {
        *a3 = 10;
        *(a3 + 8) = a2;
        *(a3 + 16) = v11 - a2;
        return this;
      }
    }

    if (v4 != 46)
    {
      goto LABEL_29;
    }

    v13 = (v3 + 4);
    do
    {
      v14 = v13;
      v15 = (v13 - 3);
      *(this + 32) = v13 - 3;
      v16 = *(v13 - 3);
      if (v16 < 0)
      {
        break;
      }

      ++v13;
    }

    while ((*(v10 + 4 * v16 + 60) & 0x400) != 0);
    if ((v16 | 0x20) == 0x65)
    {
      v17 = *(v14 - 2);
      if ((*(v10 + 4 * v17 + 60) & 0x400) != 0 || (v17 == 43 || v17 == 45) && (*(v10 + 4 * *(v14 - 1) + 60) & 0x400) != 0)
      {
        v15 = (v14 - 1);
        *(this + 32) = v14 - 1;
        if ((*(v14 - 1) & 0x80000000) == 0)
        {
          v18 = *(v14 - 1);
          do
          {
            if ((*(v10 + 4 * v18 + 60) & 0x400) == 0)
            {
              break;
            }

            *(this + 32) = v14;
            v19 = *v14++;
            v18 = v19;
          }

          while ((v19 & 0x80000000) == 0);
          v15 = (v14 - 1);
        }
      }
    }

    *a3 = 9;
    *(a3 + 8) = a2;
    *(a3 + 16) = v15 - a2;
  }

  return this;
}

BOOL mlir::detail::Parser::parseCallSiteLocation(mlir::detail::Parser *a1, uint64_t *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  *(v4 + 80) = *(v4 + 56);
  *(v4 + 96) = *(v4 + 72);
  mlir::Lexer::lexToken(&v21, (*(a1 + 1) + 8));
  v5 = *(a1 + 1);
  *(v5 + 56) = v21;
  *(v5 + 72) = v22;
  *&v21 = "expected '(' in callsite location";
  v24 = 259;
  if (!mlir::detail::Parser::parseToken(a1, 21, &v21))
  {
    return 0;
  }

  v20 = 0;
  if ((mlir::detail::Parser::parseLocationInstance(a1, &v20) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 1);
  if (*(v6 + 56) == 3 && *(v6 + 72) == 2 && **(v6 + 64) == 29793)
  {
    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken(&v21, (*(a1 + 1) + 8));
    v17 = *(a1 + 1);
    *(v17 + 56) = v21;
    *(v17 + 72) = v22;
    v18[0] = 0;
    if (mlir::detail::Parser::parseLocationInstance(a1, v18))
    {
      *&v21 = "expected ')' in callsite location";
      v24 = 259;
      if (mlir::detail::Parser::parseToken(a1, 28, &v21))
      {
        *a2 = mlir::CallSiteLoc::get(v20, v18[0]);
        return 1;
      }
    }

    return 0;
  }

  v18[0] = "expected 'at' in callsite location";
  v19 = 259;
  mlir::detail::Parser::emitWrongTokenError(a1, v18, &v21);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v21);
  v8 = result;
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
    result = v8;
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
      result = v8;
    }

    v9 = __p;
    if (__p)
    {
      v10 = v29;
      v11 = __p;
      if (v29 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v29 = v9;
      operator delete(v11);
      result = v8;
    }

    v12 = v26;
    if (v26)
    {
      v13 = v27;
      v14 = v26;
      if (v27 != v26)
      {
        do
        {
          v16 = *--v13;
          v15 = v16;
          *v13 = 0;
          if (v16)
          {
            MEMORY[0x1AC55A040](v15, 0x1000C8077774924);
          }
        }

        while (v13 != v12);
        v14 = v26;
      }

      v27 = v12;
      operator delete(v14);
      result = v8;
    }

    if (v23 != &v25)
    {
      free(v23);
      return v8;
    }
  }

  return result;
}

uint64_t mlir::detail::Parser::parseLocationInstance(mlir::detail::Parser *a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1);
  v3 = *(v2 + 56);
  if (v3 == 3)
  {
    v11 = *(v2 + 64);
    v10 = *(v2 + 72);
    if (v10 == 5)
    {
      v25 = a1;
      v26 = memcmp(v11, "fused", 5uLL);
      a1 = v25;
      if (!v26)
      {

        return mlir::detail::Parser::parseFusedLocation(v25);
      }
    }

    else if (v10 == 7)
    {
      v20 = a1;
      v22 = memcmp(*(v2 + 64), "unknown", 7uLL);
      a1 = v20;
      if (!v22)
      {
        *(v2 + 80) = *(v2 + 56);
        *(v2 + 96) = *(v2 + 72);
        mlir::Lexer::lexToken(&v41, (v20[1] + 1));
        v23 = v20[1];
        *(v23 + 7) = v41;
        v23[9] = v42;
        *a2 = mlir::UnknownLoc::get(**v20[1], v24);
        return 1;
      }
    }

    else if (v10 == 8 && *v11 == 0x657469736C6C6163)
    {

      return mlir::detail::Parser::parseCallSiteLocation(a1, a2);
    }

    v38[0] = "expected location instance";
    v39 = 259;
    mlir::detail::Parser::emitWrongTokenError(a1, v38, &v41);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
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

      v8 = mlir::LocationAttr::classof(v6) && v7;
      *a2 = v8;
      if (v8)
      {
        return 1;
      }

      v38[0] = "expected location attribute, but got";
      v39 = 259;
      mlir::detail::Parser::emitError(v5, v38, &v41);
      if (v41)
      {
        v27 = v40;
        mlir::DiagnosticArgument::DiagnosticArgument(v40, v7);
        v28 = v43;
        if (v44 >= v45)
        {
          if (v43 <= v40 && v43 + 24 * v44 > v40)
          {
            v37 = v40 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v28 = v43;
            v27 = v43 + v37;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v27 = v40;
            v28 = v43;
          }
        }

        v29 = &v28[24 * v44];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        ++v44;
      }

      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
      if (v41)
      {
        mlir::InFlightDiagnostic::report(&v41);
      }

      if (v52 != 1)
      {
        return v7;
      }

      if (v51 != &v52)
      {
        free(v51);
      }

      v31 = __p;
      if (__p)
      {
        v32 = v50;
        v33 = __p;
        if (v50 != __p)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v50 = v31;
        operator delete(v33);
      }

      v15 = v47;
      if (!v47)
      {
LABEL_61:
        if (v43 != v46)
        {
          free(v43);
        }

        return v7;
      }

      v34 = v48;
      v17 = v47;
      if (v48 == v47)
      {
LABEL_60:
        v48 = v15;
        operator delete(v17);
        goto LABEL_61;
      }

      do
      {
        v36 = *--v34;
        v35 = v36;
        *v34 = 0;
        if (v36)
        {
          MEMORY[0x1AC55A040](v35, 0x1000C8077774924);
        }
      }

      while (v34 != v15);
    }

    else
    {
      v38[0] = "expected location instance";
      v39 = 259;
      mlir::detail::Parser::emitWrongTokenError(a1, v38, &v41);
      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
      if (v41)
      {
        mlir::InFlightDiagnostic::report(&v41);
      }

      if (v52 != 1)
      {
        return v7;
      }

      if (v51 != &v52)
      {
        free(v51);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v50;
        v14 = __p;
        if (v50 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v50 = v12;
        operator delete(v14);
      }

      v15 = v47;
      if (!v47)
      {
        goto LABEL_61;
      }

      v16 = v48;
      v17 = v47;
      if (v48 == v47)
      {
        goto LABEL_60;
      }

      do
      {
        v19 = *--v16;
        v18 = v19;
        *v16 = 0;
        if (v19)
        {
          MEMORY[0x1AC55A040](v18, 0x1000C8077774924);
        }
      }

      while (v16 != v15);
    }

    v17 = v47;
    goto LABEL_60;
  }

  return mlir::detail::Parser::parseNameOrFileLineColLocation(a1, a2);
}

uint64_t mlir::detail::Parser::parseFusedLocation(mlir::MLIRContext ****a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  *(v2 + 5) = *(v2 + 7);
  v2[12] = v2[9];
  mlir::Lexer::lexToken(v10, (a1[1] + 1));
  v3 = a1[1];
  *(v3 + 7) = *v10;
  v3[9] = v11[0];
  v4 = a1[1];
  if (*(v4 + 14) == 23)
  {
    *(v4 + 5) = *(v4 + 7);
    v4[12] = v4[9];
    mlir::Lexer::lexToken(v10, (a1[1] + 1));
    v5 = a1[1];
    *(v5 + 7) = *v10;
    v5[9] = v11[0];
    v6 = mlir::detail::Parser::parseAttribute(a1, 0);
    if (!v6)
    {
      return 0;
    }

    v7 = v6;
    v10[0] = "expected '>' after fused location metadata";
    v12 = 259;
    if (!mlir::detail::Parser::parseToken(a1, 19, v10))
    {
      return 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v9[1] = v10;
  v10[0] = v11;
  v10[1] = 0x400000000;
  v9[0] = a1;
  if (mlir::detail::Parser::parseCommaSeparatedList(a1, 2, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseFusedLocation(mlir::LocationAttr &)::$_0>, v9, " in fused location", 18))
  {
    mlir::FusedLoc::get(v10[0], LODWORD(v10[1]), v7, **a1[1]);
  }

  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  return 0;
}

BOOL mlir::detail::Parser::parseNameOrFileLineColLocation(mlir::detail::Parser *a1, uint64_t *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  v5 = **v4;
  mlir::Token::getStringValue((v4 + 7), &v50);
  v6 = *(a1 + 1);
  *(v6 + 80) = *(v6 + 56);
  *(v6 + 96) = *(v6 + 72);
  mlir::Lexer::lexToken(&v51, (*(a1 + 1) + 8));
  v7 = *(a1 + 1);
  *(v7 + 56) = v51;
  *(v7 + 72) = v52;
  v8 = *(a1 + 1);
  v9 = (v8 + 56);
  v10 = *(v8 + 56);
  if (v10 == 21)
  {
    *(v8 + 80) = *v9;
    *(v8 + 96) = *(v8 + 72);
    mlir::Lexer::lexToken(&v51, (*(a1 + 1) + 8));
    v25 = *(a1 + 1);
    *(v25 + 56) = v51;
    *(v25 + 72) = v52;
    v48[0] = 0;
    if (mlir::detail::Parser::parseLocationInstance(a1, v48))
    {
      v54 = 260;
      *&v51 = &v50;
      v26 = mlir::StringAttr::get(v5, &v51);
      *a2 = mlir::NameLoc::get(v26, v48[0]);
      *&v51 = "expected ')' after child location of NameLoc";
      v54 = 259;
      if (mlir::detail::Parser::parseToken(a1, 28, &v51))
      {
        v16 = 1;
        goto LABEL_51;
      }
    }

    goto LABEL_46;
  }

  if (v10 != 15)
  {
    v54 = 260;
    *&v51 = &v50;
    v27 = mlir::StringAttr::get(v5, &v51);
    v28 = mlir::NameLoc::get(v27);
    goto LABEL_25;
  }

  *(v8 + 80) = *v9;
  *(v8 + 96) = *(v8 + 72);
  mlir::Lexer::lexToken(&v51, (*(a1 + 1) + 8));
  v11 = *(a1 + 1);
  *(v11 + 56) = v51;
  *(v11 + 72) = v52;
  v12 = *(a1 + 1);
  v14 = *(v12 + 56);
  v13 = (v12 + 56);
  if (v14 == 10)
  {
    UnsignedIntegerValue = mlir::Token::getUnsignedIntegerValue(v13);
    if ((UnsignedIntegerValue & 0x100000000) == 0)
    {
      v48[0] = "expected integer line number in FileLineColLoc";
      v49 = 259;
      mlir::detail::Parser::emitWrongTokenError(a1, v48, &v51);
      v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
      if (v51)
      {
        mlir::InFlightDiagnostic::report(&v51);
      }

      if (v61 == 1)
      {
        if (v60 != &v61)
        {
          free(v60);
        }

        v17 = __p;
        if (__p)
        {
          v18 = v59;
          v19 = __p;
          if (v59 != __p)
          {
            do
            {
              v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
            }

            while (v18 != v17);
            v19 = __p;
          }

          v59 = v17;
          operator delete(v19);
        }

        v20 = v56;
        if (!v56)
        {
          goto LABEL_49;
        }

        v21 = v57;
        v22 = v56;
        if (v57 == v56)
        {
LABEL_48:
          v57 = v20;
          operator delete(v22);
LABEL_49:
          if (v53 != &v55)
          {
            free(v53);
          }

          goto LABEL_51;
        }

        do
        {
          v24 = *--v21;
          v23 = v24;
          *v21 = 0;
          if (v24)
          {
            MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
          }
        }

        while (v21 != v20);
LABEL_47:
        v22 = v56;
        goto LABEL_48;
      }

      goto LABEL_51;
    }

    v35 = UnsignedIntegerValue;
    v36 = *(a1 + 1);
    *(v36 + 80) = *(v36 + 56);
    *(v36 + 96) = *(v36 + 72);
    mlir::Lexer::lexToken(&v51, (*(a1 + 1) + 8));
    v37 = *(a1 + 1);
    *(v37 + 56) = v51;
    *(v37 + 72) = v52;
    *&v51 = "expected ':' in FileLineColLoc";
    v54 = 259;
    if (mlir::detail::Parser::parseToken(a1, 15, &v51))
    {
      v38 = *(a1 + 1);
      v40 = *(v38 + 56);
      v39 = (v38 + 56);
      if (v40 != 10)
      {
        v48[0] = "expected integer column number in FileLineColLoc";
        v49 = 259;
        mlir::detail::Parser::emitWrongTokenError(a1, v48, &v51);
        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
        if (v51)
        {
          mlir::InFlightDiagnostic::report(&v51);
        }

        if (v61 == 1)
        {
          mlir::Diagnostic::~Diagnostic((&v51 + 8));
        }

        goto LABEL_51;
      }

      v41 = mlir::Token::getUnsignedIntegerValue(v39);
      if ((v41 & 0x100000000) == 0)
      {
        v48[0] = "expected integer column number in FileLineColLoc";
        v49 = 259;
        mlir::detail::Parser::emitError(a1, v48, &v51);
        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
        goto LABEL_51;
      }

      v43 = v41;
      v44 = *(a1 + 1);
      *(v44 + 80) = *(v44 + 56);
      *(v44 + 96) = *(v44 + 72);
      mlir::Lexer::lexToken(&v51, (*(a1 + 1) + 8));
      v45 = *(a1 + 1);
      *(v45 + 56) = v51;
      *(v45 + 72) = v52;
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &v50;
      }

      else
      {
        v46 = v50.__r_.__value_.__r.__words[0];
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v50.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v50.__r_.__value_.__l.__size_;
      }

      v28 = mlir::FileLineColLoc::get(v5, v46, size, v35, v43);
LABEL_25:
      *a2 = v28;
      v16 = 1;
      goto LABEL_51;
    }

LABEL_46:
    v16 = 0;
    goto LABEL_51;
  }

  v48[0] = "expected integer line number in FileLineColLoc";
  v49 = 259;
  mlir::detail::Parser::emitWrongTokenError(a1, v48, &v51);
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
  if (v51)
  {
    mlir::InFlightDiagnostic::report(&v51);
  }

  if (v61 == 1)
  {
    if (v60 != &v61)
    {
      free(v60);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v59;
      v31 = __p;
      if (v59 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v59 = v29;
      operator delete(v31);
    }

    v20 = v56;
    if (!v56)
    {
      goto LABEL_49;
    }

    v32 = v57;
    v22 = v56;
    if (v57 == v56)
    {
      goto LABEL_48;
    }

    do
    {
      v34 = *--v32;
      v33 = v34;
      *v32 = 0;
      if (v34)
      {
        MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
      }
    }

    while (v32 != v20);
    goto LABEL_47;
  }

LABEL_51:
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  return v16;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseFusedLocation(mlir::LocationAttr &)::$_0>(uint64_t a1)
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
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1);
  if (*(v3 + 56) == a2)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken(&v16, (*(a1 + 1) + 8));
    v5 = *(a1 + 1);
    *(v5 + 56) = v16;
    *(v5 + 72) = v17;
    return 1;
  }

  else
  {
    mlir::detail::Parser::emitWrongTokenError(a1, a3, &v16);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16);
    if (v16)
    {
      mlir::InFlightDiagnostic::report(&v16);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v23;
        v9 = __p;
        if (v23 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v23 = v7;
        operator delete(v9);
      }

      v10 = v20;
      if (v20)
      {
        v11 = v21;
        v12 = v20;
        if (v21 != v20)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
            }
          }

          while (v11 != v10);
          v12 = v20;
        }

        v21 = v10;
        operator delete(v12);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v6;
}

BOOL mlir::detail::Parser::parseCommaSeparatedListUntil(mlir::detail::Parser *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, char a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 1);
  if (*(v6 + 56) == a2)
  {
    if (a5)
    {
      *(v6 + 80) = *(v6 + 56);
      *(v6 + 96) = *(v6 + 72);
      mlir::Lexer::lexToken(&v26, (*(a1 + 1) + 8));
      v7 = *(a1 + 1);
      *(v7 + 56) = v26;
      *(v7 + 72) = v27;
      return 1;
    }

    else
    {
      v24[0] = "expected list element";
      v25 = 259;
      mlir::detail::Parser::emitWrongTokenError(a1, v24, &v26);
      v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
      if (v26)
      {
        mlir::InFlightDiagnostic::report(&v26);
      }

      if (v36 == 1)
      {
        if (v35 != &v36)
        {
          free(v35);
        }

        v14 = __p;
        if (__p)
        {
          v15 = v34;
          v16 = __p;
          if (v34 != __p)
          {
            do
            {
              v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
            }

            while (v15 != v14);
            v16 = __p;
          }

          v34 = v14;
          operator delete(v16);
        }

        v17 = v31;
        if (v31)
        {
          v18 = v32;
          v19 = v31;
          if (v32 != v31)
          {
            do
            {
              v21 = *--v18;
              v20 = v21;
              *v18 = 0;
              if (v21)
              {
                MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
              }
            }

            while (v18 != v17);
            v19 = v31;
          }

          v32 = v17;
          operator delete(v19);
        }

        if (v28 != &v30)
        {
          free(v28);
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
        mlir::Lexer::lexToken(&v26, (*(a1 + 1) + 8));
        v13 = *(a1 + 1);
        *(v13 + 56) = v26;
        *(v13 + 72) = v27;
        if ((a3(a4) & 1) == 0)
        {
          return 0;
        }
      }

      v25 = 1283;
      v24[0] = "expected ',' or '";
      v24[2] = mlir::Token::getTokenSpelling(v11);
      v24[3] = v22;
      *&v26 = v24;
      v27 = "'";
      v29 = 770;
      return mlir::detail::Parser::parseToken(a1, v11, &v26);
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

void mlir::detail::Parser::emitWrongTokenError(uint64_t a1@<X0>, uint64_t a2@<X1>, mlir::InFlightDiagnostic *a3@<X8>)
{
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(a1 + 8) + 56));
  v7 = *(a1 + 8);
  v8 = *(v7 + 56) == 0;
  v9 = *(v7 + 24);
  v10 = (SrcSymbol - v8);
  v11 = SrcSymbol - v8 - v9;
  *&v24 = v9;
  *(&v24 + 1) = v11;
  while (1)
  {
    last_not_of = llvm::StringRef::find_last_not_of(&v24, " \t", 2, 0xFFFFFFFFFFFFFFFFLL);
    if (last_not_of + 1 < *(&v24 + 1))
    {
      v13 = last_not_of + 1;
    }

    else
    {
      v13 = *(&v24 + 1);
    }

    v14 = *(&v24 + 1) - v11 + v13;
    if (*(&v24 + 1) < v14)
    {
      v14 = *(&v24 + 1);
    }

    *(&v24 + 1) = v14;
    if (!v14)
    {
      break;
    }

    v15 = (v24 + v14);
    v16 = *(v24 + v14 - 1);
    if (v16 != 10 && v16 != 13)
    {
      v21 = *(a1 + 8) + 8;
      goto LABEL_23;
    }

    *(&v24 + 1) = v14 - 1;
    v23 = v24;
    last_of = llvm::StringRef::find_last_of(&v23, "\n\r", 2, 0xFFFFFFFFFFFFFFFFLL);
    if (last_of != -1)
    {
      if (*(&v23 + 1) >= last_of)
      {
        v19 = last_of;
      }

      else
      {
        v19 = *(&v23 + 1);
      }

      *&v23 = v23 + v19;
      *(&v23 + 1) -= v19;
    }

    v20 = llvm::StringRef::find(&v23, "//", 2uLL, 0);
    v11 = *(&v24 + 1);
    if (v20 != -1)
    {
      if (*(&v24 + 1) >= v20 - *(&v23 + 1) + *(&v24 + 1))
      {
        v11 = v20 - *(&v23 + 1) + *(&v24 + 1);
      }

      *(&v24 + 1) = v11;
    }
  }

  v21 = *(a1 + 8) + 8;
  v15 = v10;
LABEL_23:
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(v21, v15);
  mlir::emitError(EncodedSourceLocation, a2, a3);
  if (*(*(a1 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(a3);
  }
}

void mlir::detail::Parser::emitError(uint64_t a1@<X0>, uint64_t a2@<X1>, mlir::InFlightDiagnostic *a3@<X8>)
{
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(a1 + 8) + 56));
  v7 = SrcSymbol;
  v8 = *(a1 + 8);
  if (!*(v8 + 56))
  {
    v7 = (SrcSymbol - 1);
  }

  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(v8 + 8, v7);
  mlir::emitError(EncodedSourceLocation, a2, a3);
  if (*(*(a1 + 8) + 56) == 1)
  {

    mlir::InFlightDiagnostic::abandon(a3);
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

uint64_t mlir::detail::Parser::parseOptionalInteger(mlir::detail::Parser *this, llvm::APInt *a2)
{
  v4 = 0;
  v30 = *MEMORY[0x1E69E9840];
  v5 = *(this + 1);
  v6 = (v5 + 56);
  v7 = *(v5 + 56);
  if (v7 > 58)
  {
    if (v7 == 79)
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
      if (v7 != 59)
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
      SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol(&v24);
      v21 = "integer value too large";
      v22 = 259;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, SrcSymbol);
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
        mlir::Diagnostic::~Diagnostic((&v26 + 8));
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
        MEMORY[0x1AC55A040](*a2, 0x1000C8000313F17);
      }

      *a2 = v26;
      *(a2 + 2) = DWORD2(v26);
    }

    if (v7 == 24)
    {
      llvm::APInt::negate(a2);
    }

LABEL_38:
    v4 = 1;
    goto LABEL_39;
  }

  return v4 | (v9 << 8);
}

uint64_t **llvm::APInt::negate(llvm::APInt *this)
{
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    v5 = this;
    llvm::APInt::flipAllBitsSlowCase(this);
    this = v5;
  }

  else
  {
    if (v2)
    {
      v3 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
    }

    else
    {
      v3 = 0;
    }

    *this = v3 & ~*this;
  }

  return llvm::APInt::operator++(this);
}

uint64_t mlir::detail::Parser::parseOptionalDecimalInteger(mlir::detail::Parser *this, llvm::APInt *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  v3 = *(v2 + 56);
  if (v3 == 24 || v3 == 10)
  {
    if (v3 == 24)
    {
      *(v2 + 80) = *(v2 + 56);
      *(v2 + 96) = *(v2 + 72);
      mlir::Lexer::lexToken(&v38, (*(this + 1) + 8));
      v7 = *(this + 1);
      *(v7 + 56) = v38;
      *(v7 + 72) = v39;
      v2 = *(this + 1);
    }

    v36 = *(v2 + 56);
    v37 = *(v2 + 72);
    *&v38 = "expected integer value";
    v41 = 259;
    if (mlir::detail::Parser::parseToken(this, 10, &v38))
    {
      v35[0] = *(&v36 + 1);
      v35[1] = v37;
      if (**(&v36 + 1) == 48 && v37 >= 2)
      {
        v11 = *(*(&v36 + 1) + 1);
        v10 = *(&v36 + 1) + 1;
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

          v30 = *(this + 1);
          *(v30 + 40) = v10;
          *(v30 + 80) = *(v30 + 56);
          *(v30 + 96) = *(v30 + 72);
          mlir::Lexer::lexToken(&v38, (*(this + 1) + 8));
          v31 = *(this + 1);
          *(v31 + 56) = v38;
          *(v31 + 72) = v39;
LABEL_55:
          v14 = 1;
LABEL_61:
          v15 = 1;
          return v14 | (v15 << 8);
        }
      }

      if (!llvm::StringRef::getAsInteger(v35, 0xAu, a2))
      {
        v26 = *(a2 + 2);
        v27 = *a2;
        v28 = (*a2 + 8 * ((v26 - 1) >> 6));
        if (v26 < 0x41)
        {
          v28 = a2;
        }

        if ((*v28 >> (v26 - 1)))
        {
          llvm::APInt::zext(&v38, a2, v26 + 1);
          if (*(a2 + 2) >= 0x41u && *a2)
          {
            MEMORY[0x1AC55A040](*a2, 0x1000C8000313F17);
          }

          v27 = v38;
          *a2 = v38;
          v26 = DWORD2(v38);
          *(a2 + 2) = DWORD2(v38);
        }

        if (v3 == 24)
        {
          if (v26 > 0x40)
          {
            llvm::APInt::flipAllBitsSlowCase(a2);
          }

          else
          {
            if (v26)
            {
              v29 = 0xFFFFFFFFFFFFFFFFLL >> -v26;
            }

            else
            {
              v29 = 0;
            }

            *a2 = v29 & ~v27;
          }

          llvm::APInt::operator++(a2);
        }

        goto LABEL_55;
      }

      SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol(&v36);
      v33 = "integer value too large";
      v34 = 259;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, SrcSymbol);
      mlir::emitError(EncodedSourceLocation, &v33, &v38);
      if (*(*(this + 1) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v38);
      }

      if (v38)
      {
        mlir::InFlightDiagnostic::report(&v38);
      }

      if (v48 == 1)
      {
        if (v47 != &v48)
        {
          free(v47);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v46;
          v20 = __p;
          if (v46 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v46 = v18;
          operator delete(v20);
        }

        v21 = v43;
        if (v43)
        {
          v22 = v44;
          v23 = v43;
          if (v44 != v43)
          {
            do
            {
              v25 = *--v22;
              v24 = v25;
              *v22 = 0;
              if (v25)
              {
                MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
              }
            }

            while (v22 != v21);
            v23 = v43;
          }

          v44 = v21;
          operator delete(v23);
        }

        if (v40 != &v42)
        {
          free(v40);
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

BOOL mlir::detail::Parser::parseFloatFromIntegerLiteral(uint64_t a1, uint64_t a2, ZinCcdmaLayerMirInfo *this, int a4, void *a5, unint64_t a6)
{
  v58 = *MEMORY[0x1E69E9840];
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol(this);
  v13 = *(this + 2);
  if (v13 < 2 || (v14 = *(this + 1), *(v14 + 1) != 120))
  {
    v44[0] = "unexpected decimal integer literal for a floating point value";
    v45 = 259;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, SrcSymbol);
    mlir::emitError(EncodedSourceLocation, v44, &v48);
    if (*(*(a1 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v48);
    }

    mlir::Diagnostic::attachNote(&v49, 0, 0);
  }

  if (a4)
  {
    v44[0] = "hexadecimal float literal should not have a leading minus";
    v45 = 259;
    v15 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, SrcSymbol);
    mlir::emitError(v15, v44, &v48);
    if (*(*(a1 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v48);
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v48);
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

      v17 = __p;
      if (__p)
      {
        v18 = v55;
        v19 = __p;
        if (v55 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v55 = v17;
        operator delete(v19);
      }

      v20 = v52;
      if (v52)
      {
        v21 = v53;
        v22 = v52;
        if (v53 != v52)
        {
          do
          {
            v24 = *--v21;
            v23 = v24;
            *v21 = 0;
            if (v24)
            {
              MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
            }
          }

          while (v21 != v20);
          v22 = v52;
        }

        v53 = v20;
        operator delete(v22);
      }

      if (v50 != v51)
      {
        free(v50);
      }
    }

    return v16;
  }

  LODWORD(v47) = 1;
  v46 = 0;
  v48 = v14;
  v49 = v13;
  llvm::StringRef::getAsInteger(&v48, 0, &v46);
  v27 = v47;
  if (v47 <= 0x40)
  {
    if (64 - __clz(v46) <= a6)
    {
      v28 = llvm::APInt::APInt(&v48, a6, (v47 + 63) >> 6, &v46);
      if ((*(a2 + 32) & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_56:
      v42 = *(a2 + 8);
      v43 = llvm::APFloatBase::PPCDoubleDouble(v28);
      if (v43 == v42)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat((a2 + 8));
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat((a2 + 8));
      }

      *(a2 + 32) = 0;
      v31 = (a2 + 8);
      v32 = a5;
      if (v43 != a5)
      {
        goto LABEL_34;
      }

LABEL_64:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v31, v32, &v48);
    }

LABEL_37:
    v44[0] = "hexadecimal float constant out of range for type";
    v45 = 259;
    v33 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, SrcSymbol);
    mlir::emitError(v33, v44, &v48);
    if (*(*(a1 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v48);
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v48);
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

      v34 = __p;
      if (__p)
      {
        v35 = v55;
        v36 = __p;
        if (v55 != __p)
        {
          do
          {
            v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v55 = v34;
        operator delete(v36);
      }

      v37 = v52;
      if (v52)
      {
        v38 = v53;
        v39 = v52;
        if (v53 != v52)
        {
          do
          {
            v41 = *--v38;
            v40 = v41;
            *v38 = 0;
            if (v41)
            {
              MEMORY[0x1AC55A040](v40, 0x1000C8077774924);
            }
          }

          while (v38 != v37);
          v39 = v52;
        }

        v53 = v37;
        operator delete(v39);
      }

      if (v50 != v51)
      {
        free(v50);
      }
    }

    goto LABEL_68;
  }

  if (v27 - llvm::APInt::countLeadingZerosSlowCase(&v46) > a6)
  {
    goto LABEL_37;
  }

  v28 = llvm::APInt::APInt(&v48, a6, (v27 + 63) >> 6, v46);
  if (*(a2 + 32))
  {
    goto LABEL_56;
  }

LABEL_33:
  v30 = llvm::APFloatBase::PPCDoubleDouble(v28);
  v31 = (a2 + 8);
  v32 = a5;
  if (v30 == a5)
  {
    goto LABEL_64;
  }

LABEL_34:
  llvm::detail::IEEEFloat::IEEEFloat(v31, v32, &v48, v29);
  *(a2 + 32) = 1;
  if (v49 >= 0x41 && v48)
  {
    MEMORY[0x1AC55A040](v48, 0x1000C8000313F17);
  }

  v16 = 1;
LABEL_68:
  if (v47 >= 0x41 && v46)
  {
    MEMORY[0x1AC55A040](v46, 0x1000C8000313F17);
  }

  return v16;
}

__n128 mlir::Diagnostic::operator<<(uint64_t a1, char *__s)
{
  if (__s)
  {
    v3 = a1;
    v4 = strlen(__s);
    a1 = v3;
  }

  else
  {
    v4 = 0;
  }

  v13 = 3;
  v14 = __s;
  v15 = v4;
  v5 = *(a1 + 24);
  v6 = *(a1 + 16);
  v7 = &v13;
  if (v5 >= *(a1 + 28))
  {
    if (v6 <= &v13 && v6 + 24 * v5 > &v13)
    {
      v11 = &v13 - v6;
      v12 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v5 + 1, 24);
      a1 = v12;
      v6 = *(v12 + 16);
      v7 = &v11[v6];
    }

    else
    {
      v10 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v5 + 1, 24);
      a1 = v10;
      v6 = *(v10 + 16);
      v7 = &v13;
    }
  }

  v8 = (v6 + 24 * *(a1 + 24));
  result = *v7;
  v8[1].n128_u64[0] = v7[1].n128_u64[0];
  *v8 = result;
  ++*(a1 + 24);
  return result;
}

void mlir::detail::Parser::parseResourceHandle(uint64_t a1@<X0>, void *a2@<X1>, const char **a3@<X2>, uint64_t a4@<X8>)
{
  v81 = *MEMORY[0x1E69E9840];
  v64 = a2;
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(a1 + 8) + 56));
  v8 = *(a1 + 8);
  v9 = *(v8 + 56);
  if (v9 == 3 || v9 == 12)
  {
LABEL_6:
    *a3 = *(v8 + 64);
    *(v8 + 80) = *(v8 + 56);
    *(v8 + 96) = *(v8 + 72);
    mlir::Lexer::lexToken(&v69, (*(a1 + 8) + 8));
    v11 = *(a1 + 8);
    *(v11 + 56) = v69;
    *(v11 + 72) = v70;
    v12 = llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::operator[](*(*(a1 + 8) + 104) + 48, &v64);
    v13 = *a3;
    v14 = a3[1];
    v17 = llvm::StringMapImpl::hash(*a3, v14, v15, v16);
    v18 = llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>::try_emplace_with_hash<>(v12, v13, v14, v17);
    v19 = *v18;
    if ((*(*v18 + 31) & 0x8000000000000000) != 0)
    {
      v20 = v19 + 8;
      if (!*(v19 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v20 = v19 + 8;
      if (!*(*v18 + 31))
      {
LABEL_12:
        (*(*v64 + 32))(&v61);
        if (v63)
        {
          (*(*v64 + 40))(&v69);
          if (*(v19 + 31) < 0)
          {
            operator delete(*v20);
          }

          v22 = v69;
          *(v20 + 16) = v70;
          *v20 = v22;
          *(v19 + 32) = v61;
          *(v19 + 48) = v62;
          goto LABEL_16;
        }

        v60[16] = 257;
        EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, SrcSymbol);
        mlir::emitError(EncodedSourceLocation, v60, &v69);
        if (*(*(a1 + 8) + 56) == 1)
        {
          mlir::InFlightDiagnostic::abandon(&v69);
        }

        if (!v69)
        {
          goto LABEL_50;
        }

        LODWORD(v65) = 3;
        v66 = "unknown 'resource' key '";
        v67 = 24;
        v34 = &v65;
        v35 = v71;
        if (v72 >= v73)
        {
          if (v71 <= &v65 && v71 + 24 * v72 > &v65)
          {
            v57 = &v65 - v71;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
            v35 = v71;
            v34 = (v71 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
            v34 = &v65;
            v35 = v71;
          }
        }

        v36 = &v35[24 * v72];
        v37 = *v34;
        *(v36 + 2) = v34[2];
        *v36 = v37;
        ++v72;
        if (!v69)
        {
          goto LABEL_50;
        }

        v68 = 261;
        v38 = a3[1];
        v65 = *a3;
        v66 = v38;
        mlir::Diagnostic::operator<<(&v69 + 8, &v65);
        if (!v69)
        {
          goto LABEL_50;
        }

        LODWORD(v65) = 3;
        v66 = "' for dialect '";
        v67 = 15;
        v39 = &v65;
        v40 = v71;
        if (v72 >= v73)
        {
          if (v71 <= &v65 && v71 + 24 * v72 > &v65)
          {
            v58 = &v65 - v71;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
            v40 = v71;
            v39 = (v71 + v58);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
            v39 = &v65;
            v40 = v71;
          }
        }

        v41 = &v40[24 * v72];
        v42 = *v39;
        *(v41 + 2) = v39[2];
        *v41 = v42;
        ++v72;
        if (v69 && (v43 = v64[1], v45 = *(v43 + 8), v44 = *(v43 + 16), v68 = 261, v65 = v45, v66 = v44, mlir::Diagnostic::operator<<(&v69 + 8, &v65), v69))
        {
          LODWORD(v65) = 3;
          v66 = "'";
          v67 = 1;
          v46 = &v65;
          v47 = v71;
          if (v72 >= v73)
          {
            if (v71 <= &v65 && v71 + 24 * v72 > &v65)
            {
              v59 = &v65 - v71;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
              v47 = v71;
              v46 = (v71 + v59);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
              v46 = &v65;
              v47 = v71;
            }
          }

          v48 = &v47[24 * v72];
          v49 = *v46;
          *(v48 + 2) = v46[2];
          *v48 = v49;
          ++v72;
          v50 = v69;
          *a4 = 0;
          *(a4 + 24) = 0;
          if (v50)
          {
            mlir::InFlightDiagnostic::report(&v69);
          }
        }

        else
        {
LABEL_50:
          *a4 = 0;
          *(a4 + 24) = 0;
        }

        if (v80)
        {
          if (v79 != &v80)
          {
            free(v79);
          }

          v51 = __p;
          if (__p)
          {
            v52 = v78;
            v53 = __p;
            if (v78 != __p)
            {
              do
              {
                v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
              }

              while (v52 != v51);
              v53 = __p;
            }

            v78 = v51;
            operator delete(v53);
          }

          v28 = v75;
          if (!v75)
          {
            goto LABEL_67;
          }

          v54 = v76;
          v30 = v75;
          if (v76 == v75)
          {
LABEL_66:
            v76 = v28;
            operator delete(v30);
LABEL_67:
            if (v71 != v74)
            {
              free(v71);
            }

            return;
          }

          do
          {
            v56 = *--v54;
            v55 = v56;
            *v54 = 0;
            if (v56)
            {
              MEMORY[0x1AC55A040](v55, 0x1000C8077774924);
            }
          }

          while (v54 != v28);
LABEL_65:
          v30 = v75;
          goto LABEL_66;
        }

        return;
      }
    }

LABEL_16:
    v23 = *(v19 + 31);
    v24 = *(v19 + 8);
    if (v23 >= 0)
    {
      v24 = v20;
    }

    if (v23 < 0)
    {
      v23 = *(v19 + 16);
    }

    *a3 = v24;
    a3[1] = v23;
    *a4 = *(v19 + 32);
    *(a4 + 16) = *(v19 + 48);
    *(a4 + 24) = 1;
    return;
  }

  if (mlir::Token::isKeyword((v8 + 56)))
  {
    v8 = *(a1 + 8);
    goto LABEL_6;
  }

  v65 = "expected identifier key for 'resource' entry";
  v68 = 259;
  mlir::detail::Parser::emitError(a1, &v65, &v69);
  *a4 = 0;
  *(a4 + 24) = 0;
  if (v69)
  {
    mlir::InFlightDiagnostic::report(&v69);
  }

  if (v80 == 1)
  {
    if (v79 != &v80)
    {
      free(v79);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v78;
      v27 = __p;
      if (v78 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v78 = v25;
      operator delete(v27);
    }

    v28 = v75;
    if (!v75)
    {
      goto LABEL_67;
    }

    v29 = v76;
    v30 = v75;
    if (v76 == v75)
    {
      goto LABEL_66;
    }

    do
    {
      v32 = *--v29;
      v31 = v32;
      *v29 = 0;
      if (v32)
      {
        MEMORY[0x1AC55A040](v31, 0x1000C8077774924);
      }
    }

    while (v29 != v28);
    goto LABEL_65;
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::operator[](uint64_t a1, void *a2)
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
    llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(v13, v12, &v14);
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
  v46 = *MEMORY[0x1E69E9840];
  if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a3))
  {
    v6 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a3);
    v34 = 0;
    v35 = 0;
    mlir::detail::Parser::parseResourceHandle(this, v6, &v34, a1);
  }

  else
  {
    v29 = 257;
    mlir::detail::Parser::emitError(this, v28, &v34);
    if (!v34)
    {
      goto LABEL_10;
    }

    LODWORD(v30) = 3;
    v31 = "dialect '";
    v32 = 9;
    v7 = &v30;
    v8 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v30 && v36 + 24 * v37 > &v30)
      {
        v26 = &v30 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v8 = v36;
        v7 = (v36 + v26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v7 = &v30;
        v8 = v36;
      }
    }

    v9 = &v8[24 * v37];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v37;
    if (v34 && (v11 = *(a3 + 1), v12 = *(a3 + 2), v33 = 261, v30 = v11, v31 = v12, mlir::Diagnostic::operator<<(&v35, &v30), v34))
    {
      LODWORD(v30) = 3;
      v31 = "' does not expect resource handles";
      v32 = 34;
      v13 = &v30;
      v14 = v36;
      if (v37 >= v38)
      {
        if (v36 <= &v30 && v36 + 24 * v37 > &v30)
        {
          v27 = &v30 - v36;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
          v14 = v36;
          v13 = (v36 + v27);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
          v13 = &v30;
          v14 = v36;
        }
      }

      v15 = &v14[24 * v37];
      v16 = *v13;
      *(v15 + 2) = v13[2];
      *v15 = v16;
      ++v37;
      v17 = v34;
      *a1 = 0;
      *(a1 + 24) = 0;
      if (v17)
      {
        mlir::InFlightDiagnostic::report(&v34);
      }
    }

    else
    {
LABEL_10:
      *a1 = 0;
      *(a1 + 24) = 0;
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v43;
        v20 = __p;
        if (v43 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v43 = v18;
        operator delete(v20);
      }

      v21 = v40;
      if (v40)
      {
        v22 = v41;
        v23 = v40;
        if (v41 != v40)
        {
          do
          {
            v25 = *--v22;
            v24 = v25;
            *v22 = 0;
            if (v25)
            {
              MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
            }
          }

          while (v22 != v21);
          v23 = v40;
        }

        v41 = v21;
        operator delete(v23);
      }

      if (v36 != v39)
      {
        free(v36);
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
  v34 = *MEMORY[0x1E69E9840];
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

uint64_t anonymous namespace::OperationParser::parseOperation(int32x2_t *this)
{
  v286 = *MEMORY[0x1E69E9840];
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((*&this[1] + 56));
  v3 = v251;
  v249 = v251;
  v250 = 0x100000000;
  v224 = 0;
  v4 = this[1];
  if (*(*&v4 + 56) == 6)
  {
    v273 = this;
    v274 = &v249;
    v275 = &v224;
    {
      goto LABEL_277;
    }

    while (1)
    {
      v5 = this[1];
      if (*(*&v5 + 56) != 16)
      {
        break;
      }

      *(*&v5 + 80) = *(*&v5 + 56);
      *(*&v5 + 96) = *(*&v5 + 72);
      mlir::Lexer::lexToken(&v252, (*&this[1] + 8));
      *(*&this[1] + 56) = v252;
      {
        goto LABEL_277;
      }
    }

    v252.__r_.__value_.__r.__words[0] = "expected '=' after SSA name";
    LOWORD(v254) = 259;
    if (!mlir::detail::Parser::parseToken(this, 18, &v252))
    {
      goto LABEL_277;
    }

    v4 = this[1];
  }

  v222 = *(*&v4 + 56);
  v223 = *(*&v4 + 72);
  if (v222 != 3)
  {
    if (!mlir::Token::isKeyword(&v222))
    {
      if (v222 != 11)
      {
        if (!mlir::Token::isCodeCompletionFor(&v222, 11))
        {
          if (v222 == 2)
          {
            v39 = mlir::detail::Parser::codeCompleteDialectOrElidedOpName(this, SrcSymbol);
          }

          else
          {
            v273 = "expected operation name in quotes";
            LOWORD(v277) = 259;
            mlir::detail::Parser::emitWrongTokenError(this, &v273, &v252);
            v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v252);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v252);
          }

          goto LABEL_278;
        }

        v35 = &v252;
        mlir::Token::getStringValue(&v222, &v252);
        size = SHIBYTE(v252.__r_.__value_.__r.__words[2]);
        if ((v252.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v35 = v252.__r_.__value_.__r.__words[0];
        }

        if ((v252.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v252.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          if (v35->__r_.__value_.__s.__data_[size - 1] == 46)
          {
            v37 = size - 1;
            if (size != 1)
            {
              v38 = memchr(v35, 46, size - 1);
              if (!v38 || v38 - v35 == -1)
              {
                (*(**(*&this[1] + 160) + 24))(*(*&this[1] + 160), v35, v37);
              }
            }
          }
        }

        else
        {
          (*(**(*&this[1] + 160) + 16))(*(*&this[1] + 160), "", 0);
        }

        if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v252.__r_.__value_.__l.__data_);
        }

LABEL_277:
        v39 = 0;
        goto LABEL_278;
      }

      goto LABEL_269;
    }

    v4 = this[1];
  }

  v6 = v249;
  v7 = v250;
  v8 = ZinCcdmaLayerMirInfo::GetSrcSymbol((*&v4 + 56));
  v9 = this[1];
  v11 = *(*&v9 + 64);
  v10 = *(*&v9 + 72);
  v238 = v12;
  v239 = v14;
  if ((v14 & 1) == 0)
  {
    v30 = 0;
    goto LABEL_269;
  }

  v252.__r_.__value_.__r.__words[0] = *(v12 + 8);
  __s2 = mlir::OpaqueAttr::getAttrData(&v252);
  v16 = v15;
  v272 = 0;
  v17 = v238;
  if (*(v238 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v252.__r_.__value_.__r.__words[0] = *(v238 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v252);
    if (!Values)
    {
      LOWORD(v229) = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*&this[1] + 8, v8);
      mlir::emitError(EncodedSourceLocation, &v225, &v273);
      if (*(*&this[1] + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v273);
      }

      if (v273)
      {
        LODWORD(v252.__r_.__value_.__l.__data_) = 3;
        v252.__r_.__value_.__r.__words[2] = 9;
        v41 = &v252;
        v42 = v276;
        if (v277 >= v278)
        {
          if (v276 <= &v252 && v276 + 24 * v277 > &v252)
          {
            v207 = &v252 - v276;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
            v42 = v276;
            v41 = (v276 + v207);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
            v41 = &v252;
            v42 = v276;
          }
        }

        v43 = &v42[24 * v277];
        v44 = *&v41->__r_.__value_.__l.__data_;
        *(v43 + 2) = *(&v41->__r_.__value_.__l + 2);
        *v43 = v44;
        ++v277;
      }

      DialectNamespace = mlir::OperationName::getDialectNamespace(&v238);
      if (v273)
      {
        LOWORD(v254) = 261;
        v252.__r_.__value_.__r.__words[0] = DialectNamespace;
        v252.__r_.__value_.__l.__size_ = v46;
        mlir::Diagnostic::operator<<(&v274, &v252.__r_.__value_.__l.__data_);
        if (v273)
        {
          LODWORD(v252.__r_.__value_.__l.__data_) = 3;
          v252.__r_.__value_.__l.__size_ = "' not found for custom op '";
          v252.__r_.__value_.__r.__words[2] = 27;
          v47 = &v252;
          v48 = v276;
          if (v277 >= v278)
          {
            if (v276 <= &v252 && v276 + 24 * v277 > &v252)
            {
              v212 = &v252 - v276;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
              v48 = v276;
              v47 = (v276 + v212);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
              v47 = &v252;
              v48 = v276;
            }
          }

          v49 = &v48[24 * v277];
          v50 = *&v47->__r_.__value_.__l.__data_;
          *(v49 + 2) = *(&v47->__r_.__value_.__l + 2);
          *v49 = v50;
          ++v277;
          if (v273)
          {
            LOWORD(v254) = 261;
            v252.__r_.__value_.__r.__words[0] = v11;
            v252.__r_.__value_.__l.__size_ = v10;
            mlir::Diagnostic::operator<<(&v274, &v252.__r_.__value_.__l.__data_);
            if (v273)
            {
              LODWORD(v252.__r_.__value_.__l.__data_) = 3;
              v252.__r_.__value_.__l.__size_ = "' ";
              v252.__r_.__value_.__r.__words[2] = 2;
              v51 = &v252;
              v52 = v276;
              if (v277 >= v278)
              {
                if (v276 <= &v252 && v276 + 24 * v277 > &v252)
                {
                  v217 = &v252 - v276;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
                  v52 = v276;
                  v51 = (v276 + v217);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
                  v51 = &v252;
                  v52 = v276;
                }
              }

              v53 = &v52[24 * v277];
              v54 = *&v51->__r_.__value_.__l.__data_;
              *(v53 + 2) = *(&v51->__r_.__value_.__l + 2);
              *v53 = v54;
              ++v277;
            }
          }
        }
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v252, &v273);
      if (v273)
      {
        mlir::InFlightDiagnostic::report(&v273);
      }

      if (v285 == 1)
      {
        if (v284 != &v285)
        {
          free(v284);
        }

        v55 = __p;
        if (__p)
        {
          v56 = v283;
          v57 = __p;
          if (v283 != __p)
          {
            do
            {
              v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
            }

            while (v56 != v55);
            v57 = __p;
          }

          v283 = v55;
          operator delete(v57);
        }

        v58 = v280;
        if (v280)
        {
          v59 = v281;
          v60 = v280;
          if (v281 != v280)
          {
            do
            {
              v62 = *--v59;
              v61 = v62;
              *v59 = 0;
              if (v62)
              {
                MEMORY[0x1AC55A040](v61, 0x1000C8077774924);
              }
            }

            while (v59 != v58);
            v60 = v280;
          }

          v281 = v58;
          operator delete(v60);
        }

        if (v276 != v279)
        {
          free(v276);
        }
      }

      if ((v10 != v16 || v10 && memcmp(v11, __s2, v10)) && v252.__r_.__value_.__r.__words[0])
      {
        LODWORD(v273) = 3;
        v274 = " (tried '";
        v275 = 9;
        v80 = &v273;
        v81 = v253;
        if (v254 >= v255)
        {
          if (v253 <= &v273 && v253 + 24 * v254 > &v273)
          {
            v211 = &v273 - v253;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v256, v254 + 1, 24);
            v81 = v253;
            v80 = (v253 + v211);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v256, v254 + 1, 24);
            v80 = &v273;
            v81 = v253;
          }
        }

        v82 = &v81[24 * v254];
        v83 = *v80;
        *(v82 + 2) = v80[2];
        *v82 = v83;
        ++v254;
        if (v252.__r_.__value_.__r.__words[0])
        {
          LOWORD(v277) = 261;
          v273 = __s2;
          v274 = v16;
          mlir::Diagnostic::operator<<(&v252.__r_.__value_.__l.__size_, &v273);
          if (v252.__r_.__value_.__r.__words[0])
          {
            LODWORD(v273) = 3;
            v274 = "' as well)";
            v275 = 10;
            v84 = &v273;
            v85 = v253;
            if (v254 >= v255)
            {
              if (v253 <= &v273 && v253 + 24 * v254 > &v273)
              {
                v216 = &v273 - v253;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v256, v254 + 1, 24);
                v85 = v253;
                v84 = (v253 + v216);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v256, v254 + 1, 24);
                v84 = &v273;
                v85 = v253;
              }
            }

            v86 = &v85[24 * v254];
            v87 = *v84;
            *(v86 + 2) = v84[2];
            *v86 = v87;
            ++v254;
          }
        }
      }

      mlir::Diagnostic::attachNote(&v252.__r_.__value_.__l.__size_, 0, 0);
    }

    (*(*Values + 64))(&v252);
    if (v252.__r_.__value_.__s.__data_[16])
    {
      v32 = llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,void>::Callbacks + 2;
      v253 = llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,void>::Callbacks + 2;
      v33 = v272;
      if (v272 >= 8)
      {
        if ((v272 & 4) != 0)
        {
          if ((v272 & 2) != 0)
          {
            v34 = v270;
          }

          else
          {
            v34 = v270[0];
          }

          (*((v272 & 0xFFFFFFFFFFFFFFF8) + 16))(v34);
        }

        if ((v33 & 2) == 0)
        {
          llvm::deallocate_buffer(v270[0], v270[1]);
        }

        v32 = v253;
      }

      v272 = v32;
      if (v32 >= 8)
      {
        if ((v32 & 2) != 0 && (v32 & 4) != 0)
        {
          (*((v32 & 0xFFFFFFFFFFFFFFF8) + 8))();
          (*((v272 & 0xFFFFFFFFFFFFFFF8) + 16))(&v252, v105);
        }

        else
        {
          *v270 = *&v252.__r_.__value_.__l.__data_;
          v271 = v252.__r_.__value_.__r.__words[2];
        }
      }

      v106 = 0;
      v20 = 0;
      goto LABEL_206;
    }

    LOWORD(v229) = 257;
    v63 = mlir::Lexer::getEncodedSourceLocation(*&this[1] + 8, v8);
    mlir::emitError(v63, &v225, &v273);
    if (*(*&this[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v273);
    }

    if (v273)
    {
      LODWORD(v252.__r_.__value_.__l.__data_) = 3;
      v252.__r_.__value_.__l.__size_ = "custom op '";
      v252.__r_.__value_.__r.__words[2] = 11;
      v64 = &v252;
      v65 = v276;
      if (v277 >= v278)
      {
        if (v276 <= &v252 && v276 + 24 * v277 > &v252)
        {
          v208 = &v252 - v276;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
          v65 = v276;
          v64 = (v276 + v208);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
          v64 = &v252;
          v65 = v276;
        }
      }

      v66 = &v65[24 * v277];
      v67 = *&v64->__r_.__value_.__l.__data_;
      *(v66 + 2) = *(&v64->__r_.__value_.__l + 2);
      *v66 = v67;
      ++v277;
      if (v273)
      {
        LOWORD(v254) = 261;
        v252.__r_.__value_.__r.__words[0] = v11;
        v252.__r_.__value_.__l.__size_ = v10;
        mlir::Diagnostic::operator<<(&v274, &v252.__r_.__value_.__l.__data_);
        if (v273)
        {
          LODWORD(v252.__r_.__value_.__l.__data_) = 3;
          v252.__r_.__value_.__l.__size_ = "' is unknown";
          v252.__r_.__value_.__r.__words[2] = 12;
          v68 = &v252;
          v69 = v276;
          if (v277 >= v278)
          {
            if (v276 <= &v252 && v276 + 24 * v277 > &v252)
            {
              v215 = &v252 - v276;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
              v69 = v276;
              v68 = (v276 + v215);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
              v68 = &v252;
              v69 = v276;
            }
          }

          v70 = &v69[24 * v277];
          v71 = *&v68->__r_.__value_.__l.__data_;
          *(v70 + 2) = *(&v68->__r_.__value_.__l + 2);
          *v70 = v71;
          ++v277;
        }
      }
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v252, &v273);
    if (v273)
    {
      mlir::InFlightDiagnostic::report(&v273);
    }

    if (v285 == 1)
    {
      if (v284 != &v285)
      {
        free(v284);
      }

      v72 = __p;
      if (__p)
      {
        v73 = v283;
        v74 = __p;
        if (v283 != __p)
        {
          do
          {
            v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
          }

          while (v73 != v72);
          v74 = __p;
        }

        v283 = v72;
        operator delete(v74);
      }

      v75 = v280;
      if (v280)
      {
        v76 = v281;
        v77 = v280;
        if (v281 != v280)
        {
          do
          {
            v79 = *--v76;
            v78 = v79;
            *v76 = 0;
            if (v79)
            {
              MEMORY[0x1AC55A040](v78, 0x1000C8077774924);
            }
          }

          while (v76 != v75);
          v77 = v280;
        }

        v281 = v75;
        operator delete(v77);
      }

      if (v276 != v279)
      {
        free(v276);
      }
    }

    if (v10 != v16 || v10 && memcmp(v11, __s2, v10))
    {
      if (!v252.__r_.__value_.__r.__words[0])
      {
        goto LABEL_153;
      }

      LODWORD(v273) = 3;
      v274 = " (tried '";
      v275 = 9;
      v88 = &v273;
      v89 = v253;
      if (v254 >= v255)
      {
        if (v253 <= &v273 && v253 + 24 * v254 > &v273)
        {
          v213 = &v273 - v253;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v256, v254 + 1, 24);
          v89 = v253;
          v88 = (v253 + v213);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v256, v254 + 1, 24);
          v88 = &v273;
          v89 = v253;
        }
      }

      v90 = &v89[24 * v254];
      v91 = *v88;
      *(v90 + 2) = v88[2];
      *v90 = v91;
      ++v254;
      if (!v252.__r_.__value_.__r.__words[0] || (LOWORD(v277) = 261, v273 = __s2, v274 = v16, mlir::Diagnostic::operator<<(&v252.__r_.__value_.__l.__size_, &v273), !v252.__r_.__value_.__r.__words[0]))
      {
LABEL_153:
        if (v263[0] == 1)
        {
          if (v262 != v263)
          {
            free(v262);
          }

          v96 = v260;
          if (v260)
          {
            v97 = v261;
            v98 = v260;
            if (v261 != v260)
            {
              do
              {
                v97 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v97 - 1);
              }

              while (v97 != v96);
              v98 = v260;
            }

            v261 = v96;
            operator delete(v98);
          }

          v99 = v258;
          if (v258)
          {
            v100 = v259;
            v101 = v258;
            if (v259 != v258)
            {
              do
              {
                v103 = *--v100;
                v102 = v103;
                *v100 = 0;
                if (v103)
                {
                  MEMORY[0x1AC55A040](v102, 0x1000C8077774924);
                }
              }

              while (v100 != v99);
              v101 = v258;
            }

            v259 = v99;
            operator delete(v101);
          }

          if (v253 != v256)
          {
            free(v253);
          }
        }

        v30 = 0;
        v104 = v272;
        if (v272 >= 8)
        {
          goto LABEL_262;
        }

        goto LABEL_269;
      }

      LODWORD(v273) = 3;
      v274 = "' as well)";
      v275 = 10;
      v92 = &v273;
      v93 = v253;
      if (v254 >= v255)
      {
        if (v253 <= &v273 && v253 + 24 * v254 > &v273)
        {
          v218 = &v273 - v253;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v256, v254 + 1, 24);
          v93 = v253;
          v92 = (v253 + v218);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v256, v254 + 1, 24);
          v92 = &v273;
          v93 = v253;
        }
      }

      v94 = &v93[24 * v254];
      v95 = *v92;
      *(v94 + 2) = v92[2];
      *v94 = v95;
      ++v254;
    }

    if (v252.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v252);
    }

    goto LABEL_153;
  }

  (*(*v238 + 40))(&v252, v238);
  v18 = v272;
  if (v272 >= 8)
  {
    if ((v272 & 4) != 0)
    {
      if ((v272 & 2) != 0)
      {
        v19 = v270;
      }

      else
      {
        v19 = v270[0];
      }

      (*((v272 & 0xFFFFFFFFFFFFFFF8) + 16))(v19);
    }

    if ((v18 & 2) == 0)
    {
      llvm::deallocate_buffer(v270[0], v270[1]);
    }
  }

  v272 = v253;
  if (v253 >= 8)
  {
    if ((v253 & 2) != 0 && (v253 & 4) != 0)
    {
      (*((v253 & 0xFFFFFFFFFFFFFFF8) + 8))(v270, &v252);
      (*((v272 & 0xFFFFFFFFFFFFFFF8) + 16))(&v252);
      {
        goto LABEL_26;
      }

      goto LABEL_120;
    }

    *v270 = *&v252.__r_.__value_.__l.__data_;
    v271 = v252.__r_.__value_.__r.__words[2];
  }

  {
    goto LABEL_26;
  }

LABEL_120:
LABEL_26:
  v20 = (*(*v17 + 32))(v17, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id);
  {
    v21 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
    v22 = *(v17 + 32);
    v23 = *(v17 + 40);
    if (v23)
    {
      goto LABEL_28;
    }

LABEL_205:
    v106 = 0;
    goto LABEL_206;
  }

  v21 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
  v22 = *(v17 + 32);
  v23 = *(v17 + 40);
  if (!v23)
  {
    goto LABEL_205;
  }

LABEL_28:
  v24 = v22;
  v25 = v23;
  do
  {
    v26 = v25 >> 1;
    v27 = &v24[2 * (v25 >> 1)];
    v29 = *v27;
    v28 = v27 + 2;
    v25 += ~(v25 >> 1);
    if (v29 < v21)
    {
      v24 = v28;
    }

    else
    {
      v25 = v26;
    }
  }

  while (v25);
  if (v24 == &v22[2 * v23])
  {
    goto LABEL_205;
  }

  if (*v24 != v21)
  {
    goto LABEL_205;
  }

  v131 = v24[1];
  if (!v131)
  {
    goto LABEL_205;
  }

  v132 = (*(v131 + 24))();
  if (v106)
  {
    v107 = (*(v131 + 24))(v132);
    v108 = this[1];
    v109 = *(*&v108 + 176);
    if (v109 < *(*&v108 + 180))
    {
      goto LABEL_207;
    }

    goto LABEL_237;
  }

LABEL_206:
  v107 = "";
  v108 = this[1];
  v109 = *(*&v108 + 176);
  if (v109 < *(*&v108 + 180))
  {
    goto LABEL_207;
  }

LABEL_237:
  v219 = v107;
  v133 = v106;
  llvm::SmallVectorBase<unsigned int>::grow_pod(*&v108 + 168, (*&v108 + 184), v109 + 1, 16);
  v107 = v219;
  v106 = v133;
  v3 = v251;
  LODWORD(v109) = *(*&v108 + 176);
LABEL_207:
  v110 = (*(*&v108 + 168) + 16 * v109);
  *v110 = v107;
  v110[1] = v106;
  ++*(*&v108 + 176);
  v252.__r_.__value_.__r.__words[0] = *(v238 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v252);
  llvm::PrettyStackTraceFormat::PrettyStackTraceFormat(v267, "MLIR Parser: custom op parser '%s'", AttrData);
  v237 = mlir::Lexer::getEncodedSourceLocation(*&this[1] + 8, v8);
  v112.n128_f64[0] = mlir::OperationState::OperationState(&v252, v237, v238);
  v113 = *(*&this[1] + 152);
  if (v113)
  {
    mlir::AsmParserState::startOperationDefinition(v113, &v252.__r_.__value_.__r.__words[1]);
  }

  v226 = v8;
  v227 = this;
  v228 = 0;
  v225 = &unk_1F19F98E0;
  v229 = v6;
  v230 = v7;
  v231 = llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::unique_function<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>>;
  v232 = v270;
  v233 = v20;
  v234 = __s2;
  v235 = v16;
  v236 = this;
  if ((v272 & 2) != 0)
  {
    v114 = v270;
  }

  else
  {
    v114 = v270[0];
  }

  if (((*(v272 & 0xFFFFFFFFFFFFFFF8))(v114, &v225, &v252, v112) & 1) == 0)
  {
    goto LABEL_244;
  }

  mlir::NamedAttrList::findDuplicate(v243, &v257);
  if (v244)
  {
    v115 = (*(v225 + 2))(&v225);
    v241[0] = "attribute '";
    v242 = 259;
    (*(v225 + 3))(&v273, &v225, v115, v241);
    CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v243);
    v116 = mlir::OpaqueAttr::getAttrData(&CompressedBytes);
    if (v273)
    {
      v248 = 261;
      v245 = v116;
      v246 = v117;
      mlir::Diagnostic::operator<<(&v274, &v245);
      if (v273)
      {
        LODWORD(v245) = 3;
        v246 = "' occurs more than once in the attribute list";
        v247 = 45;
        v118 = &v245;
        v119 = v276;
        if (v277 >= v278)
        {
          if (v276 <= &v245 && v276 + 24 * v277 > &v245)
          {
            v209 = &v245 - v276;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
            v119 = v276;
            v118 = (v276 + v209);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v276, v279, v277 + 1, 24);
            v118 = &v245;
            v119 = v276;
          }
        }

        v120 = &v119[24 * v277];
        v121 = *v118;
        *(v120 + 2) = v118[2];
        *v120 = v121;
        ++v277;
      }
    }

    v122 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v273);
    if (v273)
    {
      mlir::InFlightDiagnostic::report(&v273);
    }

    if (v285 == 1)
    {
      if (v284 != &v285)
      {
        free(v284);
      }

      v123 = __p;
      if (__p)
      {
        v124 = v283;
        v125 = __p;
        if (v283 != __p)
        {
          do
          {
            v124 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v124 - 1);
          }

          while (v124 != v123);
          v125 = __p;
        }

        v283 = v123;
        operator delete(v125);
      }

      v126 = v280;
      if (v280)
      {
        v127 = v281;
        v128 = v280;
        if (v281 != v280)
        {
          do
          {
            v130 = *--v127;
            v129 = v130;
            *v127 = 0;
            if (v130)
            {
              MEMORY[0x1AC55A040](v129, 0x1000C8077774924);
            }
          }

          while (v127 != v126);
          v128 = v280;
        }

        v281 = v126;
        operator delete(v128);
      }

      if (v276 != v279)
      {
        free(v276);
      }
    }

    if (!v122)
    {
      goto LABEL_244;
    }
  }

  if ((v228 & 1) == 0)
  {
    v186 = v266;
    v245 = v266;
    v266 = 0;
    v187 = mlir::OpBuilder::create(&this[48], &v252);
    v241[0] = v187;
    v30 = 0;
    {
      if (v186)
      {
        v273 = &v237;
        v274 = &v245;
        v275 = v241;
        {
          v30 = v241[0];
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v30 = v187;
      }
    }
  }

  else
  {
LABEL_244:
    v30 = 0;
  }

  ZinIrHalH13g::~ZinIrHalH13g(&v225);
  v273 = &v275;
  v274 = 0x400000000;
  v134 = v265;
  if (v265 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v273, &v275, v265, 8);
    v134 = v265;
  }

  if (v134)
  {
    v135 = v264;
    v136 = &v264[v134];
    do
    {
      v137 = *v135;
      if (*v135)
      {
        for (i = *(v137 + 8); i != v137; i = *(i + 8))
        {
          if (i)
          {
            v139 = (i - 8);
          }

          else
          {
            v139 = 0;
          }

          mlir::Block::dropAllDefinedValueUses(v139);
        }
      }

      ++v135;
    }

    while (v135 != v136);
  }

  if (v273 != &v275)
  {
    free(v273);
  }

  mlir::OperationState::~OperationState(&v252);
  v267[0] = &unk_1F1A36088;
  if (v268 != &v269)
  {
    free(v268);
  }

  llvm::PrettyStackTraceEntry::~PrettyStackTraceEntry(v267);
  --*(*&this[1] + 176);
  v104 = v272;
  if (v272 >= 8)
  {
LABEL_262:
    if ((v104 & 4) != 0)
    {
      if ((v104 & 2) != 0)
      {
        v140 = v270;
      }

      else
      {
        v140 = v270[0];
      }

      (*((v104 & 0xFFFFFFFFFFFFFFF8) + 16))(v140);
    }

    if ((v104 & 2) == 0)
    {
      llvm::deallocate_buffer(v270[0], v270[1]);
    }
  }

LABEL_269:
  if (!v30)
  {
    goto LABEL_277;
  }

  if (!v250)
  {
    v145 = *(*&this[1] + 152);
    if (v145)
    {
      LocRange = mlir::Token::getLocRange(&v222);
      v148 = v147;
      EndLoc = mlir::Token::getEndLoc((*&this[1] + 80));
      mlir::AsmParserState::finalizeOperationDefinition(v145, v30, LocRange, v148, EndLoc, 0, 0);
    }

    v39 = 1;
    goto LABEL_278;
  }

  v141 = *(v30 + 36);
  if (!v141)
  {
    v273 = "cannot name an operation with no results";
    LOWORD(v277) = 259;
    v150 = mlir::Lexer::getEncodedSourceLocation(*&this[1] + 8, SrcSymbol);
    mlir::emitError(v150, &v273, &v252);
    if (*(*&this[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v252);
    }

    v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v252);
    if (v252.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v252);
    }

    if (v263[0] != 1)
    {
      goto LABEL_278;
    }

    if (v262 != v263)
    {
      free(v262);
    }

    v151 = v260;
    if (v260)
    {
      v152 = v261;
      v153 = v260;
      if (v261 != v260)
      {
        do
        {
          v152 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v152 - 1);
        }

        while (v152 != v151);
        v153 = v260;
      }

      v261 = v151;
      operator delete(v153);
    }

    v154 = v258;
    if (v258)
    {
      v155 = v259;
      v156 = v258;
      if (v259 != v258)
      {
        do
        {
          v158 = *--v155;
          v157 = v158;
          *v155 = 0;
          if (v158)
          {
            MEMORY[0x1AC55A040](v157, 0x1000C8077774924);
          }
        }

        while (v155 != v154);
        goto LABEL_334;
      }

LABEL_335:
      v259 = v154;
      operator delete(v156);
    }

LABEL_336:
    if (v253 != v256)
    {
      free(v253);
    }

    goto LABEL_278;
  }

  if (v224 != v141)
  {
    v273 = "operation defines ";
    LOWORD(v277) = 259;
    v159 = mlir::Lexer::getEncodedSourceLocation(*&this[1] + 8, SrcSymbol);
    mlir::emitError(v159, &v273, &v252);
    if (*(*&this[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v252);
    }

    if (v252.__r_.__value_.__r.__words[0])
    {
      v160 = *(v30 + 36);
      LODWORD(v225) = 5;
      v226 = v160;
      v161 = &v225;
      v162 = v253;
      if (v254 >= v255)
      {
        if (v253 <= &v225 && v253 + 24 * v254 > &v225)
        {
          v205 = &v225 - v253;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v256, v254 + 1, 24);
          v162 = v253;
          v161 = (v253 + v205);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v256, v254 + 1, 24);
          v161 = &v225;
          v162 = v253;
        }
      }

      v163 = &v162[24 * v254];
      v164 = *v161;
      *(v163 + 2) = v161[2];
      *v163 = v164;
      v165 = ++v254;
      if (v252.__r_.__value_.__r.__words[0])
      {
        LODWORD(v225) = 3;
        v226 = " results but was provided ";
        v227 = 26;
        v166 = &v225;
        v167 = v253;
        if (v165 >= v255)
        {
          if (v253 <= &v225 && v253 + 24 * v165 > &v225)
          {
            v206 = &v225 - v253;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v256, v165 + 1, 24);
            v167 = v253;
            v166 = (v253 + v206);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v256, v165 + 1, 24);
            v166 = &v225;
            v167 = v253;
          }
        }

        v168 = &v167[24 * v254];
        v169 = *v166;
        *(v168 + 2) = v166[2];
        *v168 = v169;
        v170 = ++v254;
        if (v252.__r_.__value_.__r.__words[0])
        {
          LODWORD(v225) = 5;
          v226 = v224;
          v171 = &v225;
          v172 = v253;
          if (v170 >= v255)
          {
            if (v253 <= &v225 && v253 + 24 * v170 > &v225)
            {
              v210 = &v225 - v253;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v256, v170 + 1, 24);
              v172 = v253;
              v171 = (v253 + v210);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v256, v170 + 1, 24);
              v171 = &v225;
              v172 = v253;
            }
          }

          v173 = &v172[24 * v254];
          v174 = *v171;
          *(v173 + 2) = v171[2];
          *v173 = v174;
          v175 = ++v254;
          if (v252.__r_.__value_.__r.__words[0])
          {
            LODWORD(v225) = 3;
            v226 = " to bind";
            v227 = 8;
            v176 = &v225;
            v177 = v253;
            if (v175 >= v255)
            {
              if (v253 <= &v225 && v253 + 24 * v175 > &v225)
              {
                v214 = &v225 - v253;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v256, v175 + 1, 24);
                v177 = v253;
                v176 = (v253 + v214);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v256, v175 + 1, 24);
                v176 = &v225;
                v177 = v253;
              }
            }

            v178 = &v177[24 * v254];
            v179 = *v176;
            *(v178 + 2) = v176[2];
            *v178 = v179;
            ++v254;
          }
        }
      }
    }

    v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v252);
    if (v252.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v252);
    }

    if (v263[0] != 1)
    {
      goto LABEL_278;
    }

    if (v262 != v263)
    {
      free(v262);
    }

    v180 = v260;
    if (v260)
    {
      v181 = v261;
      v182 = v260;
      if (v261 != v260)
      {
        do
        {
          v181 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v181 - 1);
        }

        while (v181 != v180);
        v182 = v260;
      }

      v261 = v180;
      operator delete(v182);
    }

    v154 = v258;
    if (v258)
    {
      v183 = v259;
      v156 = v258;
      if (v259 != v258)
      {
        do
        {
          v185 = *--v183;
          v184 = v185;
          *v183 = 0;
          if (v185)
          {
            MEMORY[0x1AC55A040](v184, 0x1000C8077774924);
          }
        }

        while (v183 != v154);
LABEL_334:
        v156 = v258;
        goto LABEL_335;
      }

      goto LABEL_335;
    }

    goto LABEL_336;
  }

  if (*(*&this[1] + 152))
  {
    LODWORD(v273) = 0;
    v252.__r_.__value_.__r.__words[0] = &v252.__r_.__value_.__r.__words[2];
    v252.__r_.__value_.__l.__size_ = 0x300000000;
    if (v250 <= 3)
    {
      v142 = v249;
      v143 = v249 + 32 * v250;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v252, &v252.__r_.__value_.__r.__words[2], v250, 16);
      if (!v250)
      {
        goto LABEL_346;
      }

      v142 = v249;
      v143 = v249 + 32 * v250;
    }

    v189 = 0;
    v190 = (v142 + 24);
    do
    {
      v191 = v252.__r_.__value_.__r.__words[1];
      if (LODWORD(v252.__r_.__value_.__r.__words[1]) >= HIDWORD(v252.__r_.__value_.__r.__words[1]))
      {
        llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<unsigned int &,llvm::SMLoc&>(&v252, &v273, v190);
      }

      else
      {
        v192 = v252.__r_.__value_.__r.__words[0] + 16 * LODWORD(v252.__r_.__value_.__r.__words[1]);
        *v192 = v189;
        *(v192 + 8) = *v190;
        LODWORD(v252.__r_.__value_.__r.__words[1]) = v191 + 1;
      }

      v189 = v273 + *(v190 - 2);
      LODWORD(v273) = v189;
      v193 = (v190 + 1);
      v190 += 4;
    }

    while (v193 != v143);
LABEL_346:
    v194 = *(*&this[1] + 152);
    v195 = mlir::Token::getLocRange(&v222);
    v197 = v196;
    v198 = mlir::Token::getEndLoc((*&this[1] + 80));
    mlir::AsmParserState::finalizeOperationDefinition(v194, v30, v195, v197, v198, v252.__r_.__value_.__l.__data_, LODWORD(v252.__r_.__value_.__r.__words[1]));
  }

  v188 = v249;
  __s2a = v249 + 32 * v250;
  v199 = 0;
  while (1)
  {
    v200 = v3;
    v201 = *(v188 + 4);
    if (v201)
    {
      break;
    }

    v203 = v199;
LABEL_356:
    v188 += 32;
    v39 = 1;
    v199 = v203;
    v3 = v200;
    if (v188 == __s2a)
    {
      goto LABEL_278;
    }
  }

  v202 = 0;
  while (1)
  {
    v252.__r_.__value_.__r.__words[0] = *(v188 + 3);
    *&v252.__r_.__value_.__r.__words[1] = *v188;
    LODWORD(v253) = v202;
    v203 = (v199 + 1);
    v204 = (v199 >= 6 ? v30 - 96 - 24 * (v199 - 5) : v30 - 16 * v203);
    {
      break;
    }

    ++v202;
    LODWORD(v199) = v203;
    if (v201 == v202)
    {
      goto LABEL_356;
    }
  }

  v39 = 0;
  v3 = v200;
LABEL_278:
  if (v249 != v3)
  {
    free(v249);
  }

  return v39;
}

void anonymous namespace::OperationParser::pushSSANameScope(_anonymous_namespace_::OperationParser *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = (this + 208);
  v2 = *(this + 26);
  v10[0] = 0;
  v10[1] = 0;
  LODWORD(v11) = 0;
  v4 = *(this + 54);
  v5 = v10;
  if (v4 >= *(this + 55))
  {
    if (v2 <= v10 && v2 + 24 * v4 > v10)
    {
      v9 = v10 - v2;
      v2 = *v3;
      v5 = &v9[*v3];
    }

    else
    {
      v2 = *v3;
      v5 = v10;
    }
  }

  v6 = v2 + 24 * *(this + 54);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = *v5;
  *v5 = 0;
  *(v6 + 8) = *(v5 + 2);
  *(v5 + 2) = 0;
  v7 = *(v6 + 12);
  *(v6 + 12) = *(v5 + 3);
  *(v5 + 3) = v7;
  v8 = *(v6 + 16);
  *(v6 + 16) = *(v5 + 4);
  *(v5 + 4) = v8;
  ++*(this + 54);
  llvm::deallocate_buffer(v10[0], (32 * v11));
}

void anonymous namespace::OperationParser::IsolatedSSANameScope::~IsolatedSSANameScope(_anonymous_namespace_::OperationParser::IsolatedSSANameScope *this)
{
  v2 = *(this + 3);
  v3 = *(this + 8);
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
          do
          {
            v8 = *(*v4 + v7);
            if (v8 != -8 && v8 != 0)
            {
              llvm::deallocate_buffer(v8, (*v8 + 9));
            }

            v7 += 8;
          }

          while (8 * v6 != v7);
        }
      }

      free(*v4);
    }

    while (v4 != v2);
    v2 = *(this + 3);
  }

  if (v2 != (this + 40))
  {
    free(v2);
  }

  if (*(this + 3))
  {
    v10 = *(this + 2);
    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = *(*this + v11);
        if (v12 != -8 && v12 != 0)
        {
          v15 = *v12;
          v14 = *(v12 + 1);
          if (v14 != (v12 + 24))
          {
            free(v14);
          }

          llvm::deallocate_buffer(v12, (v15 + 41));
        }

        v11 += 8;
      }

      while (8 * v10 != v11);
    }
  }

  free(*this);
}

void llvm::SmallVectorTemplateBase<llvm::DenseMap<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v13);
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
      llvm::deallocate_buffer(*&v5[24 * v11 - 24], (32 * *&v5[24 * v11 - 8]));
    }
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v12;
}

void llvm::SmallVectorTemplateBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v13);
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
      llvm::deallocate_buffer(*&v5[24 * v11 - 24], (16 * *&v5[24 * v11 - 8]));
    }
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v12;
}

void llvm::SmallVectorTemplateBase<anonymous namespace::OperationParser::IsolatedSSANameScope,false>::grow(uint64_t *a1, unint64_t a2)
{
  v16 = 0;
  v3 = a1 + 2;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 88, &v16);
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
        llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::operator=(&v4[v7 * 8 + 24], (v9 + 3));
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
        v13 = (v14 - 88);
        v12 += 88;
      }

      while (v12);
      v5 = *a1;
    }
  }

  v15 = v16;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 3) = v15;
}

unsigned int **llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::operator=(unsigned int **a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = *a2;
  if (*a2 != a2 + 16)
  {
    llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::assignRemote(a1, a2);
    return a1;
  }

  v4 = *(a2 + 8);
  v5 = *(a1 + 2);
  if (v5 < v4)
  {
    if (*(a1 + 3) >= v4)
    {
      v26 = *a1;
      if (v5)
      {
        v27 = a2;
        v28 = &v3[6 * v5];
        do
        {
          v29 = *v3;
          v30 = v3[4];
          v31 = *(v3 + 1);
          *v3 = 0;
          *(v3 + 1) = 0;
          v3[4] = 0;
          v32 = *v26;
          *v26 = v29;
          v33 = v26[2];
          LODWORD(v29) = v26[3];
          *(v26 + 1) = v31;
          v26[4] = v30;
          if (v29 && v33)
          {
            v34 = v32;
            do
            {
              v35 = *v34;
              if (*v34 != -8 && v35 != 0)
              {
                llvm::deallocate_buffer(v35, (*v35 + 9));
              }

              ++v34;
              --v33;
            }

            while (v33);
          }

          free(v32);
          v3 += 6;
          v26 += 6;
        }

        while (v3 != v28);
        v26 = *a1;
        a2 = v27;
        v38 = *v27;
        v39 = *(v27 + 8);
        if (v5 == v39)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v5 = 0;
        v38 = *a2;
        LODWORD(v39) = *(a2 + 8);
        if (!v39)
        {
LABEL_79:
          *(a1 + 2) = v4;
          v57 = a2;
          v58 = *(a2 + 8);
          if (v58)
          {
            v59 = &v38[6 * v58];
            do
            {
              v60 = v59;
              v59 -= 3;
              if (*(v60 - 3))
              {
                v61 = *(v60 - 4);
                if (v61)
                {
                  v62 = 0;
                  do
                  {
                    v63 = *(*v59 + v62);
                    if (v63 != -8 && v63 != 0)
                    {
                      llvm::deallocate_buffer(v63, (*v63 + 9));
                    }

                    v62 += 8;
                  }

                  while (8 * v61 != v62);
                }
              }

              free(*v59);
            }

            while (v59 != v38);
          }

          *(v57 + 8) = 0;
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
              do
              {
                v12 = *(*v8 + v11);
                if (v12 != -8 && v12 != 0)
                {
                  llvm::deallocate_buffer(v12, (*v12 + 9));
                }

                v11 += 8;
              }

              while (8 * v10 != v11);
            }
          }

          free(*v8);
        }

        while (v8 != v7);
      }

      *(a1 + 2) = 0;
      v66 = 0;
      v26 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, v4, 24, &v66);
      llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::moveElementsForGrow(a1, v26);
      v37 = v66;
      if (*a1 != (a1 + 2))
      {
        free(*a1);
      }

      v5 = 0;
      *a1 = v26;
      *(a1 + 3) = v37;
      a2 = v6;
      v38 = *v6;
      LODWORD(v39) = *(v6 + 8);
      if (!v39)
      {
        goto LABEL_79;
      }
    }

    v54 = &v38[6 * v39];
    v55 = &v26[6 * v5];
    v56 = &v38[6 * v5];
    do
    {
      *v55 = *v56;
      *(v55 + 2) = *(v56 + 2);
      *v56 = 0;
      *(v56 + 1) = 0;
      v56[4] = 0;
      v55 += 6;
      v56 += 6;
    }

    while (v56 != v54);
    v38 = *a2;
    goto LABEL_79;
  }

  v14 = *a1;
  v15 = a2;
  if (v4)
  {
    v16 = &v3[6 * v4];
    do
    {
      v17 = *v3;
      v18 = v3[4];
      v19 = *(v3 + 1);
      *v3 = 0;
      *(v3 + 1) = 0;
      v3[4] = 0;
      v20 = *v14;
      *v14 = v17;
      v21 = v14[2];
      LODWORD(v17) = v14[3];
      *(v14 + 1) = v19;
      v14[4] = v18;
      if (v17 && v21)
      {
        v22 = v20;
        do
        {
          v23 = *v22;
          if (*v22 != -8 && v23 != 0)
          {
            llvm::deallocate_buffer(v23, (*v23 + 9));
          }

          ++v22;
          --v21;
        }

        while (v21);
      }

      free(v20);
      v3 += 6;
      v14 += 6;
    }

    while (v3 != v16);
    v25 = *a1;
    LODWORD(v5) = *(a1 + 2);
  }

  else
  {
    v25 = *a1;
  }

  for (i = &v25[6 * v5]; i != v14; free(*i))
  {
    v41 = i;
    i -= 3;
    if (*(v41 - 3))
    {
      v42 = *(v41 - 4);
      if (v42)
      {
        v43 = 0;
        do
        {
          v44 = *(*i + v43);
          if (v44 != -8 && v44 != 0)
          {
            llvm::deallocate_buffer(v44, (*v44 + 9));
          }

          v43 += 8;
        }

        while (8 * v42 != v43);
      }
    }
  }

  *(a1 + 2) = v4;
  v46 = *(v15 + 8);
  if (v46)
  {
    v47 = *v15;
    v48 = (*v15 + 24 * v46);
    do
    {
      v49 = v48;
      v48 -= 3;
      if (*(v49 - 3))
      {
        v50 = *(v49 - 4);
        if (v50)
        {
          v51 = 0;
          do
          {
            v52 = *(*v48 + v51);
            if (v52 != -8 && v52 != 0)
            {
              llvm::deallocate_buffer(v52, (*v52 + 9));
            }

            v51 += 8;
          }

          while (8 * v50 != v51);
        }
      }

      free(*v48);
    }

    while (v48 != v47);
  }

  *(v15 + 8) = 0;
  return a1;
}

double llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::assignRemote(uint64_t a1, uint64_t a2)
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
          do
          {
            v10 = *(*v6 + v9);
            if (v10 != -8 && v10 != 0)
            {
              llvm::deallocate_buffer(v10, (*v10 + 9));
            }

            v9 += 8;
          }

          while (8 * v8 != v9);
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

void llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v6);
  llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::moveElementsForGrow(uint64_t a1, uint64_t a2)
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
            do
            {
              v11 = *(*v7 + v10);
              if (v11 != -8 && v11 != 0)
              {
                llvm::deallocate_buffer(v11, (*v11 + 9));
              }

              v10 += 8;
            }

            while (8 * v9 != v10);
          }
        }

        free(*v7);
      }

      while (v7 != v6);
    }
  }
}

uint64_t anonymous namespace::OperationParser::parseGenericOperation(_anonymous_namespace_::OperationParser *this)
{
  v80 = *MEMORY[0x1E69E9840];
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(this + 1) + 56));
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, SrcSymbol);
  v48 = EncodedSourceLocation;
  mlir::Token::getStringValue((*(this + 1) + 56), &v47);
  size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v47.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    *&v50 = "empty operation name is invalid";
    v52 = 259;
    mlir::detail::Parser::emitError(this, &v50, v67);
    if (v67[0])
    {
      mlir::InFlightDiagnostic::report(v67);
    }

    if (v75 == 1)
    {
      if (v74 != &v75)
      {
        free(v74);
      }

      v13 = v72;
      if (v72)
      {
        v14 = v73;
        v15 = v72;
        if (v73 != v72)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = v72;
        }

        v73 = v13;
        operator delete(v15);
      }

      v16 = v70;
      if (v70)
      {
        v17 = v71;
        v18 = v70;
        if (v71 != v70)
        {
          do
          {
            v20 = *--v17;
            v19 = v20;
            *v17 = 0;
            if (v20)
            {
              MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
            }
          }

          while (v17 != v16);
          v18 = v70;
        }

        v71 = v16;
        operator delete(v18);
      }

      v30 = v68;
      if (v68 != &v69)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_56;
  }

  if (std::string::find(&v47, 0, 0) == -1)
  {
    v21 = *(this + 1);
    *(v21 + 80) = *(v21 + 56);
    *(v21 + 96) = *(v21 + 72);
    mlir::Lexer::lexToken(&v50, (*(this + 1) + 8));
    v22 = *(this + 1);
    *(v22 + 56) = v50;
    *(v22 + 72) = v51;
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v47;
    }

    else
    {
      v23 = v47.__r_.__value_.__r.__words[0];
    }

    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = v47.__r_.__value_.__l.__size_;
    }

    mlir::OperationState::OperationState(&v50, EncodedSourceLocation, v23, v24);
    if (*(*(&v50 + 1) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v25 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
      v26 = &v47;
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v26 = v47.__r_.__value_.__r.__words[0];
      }

      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = v47.__r_.__value_.__l.__size_;
      }

      v76 = v26;
      v77 = v25;
      LOBYTE(v45) = 46;
      v27 = llvm::StringRef::find(&v76, &v45, 1uLL, 0);
      if (v27 == -1)
      {
        v28 = v76;
        v29 = v77;
      }

      else
      {
        v28 = v76;
        if (v27 >= v77)
        {
          v29 = v77;
        }

        else
        {
          v29 = v27;
        }
      }

      if (mlir::MLIRContext::getLoadedDialect(***(this + 1), v28, v29) || mlir::MLIRContext::getOrLoadDialect(***(this + 1), v28, v29))
      {
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v47;
        }

        else
        {
          v33 = v47.__r_.__value_.__r.__words[0];
        }

        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v34 = v47.__r_.__value_.__l.__size_;
        }

        mlir::OperationName::OperationName(&v76, v33, v34, ***(this + 1));
        *(&v50 + 1) = v76;
      }

      else if ((mlir::MLIRContext::allowsUnregisteredDialects(***(this + 1)) & 1) == 0)
      {
        v76 = "operation being parsed with an unregistered dialect. If this is intended, please use -allow-unregistered-dialect with the MLIR tool used";
        v79 = 259;
        mlir::detail::Parser::emitError(this, &v76, v49);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v49);
        goto LABEL_86;
      }
    }

    v35 = *(*(this + 1) + 152);
    if (v35)
    {
      mlir::AsmParserState::startOperationDefinition(v35, (&v50 + 8));
    }

    LOBYTE(v76) = 0;
    LOBYTE(v78[0]) = 0;
    LOBYTE(v45) = 0;
    v46 = 0;
    v44[0] = 0;
    v44[16] = 0;
    v43[0] = 0;
    v43[16] = 0;
    v31 = 0;
    {
LABEL_87:
      v76 = v78;
      v77 = 0x400000000;
      v37 = v55;
      if (v55 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v78, v55, 8);
        v37 = v55;
      }

      if (v37)
      {
        v38 = v54;
        v39 = &v54[v37];
        do
        {
          v40 = *v38;
          if (*v38)
          {
            for (i = *(v40 + 8); i != v40; i = *(i + 8))
            {
              if (i)
              {
                v42 = (i - 8);
              }

              else
              {
                v42 = 0;
              }

              mlir::Block::dropAllDefinedValueUses(v42);
            }
          }

          ++v38;
        }

        while (v38 != v39);
      }

      if (v76 != v78)
      {
        free(v76);
      }

      mlir::OperationState::~OperationState(&v50);
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_57;
      }

      return v31;
    }

LABEL_86:
    v31 = 0;
    goto LABEL_87;
  }

  *&v50 = "null character not allowed in operation name";
  v52 = 259;
  mlir::detail::Parser::emitError(this, &v50, v58);
  if (v58[0])
  {
    mlir::InFlightDiagnostic::report(v58);
  }

  if (v66 == 1)
  {
    if (v65 != &v66)
    {
      free(v65);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v64;
      v7 = __p;
      if (v64 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v64 = v5;
      operator delete(v7);
    }

    v8 = v61;
    if (v61)
    {
      v9 = v62;
      v10 = v61;
      if (v62 != v61)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            MEMORY[0x1AC55A040](v11, 0x1000C8077774924);
          }
        }

        while (v9 != v8);
        v10 = v61;
      }

      v62 = v8;
      operator delete(v10);
    }

    v30 = v59;
    if (v59 != &v60)
    {
LABEL_55:
      free(v30);
    }
  }

LABEL_56:
  v31 = 0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_57:
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  return v31;
}

uint64_t anonymous namespace::OperationParser::addDefinition(int32x2_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v62[25] = *MEMORY[0x1E69E9840];
  v7 = (a2 + 8);
  v11 = v8;
  v12 = *(v8 + 8);
  v14 = (a2 + 24);
  v13 = *(a2 + 24);
  v15 = v13 + 1;
  if (v12 > v13 || v12 == v15)
  {
    v17 = *(*v8 + 16 * *(a2 + 24));
    v59 = v17;
    if (!v17)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v12 <= v15)
    {
      if (*(v8 + 12) < v15)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8, (v8 + 16), v15, 16);
        v12 = *(v11 + 8);
      }

      if (v12 != v15)
      {
        bzero((*v11 + 16 * v12), 16 * (v15 - v12));
      }
    }

    *(v11 + 8) = v15;
    v17 = *(*v11 + 16 * *v14);
    v59 = v17;
    if (!v17)
    {
      goto LABEL_34;
    }
  }

  v18 = a1[44].i32[0];
  if (!v18)
  {
LABEL_39:
    v52 = *a2;
    v58 = 257;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v52);
    mlir::emitError(EncodedSourceLocation, v57, &v61);
    if (*(*&a1[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v61);
    }

    if (v61)
    {
      mlir::Diagnostic::append<char const(&)[28],llvm::StringRef &,char const(&)[2]>(v62, "redefinition of SSA value '", v7, "'");
    }

    v54 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, *(*v11 + 16 * *v14 + 8));
    mlir::Diagnostic::attachNote(v62, v54, 1);
  }

  v19 = a1[42];
  v20 = 0x9DDFEA08EB382D69 * ((8 * v17 - 0xAE502812AA7333) ^ HIDWORD(v17));
  v21 = 0x9DDFEA08EB382D69 * (HIDWORD(v17) ^ (v20 >> 47) ^ v20);
  v22 = v18 - 1;
  v23 = v22 & (-348639895 * ((v21 >> 47) ^ v21));
  v24 = *(*&v19 + 16 * v23);
  if (v24 != v17)
  {
    v50 = 1;
    while (v24 != -4096)
    {
      v51 = v23 + v50++;
      v23 = v51 & v22;
      v24 = *(*&v19 + 16 * v23);
      if (v24 == v17)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_39;
  }

LABEL_9:
  if ((a3[1] ^ *(v17 + 8)) >= 8)
  {
    v25 = *a2;
    v58 = 257;
    v26 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v25);
    mlir::emitError(v26, v57, &v61);
    if (*(*&a1[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v61);
    }

    v60 = a3[1] & 0xFFFFFFFFFFFFFFF8;
    if (v61)
    {
      mlir::Diagnostic::append<char const(&)[26],llvm::StringRef &,char const(&)[2],unsigned int &,char const(&)[12],mlir::Type>(v62, "definition of SSA value '", v7, "#", (a2 + 24), "' has type ", &v60);
    }

    v27 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, *(*v11 + 16 * *v14 + 8));
    mlir::Diagnostic::attachNote(v62, v27, 1);
  }

  while (1)
  {
    v28 = *v17;
    if (!*v17)
    {
      break;
    }

    v29 = v28[1];
    if (v29)
    {
      v30 = *v28;
      *v29 = *v28;
      if (v30)
      {
        *(v30 + 8) = v29;
      }
    }

    v28[3] = a3;
    v28[1] = a3;
    v31 = *a3;
    *v28 = *a3;
    if (v31)
    {
      *(v31 + 8) = v28;
    }

    *a3 = v28;
  }

  DefiningOp = mlir::Value::getDefiningOp(&v59);
  mlir::Operation::destroy(DefiningOp, v33);
  v34 = a1[44].i32[0];
  if (v34)
  {
    v35 = a1[42];
    v36 = 0x9DDFEA08EB382D69 * ((8 * v59 - 0xAE502812AA7333) ^ HIDWORD(v59));
    v37 = 0x9DDFEA08EB382D69 * (HIDWORD(v59) ^ (v36 >> 47) ^ v36);
    LODWORD(v36) = -348639895 * ((v37 >> 47) ^ v37);
    v38 = v34 - 1;
    v39 = v36 & (v34 - 1);
    v40 = *(*&v35 + 16 * v39);
    if (v59 == v40)
    {
LABEL_31:
      *(*&v35 + 16 * v39) = -8192;
      a1[43] = vadd_s32(a1[43], 0x1FFFFFFFFLL);
    }

    else
    {
      v55 = 1;
      while (v40 != -4096)
      {
        v56 = v39 + v55++;
        v39 = v56 & v38;
        v40 = *(*&v35 + 16 * v39);
        if (v59 == v40)
        {
          goto LABEL_31;
        }
      }
    }
  }

  v41 = *(*&a1[1] + 152);
  if (v41)
  {
    mlir::AsmParserState::refineDefinition(v41, v59, a3);
  }

LABEL_34:
  v42 = *a2;
  v43 = (*v11 + 16 * *(a2 + 24));
  *v43 = a3;
  v43[1] = v42;
  v44 = *(a2 + 8);
  v45 = *(a2 + 16);
  v46 = *&a1[2] + 88 * a1[3].u32[0];
  v47 = (*(v46 - 64) + 24 * *(v46 - 56) - 24);
  v48 = llvm::StringMapImpl::hash(v44, v45, v9, v10);
  llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(v47, v44, v45, v48);
  return 1;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::OperationParser::parseOperation(void)::$_0>(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(*a1 + 8);
  *v35 = *(v3 + 56);
  *&v35[16] = *(v3 + 72);
  *&v36 = "expected valid ssa identifier";
  v39 = 259;
  if (!mlir::detail::Parser::parseToken(v2, 6, &v36))
  {
    return 0;
  }

  v4 = 1;
  v34 = 1;
  v5 = *(v2 + 1);
  if (*(v5 + 56) != 15)
  {
    goto LABEL_7;
  }

  *(v5 + 80) = *(v5 + 56);
  *(v5 + 96) = *(v5 + 72);
  mlir::Lexer::lexToken(&v36, (*(v2 + 1) + 8));
  v6 = *(v2 + 1);
  *(v6 + 56) = v36;
  *(v6 + 72) = v37;
  v7 = *(v2 + 1);
  if (*(v7 + 56) == 10)
  {
    UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(*(v7 + 64), *(v7 + 72));
    if (v9)
    {
      v4 = UInt64IntegerValue;
      if (UInt64IntegerValue)
      {
        v10 = *(v2 + 1);
        *(v10 + 80) = *(v10 + 56);
        *(v10 + 96) = *(v10 + 72);
        mlir::Lexer::lexToken(&v36, (*(v2 + 1) + 8));
        v11 = *(v2 + 1);
        *(v11 + 56) = v36;
        *(v11 + 72) = v37;
        v34 = v4;
LABEL_7:
        v12 = *(a1 + 8);
        v36 = *&v35[8];
        SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol(v35);
        v32[0] = SrcSymbol;
        v14 = *(v12 + 8);
        if (v14 >= *(v12 + 12))
        {
          llvm::SmallVectorTemplateBase<std::tuple<llvm::StringRef,unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<llvm::StringRef,unsigned long &,llvm::SMLoc>(v12, &v36, &v34, v32);
          v4 = v34;
        }

        else
        {
          v15 = *v12 + 32 * v14;
          *v15 = v36;
          *(v15 + 16) = v4;
          *(v15 + 24) = SrcSymbol;
          ++*(v12 + 8);
        }

        **(a1 + 16) += v4;
        return 1;
      }
    }

    v32[0] = "expected named operation to have at least 1 result";
    v33 = 259;
    mlir::detail::Parser::emitError(v2, v32, &v36);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
    v17 = result;
    if (v36)
    {
      mlir::InFlightDiagnostic::report(&v36);
      result = v17;
    }

    if (v46[0] == 1)
    {
      if (v45 != v46)
      {
        free(v45);
        result = v17;
      }

      v26 = __p;
      if (__p)
      {
        v27 = v44;
        v28 = __p;
        if (v44 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v44 = v26;
        operator delete(v28);
        result = v17;
      }

      v21 = v41;
      if (!v41)
      {
        goto LABEL_46;
      }

      v29 = v42;
      v23 = v41;
      if (v42 == v41)
      {
LABEL_45:
        v42 = v21;
        operator delete(v23);
        result = v17;
LABEL_46:
        if (v38 != &v40)
        {
          free(v38);
          return v17;
        }

        return result;
      }

      do
      {
        v31 = *--v29;
        v30 = v31;
        *v29 = 0;
        if (v31)
        {
          MEMORY[0x1AC55A040](v30, 0x1000C8077774924);
        }
      }

      while (v29 != v21);
LABEL_44:
      v23 = v41;
      goto LABEL_45;
    }
  }

  else
  {
    v32[0] = "expected integer number of results";
    v33 = 259;
    mlir::detail::Parser::emitWrongTokenError(v2, v32, &v36);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
    v17 = result;
    if (v36)
    {
      mlir::InFlightDiagnostic::report(&v36);
      result = v17;
    }

    if (v46[0] == 1)
    {
      if (v45 != v46)
      {
        free(v45);
        result = v17;
      }

      v18 = __p;
      if (__p)
      {
        v19 = v44;
        v20 = __p;
        if (v44 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v44 = v18;
        operator delete(v20);
        result = v17;
      }

      v21 = v41;
      if (!v41)
      {
        goto LABEL_46;
      }

      v22 = v42;
      v23 = v41;
      if (v42 == v41)
      {
        goto LABEL_45;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
        }
      }

      while (v22 != v21);
      goto LABEL_44;
    }
  }

  return result;
}

unint64_t llvm::SmallVectorTemplateBase<std::tuple<llvm::StringRef,unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<llvm::StringRef,unsigned long &,llvm::SMLoc>(unint64_t *a1, __int128 *a2, void *a3, uint64_t *a4)
{
  v14 = *a2;
  v15 = *a3;
  v16 = *a4;
  v4 = *(a1 + 2);
  v5 = *a1;
  v6 = &v14;
  if (v4 >= *(a1 + 3))
  {
    if (v5 <= &v14 && v5 + 32 * v4 > &v14)
    {
      v12 = &v14 - v5;
      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v4 + 1, 32);
      a1 = v13;
      v5 = *v13;
      v6 = &v12[*v13];
    }

    else
    {
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v4 + 1, 32);
      a1 = v11;
      v5 = *v11;
      v6 = &v14;
    }
  }

  v7 = (v5 + 32 * *(a1 + 2));
  v8 = *(v6 + 1);
  *v7 = *v6;
  v7[1] = v8;
  v9 = (*(a1 + 2) + 1);
  *(a1 + 2) = v9;
  return *a1 + 32 * v9 - 32;
}

unint64_t anonymous namespace::OperationParser::parseCustomOperationName(_anonymous_namespace_::OperationParser *this)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  v41 = v3;
  v42 = v4;
  if (v4)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v37, (*(this + 1) + 8));
    v5 = *(this + 1);
    *(v5 + 56) = v37;
    *(v5 + 72) = v38;
    v7 = mlir::RegisteredOperationName::lookup(v3, v4, ***(this + 1), v6);
    if (v8)
    {
      v9 = v7 & 0xFFFFFFFFFFFFFF00;
      return v9 | v7;
    }

    LOBYTE(v37) = 46;
    v18 = llvm::StringRef::find(&v41, &v37, 1uLL, 0);
    if (v18 == -1)
    {
      v19 = v41;
      v20 = v42;
      v21 = v42;
      v22 = *(this + 1);
      if (*(v22 + 56) != 2)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v19 = v41;
      v20 = v42;
      if (v18 >= v42)
      {
        v21 = v42;
      }

      else
      {
        v21 = v18;
      }

      v35[0] = 0;
      v35[1] = 0;
      v36 = 0;
      if (v42 > v18 + 1)
      {
LABEL_39:
        mlir::MLIRContext::getOrLoadDialect(***(this + 1), v19, v21);
        mlir::OperationName::OperationName(&v37, v41, v42, ***(this + 1));
        LOBYTE(v7) = v37;
        v9 = v37 & 0xFFFFFFFFFFFFFF00;
        if (SHIBYTE(v36) < 0)
        {
          v29 = v37;
          operator delete(v35[0]);
          LOBYTE(v7) = v29;
        }

        return v9 | v7;
      }

      v22 = *(this + 1);
      if (*(v22 + 56) != 2)
      {
LABEL_34:
        v25 = *(v22 + 168) + 16 * *(v22 + 176);
        v26 = *(v25 - 16);
        v21 = *(v25 - 8);
        v32 = 773;
        v31[0] = v26;
        v31[1] = v21;
        v31[2] = ".";
        *&v37 = v31;
        v38 = v19;
        v39 = v20;
        v40 = 1282;
        llvm::Twine::str(&v37, &v33);
        v36 = v34;
        *v35 = v33;
        v27 = SHIBYTE(v34);
        v28 = v35;
        if (v34 < 0)
        {
          v28 = v33;
        }

        if (v34 < 0)
        {
          v27 = *(&v33 + 1);
        }

        v41 = v28;
        v42 = v27;
        v19 = v26;
        goto LABEL_39;
      }
    }

    if (*(v19 + v20 - 1) != 46)
    {
      goto LABEL_34;
    }

    if (v21)
    {
      v23 = v19;
      v24 = memchr(v19, 46, v21);
      if (!v24 || v24 - v23 == -1)
      {
        (*(**(v22 + 160) + 24))(*(v22 + 160), v23, v21);
      }
    }

    v9 = 0;
    LOBYTE(v7) = 0;
  }

  else
  {
    *&v37 = "empty operation name is invalid";
    v40 = 259;
    mlir::detail::Parser::emitError(this, &v37, v43);
    if (v43[0])
    {
      mlir::InFlightDiagnostic::report(v43);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v49;
        v12 = __p;
        if (v49 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v49 = v10;
        operator delete(v12);
      }

      v13 = v46;
      if (v46)
      {
        v14 = v47;
        v15 = v46;
        if (v47 != v46)
        {
          do
          {
            v17 = *--v14;
            v16 = v17;
            *v14 = 0;
            if (v17)
            {
              MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
            }
          }

          while (v14 != v13);
          v15 = v46;
        }

        v47 = v13;
        operator delete(v15);
      }

      if (v44 != &v45)
      {
        free(v44);
      }
    }

    LOBYTE(v7) = 0;
    v9 = 0;
  }

  return v9 | v7;
}

uint64_t anonymous namespace::OperationParser::parseTrailingLocationSpecifier(mlir::detail::Parser *a1, unint64_t a2)
{
  v2 = *(a1 + 1);
  if (*(v2 + 56) != 64)
  {
    return 1;
  }

  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken(&v12, (*(a1 + 1) + 8));
  v5 = *(a1 + 1);
  *(v5 + 56) = v12;
  *(v5 + 72) = v13;
  *&v12 = "expected '(' in location";
  v14 = 259;
  if (mlir::detail::Parser::parseToken(a1, 21, &v12))
  {
    v6 = *(*(a1 + 1) + 56);
    v11 = 0;
    if (v6 == 5)
    {
      {
        return 0;
      }
    }

    else if ((mlir::detail::Parser::parseLocationInstance(a1, &v11) & 1) == 0)
    {
      return 0;
    }

    *&v12 = "expected ')' in location";
    v14 = 259;
    if (mlir::detail::Parser::parseToken(a1, 28, &v12))
    {
      v7 = (a2 >> 2) & 1;
      if ((a2 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        LODWORD(v7) = 1;
      }

      v8 = v7 == 0;
      v9 = 24;
      if (!v8)
      {
        v9 = 32;
      }

      *((a2 & 0xFFFFFFFFFFFFFFF8) + v9) = v11;
      return 1;
    }
  }

  return 0;
}

const char *llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::IsIsolatedFromAbove<Empty>]";
  v6 = 91;
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

uint64_t llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::unique_function<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>>(void *a1)
{
  v1 = a1[3];
  if ((v1 & 2) == 0)
  {
    a1 = *a1;
  }

  return (*(v1 & 0xFFFFFFFFFFFFFFF8))(a1);
}

void anonymous namespace::CustomOpAsmParser::~CustomOpAsmParser(_anonymous_namespace_::CustomOpAsmParser *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

void anonymous namespace::CustomOpAsmParser::emitError(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t **a3@<X2>, mlir::InFlightDiagnostic *a4@<X8>)
{
  v13 = 1283;
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v12[0] = "custom op '";
  v12[2] = v5;
  v12[3] = v6;
  *&v14 = v12;
  *&v15 = "' ";
  LOWORD(v16) = 770;
  v7 = *(a3 + 32);
  if (v7 == 1)
  {
    v17 = v14;
    v18 = v15;
    v19 = v16;
  }

  else if (*(a3 + 32))
  {
    v8 = *a3;
    v9 = a3[1];
    if (*(a3 + 33) != 1)
    {
      LOBYTE(v7) = 2;
      v8 = a3;
    }

    *&v17 = &v14;
    *&v18 = v8;
    *(&v18 + 1) = v9;
    LOBYTE(v19) = 2;
    BYTE1(v19) = v7;
  }

  else
  {
    LOWORD(v19) = 256;
  }

  *(a1 + 24) = 1;
  v10 = *(a1 + 16);
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v10 + 8) + 8, a2);
  mlir::emitError(EncodedSourceLocation, &v17, a4);
  if (*(*(v10 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(a4);
  }
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseArrow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '->'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 13, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalArrow(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseLBrace(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '{'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 20, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalLBrace(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseRBrace(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '}'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 27, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalRBrace(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseColon(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ':'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 15, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalColon(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseComma(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ','";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 16, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalComma(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseEqual(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '='";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 18, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalEqual(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseLess(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '<'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 23, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalLess(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseGreater(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '>'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 19, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalGreater(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseQuestion(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '?'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 26, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalQuestion(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parsePlus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '+'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 25, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalPlus(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseMinus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '-'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 24, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalMinus(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseStar(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '*'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 30, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalStar(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseVerticalBar(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '|'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 31, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalVerticalBar(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalString(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 11)
  {
    return 0;
  }

  if (a2)
  {
    mlir::Token::getStringValue((v3 + 56), &v7);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v7;
    v2 = *(a1 + 16);
    v3 = *(v2 + 8);
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken(&v7, (*(v2 + 8) + 8));
  *(*(v2 + 8) + 56) = v7;
  return 1;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseBase64Bytes(void *a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v5 = a1[2];
  v6 = *(v5 + 8);
  if (*(v6 + 56) == 11)
  {
    if (a2)
    {
      v36 = *(v6 + 64);
      first_not_of = llvm::StringRef::find_first_not_of(&v36, "  \t\n\v\f\r", 8, 0);
      if (first_not_of >= *(&v36 + 1))
      {
        v8 = *(&v36 + 1);
      }

      else
      {
        v8 = first_not_of;
      }

      v9 = *(&v36 + 1) - v8;
      *&v39 = v36 + v8;
      *(&v39 + 1) = *(&v36 + 1) - v8;
      last_not_of = llvm::StringRef::find_last_not_of(&v39, " \t\n\v\f\r", 7, 0xFFFFFFFFFFFFFFFFLL);
      if (last_not_of + 1 < *(&v39 + 1))
      {
        v11 = last_not_of + 1;
      }

      else
      {
        v11 = *(&v39 + 1);
      }

      v12 = *(&v39 + 1) - v9 + v11;
      if (*(&v39 + 1) >= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = *(&v39 + 1);
      }

      llvm::decodeBase64(v39, v13, a2, &v35);
      if (v35)
      {
        v33 = v35;
        v35 = 0;
        llvm::toString(&v33, &v34);
        v38 = 260;
        v37[0] = &v34;
        (*(*a1 + 24))(&v39, a1, v4, v37);
        v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
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

          v15 = __p;
          if (__p)
          {
            v16 = v46;
            v17 = __p;
            if (v46 != __p)
            {
              do
              {
                v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v46 = v15;
            operator delete(v17);
          }

          v18 = v43;
          if (v43)
          {
            v19 = v44;
            v20 = v43;
            if (v44 != v43)
            {
              do
              {
                v22 = *--v19;
                v21 = v22;
                *v19 = 0;
                if (v22)
                {
                  MEMORY[0x1AC55A040](v21, 0x1000C8077774924);
                }
              }

              while (v19 != v18);
              v20 = v43;
            }

            v44 = v18;
            operator delete(v20);
          }

          if (v41 != v42)
          {
            free(v41);
          }
        }

        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        if (v33)
        {
          (*(*v33 + 8))(v33);
        }

        if (v35)
        {
          (*(*v35 + 8))(v35);
        }

        return v14;
      }

      v5 = a1[2];
      v6 = *(v5 + 8);
    }

    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken(&v39, (*(v5 + 8) + 8));
    v31 = *(v5 + 8);
    *(v31 + 56) = v39;
    *(v31 + 72) = v40;
    return 1;
  }

  v37[0] = "expected string";
  v38 = 259;
  (*(*a1 + 24))(&v39, a1, v4, v37);
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
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
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
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
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
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

  return v14;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseLParen(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '('";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 21, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalLParen(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseRParen(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ')'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 28, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalRParen(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseLSquare(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '['";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 22, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalLSquare(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseRSquare(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ']'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 29, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalRSquare(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseEllipsis(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '...'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 17, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalEllipsis(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseFloat(uint64_t a1, double *a2, uint64_t a3, unsigned int a4)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::IEEEFloat::IEEEFloat(v17, 0.0, a2, a3, a4);
  v7 = llvm::APFloatBase::IEEEdouble(v6);
  llvm::APFloat::Storage::Storage(v19, v17, v7);
  llvm::detail::IEEEFloat::~IEEEFloat(v17);
  v8 = (*(*a1 + 368))(a1, v7, &v18);
  if ((v8 & 1) == 0)
  {
    v12 = 0;
    v16 = v19[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v8) != v16)
    {
      goto LABEL_3;
    }

LABEL_6:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v19);
    return v12;
  }

  *a2 = llvm::APFloat::convertToDouble(&v18, v9, v10, v11);
  v12 = 1;
  v13 = v19[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v14) == v13)
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(v19);
  return v12;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseFloat(void *a1, ZinMirL2Config::Tile *a2, uint64_t a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a1[2];
  v7 = *(v6 + 8);
  v8 = *(v7 + 56);
  if (v8 == 24)
  {
    *(v7 + 80) = *(v7 + 56);
    *(v7 + 96) = *(v7 + 72);
    mlir::Lexer::lexToken(&v58, (*(v6 + 8) + 8));
    v9 = *(v6 + 8);
    *(v9 + 56) = v58;
    *(v9 + 72) = v59;
    v7 = *(a1[2] + 8);
  }

  v56 = *(v7 + 56);
  v57 = *(v7 + 72);
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol(&v56);
  if (v56 == 10)
  {
    v29 = v8 == 24;
    LOBYTE(v58) = 0;
    v61 = 0;
    v30 = a1[2];
    OverlapPadBottom = ZinMirL2Config::Tile::GetOverlapPadBottom(a2);
    v32 = mlir::detail::Parser::parseFloatFromIntegerLiteral(v30, &v58, &v56, v29, a2, OverlapPadBottom);
    v33 = 0;
    if (v32)
    {
      llvm::APFloat::Storage::operator=((a3 + 8), (&v58 + 8));
      v34 = a1[2];
      v35 = *(v34 + 8);
      *(v35 + 80) = *(v35 + 56);
      *(v35 + 96) = *(v35 + 72);
      mlir::Lexer::lexToken(&v53, (*(v34 + 8) + 8));
      v36 = *(v34 + 8);
      *(v36 + 56) = v53;
      *(v36 + 72) = v54;
      v33 = 1;
    }

    if (v61 == 1)
    {
      v37 = *(&v58 + 1);
      if (llvm::APFloatBase::PPCDoubleDouble(v32) == v37)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v58 + 8));
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat((&v58 + 8));
      }
    }
  }

  else
  {
    v14 = SrcSymbol;
    if (v56 == 9)
    {
      FloatingPointValue = mlir::Token::getFloatingPointValue(&v56, v11, v12, v13);
      if (v16)
      {
        v17 = *&FloatingPointValue;
        v18 = a1[2];
        v19 = *(v18 + 8);
        *(v19 + 80) = *(v19 + 56);
        *(v19 + 96) = *(v19 + 72);
        mlir::Lexer::lexToken(&v58, (*(v18 + 8) + 8));
        v23 = *(v18 + 8);
        *(v23 + 56) = v58;
        *(v23 + 72) = v59;
        v24 = -v17;
        if (v8 != 24)
        {
          v24 = v17;
        }

        v25 = llvm::detail::IEEEFloat::IEEEFloat(&v53, v24, v20, v21, v22);
        v26 = llvm::APFloatBase::IEEEdouble(v25);
        llvm::APFloat::Storage::Storage(&v58 + 8, &v53, v26);
        llvm::detail::IEEEFloat::~IEEEFloat(&v53);
        v27 = llvm::APFloat::Storage::operator=((a3 + 8), (&v58 + 8));
        v28 = *(&v58 + 1);
        if (llvm::APFloatBase::PPCDoubleDouble(v27) == v28)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v58 + 8));
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat((&v58 + 8));
        }

        LOBYTE(v58) = 0;
        v33 = 1;
        llvm::APFloat::convert(a3, a2, 1u, &v58);
        return v33;
      }

      *&v53 = "floating point value too large";
      v55 = 259;
      (*(*a1 + 24))(&v58, a1, v14, &v53);
      v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v58);
      if (v58)
      {
        mlir::InFlightDiagnostic::report(&v58);
      }

      if (v68 == 1)
      {
        if (v67 != &v68)
        {
          free(v67);
        }

        v46 = __p;
        if (__p)
        {
          v47 = v66;
          v48 = __p;
          if (v66 != __p)
          {
            do
            {
              v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
            }

            while (v47 != v46);
            v48 = __p;
          }

          v66 = v46;
          operator delete(v48);
        }

        v41 = v63;
        if (!v63)
        {
          goto LABEL_49;
        }

        v49 = v64;
        v43 = v63;
        if (v64 == v63)
        {
LABEL_48:
          v64 = v41;
          operator delete(v43);
LABEL_49:
          if (v60 != &v62)
          {
            free(v60);
          }

          return v33;
        }

        do
        {
          v51 = *--v49;
          v50 = v51;
          *v49 = 0;
          if (v51)
          {
            MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
          }
        }

        while (v49 != v41);
LABEL_47:
        v43 = v63;
        goto LABEL_48;
      }
    }

    else
    {
      *&v53 = "expected floating point literal";
      v55 = 259;
      (*(*a1 + 24))(&v58, a1, SrcSymbol, &v53);
      v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v58);
      if (v58)
      {
        mlir::InFlightDiagnostic::report(&v58);
      }

      if (v68 == 1)
      {
        if (v67 != &v68)
        {
          free(v67);
        }

        v38 = __p;
        if (__p)
        {
          v39 = v66;
          v40 = __p;
          if (v66 != __p)
          {
            do
            {
              v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
            }

            while (v39 != v38);
            v40 = __p;
          }

          v66 = v38;
          operator delete(v40);
        }

        v41 = v63;
        if (!v63)
        {
          goto LABEL_49;
        }

        v42 = v64;
        v43 = v63;
        if (v64 == v63)
        {
          goto LABEL_48;
        }

        do
        {
          v45 = *--v42;
          v44 = v45;
          *v42 = 0;
          if (v45)
          {
            MEMORY[0x1AC55A040](v44, 0x1000C8077774924);
          }
        }

        while (v42 != v41);
        goto LABEL_47;
      }
    }
  }

  return v33;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseKeyword(void *a1, const char *a2, const char *a3, const char **a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v27[0] = a2;
  v27[1] = a3;
  v4 = *(a1[2] + 8);
  if (*(v4 + 56) == 2)
  {
    (*(**(v4 + 160) + 48))(*(v4 + 160), v27, 1, 0);
    return 0;
  }

  else
  {
    v10 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 408))(a1, a2, a3))
    {
      return 1;
    }

    else
    {
      v25 = "expected '";
      v26 = 259;
      (*(*a1 + 24))(&v32, a1, v10, &v25);
      if (v32)
      {
        v31 = 261;
        v28 = a2;
        v29 = a3;
        mlir::Diagnostic::operator<<(v33, &v28);
        if (v32)
        {
          LODWORD(v28) = 3;
          v29 = "'";
          v30 = 1;
          v11 = &v28;
          v12 = v34;
          if (v35 >= v36)
          {
            if (v34 <= &v28 && v34 + 24 * v35 > &v28)
            {
              v24 = &v28 - v34;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
              v12 = v34;
              v11 = (v34 + v24);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
              v11 = &v28;
              v12 = v34;
            }
          }

          v13 = &v12[24 * v35];
          v14 = *v11;
          *(v13 + 2) = v11[2];
          *v13 = v14;
          ++v35;
          if (v32)
          {
            mlir::Diagnostic::operator<<(v33, a4);
          }
        }
      }

      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
      if (v32)
      {
        mlir::InFlightDiagnostic::report(&v32);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v15 = __p;
        if (__p)
        {
          v16 = v41;
          v17 = __p;
          if (v41 != __p)
          {
            do
            {
              v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
            }

            while (v16 != v15);
            v17 = __p;
          }

          v41 = v15;
          operator delete(v17);
        }

        v18 = v38;
        if (v38)
        {
          v19 = v39;
          v20 = v38;
          if (v39 != v38)
          {
            do
            {
              v22 = *--v19;
              v21 = v22;
              *v19 = 0;
              if (v22)
              {
                MEMORY[0x1AC55A040](v21, 0x1000C8077774924);
              }
            }

            while (v19 != v18);
            v20 = v38;
          }

          v39 = v18;
          operator delete(v20);
        }

        if (v34 != v37)
        {
          free(v34);
        }
      }
    }
  }

  return v5;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalKeyword(uint64_t a1, const void *a2, size_t a3)
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
    (*(**(v4 + 160) + 48))(*(v4 + 160), v12, 1, 1);
    return 0;
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalKeyword(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  v4 = *(v3 + 56);
  if (v4 == 3 || v4 == 12)
  {
    goto LABEL_6;
  }

  v8 = a2;
  result = mlir::Token::isKeyword((v3 + 56));
  if (result)
  {
    v2 = *(a1 + 16);
    v3 = *(v2 + 8);
    a2 = v8;
LABEL_6:
    *a2 = *(v3 + 64);
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken(&v10, (*(v2 + 8) + 8));
    v6 = *(v2 + 8);
    *(v6 + 56) = v10;
    *(v6 + 72) = v11;
    return 1;
  }

  return result;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalKeyword(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *(v7 + 8);
  v9 = *(v8 + 56);
  if (v9 == 12 || v9 == 3)
  {
    v12 = *(v8 + 64);
    v11 = *(v8 + 72);
    if (!a4)
    {
LABEL_17:
      i = a3;
      goto LABEL_18;
    }
  }

  else
  {
    if (v9 == 2)
    {
      (*(**(v8 + 160) + 48))(*(v8 + 160), a3, a4, 1);
      return 0;
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
      goto LABEL_17;
    }
  }

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
    v18 = 16 * a4;
    for (i = a3; *(i + 8); i += 16)
    {
      v18 -= 16;
      if (!v18)
      {
        return 0;
      }
    }
  }

LABEL_18:
  if (i != a3 + 16 * a4)
  {
    *a2 = v12;
    a2[1] = v11;
    *(v8 + 80) = *(v8 + 56);
    *(v8 + 96) = *(v8 + 72);
    mlir::Lexer::lexToken(&v19, (*(v7 + 8) + 8));
    v17 = *(v7 + 8);
    *(v17 + 56) = v19;
    *(v17 + 72) = v20;
    return 1;
  }

  return 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalKeywordOrString(uint64_t a1, uint64_t a2)
{
  __src = 0;
  __len = 0;
  if (((*(*a1 + 416))(a1, &__src) & 1) == 0)
  {
    return (*(*a1 + 264))(a1, a2);
  }

  if (__src)
  {
    v4 = __len;
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v7) = __len;
    if (__len)
    {
      memmove(&__dst, __src, __len);
    }

    *(&__dst + v4) = 0;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  __dst = 0uLL;
  v7 = 0;
  if (*(a2 + 23) < 0)
  {
LABEL_13:
    operator delete(*a2);
  }

LABEL_14:
  *a2 = __dst;
  *(a2 + 16) = v7;
  return 1;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseAttribute(uint64_t a1, mlir::detail::Parser **a2, void *a3, unsigned int a4)
{
  v5 = mlir::detail::Parser::parseAttribute(*(a1 + 16), a3, a3, a4);
  *a2 = v5;
  return v5 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseCustomAttributeWithFallback(uint64_t a1, mlir::detail::Parser **a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
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

    return (a4)(a5, a2, a3);
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalAttribute(uint64_t a1, mlir::detail::Parser **a2, void *a3, unsigned int a4)
{
  return mlir::detail::Parser::parseOptionalAttribute(*(a1 + 16), a2, a3, a4);
}

{
  return mlir::detail::Parser::parseOptionalAttribute(*(a1 + 16), a2, a3, a4);
}

{
  return mlir::detail::Parser::parseOptionalAttribute(*(a1 + 16), a2, a3, a4);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalAttrDictWithKeyword(void *a1, mlir::NamedAttrList *a2)
{
  if (((*(*a1 + 408))(a1, "attributes", 10) & 1) == 0)
  {
    return 1;
  }

  v4 = a1[2];

  return mlir::detail::Parser::parseAttributeDict(v4, a2);
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalSymbolName(void *a1, uint64_t *a2)
{
  v2 = *(a1[2] + 8);
  v18 = *(v2 + 56);
  v19 = *(v2 + 72);
  if (v18 != 4)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  mlir::Token::getSymbolReference(&v18, __p);
  v17 = 260;
  *&v15 = __p;
  *a2 = mlir::Builder::getStringAttr(v5, &v15);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = a1[2];
  v7 = *(v6 + 8);
  *(v7 + 80) = *(v7 + 56);
  *(v7 + 96) = *(v7 + 72);
  mlir::Lexer::lexToken(&v15, (*(v6 + 8) + 8));
  v8 = *(v6 + 8);
  *(v8 + 56) = v15;
  *(v8 + 72) = v16;
  v9 = *(*(a1[2] + 8) + 152);
  if (v9)
  {
    v10 = mlir::SymbolRefAttr::get(*a2);
    *&v15 = mlir::Token::getLocRange(&v18);
    *(&v15 + 1) = v11;
    mlir::AsmParserState::addUses(v9, v10, &v15, 1);
  }

  return 1;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseType(uint64_t a1, uint64_t **a2)
{
  v3 = mlir::detail::Parser::parseType(*(a1 + 16));
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseCustomTypeWithFallback(uint64_t a1, uint64_t **a2, uint64_t (*a3)(uint64_t, uint64_t **), uint64_t a4)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseArrowTypeList(void *a1, unsigned int *a2)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalArrowTypeList(uint64_t a1, unsigned int *a2)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseColonType(uint64_t a1, uint64_t **a2)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseColonTypeList(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v6 = "expected ':'";
  v7 = 259;
  return mlir::detail::Parser::parseToken(v4, 15, &v6) && mlir::detail::Parser::parseTypeListNoParens(*(a1 + 16), a2);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalColonTypeList(uint64_t a1, uint64_t a2)
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

void mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseResourceHandle(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2))
  {
    v6 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2);
    v35 = 0;
    v36 = 0;
    mlir::detail::Parser::parseResourceHandle(*(a1 + 16), v6, &v35, a3);
  }

  else
  {
    v7 = *(a1 + 16);
    v30 = 257;
    mlir::detail::Parser::emitError(v7, v29, &v35);
    if (!v35)
    {
      goto LABEL_10;
    }

    LODWORD(v31) = 3;
    v32 = "dialect '";
    v33 = 9;
    v8 = &v31;
    v9 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v31 && v37 + 24 * v38 > &v31)
      {
        v27 = &v31 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v9 = v37;
        v8 = (v37 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v8 = &v31;
        v9 = v37;
      }
    }

    v10 = &v9[24 * v38];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    ++v38;
    if (v35 && (v12 = *(a2 + 8), v13 = *(a2 + 16), v34 = 261, v31 = v12, v32 = v13, mlir::Diagnostic::operator<<(&v36, &v31), v35))
    {
      LODWORD(v31) = 3;
      v32 = "' does not expect resource handles";
      v33 = 34;
      v14 = &v31;
      v15 = v37;
      if (v38 >= v39)
      {
        if (v37 <= &v31 && v37 + 24 * v38 > &v31)
        {
          v28 = &v31 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v15 = v37;
          v14 = (v37 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v14 = &v31;
          v15 = v37;
        }
      }

      v16 = &v15[24 * v38];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v38;
      v18 = v35;
      *a3 = 0;
      a3[24] = 0;
      if (v18)
      {
        mlir::InFlightDiagnostic::report(&v35);
      }
    }

    else
    {
LABEL_10:
      *a3 = 0;
      a3[24] = 0;
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v19 = __p;
      if (__p)
      {
        v20 = v44;
        v21 = __p;
        if (v44 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v44 = v19;
        operator delete(v21);
      }

      v22 = v41;
      if (v41)
      {
        v23 = v42;
        v24 = v41;
        if (v42 != v41)
        {
          do
          {
            v26 = *--v23;
            v25 = v26;
            *v23 = 0;
            if (v26)
            {
              MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
            }
          }

          while (v23 != v22);
          v24 = v41;
        }

        v42 = v22;
        operator delete(v24);
      }

      if (v37 != v40)
      {
        free(v37);
      }
    }
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::pushCyclicParsing(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(*(a1 + 16) + 8);
  llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::try_emplace<llvm::detail::DenseSetEmpty&>((v2 + 112), &v7, v8);
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::popCyclicParsing(uint64_t result)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseKeywordOrCompletion(mlir::AsmParser *a1, llvm::StringRef *a2)
{
  v2 = *(*(a1 + 2) + 8);
  if (*(v2 + 56) != 2 || *(v2 + 72))
  {
    return mlir::AsmParser::parseKeyword(a1, a2);
  }

  *a2 = "";
  *(a2 + 1) = 0;
  return 1;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::codeCompleteExpectedTokens(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 16) + 8);
  if (*(v3 + 56) == 2 && !*(v3 + 72))
  {
    return (*(**(v3 + 160) + 48))(*(v3 + 160), a2, a3, 0);
  }

  return result;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalLocationSpecifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 64)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken(&v12, (*(v2 + 8) + 8));
  v6 = *(v2 + 8);
  *(v6 + 56) = v12;
  *(v6 + 72) = v13;
  v15 = 0;
  v7 = *(a1 + 88);
  *&v12 = "expected '(' in location";
  v14 = 259;
  if (mlir::detail::Parser::parseToken(v7, 21, &v12))
  {
    v8 = *(a1 + 88);
    if (*(*(v8 + 1) + 56) == 5)
    {
      {
        return 0;
      }
    }

    else if ((mlir::detail::Parser::parseLocationInstance(v8, &v15) & 1) == 0)
    {
      return 0;
    }

    v9 = *(a1 + 88);
    *&v12 = "expected ')' in location";
    v14 = 259;
    if (mlir::detail::Parser::parseToken(v9, 28, &v12))
    {
      v10 = v15;
      if ((*(a2 + 8) & 1) == 0)
      {
        *(a2 + 8) = 1;
      }

      *a2 = v10;
      return 1;
    }
  }

  return 0;
}

uint64_t anonymous namespace::CustomOpAsmParser::getResultName@<X0>(uint64_t this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 40);
  if (v3)
  {
    v4 = (*(this + 32) + 16);
    v5 = 32 * v3;
    while (1)
    {
      v6 = a2 - *v4;
      if (a2 < *v4)
      {
        break;
      }

      v4 += 8;
      a2 = v6;
      v5 -= 32;
      if (!v5)
      {
        *a3 = "";
        *(a3 + 8) = 0;
        *(a3 + 16) = -1;
        return this;
      }
    }

    v7 = *(v4 - 2);
    v8 = *(v4 - 1);
    if (v8)
    {
      ++v7;
    }

    *a3 = v7;
    *(a3 + 8) = v8 - (v8 != 0);
    *(a3 + 16) = a2;
  }

  else
  {
    *a3 = "";
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }

  return this;
}

uint64_t anonymous namespace::CustomOpAsmParser::getNumResults(_anonymous_namespace_::CustomOpAsmParser *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 4);
  v3 = (v1 - 1) & 0x7FFFFFFFFFFFFFFLL;
  if (!v3)
  {
    result = 0;
    v8 = v2;
LABEL_9:
    v14 = v2 + 32 * v1;
    do
    {
      result += *(v8 + 16);
      v8 += 32;
    }

    while (v8 != v14);
    return result;
  }

  v4 = 0;
  v5 = 0;
  v6 = v3 + 1;
  v7 = (v3 + 1) & 0xFFFFFFFFFFFFFFELL;
  v8 = v2 + 32 * v7;
  v9 = (v2 + 48);
  v10 = v7;
  do
  {
    v11 = *(v9 - 8);
    v12 = *v9;
    v9 += 16;
    v4 += v11;
    v5 += v12;
    v10 -= 2;
  }

  while (v10);
  result = v5 + v4;
  if (v6 != v7)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseGenericOperation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  v4 = *(v3 + 8);
  v5 = *(v4 + 56);
  v15 = *(v4 + 72);
  v13 = *(v3 + 400);
  v14 = v5;
  *(v3 + 400) = a2;
  *(v3 + 408) = a3;
  if (v6)
  {
    v7 = *(*(v3 + 8) + 152);
    if (v7)
    {
      LocRange = mlir::Token::getLocRange(&v14);
      v10 = v9;
      EndLoc = mlir::Token::getEndLoc((*(v3 + 8) + 80));
      mlir::AsmParserState::finalizeOperationDefinition(v7, v6, LocRange, v10, EndLoc, 0, 0);
    }
  }

  if (v13)
  {
    *(v3 + 400) = v13;
  }

  else
  {
    *(v3 + 400) = 0;
    *(v3 + 408) = 0;
  }

  return v6;
}

BOOL anonymous namespace::CustomOpAsmParser::parseGenericOperationAfterOpName(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a1 + 88);
  v18 = *a3;
  v19 = *(a3 + 2);
  v16 = *a4;
  v17 = *(a4 + 2);
  v14 = *a5;
  v15 = *(a5 + 2);
  v12 = *a6;
  v13 = *(a6 + 2);
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOperand(uint64_t a1, uint64_t a2, char a3)
{
  v6 = 0;
  v7 = 0uLL;
  {
    return 0;
  }

  v4 = v8;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 24) = v4;
  return 1;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalOperand(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1[11] + 8);
  v5 = *(v3 + 56);
  v4 = v3 + 56;
  if (v5 == 6)
  {
    return (*(*a1 + 704))(a1, a2, a3) | 0x100u;
  }

  v6 = a1;
  v7 = a2;
  v8 = a3;
  isCodeCompletionFor = mlir::Token::isCodeCompletionFor(v4, 6);
  a2 = v7;
  a3 = v8;
  v10 = isCodeCompletionFor;
  a1 = v6;
  if (v10)
  {
    return (*(*a1 + 704))(a1, a2, a3) | 0x100u;
  }

  else
  {
    return 0;
  }
}

BOOL anonymous namespace::CustomOpAsmParser::parseOperandList(void *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v49 = a4;
  if (a3 || (v9 = *(a1[11] + 8), v50 = *(v9 + 56), v51 = *(v9 + 72), v50 == 6) || mlir::Token::isCodeCompletionFor(&v50, 6))
  {
    v46[0] = a1;
    v46[1] = a2;
    v46[2] = &v49;
    SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(a1[11] + 8) + 56));
    {
      return 0;
    }

    if (a5 != -1 && *(a2 + 8) != a5)
    {
      v47[0] = "expected ";
      v48 = 259;
      (*(*a1 + 24))(v52, a1, SrcSymbol, v47);
      if (v52[0])
      {
        LODWORD(v50) = 2;
        *(&v50 + 1) = a5;
        v11 = &v50;
        v12 = v53;
        if (v54 >= v55)
        {
          if (v53 <= &v50 && v53 + 24 * v54 > &v50)
          {
            v44 = &v50 - v53;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
            v12 = v53;
            v11 = v53 + v44;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
            v11 = &v50;
            v12 = v53;
          }
        }

        v13 = &v12[24 * v54];
        v14 = *v11;
        *(v13 + 2) = *(v11 + 2);
        *v13 = v14;
        v15 = ++v54;
        if (v52[0])
        {
          LODWORD(v50) = 3;
          *(&v50 + 1) = " operands";
          v51 = 9;
          v16 = &v50;
          v17 = v53;
          if (v15 >= v55)
          {
            if (v53 <= &v50 && v53 + 24 * v15 > &v50)
            {
              v45 = &v50 - v53;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v15 + 1, 24);
              v17 = v53;
              v16 = v53 + v45;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v15 + 1, 24);
              v16 = &v50;
              v17 = v53;
            }
          }

          v18 = &v17[24 * v54];
          v19 = *v16;
          *(v18 + 2) = *(v16 + 2);
          *v18 = v19;
          ++v54;
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
      v21 = result;
      if (v52[0])
      {
        mlir::InFlightDiagnostic::report(v52);
        result = v21;
      }

      if (v62 == 1)
      {
        if (v61 != &v62)
        {
          free(v61);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v60;
          v24 = __p;
          if (v60 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v60 = v22;
          operator delete(v24);
        }

        v25 = v57;
        result = v21;
        if (!v57)
        {
          goto LABEL_67;
        }

        v26 = v58;
        v27 = v57;
        if (v58 == v57)
        {
LABEL_66:
          v58 = v25;
          operator delete(v27);
          result = v21;
LABEL_67:
          if (v53 != v56)
          {
            free(v53);
            return v21;
          }

          return result;
        }

        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            MEMORY[0x1AC55A040](v28, 0x1000C8077774924);
          }
        }

        while (v26 != v25);
LABEL_65:
        v27 = v57;
        goto LABEL_66;
      }

      return result;
    }

    return 1;
  }

  if ((a5 + 1) <= 1)
  {
    return 1;
  }

  if ((v50 - 21) > 1)
  {
    v37 = a1[11];
    v47[0] = "expected operand";
    v48 = 259;
    mlir::detail::Parser::emitWrongTokenError(v37, v47, v52);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
    v21 = result;
    if (v52[0])
    {
      mlir::InFlightDiagnostic::report(v52);
      result = v21;
    }

    if (v62)
    {
      if (v61 != &v62)
      {
        free(v61);
        result = v21;
      }

      v38 = __p;
      if (__p)
      {
        v39 = v60;
        v40 = __p;
        if (v60 != __p)
        {
          do
          {
            v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
          }

          while (v39 != v38);
          v40 = __p;
        }

        v60 = v38;
        operator delete(v40);
        result = v21;
      }

      v25 = v57;
      if (!v57)
      {
        goto LABEL_67;
      }

      v41 = v58;
      v27 = v57;
      if (v58 == v57)
      {
        goto LABEL_66;
      }

      do
      {
        v43 = *--v41;
        v42 = v43;
        *v41 = 0;
        if (v43)
        {
          MEMORY[0x1AC55A040](v42, 0x1000C8077774924);
        }
      }

      while (v41 != v25);
      goto LABEL_65;
    }
  }

  else
  {
    v30 = a1[11];
    v47[0] = "unexpected delimiter";
    v48 = 259;
    mlir::detail::Parser::emitError(v30, v47, v52);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
    v21 = result;
    if (v52[0])
    {
      mlir::InFlightDiagnostic::report(v52);
      result = v21;
    }

    if (v62)
    {
      if (v61 != &v62)
      {
        free(v61);
        result = v21;
      }

      v31 = __p;
      if (__p)
      {
        v32 = v60;
        v33 = __p;
        if (v60 != __p)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v60 = v31;
        operator delete(v33);
        result = v21;
      }

      v25 = v57;
      if (!v57)
      {
        goto LABEL_67;
      }

      v34 = v58;
      v27 = v57;
      if (v58 == v57)
      {
        goto LABEL_66;
      }

      do
      {
        v36 = *--v34;
        v35 = v36;
        *v34 = 0;
        if (v36)
        {
          MEMORY[0x1AC55A040](v35, 0x1000C8077774924);
        }
      }

      while (v34 != v25);
      goto LABEL_65;
    }
  }

  return result;
}