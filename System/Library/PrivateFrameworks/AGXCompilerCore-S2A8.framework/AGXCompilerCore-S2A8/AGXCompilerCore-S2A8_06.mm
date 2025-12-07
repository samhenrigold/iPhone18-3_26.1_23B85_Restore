uint64_t sub_23C512C00(uint64_t a1)
{
  if (*(*(a1 + *(*a1 - 24) + 344) + 1653))
  {
    goto LABEL_68;
  }

  Function = llvm::Module::getFunction();
  sub_23C5133A0(&v52, *(a1 + 3088));
  if (*(Function + 18))
  {
    llvm::Function::BuildLazyArguments(Function);
    v3 = *(Function + 88);
    if (*(Function + 18))
    {
      llvm::Function::BuildLazyArguments(Function);
      v4 = *(Function + 88);
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(Function + 88);
  }

  v4 = v3;
LABEL_7:
  v5 = v4 + 40 * *(Function + 96);
  if (v3 != v5)
  {
    v6 = 0;
    do
    {
      if (*(v3 + 8))
      {
        if (v52)
        {
          v52 = v52 & 0xFC00000000000001 | (2 * (((1 << v6) | (v52 >> 1)) & ~(-1 << (v52 >> 58))));
        }

        else
        {
          *(*v52 + 8 * (v6 >> 6)) |= 1 << v6;
        }
      }

      v3 += 40;
      ++v6;
    }

    while (v3 != v5);
  }

  v7 = *(a1 + 4080);
  if (*(a1 + 4088) != v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (v7 + 20 * v8);
      v11 = v10[2];
      if (v11 > 0xA)
      {
        LODWORD(v12) = -1;
      }

      else
      {
        v12 = (qword_23C534E90[v11] * (*v10 + 1) + 3) >> 2;
      }

      v13 = v10[3];
      sub_23C5133A0(&v51, *(a1 + 3088));
      if (v12)
      {
        v14 = v12 + v13;
        if (v51)
        {
          v51 = v51 & 0xFC00000000000001 | (2 * ((((1 << v14) + (-1 << v13)) | (v51 >> 1)) & ~(-1 << (v51 >> 58))));
          goto LABEL_30;
        }

        v15 = v13 >> 6;
        if ((v13 >> 6) == v14 >> 6)
        {
          v16 = (1 << v14) + (-1 << v13);
          v17 = (*v51 + 8 * v15);
LABEL_29:
          *v17 |= v16;
          goto LABEL_30;
        }

        v18 = *v51;
        *(*v51 + 8 * v15) |= -1 << v13;
        v19 = (v13 + 63) & 0xFFFFFFC0;
        if (v19 + 64 <= v14)
        {
          do
          {
            v18[v19 >> 6] = -1;
            v20 = v19 + 64;
            v21 = v19 + 128;
            v19 += 64;
          }

          while (v21 <= v14);
        }

        else
        {
          v20 = (v13 + 63) & 0xFFFFFFC0;
        }

        if (v20 < v14)
        {
          v16 = ~(-1 << v14);
          v17 = &v18[v20 >> 6];
          goto LABEL_29;
        }
      }

LABEL_30:
      if (v51)
      {
        v32 = v51 >> 58;
        if ((v52 & 1) == 0)
        {
          v33 = *(v52 + 64);
          goto LABEL_47;
        }

        if ((((v51 & v52) >> 1) & ~((-1 << v32) | (-1 << (v52 >> 58)))) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v52)
        {
          v32 = *(v51 + 64);
          v33 = v52 >> 58;
LABEL_47:
          if (v33 < v32)
          {
            v32 = v33;
          }

          if (!v32)
          {
LABEL_63:
            v35 = *(a1 + 4080) + 20 * v9;
            v36 = *(a1 + 4088);
            v37 = v36 - (v35 + 20);
            if (v36 != v35 + 20)
            {
              memmove((*(a1 + 4080) + 20 * v9), (v35 + 20), v36 - (v35 + 20));
            }

            *(a1 + 4088) = v35 + v37;
            goto LABEL_66;
          }

          v34 = 0;
          while (2)
          {
            if (v51)
            {
              if (((v51 >> 1) & ~(-1 << (v51 >> 58)) & (1 << v34)) == 0)
              {
                goto LABEL_59;
              }
            }

            else if ((*(*v51 + 8 * (v34 >> 6)) & (1 << v34)) == 0)
            {
              goto LABEL_59;
            }

            if (v52)
            {
              if (((v52 >> 1) & ~(-1 << (v52 >> 58)) & (1 << v34)) != 0)
              {
                goto LABEL_62;
              }
            }

            else if ((*(*v52 + 8 * (v34 >> 6)) & (1 << v34)) != 0)
            {
              goto LABEL_62;
            }

LABEL_59:
            if (v32 == ++v34)
            {
              goto LABEL_63;
            }

            continue;
          }
        }

        LODWORD(v22) = *(v51 + 8);
        v23 = *(v52 + 8);
        if (v23 >= v22)
        {
          v22 = v22;
        }

        else
        {
          v22 = v23;
        }

        if (!v22)
        {
          goto LABEL_63;
        }

        v24 = *v51;
        v25 = *v52;
        v26 = v22 - 1;
        do
        {
          v28 = *v24++;
          v27 = v28;
          v29 = *v25++;
          v30 = v29 & v27;
          if (v30)
          {
            v31 = 1;
          }

          else
          {
            v31 = v26 == 0;
          }

          --v26;
        }

        while (!v31);
        if (!v30)
        {
          goto LABEL_63;
        }
      }

LABEL_62:
      ++v9;
LABEL_66:
      sub_23C51350C(&v51);
      v8 = v9;
      v7 = *(a1 + 4080);
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 4088) - v7) >> 2) > v9);
  }

  sub_23C51350C(&v52);
LABEL_68:
  v38 = *(a1 + 4080);
  if (-858993459 * ((*(a1 + 4088) - v38) >> 2))
  {
    v39 = v38[4];
    v40 = a1 + *(*a1 - 24);
    *(v40 + 774) = 1;
    v41 = *(v40 + 744);
    v42 = *(v40 + 736) - *(v40 + 752);
    sub_23C4B0A04((v40 + 704), 4, *v38);
    sub_23C4B0A04((v40 + 704), 6, *(*(a1 + 4080) + 4));
    sub_23C4B0A04((v40 + 704), 8, *(*(a1 + 4080) + 8));
    v43 = *(*(a1 + 4080) + 12);
    v44 = (v40 + 704);
    if (v39)
    {
      sub_23C4B0A04(v44, 12, v43);
      sub_23C4B2DFC((v40 + 704), 10, *(*(a1 + 4080) + 16));
      sub_23C4B03D4(v40 + 704, v42 + v41);
      sub_23C4B1830(1uLL);
    }

    sub_23C4B0A04(v44, 10, v43);
    sub_23C4B03D4(v40 + 704, v42 + v41);
    operator new();
  }

  v45 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, &unk_27E1F744B, 0);
  v46 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, &unk_27E1F744C, 0);
  v47 = a1 + *(*a1 - 24);
  *(v47 + 774) = 1;
  v48 = *(v47 + 744);
  v49 = *(v47 + 736) - *(v47 + 752);
  sub_23C4B5F88((v47 + 704), v45);
  sub_23C4C521C((v47 + 704), v46);
  return sub_23C4B03D4(v47 + 704, v49 + v48);
}

uint64_t *sub_23C5133A0(uint64_t *a1, uint64_t a2)
{
  *a1 = 1;
  if (a2 > 0x39)
  {
    operator new();
  }

  *a1 = (a2 << 58) | 1;
  return a1;
}

void ***sub_23C51350C(void ***a1)
{
  v2 = *a1;
  if ((*a1 & 1) == 0 && v2)
  {
    if (*v2 != v2 + 2)
    {
      free(*v2);
    }

    MEMORY[0x23EED50C0](v2, 0x1080C40EF38A13ELL);
  }

  return a1;
}

uint64_t sub_23C513568(void *a1, uint64_t *a2, unsigned int a3)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = llvm::ConstantFP::get();
  }

  v5 = llvm::User::operator new(0x58);
  v15[0] = "agc.vertex_point_size_adjust";
  v16 = 259;
  v6 = llvm::GlobalVariable::GlobalVariable();
  *(v6 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  sub_23C506A1C(a1 + *(*a1 - 24), v5, 0x15u, 0);
  v7 = (a1 + *(*a1 - 24));
  v16 = 257;
  v8 = sub_23C497C88(v7 + 1, **(*v5 + 16), v5, 0, v15);
  v9 = *v4;
  v14 = 257;
  v10 = sub_23C49FEB4((v7 + 1), v8, v9, v13);
  v11 = a1 + *(*a1 - 24);
  v16 = 257;
  return sub_23C4A0BD4((v11 + 8), v4, v10, v15);
}

uint64_t sub_23C513724(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  sub_23C4B8D20();
  sub_23C4B8DA4();
  v10 = *(*(a2 + 16) + 8 * a3);
  v11 = sub_23C504F18(a1 + *(*a1 - 24), v10, &v32);
  if ((*(v10 + 8) & 0xFE) == 0x12)
  {
    v12 = *(v10 + 32);
  }

  else
  {
    v12 = 1;
  }

  v31 = 0;
  v33 = 2;
  v13 = sub_23C506AF0(0, a4, &v33, &v31);
  v14 = a4 - 8 * *(a4 + 8);
  v15 = *(v14 + 24);
  if (v15 && *v15)
  {
    v15 = 0;
  }

  v16 = *(v14 + 32);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  v18 = v13 ^ 1;
  if (!v15)
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0 && !*v16)
  {
    String = llvm::MDString::getString(v15);
    v21 = *(*sub_23C4B8E28(String, v20) + 8);
    v22 = llvm::MDString::getString(v16);
    v24 = *(*sub_23C4B8F30(v22, v23) + 8);
    if (v21 == 1)
    {
      v24 = 3;
    }

    v25 = v31;
    if (v11 == 1)
    {
      v26 = 6;
    }

    else
    {
      v26 = 3;
    }

    if (v11 == 1)
    {
      v27 = 5;
    }

    else
    {
      v27 = 2;
    }

    if (v11 == 1)
    {
      v28 = 4;
    }

    else
    {
      v28 = 1;
    }

    if (v21)
    {
      v28 = v24;
    }

    if (v21 != 1)
    {
      v27 = v28;
    }

    if (v21 == 2)
    {
      v29 = v26;
    }

    else
    {
      v29 = v27;
    }

    *a5 = v12;
    *(a5 + 4) = v11;
    *(a5 + 8) = v21;
    *(a5 + 12) = v24;
    *(a5 + 16) = v25;
    if (*(a5 + 47) < 0)
    {
      operator delete(*(a5 + 24));
    }

    *(a5 + 40) = 0u;
    *(a5 + 24) = 0u;
    *(a5 + 56) = v11 == 1;
    *(a5 + 57) = 0;
    *(a5 + 60) = v29;
    return 1;
  }

  return v17;
}

uint64_t sub_23C5138DC(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v20 = 0;
  v18[0] = 1;
  result = sub_23C506AF0(0, a3, v18, &v20);
  v10 = *a2;
  if (*a2)
  {
    v11 = *(*a2 + 8) == 18;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v13 = *(v10 + 32);
    if (v13)
    {
      v14 = 0;
      v15 = 4 * v20;
      do
      {
        v16 = a1 + *(*a1 - 24);
        v19 = 257;
        v17 = llvm::ConstantInt::get();
        result = sub_23C5057E8((v16 + 8), a2, v17, v18);
        *a5 |= 1 << (v15 + v14);
        *(a4 + 8 * (v15 + v14++)) = result;
      }

      while (v13 != v14);
    }
  }

  else if (*(a1 + *(*a1 - 24) + 160) == v10)
  {
    v12 = 4 * v20;
    *a5 |= 1 << (4 * v20);
    *(a4 + 8 * v12) = a2;
  }

  return result;
}

uint64_t sub_23C513A58(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 4120);
  if (v2)
  {
    return *(v2 + 2 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C513A70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4128);
  if (*v2 > a2)
  {
    return v2[a2 + 1];
  }

  return a2;
}

uint64_t sub_23C513A94(uint64_t *a1)
{
  v81 = *MEMORY[0x277D85DE8];
  sub_23C529E64(a1);
  Int8PtrTy = llvm::Type::getInt8PtrTy(*(a1 + *(*a1 - 24) + 336), 2);
  v3 = *(a1 + *(*a1 - 24) + 192);
  v79[0] = Int8PtrTy;
  v79[1] = v3;
  llvm::StructType::get();
  v4 = a1 + 20;
  v5 = *(a1[20] + 80);
  if (v5)
  {
    v6 = (v5 - 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = *a1;
  if (*(*(a1 + *(*a1 - 24) + 344) + 1653))
  {
    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v6);
    sub_23C4FE424(v6, &FirstInsertionPt);
    sub_23C497720(a1 + *(*a1 - 24) + 8, v6, FirstInsertionPt);
    v8 = *(a1 + 1027);
    if (v8 != -1)
    {
      v9 = a1 + *(*a1 - 24);
      v10 = sub_23C52B4D8(a1, v8);
      v11 = *(a1 + *(*a1 - 24) + 192);
      v80 = 257;
      v12 = sub_23C49ACF8((v9 + 8), 49, v10, v11, v79);
      v13 = *(a1 + *(*a1 - 24) + 200);
      v78 = 257;
      sub_23C49ACF8((v9 + 8), 39, v12, v13, v77);
    }

    v28 = *(a1 + 1026);
    if (v28 != -1)
    {
      v29 = a1 + *(*a1 - 24);
      v30 = sub_23C52B4D8(a1, v28);
      v31 = *(a1 + *(*a1 - 24) + 192);
      v80 = 257;
      v32 = sub_23C49ACF8((v29 + 8), 49, v30, v31, v79);
      v33 = *(a1 + *(*a1 - 24) + 200);
      v78 = 257;
      sub_23C49ACF8((v29 + 8), 39, v32, v33, v77);
    }

    v34 = llvm::User::operator new(0x58);
    v79[0] = "agc.primitive_buffer_path";
    v80 = 259;
    v35 = llvm::GlobalVariable::GlobalVariable();
    *(v35 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    sub_23C506A1C(a1 + *(*a1 - 24), v34, 0x1Au, 0);
    v80 = 257;
    a1[509] = llvm::BasicBlock::splitBasicBlock();
    v79[0] = "primbuf_path";
    v80 = 259;
    operator new();
  }

  a1[509] = v6;
  v14 = a1 + *(v7 - 24);
  v15 = llvm::BasicBlock::getFirstInsertionPt(v6);
  if (v15)
  {
    v16 = v15 - 24;
  }

  else
  {
    v16 = 0;
  }

  sub_23C4C30FC((v14 + 8), v16);
  v71 = *(a1 + 976);
  if (v71)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *(a1[487] + 4 * v17);
      v20 = *(a1[517] + 4 * v19);
      v21 = a1[514];
      llvm::FixedVectorType::get();
      v22 = llvm::UndefValue::get();
      if (v20)
      {
        v73 = v21;
        for (i = 0; i != v20; ++i)
        {
          v24 = a1 + *(*a1 - 24);
          v25 = sub_23C52B4D8(a1, v18 + i);
          v80 = 257;
          v26 = llvm::ConstantInt::get();
          v22 = sub_23C505AA8((v24 + 8), v22, v25, v26, v79);
        }

        v18 += i;
        v27 = sub_23C515B0C(a1, *(v73 + 4 * v19), v22, v20);
        v4 = a1 + 20;
      }

      else
      {
        v27 = sub_23C515B0C(a1, *(v21 + 4 * v19), v22, 0);
      }

      a1[v19 + 493] = v27;
      v17 = (v17 + 1);
    }

    while (v17 != v71);
  }

  Function = llvm::Module::getFunction();
  v37 = Function;
  if (Function)
  {
    v38 = *(*(Function + 8) + 24);
  }

  else
  {
    v38 = 0;
  }

  v39 = a1[509];
  v77[0] = 0;
  v40 = a1[20];
  v72 = v38;
  if (*(v40 + 18))
  {
    llvm::Function::BuildLazyArguments(v40);
    v42 = *v4;
    v41 = *(v40 + 88);
    if (*(v42 + 9))
    {
      llvm::Function::BuildLazyArguments(v42);
    }

    v40 = v42;
  }

  else
  {
    v41 = *(v40 + 88);
  }

  v43 = *(v40 + 88) + 40 * *(v40 + 96);
  if (v41 != v43)
  {
    v44 = a1 + 1;
    v45 = 0x747265762E726961;
    v46 = 0x7475706E695F7865;
    do
    {
      if (*(v41 + 8))
      {
        v47 = *(v39 + 40);
        v48 = v47 ? v47 - 24 : 0;
        sub_23C4C30FC(v44 + *(*a1 - 24), v48);
        v49 = *(v41 + 32);
        v50 = *(a1[9] + 8 * v49);
        if ((sub_23C52EDE4(a1, v41, v49, v50) & 1) == 0)
        {
          String = llvm::MDString::getString(*(v50 - 8 * *(v50 + 8) + 8));
          if (v52 == 16 && *String == v45 && String[1] == v46)
          {
            v54 = *(v50 - 8 * *(v50 + 8) + 16);
            if (v54)
            {
              if (*v54)
              {
                v55 = 0;
              }

              else
              {
                v55 = *(v50 - 8 * *(v50 + 8) + 16);
              }
            }

            else
            {
              v55 = 0;
            }

            v56 = llvm::MDString::getString(v55);
            if (v57 == 12 && (*v56 == 0x61636F6C2E726961 ? (v58 = *(v56 + 8) == 1852795252) : (v58 = 0), v58))
            {
              v67 = *(*(v41 + 8) + 24);
              LODWORD(v79[0]) = 3;
              sub_23C506AF0(0, v50, v79, v77);
              sub_23C514EB4(a1, v67[1], v77[0], 0);
              llvm::Instruction::eraseFromParent(v67);
            }

            else
            {
              v76[0] = 0;
              LODWORD(v79[0]) = 3;
              sub_23C506AF0(0, v50, v79, v76);
              v59 = v76[0];
              v60 = v37;
              v61 = v46;
              v62 = v45;
              v63 = a1[514];
              v74 = a1[v76[0] + 493];
              v64 = *(a1[509] + 40);
              if (v64)
              {
                v65 = v64 - 24;
              }

              else
              {
                v65 = 0;
              }

              sub_23C4C30FC(v44 + *(*a1 - 24), v65);
              v66 = (v63 + 4 * v59);
              v45 = v62;
              v46 = v61;
              v37 = v60;
              sub_23C514FDC(a1, v66, *v41, v74);
              llvm::Value::replaceAllUsesWith();
            }
          }
        }
      }

      v41 += 40;
    }

    while (v41 != v43);
  }

  if (v37)
  {
    if (v72)
    {
      if (llvm::Value::getNumUses(v72))
      {
        sub_23C514EB4(a1, v37[1], *(a1[514] + 84), 3);
      }

      else
      {
        llvm::Instruction::eraseFromParent(v72);
      }
    }

    llvm::Function::eraseFromParent(v37);
  }

  v68 = llvm::Module::getFunction();
  if (v68)
  {
    v69 = v68;
    sub_23C514EB4(a1, *(v68 + 8), WORD2(*(a1[514] + 80)) >> 8, 1);
    llvm::Function::eraseFromParent(v69);
  }

  return 1;
}

uint64_t *sub_23C514EB4(uint64_t *result, uint64_t a2, int a3, int a4)
{
  if (a2)
  {
    v5 = a2;
    v6 = result;
    v7 = result[514];
    v8 = result + 24;
    v9 = result + 1;
    v10 = a4 & 0xFFFFFFFD;
    v11 = result + 493;
    do
    {
      v12 = *(v5 + 24);
      v5 = *(v5 + 8);
      v13 = *v6;
      v14 = v12;
      if (v10 == 1)
      {
        v14 = (v8 + *(v13 - 24));
      }

      v15 = *v14;
      sub_23C4C30FC(v9 + *(v13 - 24), v12);
      v16 = v6[514];
      v17 = *(v16 + 80);
      if (*(v16 + 80))
      {
        v18 = 0;
        while (*(v7 + 4 * v18) != a3)
        {
          if (v17 == ++v18)
          {
            v19 = 0;
            LODWORD(v18) = v17;
            goto LABEL_12;
          }
        }

        v19 = v11[v18];
      }

      else
      {
        LODWORD(v18) = 0;
        v19 = 0;
      }

LABEL_12:
      sub_23C514FDC(v6, (v7 + 4 * v18), v15, v19);
      llvm::Value::replaceAllUsesWith();
      result = llvm::Instruction::eraseFromParent(v12);
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_23C514FDC(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v79 = *MEMORY[0x277D85DE8];
  if ((*(a3 + 8) & 0xFE) == 0x12)
  {
    v8 = *(a3 + 32);
    v5 = **(a3 + 16);
  }

  else
  {
    v8 = 1;
  }

  v9 = (a1 + *(*a1 - 24));
  if (v5 == v9[20] || v5 == v9[19])
  {
    if (a2[2] - 9 >= 2)
    {
      llvm::FixedVectorType::get();
    }

    v11 = llvm::ConstantFP::get();
    v10 = llvm::ConstantFP::get();
    v13 = *a2;
    if ((*a2 & 0x1000000) == 0)
    {
      v14 = BYTE2(v13);
      if (v14 <= 0xA)
      {
        if (((1 << v14) & 0xAC) != 0)
        {
LABEL_43:
          v15 = a1 + *(*a1 - 24);
          v16 = a4;
          v17 = 1;
          goto LABEL_44;
        }

        if (((1 << v14) & 0x150) != 0)
        {
          v15 = a1 + *(*a1 - 24);
          v16 = a4;
          v17 = 0;
LABEL_44:
          v32 = sub_23C504E2C(v15, v16, v17);
LABEL_63:
          v12 = v32;
          goto LABEL_64;
        }

        if (((1 << v14) & 0x600) != 0)
        {
          v30 = a1 + *(*a1 - 24);
          v31 = *(v30 + 43);
          v70 = *(v30 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v71, (v30 + 8));
          v72 = *(v30 + 26);
          v12 = (*(*v31 + 104))(v31, &v70, 5, *(a1 + *(*a1 - 24) + 160), a4, 0, a2[2] << 16 == 589824);
          if (!v71)
          {
            goto LABEL_64;
          }

          goto LABEL_60;
        }
      }

      if (v14 != 1)
      {
        if (v14)
        {
          goto LABEL_9;
        }

        goto LABEL_43;
      }

      v19 = sub_23C504E2C(a1 + *(*a1 - 24), a4, 1);
LABEL_62:
      v47 = llvm::ConstantFP::get();
      v48 = a1 + *(*a1 - 24);
      v74 = 257;
      v32 = sub_23C49EA2C((v48 + 8), v19, v47, v73);
      goto LABEL_63;
    }

    v12 = 0;
    v18 = BYTE2(v13);
    if (v18 > 6)
    {
      if ((v18 - 9) < 2)
      {
        v28 = a1 + *(*a1 - 24);
        v29 = *(v28 + 43);
        v64 = *(v28 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v65, (v28 + 8));
        v66 = *(v28 + 26);
        v12 = (*(*v29 + 104))(v29, &v64, 5, *(a1 + *(*a1 - 24) + 160), a4, 1, a2[2] << 16 == 589824);
        if (!v65)
        {
          goto LABEL_64;
        }

LABEL_60:
        llvm::MetadataTracking::untrack();
        goto LABEL_64;
      }

      if (v18 != 7)
      {
        if (v18 != 8)
        {
          goto LABEL_64;
        }

        v24 = 0;
        goto LABEL_35;
      }

      v44 = 8;
    }

    else
    {
      if (v18 <= 4)
      {
        if (v18 == 3)
        {
          v37 = sub_23C504E2C(a1 + *(*a1 - 24), a4, 1);
          v38 = llvm::ConstantFP::get();
          v39 = llvm::ConstantFP::get();
          v40 = a1 + *(*a1 - 24);
          v74 = 257;
          v41 = sub_23C49EA2C((v40 + 8), v37, v38, v73);
          v42 = a1 + *(*a1 - 24);
          v43 = *(v42 + 43);
          v67 = *(v42 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v68, (v42 + 8));
          v69 = *(v42 + 26);
          v12 = (*(*v43 + 56))(v43, &v67, v41, v39, 0);
          if (!v68)
          {
            goto LABEL_64;
          }

          goto LABEL_60;
        }

        if (v18 != 4)
        {
          goto LABEL_64;
        }

        v19 = sub_23C504E2C(a1 + *(*a1 - 24), a4, 0);
        goto LABEL_62;
      }

      if (v18 != 5)
      {
        v24 = 0;
        v18 = 16;
LABEL_35:
        v60 = v18;
        goto LABEL_59;
      }

      v44 = 16;
    }

    v60 = v44;
    v24 = 1;
LABEL_59:
    v45 = a1 + *(*a1 - 24);
    v46 = *(v45 + 43);
    v61 = *(v45 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v62, (v45 + 8));
    v63 = *(v45 + 26);
    v12 = (*(*v46 + 88))(v46, &v61, a4, v60, v24, 32);
    if (!v62)
    {
      goto LABEL_64;
    }

    goto LABEL_60;
  }

  if (v5 != v9[24] && v5 != v9[23])
  {
    v10 = 0;
    v11 = 0;
LABEL_9:
    v12 = 0;
    goto LABEL_64;
  }

  v10 = 0;
  v20 = a2[2];
  if (v20 <= 0xA)
  {
    if (((1 << v20) & 0x2A8) != 0)
    {
      v21 = llvm::FixedVectorType::get();
      v11 = llvm::ConstantInt::get();
      v10 = llvm::ConstantInt::get();
      if (llvm::Type::getScalarSizeInBits(*a4) <= 0x1F)
      {
        v25 = a1 + *(*a1 - 24);
        v74 = 257;
        v26 = (v25 + 8);
        v27 = 40;
LABEL_50:
        v32 = sub_23C49ACF8(v26, v27, a4, v21, v73);
        goto LABEL_63;
      }
    }

    else
    {
      if (((1 << v20) & 0x550) == 0)
      {
        v11 = 0;
        v12 = 0;
        if (a2[2])
        {
          goto LABEL_64;
        }

        v35 = llvm::FixedVectorType::get();
        v11 = llvm::ConstantInt::get();
        v10 = llvm::ConstantInt::get();
        v36 = a1 + *(*a1 - 24);
        v74 = 257;
        v32 = sub_23C4BB4D4((v36 + 8), a4, v35, v73);
        goto LABEL_63;
      }

      v21 = llvm::FixedVectorType::get();
      v11 = llvm::ConstantInt::get();
      v10 = llvm::ConstantInt::get();
      v22 = *a4;
      if ((*(*a4 + 8) & 0xFE) == 0x12)
      {
        v23 = *(**(v22 + 2) + 8);
      }

      else
      {
        v23 = *(*a4 + 8);
      }

      if (v23 <= 6)
      {
        v33 = a1 + *(*a1 - 24);
        v74 = 257;
        v32 = sub_23C49B2C8((v33 + 8), a4, v21, v73);
        goto LABEL_63;
      }

      if (llvm::Type::getScalarSizeInBits(v22) <= 0x1F)
      {
        v34 = a1 + *(*a1 - 24);
        v74 = 257;
        v26 = (v34 + 8);
        v27 = 39;
        goto LABEL_50;
      }
    }

    v12 = a4;
    goto LABEL_64;
  }

  v11 = 0;
  v12 = 0;
LABEL_64:
  v49 = *(*v12 + 8);
  v50 = *a2;
  if ((*a2 & 0x2000000) != 0)
  {
    v75 = llvm::ConstantInt::get();
    v76 = llvm::ConstantInt::get();
    v77 = llvm::ConstantInt::get();
    v78 = llvm::ConstantInt::get();
    v51 = llvm::ConstantVector::get();
    v52 = (a1 + *(*a1 - 24));
    v53 = llvm::UndefValue::get();
    v74 = 257;
    v12 = sub_23C49A3AC(v52 + 1, v12, v53, v51, v73);
    v50 = *a2;
  }

  v54 = BYTE1(v50);
  v55 = BYTE1(v50) + 1;
  if (v49 > v55)
  {
    v12 = sub_23C505670(a1 + *(*a1 - 24), v12, v55, 0);
  }

  if (v8 == 1 || v8 <= v54)
  {
    v12 = sub_23C505670(a1 + *(*a1 - 24), v12, v8, 1);
  }

  else if (v8 > v55)
  {
    v12 = sub_23C50593C(a1 + *(*a1 - 24), v12, v8, a4);
    do
    {
      if (v55 == 3)
      {
        v56 = v10;
      }

      else
      {
        v56 = v11;
      }

      v57 = a1 + *(*a1 - 24);
      v74 = 257;
      v58 = llvm::ConstantInt::get();
      v12 = sub_23C505AA8((v57 + 8), v12, v56, v58, v73);
      ++v55;
    }

    while (v8 != v55);
  }

  return sub_23C505300((a1 + *(*a1 - 24)), v12, v5);
}

unsigned __int8 *sub_23C515B0C(void *a1, int a2, unsigned __int8 *a3, _BOOL8 a4)
{
  result = 0;
  if (BYTE2(a2) <= 4u)
  {
    if (BYTE2(a2) > 2u)
    {
      goto LABEL_11;
    }

    if (!BYTE2(a2))
    {
      return a3;
    }

    if (BYTE2(a2) == 1)
    {
LABEL_11:
      v11 = llvm::FixedVectorType::get();
      v13 = a1 + *(*a1 - 24);
      v14 = "as_i32";
    }

    else
    {
      v11 = llvm::FixedVectorType::get();
      v13 = a1 + *(*a1 - 24);
      v14 = "as_half";
    }

    goto LABEL_14;
  }

  if (BYTE2(a2) > 0xAu)
  {
    return result;
  }

  if (((1 << SBYTE2(a2)) & 0x60) != 0)
  {
    v11 = llvm::FixedVectorType::get();
    v13 = a1 + *(*a1 - 24);
    v14 = "as_i16";
LABEL_14:
    v15[0] = v14;
    v16 = 259;
    v12 = (v13 + 8);
    v9 = a3;
    return sub_23C49ACF8(v12, 49, v9, v11, v15);
  }

  if (((1 << SBYTE2(a2)) & 0x180) != 0)
  {
    v11 = llvm::FixedVectorType::get();
    v13 = a1 + *(*a1 - 24);
    v14 = "as_i8";
    goto LABEL_14;
  }

  if (((1 << SBYTE2(a2)) & 0x600) == 0)
  {
    return result;
  }

  v7 = a1 + *(*a1 - 24);
  v16 = 257;
  v8 = llvm::ConstantInt::get();
  v9 = sub_23C5057E8((v7 + 8), a3, v8, v15);
  v10 = a1 + *(*a1 - 24);
  v11 = *(v10 + 24);
  v15[0] = "as_packed_i32";
  v16 = 259;
  v12 = (v10 + 8);
  return sub_23C49ACF8(v12, 49, v9, v11, v15);
}

uint64_t sub_23C515D78(uint64_t *a1)
{
  sub_23C4FE97C(a1);
  v2 = a1[514];
  v3 = *(v2 + 80);
  if (*(v2 + 80))
  {
    v4 = 0;
    do
    {
      v5 = a1[487];
      v6 = *(a1 + 976);
      v7 = v5;
      if (v6)
      {
        v8 = 4 * v6;
        v7 = a1[487];
        while (*(a1[514] + 4 * v4) >= *(a1[514] + 4 * *v7))
        {
          ++v7;
          v8 -= 4;
          if (!v8)
          {
            goto LABEL_13;
          }
        }
      }

      if (&v5[v6] == v7)
      {
LABEL_13:
        sub_23C4A72DC((a1 + 487), v4);
      }

      else
      {
        if (v6 >= *(a1 + 977))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = a1[487];
        v10 = (v9 + v7 - v5);
        *(v9 + 4 * v6) = *(v9 + 4 * v6 - 4);
        v11 = *(a1 + 976);
        v12 = v9 + 4 * v11 - 4;
        if (v12 != v10)
        {
          memmove(v10 + 1, v10, v12 - v10);
          LODWORD(v11) = *(a1 + 976);
        }

        *(a1 + 976) = v11 + 1;
        *v10 = v4;
      }

      ++v4;
    }

    while (v4 != v3);
  }

  v13 = *(a1 + 976);
  v14 = a1[518];
  v15 = a1[517];
  v16 = (v14 - v15) >> 2;
  if (v13 > v16)
  {
    v17 = v13 - v16;
    v18 = a1[519];
    if (v17 > (v18 - v14) >> 2)
    {
      v19 = v18 - v15;
      if (v19 >> 1 > v13)
      {
        v13 = v19 >> 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v13;
      }

      sub_23C4B1830(v20);
    }

    bzero(a1[518], 4 * v17);
    v21 = v14 + 4 * v17;
    goto LABEL_28;
  }

  if (v13 < v16)
  {
    v21 = v15 + 4 * v13;
LABEL_28:
    a1[518] = v21;
  }

  v22 = *(a1 + 976);
  if (v22)
  {
    v62 = 0;
    v23 = 0;
    v24 = 4 * v22;
    while (1)
    {
      v25 = *(a1[487] + v23);
      v26 = a1[514];
      v27 = *(v26 + 4 * v25);
      v28 = *(v26 + 4 * v25);
      v29 = *(v26 + 80);
      if (v28 == BYTE4(v29))
      {
        v30 = 0;
        v31 = 0;
        v32 = 3;
      }

      else if (v28 == BYTE5(v29))
      {
        v30 = 0;
        v31 = 1;
        v32 = 1;
      }

      else
      {
        v31 = 0;
        v32 = 0;
        v30 = 1;
      }

      if (BYTE2(v27) > 0xAu)
      {
        v35 = -1;
      }

      else
      {
        v33 = BYTE1(v27);
        v34 = dword_23C534E60[(v27 >> 16) & 0xF];
        v35 = (v34 + v34 * v33 + 3) >> 2;
      }

      *(a1[517] + 4 * v25) = v35;
      v36 = *(v26 + 4 * v25);
      v37 = *(a1 + 772);
      LODWORD(v63) = BYTE1(v36);
      DWORD1(v63) = v36;
      DWORD2(v63) = BYTE2(v36);
      HIDWORD(v63) = v37;
      v64 = v32;
      sub_23C51640C((a1 + 510), &v63);
      v38 = *a1;
      if (*(*(a1 + *(*a1 - 24) + 344) + 1653) != 1)
      {
        goto LABEL_47;
      }

      if (v30)
      {
        v35 = 0;
        HIDWORD(v62) |= *(a1[514] + 72) >> *(v26 + 4 * v25);
      }

      else
      {
        if (v28 != BYTE4(v29))
        {
          v35 = 0;
          HIDWORD(v62) |= v31;
          v39 = v31 | v62;
          goto LABEL_46;
        }

        v35 = 0;
      }

      v39 = 1;
LABEL_46:
      LODWORD(v62) = v39;
LABEL_47:
      *(a1 + 772) += v35;
      v23 += 4;
      if (v24 == v23)
      {
        goto LABEL_50;
      }
    }
  }

  v62 = 0;
  v38 = *a1;
LABEL_50:
  if ((*(*(a1 + *(v38 - 24) + 344) + 1654) & 1) == 0)
  {
    goto LABEL_75;
  }

  v40 = a1[20];
  if (*(v40 + 18))
  {
    llvm::Function::BuildLazyArguments(a1[20]);
    v42 = a1[20];
    v41 = *(v40 + 88);
    if (*(v42 + 18))
    {
      llvm::Function::BuildLazyArguments(a1[20]);
    }

    v40 = v42;
  }

  else
  {
    v41 = *(v40 + 88);
  }

  v43 = *(v40 + 88) + 40 * *(v40 + 96);
  if (v41 == v43)
  {
LABEL_75:
    v52 = 0;
    goto LABEL_76;
  }

  while (1)
  {
    v44 = *(a1[9] + 8 * *(v41 + 32));
    if (*(v41 + 8))
    {
      v45 = v44 == 0;
    }

    else
    {
      v45 = 1;
    }

    if (v45)
    {
      goto LABEL_74;
    }

    v46 = *(v44 - 8 * *(v44 + 8) + 8);
    if (*v46)
    {
      goto LABEL_74;
    }

    String = llvm::MDString::getString(v46);
    if (v48 != 29)
    {
      goto LABEL_74;
    }

    v49 = bswap64(*String);
    v50 = 0x6169722E76657274;
    if (v49 == 0x6169722E76657274)
    {
      v49 = bswap64(String[1]);
      v50 = 0x65785F7472616E73;
      if (v49 == 0x65785F7472616E73)
      {
        v49 = bswap64(String[2]);
        if (v49 == 0x666F726D5F666565)
        {
          v49 = bswap64(*(String + 21));
          if (v49 == 0x666565646261636BLL)
          {
            v51 = 0;
            goto LABEL_73;
          }

          v50 = 0x666565646261636BLL;
        }

        else
        {
          v50 = 0x666F726D5F666565;
        }
      }
    }

    v51 = v49 < v50 ? -1 : 1;
LABEL_73:
    if (!v51)
    {
      break;
    }

LABEL_74:
    v41 += 40;
    if (v41 == v43)
    {
      goto LABEL_75;
    }
  }

  v52 = 1;
LABEL_76:
  if (v62)
  {
    v53 = *(a1 + *(*a1 - 24) + 344);
    v54 = (*(*v53 + 312))(v53, a1 + 386, 4);
    v55 = *(a1[514] + 84);
    LODWORD(v63) = 0;
    *(&v63 + 4) = v55 | 0x300000000;
    HIDWORD(v63) = v54;
    v64 = 4;
    sub_23C51640C((a1 + 510), &v63);
    *(a1 + 1026) = v54;
  }

  if ((v62 & 0x100000000) != 0)
  {
    v56 = *(a1 + *(*a1 - 24) + 344);
    v57 = (*(*v56 + 312))(v56, a1 + 386, 2);
    v58 = (WORD2(*(a1[514] + 80)) >> 8);
    LODWORD(v63) = 0;
    *(&v63 + 4) = v58 | 0x300000000;
    HIDWORD(v63) = v57;
    v64 = 2;
    sub_23C51640C((a1 + 510), &v63);
    *(a1 + 1027) = v57;
  }

  if (v52)
  {
    v59 = *(a1 + *(*a1 - 24) + 344);
    v60 = (*(*v59 + 312))(v59, a1 + 386, 5);
    *&v63 = 0;
    DWORD2(v63) = 3;
    HIDWORD(v63) = v60;
    v64 = 5;
    sub_23C51640C((a1 + 510), &v63);
    *(a1 + 815) = v60;
  }

  return 1;
}

void sub_23C51640C(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 2) + 1;
    if (v9 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_23C496CE8();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xCCCCCCCCCCCCCCCLL)
      {
        operator new();
      }

      sub_23C496CE8();
    }

    v12 = 4 * (v8 >> 2);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 4);
    v6 = v12 + 20;
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
    *(v4 + 16) = *(a2 + 4);
    *v4 = v5;
    v6 = v4 + 20;
  }

  *(a1 + 8) = v6;
}

void sub_23C516540(void *a1)
{
  *a1 = &unk_284F1C880;
  v2 = a1 + 520;
  a1[520] = &unk_284F1CA80;
  v3 = a1[517];
  if (v3)
  {
    a1[518] = v3;
    operator delete(v3);
  }

  v4 = a1[510];
  if (v4)
  {
    a1[511] = v4;
    operator delete(v4);
  }

  v5 = a1[487];
  if (v5 != a1 + 489)
  {
    free(v5);
  }

  sub_23C52B334(a1, off_284F1CAE8);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C516610(void *a1)
{
  *a1 = &unk_284F1C880;
  v2 = a1 + 520;
  a1[520] = &unk_284F1CA80;
  v3 = a1[517];
  if (v3)
  {
    a1[518] = v3;
    operator delete(v3);
  }

  v4 = a1[510];
  if (v4)
  {
    a1[511] = v4;
    operator delete(v4);
  }

  v5 = a1[487];
  if (v5 != a1 + 489)
  {
    free(v5);
  }

  sub_23C52B334(a1, off_284F1CAE8);
  sub_23C4B130C(v2);
  return a1;
}

uint64_t sub_23C5166C0(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_23C4B1190(a1 + 4160, a2, *a3);
  v11 = sub_23C52B05C(a1, off_284F1CAE8, a3, a4, 1);
  *a1 = &unk_284F1C880;
  *(a1 + 4160) = &unk_284F1CA80;
  *(a1 + 3896) = a1 + 3912;
  *(a1 + 3904) = 0x800000000;
  *(a1 + 3944) = 0u;
  *(a1 + 3960) = 0u;
  *(a1 + 3976) = 0u;
  *(a1 + 3992) = 0u;
  *(a1 + 4008) = 0u;
  *(a1 + 4024) = 0u;
  *(a1 + 4040) = 0u;
  *(a1 + 4056) = 0u;
  *(a1 + 4080) = 0;
  *(a1 + 4088) = 0u;
  *(a1 + 4104) = -1;
  *(a1 + 4112) = a4;
  *(a1 + 4120) = a6;
  *(a1 + 4128) = a5;
  *(a1 + 4136) = 0u;
  *(a1 + 4152) = 0;
  *(a1 + 3116) = *(a4 + 88);
  sub_23C52F648(v11);
  return a1;
}

BOOL sub_23C5167F4(void *a1)
{
  v1 = a1;
  result = sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128));
  if (!result)
  {
    return result;
  }

  v3 = sub_23C503B2C(v1);
  v4 = sub_23C52A7B4(v1);
  v5 = v4;
  v6 = *(*v1 - 24);
  v7 = v1 + v6;
  v8 = *(v1 + v6 + 568);
  v94 = v1;
  v88 = v3;
  if (v8)
  {
    v9 = &v8[-*v8];
    if (*v9 >= 5u)
    {
      v10 = *(v9 + 2);
      if (v10)
      {
        v87 = v4;
        v11 = *&v8[v10];
        if (*&v8[v10 + v11])
        {
          v12 = 0;
          v92 = 0;
          v93 = 0;
          v13 = 0;
          v14 = 14;
          do
          {
            v96 = v12;
            v15 = v10;
            v16 = *&v8[v10 - 10 + v11 + v14];
            v17 = v11 + v10 + v16;
            v18 = &v8[v14 + v17];
            v19 = *(v18 - 10);
            v20 = *&v8[v14 - 10 + v17 - v19];
            if (v20 >= 0xB && (v21 = v11 + v15 + v16, *&v8[v21 - v19 + v14]))
            {
              v22 = *&v8[v21 - 10 + v14 + *&v8[v21 - v19 + v14]];
            }

            else
            {
              v22 = 0;
            }

            v23 = *(v1 + 986);
            v24 = v22 - v23;
            v95 = v13;
            if (v22 >= v23)
            {
              v7[774] = 1;
              if (v20 < 5)
              {
                v30 = 0;
                v12 = v96;
              }

              else
              {
                v28 = v11 + v15 + v16;
                v29 = *&v8[v14 - 6 + v28 - v19];
                v12 = v96;
                if (v29)
                {
                  v30 = *&v8[v28 - 10 + v14 + v29];
                }

                else
                {
                  v30 = 0;
                }
              }

              v41 = *(v7 + 186);
              v42 = *(v7 + 184) - *(v7 + 188);
              v43 = v1[558];
              sub_23C4B0A04(v7 + 88, 4, v30);
              sub_23C4B2DFC(v7 + 88, 6, *(v43 + 8 * v24 + 4));
              v44 = sub_23C4B03D4((v7 + 704), v42 + v41);
              v45 = v93;
              v46 = (v93 >> 2) + 1;
              if (v46 >> 62)
              {
                sub_23C496CE8();
              }

              if (v93 >> 2 != -1)
              {
                if (!(v46 >> 62))
                {
                  operator new();
                }

LABEL_71:
                sub_23C496CE8();
              }

              v52 = (4 * (v93 >> 2));
              *v52 = v44;
              v93 = (v52 + 1);
              memcpy(0, 0, v45);
            }

            else
            {
              v7[774] = 1;
              if (v20 >= 5 && (v25 = v11 + v15 + v16, (v26 = *&v8[v14 - 6 + v25 - v19]) != 0))
              {
                v27 = *&v8[v25 - 10 + v14 + v26];
              }

              else
              {
                v27 = 0;
              }

              v89 = *(v7 + 188);
              v90 = *(v7 + 184);
              v91 = *(v7 + 186);
              v31 = v1[492] + 32 * v22;
              sub_23C4B0A04(v7 + 88, 4, v27);
              sub_23C4B0A04(v7 + 88, 6, *(v31 + 4));
              sub_23C4B2DFC(v7 + 88, 8, *(v31 + 8));
              v32 = v11 + v15 + v16;
              v33 = &v8[v14 + v32 - *(v18 - 10)];
              if (*(v33 - 5) >= 7u && (v34 = *(v33 - 2)) != 0)
              {
                v35 = *&v8[v11 - 10 + v15 + v16 + v14 + v34];
              }

              else
              {
                v35 = 0;
              }

              sub_23C4B0A04(v7 + 88, 10, v35);
              v36 = *(v18 - 10);
              if (*&v8[v14 - 10 + v32 - v36] < 9u)
              {
                v40 = 0;
                v1 = v94;
                v39 = v96;
              }

              else
              {
                v37 = v11 + v15 + v16;
                v38 = *&v8[v14 - 2 + v37 - v36];
                v1 = v94;
                v39 = v96;
                if (v38)
                {
                  v40 = *&v8[v37 - 10 + v14 + v38];
                }

                else
                {
                  v40 = 0;
                }
              }

              sub_23C4B0A04(v7 + 88, 12, v40);
              sub_23C4B0A04(v7 + 88, 14, *(v31 + 20));
              sub_23C4B0A04(v7 + 88, 16, *(v31 + 24));
              sub_23C4B2DFC(v7 + 88, 18, *(v31 + 28));
              v47 = sub_23C4B03D4((v7 + 704), v90 - v89 + v91);
              v48 = v92 - v39;
              v49 = (v92 - v39) >> 2;
              v50 = v49 + 1;
              if ((v49 + 1) >> 62)
              {
                sub_23C496CE8();
              }

              if (-v39 >> 1 > v50)
              {
                v50 = -v39 >> 1;
              }

              if (-v39 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v51 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v51 = v50;
              }

              if (v51)
              {
                if (!(v51 >> 62))
                {
                  operator new();
                }

                goto LABEL_71;
              }

              *(4 * v49) = v47;
              v92 = 4 * v49 + 4;
              memcpy(0, v39, v48);
              v12 = 0;
            }

            v13 = v95 + 1;
            v6 = *(*v1 - 24);
            v7 = v1 + v6;
            v8 = *(v1 + v6 + 568);
            v10 = *&v8[-*v8 + 4];
            v11 = *&v8[v10];
            v14 += 4;
          }

          while (v95 + 1 < *&v8[v10 + v11]);
          v5 = v87;
          v8 = 0;
          v53 = v92;
        }

        else
        {
          v12 = 0;
          v8 = 0;
          v93 = 0;
          v53 = 0;
          v5 = v4;
        }

        goto LABEL_50;
      }
    }

    v12 = 0;
    v8 = 0;
  }

  else
  {
    v12 = 0;
  }

  v93 = 0;
  v53 = 0;
LABEL_50:
  v54 = v1 + v6;
  v55 = v53 - v12;
  v54[774] = 1;
  v56 = v53;
  sub_23C4B0AD0((v54 + 704), v53 - v12, 4uLL);
  sub_23C4B0AD0((v54 + 704), v55, 4uLL);
  v57 = v56 - v12;
  if (v57)
  {
    v58 = v12;
  }

  else
  {
    v58 = &unk_23C534EE8;
  }

  if (v57)
  {
    v59 = v57 >> 2;
    v60 = v58 - 4;
    do
    {
      v61 = v59 - 1;
      v62 = *&v60[4 * v59];
      sub_23C4B08D8((v54 + 704), 4uLL);
      sub_23C4B0A6C((v54 + 704), *(v54 + 184) - *(v54 + 188) + *(v54 + 186) - v62 + 4);
      v59 = v61;
    }

    while (v61);
  }

  v54[774] = 0;
  v63 = sub_23C4B0A6C((v54 + 704), v57 >> 2);
  v64 = v94 + *(*v94 - 24);
  v64[774] = 1;
  sub_23C4B0AD0((v64 + 704), v93 - v8, 4uLL);
  sub_23C4B0AD0((v64 + 704), v93 - v8, 4uLL);
  v65 = v93 - v8;
  if (v93 == v8)
  {
    v66 = &unk_23C534EE9;
  }

  else
  {
    v66 = v8;
  }

  if (v65)
  {
    v67 = v65 >> 2;
    v68 = v66 - 4;
    do
    {
      v69 = v67 - 1;
      v70 = *&v68[4 * v67];
      sub_23C4B08D8((v64 + 704), 4uLL);
      sub_23C4B0A6C((v64 + 704), *(v64 + 184) - *(v64 + 188) + *(v64 + 186) - v70 + 4);
      v67 = v69;
    }

    while (v69);
  }

  v64[774] = 0;
  v71 = sub_23C4B0A6C((v64 + 704), v65 >> 2);
  v72 = v94 + *(*v94 - 24);
  v72[774] = 1;
  v73 = *(v72 + 184);
  v74 = *(v72 + 188);
  v75 = *(v72 + 186);
  sub_23C4B0A04(v72 + 88, 4, *(v94 + 772));
  if (v63)
  {
    sub_23C4B08D8((v72 + 704), 4uLL);
    sub_23C4B0A04(v72 + 88, 6, (*(v72 + 184) - *(v72 + 188) + *(v72 + 186) - v63 + 4));
  }

  v76 = v73 - v74;
  if (v71)
  {
    sub_23C4B08D8((v72 + 704), 4uLL);
    sub_23C4B0A04(v72 + 88, 8, (*(v72 + 184) - *(v72 + 188) + *(v72 + 186) - v71 + 4));
  }

  v77 = sub_23C4B03D4((v72 + 704), v76 + v75);
  v78 = v94 + *(*v94 - 24);
  v78[774] = 1;
  v79 = *(v78 + 186);
  v80 = *(v78 + 184) - *(v78 + 188);
  sub_23C4B5F88(v78 + 88, v88);
  sub_23C4C521C(v78 + 88, v5);
  if (v77)
  {
    sub_23C4B08D8((v78 + 704), 4uLL);
    sub_23C4B0A04(v78 + 88, 12, (*(v78 + 184) - *(v78 + 188) + *(v78 + 186) - v77 + 4));
  }

  v81 = v94;
  v82 = v94 + *(*v94 - 24);
  v83 = sub_23C4B03D4((v78 + 704), v80 + v79);
  sub_23C4B1AD8((v82 + 704), v83);
  (*(**(v81 + *(*v81 - 24) + 344) + 440))();
  v84 = *(v81 + *(*v81 - 24) + 560);
  v85 = (v84 + *(v84 - *v84 + 4));
  v86 = (v85 + *v85 + *(v85 + *v85 - *(v85 + *v85) + 8));
  return *(v86 + *v86) < 0x21;
}

void sub_23C517184(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  sub_23C49F8D0(v26, "AGCVertexContextStateAGP");
  sub_23C49F8D0(v24, "mutableBuffers");
  v4 = *v3;
  sub_23C4B0E40(v30);
  v5 = sub_23C4AA520(&v31, "0x", 2);
  *(&v31 + *(v31 - 24) + 8) = *(&v31 + *(v31 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x23EED4FC0](v5, v4);
  std::stringbuf::str();
  sub_23C4B733C(v36, v24, __p);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  v30[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v30 + *(v30[0] - 3)) = *(MEMORY[0x277D82818] + 64);
  v31 = v6;
  v32 = MEMORY[0x277D82878] + 16;
  if (v34 < 0)
  {
    operator delete(v33[7].__locale_);
  }

  v32 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v33);
  std::iostream::~basic_iostream();
  MEMORY[0x23EED5050](v35);
  sub_23C49F8D0(v30, "genCompilerStatistics");
  sub_23C4B7004(&v36[1], v30, *(v3 + 3) & 1);
  sub_23C49F8D0(__p, "genTelemetryStatistics");
  sub_23C4B7004(&v36[2], __p, (*(v3 + 3) >> 1) & 1);
  sub_23C49F8D0(v22, "partition_mode");
  sub_23C4B705C(&v36[3], v22, off_278BBFFD0[(*(v3 + 3) >> 10) & 3]);
  sub_23C49F8D0(v20, "step_function");
  sub_23C4B705C(&v36[4], v20, off_278BBFFF0[(*(v3 + 3) >> 12) & 3]);
  sub_23C49F8D0(v18, "vertex_amplification_mode");
  sub_23C4B705C(&v36[5], v18, off_278BC0010[*(v3 + 3) >> 14]);
  sub_23C49F8D0(v16, "manufactureUnlinkedVaryings");
  sub_23C4B7004(&v36[6], v16, (*(v3 + 3) >> 20) & 1);
  sub_23C49F8D0(v14, "customBorderColor");
  sub_23C4B7004(&v36[7], v14, (*(v3 + 3) >> 21) & 1);
  sub_23C49F8D0(v12, "disableTextureRWBoundsCheck");
  sub_23C4B7004(&v36[8], v12, (*(v3 + 3) >> 22) & 1);
  sub_23C49F8D0(v10, "debugInstrumentationEnabled");
  sub_23C4B7004(&v36[9], v10, (*(v3 + 3) >> 23) & 1);
  sub_23C49F8D0(v8, "unused");
  sub_23C4B7004(&v36[10], v8, *(v3 + 15));
  sub_23C4B70B4(a2, v26, v36, 11);
  v7 = 11;
  do
  {
    if (SHIBYTE(v36[v7 - 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(*&v35[v7 * 24 + 128]);
    }

    --v7;
  }

  while (v7 * 24);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }
}

uint64_t sub_23C517660(uint64_t a1, llvm::AGX::CompileRequest *this)
{
  if (*(a1 + 3944))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      llvm::AGX::CompileRequest::addDMAListEntry(this);
      ++v5;
      v4 += 32;
    }

    while (v5 < *(a1 + 3944));
  }

  v6 = *(a1 + *(*a1 - 24) + 344);
  result = (*(*v6 + 320))(v6);
  if ((result & 1) == 0 && *(a1 + 4472))
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a1 + 3944);
    do
    {
      result = llvm::AGX::CompileRequest::addDMAListEntry(this);
      ++v9;
      ++v10;
      v8 += 8;
    }

    while (v9 < *(a1 + 4472));
  }

  return result;
}

void sub_23C517768(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = off_284F1F438;
  v4[568] = &off_284F1F630;
  v5 = v4[558];
  if (v5 != v4 + 560)
  {
    free(v5);
  }

  v6 = v4[492];
  if (v6 != v4 + 494)
  {
    free(v6);
  }

  sub_23C51784C((v4 + 487), a2, a3, a4);
  sub_23C52B334(v4, off_284F1D438);
  sub_23C4B130C((v4 + 568));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C51784C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(*a1 + v6);
        if (v8 != -8 && v8 != 0)
        {
          llvm::deallocate_buffer(v8, (*v8 + 17));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C5178EC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 3928) != 1)
  {
    return 0;
  }

  v25 = v2;
  v26 = v3;
  if (!*(a1 + 3908))
  {
    return 0;
  }

  v5 = *(a1 + 3896);
  if (*(a1 + 3904))
  {
    while (1)
    {
      v6 = *v5;
      if (*v5 && (v6 + 8) != 0)
      {
        break;
      }

      ++v5;
    }
  }

  else
  {
    v6 = *v5;
  }

  v8 = *(v6 + 2);
  v9 = BYTE2(v8);
  v10 = HIBYTE(v8) & 0x7F;
  v11 = v8;
  v12 = BYTE1(v8);
  v13 = *(a1 + 3932) + 1;
  *(a1 + 3932) = v13;
  v14 = v9 == 1;
  if (v9 == 1)
  {
    v15 = 6;
  }

  else
  {
    v15 = 3;
  }

  if (v9 == 1)
  {
    v16 = 5;
  }

  else
  {
    v16 = 2;
  }

  if (v9 == 1)
  {
    v17 = 4;
  }

  else
  {
    v17 = 1;
  }

  if (v11)
  {
    v17 = v12;
  }

  if (v11 != 1)
  {
    v16 = v17;
  }

  if (v11 == 2)
  {
    v18 = v15;
  }

  else
  {
    v18 = v16;
  }

  *a2 = v10;
  *(a2 + 4) = v9;
  *(a2 + 8) = v11;
  *(a2 + 12) = v12;
  *(a2 + 16) = v13;
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 56) = v14;
  *(a2 + 57) = 0;
  *(a2 + 60) = v18;
  v19 = **v5;
  v22[0] = *v5 + 16;
  v22[1] = v19;
  sub_23C4AE5DC(&__dst, v22);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  *(a2 + 24) = __dst;
  *(a2 + 40) = v24;
  v20 = *v5;
  llvm::StringMapImpl::RemoveKey();
  llvm::deallocate_buffer(v20, (*v20 + 17));
  return 1;
}

uint64_t sub_23C517A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v18[0] = a2;
  v18[1] = a3;
  Key = llvm::StringMapImpl::FindKey();
  if (Key == -1)
  {
    return 0;
  }

  v9 = Key;
  if (Key == *(a1 + 3904))
  {
    return 0;
  }

  v10 = *(a1 + 3896);
  v11 = *(*(v10 + 8 * Key) + 10);
  if ((v11 - 3) > 2)
  {
    return 0;
  }

  v12 = *(a1 + 3932) + 1;
  *(a1 + 3932) = v12;
  if (a5)
  {
    v13 = 10;
  }

  else
  {
    v13 = 2;
  }

  *a4 = 1;
  *(a4 + 4) = v11;
  *(a4 + 8) = 0x300000001;
  *(a4 + 16) = v12;
  if (*(a4 + 47) < 0)
  {
    operator delete(*(a4 + 24));
  }

  *(a4 + 56) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 57) = a5;
  *(a4 + 60) = v13;
  sub_23C4AE5DC(&__dst, v18);
  if (*(a4 + 47) < 0)
  {
    operator delete(*(a4 + 24));
  }

  *(a4 + 24) = __dst;
  *(a4 + 40) = v17;
  v14 = *(v10 + 8 * v9);
  llvm::StringMapImpl::RemoveKey();
  llvm::deallocate_buffer(v14, (*v14 + 17));
  return 1;
}

uint64_t sub_23C517BA8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{
  v33[0] = llvm::MDString::getString(*(a4 - 8 * *(a4 + 8) + 8));
  v33[1] = v11;
  Key = llvm::StringMapImpl::FindKey();
  if (Key == -1)
  {
    return 0;
  }

  v13 = Key;
  if (Key == *(a1 + 3904))
  {
    return 0;
  }

  v14 = *(a1 + 3896);
  v15 = *(*(v14 + 8 * Key) + 8);
  v16 = HIBYTE(v15) & 0x7F;
  v17 = *(*(a2 + 16) + 8 * a3);
  v18 = sub_23C504F18(a1 + *(*a1 - 24), v17, &__dst);
  v19 = (*(v17 + 8) & 0xFE) == 0x12 ? *(v17 + 32) : 1;
  if (BYTE2(v15) != v18 || v16 != v19)
  {
    return 0;
  }

  v22 = *(a1 + 3932) + 1;
  *(a1 + 3932) = v22;
  if (BYTE2(v15) == 1)
  {
    v23 = 6;
  }

  else
  {
    v23 = 3;
  }

  if (BYTE2(v15) == 1)
  {
    v24 = 14;
  }

  else
  {
    v24 = 11;
  }

  if (a6)
  {
    v23 = v24;
  }

  if (BYTE2(v15) == 1)
  {
    v25 = 5;
  }

  else
  {
    v25 = 2;
  }

  if (BYTE2(v15) == 1)
  {
    v26 = 13;
  }

  else
  {
    v26 = 10;
  }

  if (a6)
  {
    v25 = v26;
  }

  if (BYTE2(v15) == 1)
  {
    v27 = 4;
  }

  else
  {
    v27 = 1;
  }

  if (BYTE2(v15) == 1)
  {
    v28 = 12;
  }

  else
  {
    v28 = 9;
  }

  if (a6)
  {
    v27 = v28;
  }

  if (v15)
  {
    v27 = v15;
  }

  if (v15 != 1)
  {
    v25 = v27;
  }

  if (v15 == 2)
  {
    v29 = v23;
  }

  else
  {
    v29 = v25;
  }

  *a5 = v16;
  *(a5 + 4) = BYTE2(v15);
  *(a5 + 8) = v15;
  *(a5 + 12) = BYTE1(v15);
  *(a5 + 16) = v22;
  if (*(a5 + 47) < 0)
  {
    operator delete(*(a5 + 24));
  }

  *(a5 + 40) = 0u;
  *(a5 + 24) = 0u;
  *(a5 + 56) = BYTE2(v15) == 1;
  *(a5 + 57) = a6;
  *(a5 + 60) = v29;
  sub_23C4AE5DC(&__dst, v33);
  if (*(a5 + 47) < 0)
  {
    operator delete(*(a5 + 24));
  }

  *(a5 + 24) = __dst;
  *(a5 + 40) = v32;
  v30 = *(v14 + 8 * v13);
  llvm::StringMapImpl::RemoveKey();
  llvm::deallocate_buffer(v30, (*v30 + 17));
  return 1;
}

unsigned __int8 *sub_23C517DD4(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4, _DWORD *a5)
{
  v8 = result;
  v9 = *a2;
  if (*a2)
  {
    v10 = *(*a2 + 8) == 18;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v21 = 0;
    v19[0] = 1;
    result = sub_23C506AF0(0, a3, v19, &v21);
    v14 = *(v9 + 32);
    if (v14)
    {
      v15 = 0;
      v16 = 4 * v21;
      do
      {
        v17 = &v8[*(*v8 - 24)];
        v20 = 257;
        v18 = llvm::ConstantInt::get();
        result = sub_23C5057E8((v17 + 8), a2, v18, v19);
        *a5 |= 1 << (v16 + v15);
        a4[(v16 + v15++)] = result;
      }

      while (v14 != v15);
    }
  }

  else if (v9 == *&result[*(*result - 24) + 160])
  {
    *a5 |= 1u;
    *a4 = a2;
  }

  else
  {
    v11 = *(v9 + 32);
    *a5 |= ~(-1 << v11);
    v21 = 0;
    if (v11)
    {
      do
      {
        v12 = *(*v8 - 24);
        v20 = 257;
        result = sub_23C49B32C(&v8[v12 + 8], a2, &v21, 1, v19);
        v13 = v21;
        a4[v21] = result;
        v21 = v13 + 1;
      }

      while (v13 + 1 < v11);
    }
  }

  return result;
}

uint64_t sub_23C517FDC(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = sub_23C5240B0(a1);
  v3 = v2;
  v4 = a1 + *(*a1 - 24);
  if (**(*(*(a1 + 160) + 24) + 16) == *(v4 + 144) && *(*(v4 + 344) + 1639) == 1)
  {
    v43.__r_.__value_.__r.__words[0] = llvm::ConstantFP::get();
    v43.__r_.__value_.__l.__size_ = v43.__r_.__value_.__r.__words[0];
    v43.__r_.__value_.__r.__words[2] = v43.__r_.__value_.__r.__words[0];
    v44 = llvm::ConstantFP::get();
    v5 = llvm::ConstantVector::get();
    v6 = a1 + *(*a1 - 24);
    v7 = *(a1 + 3288);
    v8 = *(a1 + 3304);
    v9 = *(a1 + 3296);
    v45 = 257;
    v10 = sub_23C49ADDC(v6 + 8, v8, v9, &v43);
    v40 = 257;
    v11 = sub_23C49A474(v6 + 8, v7, v10, &__dst);
    v2 = sub_23C5288D0(a1, v5, v11, 0, 0, *(a1 + 3156));
  }

  v12 = *(a1 + 3908);
  if (v12)
  {
    sub_23C4AA240(v2, "Following fragment input(s) mismatching vertex shader output type(s) or not written by vertex shader: ");
    v14 = *(a1 + 3904);
    if (v14)
    {
        ;
      }
    }

    else
    {
      i = *(a1 + 3896);
    }

    v17 = *(a1 + 3896) + 8 * v14;
    if (i != v17)
    {
      v18 = *i;
      do
      {
        sub_23C4AA240(v13, "\t%s", (v18 + 16));
        do
        {
          v19 = i[1];
          ++i;
          v18 = v19;
          if (v19)
          {
            v20 = v18 == -8;
          }

          else
          {
            v20 = 1;
          }
        }

        while (v20);
      }

      while (i != v17);
    }

    v21 = *(a1 + 3904);
    if (v21)
    {
        ;
      }
    }

    else
    {
      j = *(a1 + 3896);
    }

    v24 = *(a1 + 3896) + 8 * v21;
    if (j != v24)
    {
      v25 = &unk_23C53F34D;
      v26 = a1 + 408;
      do
      {
        std::string::append((v26 + *(*a1 - 24)), v25);
        v27 = **j;
        v37[0] = *j + 2;
        v37[1] = v27;
        sub_23C4AE5DC(&__str, v37);
        __idx = 0;
        v28 = std::string::find(&__str, "generated(", 0, 0xAuLL);
        if (v28 == -1)
        {
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_23C49F988(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = __str;
          }
        }

        else
        {
          std::string::basic_string(&v43, &__str, v28 + 10, 0xFFFFFFFFFFFFFFFFLL, &__dst);
          v29 = std::stoi(&v43, &__idx, 10);
          std::string::basic_string(&__dst, &v43, __idx, v29, &v42);
          if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v43.__r_.__value_.__l.__data_);
          }
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        std::string::append((v26 + *(*a1 - 24)), p_dst, size);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        do
        {
          v33 = j[1];
          ++j;
          v32 = v33;
          if (v33)
          {
            v34 = v32 + 1 == 0;
          }

          else
          {
            v34 = 1;
          }
        }

        while (v34);
        v25 = ",";
      }

      while (j != v24);
    }
  }

  if (*(a1 + 3144) == 1)
  {
    llvm::Module::getOrInsertNamedMetadata();
    if (*(a1 + 3152) > 1u)
    {
      v35 = 0;
    }

    else
    {
      v35 = llvm::MDString::get();
    }

    v43.__r_.__value_.__r.__words[0] = v35;
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
  }

  if (v12)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23C5184A4(uint64_t a1)
{
  v103 = *MEMORY[0x277D85DE8];
  sub_23C529E64(a1);
  v2 = *(a1 + 160);
  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(*(a1 + 160));
    v4 = *(a1 + 160);
    v3 = *(v2 + 88);
    if (*(v4 + 18))
    {
      llvm::Function::BuildLazyArguments(*(a1 + 160));
    }

    v2 = v4;
  }

  else
  {
    v3 = *(v2 + 88);
  }

  for (i = *(v2 + 88) + 40 * *(v2 + 96); v3 != i; v3 += 40)
  {
    if (*(v3 + 8))
    {
      v6 = *(*(a1 + 160) + 80);
      v7 = v6 ? v6 - 24 : 0;
      v8 = *(v7 + 40);
      v9 = v8 ? v8 - 24 : 0;
      sub_23C4DB1C0(a1 + *(*a1 - 24), v9, *(a1 + 40));
      v10 = *(v3 + 32);
      v11 = *(*(a1 + 72) + 8 * v10);
      if ((sub_23C52EDE4(a1, v3, v10, v11) & 1) == 0)
      {
        if (sub_23C4A57A0(*(v11 - 8 * *(v11 + 8) + 8), "air.amplification_count"))
        {
          v14 = *(*a1 - 24);
          v15 = sub_23C527D50(a1, v12, v13);
          *(a1 + 3136) = sub_23C505300((a1 + v14), v15, *v3);
          llvm::Value::replaceAllUsesWith();
          *(a1 + 3145) = 1;
        }

        else if (sub_23C4A57A0(*(v11 - 8 * *(v11 + 8) + 8), "air.amplification_mask"))
        {
          v18 = *(*a1 - 24);
          v19 = sub_23C529724(a1, v16, v17);
          *(a1 + 3136) = sub_23C505300((a1 + v18), v19, *v3);
          llvm::Value::replaceAllUsesWith();
        }

        else if (sub_23C4A57A0(*(v11 - 8 * *(v11 + 8) + 8), "air.amplification_id"))
        {
          v21 = *(*a1 - 24);
          v22 = sub_23C527C64(a1, *(a1 + 3152), v20);
          *(a1 + 3128) = sub_23C505300((a1 + v21), v22, *v3);
          llvm::Value::replaceAllUsesWith();
          *(a1 + 3144) = 1;
        }
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v25 = *(*(a1 + 160) + 80);
  if (v25)
  {
    v26 = (v25 - 24);
  }

  else
  {
    v26 = 0;
  }

  v79 = v26;
  v27 = a1 + 8;
  v83 = 0;
  v78 = a1 + 8;
  v28 = a1 + 344;
  do
  {
    v77 = v23;
    v29 = &(&off_278BBFF90)[2 * v23];
    if (*v29)
    {
      strlen(*v29);
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      v76 = Function;
      v31 = *(Function + 8);
      if (v31)
      {
        v32 = *(v29 + 2);
        v80 = v32 << 32;
        do
        {
          v33 = *(v31 + 24);
          v31 = *(v31 + 8);
          if (v33[1])
          {
            if (v32 == 3)
            {
              v34 = v24;
            }

            else
            {
              v34 = v83;
            }

            if (!v34)
            {
              v35 = *(v28 + *(*a1 - 24));
              v36 = (*(*v35 + 312))(v35, a1 + 3088, v32);
              v37 = v32;
              v38 = v24;
              v39 = *(*a1 - 24);
              FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v79);
              sub_23C497720(v27 + v39, v79, FirstInsertionPt);
              v41 = *(*a1 - 24);
              v82 = v36;
              v42 = sub_23C52B4D8(a1, v36);
              v43 = *(a1 + 192 + *(*a1 - 24));
              LOWORD(v92) = 257;
              v44 = sub_23C49ACF8(v27 + v41, 49, v42, v43, v88);
              v45 = v44;
              v46 = v83;
              if (v37 == 3)
              {
                v47 = v83;
              }

              else
              {
                v47 = v44;
              }

              v81 = v38;
              if (v37 == 3)
              {
                v24 = v44;
              }

              else
              {
                v24 = v38;
              }

              v32 = v37;
              v48 = *(v28 + *(*a1 - 24));
              if ((*(*v48 + 328))(v48))
              {
                v49 = sub_23C4A0414(a1 + *(*a1 - 24), "air.get_base_instance.i32", 25, *(a1 + *(*a1 - 24) + 192));
                v50 = *(*a1 - 24);
                LOWORD(v92) = 257;
                v27 = a1 + 8;
                v51 = sub_23C497A7C((v78 + v50), **(*v49 + 16), v49, 0, 0, v88);
                v86 = 257;
                v52 = sub_23C49A474(v78 + v50, v45, v51, v85);
                if (v37 != 3)
                {
                  v46 = v52;
                }

                v83 = v46;
                v24 = v81;
                if (v37 == 3)
                {
                  v24 = v52;
                }
              }

              else
              {
                v83 = v47;
                v27 = a1 + 8;
              }

              v53 = *(a1 + 4472);
              if (v53 >= *(a1 + 4476))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(*(a1 + 4464) + 8 * v53) = v80 | v82;
              ++*(a1 + 4472);
              if (v37 == 3)
              {
                v34 = v24;
              }

              else
              {
                v34 = v83;
              }
            }

            v54 = *v33;
            if (*v34 != *v33)
            {
              v55 = *(*a1 - 24);
              LOWORD(v92) = 257;
              sub_23C49ACF8(v27 + v55, 38, v34, v54, v88);
            }

            llvm::Value::replaceAllUsesWith();
          }

          llvm::Instruction::eraseFromParent(v33);
        }

        while (v31);
      }

      llvm::Function::eraseFromParent(v76);
    }

    v23 = v77 + 1;
  }

  while (v77 != 3);
  v88[0] = "air.get_base_vertex.i32";
  v88[1] = "base_vertex";
  v56 = *(*(a1 + *(*a1 - 24) + 344) + 792);
  v89 = (*(*v56 + 136))(v56);
  v90 = 0;
  v91 = "air.get_base_vertex.i16";
  v92 = "base_vertex";
  v57 = *(*(a1 + *(*a1 - 24) + 344) + 792);
  v93 = (*(*v57 + 136))(v57);
  v94 = 0;
  v95 = "air.get_base_instance.i32";
  v96 = "base_instance";
  v58 = *(*(a1 + *(*a1 - 24) + 344) + 792);
  v97 = (*(*v58 + 144))(v58);
  v98 = 1;
  v99 = "air.get_base_instance.i16";
  v100 = "base_instance";
  v59 = *(*(a1 + *(*a1 - 24) + 344) + 792);
  v60 = 0;
  v101 = (*(*v59 + 144))(v59);
  v102 = 1;
  v87[0] = 0;
  v87[1] = 0;
  do
  {
    v61 = &v88[3 * v60];
    if (*v61)
    {
      strlen(*v61);
    }

    v62 = llvm::Module::getFunction();
    if (v62)
    {
      v84 = v62;
      v63 = *(v62 + 8);
      while (v63)
      {
        v64 = *(v63 + 24);
        v63 = *(v63 + 8);
        if (v64[1])
        {
          v65 = *(v61 + 5);
          v66 = v87[v65];
          if (!v66)
          {
            v67 = llvm::PointerType::get();
            if (*v61[1])
            {
              v85[2] = v61[1];
              v68 = 3;
            }

            else
            {
              v68 = 1;
            }

            v85[0] = "agc.buffer_pointers.";
            LOBYTE(v86) = 3;
            HIBYTE(v86) = v68;
            v66 = sub_23C4ED494(a1, v67, v85, *(v61 + 4), 4u, 5u);
            v87[v65] = v66;
          }

          sub_23C4C30FC(v27 + *(*a1 - 24), v64);
          v69 = *(*a1 - 24);
          v86 = 257;
          v70 = sub_23C497C88((v27 + v69), **(*v66 + 16), v66, 0, v85);
          v71 = *(*a1 - 24);
          v86 = 257;
          v72 = sub_23C497C88((v27 + v71), **(*v70 + 16), v70, 0, v85);
          v73 = *(*a1 - 24);
          v74 = *v64;
          v86 = 257;
          sub_23C49ACF8(v27 + v73, 38, v72, v74, v85);
          llvm::Value::replaceAllUsesWith();
        }

        llvm::Instruction::eraseFromParent(v64);
      }

      llvm::Function::eraseFromParent(v84);
    }

    ++v60;
  }

  while (v60 != 4);
  return 1;
}

uint64_t sub_23C518E10(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_23C4FE97C(a1);
  if (*(a1 + 3146))
  {
    v15 = *(a1 + *(*a1 - 24) + 192);
    v16 = v15;
    llvm::StructType::get();
    v2 = llvm::PointerType::get();
    v13 = "agc.view_mappings_pointer_global";
    v14 = 259;
    v3 = *(*(a1 + *(*a1 - 24) + 344) + 792);
    v4 = (*(*v3 + 200))(v3);
    *(a1 + 3264) = sub_23C4ED494(a1, v2, &v13, v4, *(a1 + 3148), 5u);
  }

  if (*(*(a1 + *(*a1 - 24) + 344) + 1675))
  {
    return 1;
  }

  sub_23C4B8970();
  v5 = *(a1 + *(*a1 - 24) + 320);
  v6 = *(v5 + 32);
  v7 = v5 + 24;
  if (v6 == v5 + 24)
  {
    return 1;
  }

  while (1)
  {
    v8 = v6 ? (v6 - 56) : 0;
    v9 = *(v6 + 8);
    llvm::Value::getName(v8);
    Key = llvm::StringMapImpl::FindKey();
    v11 = Key == -1 || Key == dword_27E1F7458;
    if (!v11 && *(*(qword_27E1F7450 + 8 * Key) + 8) == 3 && *(v6 - 48))
    {
      break;
    }

    v6 = v9;
    if (v9 == v7)
    {
      return 1;
    }
  }

  std::string::append((a1 + *(*a1 - 24) + 408), "Texture writes not supported in vertex shaders");
  return 0;
}

uint64_t sub_23C519048(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = off_284F1F438;
  v4[568] = &off_284F1F630;
  v5 = v4[558];
  if (v5 != v4 + 560)
  {
    free(v5);
  }

  v6 = v4[492];
  if (v6 != v4 + 494)
  {
    free(v6);
  }

  sub_23C51784C((v4 + 487), a2, a3, a4);
  sub_23C52B334(v4, off_284F1D438);

  return sub_23C4B130C((v4 + 568));
}

void sub_23C519114(uint64_t a1, void *a2, int a3, int a4)
{
  v202 = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + *(*a1 - 24) + 344) + 1653) & 1) == 0 && *(a1 + 4512) != 0)
  {
    if (a4 == -1)
    {
      snprintf(__str, 0x20uLL, "arg%d");
    }

    else
    {
      snprintf(__str, 0x20uLL, "arg%d.%d");
    }

    v8 = **(*a2 + 16);
    v182 = v8;
    v9 = *(v8 + 2);
    v10 = v9;
    if ((*(v8 + 2) & 0xFE) == 0x12)
    {
      v10 = *(**(v8 + 2) + 8);
    }

    if (v10 != 15)
    {
      if (v9 > 0x11)
      {
        goto LABEL_28;
      }

      if (((1 << v9) & 0xAC7F) != 0)
      {
        goto LABEL_11;
      }

      if (((1 << v9) & 0x30000) == 0)
      {
LABEL_28:
        if ((*(v8 + 2) & 0xFE) != 0x12 && v9 != 21)
        {
          return;
        }
      }

      if (!llvm::Type::isSizedDerivedType())
      {
        return;
      }

LABEL_11:
      v188 = sub_23C49BBA0((a1 + 168), v8);
      LODWORD(v189) = v11;
      v12 = llvm::TypeSize::operator unsigned long long();
      v13 = v12;
      if ((v12 & 3) != 0)
      {
        sub_23C4AA240(v12, "Cannot DMA promote %s : type size %u not a multiple of 4", __str, v12);
        return;
      }

      v181 = 0;
      v177 = 0;
      v176 = 0;
      v179 = 0;
      v178 = 0;
      v180 = 0;
      v195 = 128;
      v193 = MEMORY[0x23EED4160](0x4000, 8);
      sub_23C51C7C0(&v193);
      LOBYTE(v196) = 0;
      v198 = 0;
      v199 = 1;
      v200 = 0;
      if (!sub_23C51A3EC(a1, a2, __str, &v181, &v176, &v193))
      {
        if (!sub_23C51B2F8(a1, a2, __str, &v182) || (v8 = v182, v188 = sub_23C49BBA0((a1 + 168), v182), LODWORD(v189) = v20, v21 = llvm::TypeSize::operator unsigned long long(), !sub_23C51A3EC(a1, a2, __str, &v181, &v176, &v193)))
        {
LABEL_163:
          if (v198 == 1)
          {
            sub_23C4ED91C(&v196);
            llvm::deallocate_buffer(v196, (16 * v197));
            v198 = 0;
          }

          v154 = v193;
          if (v195)
          {
            v189 = 2;
            v190 = 0;
            v191 = -4096;
            v192 = 0;
            v188 = &unk_284F28A28;
            v184[0] = 2;
            v184[1] = 0;
            v185 = -8192;
            v186 = 0;
            v183 = &unk_284F28A28;
            v155 = v193 + 56;
            v156 = v195 << 7;
            do
            {
              v157 = *(v155 - 32);
              if (v157 != v191 && v157 != v185)
              {
                v159 = *(v155 - 16);
                if (v155 != v159)
                {
                  free(v159);
                  v157 = *(v155 - 32);
                }
              }

              if (v157 != -8192 && v157 != -4096 && v157 != 0)
              {
                llvm::ValueHandleBase::RemoveFromUseList((v155 - 48));
              }

              v155 += 128;
              v156 -= 128;
            }

            while (v156);
            if (v185 != -8192 && v185 != -4096 && v185)
            {
              llvm::ValueHandleBase::RemoveFromUseList(v184);
            }

            if (v191 != -8192 && v191 != -4096)
            {
              if (v191)
              {
                llvm::ValueHandleBase::RemoveFromUseList(&v189);
              }
            }

            v154 = v193;
            v161 = (v195 << 7);
          }

          else
          {
            v161 = 0;
          }

          llvm::deallocate_buffer(v154, v161);
          return;
        }

        v13 = v21;
      }

      v14 = llvm::UndefValue::get();
      v164 = &v190;
      v188 = &v190;
      v189 = 0x800000000;
      v171 = v13 >> 2;
      sub_23C501A64(&v188, v171, v14);
      v183 = ((sub_23C49BBFC((a1 + 168), v8) + 7) >> 3);
      LODWORD(v184[0]) = v15 == 1;
      StructLayout = llvm::TypeSize::operator unsigned long long();
      v17 = StructLayout;
      if ((*(v8 + 2) & 0xFE) != 0x10)
      {
        v22 = 0;
        goto LABEL_71;
      }

      if (!v194)
      {
        goto LABEL_69;
      }

      if (v195)
      {
        v18 = v195 << 7;
        v19 = v193;
        while ((*(*&v19 + 24) | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          *&v19 += 128;
          v18 -= 128;
          if (!v18)
          {
            goto LABEL_69;
          }
        }
      }

      else
      {
        v19 = v193;
      }

      v24 = (v193 + (v195 << 7));
      if (v24 == v19)
      {
LABEL_69:
        v17 = 0;
        v22 = 0x3FFFFFFFFFFFFFFFLL;
        goto LABEL_71;
      }

      v25 = 0;
      v26 = -1;
      v168 = StructLayout;
      v169 = (v193 + (v195 << 7));
      v167 = v13;
      while (1)
      {
        v27 = *(*&v19 + 24);
        if (*(*&v19 + 48))
        {
          v28 = **(*&v19 + 40);
          if (v28 && *(v28 + 16) == 16)
          {
            break;
          }
        }

        v30 = 0;
        v31 = v17;
LABEL_42:
        if (*(*&v19 + 124) && *(*&v19 + 120) == 1)
        {
          v32 = *v27;
          v170 = v26;
          v183 = ((sub_23C49BBFC((a1 + 168), v32) + 7) >> 3);
          LODWORD(v184[0]) = v33 == 1;
          StructLayout = llvm::TypeSize::operator unsigned long long();
          v31 = (StructLayout + v30);
          v24 = v169;
          v26 = v170;
        }

        if (v30 < v26)
        {
          v26 = v30;
        }

        if (v25 <= v31)
        {
          v25 = v31;
        }

        do
        {
          *&v19 += 128;
        }

        while (v19 != v24 && (*(*&v19 + 24) | 0x1000) == 0xFFFFFFFFFFFFF000);
        if (v19 == v24)
        {
          v22 = v26 >> 2;
          v17 = v25;
          goto LABEL_71;
        }
      }

      v165 = *(*&v19 + 24);
      v166 = v25;
      v170 = v26;
      v30 = 0;
      v34 = 1;
      v35 = v8;
      while (1)
      {
        v36 = (v28 + 24);
        if (*(v28 + 32) >= 0x41u)
        {
          v36 = *v36;
        }

        v37 = *v36;
        v38 = *(v35 + 8);
        if (!v35 || v38 != 16)
        {
          break;
        }

        if (*(v35 + 12) <= v37)
        {
          goto LABEL_70;
        }

        StructLayout = llvm::DataLayout::getStructLayout();
        v39 = *(StructLayout + 8 * v37 + 16);
        v35 = *(*(v35 + 16) + 8 * v37);
LABEL_64:
        if (!v35)
        {
          goto LABEL_70;
        }

        v30 += v39;
        v183 = ((sub_23C49BBFC((a1 + 168), v35) + 7) >> 3);
        LODWORD(v184[0]) = v41 == 1;
        StructLayout = llvm::TypeSize::operator unsigned long long();
        if (v34 < *(*&v19 + 48))
        {
          v28 = *(*(*&v19 + 40) + 8 * v34);
          if (v28)
          {
            ++v34;
            if (*(v28 + 16) == 16)
            {
              continue;
            }
          }
        }

        v31 = (StructLayout + v30);
        LODWORD(v13) = v167;
        v17 = v168;
        v27 = v165;
        v25 = v166;
        v24 = v169;
        v26 = v170;
        goto LABEL_42;
      }

      if (v35 && v38 == 17 && *(v35 + 32) > v37)
      {
        v35 = *(v35 + 24);
        v183 = sub_23C49BBA0((a1 + 168), v35);
        LODWORD(v184[0]) = v40;
        StructLayout = llvm::TypeSize::operator unsigned long long();
        v39 = StructLayout * v37;
        goto LABEL_64;
      }

LABEL_70:
      v22 = 0;
      LODWORD(v13) = v167;
      v17 = v168;
LABEL_71:
      v42 = v17 + 3;
      v43 = v42 >> 2;
      v44 = (v42 >> 2) - v22;
      v45 = a1 + *(*a1 - 24);
      v46 = *(*(v45 + 344) + 844);
      v47 = v46 - 2;
      if (v46 >= 0x80)
      {
        v47 = 126;
      }

      if (*(a1 + 3088) + v44 >= v47)
      {
        sub_23C4AA240(StructLayout, "Cannot DMA promote %s : ran out of vi's, need %u, already allocated %u, limit %u", __str, (v42 >> 2) - v22, *(a1 + 3088), v47);
      }

      else
      {
        v169 = v22;
        v48 = *(*(a1 + 160) + 80);
        if (v48)
        {
          v49 = v48 - 24;
        }

        else
        {
          v49 = 0;
        }

        v50 = *(v49 + 40);
        if (v50)
        {
          v51 = v50 - 24;
        }

        else
        {
          v51 = 0;
        }

        sub_23C4C30FC(v45 + 8, v51);
        v168 = *(a1 + 3088);
        if (v13 >= 4)
        {
          v52 = 0;
          v53 = (v42 >> 2);
          v54 = v169;
          do
          {
            if (v52 >= v54 && v52 < v53)
            {
              v55 = *(a1 + 3088);
              *(a1 + 3088) = v55 + 1;
              v56 = sub_23C52B4D8(a1, v55);
              v188[v52] = v56;
            }

            ++v52;
          }

          while (v171 != v52);
        }

        v57 = v199;
        v174[0] = "vertex_input";
        v175 = 259;
        v173 = 264;
        LODWORD(v172[0]) = a3;
        sub_23C51BBB8(&v183, v174, v172);
        v170 = sub_23C51BC4C(a1, v8, v57, &v188, &v183);
        sub_23C4AA240(v170, "DMA promoting %s to VI, attribute size = %u words, only words [%u .. %u] actually used", __str, v171, v169, v43 - 1);
        v59 = "false";
        v60 = v181 == 2;
        if (v181 == 2)
        {
          v61 = "true";
        }

        else
        {
          v61 = "false";
        }

        if (v180)
        {
          v59 = "true";
        }

        sub_23C4AA240(v58, "DMA Entry = {reg_offset: %u, size : %u, offset %u, stride; %u, instanced: %s, div: %u, base_after_divisor: %s}", v168, v44, v169, v171, v61, HIDWORD(v179), v59);
        LODWORD(v176) = v168;
        sub_23C4FA168(&v183, a3, a4);
        HIDWORD(v176) = v183;
        v178 = __PAIR64__(v169, v44);
        v62 = v170;
        LODWORD(v179) = v171;
        v177 = v60;
        v63 = sub_23C51BFD8(a1 + 3936, &v176);
        v64 = (*(a1 + 3936) + 32 * *(a1 + 3944));
        v65 = v63[1];
        *v64 = *v63;
        v64[1] = v65;
        ++*(a1 + 3944);
        if (v62[16] == 60)
        {
          v169 = *(v62 - 4);
        }

        else if (v200 == 1)
        {
          v66 = a1 + *(*a1 - 24);
          LOWORD(v186) = 257;
          v67 = sub_23C506924((v66 + 8), v8, &v183);
          v68 = (a1 + *(*a1 - 24) + 8);
          v169 = v67;
          sub_23C4BA8C0(v68, v62, v67, 0);
        }

        else
        {
          v169 = 0;
        }

        if (v194)
        {
          v69 = a1 + 8;
          v167 = a1 + 192;
          v171 = a1 + 8;
          while (1)
          {
            v70 = v193;
            if (v195)
            {
              v71 = v195 << 7;
              v72 = (v193 + 24);
              v73 = v71;
              while (1)
              {
                v74 = *v72;
                if ((*v72 | 0x1000) != 0xFFFFFFFFFFFFF000)
                {
                  break;
                }

                v72 += 16;
                v73 -= 128;
                if (!v73)
                {
                  v74 = *(v193 + (v195 << 7) + 24);
                  break;
                }
              }

              v75 = v195 << 7;
              v76 = v193;
              do
              {
                if ((*(v76 + 24) | 0x1000) != 0xFFFFFFFFFFFFF000)
                {
                  goto LABEL_108;
                }

                v76 += 128;
                v75 -= 128;
              }

              while (v75);
              v76 = v193 + (v195 << 7);
LABEL_108:
              while ((v70[3] | 0x1000) == 0xFFFFFFFFFFFFF000)
              {
                v70 += 16;
                v71 -= 128;
                if (!v71)
                {
                  v70 = (v193 + (v195 << 7));
                  break;
                }
              }
            }

            else
            {
              v74 = *(v193 + 24);
              v76 = v193;
            }

            sub_23C51C054(&v193, v70);
            v77 = *(v76 + 48);
            v78 = sub_23C4C30FC(v69 + *(*a1 - 24), v74);
            if (!v77)
            {
              v92 = *(v76 + 124);
              if (v92 == 3)
              {
                v118 = *(*a1 - 24);
                v119 = llvm::PointerType::get();
                LOWORD(v186) = 257;
                v120 = sub_23C49ACF8(v69 + v118, 49, v169, v119, &v183);
                v121 = *(*a1 - 24);
                LOWORD(v186) = 257;
                sub_23C497C88((v69 + v121), **(*v120 + 16), v120, 0, &v183);
              }

              else if (v92 == 1)
              {
                sub_23C50593C(a1 + *(*a1 - 24), v62, *(*v74 + 32), v79);
              }

              goto LABEL_158;
            }

            if (*(v76 + 120) != 1)
            {
              MEMORY[0x28223BE20](v78);
              v95 = (&v162 - v94);
              if (v93 >= 0x200)
              {
                v96 = 512;
              }

              else
              {
                v96 = v93;
              }

              bzero(&v162 - v94, v96);
              v97 = llvm::ConstantInt::get();
              v98 = 0;
              *v95 = v97;
              do
              {
                v95[v98 + 1] = *(*(v76 + 40) + v98 * 8);
                ++v98;
              }

              while (v77 != v98);
              v99 = *(*a1 - 24);
              LOWORD(v186) = 257;
              v100 = sub_23C4ED3A0(a1 + v99, v169, v95, (v77 + 1), &v183);
              if ((*(v76 + 124) | 2) == 3)
              {
                v101 = *(*a1 - 24);
                v102 = llvm::PointerType::get();
                LOWORD(v186) = 257;
                v103 = v171 + v101;
                v69 = v171;
                v100 = sub_23C49ACF8(v103, 49, v100, v102, &v183);
              }

              v104 = *(*a1 - 24);
              LOWORD(v186) = 257;
              sub_23C497C88((v69 + v104), **(*v100 + 16), v100, 0, &v183);
              goto LABEL_158;
            }

            v80 = MEMORY[0x28223BE20](v78);
            v83 = &v162 - ((v82 + 15) & 0x7FFFFFFF0);
            v84 = *(v76 + 40);
            v85 = v83;
            v86 = v77;
            do
            {
              v87 = (*v84 + 24);
              if (*(*v84 + 32) >= 0x41u)
              {
                v87 = *v87;
              }

              *v85++ = *v87;
              v84 += 8;
              --v86;
            }

            while (v86);
            v88 = *(v76 + 124);
            if (v88 <= 1)
            {
              if (v88)
              {
                if (v88 == 1)
                {
                  v89 = *(*a1 - 24);
                  LOWORD(v186) = v81;
                  v90 = sub_23C49B32C(v69 + v89, v62, v83, v77, &v183);
                  sub_23C50593C(a1 + *(*a1 - 24), v90, *(*v74 + 32), v91);
                }
              }

              else
              {
                v122 = *(*a1 - 24);
                LOWORD(v186) = v81;
                sub_23C49B32C(v69 + v122, v62, v83, v77, &v183);
              }

              goto LABEL_158;
            }

            if (v88 != 2)
            {
              if (v88 == 3)
              {
                MEMORY[0x28223BE20](v80);
                v107 = (&v162 - v106);
                if (v105 >= 0x200)
                {
                  v108 = 512;
                }

                else
                {
                  v108 = v105;
                }

                bzero(&v162 - v106, v108);
                v109 = llvm::ConstantInt::get();
                v110 = 0;
                *v107 = v109;
                do
                {
                  v107[v110 + 1] = *(*(v76 + 40) + v110 * 8);
                  ++v110;
                }

                while (v77 != v110);
                v111 = *(*a1 - 24);
                LOWORD(v186) = 257;
                v112 = sub_23C4ED3A0(a1 + v111, v169, v107, (v77 + 1), &v183);
                v113 = *(*a1 - 24);
                v114 = llvm::PointerType::get();
                LOWORD(v186) = 257;
                v115 = v171 + v113;
                v69 = v171;
                v116 = sub_23C49ACF8(v115, 49, v112, v114, &v183);
                v117 = *(*a1 - 24);
                LOWORD(v186) = 257;
                sub_23C497C88((v69 + v117), **(*v116 + 16), v116, 0, &v183);
                v62 = v170;
              }

              goto LABEL_158;
            }

            v183 = ((sub_23C49BBFC((a1 + 168), *v74) + 7) >> 3);
            LODWORD(v184[0]) = v123 == 1;
            v124 = llvm::TypeSize::operator unsigned long long();
            v125 = *v74;
            if ((*(*v74 + 8) & 0xFE) == 0x10)
            {
              break;
            }

            v129 = *(v74 - 4);
            if (*(v129 + 16) != 62)
            {
              v163 = &v162;
              v141 = **(**(v129 - 32) + 16);
              v142 = v124 >> 2;
              llvm::FixedVectorType::get();
              v143 = llvm::UndefValue::get();
              if (v124 >= 4)
              {
                v144 = 0;
                LODWORD(v168) = v77 - 1;
                if (v142 <= 1)
                {
                  v145 = 1;
                }

                else
                {
                  v145 = v142;
                }

                v165 = v141;
                v166 = v145;
                do
                {
                  v146 = *(*a1 - 24);
                  LOWORD(v186) = 257;
                  v147 = sub_23C49B32C(v171 + v146, v170, v83, v77, &v183);
                  v148 = a1 + *(*a1 - 24);
                  LOWORD(v186) = 257;
                  v149 = sub_23C49ACF8(v148 + 8, 49, v147, v165, &v183);
                  v175 = 257;
                  v150 = llvm::ConstantInt::get();
                  v143 = sub_23C505AA8(v148 + 8, v143, v149, v150, v174);
                  ++*&v83[4 * v168];
                  ++v144;
                }

                while (v166 != v144);
              }

              v151 = *(*a1 - 24);
              v152 = *v74;
              LOWORD(v186) = 257;
              v69 = v171;
              sub_23C49ACF8(v171 + v151, 49, v143, v152, &v183);
              goto LABEL_157;
            }

            v130 = *(*a1 - 24);
            LOWORD(v186) = 257;
            v131 = sub_23C49B32C(v69 + v130, v62, v83, v77, &v183);
            v132 = *(*a1 - 24);
            v133 = *v74;
            LOWORD(v186) = 257;
            sub_23C49ACF8(v69 + v132, 49, v131, v133, &v183);
LABEL_158:
            v153 = *(v74 - 4);
            llvm::Value::replaceAllUsesWith();
            llvm::Instruction::eraseFromParent(v74);
            if (!*(v153 + 8))
            {
              v187[3] = 0;
              llvm::RecursivelyDeleteTriviallyDeadInstructions();
              sub_23C5021EC(v187);
            }

            if (!v194)
            {
              goto LABEL_161;
            }
          }

          v163 = &v162;
          v126 = *(**(v125 + 16) + 24);
          v168 = v124 >> 2;
          v127 = v126;
          llvm::ArrayType::get(v126, v168);
          v128 = llvm::UndefValue::get();
          LODWORD(v172[0]) = 0;
          if (v124 >= 4)
          {
            do
            {
              v134 = *(*a1 - 24);
              LOWORD(v186) = 257;
              v135 = sub_23C49B32C(v69 + v134, v170, v83, v77, &v183);
              v136 = *(*a1 - 24);
              LOWORD(v186) = 257;
              v137 = sub_23C49ACF8(v171 + v136, 49, v135, v127, &v183);
              v175 = 257;
              v138 = (v171 + v136);
              v69 = v171;
              v128 = sub_23C49A744(v138, v128, v137, v172, 1, v174);
              ++*&v83[4 * (v77 - 1)];
              ++LODWORD(v172[0]);
            }

            while (LODWORD(v172[0]) < v168);
          }

          v139 = llvm::UndefValue::get();
          v140 = *(*a1 - 24);
          LODWORD(v174[0]) = 0;
          LOWORD(v186) = 257;
          sub_23C49A744((v69 + v140), v139, v128, v174, 1, &v183);
LABEL_157:
          v62 = v170;
          goto LABEL_158;
        }
      }

LABEL_161:
      if (v188 != v164)
      {
        free(v188);
      }

      goto LABEL_163;
    }
  }
}

BOOL sub_23C51A3EC(void *a1, uint64_t a2, const char *a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6 = a1;
  v172 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 8);
  if (v7)
  {
    if (!*(v7 + 8))
    {
      v8 = *(v7 + 24);
      if (*(v8 + 16) == 77)
      {
        a2 = v8;
      }
    }
  }

  v128 = a1 + 1;
  v9 = 1;
  do
  {
    v10 = *(a2 + 8);
    result = v10 == 0;
    if (!v10)
    {
      return result;
    }

    v12 = *(v10 + 24);
    if (!v12 || *(v12 + 16) != 62)
    {
      sub_23C4AA240(result, "Cannot DMA promote %s : found a non-GEP use");
      return 0;
    }

    v13 = *(v12 - 32 * (*(v12 + 20) & 0x7FFFFFF) + 32);
    v129 = v10;
    if (v13 && *(v13 + 16) == 67)
    {
      v13 = *(v13 - 32);
    }

    v135 = 1;
    v134 = 0;
    v14 = sub_23C51D0FC(v13, &v135, &v134);
    v15 = 0;
    if (v14)
    {
      if (*(v14 + 16) == 84)
      {
        v15 = *(v14 - 32);
        if (!v15 || *(v15 + 16) || *(v15 + 24) != *(v14 + 72))
        {
          v15 = 0;
        }
      }
    }

    v16 = v6[564];
    if (v15 == v16)
    {
      v17 = 566;
    }

    else
    {
      v17 = 567;
    }

    v18 = v134;
    v19 = v134 != 0;
    if (!v15 || (v20 = v6[v17], v15 != v16) && v15 != v6[565])
    {
      sub_23C4AA240(v14, "Cannot DMA promote %s : GEP not indexed with instance_id/vertex_id");
      return 0;
    }

    if (v134 && v134 != v20)
    {
      sub_23C4AA240(v14, "Cannot DMA promote %s: GEP indexed with index type not matching base type");
      return 0;
    }

    if ((v9 & 1) == 0)
    {
      if (*a4 == 2)
      {
        v16 = v6[565];
      }

      else if (*a4 != 1)
      {
        goto LABEL_39;
      }

      if (v15 != v16)
      {
        goto LABEL_269;
      }

LABEL_39:
      if (v135 != *(a5 + 24) || *(a5 + 28) != v19)
      {
LABEL_269:
        sub_23C4AA240(v14, "Cannot DMA promote %s : GEP indexed inconsistently");
        return 0;
      }

      goto LABEL_41;
    }

    v21 = v15 == v16;
    if (v15 == v16)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    *a4 = v22;
    *(a5 + 24) = v135;
    *(a5 + 28) = v19;
    if (v21 && v18)
    {
      sub_23C4AA240(v14, "Cannot DMA promote %s: GEP indexed with vertex_id and divisor with bias");
      return 0;
    }

LABEL_41:
    v144 = 0;
    v145 = v12;
    __p = 0;
    v143 = 0;
    v168 = 128;
    v167[0] = MEMORY[0x23EED4160](0x4000, 8);
    sub_23C51D35C(v167);
    LOBYTE(v169) = 0;
    v171 = 0;
    v161 = &v163;
    v162 = 0x800000000;
    LOBYTE(v166) = 0;
    HIDWORD(v166) = 0;
    sub_23C4FA0E4(&v161, (v12 - 32 * (*(v12 + 20) & 0x7FFFFFF) + 64), v12);
    v23 = v162;
    if (v162)
    {
      v24 = 1;
      v25 = v161;
      do
      {
        v26 = *v25++;
        v24 &= *(v26 + 16) == 16;
        --v23;
      }

      while (v23);
    }

    else
    {
      v24 = 1;
    }

    LOBYTE(v166) = v24;
    v27 = sub_23C51D438(v167, v12);
    v28 = sub_23C4A3D80(v27, &v161);
    *(v28 + 80) = v166;
    sub_23C51D518(&__p, &v145);
    v29 = v143;
    if (__p == v143)
    {
      v113 = 1;
      goto LABEL_230;
    }

    while (1)
    {
      v32 = *(v29 - 1);
      v30 = (v29 - 1);
      v31 = v32;
      v155 = 0;
      TypeAtIndex = sub_23C51C418(*v167, v168, v32, &v155);
      v35 = TypeAtIndex ? v155 : (*v167 + (v168 << 7));
      v155 = &v157;
      v156 = 0x800000000;
      if (v35[12])
      {
        TypeAtIndex = sub_23C4A3D80(&v155, (v35 + 10));
        v36 = v156 == 0;
      }

      else
      {
        v36 = 1;
      }

      if ((v160 = *(v35 + 15), v143 = v30, v31 == v12) && v36 || ((TypeAtIndex = llvm::GEPOperator::getSourceElementType(v31), v37 = *(v31 + 20), v38 = v37 & 0x7FFFFFF, (v37 & 0x40000000) != 0) ? (v39 = *(v31 - 8)) : (v39 = v31 - 32 * v38), v40 = v39 + 32, v41 = TypeAtIndex | 4, v42 = v39 + 32 * v38, v39 + 32 == v42))
      {
        LODWORD(v132) = 0;
      }

      else
      {
        do
        {
          v43 = v41;
          TypeAtIndex = v41 & 0xFFFFFFFFFFFFFFF8;
          if ((v41 & 4) == 0 || !TypeAtIndex)
          {
            TypeAtIndex = llvm::StructType::getTypeAtIndex();
          }

          v44 = *(TypeAtIndex + 8);
          if (TypeAtIndex && v44 == 17 || TypeAtIndex && (v44 & 0xFE) == 0x12)
          {
            v41 = *(TypeAtIndex + 24) | 4;
          }

          else if (v44 == 16)
          {
            v41 = TypeAtIndex & 0xFFFFFFFFFFFFFFFBLL;
          }

          else
          {
            v41 = 0;
          }

          v40 += 32;
        }

        while (v40 != v42);
        v132 = (v43 >> 2) & 1;
      }

      v45 = *(v31 + 8);
      if (v45)
      {
        break;
      }

LABEL_205:
      v146 = 0;
      if (sub_23C51C418(*v167, v168, v31, &v146))
      {
        v112 = v146;
      }

      else
      {
        v112 = (*v167 + (v168 << 7));
      }

      if ((*v167 + (v168 << 7)) != v112)
      {
        sub_23C51DB68(v167, v112);
      }

      v6 = a1;
      if (v155 != &v157)
      {
        free(v155);
      }

      v29 = v143;
      if (__p == v143)
      {
        v113 = 1;
        goto LABEL_230;
      }
    }

    while (1)
    {
      v46 = *(*(v45 + 24) + 16) <= 0x1Bu ? 0 : *(v45 + 24);
      v47 = *(v46 + 16);
      if (v47 != 60 || v46 == 0)
      {
        break;
      }

      TypeAtIndex = sub_23C51D618(a6, v46, &v155);
LABEL_204:
      v45 = *(v45 + 8);
      if (!v45)
      {
        goto LABEL_205;
      }
    }

    if (v47 == 62)
    {
      v49 = v46;
    }

    else
    {
      v49 = 0;
    }

    v141 = v49;
    if (v49)
    {
      v50 = (v49 - 4 * (*(v49 + 5) & 0x7FFFFFF))[4];
      if (v50)
      {
        v51 = v50[16] > 0x14u;
      }

      else
      {
        v51 = 1;
      }

      if (v51 || !llvm::Constant::isNullValue(v50))
      {
        if (!v132)
        {
          goto LABEL_227;
        }

        v56 = *(v155 + v156 - 1);
        v57 = (v49 - 4 * (*(v49 + 5) & 0x7FFFFFF))[4];
        if (v57 != llvm::Constant::getNullValue(*v57, v34))
        {
          if (v56 == llvm::Constant::getNullValue(*v56, v58))
          {
            v56 = v57;
          }

          else
          {
            if (*v57 != *v56)
            {
              goto LABEL_227;
            }

            sub_23C4C30FC(v128 + *(*a1 - 24), v49);
            v59 = *(*a1 - 24);
            Name = llvm::Value::getName(v49);
            LOWORD(v149) = 773;
            v146 = Name;
            v147 = v61;
            v148[0] = ".sum";
            v56 = sub_23C49A474(v128 + v59, v57, v56, &v146);
          }
        }

        v146 = v148;
        v147 = 0x800000000;
        if (v156)
        {
          sub_23C4A3D80(&v146, &v155);
          v106 = v147 - 1;
        }

        else
        {
          v106 = -1;
        }

        v154 = v160;
        LODWORD(v147) = v106;
        sub_23C49B500(&v146, v56);
        sub_23C4FA0E4(&v146, v49 - 32 * (*(v49 + 5) & 0x7FFFFFF) + 64, v49);
        v107 = v147;
        if (v147)
        {
          v53 = 1;
          v108 = v146;
          do
          {
            v109 = *v108++;
            v53 &= *(v109 + 16) == 16;
            --v107;
          }

          while (v107);
LABEL_202:
          LOBYTE(v154) = v53;
          v110 = sub_23C51D438(v167, v141);
          v111 = sub_23C4A3D80(v110, &v146);
          *(v111 + 80) = v154;
          sub_23C51D518(&__p, &v141);
          TypeAtIndex = v146;
          if (v146 != v148)
          {
            free(v146);
          }

          goto LABEL_204;
        }
      }

      else
      {
        v146 = v148;
        v147 = 0x800000000;
        if (v156)
        {
          sub_23C4A3D80(&v146, &v155);
        }

        v154 = v160;
        sub_23C4FA0E4(&v146, v49 - 32 * (*(v49 + 5) & 0x7FFFFFF) + 64, v49);
        if (v160 != 1)
        {
          v53 = 0;
          goto LABEL_202;
        }

        v52 = v147;
        if (v147)
        {
          v53 = 1;
          v54 = v146;
          do
          {
            v55 = *v54++;
            v53 &= *(v55 + 16) == 16;
            --v52;
          }

          while (v52);
          goto LABEL_202;
        }
      }

      v53 = 1;
      goto LABEL_202;
    }

    if (v47 != 77 || v46 == 0)
    {
      sub_23C4AA240(TypeAtIndex, "Cannot DMA promote %s : GEP not used in a load");
      goto LABEL_227;
    }

    if (*(*v46 + 8) != 15)
    {
      sub_23C4AA240(TypeAtIndex, "Cannot DMA promote %s : pointer bitcast to non-pointer type");
      goto LABEL_227;
    }

    v63 = *(v46 + 1);
    if (!v63)
    {
      goto LABEL_204;
    }

    v64 = **(**(v46 - 4) + 16);
    v65 = **(*v46 + 16);
    while (2)
    {
      v66 = *(v63 + 24);
      v67 = *(v66 + 16);
      if (!v66 || v67 != 60)
      {
        if (v67 != 62)
        {
          v66 = 0;
        }

        v140 = v66;
        if (!v66)
        {
          sub_23C4AA240(TypeAtIndex, "Cannot DMA promote %s : unknown GEP bitcast use");
          goto LABEL_227;
        }

        if (HIDWORD(v160))
        {
          sub_23C4AA240(TypeAtIndex, "DMA promotion %s : GEP-of-bitcast can't combine bitcast types");
          goto LABEL_227;
        }

        if (v160 != 1 || (TypeAtIndex = sub_23C51D748(v65, v64, (a1 + 21), v132), !TypeAtIndex) || *(v65 + 8) != 16)
        {
          sub_23C4AA240(TypeAtIndex, "Cannot DMA promote %s : unknown GEP-of-bitcast use");
          goto LABEL_227;
        }

        if ((*(v66 + 5) & 0x7FFFFFF) != 4)
        {
          sub_23C4AA240(TypeAtIndex, "Cannot DMA promote %s : GEP-of-bitcast needs to index to a scalar");
          goto LABEL_227;
        }

        if (*(*(v66 - 12) + 16) >= 0x15u)
        {
          v88 = 0;
        }

        else
        {
          v88 = *(v66 - 12);
        }

        if (*(*(v66 - 8) + 16) >= 0x15u)
        {
          v89 = 0;
        }

        else
        {
          v89 = *(v66 - 8);
        }

        if (v88)
        {
          v90 = v89 == 0;
        }

        else
        {
          v90 = 1;
        }

        if (v90)
        {
          goto LABEL_227;
        }

        if (!llvm::Constant::isNullValue(v88))
        {
          goto LABEL_227;
        }

        isNullValue = llvm::Constant::isNullValue(v89);
        if (!isNullValue)
        {
          goto LABEL_227;
        }

        v92 = *(v155 + v156 - 1);
        v93 = (v66 - 4 * (*(v66 + 5) & 0x7FFFFFF))[12];
        if (*v93 != *v92)
        {
          goto LABEL_227;
        }

        sub_23C4AA240(isNullValue, "DMA promotion %s : reinterpreted array bitcast pattern (through struct-array GEP)", a3);
        v146 = v148;
        v147 = 0x800000000;
        if (v156)
        {
          sub_23C4A3D80(&v146, &v155);
        }

        v154 = v160;
        v94 = *(*a1 - 24);
        v139 = 257;
        v95 = sub_23C49A474(v128 + v94, v92, v93, &v136);
        v96 = v147;
        *(v146 + v147 - 1) = v95;
        v97 = 1;
        if (v96)
        {
          v98 = v146;
          do
          {
            v99 = *v98++;
            v97 &= *(v99 + 16) == 16;
            --v96;
          }

          while (v96);
        }

        LOBYTE(v154) = v97;
        HIDWORD(v154) = 2;
        v104 = sub_23C51D438(v167, v66);
        v105 = sub_23C4A3D80(v104, &v146);
        *(v105 + 80) = v154;
        sub_23C51D518(&__p, &v140);
        goto LABEL_187;
      }

      if ((*(v64 + 8) & 0xFE) != 0x12)
      {
        goto LABEL_150;
      }

      v68 = *v66;
      if ((*(*v66 + 8) & 0xFE) != 0x12)
      {
        goto LABEL_150;
      }

      if (**(v64 + 16) != **(v68 + 16))
      {
        goto LABEL_150;
      }

      v69 = *(v68 + 32);
      v70 = *(v64 + 32);
      if (v69 <= v70)
      {
        goto LABEL_150;
      }

      v71 = *(v63 + 24);
      while (1)
      {
        v71 = *(v71 + 8);
        if (!v71)
        {
          v86 = 1;
          sub_23C4AA240(TypeAtIndex, "DMA promotion %s : truncated extend bitcast pattern");
          goto LABEL_182;
        }

        v72 = *(v71 + 24);
        v73 = *(v72 + 16);
        if (v72)
        {
          if (v73 == 91)
          {
            break;
          }
        }

        v77 = 0;
        if (!v72)
        {
          goto LABEL_144;
        }

        v81 = v69;
        if (v73 != 89)
        {
          goto LABEL_148;
        }

        v82 = *(v72 - 32);
        if (v82)
        {
          v83 = *(v82 + 16) == 16;
        }

        else
        {
          v83 = 0;
        }

        if (!v83)
        {
          v77 = 0;
LABEL_144:
          v81 = v69;
          goto LABEL_148;
        }

        v84 = (v82 + 24);
        if (*(v82 + 32) >= 0x41u)
        {
          v84 = *v84;
        }

        v77 = *v84;
        v81 = v77 + 1;
LABEL_148:
        if (v77 >= v81 || v81 > v70)
        {
          goto LABEL_150;
        }
      }

      v74 = *(*v72 + 32);
      if (v74)
      {
        v75 = 0;
        v76 = *(v72 + 64);
        v77 = -1;
        while (1)
        {
          v79 = *v76++;
          v78 = v79;
          if ((v79 & 0x80000000) == 0 && v78 < v69)
          {
            TypeAtIndex = *(v72 - 64);
            if (TypeAtIndex == v66)
            {
              goto LABEL_131;
            }
          }

          if (v78 >= v69 && v78 < 2 * v69)
          {
            TypeAtIndex = *(v72 - 32);
            if (TypeAtIndex == v66)
            {
              break;
            }
          }

LABEL_135:
          if (!--v74)
          {
            v81 = v75 + 1;
            goto LABEL_148;
          }
        }

        v78 = (v78 - v69);
LABEL_131:
        if (v77 >= v78)
        {
          v77 = v78;
        }

        if (v75 <= v78)
        {
          v75 = v78;
        }

        goto LABEL_135;
      }

LABEL_150:
      if (v160 == 1)
      {
        v85 = sub_23C51D748(v65, v64, (a1 + 21), v132);
        if (v85)
        {
          v86 = 2;
          sub_23C4AA240(v85, "DMA promotion %s : reinterpreted array bitcast pattern");
LABEL_182:
          if (HIDWORD(v160))
          {
            sub_23C4AA240(v87, "DMA promotion %s : can't combine bitcast types");
            goto LABEL_227;
          }

          v146 = v148;
          v147 = 0x800000000;
          if (v156)
          {
            sub_23C4A3D80(&v146, &v155);
          }

          v154 = __PAIR64__(v86, v160);
          sub_23C51D618(a6, v66, &v146);
LABEL_187:
          TypeAtIndex = v146;
          if (v146 != v148)
          {
            free(v146);
          }

          v63 = *(v63 + 8);
          if (!v63)
          {
            goto LABEL_204;
          }

          continue;
        }
      }

      break;
    }

    v146 = sub_23C49BBA0((a1 + 21), v65);
    LODWORD(v147) = v100;
    v101 = llvm::TypeSize::operator unsigned long long();
    v136 = sub_23C49BBA0((a1 + 21), v64);
    LODWORD(v137) = v102;
    v103 = llvm::TypeSize::operator unsigned long long();
    if (v101 <= v103)
    {
      v86 = 3;
      sub_23C4AA240(v103, "DMA promotion %s : truncate to smaller sized type pattern");
      goto LABEL_182;
    }

    sub_23C4AA240(v103, "DMA promotion %s : unrecognized GEP bitcast pattern: ", a3);
    v136 = 0;
    v137 = 0;
    v138 = 0;
    LODWORD(v147) = 0;
    v150 = 0;
    v151 = 0;
    v152 = 1;
    v148[1] = 0;
    v149 = 0;
    v148[0] = 0;
    v146 = (MEMORY[0x277D821F8] + 16);
    v153 = &v136;
    sub_23C4AE584(&v146);
    v114 = llvm::Value::print(v46, &v146);
    v115 = v153;
    if (*(v153 + 23) < 0)
    {
      v115 = *v153;
    }

    sub_23C4AA240(v114, "bitcast: %s", v115);
    if (SHIBYTE(v138) < 0)
    {
      *v136 = 0;
      v137 = 0;
    }

    else
    {
      LOBYTE(v136) = 0;
      HIBYTE(v138) = 0;
    }

    v124 = llvm::Value::print(v66, &v146);
    v125 = v153;
    if (*(v153 + 23) < 0)
    {
      v125 = *v153;
    }

    sub_23C4AA240(v124, "load:    %s", v125);
    llvm::raw_ostream::~raw_ostream(&v146);
    if (SHIBYTE(v138) < 0)
    {
      operator delete(v136);
    }

LABEL_227:
    if (v155 != &v157)
    {
      free(v155);
    }

    v113 = 0;
    v6 = a1;
LABEL_230:
    if (v161 != &v163)
    {
      free(v161);
    }

    if (v171 == 1)
    {
      sub_23C4ED91C(&v169);
      llvm::deallocate_buffer(v169, (16 * v170));
      v171 = 0;
    }

    v116 = v167[0];
    if (v168)
    {
      v162 = 2;
      v163 = 0;
      v164 = -4096;
      v165 = 0;
      v161 = &unk_284F28A50;
      v156 = 2;
      v157 = 0;
      v158 = -8192;
      v159 = 0;
      v155 = &unk_284F28A50;
      v117 = *v167 + 56;
      v118 = v168 << 7;
      do
      {
        v119 = *(v117 - 32);
        if (v119 != v164 && v119 != v158)
        {
          v121 = *(v117 - 16);
          if (v117 != v121)
          {
            free(v121);
            v119 = *(v117 - 32);
          }
        }

        if (v119 != -8192 && v119 != -4096 && v119 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v117 - 48));
        }

        v117 += 128;
        v118 -= 128;
      }

      while (v118);
      if (v158 != -8192 && v158 != -4096 && v158)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v156);
      }

      if (v164 != -8192 && v164 != -4096 && v164)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v162);
      }

      v116 = v167[0];
      v123 = (v168 << 7);
    }

    else
    {
      v123 = 0;
    }

    llvm::deallocate_buffer(v116, v123);
    if (__p)
    {
      operator delete(__p);
    }

    v9 = 0;
    result = 0;
    a2 = v129;
  }

  while ((v113 & 1) != 0);
  return result;
}

BOOL sub_23C51B2F8(uint64_t a1, void *a2, const char *a3, llvm::PointerType **a4)
{
  v7 = a1;
  v82 = *MEMORY[0x277D85DE8];
  v8 = a2[1];
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    while (1)
    {
      v12 = 0;
      v13 = *(v8 + 24);
      if (!v13 || *(v13 + 16) != 62)
      {
        return v12;
      }

      v14 = *(v13 - 32 * (*(v13 + 20) & 0x7FFFFFF) + 32);
      if (v14)
      {
        if (*(v14 + 16) == 67)
        {
          v14 = *(v14 - 32);
          if (!v14)
          {
            return 0;
          }
        }
      }

      v15 = *(v14 + 16);
      if (v15 <= 0x1B)
      {
        if (v15 != 5)
        {
          LODWORD(v16) = 0;
LABEL_34:
          if (v15 != 5)
          {
            return 0;
          }

          v17 = *(v14 + 18);
LABEL_37:
          if (v17 == 17)
          {
            goto LABEL_41;
          }

          if (v17 != 25)
          {
            return 0;
          }

          goto LABEL_39;
        }

        v17 = *(v14 + 18);
        if (v17 != 13)
        {
          LODWORD(v16) = 0;
          goto LABEL_37;
        }
      }

      else if (v15 != 41)
      {
        LODWORD(v16) = 0;
        goto LABEL_31;
      }

      v18 = *(v14 + 20);
      if ((v18 & 0x40000000) != 0)
      {
        v19 = *(v14 - 8);
      }

      else
      {
        v19 = v14 - 32 * (v18 & 0x7FFFFFF);
      }

      v20 = *(v19 + 32);
      if (v20)
      {
        v21 = *(v20 + 16) == 16;
      }

      else
      {
        v21 = 0;
      }

      if (!v21)
      {
        return 0;
      }

      v22 = *(v20 + 32);
      if (v22 > 0x40)
      {
        v16 = **(v20 + 24);
        if (v16 < 0)
        {
          return 0;
        }
      }

      else
      {
        v16 = *(v20 + 24);
        if (v16 << -v22 < 0)
        {
          return 0;
        }
      }

      v23 = (v18 & 0x40000000) != 0 ? *(v14 - 8) : (v14 - 32 * (v18 & 0x7FFFFFF));
      v14 = *v23;
      if (!v14)
      {
        return 0;
      }

      v15 = *(v14 + 16);
      if (v15 <= 0x1B)
      {
        goto LABEL_34;
      }

LABEL_31:
      if (v15 != 53)
      {
        if (v15 != 45)
        {
          return 0;
        }

LABEL_41:
        v26 = *(v14 + 20);
        if ((v26 & 0x40000000) != 0)
        {
          v27 = *(v14 - 8);
        }

        else
        {
          v27 = (v14 - 32 * (v26 & 0x7FFFFFF));
        }

        v28 = v27[4];
        if (v28)
        {
          v29 = *(v28 + 16) == 16;
        }

        else
        {
          v29 = 0;
        }

        if (!v29)
        {
          return 0;
        }

        v30 = (v28 + 24);
        if (*(v28 + 32) >= 0x41u)
        {
          v30 = *v30;
        }

        v31 = *v30;
        if (v16 >= *v30)
        {
          return 0;
        }

        goto LABEL_68;
      }

LABEL_39:
      v24 = *(v14 + 20);
      if ((v24 & 0x40000000) != 0)
      {
        v25 = *(v14 - 8);
      }

      else
      {
        v25 = v14 - 32 * (v24 & 0x7FFFFFF);
      }

      v32 = *(v25 + 32);
      if (v32)
      {
        v33 = *(v32 + 16) == 16;
      }

      else
      {
        v33 = 0;
      }

      if (!v33)
      {
        return 0;
      }

      v34 = (v32 + 24);
      v35 = *(v32 + 32);
      v36 = v34;
      if (v35 >= 0x41)
      {
        v36 = *v34;
      }

      if (*v36 > 0x1FuLL)
      {
        return 0;
      }

      if ((v24 & 0x40000000) != 0)
      {
        v27 = *(v14 - 8);
      }

      else
      {
        v27 = (v14 - 32 * (v24 & 0x7FFFFFF));
      }

      if (v35 >= 0x41)
      {
        v34 = *v34;
      }

      v31 = 1 << *v34;
      if (v31 <= v16)
      {
        return 0;
      }

LABEL_68:
      v37 = *v27;
      if (v11)
      {
        a1 = sub_23C51D0FC(*v27, v73, &v78);
        if (!a1 || *(a1 + 16) != 84 || (v38 = *(a1 - 32)) == 0 || *(v38 + 16) || *(v38 + 24) != *(a1 + 72) || v38 != v7[564] && v38 != v7[565])
        {
          sub_23C4AA240(a1, "Will not coerce strided access %s : GEP not indexed with instance_id/vertex_id");
          return 0;
        }

        v9 = v37;
        v10 = v31;
      }

      else
      {
        v39 = v10 == v31 && v9 == v37;
        v31 = v10;
        if (!v39)
        {
          sub_23C4AA240(a1, "Will not coerce strided access %s : GEP indexed inconsistently");
          return 0;
        }
      }

      v11 = 0;
      v8 = *(v8 + 8);
      if (!v8)
      {
        goto LABEL_85;
      }
    }
  }

  v31 = 0;
LABEL_85:
  v69[0] = v69;
  v40 = **(*a2 + 16);
  MEMORY[0x28223BE20](a1);
  v43 = v69 - v42;
  if (v41 >= 0x200)
  {
    v44 = 512;
  }

  else
  {
    v44 = v41;
  }

  bzero(v69 - v42, v44);
  if (v31)
  {
    v45 = (v31 + 1) & 0x1FFFFFFFELL;
    v46 = vdupq_n_s64(v31 - 1);
    v47 = xmmword_23C5324B0;
    v48 = v43 + 8;
    v49 = vdupq_n_s64(2uLL);
    do
    {
      v50 = vmovn_s64(vcgeq_u64(v46, v47));
      if (v50.i8[0])
      {
        *(v48 - 1) = v40;
      }

      if (v50.i8[4])
      {
        *v48 = v40;
      }

      v47 = vaddq_s64(v47, v49);
      v48 += 2;
      v45 -= 2;
    }

    while (v45);
  }

  v51 = *a3;
  if (*a3)
  {
    v70[2] = a3;
    v52 = 3;
    v53 = 2;
  }

  else
  {
    v52 = 1;
    v53 = 3;
  }

  v70[0] = "agc.struct.coerced_arg";
  v71 = 3;
  v72 = v52;
  v21 = v51 == 0;
  v54 = v70;
  if (v21)
  {
    v54 = "agc.struct.coerced_arg";
  }

  v73[0] = v54;
  v73[2] = "x";
  v74 = v53;
  v75 = 3;
  v78 = v73;
  v80 = v31;
  v81 = 2050;
  v55 = v76;
  llvm::Twine::str(v76, &v78);
  if ((v77 & 0x80000000) == 0 || (v55 = v76[0]) != 0)
  {
    strlen(v55);
  }

  v56 = llvm::StructType::create();
  *a4 = v56;
  if (v77 < 0)
  {
    operator delete(v76[0]);
    v56 = *a4;
  }

  v78 = sub_23C49BBA0((v7 + 21), v56);
  v79 = v57;
  v58 = llvm::TypeSize::operator unsigned long long();
  v12 = (v58 & 3) == 0;
  if ((v58 & 3) != 0)
  {
    sub_23C4AA240(v58, "Will not coerce pointer %s : type size %u not a multiple of 4", a3, v58);
  }

  else
  {
    v59 = llvm::PointerType::get();
    v60 = v7 + 1;
    v61 = *(v7[20] + 80);
    if (v61)
    {
      v62 = v61 - 24;
    }

    else
    {
      v62 = 0;
    }

    v63 = *(v62 + 40);
    if (v63)
    {
      v64 = v63 - 24;
    }

    else
    {
      v64 = 0;
    }

    sub_23C4C30FC(v60 + *(*v7 - 24), v64);
    v65 = *(*v7 - 24);
    v81 = 257;
    v69[2] = v7 + 1;
    v69[3] = sub_23C49ACF8(v60 + v65, 49, a2, v59, &v78);
    v66 = a2[1];
    if (v66)
    {
      v69[1] = v7 + 24;
      do
      {
        v67 = *(v66 + 24);
        v66 = *(v66 + 8);
        if (v67 && *(v67 + 16) == 62)
        {
          operator new();
        }
      }

      while (v66);
    }
  }

  return v12;
}

uint64_t sub_23C51BBB8(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a2 + 32);
  if (!*(a2 + 32) || (v4 = *(a3 + 32), !*(a3 + 32)))
  {
    *(result + 32) = 256;
    return result;
  }

  if (v3 == 1)
  {
    v5 = *(a3 + 1);
    *result = *a3;
    *(result + 16) = v5;
    v6 = a3[4];
LABEL_8:
    *(result + 32) = v6;
    return result;
  }

  if (v4 == 1)
  {
    v7 = *(a2 + 1);
    *result = *a2;
    *(result + 16) = v7;
    v6 = a2[4];
    goto LABEL_8;
  }

  v8 = *(a2 + 33);
  if (v8 == 1)
  {
    v9 = a2;
    a2 = *a2;
    v8 = v9[1];
  }

  else
  {
    LOBYTE(v3) = 2;
  }

  v10 = a3[1];
  if (*(a3 + 33) == 1)
  {
    v11 = *a3;
  }

  else
  {
    LOBYTE(v4) = 2;
    v11 = a3;
  }

  *result = a2;
  *(result + 8) = v8;
  *(result + 16) = v11;
  *(result + 24) = v10;
  *(result + 32) = v3;
  *(result + 33) = v4;
  return result;
}

unsigned __int8 *sub_23C51BC4C(void *a1, llvm::Type *this, int a3, void *a4, uint64_t a5)
{
  v8 = *(this + 2);
  if ((v8 & 0xFE) == 0x10)
  {
    if (a3)
    {
      v9 = v8 & 0x11;
      if (v9 == 17)
      {
        result = sub_23C51CC14(a1, this, 0, a4);
        if (result)
        {
          return result;
        }
      }

      else if (v9 == 16)
      {
        result = sub_23C51C9CC(a1, this, 0, a4, a5);
        if (result)
        {
          return result;
        }
      }
    }

    v33 = sub_23C49BBA0((a1 + 21), this);
    v34 = v11;
    v12 = llvm::TypeSize::operator unsigned long long();
    v13 = llvm::ArrayType::get(*(a1 + *(*a1 - 24) + 192), (v12 >> 2));
    v14 = llvm::UndefValue::get();
    v33 = (sub_23C49BBFC((a1 + 21), this) + 7) >> 3;
    v34 = v15 == 1;
    v16 = llvm::TypeSize::operator unsigned long long();
    v31[0] = 0;
    if (v16 >= 4)
    {
      v17 = 0;
      v18 = v16 >> 2;
      do
      {
        v19 = a1 + *(*a1 - 24);
        v20 = *(*a4 + 8 * v17);
        v21 = *(v19 + 24);
        v35 = 257;
        v22 = sub_23C49ACF8((v19 + 8), 49, v20, v21, &v33);
        v23 = *(*a1 - 24);
        v35 = 257;
        v14 = sub_23C49A744((a1 + v23 + 8), v14, v22, v31, 1, &v33);
        v17 = v31[0] + 1;
        v31[0] = v17;
      }

      while (v17 < v18);
    }

    v24 = (a1 + *(*a1 - 24));
    v35 = 257;
    PointerCast = sub_23C506924(v24 + 1, v13, &v33);
    sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), v14, PointerCast, 0);
    v26 = *(*a1 - 24);
    v27 = llvm::PointerType::get();
    v32 = 257;
    if (*PointerCast != v27)
    {
      v28 = (a1 + v26);
      if (PointerCast[16] > 0x14u)
      {
        v35 = 257;
        PointerCast = llvm::CastInst::CreatePointerCast();
        sub_23C49B15C(v28 + 1, PointerCast, v31);
      }

      else
      {
        PointerCast = (*(*v28[10] + 232))(v28[10], PointerCast, v27);
        if (PointerCast)
        {
          v29 = PointerCast[16] >= 0x1Cu;
        }

        else
        {
          v29 = 0;
        }

        if (v29)
        {
          sub_23C49B15C(v28 + 1, PointerCast, v31);
        }
      }
    }

    v30 = (a1 + *(*a1 - 24));
    v35 = 257;
    return sub_23C497C88(v30 + 1, **(*PointerCast + 16), PointerCast, 0, &v33);
  }

  else
  {

    return sub_23C51CD3C(a1, this, 0, a4);
  }
}

unint64_t sub_23C51BFD8(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    if (*a1 > a2 || *a1 + 32 * v2 <= a2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return a2;
}

int32x2_t sub_23C51C054(int32x2_t *a1, void *a2)
{
  v4 = a2[5];
  if (v4 != a2 + 7)
  {
    free(v4);
  }

  v8[0] = 2;
  v8[1] = 0;
  v9 = -8192;
  v10 = 0;
  sub_23C4DDEAC((a2 + 1), v8);
  v5 = v9;
  a2[4] = v10;
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

void sub_23C51C110(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a1 + 8;
  sub_23C4EDBD4(v11, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v13 = v4;
  v28 = 0;
  v5 = sub_23C51C418(*v4, v4[2].i32[0], v12, &v28);
  v6 = *v4 + (v4[2].u32[0] << 7);
  if (v5)
  {
    v7 = v28;
  }

  else
  {
    v7 = v6;
  }

  v8 = v13;
  if ((*v13 + (v13[2].u32[0] << 7)) != v7)
  {
    v24 = v26;
    v25 = 0x800000000;
    if (v7[12])
    {
      sub_23C4A3E4C(&v24, (v7 + 10));
      v8 = v13;
    }

    v27 = *(v7 + 15);
    sub_23C51C054(v8, v7);
    v9 = v13;
    v19 = a2;
    v20 = v22;
    v21 = 0x800000000;
    if (v25)
    {
      sub_23C4A3E4C(&v20, &v24);
      a2 = v19;
    }

    v23 = v27;
    sub_23C4EDC2C(&v14, a2);
    v14 = &unk_284F28A28;
    v17 = v9;
    sub_23C4EDBD4(v29, (LODWORD(v15[0]) >> 1) & 3, v15);
    v28 = &unk_284F28A28;
    v31 = v17;
    v32 = v34;
    v33 = 0x800000000;
    if (v21)
    {
      sub_23C4A3E4C(&v32, &v20);
    }

    v35 = v23;
    v18 = 0;
    if ((sub_23C51C418(*v9, v9[4], v30, &v18) & 1) == 0)
    {
      v10 = sub_23C51C4AC(v9, &v28, v18);
      sub_23C4DDEAC((v10 + 1), v29);
      v10[4] = v31;
      v10[5] = v10 + 7;
      v10[6] = 0x800000000;
      if (v33)
      {
        sub_23C4A3E4C((v10 + 5), &v32);
      }

      v10[15] = v35;
    }

    if (v32 != v34)
    {
      free(v32);
    }

    if (v30 != -8192 && v30 != -4096 && v30)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v29);
    }

    if (v16 != -8192 && v16 != -4096 && v16)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v15);
    }

    if (v20 != v22)
    {
      free(v20);
    }

    if (v24 != v26)
    {
      free(v24);
    }
  }

  if (v12 != -8192 && v12 != -4096)
  {
    if (v12)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v11);
    }
  }
}

uint64_t sub_23C51C418(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = a1 + (v4 << 7);
    v6 = *(v5 + 24);
    if (v6 == a3)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -8192;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & (a2 - 1);
        v5 = a1 + (v4 << 7);
        v6 = *(v5 + 24);
        v7 = 1;
        if (v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

uint64_t sub_23C51C4AC(llvm::ValueHandleBase *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
  {
    goto LABEL_3;
  }

  sub_23C51C560(a1, v6);
  v8 = 0;
  sub_23C51C418(*a1, *(a1 + 4), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 2);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 3);
  }

  return a3;
}

llvm::ValueHandleBase *sub_23C51C560(llvm::ValueHandleBase *a1, int a2)
{
  v3 = *(a1 + 4);
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

  *(a1 + 4) = v8;
  *a1 = MEMORY[0x23EED4160](v8 << 7, 8);
  if (v4)
  {
    sub_23C51C7C0(a1);
    v23[0] = 2;
    v23[1] = 0;
    v24 = -4096;
    v25 = 0;
    v21 = 0;
    v22 = &unk_284F28A28;
    v19[0] = 2;
    v19[1] = 0;
    v20 = -8192;
    v9 = (v3 << 7);
    if (v3)
    {
      v10 = 0;
      do
      {
        v11 = &v10[v4];
        v12 = *&v10[v4 + 24];
        if (v12 != v24 && v12 != v20)
        {
          v26 = 0;
          sub_23C51C418(*a1, *(a1 + 4), v12, &v26);
          v14 = v26;
          sub_23C4DDEAC((v26 + 1), v11 + 1);
          v14[4] = *(v11 + 4);
          v14[5] = v14 + 7;
          v14[6] = 0x800000000;
          if (*(v11 + 12))
          {
            sub_23C4A3E4C((v14 + 5), (v11 + 40));
          }

          v14[15] = *&v10[v4 + 120];
          ++*(a1 + 2);
          v15 = *(v11 + 5);
          if (&v10[v4 + 56] != v15)
          {
            free(v15);
          }
        }

        v16 = *(v11 + 3);
        if (v16 != -8192 && v16 != -4096 && v16 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v10[v4 + 8]);
        }

        v10 += 128;
      }

      while (v9 != v10);
      if (v20 != -8192 && v20 != -4096 && v20)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v19);
      }
    }

    if (v24 != -8192 && v24 != -4096 && v24)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }

    return llvm::deallocate_buffer(v4, v9);
  }

  else
  {

    return sub_23C51C7C0(a1);
  }
}

llvm::ValueHandleBase *sub_23C51C7C0(llvm::ValueHandleBase *result)
{
  *(result + 1) = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 4);
  if (v1)
  {
    v2 = *result;
    v3 = (*result + (v1 << 7));
    result = (*result + 8);
    do
    {
      v4 = sub_23C4EDBD4(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_284F28A28;
      *(v4 + 3) = v9;
      v5 = v4 + 120;
      result = (v4 + 128);
      v2 += 128;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t sub_23C51C89C(uint64_t a1)
{
  v1 = a1 + 8;
  sub_23C4EDBD4(v8, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v10 = v2;
  v11 = 0;
  result = sub_23C51C418(*v2, *(v2 + 16), v9, &v11);
  if (result)
  {
    v4 = v11;
    v5 = v11[5];
    if (v5 != (v11 + 7))
    {
      free(v5);
    }

    v12[0] = 2;
    v12[1] = 0;
    v13 = -8192;
    v14 = 0;
    v11 = &unk_284F28A28;
    result = sub_23C4DDEAC((v4 + 1), v12);
    v6 = v13;
    v4[4] = v14;
    if (v6 != -8192 && v6 != -4096 && v6)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v12);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return result;
}

unsigned __int8 *sub_23C51C9CC(void *a1, uint64_t a2, int a3, void *a4, uint64_t a5)
{
  v11 = llvm::UndefValue::get();
  StructLayout = llvm::DataLayout::getStructLayout();
  v41 = 0;
  if (*(a2 + 12))
  {
    v13 = 0;
    v14 = StructLayout + 16;
    while (1)
    {
      v15 = *(*(a2 + 16) + 8 * v13);
      v16 = *(v14 + 8 * v13);
      v37 = sub_23C49BBA0((a1 + 21), v15);
      LODWORD(v38) = v17;
      v18 = llvm::TypeSize::operator unsigned long long() & 3;
      if ((v16 & 3) != 0 || v18 != 0)
      {
        return 0;
      }

      v20 = a3 + (v16 >> 2);
      v21 = *(v15 + 2);
      if ((v21 & 0xFE) == 0x10)
      {
        v22 = v21 & 0x11;
        if (v22 == 16)
        {
          v40 = 257;
          v23 = sub_23C51C9CC(a1, v15, v20, a4, &v37);
        }

        else
        {
          if (v22 != 17)
          {
            return 0;
          }

          v23 = sub_23C51CC14(a1, v15, v20, a4);
        }
      }

      else
      {
        v23 = sub_23C51CD3C(a1, v15, v20, a4);
      }

      if (!v23)
      {
        return 0;
      }

      v24 = *(*a1 - 24);
      v25 = *(a5 + 32);
      if (v25 == 1)
      {
        break;
      }

      if (*(a5 + 32))
      {
        v30 = *a5;
        v31 = *(a5 + 8);
        v26 = 2;
        if (*(a5 + 33) != 1)
        {
          LOBYTE(v25) = 2;
          v30 = a5;
        }

        v33 = v30;
        v34 = v31;
        v35 = ".elem";
        LOBYTE(v36) = v25;
        HIBYTE(v36) = 3;
        v28 = v5 & 0xFFFFFFFF00000000;
        v5 = v5 & 0xFFFFFFFF00000000 | v41;
        v29 = &v33;
        goto LABEL_22;
      }

      v26 = 0;
      v36 = 256;
      v27 = 1;
LABEL_23:
      LOBYTE(v40) = v26;
      HIBYTE(v40) = v27;
      v11 = sub_23C49A744((a1 + v24 + 8), v11, v23, &v41, 1, &v37);
      v13 = v41 + 1;
      v41 = v13;
      if (v13 >= *(a2 + 12))
      {
        return v11;
      }
    }

    v33 = ".elem";
    v36 = 259;
    v5 = v5 & 0xFFFFFFFF00000000 | v41;
    v26 = 3;
    v28 = v34;
    v29 = ".elem";
LABEL_22:
    v37 = v29;
    v38 = v28;
    v27 = 8;
    v39 = v5;
    goto LABEL_23;
  }

  return v11;
}

unsigned __int8 *sub_23C51CC14(void *a1, llvm::UndefValue *a2, unsigned int a3, void *a4)
{
  v8 = *(a2 + 3);
  v17 = sub_23C49BBA0((a1 + 21), v8);
  v18 = v9;
  v10 = llvm::TypeSize::operator unsigned long long();
  if ((*(v8 + 2) & 0xFE) == 0x10 || (v10 & 3) != 0)
  {
    return 0;
  }

  v12 = llvm::UndefValue::get();
  v20 = 0;
  if (*(a2 + 4))
  {
    v13 = v10 >> 2;
    do
    {
      v14 = sub_23C51CD3C(a1, v8, a3, a4);
      v15 = *(*a1 - 24);
      v19 = 257;
      v12 = sub_23C49A744((a1 + v15 + 8), v12, v14, &v20, 1, &v17);
      a3 += v13;
      ++v20;
    }

    while (*(a2 + 4) > v20);
  }

  return v12;
}

unsigned __int8 *sub_23C51CD3C(void *a1, llvm::Type *this, unsigned int a3, void *a4)
{
  v4 = a4;
  v46 = *MEMORY[0x277D85DE8];
  if ((*(this + 2) & 0xFE) != 0x12)
  {
    v22 = a1 + *(*a1 - 24);
    v23 = *(*a4 + 8 * a3);
    v41 = 257;
    return sub_23C49ACF8((v22 + 8), 49, v23, this, v40);
  }

  v8 = **(this + 2);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(this);
  v10 = *(this + 8);
  if (ScalarSizeInBits == 8)
  {
    v37 = llvm::FixedVectorType::get();
    v38 = a1 + *(*a1 - 24);
    v39 = *(*v4 + 8 * a3);
    v41 = 257;
    v11 = sub_23C49ACF8((v38 + 8), 49, v39, v37, v40);
    if (v10 == 4)
    {
      return v11;
    }

    v34 = a1 + *(*a1 - 24);
    v35 = v11;
    v36 = v10;
    return sub_23C505670(v34, v35, v36, 1);
  }

  if (ScalarSizeInBits == 16)
  {
    v26 = llvm::FixedVectorType::get();
    v27 = a1 + *(*a1 - 24);
    v28 = *(*v4 + 8 * a3);
    v41 = 257;
    v11 = sub_23C49ACF8((v27 + 8), 49, v28, v26, v40);
    if ((v10 - 3) > 1)
    {
      return v11;
    }

    v29 = a1 + *(*a1 - 24);
    v30 = *(*v4 + 8 * (a3 + 1));
    v41 = 257;
    v31 = sub_23C49ACF8((v29 + 8), 49, v30, v26, v40);
    v32 = (a1 + *(*a1 - 24));
    v42 = llvm::ConstantInt::get();
    v43 = llvm::ConstantInt::get();
    v44 = llvm::ConstantInt::get();
    v45 = llvm::ConstantInt::get();
    v33 = llvm::ConstantVector::get();
    v41 = 257;
    v11 = sub_23C49A3AC(v32 + 1, v11, v31, v33, v40);
    if (v10 != 3)
    {
      return v11;
    }

    v34 = a1 + *(*a1 - 24);
    v35 = v11;
    v36 = 3;
    return sub_23C505670(v34, v35, v36, 1);
  }

  if (ScalarSizeInBits != 32)
  {
    return 0;
  }

  v11 = llvm::UndefValue::get();
  if (v10)
  {
    v12 = 0;
    v13 = a3;
    do
    {
      v14 = *(*a1 - 24);
      v15 = *(*v4 + 8 * (v13 + v12));
      v41 = 257;
      v16 = sub_23C49ACF8(a1 + v14 + 8, 49, v15, v8, v40);
      v17 = v4;
      v18 = v10;
      v19 = a1 + *(*a1 - 24);
      v41 = 257;
      v20 = llvm::ConstantInt::get();
      v21 = (v19 + 8);
      v10 = v18;
      v4 = v17;
      v11 = sub_23C505AA8(v21, v11, v16, v20, v40);
      ++v12;
    }

    while (v10 != v12);
  }

  return v11;
}

uint64_t sub_23C51D0FC(uint64_t result, int *a2, void *a3)
{
  v3 = *(result + 16);
  if (v3 <= 0x1B)
  {
    if (v3 != 5 || *(result + 18) != 13)
    {
      return result;
    }
  }

  else if (v3 != 41)
  {
    v4 = *(result + 20);
    v5 = 0;
    if ((v4 & 0x40000000) != 0)
    {
      v6 = *(result - 8);
    }

    else
    {
      v6 = (result - 32 * (v4 & 0x7FFFFFF));
    }

    v9 = result;
LABEL_20:
    v13 = *v6;
    v14 = *(v9 + 16);
    if (v14 == 54)
    {
      v17 = *(v9 + 20);
      if ((v17 & 0x40000000) != 0)
      {
        v18 = *(v9 - 8);
      }

      else
      {
        v18 = v9 - 32 * (v17 & 0x7FFFFFF);
      }

      v25 = *(v18 + 32);
      if (v25)
      {
        v26 = *(v25 + 16) == 16;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        if (*(v25 + 32) > 0x40u)
        {
          v27 = **(v25 + 24);
          if (v27 > 0x1F)
          {
            return result;
          }
        }

        else
        {
          v27 = *(v25 + 24);
          if (v27 >= 0x20)
          {
            return result;
          }
        }

        v24 = 1 << v27;
LABEL_75:
        *a2 = v24;
        *a3 = v5;
        return v13;
      }
    }

    else if (v14 == 47)
    {
      v15 = *(v9 + 20);
      v16 = (v15 & 0x40000000) != 0 ? *(v9 - 8) : v9 - 32 * (v15 & 0x7FFFFFF);
      v22 = *(v16 + 32);
      if (v22)
      {
        if (*(v22 + 16) == 16)
        {
          v23 = (v22 + 24);
          if (*(v22 + 32) >= 0x41u)
          {
            v23 = *v23;
          }

          v24 = *v23;
          goto LABEL_75;
        }
      }
    }

    return result;
  }

  v7 = *(result + 20);
  if ((v7 & 0x40000000) != 0)
  {
    v8 = *(result - 8);
  }

  else
  {
    v8 = (result - 32 * (v7 & 0x7FFFFFF));
  }

  v9 = *v8;
  if (v9)
  {
    v10 = *(v9 + 16) >= 0x1Cu;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = *(v9 + 20);
    if ((v11 & 0x7FFFFFF) != 0)
    {
      v12 = (v11 & 0x40000000) != 0 ? *(v9 - 8) : (v9 - 32 * (v11 & 0x7FFFFFF));
      v19 = *v12;
      v20 = *(v19 + 16);
      if (v20 <= 0x1B)
      {
        if (v20 != 5 || *(v19 + 18) != 15)
        {
          return result;
        }
      }

      else if (v20 != 43)
      {
        return result;
      }

      v21 = (v7 & 0x40000000) != 0 ? *(result - 8) : result - 32 * (v7 & 0x7FFFFFF);
      v28 = *(v21 + 32);
      v29 = *(v28 + 16) == 84 ? v28 : 0;
      v30 = *(v19 + 20);
      v31 = (v30 & 0x40000000) != 0 ? *(v19 - 8) : v19 - 32 * (v30 & 0x7FFFFFF);
      v32 = *(v31 + 32);
      v33 = *(v32 + 16) == 84 ? v32 : 0;
      if (v29 && v33)
      {
        v5 = *(v29 - 32);
        if (!v5 || *(v5 + 16) || (v34 = *(v29 + 72), v35 = *(v29 - 32), *(v5 + 24) != v34))
        {
          v35 = 0;
        }

        v36 = *(v33 - 32);
        if (!v36 || *(v36 + 16) || *(v36 + 24) != *(v33 + 72))
        {
          v36 = 0;
        }

        if (v35 == v36 && (*(v5 + 20) & 0x7FFFFFF) == 0)
        {
          if ((v30 & 0x40000000) != 0)
          {
            v6 = *(v19 - 8);
          }

          else
          {
            v6 = (v19 - 32 * (v30 & 0x7FFFFFF));
          }

          goto LABEL_20;
        }
      }
    }
  }

  return result;
}

llvm::ValueHandleBase *sub_23C51D35C(llvm::ValueHandleBase *result)
{
  *(result + 1) = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 4);
  if (v1)
  {
    v2 = *result;
    v3 = (*result + (v1 << 7));
    result = (*result + 8);
    do
    {
      v4 = sub_23C4EDBD4(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_284F28A50;
      *(v4 + 3) = v9;
      v5 = v4 + 120;
      result = (v4 + 128);
      v2 += 128;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t sub_23C51D438(uint64_t a1, uint64_t a2)
{
  sub_23C4EDC2C(&v7, a2);
  v7 = &unk_284F28A50;
  v10 = a1;
  v11 = 0;
  v3 = sub_23C51C418(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = sub_23C51DC24(a1, &v7, v11);
    sub_23C4DDEAC((v4 + 8), v8);
    *(v4 + 32) = v10;
    *(v4 + 40) = v4 + 56;
    *(v4 + 48) = 0x800000000;
    *(v4 + 120) = 0;
    *(v4 + 124) = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 40;
}

void sub_23C51D518(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_23C496CE8();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_23C496CE8();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t sub_23C51D618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23C4EDC2C(&v10, a2);
  v10 = &unk_284F28A28;
  v13 = a1;
  v14 = 0;
  v5 = sub_23C51C418(*a1, *(a1 + 16), v12, &v14);
  v6 = v14;
  if ((v5 & 1) == 0)
  {
    v6 = sub_23C51C4AC(a1, &v10, v14);
    sub_23C4DDEAC((v6 + 8), v11);
    *(v6 + 32) = v13;
    *(v6 + 40) = v6 + 56;
    *(v6 + 48) = 0x800000000;
    *(v6 + 120) = 0;
    *(v6 + 124) = 0;
  }

  if (v12 != -8192 && v12 != -4096 && v12 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v11);
  }

  result = sub_23C4A3D80(v6 + 40, a3);
  *(v6 + 120) = *(a3 + 80);
  *(a1 + 64) &= *(a3 + 80);
  v9 = *(a3 + 84);
  *(a1 + 65) |= v9 == 2;
  *(a1 + 66) |= v9 == 3;
  return result;
}

BOOL sub_23C51D748(uint64_t a1, uint64_t a2, llvm::DataLayout *a3, int a4)
{
  if (!a4 || (*(a2 + 8) & 0xFE) == 0x12)
  {
    return 0;
  }

  sub_23C49BBFC(a3, a2);
  if (llvm::TypeSize::operator unsigned long long() != 4)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  if ((v7 & 0xFE) != 0x10)
  {
    return 1;
  }

  if ((v7 & 0x11) != 0x10 || *(a1 + 12) != 1)
  {
    return 0;
  }

  result = 0;
  v8 = **(a1 + 16);
  if (v8 && *(v8 + 8) == 17)
  {
    if (*(v8 + 32) == 3)
    {
      sub_23C49BBFC(a3, **(v8 + 16));
      return llvm::TypeSize::operator unsigned long long() == 4;
    }

    return 0;
  }

  return result;
}

void sub_23C51D860(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a1 + 8;
  sub_23C4EDBD4(v11, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v13 = v4;
  v28 = 0;
  v5 = sub_23C51C418(*v4, v4[2].i32[0], v12, &v28);
  v6 = *v4 + (v4[2].u32[0] << 7);
  if (v5)
  {
    v7 = v28;
  }

  else
  {
    v7 = v6;
  }

  v8 = v13;
  if ((*v13 + (v13[2].u32[0] << 7)) != v7)
  {
    v24 = v26;
    v25 = 0x800000000;
    if (v7[12])
    {
      sub_23C4A3E4C(&v24, (v7 + 10));
      v8 = v13;
    }

    v27 = *(v7 + 15);
    sub_23C51DB68(v8, v7);
    v9 = v13;
    v19 = a2;
    v20 = v22;
    v21 = 0x800000000;
    if (v25)
    {
      sub_23C4A3E4C(&v20, &v24);
      a2 = v19;
    }

    v23 = v27;
    sub_23C4EDC2C(&v14, a2);
    v14 = &unk_284F28A50;
    v17 = v9;
    sub_23C4EDBD4(v29, (LODWORD(v15[0]) >> 1) & 3, v15);
    v28 = &unk_284F28A50;
    v31 = v17;
    v32 = v34;
    v33 = 0x800000000;
    if (v21)
    {
      sub_23C4A3E4C(&v32, &v20);
    }

    v35 = v23;
    v18 = 0;
    if ((sub_23C51C418(*v9, v9[4], v30, &v18) & 1) == 0)
    {
      v10 = sub_23C51DC24(v9, &v28, v18);
      sub_23C4DDEAC((v10 + 1), v29);
      v10[4] = v31;
      v10[5] = v10 + 7;
      v10[6] = 0x800000000;
      if (v33)
      {
        sub_23C4A3E4C((v10 + 5), &v32);
      }

      v10[15] = v35;
    }

    if (v32 != v34)
    {
      free(v32);
    }

    if (v30 != -8192 && v30 != -4096 && v30)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v29);
    }

    if (v16 != -8192 && v16 != -4096 && v16)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v15);
    }

    if (v20 != v22)
    {
      free(v20);
    }

    if (v24 != v26)
    {
      free(v24);
    }
  }

  if (v12 != -8192 && v12 != -4096)
  {
    if (v12)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v11);
    }
  }
}

int32x2_t sub_23C51DB68(int32x2_t *a1, void *a2)
{
  v4 = a2[5];
  if (v4 != a2 + 7)
  {
    free(v4);
  }

  v8[0] = 2;
  v8[1] = 0;
  v9 = -8192;
  v10 = 0;
  sub_23C4DDEAC((a2 + 1), v8);
  v5 = v9;
  a2[4] = v10;
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

uint64_t sub_23C51DC24(llvm::ValueHandleBase *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
  {
    goto LABEL_3;
  }

  sub_23C51DCD8(a1, v6);
  v8 = 0;
  sub_23C51C418(*a1, *(a1 + 4), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 2);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 3);
  }

  return a3;
}

llvm::ValueHandleBase *sub_23C51DCD8(llvm::ValueHandleBase *a1, int a2)
{
  v3 = *(a1 + 4);
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

  *(a1 + 4) = v8;
  *a1 = MEMORY[0x23EED4160](v8 << 7, 8);
  if (v4)
  {
    sub_23C51D35C(a1);
    v23[0] = 2;
    v23[1] = 0;
    v24 = -4096;
    v25 = 0;
    v21 = 0;
    v22 = &unk_284F28A50;
    v19[0] = 2;
    v19[1] = 0;
    v20 = -8192;
    v9 = (v3 << 7);
    if (v3)
    {
      v10 = 0;
      do
      {
        v11 = &v10[v4];
        v12 = *&v10[v4 + 24];
        if (v12 != v24 && v12 != v20)
        {
          v26 = 0;
          sub_23C51C418(*a1, *(a1 + 4), v12, &v26);
          v14 = v26;
          sub_23C4DDEAC((v26 + 1), v11 + 1);
          v14[4] = *(v11 + 4);
          v14[5] = v14 + 7;
          v14[6] = 0x800000000;
          if (*(v11 + 12))
          {
            sub_23C4A3E4C((v14 + 5), (v11 + 40));
          }

          v14[15] = *&v10[v4 + 120];
          ++*(a1 + 2);
          v15 = *(v11 + 5);
          if (&v10[v4 + 56] != v15)
          {
            free(v15);
          }
        }

        v16 = *(v11 + 3);
        if (v16 != -8192 && v16 != -4096 && v16 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v10[v4 + 8]);
        }

        v10 += 128;
      }

      while (v9 != v10);
      if (v20 != -8192 && v20 != -4096 && v20)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v19);
      }
    }

    if (v24 != -8192 && v24 != -4096 && v24)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }

    return llvm::deallocate_buffer(v4, v9);
  }

  else
  {

    return sub_23C51D35C(a1);
  }
}

uint64_t sub_23C51DF38(uint64_t a1)
{
  v1 = a1 + 8;
  sub_23C4EDBD4(v8, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v10 = v2;
  v11 = 0;
  result = sub_23C51C418(*v2, *(v2 + 16), v9, &v11);
  if (result)
  {
    v4 = v11;
    v5 = v11[5];
    if (v5 != (v11 + 7))
    {
      free(v5);
    }

    v12[0] = 2;
    v12[1] = 0;
    v13 = -8192;
    v14 = 0;
    v11 = &unk_284F28A50;
    result = sub_23C4DDEAC((v4 + 1), v12);
    v6 = v13;
    v4[4] = v14;
    if (v6 != -8192 && v6 != -4096 && v6)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v12);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return result;
}

uint64_t sub_23C51E068(uint64_t a1)
{
  v2 = sub_23C52A428(a1);
  if (*(a1 + 10) == 1)
  {
    v3 = a1 + *(*a1 - 24);
    if (**(*(*(a1 + 160) + 24) + 16) == *(v3 + 144))
    {
      v4 = *(v3 + 344);
      if (v4[1668] == 1)
      {
        (*(*v4 + 272))(v4, *(a1 + 152));
      }
    }
  }

  if (MGGetBoolAnswer())
  {
    v5 = sub_23C4A2690("AGX_MTL_TESSELLATION_VS_WRITETHROUGH");
    if (v5)
    {
      if (*v5 != 48 && atoi(v5))
      {
        v6 = *(a1 + *(*a1 - 24) + 344);
        (*(*v6 + 304))(v6, *(a1 + 152));
      }
    }
  }

  return v2;
}

uint64_t sub_23C51E194(void *a1)
{
  v2 = sub_23C518E10(a1);
  if (v2 && (*(*(a1 + *(*a1 - 24) + 344) + 1653) & 1) == 0)
  {
    Function = llvm::Module::getFunction();
    a1[564] = Function;
    if (!Function)
    {
      a1[564] = llvm::Module::getFunction();
    }

    v4 = llvm::Module::getFunction();
    a1[565] = v4;
    if (!v4)
    {
      a1[565] = llvm::Module::getFunction();
    }

    v5 = llvm::Module::getFunction();
    a1[566] = v5;
    if (!v5)
    {
      a1[566] = llvm::Module::getFunction();
    }

    v6 = llvm::Module::getFunction();
    a1[567] = v6;
    if (!v6)
    {
      a1[567] = llvm::Module::getFunction();
    }
  }

  return v2;
}

void sub_23C51E360(uint64_t a1)
{
  if (*(a1 + 32) > 1u)
  {
    llvm::legacy::PassManager::run(*(*(a1 + *(*a1 - 24) + 400) + 312), *(a1 + *(*a1 - 24) + 320));
    sub_23C4B20A8(a1 + *(*a1 - 24), "After inliner in AGCLLVMAGPVertexShaderRegular::simplifyGenericIR");
    *(a1 + 32) = 1;
  }

  v2 = *(a1 + *(*a1 - 24) + 320);

  sub_23C4D87A4(v2);
}

void sub_23C51E418(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = off_284F1F438;
  v5 = a1 + 568;
  a1[568] = &off_284F1F630;
  v6 = a1[558];
  if (v6 != a1 + 560)
  {
    free(v6);
  }

  v7 = a1[492];
  if (v7 != a1 + 494)
  {
    free(v7);
  }

  sub_23C51784C((a1 + 487), a2, a3, a4);
  sub_23C52B334(a1, off_284F1D438);
  sub_23C4B130C(v5);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C51E4E8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = off_284F1F438;
  v5 = a1 + 568;
  a1[568] = &off_284F1F630;
  v6 = a1[558];
  if (v6 != a1 + 560)
  {
    free(v6);
  }

  v7 = a1[492];
  if (v7 != a1 + 494)
  {
    free(v7);
  }

  sub_23C51784C((a1 + 487), a2, a3, a4);
  sub_23C52B334(a1, off_284F1D438);
  sub_23C4B130C(v5);
  return a1;
}

void sub_23C51E5B4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4544);
  if (v3)
  {
    sub_23C49F8D0(v13, "AGCTessellationDriverState");
    sub_23C49F8D0(v11, "patch_type");
    sub_23C4B705C(&v15, v11, off_278BC0020[*v3 & 3]);
    sub_23C49F8D0(v9, "partition_mode");
    sub_23C4B705C(&v16, v9, off_278BBFFD0[(*v3 >> 2) & 7]);
    sub_23C49F8D0(v7, "step_function");
    sub_23C4B705C(&v17, v7, off_278BBFFF0[*v3 >> 5]);
    sub_23C49F8D0(__p, "unused");
    sub_23C4B7004(&v18, __p, *v3 >> 8);
    sub_23C4B70B4(a2, v13, &v15, 4);
    for (i = 0; i != -12; i -= 3)
    {
      if (SHIBYTE(v18.__r_.__value_.__r.__words[i + 2]) < 0)
      {
        operator delete(*(&v18.__r_.__value_.__l.__data_ + i * 8));
      }
    }

    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    if (v8 < 0)
    {
      operator delete(v7[0]);
    }

    if (v10 < 0)
    {
      operator delete(v9[0]);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  else
  {

    sub_23C49F8D0(a2, &unk_23C53F34D);
  }
}

void sub_23C51E7B0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = &unk_284F1D490;
  v4[573] = &unk_284F1D690;
  sub_23C4DE94C((v4 + 569), a2, a3, a4);
  *v4 = &unk_284F1FFB0;
  v4[573] = &off_284F201A8;
  v8 = v4[558];
  if (v8 != v4 + 560)
  {
    free(v8);
  }

  v9 = v4[492];
  if (v9 != v4 + 494)
  {
    free(v9);
  }

  sub_23C51784C((v4 + 487), v5, v6, v7);
  sub_23C52B334(v4, off_284F1D708);
  sub_23C4B130C((v4 + 573));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C51E8D8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = &unk_284F1D490;
  v4[573] = &unk_284F1D690;
  sub_23C4DE94C((v4 + 569), a2, a3, a4);
  *v4 = &unk_284F1FFB0;
  v4[573] = &off_284F201A8;
  v8 = v4[558];
  if (v8 != v4 + 560)
  {
    free(v8);
  }

  v9 = v4[492];
  if (v9 != v4 + 494)
  {
    free(v9);
  }

  sub_23C51784C((v4 + 487), v5, v6, v7);
  sub_23C52B334(v4, off_284F1D708);

  return sub_23C4B130C((v4 + 573));
}

uint64_t sub_23C51E9E8(uint64_t a1)
{
  v2 = *(a1 + 3944);
  if (v2)
  {
    v3 = *(a1 + 3936);
    v4 = v3 + 32 * v2;
    v5 = *(a1 + 4552);
    v6 = *(a1 + 4560);
    v7 = &v5[v6];
    do
    {
      i = v5;
      if (v6)
      {
          ;
        }
      }

      v10 = *(v3 + 4);
      if (i != v7)
      {
        v11 = *i;
        while (*(v11 + 8) != v10)
        {
          do
          {
            v12 = i[1];
            ++i;
            v11 = v12;
            if (v12)
            {
              v13 = v11 == -8;
            }

            else
            {
              v13 = 1;
            }
          }

          while (v13);
          if (i == v7)
          {
            goto LABEL_21;
          }
        }

        v10 = *(v11 + 16);
      }

LABEL_21:
      *(v3 + 4) = v10;
      v3 += 32;
    }

    while (v3 != v4);
  }

  sub_23C503E5C(a1, (a1 + 4552));
  sub_23C5184A4(a1);
  return 1;
}

uint64_t sub_23C51EAB0(void *a1)
{
  v2 = sub_23C51E068(a1);
  if (v2)
  {
    v3 = *(a1 + *(*a1 - 24) + 344);
    (*(*v3 + 304))(v3, a1[19]);
  }

  return v2;
}

void sub_23C51EB2C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_284F1D490;
  v5 = a1 + 573;
  a1[573] = &unk_284F1D690;
  sub_23C4DE94C((a1 + 569), a2, a3, a4);
  *a1 = &unk_284F1FFB0;
  a1[573] = &off_284F201A8;
  v9 = a1[558];
  if (v9 != a1 + 560)
  {
    free(v9);
  }

  v10 = a1[492];
  if (v10 != a1 + 494)
  {
    free(v10);
  }

  sub_23C51784C((a1 + 487), v6, v7, v8);
  sub_23C52B334(a1, off_284F1D708);
  sub_23C4B130C(v5);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C51EC40(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_284F1D490;
  v5 = a1 + 573;
  a1[573] = &unk_284F1D690;
  sub_23C4DE94C((a1 + 569), a2, a3, a4);
  *a1 = &unk_284F1FFB0;
  a1[573] = &off_284F201A8;
  v9 = a1[558];
  if (v9 != a1 + 560)
  {
    free(v9);
  }

  v10 = a1[492];
  if (v10 != a1 + 494)
  {
    free(v10);
  }

  sub_23C51784C((a1 + 487), v6, v7, v8);
  sub_23C52B334(a1, off_284F1D708);
  sub_23C4B130C(v5);
  return a1;
}

void sub_23C51ED40(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = off_284F208B0;
  v4[573] = off_284F20AB0;
  sub_23C4DE94C((v4 + 569), a2, a3, a4);
  *v4 = off_284F20DA0;
  v4[573] = &off_284F20F98;
  v8 = v4[558];
  if (v8 != v4 + 560)
  {
    free(v8);
  }

  v9 = v4[492];
  if (v9 != v4 + 494)
  {
    free(v9);
  }

  sub_23C51784C((v4 + 487), v5, v6, v7);
  sub_23C52B334(v4, off_284F1E870);
  sub_23C4B130C((v4 + 573));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C51EE68(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = off_284F208B0;
  v4[573] = off_284F20AB0;
  sub_23C4DE94C((v4 + 569), a2, a3, a4);
  *v4 = off_284F20DA0;
  v4[573] = &off_284F20F98;
  v8 = v4[558];
  if (v8 != v4 + 560)
  {
    free(v8);
  }

  v9 = v4[492];
  if (v9 != v4 + 494)
  {
    free(v9);
  }

  sub_23C51784C((v4 + 487), v5, v6, v7);
  sub_23C52B334(v4, off_284F1E870);

  return sub_23C4B130C((v4 + 573));
}

uint64_t sub_23C51EF84(void *a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  result = sub_23C51EAB0(a1);
  if (result)
  {
    result = llvm::Module::getFunction();
    if (result)
    {
      v3 = result;
      v4 = sub_23C49EB10(a1 + *(*a1 - 24), "llvm.agx1.nop.dbg", 17, *(a1 + *(*a1 - 24) + 144), *(a1 + *(*a1 - 24) + 184));
      v5 = a1 + 1;
      v12[0] = llvm::ConstantInt::get();
      v6 = *(v3 + 1);
      if (v6)
      {
        do
        {
          v7 = *(v6 + 8);
          v8 = *(v6 + 24);
          sub_23C4C30FC(v5 + *(*a1 - 24), v8);
          v9 = *(*a1 - 24);
          v11 = 257;
          sub_23C497A7C((v5 + v9), *(v4 + 24), v4, v12, 1, v10);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v8);
          v6 = v7;
        }

        while (v7);
      }

      llvm::Function::eraseFromParent(v3);
      return 1;
    }
  }

  return result;
}

void sub_23C51F120(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = off_284F208B0;
  v5 = a1 + 573;
  a1[573] = off_284F20AB0;
  sub_23C4DE94C((a1 + 569), a2, a3, a4);
  *a1 = off_284F20DA0;
  a1[573] = &off_284F20F98;
  v9 = a1[558];
  if (v9 != a1 + 560)
  {
    free(v9);
  }

  v10 = a1[492];
  if (v10 != a1 + 494)
  {
    free(v10);
  }

  sub_23C51784C((a1 + 487), v6, v7, v8);
  sub_23C52B334(a1, off_284F1E870);
  sub_23C4B130C(v5);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C51F234(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = off_284F208B0;
  v5 = a1 + 573;
  a1[573] = off_284F20AB0;
  sub_23C4DE94C((a1 + 569), a2, a3, a4);
  *a1 = off_284F20DA0;
  a1[573] = &off_284F20F98;
  v9 = a1[558];
  if (v9 != a1 + 560)
  {
    free(v9);
  }

  v10 = a1[492];
  if (v10 != a1 + 494)
  {
    free(v10);
  }

  sub_23C51784C((a1 + 487), v6, v7, v8);
  sub_23C52B334(a1, off_284F1E870);
  sub_23C4B130C(v5);
  return a1;
}

void sub_23C51F334(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = &unk_284F1E8D8;
  v4[572] = &unk_284F1EAD8;
  sub_23C4DE94C((v4 + 568), a2, a3, a4);
  *v4 = off_284F21918;
  v4[572] = &off_284F21B10;
  v8 = v4[558];
  if (v8 != v4 + 560)
  {
    free(v8);
  }

  v9 = v4[492];
  if (v9 != v4 + 494)
  {
    free(v9);
  }

  sub_23C51784C((v4 + 487), v5, v6, v7);
  sub_23C52B334(v4, off_284F1EB50);
  sub_23C4B130C((v4 + 572));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C51F45C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = &unk_284F1E8D8;
  v4[572] = &unk_284F1EAD8;
  sub_23C4DE94C((v4 + 568), a2, a3, a4);
  *v4 = off_284F21918;
  v4[572] = &off_284F21B10;
  v8 = v4[558];
  if (v8 != v4 + 560)
  {
    free(v8);
  }

  v9 = v4[492];
  if (v9 != v4 + 494)
  {
    free(v9);
  }

  sub_23C51784C((v4 + 487), v5, v6, v7);
  sub_23C52B334(v4, off_284F1EB50);

  return sub_23C4B130C((v4 + 572));
}

uint64_t sub_23C51F578(void *a1)
{
  v2 = sub_23C51E068(a1);
  if (v2)
  {
    v3 = *(a1 + *(*a1 - 24) + 344);
    (*(*v3 + 304))(v3, a1[19]);
  }

  return v2;
}

void sub_23C51F5F4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_284F1E8D8;
  v5 = a1 + 572;
  a1[572] = &unk_284F1EAD8;
  sub_23C4DE94C((a1 + 568), a2, a3, a4);
  *a1 = off_284F21918;
  a1[572] = &off_284F21B10;
  v9 = a1[558];
  if (v9 != a1 + 560)
  {
    free(v9);
  }

  v10 = a1[492];
  if (v10 != a1 + 494)
  {
    free(v10);
  }

  sub_23C51784C((a1 + 487), v6, v7, v8);
  sub_23C52B334(a1, off_284F1EB50);
  sub_23C4B130C(v5);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C51F708(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_284F1E8D8;
  v5 = a1 + 572;
  a1[572] = &unk_284F1EAD8;
  sub_23C4DE94C((a1 + 568), a2, a3, a4);
  *a1 = off_284F21918;
  a1[572] = &off_284F21B10;
  v9 = a1[558];
  if (v9 != a1 + 560)
  {
    free(v9);
  }

  v10 = a1[492];
  if (v10 != a1 + 494)
  {
    free(v10);
  }

  sub_23C51784C((a1 + 487), v6, v7, v8);
  sub_23C52B334(a1, off_284F1EB50);
  sub_23C4B130C(v5);
  return a1;
}

void sub_23C51F808(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = &unk_284F1EBB0;
  v4[572] = &unk_284F1EDB0;
  sub_23C4DE94C((v4 + 568), a2, a3, a4);
  *v4 = off_284F22490;
  v4[572] = &off_284F22688;
  v8 = v4[558];
  if (v8 != v4 + 560)
  {
    free(v8);
  }

  v9 = v4[492];
  if (v9 != v4 + 494)
  {
    free(v9);
  }

  sub_23C51784C((v4 + 487), v5, v6, v7);
  sub_23C52B334(v4, off_284F1EE28);
  sub_23C4B130C((v4 + 572));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C51F930(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = &unk_284F1EBB0;
  v4[572] = &unk_284F1EDB0;
  sub_23C4DE94C((v4 + 568), a2, a3, a4);
  *v4 = off_284F22490;
  v4[572] = &off_284F22688;
  v8 = v4[558];
  if (v8 != v4 + 560)
  {
    free(v8);
  }

  v9 = v4[492];
  if (v9 != v4 + 494)
  {
    free(v9);
  }

  sub_23C51784C((v4 + 487), v5, v6, v7);
  sub_23C52B334(v4, off_284F1EE28);

  return sub_23C4B130C((v4 + 572));
}

uint64_t sub_23C51FA4C(void *a1)
{
  v2 = sub_23C51E068(a1);
  if (v2)
  {
    v3 = *(a1 + *(*a1 - 24) + 344);
    (*(*v3 + 304))(v3, a1[19]);
  }

  return v2;
}

void sub_23C51FAC8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_284F1EBB0;
  v5 = a1 + 572;
  a1[572] = &unk_284F1EDB0;
  sub_23C4DE94C((a1 + 568), a2, a3, a4);
  *a1 = off_284F22490;
  a1[572] = &off_284F22688;
  v9 = a1[558];
  if (v9 != a1 + 560)
  {
    free(v9);
  }

  v10 = a1[492];
  if (v10 != a1 + 494)
  {
    free(v10);
  }

  sub_23C51784C((a1 + 487), v6, v7, v8);
  sub_23C52B334(a1, off_284F1EE28);
  sub_23C4B130C(v5);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C51FBDC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_284F1EBB0;
  v5 = a1 + 572;
  a1[572] = &unk_284F1EDB0;
  sub_23C4DE94C((a1 + 568), a2, a3, a4);
  *a1 = off_284F22490;
  a1[572] = &off_284F22688;
  v9 = a1[558];
  if (v9 != a1 + 560)
  {
    free(v9);
  }

  v10 = a1[492];
  if (v10 != a1 + 494)
  {
    free(v10);
  }

  sub_23C51784C((a1 + 487), v6, v7, v8);
  sub_23C52B334(a1, off_284F1EE28);
  sub_23C4B130C(v5);
  return a1;
}

void sub_23C51FCDC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = off_284F23008;
  v4[568] = &off_284F23200;
  v5 = v4[558];
  if (v5 != v4 + 560)
  {
    free(v5);
  }

  v6 = v4[492];
  if (v6 != v4 + 494)
  {
    free(v6);
  }

  sub_23C51784C((v4 + 487), a2, a3, a4);
  sub_23C52B334(v4, off_284F1F100);
  sub_23C4B130C((v4 + 568));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C51FDC0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = off_284F23008;
  v4[568] = &off_284F23200;
  v5 = v4[558];
  if (v5 != v4 + 560)
  {
    free(v5);
  }

  v6 = v4[492];
  if (v6 != v4 + 494)
  {
    free(v6);
  }

  sub_23C51784C((v4 + 487), a2, a3, a4);
  sub_23C52B334(v4, off_284F1F100);

  return sub_23C4B130C((v4 + 568));
}

uint64_t sub_23C51FE98(void *a1)
{
  v2 = sub_23C51E068(a1);
  if (v2)
  {
    v3 = *(a1 + *(*a1 - 24) + 344);
    (*(*v3 + 304))(v3, a1[19]);
  }

  return v2;
}

void sub_23C51FF14(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = off_284F23008;
  v5 = a1 + 568;
  a1[568] = &off_284F23200;
  v6 = a1[558];
  if (v6 != a1 + 560)
  {
    free(v6);
  }

  v7 = a1[492];
  if (v7 != a1 + 494)
  {
    free(v7);
  }

  sub_23C51784C((a1 + 487), a2, a3, a4);
  sub_23C52B334(a1, off_284F1F100);
  sub_23C4B130C(v5);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C51FFE4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = off_284F23008;
  v5 = a1 + 568;
  a1[568] = &off_284F23200;
  v6 = a1[558];
  if (v6 != a1 + 560)
  {
    free(v6);
  }

  v7 = a1[492];
  if (v7 != a1 + 494)
  {
    free(v7);
  }

  sub_23C51784C((a1 + 487), a2, a3, a4);
  sub_23C52B334(a1, off_284F1F100);
  sub_23C4B130C(v5);
  return a1;
}

void sub_23C5200A0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = off_284F23B80;
  v4[568] = &off_284F23D78;
  v5 = v4[558];
  if (v5 != v4 + 560)
  {
    free(v5);
  }

  v6 = v4[492];
  if (v6 != v4 + 494)
  {
    free(v6);
  }

  sub_23C51784C((v4 + 487), a2, a3, a4);
  sub_23C52B334(v4, off_284F1F3D8);
  sub_23C4B130C((v4 + 568));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C520184(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = off_284F23B80;
  v4[568] = &off_284F23D78;
  v5 = v4[558];
  if (v5 != v4 + 560)
  {
    free(v5);
  }

  v6 = v4[492];
  if (v6 != v4 + 494)
  {
    free(v6);
  }

  sub_23C51784C((v4 + 487), a2, a3, a4);
  sub_23C52B334(v4, off_284F1F3D8);

  return sub_23C4B130C((v4 + 568));
}

uint64_t sub_23C52025C(void *a1)
{
  v2 = sub_23C51E068(a1);
  if (v2)
  {
    v3 = *(a1 + *(*a1 - 24) + 344);
    (*(*v3 + 304))(v3, a1[19]);
  }

  return v2;
}

void sub_23C5202D8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = off_284F23B80;
  v5 = a1 + 568;
  a1[568] = &off_284F23D78;
  v6 = a1[558];
  if (v6 != a1 + 560)
  {
    free(v6);
  }

  v7 = a1[492];
  if (v7 != a1 + 494)
  {
    free(v7);
  }

  sub_23C51784C((a1 + 487), a2, a3, a4);
  sub_23C52B334(a1, off_284F1F3D8);
  sub_23C4B130C(v5);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C5203A8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = off_284F23B80;
  v5 = a1 + 568;
  a1[568] = &off_284F23D78;
  v6 = a1[558];
  if (v6 != a1 + 560)
  {
    free(v6);
  }

  v7 = a1[492];
  if (v7 != a1 + 494)
  {
    free(v7);
  }

  sub_23C51784C((a1 + 487), a2, a3, a4);
  sub_23C52B334(a1, off_284F1F3D8);
  sub_23C4B130C(v5);
  return a1;
}

uint64_t sub_23C520458(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int *a6)
{
  v8 = a4;
  v11 = sub_23C52B05C(a1, a2 + 1, a3, a4, 0);
  v12 = *a2;
  *v11 = *a2;
  *(a1 + *(v12 - 24)) = a2[7];
  v13 = (a1 + 3896);
  *(a1 + 3912) = 0;
  *(a1 + 3896) = 0u;
  *(a1 + 3916) = 16;
  *(a1 + 3928) = 0;
  *(a1 + 3932) = 0;
  *(a1 + 3936) = a1 + 3952;
  *(a1 + 3944) = 0x1000000000;
  *(a1 + 4464) = a1 + 4480;
  *(a1 + 4472) = 0x400000000;
  if (a5 && a6)
  {
    v14 = (a5 + *a5);
    v15 = (a6 + *a6);
    v16 = (v14 - *v14);
    if (*v16 >= 5u && (v17 = v16[2]) != 0)
    {
      v38 = (v14 + v17 + *(v14 + v17));
    }

    else
    {
      v38 = 0;
    }

    v18 = (v15 - *v15);
    v36 = v8;
    if (*v18 >= 5u && (v19 = v18[2]) != 0)
    {
      v20 = v15 + v19 + *(v15 + v19);
    }

    else
    {
      v20 = 0;
    }

    if (*v38)
    {
      v21 = 0;
      v37 = v20 + 4;
      while (1)
      {
        v22 = *&v37[4 * v21];
        v23 = &v38[v21 + 1] + v38[v21 + 1];
        v24 = strlen((v23 + 4));
        v25 = llvm::StringMapImpl::LookupBucketFor();
        v26 = *v13;
        v27 = v25;
        v28 = *(*v13 + 8 * v25);
        if (v28 == -8)
        {
          break;
        }

        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_26:
        *(v28 + 8) = v22;
        if (++v21 >= *v38)
        {
          goto LABEL_27;
        }
      }

      --*(a1 + 3912);
LABEL_17:
      v29 = MEMORY[0x23EED4160](v24 + 17, 8);
      v30 = v29;
      v31 = v29 + 16;
      if (v24)
      {
        memcpy((v29 + 16), (v23 + 4), v24);
      }

      *(v31 + v24) = 0;
      *v30 = v24;
      *(v30 + 8) = 0;
      *(v26 + 8 * v27) = v30;
      ++*(a1 + 3908);
      for (i = (*(a1 + 3896) + 8 * llvm::StringMapImpl::RehashTable((a1 + 3896))); ; ++i)
      {
        v28 = *i;
        if (*i && v28 != -8)
        {
          break;
        }
      }

      goto LABEL_26;
    }

LABEL_27:
    v8 = v36;
    *(a1 + 3928) = (*(v36 + 12) & 0x100000) != 0;
  }

  *(a1 + 3116) = (*(v8 + 12) >> 2);
  *(a1 + 3120) = *(v8 + 8);
  sub_23C52FD10(a1, *(v8 + 12) & 1, (*(v8 + 12) >> 1) & 1);
  *(a1 + 14) = (*(v8 + 12) & 0x800000) != 0;
  *(a1 + 2272) = *v8;
  *(a1 + 3152) = *(v8 + 12) >> 14;
  v34 = *(v8 + 14) & 0xF;
  *(a1 + 3148) = v34;
  if (*(*(a1 + *(*a1 - 24) + 344) + 1676) == 1)
  {
    *(a1 + 3146) = v34 > 1;
    if (v34 >= 2)
    {
      *(a1 + 3152) = 0;
    }
  }

  else
  {
    *(a1 + 3146) = 0;
  }

  *(a1 + 15) = (*(v8 + 12) & 0x400000) != 0;
  *(a1 + 3929) = (*(v8 + 12) & 0x200000) != 0;
  return a1;
}

void *sub_23C5207F0(uint64_t a1, llvm::Module *this, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v13 = "air.vertex";
  v14 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &v13);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  if (*(Operand + 8) != 4 || !sub_23C4A57A0(*(*(Operand - 8) - 8 * *(*(Operand - 8) + 8)), "air.patch"))
  {
    operator new();
  }

  return (*(**(a1 + 32) + 72))(*(a1 + 32), a1, this, a3, a4, a5);
}

uint64_t sub_23C520968(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if ((atomic_load_explicit(&qword_27E1F7488, memory_order_acquire) & 1) == 0)
  {
    v11 = a3;
    v10 = __cxa_guard_acquire(&qword_27E1F7488);
    a3 = v11;
    if (v10)
    {
      qword_27E1F7478 = 0;
      unk_27E1F7480 = 0;
      __cxa_guard_release(&qword_27E1F7488);
      a3 = v11;
    }
  }

  sub_23C520458(a1, a2 + 2, a3, &qword_27E1F7478, 0, 0);
  v7 = a2[1];
  *a1 = v7;
  *(a1 + *(v7 - 24)) = a2[10];
  v8 = *a2;
  *a1 = *a2;
  *(a1 + *(v8 - 24)) = a2[11];
  *(a1 + 4544) = a4;
  *(a1 + 4552) = 0u;
  *(a1 + 4568) = 0;
  *(a1 + 4572) = 32;
  return a1;
}

void sub_23C520B30(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = off_284F24480;
  v4[573] = off_284F24680;
  sub_23C4DE94C((v4 + 569), a2, a3, a4);
  *v4 = off_284F24970;
  v4[573] = &off_284F24B68;
  v8 = v4[558];
  if (v8 != v4 + 560)
  {
    free(v8);
  }

  v9 = v4[492];
  if (v9 != v4 + 494)
  {
    free(v9);
  }

  sub_23C51784C((v4 + 487), v5, v6, v7);
  sub_23C52B334(v4, off_284F1D9E8);
  sub_23C4B130C((v4 + 573));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C520C58(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = off_284F24480;
  v4[573] = off_284F24680;
  sub_23C4DE94C((v4 + 569), a2, a3, a4);
  *v4 = off_284F24970;
  v4[573] = &off_284F24B68;
  v8 = v4[558];
  if (v8 != v4 + 560)
  {
    free(v8);
  }

  v9 = v4[492];
  if (v9 != v4 + 494)
  {
    free(v9);
  }

  sub_23C51784C((v4 + 487), v5, v6, v7);
  sub_23C52B334(v4, off_284F1D9E8);

  return sub_23C4B130C((v4 + 573));
}

void sub_23C520D74(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = off_284F24480;
  v5 = a1 + 573;
  a1[573] = off_284F24680;
  sub_23C4DE94C((a1 + 569), a2, a3, a4);
  *a1 = off_284F24970;
  a1[573] = &off_284F24B68;
  v9 = a1[558];
  if (v9 != a1 + 560)
  {
    free(v9);
  }

  v10 = a1[492];
  if (v10 != a1 + 494)
  {
    free(v10);
  }

  sub_23C51784C((a1 + 487), v6, v7, v8);
  sub_23C52B334(a1, off_284F1D9E8);
  sub_23C4B130C(v5);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C520E88(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = off_284F24480;
  v5 = a1 + 573;
  a1[573] = off_284F24680;
  sub_23C4DE94C((a1 + 569), a2, a3, a4);
  *a1 = off_284F24970;
  a1[573] = &off_284F24B68;
  v9 = a1[558];
  if (v9 != a1 + 560)
  {
    free(v9);
  }

  v10 = a1[492];
  if (v10 != a1 + 494)
  {
    free(v10);
  }

  sub_23C51784C((a1 + 487), v6, v7, v8);
  sub_23C52B334(a1, off_284F1D9E8);
  sub_23C4B130C(v5);
  return a1;
}

void sub_23C520F88(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = off_284F25270;
  v4[573] = off_284F25470;
  sub_23C4DE94C((v4 + 569), a2, a3, a4);
  *v4 = off_284F25760;
  v4[573] = &off_284F25958;
  v8 = v4[558];
  if (v8 != v4 + 560)
  {
    free(v8);
  }

  v9 = v4[492];
  if (v9 != v4 + 494)
  {
    free(v9);
  }

  sub_23C51784C((v4 + 487), v5, v6, v7);
  sub_23C52B334(v4, off_284F1DCD0);
  sub_23C4B130C((v4 + 573));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C5210B0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = off_284F25270;
  v4[573] = off_284F25470;
  sub_23C4DE94C((v4 + 569), a2, a3, a4);
  *v4 = off_284F25760;
  v4[573] = &off_284F25958;
  v8 = v4[558];
  if (v8 != v4 + 560)
  {
    free(v8);
  }

  v9 = v4[492];
  if (v9 != v4 + 494)
  {
    free(v9);
  }

  sub_23C51784C((v4 + 487), v5, v6, v7);
  sub_23C52B334(v4, off_284F1DCD0);

  return sub_23C4B130C((v4 + 573));
}

void sub_23C5211CC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = off_284F25270;
  v5 = a1 + 573;
  a1[573] = off_284F25470;
  sub_23C4DE94C((a1 + 569), a2, a3, a4);
  *a1 = off_284F25760;
  a1[573] = &off_284F25958;
  v9 = a1[558];
  if (v9 != a1 + 560)
  {
    free(v9);
  }

  v10 = a1[492];
  if (v10 != a1 + 494)
  {
    free(v10);
  }

  sub_23C51784C((a1 + 487), v6, v7, v8);
  sub_23C52B334(a1, off_284F1DCD0);
  sub_23C4B130C(v5);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C5212E0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = off_284F25270;
  v5 = a1 + 573;
  a1[573] = off_284F25470;
  sub_23C4DE94C((a1 + 569), a2, a3, a4);
  *a1 = off_284F25760;
  a1[573] = &off_284F25958;
  v9 = a1[558];
  if (v9 != a1 + 560)
  {
    free(v9);
  }

  v10 = a1[492];
  if (v10 != a1 + 494)
  {
    free(v10);
  }

  sub_23C51784C((a1 + 487), v6, v7, v8);
  sub_23C52B334(a1, off_284F1DCD0);
  sub_23C4B130C(v5);
  return a1;
}

void sub_23C5213E0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = off_284F26060;
  v4[573] = off_284F26260;
  sub_23C4DE94C((v4 + 569), a2, a3, a4);
  *v4 = off_284F26550;
  v4[573] = &off_284F26748;
  v8 = v4[558];
  if (v8 != v4 + 560)
  {
    free(v8);
  }

  v9 = v4[492];
  if (v9 != v4 + 494)
  {
    free(v9);
  }

  sub_23C51784C((v4 + 487), v5, v6, v7);
  sub_23C52B334(v4, off_284F1DFB8);
  sub_23C4B130C((v4 + 573));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C521508(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = off_284F26060;
  v4[573] = off_284F26260;
  sub_23C4DE94C((v4 + 569), a2, a3, a4);
  *v4 = off_284F26550;
  v4[573] = &off_284F26748;
  v8 = v4[558];
  if (v8 != v4 + 560)
  {
    free(v8);
  }

  v9 = v4[492];
  if (v9 != v4 + 494)
  {
    free(v9);
  }

  sub_23C51784C((v4 + 487), v5, v6, v7);
  sub_23C52B334(v4, off_284F1DFB8);

  return sub_23C4B130C((v4 + 573));
}

void sub_23C521624(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = off_284F26060;
  v5 = a1 + 573;
  a1[573] = off_284F26260;
  sub_23C4DE94C((a1 + 569), a2, a3, a4);
  *a1 = off_284F26550;
  a1[573] = &off_284F26748;
  v9 = a1[558];
  if (v9 != a1 + 560)
  {
    free(v9);
  }

  v10 = a1[492];
  if (v10 != a1 + 494)
  {
    free(v10);
  }

  sub_23C51784C((a1 + 487), v6, v7, v8);
  sub_23C52B334(a1, off_284F1DFB8);
  sub_23C4B130C(v5);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C521738(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = off_284F26060;
  v5 = a1 + 573;
  a1[573] = off_284F26260;
  sub_23C4DE94C((a1 + 569), a2, a3, a4);
  *a1 = off_284F26550;
  a1[573] = &off_284F26748;
  v9 = a1[558];
  if (v9 != a1 + 560)
  {
    free(v9);
  }

  v10 = a1[492];
  if (v10 != a1 + 494)
  {
    free(v10);
  }

  sub_23C51784C((a1 + 487), v6, v7, v8);
  sub_23C52B334(a1, off_284F1DFB8);
  sub_23C4B130C(v5);
  return a1;
}

void sub_23C521838(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = off_284F26E50;
  v4[573] = off_284F27050;
  sub_23C4DE94C((v4 + 569), a2, a3, a4);
  *v4 = off_284F27340;
  v4[573] = &off_284F27538;
  v8 = v4[558];
  if (v8 != v4 + 560)
  {
    free(v8);
  }

  v9 = v4[492];
  if (v9 != v4 + 494)
  {
    free(v9);
  }

  sub_23C51784C((v4 + 487), v5, v6, v7);
  sub_23C52B334(v4, off_284F1E2A0);
  sub_23C4B130C((v4 + 573));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C521960(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = off_284F26E50;
  v4[573] = off_284F27050;
  sub_23C4DE94C((v4 + 569), a2, a3, a4);
  *v4 = off_284F27340;
  v4[573] = &off_284F27538;
  v8 = v4[558];
  if (v8 != v4 + 560)
  {
    free(v8);
  }

  v9 = v4[492];
  if (v9 != v4 + 494)
  {
    free(v9);
  }

  sub_23C51784C((v4 + 487), v5, v6, v7);
  sub_23C52B334(v4, off_284F1E2A0);

  return sub_23C4B130C((v4 + 573));
}

void sub_23C521A7C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = off_284F26E50;
  v5 = a1 + 573;
  a1[573] = off_284F27050;
  sub_23C4DE94C((a1 + 569), a2, a3, a4);
  *a1 = off_284F27340;
  a1[573] = &off_284F27538;
  v9 = a1[558];
  if (v9 != a1 + 560)
  {
    free(v9);
  }

  v10 = a1[492];
  if (v10 != a1 + 494)
  {
    free(v10);
  }

  sub_23C51784C((a1 + 487), v6, v7, v8);
  sub_23C52B334(a1, off_284F1E2A0);
  sub_23C4B130C(v5);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C521B90(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = off_284F26E50;
  v5 = a1 + 573;
  a1[573] = off_284F27050;
  sub_23C4DE94C((a1 + 569), a2, a3, a4);
  *a1 = off_284F27340;
  a1[573] = &off_284F27538;
  v9 = a1[558];
  if (v9 != a1 + 560)
  {
    free(v9);
  }

  v10 = a1[492];
  if (v10 != a1 + 494)
  {
    free(v10);
  }

  sub_23C51784C((a1 + 487), v6, v7, v8);
  sub_23C52B334(a1, off_284F1E2A0);
  sub_23C4B130C(v5);
  return a1;
}

void sub_23C521C90(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = off_284F27C40;
  v4[573] = off_284F27E40;
  sub_23C4DE94C((v4 + 569), a2, a3, a4);
  *v4 = off_284F28130;
  v4[573] = &off_284F28328;
  v8 = v4[558];
  if (v8 != v4 + 560)
  {
    free(v8);
  }

  v9 = v4[492];
  if (v9 != v4 + 494)
  {
    free(v9);
  }

  sub_23C51784C((v4 + 487), v5, v6, v7);
  sub_23C52B334(v4, off_284F1E588);
  sub_23C4B130C((v4 + 573));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C521DB8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1 + *(*a1 - 32));
  *v4 = off_284F27C40;
  v4[573] = off_284F27E40;
  sub_23C4DE94C((v4 + 569), a2, a3, a4);
  *v4 = off_284F28130;
  v4[573] = &off_284F28328;
  v8 = v4[558];
  if (v8 != v4 + 560)
  {
    free(v8);
  }

  v9 = v4[492];
  if (v9 != v4 + 494)
  {
    free(v9);
  }

  sub_23C51784C((v4 + 487), v5, v6, v7);
  sub_23C52B334(v4, off_284F1E588);

  return sub_23C4B130C((v4 + 573));
}

void sub_23C521ED4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = off_284F27C40;
  v5 = a1 + 573;
  a1[573] = off_284F27E40;
  sub_23C4DE94C((a1 + 569), a2, a3, a4);
  *a1 = off_284F28130;
  a1[573] = &off_284F28328;
  v9 = a1[558];
  if (v9 != a1 + 560)
  {
    free(v9);
  }

  v10 = a1[492];
  if (v10 != a1 + 494)
  {
    free(v10);
  }

  sub_23C51784C((a1 + 487), v6, v7, v8);
  sub_23C52B334(a1, off_284F1E588);
  sub_23C4B130C(v5);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C521FE8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = off_284F27C40;
  v5 = a1 + 573;
  a1[573] = off_284F27E40;
  sub_23C4DE94C((a1 + 569), a2, a3, a4);
  *a1 = off_284F28130;
  a1[573] = &off_284F28328;
  v9 = a1[558];
  if (v9 != a1 + 560)
  {
    free(v9);
  }

  v10 = a1[492];
  if (v10 != a1 + 494)
  {
    free(v10);
  }

  sub_23C51784C((a1 + 487), v6, v7, v8);
  sub_23C52B334(a1, off_284F1E588);
  sub_23C4B130C(v5);
  return a1;
}

void sub_23C5220DC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_23C49F8D0(v17, "tess_nb_0_");
  sub_23C49F8D0(v18, "tess_nb_1_");
  v5 = &v17[3 * (*a3 & 3)];
  if (*(v5 + 23) < 0)
  {
    sub_23C49F988(&__dst, *v5, v5[1]);
  }

  else
  {
    __dst = *v5;
  }

  v6 = 0;
  while (1)
  {
    if (SHIBYTE(v18[v6 + 2]) < 0)
    {
      operator delete(v17[v6 + 3]);
    }

    v6 -= 3;
    if (v6 == -6)
    {
      sub_23C49F8D0(v17, "0_");
      sub_23C49F8D0(v18, "1_");
      sub_23C49F8D0(v19, "2_");
      sub_23C49F8D0(v20, "3_");
      v7 = &v17[3 * ((*a3 >> 2) & 7)];
      v8 = *(v7 + 23);
      if (v8 >= 0)
      {
        v9 = &v17[3 * ((*a3 >> 2) & 7)];
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 23);
      }

      else
      {
        v10 = v7[1];
      }

      std::string::append(&__dst, v9, v10);
      v11 = 0;
      while (1)
      {
        if (SHIBYTE(v20[v11 + 2]) < 0)
        {
          operator delete(v20[v11]);
        }

        v11 -= 3;
        if (v11 == -12)
        {
          sub_23C49F8D0(v17, "0");
          sub_23C49F8D0(v18, "1");
          sub_23C49F8D0(v19, "2");
          sub_23C49F8D0(v20, "3");
          v12 = &v17[3 * (*a3 >> 5)];
          v13 = *(v12 + 23);
          if (v13 >= 0)
          {
            v14 = &v17[3 * (*a3 >> 5)];
          }

          else
          {
            v14 = *v12;
          }

          if (v13 >= 0)
          {
            v15 = *(v12 + 23);
          }

          else
          {
            v15 = v12[1];
          }

          std::string::append(&__dst, v14, v15);
          v16 = 0;
          while (1)
          {
            if (SHIBYTE(v20[v16 + 2]) < 0)
            {
              operator delete(v20[v16]);
            }

            v16 -= 3;
            if (v16 == -12)
            {
              sub_23C4AF200(a2, &__dst);
              operator new();
            }
          }
        }
      }
    }
  }
}

void sub_23C5226F4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_23C49F8D0(v17, "tess_b3_0_");
  sub_23C49F8D0(v18, "tess_b3_1_");
  v5 = &v17[3 * (*a3 & 3)];
  if (*(v5 + 23) < 0)
  {
    sub_23C49F988(&__dst, *v5, v5[1]);
  }

  else
  {
    __dst = *v5;
  }

  v6 = 0;
  while (1)
  {
    if (SHIBYTE(v18[v6 + 2]) < 0)
    {
      operator delete(v17[v6 + 3]);
    }

    v6 -= 3;
    if (v6 == -6)
    {
      sub_23C49F8D0(v17, "0_");
      sub_23C49F8D0(v18, "1_");
      sub_23C49F8D0(v19, "2_");
      sub_23C49F8D0(v20, "3_");
      v7 = &v17[3 * ((*a3 >> 2) & 7)];
      v8 = *(v7 + 23);
      if (v8 >= 0)
      {
        v9 = &v17[3 * ((*a3 >> 2) & 7)];
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 23);
      }

      else
      {
        v10 = v7[1];
      }

      std::string::append(&__dst, v9, v10);
      v11 = 0;
      while (1)
      {
        if (SHIBYTE(v20[v11 + 2]) < 0)
        {
          operator delete(v20[v11]);
        }

        v11 -= 3;
        if (v11 == -12)
        {
          sub_23C49F8D0(v17, "0");
          sub_23C49F8D0(v18, "1");
          sub_23C49F8D0(v19, "2");
          sub_23C49F8D0(v20, "3");
          v12 = &v17[3 * (*a3 >> 5)];
          v13 = *(v12 + 23);
          if (v13 >= 0)
          {
            v14 = &v17[3 * (*a3 >> 5)];
          }

          else
          {
            v14 = *v12;
          }

          if (v13 >= 0)
          {
            v15 = *(v12 + 23);
          }

          else
          {
            v15 = v12[1];
          }

          std::string::append(&__dst, v14, v15);
          v16 = 0;
          while (1)
          {
            if (SHIBYTE(v20[v16 + 2]) < 0)
            {
              operator delete(v20[v16]);
            }

            v16 -= 3;
            if (v16 == -12)
            {
              sub_23C4AF200(a2, &__dst);
              operator new();
            }
          }
        }
      }
    }
  }
}

void sub_23C522E9C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_23C49F8D0(v17, "tess_b1_0_");
  sub_23C49F8D0(v18, "tess_b1_1_");
  v5 = &v17[3 * (*a3 & 3)];
  if (*(v5 + 23) < 0)
  {
    sub_23C49F988(&__dst, *v5, v5[1]);
  }

  else
  {
    __dst = *v5;
  }

  v6 = 0;
  while (1)
  {
    if (SHIBYTE(v18[v6 + 2]) < 0)
    {
      operator delete(v17[v6 + 3]);
    }

    v6 -= 3;
    if (v6 == -6)
    {
      sub_23C49F8D0(v17, "0_");
      sub_23C49F8D0(v18, "1_");
      sub_23C49F8D0(v19, "2_");
      sub_23C49F8D0(v20, "3_");
      v7 = &v17[3 * ((*a3 >> 2) & 7)];
      v8 = *(v7 + 23);
      if (v8 >= 0)
      {
        v9 = &v17[3 * ((*a3 >> 2) & 7)];
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 23);
      }

      else
      {
        v10 = v7[1];
      }

      std::string::append(&__dst, v9, v10);
      v11 = 0;
      while (1)
      {
        if (SHIBYTE(v20[v11 + 2]) < 0)
        {
          operator delete(v20[v11]);
        }

        v11 -= 3;
        if (v11 == -12)
        {
          sub_23C49F8D0(v17, "0");
          sub_23C49F8D0(v18, "1");
          sub_23C49F8D0(v19, "2");
          sub_23C49F8D0(v20, "3");
          v12 = &v17[3 * (*a3 >> 5)];
          v13 = *(v12 + 23);
          if (v13 >= 0)
          {
            v14 = &v17[3 * (*a3 >> 5)];
          }

          else
          {
            v14 = *v12;
          }

          if (v13 >= 0)
          {
            v15 = *(v12 + 23);
          }

          else
          {
            v15 = v12[1];
          }

          std::string::append(&__dst, v14, v15);
          v16 = 0;
          while (1)
          {
            if (SHIBYTE(v20[v16 + 2]) < 0)
            {
              operator delete(v20[v16]);
            }

            v16 -= 3;
            if (v16 == -12)
            {
              sub_23C4AF200(a2, &__dst);
              operator new();
            }
          }
        }
      }
    }
  }
}

void sub_23C5233CC(uint64_t a1, uint64_t a2)
{
  sub_23C49F8D0(__p, "tess_b2");
  sub_23C4AF200(a2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_23C523644(uint64_t a1, uint64_t a2)
{
  sub_23C49F8D0(__p, "tess_b0");
  sub_23C4AF200(a2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_23C5237A0(uint64_t a1, uint64_t a2)
{
  sub_23C49F8D0(__p, "vdm_nopdbg");
  sub_23C4AF200(a2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_23C52388C(uint64_t a1, uint64_t a2)
{
  sub_23C49F8D0(__p, "gei_esl_gen");
  sub_23C4AF200(a2, __p);
  operator new();
}

void sub_23C5239D0(uint64_t a1, uint64_t a2)
{
  sub_23C49F8D0(__p, "gei_esl_gen");
  sub_23C4AF200(a2, __p);
  operator new();
}

void sub_23C523B14(uint64_t a1, uint64_t a2)
{
  sub_23C49F8D0(__p, &unk_23C53F34D);
  sub_23C4AF200(a2, __p);
  operator new();
}

void sub_23C523C48(uint64_t a1, uint64_t a2)
{
  sub_23C49F8D0(__p, "pds_patchup_vertex");
  sub_23C4AF200(a2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

uint64_t sub_23C523D84(uint64_t a1)
{
  if (*(a1 + 3124) == 1)
  {
    v39 = v1;
    v40 = v2;
    sub_23C4D87A4(*(a1 + *(*a1 - 24) + 320));
    v4 = *(a1 + *(*a1 - 24) + 344);
    if (*(v4 + 1240))
    {
      strlen(*(v4 + 1240));
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      v6 = *(a1 + *(*a1 - 24) + 320);
      __p = 0;
      v34 = 0;
      v37[0] = 0;
      v37[1] = 0;
      v35 = 0;
      v36 = v37;
      v38 = v6;
      v7 = *(Function + 8);
      if (v7)
      {
        do
        {
          v8 = (*(v7 + 24) - 32 * (*(*(v7 + 24) + 20) & 0x7FFFFFF));
          v9 = (*v8 + 24);
          if (*(*v8 + 32) >= 0x41u)
          {
            v9 = *v9;
          }

          if ((*v9 & 0xFFFFFFFC) == 0)
          {
            sub_23C4D96AC(&__p, v8[4]);
          }

          v7 = *(v7 + 8);
        }

        while (v7);
        v10 = v34;
        if (__p != v34)
        {
          v11 = 0;
          do
          {
            v12 = *(v10 - 1);
            v34 = (v10 - 1);
            if (sub_23C497EEC(v12))
            {
              llvm::Instruction::setFast(v12);
            }

            if (v12 && *(v12 + 16) == 60)
            {
              v13 = **(v12 - 32);
              v14 = *(v13 + 8);
              if ((v14 & 0xFE) == 0x12)
              {
                v14 = *(**(v13 + 16) + 8);
              }

              v15 = v14 >> 8;
              v16 = 1 << SBYTE1(v14);
              if (((1 << SBYTE1(v14)) & v11) == 0)
              {
                v17 = v38 + 24;
                for (i = *(v38 + 32); i != v17; i = *(i + 8))
                {
                  v19 = i - 56;
                  if (!i)
                  {
                    v19 = 0;
                  }

                  v20 = v19 + 72;
                  v21 = *(v19 + 80);
                  if (v21 == v19 + 72)
                  {
                    v23 = 0;
                  }

                  else
                  {
                    do
                    {
                      v22 = v21 - 24;
                      if (!v21)
                      {
                        v22 = 0;
                      }

                      v23 = *(v22 + 48);
                      if (v23 != v22 + 40)
                      {
                        break;
                      }

                      v21 = *(v21 + 8);
                    }

                    while (v21 != v20);
                  }

                  while (v21 != v20)
                  {
                    if (v23 && *(v23 - 8) == 61)
                    {
                      v24 = **(v23 - 56);
                      v25 = *(v24 + 8);
                      if ((v25 & 0xFE) == 0x12)
                      {
                        v25 = *(**(v24 + 16) + 8);
                      }

                      if (v15 == v25 >> 8)
                      {
                        sub_23C4D96AC(&__p, *(v23 - 88));
                      }
                    }

                    v23 = *(v23 + 8);
                    v26 = v21 - 24;
                    if (!v21)
                    {
                      v26 = 0;
                    }

                    while (v23 == v26 + 40)
                    {
                      v21 = *(v21 + 8);
                      if (v21 == v20)
                      {
                        break;
                      }

                      v26 = v21 - 24;
                      if (!v21)
                      {
                        v26 = 0;
                      }

                      v23 = *(v26 + 48);
                    }
                  }
                }

                v11 |= v16;
              }

              goto LABEL_54;
            }

            v27 = *(v12 + 20);
            if ((v27 & 0x40000000) != 0)
            {
              v29 = *(v12 - 8);
              v28 = v27 & 0x7FFFFFF;
              if (v28)
              {
LABEL_50:
                v30 = 32 * v28;
                do
                {
                  v31 = *v29;
                  v29 += 4;
                  sub_23C4D96AC(&__p, v31);
                  v30 -= 32;
                }

                while (v30);
              }
            }

            else
            {
              v28 = v27 & 0x7FFFFFF;
              v29 = (v12 - 32 * v28);
              if (v28)
              {
                goto LABEL_50;
              }
            }

LABEL_54:
            v10 = v34;
          }

          while (__p != v34);
        }
      }

      sub_23C4B1570(v37[0]);
      if (__p)
      {
        v34 = __p;
        operator delete(__p);
      }
    }
  }

  return 1;
}

uint64_t sub_23C5240B0(void *a1)
{
  v583 = *MEMORY[0x277D85DE8];
  v500[0] = llvm::Module::getFunction();
  v2 = *(*(v500[0] + 1) + 24);
  v3 = sub_23C4B88A0(v2);
  v4 = *(v2 + 5) & 0x7FFFFFF;
  v506 = v2;
  v5 = (v2 - 32 * v4);
  if (((v3 - v5) & 0x1FFFFFFFE0) == 0)
  {
    v8 = 0;
    v6 = 0;
    v7 = 0;
    v502 = v569;
    v567 = v569;
    v568 = 0x1000000000;
    v501 = &v565;
    v563 = &v565;
    v564 = 0x1000000000;
    goto LABEL_7;
  }

  v6 = *v5;
  v7 = **v5;
  if (*(v7 + 8) == 16)
  {
    v8 = *(v7 + 12);
    v502 = v569;
    v567 = v569;
    v568 = 0x1000000000;
    v563 = &v565;
    v564 = 0x1000000000;
    v501 = &v565;
    if (v8)
    {
      v9 = v8;
      if (v8 >= 0x11)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      goto LABEL_9;
    }

LABEL_7:
    v10 = 1;
    goto LABEL_18;
  }

  v502 = v569;
  v567 = v569;
  v568 = 0x1000000000;
  v563 = &v565;
  v564 = 0x1000000000;
  v9 = 1;
  v501 = &v565;
LABEL_9:
  v11 = 0;
  v8 = v9;
  v12 = vdupq_n_s64(v9 - 1);
  v13 = &v566;
  do
  {
    v14 = vdupq_n_s64(v11);
    v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_23C5324B0)));
    if (vuzp1_s16(v15, *v12.i8).u8[0])
    {
      *(v13 - 2) = -1;
    }

    if (vuzp1_s16(v15, *&v12).i8[2])
    {
      *(v13 - 1) = -1;
    }

    if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_23C532520)))).i32[1])
    {
      *v13 = -1;
      *(v13 + 1) = -1;
    }

    v11 += 4;
    v13 += 2;
  }

  while (((v9 + 3) & 0x1FFFFFFFCLL) != v11);
  v10 = 0;
  LODWORD(v564) = v564 + v8;
LABEL_18:
  memset(v562, 0, sizeof(v562));
  v522 = 0;
  NullValue = llvm::ConstantInt::get();
  v16 = llvm::ConstantInt::get();
  v17 = sub_23C4C30FC(a1 + *(*a1 - 24) + 8, v506);
  v516 = v8;
  MEMORY[0x28223BE20](v17);
  if (v18 >= 0x200)
  {
    v19 = 512;
  }

  else
  {
    v19 = v18;
  }

  v517 = v500 - ((v18 + 15) & 0xFFFFFFFF0);
  bzero(v517, v19);
  v503 = v6;
  v500[1] = v500;
  v507 = v16;
  if (v10)
  {
    v504 = 0;
    v515 = 0;
  }

  else
  {
    v21 = *(v7 + 8);
    v514 = v7;
    if (v21 == 16)
    {
      sub_23C505FD4(a1 + *(*a1 - 24), v6, v517);
    }

    else
    {
      *v517 = v6;
    }

    v22 = 0;
    v515 = 0;
    v504 = 0;
    v23 = v516;
    do
    {
      v24 = *(a1[7] - 8 * *(a1[7] + 8) + 8 * v22);
      String = llvm::MDString::getString(*(v24 - 8 * *(v24 + 8)));
      v27 = v26;
      v28 = *(a1 + 3146);
      v518 = *(v517 + 8 * v22);
      if (v28 == 1)
      {
        v29 = v24 + 8;
        v30 = 1;
        while (1)
        {
          v31 = *(v24 + 8);
          if (v30 >= v31)
          {
LABEL_32:
            v32 = 1;
            goto LABEL_35;
          }

          if (sub_23C4A57A0(*(v29 - 8 * v31), "air.shared"))
          {
            break;
          }

          ++v30;
          v29 += 8;
          if (*(a1 + 3146) != 1)
          {
            goto LABEL_32;
          }
        }

        v32 = 0;
LABEL_35:
        v23 = v516;
      }

      else
      {
        v32 = 0;
      }

      if (v27 <= 16)
      {
        if (v27 == 12)
        {
          if (*String == 0x69736F702E726961 && *(String + 8) == 1852795252)
          {
            *(a1 + 3156) = v32;
            v515 = v518;
          }
        }

        else if (v27 == 14 && *String == 0x6E696F702E726961 && *(String + 6) == 0x657A69735F746E69)
        {
          *(a1 + 3157) = v32;
          v504 = v518;
        }
      }

      else
      {
        switch(v27)
        {
          case 17:
            if (*String == 0x70696C632E726961 && *(String + 8) == 0x636E61747369645FLL && *(String + 16) == 101)
            {
              (*(*a1 + 328))(a1, v518, v24, v562, &v522);
              *(a1 + 3160) = v32;
            }

            else if (*String == 0x747265762E726961 && *(String + 8) == 0x757074756F5F7865 && *(String + 16) == 116)
            {
              v531 = 0;
              v532 = 0;
              v533 = 0;
              if ((*(*a1 + 336))(a1, v514, v22, v24, v528, v32))
              {
                sub_23C49786C(&v567, v530, v518);
                sub_23C52B5AC((a1 + 304), v528);
              }

              if (SHIBYTE(v533) < 0)
              {
                operator delete(v531);
              }
            }

            break;
          case 24:
            if (*String == 0x776569762E726961 && *(String + 8) == 0x7272615F74726F70 && *(String + 16) == 0x7865646E695F7961)
            {
              *(a1 + 3158) = v32;
              *(a1 + 3101) = 1;
              NullValue = v518;
            }

            break;
          case 29:
            v33 = *String == 0x646E65722E726961 && *(String + 8) == 0x65677261745F7265;
            v34 = v33 && *(String + 16) == 0x5F79617272615F74;
            if (v34 && *(String + 21) == 0x7865646E695F7961)
            {
              *(a1 + 3159) = v32;
              *(a1 + 3102) = 1;
              v507 = v518;
            }

            break;
        }
      }

      ++v22;
    }

    while (v22 != v23);
  }

  v44 = *(a1 + 779) & v522;
  *(a1 + 779) = v44;
  v20.i32[0] = v44;
  v45 = vcnt_s8(v20);
  v45.i16[0] = vaddlv_u8(v45);
  *(a1 + 778) = v45.i32[0];
  if (v44 && ((a1[395] & 1) != 0 || *(a1 + 3156) == 1))
  {
    *(a1 + 3160) = 1;
    *(a1 + 3156) = 1;
  }

  *(a1 + 3100) = (*(*a1 + 360))(a1, v504);
  v48 = v507;
  if (*(a1 + 3146) == 1)
  {
    if ((a1[393] & 1) == 0)
    {
      a1[391] = sub_23C527C64(a1, *(a1 + 788), v47);
      *(a1 + 3144) = 1;
    }

    if ((*(a1 + 3145) & 1) == 0)
    {
      a1[392] = sub_23C527D50(a1, v46, v47);
      *(a1 + 3145) = 1;
    }

    v49 = (a1 + *(*a1 - 24));
    v50 = a1[408];
    LOWORD(v532) = 257;
    v51 = sub_23C497C88(v49 + 1, **(*v50 + 16), v50, 0, v528);
    v52 = *(*a1 - 24);
    v53 = a1[391];
    LOWORD(v532) = 257;
    v54 = sub_23C49AEB8(a1 + v52, v51, v53, v528);
    v55 = (a1 + *(*a1 - 24));
    LOWORD(v532) = 257;
    v56 = sub_23C497C88(v55 + 1, **(*v54 + 16), v54, 0, v528);
    __dst = 0;
    v577 = 0;
    sub_23C505FD4(a1 + *(*a1 - 24), v56, &__dst);
    if ((*(a1 + 3101) & 1) == 0)
    {
      NullValue = llvm::Constant::getNullValue(*a1[409], v57);
      *(a1 + 3101) = 1;
    }

    *(a1 + 3158) = 1;
    v58 = NullValue;
    v59 = sub_23C505300((a1 + *(*a1 - 24)), __dst, *NullValue);
    a1[409] = v59;
    v60 = a1 + *(*a1 - 24);
    v61 = *v59;
    LOWORD(v532) = 257;
    v62 = sub_23C49ACF8((v60 + 8), 39, v58, v61, v528);
    v63 = a1 + *(*a1 - 24);
    v64 = a1[409];
    LOWORD(v532) = 257;
    v66 = sub_23C49A474((v63 + 8), v62, v64, v528);
    if ((*(a1 + 3102) & 1) == 0)
    {
      v48 = llvm::Constant::getNullValue(*a1[410], v65);
      *(a1 + 3102) = 1;
    }

    *(a1 + 3159) = 1;
    v67 = sub_23C505300((a1 + *(*a1 - 24)), v577, *v48);
    a1[410] = v67;
    v68 = a1 + *(*a1 - 24);
    v69 = *v67;
    LOWORD(v532) = 257;
    v70 = sub_23C49ACF8((v68 + 8), 39, v48, v69, v528);
    v71 = a1 + *(*a1 - 24);
    v72 = a1[410];
    LOWORD(v532) = 257;
    v48 = sub_23C49A474((v71 + 8), v70, v72, v528);
    v73 = v66;
  }

  else
  {
    v73 = NullValue;
  }

  v74 = 0;
  v528[0] = 1;
  v528[1] = *(a1 + 3144);
  v529 = "air.amplification_id";
  v530 = 20;
  v531 = a1[391];
  v535 = 0;
  v536 = 0;
  v537 = 0;
  v538 = 0;
  v539 = *(a1 + 3145);
  v540 = "air.amplification_count";
  v541 = 23;
  v542 = a1[392];
  v543 = 0;
  v544 = 0;
  v545 = 0;
  v546 = *(a1 + 3158);
  v547 = *(a1 + 3101);
  v548 = "air.viewport_array_index";
  v549 = 24;
  NullValue = v73;
  v550 = v73;
  v551 = 0;
  v552 = 0;
  v553 = 0;
  v554 = *(a1 + 3159);
  v555 = *(a1 + 3102);
  v556 = "air.render_target_array_index";
  v557 = 29;
  v507 = v48;
  v558 = v48;
  v559 = 0;
  v560 = 0;
  v561 = 0;
  do
  {
    v75 = &v528[v74];
    if ((*(*a1 + 344))(a1, *&v528[v74 + 8], *(&v530 + v74), &v532 + v74, v528[v74]))
    {
      v76 = *a1;
      v77 = *(*a1 - 24);
      v78 = *(v75 + 3);
      v79 = sub_23C504F18(a1 + v77, *v78, &__dst);
      if (v75[1] == 1)
      {
        v80 = *(&v532 + v74 + 4);
        if (v80 >= v79)
        {
          if (v80 > v79)
          {
            v96 = *(v75 + 1);
            v95 = *(v75 + 2);
            if (v95 >= 4)
            {
              v97 = 4;
            }

            else
            {
              v97 = *(v75 + 2);
            }

            if (v96)
            {
              v98 = v95 - v97;
              if (v95 - v97 >= 0x7FFFFFFFFFFFFFF8)
              {
                sub_23C496CE8();
              }

              if (v98 >= 0x17)
              {
                operator new();
              }

              HIBYTE(v578) = v95 - v97;
              if (v95 >= 5)
              {
                memmove(&__dst, (v96 + v97), v98);
              }

              *(&__dst + v98) = 0;
              v497 = HIBYTE(v578);
              v496 = __dst;
              v495 = v577;
            }

            else
            {
              v495 = 0;
              v496 = 0;
              v497 = 0;
              __dst = 0;
              v577 = 0;
              v578 = 0;
            }

            if ((v497 & 0x80u) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = v496;
            }

            if ((v497 & 0x80u) == 0)
            {
              v499 = v497;
            }

            else
            {
              v499 = v495;
            }

            std::string::append((a1 + *(v76 - 24) + 408), p_dst, v499);
            if (SHIBYTE(v578) < 0)
            {
              operator delete(__dst);
            }

            std::string::append((a1 + *(*a1 - 24) + 408), " type does not match between vertex and fragment function");
            v492 = 0;
            goto LABEL_495;
          }
        }

        else
        {
          *(v75 + 3) = sub_23C5053E8(a1 + v77, v78, v80, 0);
        }
      }

      sub_23C52B5AC((a1 + 304), (v75 + 32));
      sub_23C49786C(&v567, *&v534[v74], *(v75 + 3));
    }

    v74 += 96;
  }

  while (v74 != 384);
  *(a1 + 774) = sub_23C52BC50(a1 + 2432, *(*(a1 + *(*a1 - 24) + 344) + 1634), *(a1 + 773));
  v579 = 0;
  v580 = 0;
  v581 = 0;
  if ((*(*a1 + 352))(a1, &__dst))
  {
    do
    {
      sub_23C52B5AC((a1 + 304), &__dst);
    }

    while (((*(*a1 + 352))(a1, &__dst) & 1) != 0);
  }

  if (SHIBYTE(v581) < 0)
  {
    operator delete(v579);
  }

  v81 = 126 - 2 * __clz(v568);
  if (v568)
  {
    v82 = v81;
  }

  else
  {
    v82 = 0;
  }

  sub_23C527E70(v567, &v567[4 * v568], v82, 1);
  sub_23C52B97C((a1 + 304), *(a1 + *(*a1 - 24) + 344));
  v83 = v506[5];
  v84 = llvm::ConstantInt::get();
  v87 = llvm::ConstantInt::get();
  a1[388] = 0;
  v88 = (a1 + *(*a1 - 24));
  if (*(v88[43] + 1676) == 1 && *(a1 + 3144) == 1)
  {
    v89 = sub_23C527D50(a1, v85, v86);
    v87 = sub_23C505300(v88, v89, *(a1 + *(*a1 - 24) + 584));
    v92 = *(*a1 - 24);
    if (*(a1 + 788))
    {
      v93 = sub_23C529724(a1, v90, v91);
    }

    else
    {
      v93 = sub_23C527D50(a1, v90, v91);
    }

    v570 = v93;
    v99 = a1 + *(*a1 - 24);
    v100 = *(v99 + 43);
    v101 = *(v100 + 1344);
    if (v101)
    {
      v102 = strlen(*(v100 + 1344));
    }

    else
    {
      v102 = 0;
    }

    v103 = sub_23C49EB10(v99, v101, v102, *(v99 + 24), *(v99 + 24));
    v104 = (a1 + *(*a1 - 24));
    LOWORD(v580) = 257;
    v105 = sub_23C497A7C(v104 + 1, *(v103 + 24), v103, &v570, 1, &__dst);
    v94 = sub_23C505300((a1 + v92), v105, *(a1 + *(*a1 - 24) + 584));
  }

  else
  {
    v94 = v84;
  }

  a1[411] = llvm::ConstantInt::get();
  v106 = llvm::ConstantInt::get();
  v107 = v106;
  a1[412] = v106;
  v108 = *(a1 + 3156);
  if (*(a1 + 3156))
  {
    v109 = v94;
  }

  else
  {
    v109 = v84;
  }

  a1[413] = v109;
  if (v108 != 1)
  {
    a1[414] = v106;
    goto LABEL_151;
  }

  v110 = a1 + *(*a1 - 24);
  LOWORD(v580) = 257;
  v107 = sub_23C49ADDC((v110 + 8), v106, v87, &__dst);
  v111 = *(a1 + 3156);
  a1[414] = v107;
  if ((v111 & 1) == 0)
  {
LABEL_151:
    *(a1 + 776) += 4;
    goto LABEL_152;
  }

  *(a1 + 777) += 4;
LABEL_152:
  v112 = a1 + *(*a1 - 24);
  v113 = a1[411];
  LOWORD(v580) = 257;
  a1[415] = sub_23C49A474((v112 + 8), v113, v107, &__dst);
  v114 = llvm::ConstantInt::get();
  a1[416] = v114;
  a1[417] = v84;
  a1[418] = v114;
  v115 = a1 + *(*a1 - 24);
  v116 = a1[415];
  LOWORD(v580) = 257;
  a1[419] = sub_23C49A474((v115 + 8), v116, v114, &__dst);
  v117 = llvm::ConstantInt::get();
  a1[420] = v117;
  a1[421] = v84;
  a1[422] = v117;
  v118 = a1 + *(*a1 - 24);
  v119 = a1[419];
  LOWORD(v580) = 257;
  a1[423] = sub_23C49A474((v118 + 8), v119, v117, &__dst);
  v120 = llvm::ConstantInt::get();
  a1[424] = v120;
  a1[425] = v84;
  a1[426] = v120;
  v121 = a1 + *(*a1 - 24);
  v122 = a1[423];
  LOWORD(v580) = 257;
  a1[427] = sub_23C49A474((v121 + 8), v122, v120, &__dst);
  v123 = llvm::ConstantInt::get();
  a1[428] = v123;
  a1[429] = v84;
  a1[430] = v123;
  v124 = a1 + *(*a1 - 24);
  v125 = a1[427];
  LOWORD(v580) = 257;
  a1[431] = sub_23C49A474((v124 + 8), v125, v123, &__dst);
  v126 = llvm::ConstantInt::get();
  a1[432] = v126;
  a1[433] = v84;
  a1[434] = v126;
  v127 = a1 + *(*a1 - 24);
  v128 = a1[431];
  LOWORD(v580) = 257;
  a1[435] = sub_23C49A474((v127 + 8), v128, v126, &__dst);
  v129 = llvm::ConstantInt::get();
  a1[436] = v129;
  a1[437] = v84;
  a1[438] = v129;
  v130 = a1 + *(*a1 - 24);
  v131 = a1[435];
  LOWORD(v580) = 257;
  v132 = sub_23C49A474((v130 + 8), v131, v129, &__dst);
  a1[439] = v132;
  v133 = *(a1 + 814);
  v134 = *a1;
  v517 = (a1 + 475);
  if (v133 && (*(*(a1 + *(v134 - 24) + 344) + 1654) & 1) == 0)
  {
    v513 = v94;
    v514 = v87;
    v135 = v503;
    v516 = v84;
    if (v503)
    {
      LODWORD(v578) = 128;
      __dst = MEMORY[0x23EED4160](6144, 8);
      sub_23C528F40(&__dst);
      LOBYTE(v579) = 0;
      v582 = 0;
      if (*(v135 + 16) == 83)
      {
        v136 = *(v135 + 5);
        v137 = v136 & 0x7FFFFFF;
        if ((v136 & 0x7FFFFFF) != 0)
        {
          v138 = v135;
          v139 = 0;
          v140 = 0;
          do
          {
            if ((v136 & 0x40000000) != 0)
            {
              v141 = *(v138 - 1);
            }

            else
            {
              v141 = &v138[-4 * v137];
            }

            v142 = v141[v139];
            *sub_23C529020(&__dst, v141[4 * *(v138 + 15) + v140++]) = v142;
            v136 = *(v138 + 5);
            v137 = v136 & 0x7FFFFFF;
            v139 += 4;
          }

          while (v140 < v137);
        }
      }

      else
      {
        SinglePredecessor = llvm::BasicBlock::getSinglePredecessor(v83);
        *sub_23C529020(&__dst, SinglePredecessor) = v135;
      }

      v144 = a1[396];
      v145 = a1[397];
      if (v144 != v145)
      {
        v146 = a1 + 399;
        while (1)
        {
          v147 = *(v144 + 3);
          if (!v147)
          {
            goto LABEL_188;
          }

          v148 = **(v147 - 64);
          v149 = (*(v148 + 8) & 0xFE) == 0x12 ? *(v148 + 32) : 1;
          v150 = *v144;
          v151 = v144[1];
          v152 = sub_23C529020(&__dst, *(v147 + 40));
          v153 = *v152;
          if (*(*v152 + 16) - 11 < 2)
          {
            break;
          }

          while (*(v153 - 32) != *(v147 - 64))
          {
            v153 = *(v153 - 64);
            if (*(v153 + 16) - 11 <= 1)
            {
              goto LABEL_179;
            }
          }

          v154 = v146;
          v155 = **(v153 + 64);
          v156 = *(a1[7] - 8 * *(a1[7] + 8) + 8 * v155);
          v157 = llvm::MDString::getString(*(v156 - 8 * *(v156 + 8)));
          if (v158 == 17)
          {
            if (*v157 == 0x747265762E726961 && *(v157 + 8) == 0x757074756F5F7865 && *(v157 + 16) == 116)
            {
              v573 = 0;
              v574 = 0;
              v575 = 0;
              if ((*(*a1 + 336))(a1, *v503, v155, v156, &v570, 0))
              {
                v165 = *(a1 + 616);
                v146 = v154;
                if (v165)
                {
                  v166 = a1[307];
                  v167 = v165 << 6;
                  while (*(v166 + 16) != v572)
                  {
                    v166 += 64;
                    v167 -= 64;
                    if (!v167)
                    {
                      goto LABEL_203;
                    }
                  }

                  v159 = *(v166 + 48);
                }

                else
                {
LABEL_203:
                  v159 = 0xFFFF;
                }
              }

              else
              {
                v159 = -2;
                v146 = v154;
              }

              if (SHIBYTE(v575) < 0)
              {
                operator delete(v573);
              }
            }

            else
            {
              v159 = -2;
              v146 = v154;
            }
          }

          else
          {
            v146 = v154;
            if (v158 != 12)
            {
              break;
            }

            if (*v157 ^ 0x69736F702E726961 | *(v157 + 8) ^ 0x6E6F6974)
            {
              v159 = -2;
            }

            else
            {
              v159 = 0;
            }
          }

LABEL_180:
          if (v149)
          {
            v160 = *(v146[v151] + 8);
            while (1)
            {
              v161 = *(v160 + 4 * v150);
              if (v161 != -2)
              {
                v162 = v159;
                if (v161 == -1)
                {
                  goto LABEL_186;
                }

                if (v159 != v161)
                {
                  break;
                }
              }

LABEL_187:
              ++v159;
              ++v150;
              if (!--v149)
              {
                goto LABEL_188;
              }
            }

            v162 = -2;
LABEL_186:
            *(v160 + 4 * v150) = v162;
            goto LABEL_187;
          }

LABEL_188:
          v144 += 8;
          if (v144 == v145)
          {
            goto LABEL_208;
          }
        }

LABEL_179:
        v159 = -2;
        goto LABEL_180;
      }

LABEL_208:
      v168 = *(a1 + 814);
      if (v168 >= 2)
      {
        for (i = 0; i < v168; ++i)
        {
          v170 = a1[i + 399];
          v171 = *(v170 + 1);
          v172 = *v170;
          if (*v171 < 0xFFFFFFFE)
          {
            if (v172 < 2)
            {
              continue;
            }

            v173 = v172 - 1;
            v174 = v171 + 1;
            v175 = *v171 + 1;
            while (1)
            {
              v176 = *v174++;
              if (v175 != v176)
              {
                break;
              }

              ++v175;
              if (!--v173)
              {
                goto LABEL_216;
              }
            }
          }

          memset_pattern4(v171, &unk_23C534EEC, 4 * v172);
          v168 = *(a1 + 814);
LABEL_216:
          ;
        }
      }

      v177 = a1[396];
      for (j = a1[397]; v177 != j; v177 += 8)
      {
        v179 = *(v177 + 3);
        if (v179)
        {
          v180 = *v177;
          v181 = **(v179 - 8);
          if ((*(v181 + 8) & 0xFE) == 0x12)
          {
            v182 = *(v181 + 32);
            if (!v182)
            {
              goto LABEL_228;
            }
          }

          else
          {
            v182 = 1;
          }

          v183 = *(a1[v177[1] + 399] + 8);
          if (*(v183 + 4 * v180) <= 0xFFFFFFFD)
          {
            v184 = 0;
            v185 = v180 + 1;
            while (v182 - 1 != v184)
            {
              v186 = *(v183 + 4 * (v185 + v184++));
              if (v186 >= 0xFFFFFFFE)
              {
                if (v184 < v182)
                {
                  goto LABEL_229;
                }

                break;
              }
            }

LABEL_228:
            v187 = *(v179 - 4);
            llvm::Instruction::eraseFromParent(v179);
            sub_23C4D9264(v187);
          }
        }

LABEL_229:
        ;
      }

      if (v582 == 1)
      {
        sub_23C4ED91C(&v579);
        llvm::deallocate_buffer(v579, (16 * v581));
        v582 = 0;
      }

      v188 = __dst;
      if (v578)
      {
        v571 = 2;
        v572 = 0;
        v573 = -4096;
        v574 = 0;
        v570 = &unk_284F28A78;
        v524 = 2;
        v525 = 0;
        v526 = -8192;
        v527 = 0;
        v523 = &unk_284F28A78;
        v189 = (__dst + 24);
        v190 = 48 * v578;
        do
        {
          v191 = *v189;
          if (*v189 != -8192 && v191 != -4096 && v191 != 0)
          {
            llvm::ValueHandleBase::RemoveFromUseList((v189 - 2));
          }

          v189 += 6;
          v190 -= 48;
        }

        while (v190);
        if (v526 != -8192 && v526 != -4096 && v526 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v524);
        }

        if (v573 != -8192 && v573 != -4096 && v573)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v571);
        }

        v188 = __dst;
        v194 = 48 * v578;
      }

      else
      {
        v194 = 0;
      }

      llvm::deallocate_buffer(v188, v194);
      v132 = a1[439];
    }

    if (*(v132 + 16) == 16)
    {
      v195 = v132;
    }

    else
    {
      v195 = 0;
    }

    v196 = (v195 + 24);
    if (*(v195 + 32) >= 0x41u)
    {
      v196 = *v196;
    }

    v197 = *v196;
    v198 = *(a1 + 814);
    if (v198 < 2)
    {
      v200 = 0;
    }

    else
    {
      v199 = 0;
      v200 = 0;
      v201 = vdupq_n_s64(4uLL);
      do
      {
        v202 = a1[v199 + 399];
        v203 = *(v202 + 1);
        if (*v203 >= 0xFFFFFFFE)
        {
          v204 = *v202;
          if (v204)
          {
            v205 = (v204 + 3) & 0x1FFFFFFFCLL;
            v206 = vdupq_n_s64(v204 - 1);
            v207 = v203 + 2;
            v208 = v197;
            v209 = xmmword_23C5324B0;
            v210 = xmmword_23C532520;
            do
            {
              v211 = vmovn_s64(vcgeq_u64(v206, v209));
              if (vuzp1_s16(v211, 2).u8[0])
              {
                *(v207 - 2) = v208;
              }

              if (vuzp1_s16(v211, 2).i8[2])
              {
                *(v207 - 1) = v208 + 1;
              }

              if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v206, *&v210))).i32[1])
              {
                *v207 = v208 + 2;
                v207[1] = v208 + 3;
              }

              v210 = vaddq_s64(v210, v201);
              v209 = vaddq_s64(v209, v201);
              v208 += 4;
              v207 += 4;
              v205 -= 4;
            }

            while (v205);
            v198 = *(a1 + 814);
          }

          v197 += v204;
          v200 += v204;
        }

        ++v199;
      }

      while (v199 < v198);
    }

    v212 = a1[396];
    v213 = a1[397];
    if (v212 != v213)
    {
      v518 = (a1 + 399);
      while (1)
      {
        v214 = *(v212 + 3);
        if (v214)
        {
          break;
        }

LABEL_288:
        v212 += 8;
        if (v212 == v213)
        {
          goto LABEL_295;
        }
      }

      v215 = *v212;
      v216 = v212[1];
      v217 = *(v214 - 8);
      v218 = **(**(v214 - 4) + 16);
      if ((*(v218 + 8) & 0xFE) == 0x12)
      {
        v219 = *(v218 + 32);
        v220 = *&v518[8 * v216];
        if (!v219)
        {
LABEL_287:
          v225 = llvm::ConstantInt::get();
          sub_23C5288D0(a1, v217, v225, 0, 1, 0);
          v226 = *(v214 - 4);
          llvm::Instruction::eraseFromParent(v214);
          sub_23C4D9264(v226);
          goto LABEL_288;
        }
      }

      else
      {
        v220 = *&v518[8 * v216];
        v219 = 1;
      }

      v221 = *(v220 + 8);
      if (*(v221 + 4 * v215) <= 0xFFFFFFFD)
      {
        v227 = 0;
        while (v219 - 1 != v227)
        {
          v228 = *(v221 + 4 * (v215 + 1 + v227++));
          if (v228 >= 0xFFFFFFFE)
          {
            if (v227 < v219)
            {
              goto LABEL_284;
            }

            goto LABEL_287;
          }
        }
      }

      else
      {
LABEL_284:
        v222 = v197;
        v223 = *v212;
        v224 = v219;
        do
        {
          *(v221 + 4 * v223++) = v222++;
          --v224;
        }

        while (v224);
        v197 += v219;
        v200 += v219;
      }

      goto LABEL_287;
    }

LABEL_295:
    *(a1 + 773) += v200;
    v84 = v516;
    v94 = v513;
    v87 = v514;
  }

  v508 = a1 + 411;
  v229 = llvm::ConstantInt::get();
  a1[440] = v229;
  a1[441] = v84;
  a1[442] = v229;
  v230 = a1 + *(*a1 - 24);
  v231 = a1[439];
  LOWORD(v580) = 257;
  a1[443] = sub_23C49A474((v230 + 8), v231, v229, &__dst);
  v232 = llvm::ConstantInt::get();
  v233 = 0;
  v234 = 0;
  a1[444] = v232;
  a1[445] = v84;
  a1[446] = v232;
  do
  {
    v235 = *(a1 + v233 + 3036);
    if (*(a1 + 2992))
    {
      v235 = (v235 + 1) >> 1;
    }

    v234 += *(a1 + v233 + 3024) + v235;
    v233 += 4;
  }

  while (v233 != 12);
  *(a1 + 776) += *(a1 + 773) + *(a1 + 774) + v234;
  v236 = a1 + *(*a1 - 24);
  v237 = a1[443];
  LOWORD(v580) = 257;
  v238 = sub_23C49A474((v236 + 8), v237, v232, &__dst);
  v239 = 0;
  v240 = 0;
  a1[447] = v238;
  do
  {
    v241 = *(a1 + v239 + 3060);
    if (*(a1 + 2992))
    {
      v241 = (v241 + 1) >> 1;
    }

    v240 += *(a1 + v239 + 3048) + v241;
    v239 += 4;
  }

  while (v239 != 12);
  a1[448] = llvm::ConstantInt::get();
  a1[449] = v94;
  v242 = llvm::ConstantInt::get();
  a1[450] = v242;
  v243 = a1 + *(*a1 - 24);
  v244 = a1[447];
  LOWORD(v580) = 257;
  v245 = sub_23C49A474((v243 + 8), v244, v242, &__dst);
  v246 = 0;
  v247 = 0;
  a1[451] = v245;
  do
  {
    v248 = *(a1 + v246 + 3060);
    if (*(a1 + 2992))
    {
      v248 = (v248 + 1) >> 1;
    }

    v247 += *(a1 + v246 + 3048) + v248;
    v246 += 4;
  }

  while (v246 != 12);
  a1[452] = llvm::ConstantInt::get();
  a1[453] = v94;
  v249 = llvm::ConstantInt::get();
  a1[454] = v249;
  v250 = a1 + *(*a1 - 24);
  v251 = a1[451];
  LOWORD(v580) = 257;
  v252 = sub_23C49A474((v250 + 8), v251, v249, &__dst);
  v253 = 0;
  v254 = 0;
  a1[455] = v252;
  do
  {
    v255 = *(a1 + v253 + 3060);
    if (*(a1 + 2992))
    {
      v255 = (v255 + 1) >> 1;
    }

    v254 += *(a1 + v253 + 3048) + v255;
    v253 += 4;
  }

  while (v253 != 12);
  a1[456] = llvm::ConstantInt::get();
  a1[457] = v94;
  v256 = llvm::ConstantInt::get();
  a1[458] = v256;
  v257 = a1 + *(*a1 - 24);
  v258 = a1[455];
  LOWORD(v580) = 257;
  v259 = sub_23C49A474((v257 + 8), v258, v256, &__dst);
  v260 = 0;
  v261 = 0;
  a1[459] = v259;
  do
  {
    v262 = *(a1 + v260 + 3060);
    if (*(a1 + 2992))
    {
      v262 = (v262 + 1) >> 1;
    }

    v261 += *(a1 + v260 + 3048) + v262;
    v260 += 4;
  }

  while (v260 != 12);
  a1[460] = llvm::ConstantInt::get();
  a1[461] = v94;
  v263 = llvm::ConstantInt::get();
  a1[462] = v263;
  v264 = a1 + *(*a1 - 24);
  v265 = a1[459];
  LOWORD(v580) = 257;
  v266 = sub_23C49A474((v264 + 8), v265, v263, &__dst);
  v267 = 0;
  v268 = 0;
  a1[463] = v266;
  do
  {
    v269 = *(a1 + v267 + 3060);
    if (*(a1 + 2992))
    {
      v269 = (v269 + 1) >> 1;
    }

    v268 += *(a1 + v267 + 3048) + v269;
    v267 += 4;
  }

  while (v267 != 12);
  a1[464] = llvm::ConstantInt::get();
  a1[465] = v94;
  v270 = llvm::ConstantInt::get();
  a1[466] = v270;
  v271 = a1 + *(*a1 - 24);
  v272 = a1[463];
  LOWORD(v580) = 257;
  v273 = sub_23C49A474((v271 + 8), v272, v270, &__dst);
  v274 = 0;
  v275 = 0;
  a1[467] = v273;
  do
  {
    v276 = *(a1 + v274 + 3060);
    if (*(a1 + 2992))
    {
      v276 = (v276 + 1) >> 1;
    }

    v275 += *(a1 + v274 + 3048) + v276;
    v274 += 4;
  }

  while (v274 != 12);
  a1[468] = llvm::ConstantInt::get();
  v277 = v94;
  a1[469] = v94;
  v278 = llvm::ConstantInt::get();
  v279 = 0;
  v280 = 0;
  a1[470] = v278;
  do
  {
    v281 = *(a1 + v279 + 3060);
    if (*(a1 + 2992))
    {
      v281 = (v281 + 1) >> 1;
    }

    v280 += *(a1 + v279 + 3048) + v281;
    v279 += 4;
  }

  while (v279 != 12);
  v282 = a1 + *(*a1 - 24);
  v283 = llvm::ConstantInt::get();
  v284 = a1 + *(*a1 - 24);
  v285 = llvm::ConstantInt::get();
  LOWORD(v580) = 257;
  v286 = sub_23C4BF7D4((v284 + 8), v87, v285, &__dst);
  LOWORD(v574) = 257;
  v287 = sub_23C49ADDC((v282 + 8), v283, v286, &v570);
  LOWORD(v527) = 257;
  v288 = sub_23C49A474((v282 + 8), v278, v287, &v523);
  v289 = 0;
  v290 = 0;
  a1[470] = v288;
  do
  {
    v291 = *(a1 + v289 + 3060);
    if (*(a1 + 2992))
    {
      v291 = (v291 + 1) >> 1;
    }

    v290 += *(a1 + v289 + 3048) + v291;
    v289 += 4;
  }

  while (v289 != 12);
  *(a1 + 777) += v290;
  v292 = a1 + *(*a1 - 24);
  v293 = llvm::ConstantInt::get();
  LOWORD(v580) = 257;
  v294 = sub_23C49ADDC((v292 + 8), v293, v87, &__dst);
  v295 = a1 + *(*a1 - 24);
  v296 = a1[447];
  LOWORD(v580) = 257;
  a1[471] = sub_23C49A474((v295 + 8), v296, v294, &__dst);
  v297 = llvm::ConstantInt::get();
  a1[472] = v297;
  v298 = *(a1 + 3157);
  if (*(a1 + 3157))
  {
    v299 = v277;
  }

  else
  {
    v299 = v84;
  }

  a1[473] = v299;
  v300 = v515;
  if (v298 == 1)
  {
    v301 = a1 + *(*a1 - 24);
    LOWORD(v580) = 257;
    v297 = sub_23C49ADDC((v301 + 8), v297, v87, &__dst);
  }

  a1[474] = v297;
  if (*(a1 + 3100) == 1)
  {
    if (*(a1 + 3157) == 1)
    {
      ++*(a1 + 777);
    }

    else
    {
      ++*(a1 + 776);
    }
  }

  v302 = a1 + *(*a1 - 24);
  if (*(*(v302 + 43) + 1671) != 1)
  {
    v304 = a1[471];
    LOWORD(v580) = 257;
    a1[475] = sub_23C49A474((v302 + 8), v304, v297, &__dst);
    v305 = llvm::ConstantInt::get();
    a1[476] = v305;
    v306 = *(a1 + 3158);
    if (*(a1 + 3158))
    {
      v307 = v277;
    }

    else
    {
      v307 = v84;
    }

    a1[477] = v307;
    if (v306 == 1)
    {
      v308 = a1 + *(*a1 - 24);
      LOWORD(v580) = 257;
      v305 = sub_23C49ADDC((v308 + 8), v305, v87, &__dst);
    }

    a1[478] = v305;
    if (*(a1 + 3101) == 1)
    {
      if (*(a1 + 3158) == 1)
      {
        ++*(a1 + 777);
      }

      else
      {
        ++*(a1 + 776);
      }
    }

    v316 = a1 + *(*a1 - 24);
    v317 = a1[475];
    LOWORD(v580) = 257;
    a1[479] = sub_23C49A474((v316 + 8), v317, v305, &__dst);
    v312 = llvm::ConstantInt::get();
    a1[480] = v312;
    v318 = *(a1 + 3159);
    if (*(a1 + 3159))
    {
      v319 = v277;
    }

    else
    {
      v319 = v84;
    }

    a1[481] = v319;
    if (v318 == 1)
    {
      v320 = a1 + *(*a1 - 24);
      LOWORD(v580) = 257;
      v312 = sub_23C49ADDC((v320 + 8), v312, v87, &__dst);
    }

    a1[482] = v312;
    if (*(a1 + 3102) != 1)
    {
      goto LABEL_374;
    }

    if (*(a1 + 3159) == 1)
    {
      goto LABEL_372;
    }

LABEL_373:
    ++*(a1 + 776);
    goto LABEL_374;
  }

  if (*(a1 + 3101))
  {
    v303 = 1;
  }

  else
  {
    v303 = *(a1 + 3102);
  }

  if (*(a1 + 3158))
  {
    v309 = 1;
  }

  else
  {
    v309 = *(a1 + 3159);
  }

  v310 = a1[471];
  LOWORD(v580) = 257;
  a1[475] = sub_23C49A474((v302 + 8), v310, v297, &__dst);
  v311 = llvm::ConstantInt::get();
  v312 = v311;
  a1[476] = v311;
  if (v309)
  {
    v313 = v277;
  }

  else
  {
    v313 = v84;
  }

  a1[477] = v313;
  if (v309)
  {
    v314 = a1 + *(*a1 - 24);
    LOWORD(v580) = 257;
    v312 = sub_23C49ADDC((v314 + 8), v311, v87, &__dst);
    v315 = a1[477];
    a1[478] = v312;
    *(v517 + 32) = *v517;
    a1[481] = v315;
    a1[482] = v312;
    if ((v303 & 1) == 0)
    {
      goto LABEL_374;
    }

LABEL_372:
    ++*(a1 + 777);
    goto LABEL_374;
  }

  a1[478] = v311;
  a1[479] = a1[475];
  a1[480] = v311;
  a1[481] = v84;
  a1[482] = v311;
  if (v303)
  {
    goto LABEL_373;
  }

LABEL_374:
  v321 = a1 + *(*a1 - 24);
  v322 = a1[479];
  LOWORD(v580) = 257;
  a1[483] = sub_23C49A474((v321 + 8), v322, v312, &__dst);
  v323 = llvm::ConstantInt::get();
  a1[484] = v323;
  v324 = *(a1 + 3156);
  if (*(a1 + 3156))
  {
    v325 = v277;
  }

  else
  {
    v325 = v84;
  }

  a1[485] = v325;
  if (v324 == 1)
  {
    v326 = a1 + *(*a1 - 24);
    LOWORD(v580) = 257;
    v323 = sub_23C49ADDC((v326 + 8), v323, v87, &__dst);
  }

  a1[486] = v323;
  v327 = *(a1 + 778);
  if (v327)
  {
    if (*(a1 + 3156) != 1)
    {
      *(a1 + 776) += v327;
      if (!v300)
      {
        goto LABEL_384;
      }

      goto LABEL_383;
    }

    *(a1 + 777) += v327;
  }

  if (v300)
  {
LABEL_383:
    v328 = a1 + *(*a1 - 24);
    v329 = a1[411];
    v330 = a1[413];
    v331 = a1[412];
    LOWORD(v580) = 257;
    v332 = sub_23C49ADDC((v328 + 8), v330, v331, &__dst);
    LOWORD(v574) = 257;
    v333 = sub_23C49A474((v328 + 8), v329, v332, &v570);
    sub_23C5288D0(a1, v300, v333, 0, 0, *(a1 + 3156));
  }

LABEL_384:
  v334 = *(a1 + 616);
  v335 = (a1 + 1);
  v518 = (a1 + 1);
  if (!v334)
  {
    goto LABEL_422;
  }

  v336 = 0;
  LODWORD(v512) = 0;
  LODWORD(v513) = 0;
  v514 = 0;
  v337 = 0;
  v338 = a1[307];
  v509 = v338 + (v334 << 6);
  do
  {
    if (*(a1 + 2992) == 1)
    {
      v339 = *(v338 + 56);
    }

    else
    {
      v339 = 0;
    }

    v340 = *(v338 + 16);
    if (v568)
    {
      v341 = v567;
      v342 = v568;
      do
      {
        v343 = v342 >> 1;
        v344 = &v341[4 * (v342 >> 1)];
        v346 = *v344;
        v345 = v344 + 4;
        v342 += ~(v342 >> 1);
        if (v346 < v340)
        {
          v341 = v345;
        }

        else
        {
          v342 = v343;
        }
      }

      while (v342);
    }

    else
    {
      v341 = v567;
    }

    if (v341 != &v567[4 * v568] && *v341 == v340)
    {
      LODWORD(v516) = v336;
      v347 = *(*a1 - 24);
      v517 = *(v338 + 60);
      v348 = &v508[4 * v517];
      v350 = v348[1];
      v349 = v348[2];
      v351 = *v348;
      LOWORD(v580) = 257;
      v352 = sub_23C49ADDC(&v335[v347], v349, v350, &__dst);
      LOWORD(v574) = 257;
      v353 = sub_23C49A474(&v335[v347], v351, v352, &v570);
      v354 = *(v341 + 1);
      if (v339)
      {
        v571 = 0;
        v572 = 0;
        v573 = 0;
        v570 = v354;
        if (*v354)
        {
          v355 = *(*v354 + 8) == 18;
        }

        else
        {
          v355 = 0;
        }

        if (!v355)
        {
          v356 = 1;
LABEL_408:
          v510 = v353;
          v511 = v338;
          v360 = *(v338 + 52);
          v361 = &v570;
          v362 = v516;
          while (1)
          {
            v363 = a1 + *(*a1 - 24);
            v364 = llvm::ConstantInt::get();
            LOWORD(v580) = 257;
            v516 = sub_23C49A474((v363 + 8), v353, v364, &__dst);
            v366 = *v361;
            LODWORD(v515) = *(v511 + 57);
            if (v337)
            {
              v367 = v362;
              v368 = v337;
              v369 = a1 + *(*a1 - 24);
              if (v367 == v517 && v512 == (v360 & 0xFFFFFFFE))
              {
                LOWORD(v580) = 257;
                v370 = llvm::ConstantInt::get();
                v371 = sub_23C505AA8((v369 + 8), v368, v366, v370, &__dst);
                if (v371)
                {
                  v372 = a1 + *(*a1 - 24);
                  v373 = *(v372 + 24);
                  LOWORD(v580) = 257;
                  v374 = sub_23C49ACF8((v372 + 8), 49, v371, v373, &__dst);
                  sub_23C5288D0(a1, v374, v514, 1, 1, v513 & 1);
                  v337 = 0;
                  v514 = 0;
                }

                else
                {
                  v337 = 0;
                }

                goto LABEL_416;
              }

              v375 = *(v369 + 24);
              LOWORD(v580) = 257;
              v376 = sub_23C49ACF8((v369 + 8), 49, v368, v375, &__dst);
              sub_23C5288D0(a1, v376, v514, 1, 1, v513 & 1);
            }

            v377 = (a1 + *(*a1 - 24));
            v378 = llvm::Constant::getNullValue(v377[26], v365);
            LOWORD(v580) = 257;
            v379 = llvm::ConstantInt::get();
            v337 = sub_23C505AA8((v377 + 1), v378, v366, v379, &__dst);
            v514 = v516;
            LODWORD(v513) = v515;
            LODWORD(v512) = v360;
LABEL_416:
            v353 = v510;
            ++v360;
            ++v361;
            v362 = v517;
            if (!--v356)
            {
              v335 = v518;
              v336 = v517;
              v338 = v511;
              goto LABEL_419;
            }
          }
        }

        v356 = *(*v354 + 32);
        sub_23C505D44(a1 + *(*a1 - 24), v354, &v570);
        if (v356)
        {
          goto LABEL_408;
        }
      }

      else
      {
        v357 = a1 + *(*a1 - 24);
        v358 = llvm::ConstantInt::get();
        LOWORD(v580) = 257;
        v359 = sub_23C49A474((v357 + 8), v353, v358, &__dst);
        sub_23C5288D0(a1, v354, v359, 1, 1, *(v338 + 57));
      }

      v336 = v516;
    }

LABEL_419:
    v338 += 64;
  }

  while (v338 != v509);
  if (v337)
  {
    v380 = a1 + *(*a1 - 24);
    v381 = *(v380 + 24);
    LOWORD(v580) = 257;
    v382 = sub_23C49ACF8((v380 + 8), 49, v337, v381, &__dst);
    sub_23C5288D0(a1, v382, v514, 1, 1, v513 & 1);
  }

LABEL_422:
  if (*(a1 + 814))
  {
    v383 = a1 + *(*a1 - 24);
    if (*(*(v383 + 43) + 1654) == 1)
    {
      v384 = *(v383 + 7);
      __dst = "return_block";
      LOWORD(v580) = 259;
      llvm::BasicBlock::splitBasicBlock();
      __dst = "tf_write_block";
      LOWORD(v580) = 259;
      v509 = v384;
      operator new();
    }
  }

  if (*(a1 + 774))
  {
    if (*(a1[439] + 16) == 16)
    {
      v385 = a1[439];
    }

    else
    {
      v385 = 0;
    }

    v386 = (v385 + 24);
    if (*(v385 + 32) >= 0x41u)
    {
      v386 = *v386;
    }

    v516 = *v386;
    v387 = llvm::ConstantFP::get();
    v388 = (a1 + *(*a1 - 24));
    v389 = v388[43];
    v390 = *(v389 + 1232);
    if (v390)
    {
      v391 = strlen(*(v389 + 1232));
    }

    else
    {
      v391 = 0;
    }

    v392 = sub_23C49B938(v388, v390, v391, v388[18], v388[73], v388[20]);
    v393 = *(a1 + *(*a1 - 24) + 320);
    v394 = *(v393 + 32);
    v514 = (v393 + 24);
    if (v394 != (v393 + 24))
    {
      v395 = v392;
      do
      {
        v396 = v394 - 56;
        v515 = v394;
        if (!v394)
        {
          v396 = 0;
        }

        v397 = *(v396 + 10);
        v517 = (v396 + 72);
        if (v397 != v396 + 72)
        {
          do
          {
            if (v397)
            {
              v398 = (v397 - 24);
            }

            else
            {
              v398 = 0;
            }

            v399 = *(v398 + 5);
            v400 = v399 - 24;
            if (v399)
            {
              v401 = v399 - 24;
            }

            else
            {
              v401 = 0;
            }

            v402 = *(v401 + 16) - 29;
            if (v402 >= 0xB)
            {
              v400 = 0;
            }

            v403 = *(v400 + 16) != 29 || v402 > 0xA;
            v404 = v518;
            if (!v403)
            {
              v405 = *(*a1 - 24);
              FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v398);
              sub_23C497720(&v404[v405], v398, FirstInsertionPt);
              if (*(a1 + 774))
              {
                v407 = 0;
                v408 = v516;
                do
                {
                  v570 = 0;
                  v571 = 0;
                  v570 = llvm::ConstantInt::get();
                  v571 = v387;
                  v409 = *(*a1 - 24);
                  LOWORD(v580) = 257;
                  sub_23C497A7C(&v404[v409], *(v395 + 24), v395, &v570, 2, &__dst);
                  ++v407;
                  ++v408;
                }

                while (v407 < *(a1 + 774));
              }
            }

            v397 = *(v397 + 1);
          }

          while (v397 != v517);
        }

        v394 = *(v515 + 1);
      }

      while (v394 != v514);
    }
  }

  sub_23C4C30FC(a1 + *(*a1 - 24) + 8, v506);
  if (*(a1 + 3100) == 1)
  {
    v410 = (*(*a1 + 368))(a1, v504);
    v411 = llvm::ConstantFP::get();
    v412 = a1 + *(*a1 - 24);
    v413 = *(v412 + 43);
    v519 = *(v412 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v520, (v412 + 8));
    v521 = *(v412 + 26);
    v414 = (*(*v413 + 48))(v413, &v519, v410, v411, 0);
    if (v520)
    {
      llvm::MetadataTracking::untrack();
    }

    v415 = a1 + *(*a1 - 24);
    v416 = a1[471];
    v417 = a1[473];
    v418 = a1[472];
    LOWORD(v580) = 257;
    v419 = sub_23C49ADDC((v415 + 8), v417, v418, &__dst);
    LOWORD(v574) = 257;
    v420 = sub_23C49A474((v415 + 8), v416, v419, &v570);
    sub_23C5288D0(a1, v414, v420, 0, 2, *(a1 + 3157));
  }

  v421 = *a1;
  v422 = a1 + *(*a1 - 24);
  v423 = *(v422 + 43);
  v424 = v507;
  if (*(v423 + 1671) == 1)
  {
    if ((*(a1 + 3101) & 1) != 0 || *(a1 + 3102) == 1)
    {
      v425 = llvm::ConstantInt::get();
      if (*(a1 + 3101) == 1)
      {
        v426 = NullValue;
        v427 = a1 + *(*a1 - 24);
        v428 = *(v427 + 24);
        if (*NullValue == v428)
        {
          v447 = llvm::ConstantInt::get();
          v429 = sub_23C506630(v427, v426, v447, 36);
        }

        else
        {
          LOWORD(v580) = 257;
          v429 = sub_23C49ACF8((v427 + 8), 39, NullValue, v428, &__dst);
        }

        v448 = v429;
        v449 = sub_23C528E20(a1, v430, v431);
        v450 = a1 + *(*a1 - 24);
        LOWORD(v580) = 257;
        v451 = sub_23C49A668((v450 + 8), v448, v449, &__dst);
        v452 = a1 + *(*a1 - 24);
        LOWORD(v580) = 257;
        v453 = llvm::ConstantInt::get();
        v425 = sub_23C49A668((v452 + 8), v451, v453, &__dst);
      }

      v454 = v425;
      if (*(a1 + 3102) == 1)
      {
        v455 = a1 + *(*a1 - 24);
        v456 = *(v455 + 24);
        if (*v424 == v456)
        {
          v460 = llvm::ConstantInt::get();
          v457 = sub_23C506630(v455, v424, v460, 36);
        }

        else
        {
          LOWORD(v580) = 257;
          v457 = sub_23C49ACF8((v455 + 8), 39, v424, v456, &__dst);
        }

        v461 = v457;
        v462 = sub_23C528E20(a1, v458, v459);
        v463 = a1 + *(*a1 - 24);
        LOWORD(v580) = 257;
        v464 = sub_23C49A8E0((v463 + 8), v461, v462, &__dst);
        v465 = a1 + *(*a1 - 24);
        LOWORD(v580) = 257;
        v466 = llvm::ConstantInt::get();
        v467 = sub_23C49A668((v465 + 8), v464, v466, &__dst);
        v468 = a1 + *(*a1 - 24);
        LOWORD(v580) = 257;
        v469 = sub_23C49A474((v468 + 8), v454, v467, &__dst);
        v470 = a1 + *(*a1 - 24);
        LOWORD(v580) = 257;
        v454 = sub_23C49A98C((v470 + 8), v469, v461, &__dst);
      }

      v471 = a1 + *(*a1 - 24);
      v472 = a1[475];
      v473 = a1[477];
      v474 = a1[476];
      LOWORD(v580) = 257;
      v475 = sub_23C49ADDC((v471 + 8), v473, v474, &__dst);
      LOWORD(v574) = 257;
      v442 = sub_23C49A474((v471 + 8), v472, v475, &v570);
      if (*(a1 + 3158))
      {
        v476 = 1;
      }

      else
      {
        v476 = *(a1 + 3159);
      }

      v443 = v476 & 1;
      v444 = a1;
      v445 = v454;
      v446 = 4;
LABEL_485:
      sub_23C5288D0(v444, v445, v442, 0, v446, v443);
    }
  }

  else
  {
    if (*(v423 + 1669) == 1 && *(a1 + 3101) == 1)
    {
      v432 = a1[475];
      v433 = a1[477];
      v434 = a1[476];
      LOWORD(v580) = 257;
      v435 = sub_23C49ADDC((v422 + 8), v433, v434, &__dst);
      LOWORD(v574) = 257;
      v436 = sub_23C49A474((v422 + 8), v432, v435, &v570);
      sub_23C5288D0(a1, NullValue, v436, 0, 4, *(a1 + 3158));
      v421 = *a1;
    }

    v437 = a1 + *(v421 - 24);
    if (*(*(v437 + 43) + 1670) == 1 && *(a1 + 3102) == 1)
    {
      v438 = a1[479];
      v439 = a1[481];
      v440 = a1[480];
      LOWORD(v580) = 257;
      v441 = sub_23C49ADDC((v437 + 8), v439, v440, &__dst);
      LOWORD(v574) = 257;
      v442 = sub_23C49A474((v437 + 8), v438, v441, &v570);
      v443 = *(a1 + 3159);
      v444 = a1;
      v445 = v424;
      v446 = 5;
      goto LABEL_485;
    }
  }

  v477 = 0;
  v478 = 0;
  v517 = (a1 + 73);
  v479 = 1;
  do
  {
    if ((*(a1 + 779) & v479) != 0)
    {
      v480 = llvm::ConstantInt::get();
      v481 = *(*a1 - 24);
      v482 = a1[483];
      v483 = a1[485];
      v484 = a1[484];
      LOWORD(v580) = 257;
      v485 = v518;
      v486 = sub_23C49ADDC(&v518[v481], v483, v484, &__dst);
      LOWORD(v574) = 257;
      v487 = sub_23C49A474(&v485[v481], v482, v486, &v570);
      LOWORD(v527) = 257;
      v488 = sub_23C49A474(&v485[v481], v480, v487, &v523);
      sub_23C5288D0(a1, *&v562[v477], v488, 0, 3, *(a1 + 3156));
      ++v478;
    }

    v479 *= 2;
    v477 += 8;
  }

  while (v477 != 64);
  if (v503)
  {
    sub_23C4D9264(v503);
  }

  v489 = a1 + *(*a1 - 24);
  v490 = v506;
  v491 = v506 + 3;
  if (!v506)
  {
    v491 = 0;
  }

  sub_23C497720((v489 + 8), v506[5], v491[1]);
  llvm::Instruction::eraseFromParent(v490);
  llvm::Function::eraseFromParent(v500[0]);
  v492 = 1;
LABEL_495:
  v493 = 384;
  do
  {
    if (*(&v525 + v493 + 7) < 0)
    {
      operator delete(*(&v523 + v493));
    }

    v493 -= 96;
  }

  while (v493);
  if (v563 != v501)
  {
    free(v563);
  }

  if (v567 != v502)
  {
    free(v567);
  }

  return v492;
}