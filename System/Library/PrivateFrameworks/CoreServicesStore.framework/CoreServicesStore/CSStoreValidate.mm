@interface CSStoreValidate
@end

@implementation CSStoreValidate

void ___CSStoreValidate_block_invoke_3(uint64_t a1, CSStore2::Table *this)
{
  if (*(this + 18) == 0x3FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = CSStore2::Table::copyCFName(this);
    (*(v4 + 16))(v4, "Table %s (%llx) has no remaining unit identifiers.", [(__CFString *)v5 UTF8String], (4 * *this));

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void ___CSStoreValidate_block_invoke_4(uint64_t a1, _DWORD *a2)
{
  v2 = a2[19];
  if (v2 == -1)
  {
    return;
  }

  v5 = *(a1 + 48);
  v6 = *(*v5 + 8);
  v7 = *(v6 + 12);
  v8 = (v6 + v2);
  if (v7 <= v2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 32);
  v11 = v10;
  v12 = *v9;
  if (*v9 - 16 > 0x1FF0)
  {
    v10[2](v10, "Nonsensical bucket count %llu", *v9);
LABEL_140:

    return;
  }

  v13 = v9 + 1;
  v14 = *v5;
  if (*v5)
  {
    v15 = *(v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = v13 - v15;
  if (v13 < v15 || HIDWORD(v16))
  {
    v17 = *(v14 + 8);
    v18 = *(v17 + 12);
    LODWORD(v16) = -1;
  }

  else
  {
    v17 = *(v14 + 8);
    v18 = *(v17 + 12);
    if (v16 + 1 > v18 || v16 == -1)
    {
      LODWORD(v16) = -1;
    }
  }

  if (__CFADD__(v16, 8 * v12) || v16 + 8 * v12 > v18)
  {
    if (v14)
    {
      v53 = v17;
    }

    else
    {
      v53 = 0;
    }

    v51 = v9 >= v53;
    v54 = v9 - v53;
    v55 = !v51;
    if (HIDWORD(v54))
    {
      v55 = 1;
    }

    v56 = v54 + 1 > v18 || v54 == -1;
    v57 = ((v55 | v56) & 1) == 0;
    v58 = 0xFFFFFFFFLL;
    if (v57)
    {
      v58 = v54;
    }

    v10[2](v10, "Hash map at %llu has invalid buckets range %llu-(%llu*%zu)", v58, v16, *v9, 8uLL);
    goto LABEL_140;
  }

  v20 = 0;
  v76 = *MEMORY[0x1E69E54E8];
  v77 = *(MEMORY[0x1E69E54E8] + 24);
  if (v12 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v12;
  }

  do
  {
    v22 = &v13[2 * v20];
    v23 = v22[1];
    if (v23 != -1)
    {
      v24 = *v22;
      if (v24 >> 29 || __CFADD__(v23, 8 * v24) || (v25 = *(v14 + 8), v26 = *(v25 + 12), v23 + 8 * v24 > v26))
      {
        if (v14)
        {
          v71 = v17;
        }

        else
        {
          v71 = 0;
        }

        v51 = v9 >= v71;
        v72 = v9 - v71;
        v73 = !v51;
        if (HIDWORD(v72))
        {
          v73 = 1;
        }

        v74 = v72 + 1 > v18 || v72 == -1;
        if ((v73 | v74))
        {
          v72 = 0xFFFFFFFFLL;
        }

        v10[2](v10, "Bucket [%llu,%llu] has invalid key-value pairs offset range %llu-(%llu*%zu)", v72, v20, v23, v24, 8uLL);
        goto LABEL_140;
      }

      v27 = v25 + v23;
      v28 = v26 <= v23 ? 0 : v27;
      if (v24)
      {
        for (i = 0; v24 != i; ++i)
        {
          v30 = v28[1];
          if (v30 != -1)
          {
            if (v18 <= v30)
            {
              std::ostringstream::basic_ostringstream[abi:nn200100](&v80);
              MEMORY[0x1BFAE5BE0](&v80, v28[1]);
              v59 = *v5;
              if (*v5)
              {
                v60 = *(v59 + 8);
              }

              else
              {
                v60 = 0;
              }

              v65 = 0xFFFFFFFFLL;
              v51 = v9 >= v60;
              v66 = v9 - v60;
              if (v51 && !HIDWORD(v66))
              {
                if ((v66 + 1) > *(*(v59 + 8) + 12) || v66 == -1)
                {
                  v65 = 0xFFFFFFFFLL;
                }

                else
                {
                  v65 = v66;
                }
              }

              if ((v87 & 0x10) != 0)
              {
                v69 = v86;
                if (v86 < v83)
                {
                  v86 = v83;
                  v69 = v83;
                }

                locale = v82[4].__locale_;
              }

              else
              {
                if ((v87 & 8) == 0)
                {
                  v68 = 0;
                  v79 = 0;
LABEL_133:
                  *(&__dst + v68) = 0;
                  p_dst = &__dst;
                  if (v79 < 0)
                  {
                    p_dst = __dst;
                  }

                  v11[2](v11, "Key-value pair [%llu,%llu,%llu] has invalid value (interpreted as Offset) %s", v65, v20, i, p_dst);
                  if (v79 < 0)
                  {
                    operator delete(__dst);
                  }

                  v80 = v76;
                  *(&v80 + *(v76 - 24)) = v77;
                  v81 = MEMORY[0x1E69E5548] + 16;
                  if (v85 < 0)
                  {
                    operator delete(__p);
                  }

                  v81 = MEMORY[0x1E69E5538] + 16;
                  std::locale::~locale(v82);
                  std::ostream::~ostream();
                  MEMORY[0x1BFAE5C80](&v88);
                  goto LABEL_140;
                }

                locale = v82[1].__locale_;
                v69 = v82[3].__locale_;
              }

              v68 = v69 - locale;
              if ((v69 - locale) >= 0x7FFFFFFFFFFFFFF8)
              {
                std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
              }

              if (v68 >= 0x17)
              {
                operator new();
              }

              v79 = v69 - locale;
              if (v68)
              {
                memmove(&__dst, locale, v68);
              }

              goto LABEL_133;
            }

            v31 = (*v28 >> 2) % v12;
            if (v20 != v31)
            {
              if (v14)
              {
                v61 = v17;
              }

              else
              {
                v61 = 0;
              }

              v51 = v9 >= v61;
              v62 = v9 - v61;
              v63 = !v51;
              if (HIDWORD(v62))
              {
                v63 = 1;
              }

              v64 = v62 + 1 > v18 || v62 == -1;
              if ((v63 | v64))
              {
                v62 = 0xFFFFFFFFLL;
              }

              v10[2](v10, "Key-value pair [%llu,%llu,%llu] is in the wrong bucket (should be %llu)", v62, v20, i, v31);
              goto LABEL_140;
            }
          }

          v28 += 2;
        }
      }
    }

    ++v20;
  }

  while (v20 != v21);

  v32 = *(*(a1 + 40) + 8);
  v33 = *(v32 + 24);
  v34 = *v9;
  if (!v34)
  {
    goto LABEL_64;
  }

  v35 = 0;
  v36 = *(a1 + 48);
  do
  {
    v37 = &v13[2 * v35];
    v38 = *v37;
    if (*v37 - 0x20000000 >= 0xE0000001)
    {
      v39 = v37[1];
      v40 = v39 + 8 * v38;
      if (!__CFADD__(v39, 8 * v38))
      {
        v41 = *(*v36 + 8);
        v42 = *(v41 + 12);
        if (v40 <= v42 && v42 > v39)
        {
          v44 = 0;
          v45 = v41 + v39;
          while (1)
          {
            v46 = *(v45 + 4);
            if (v46 != -1)
            {
              v47 = *(*v36 + 8);
              v48 = *(v47 + 12);
              if (v48 <= v46)
              {
                (*(*(a1 + 32) + 16))(*(a1 + 32), "Unit %llx in table %llx has an invalid address.");
                goto LABEL_59;
              }

              v49 = (v47 + v46);
              v50 = *(v47 + v46 + 4);
              if (v50 >> 25)
              {
                (*(*(a1 + 32) + 16))(*(a1 + 32), "Unit %llx is insanely long (payload %llu bytes long.)");
LABEL_59:
                v33 = 0;
                goto LABEL_60;
              }

              if (v46 >= 0xFFFFFFF8 || v46 + 8 > v48 || (v51 = __CFADD__(v46, v50 + 8), v52 = v46 + v50 + 8, v51) || v52 > v48)
              {
                (*(*(a1 + 32) + 16))(*(a1 + 32), "Unit %llx is out of range (total %llu bytes long.)");
                goto LABEL_59;
              }

              if (((*a2 & 0x3FFFFFFF) == 1073732445) != (*v49 >> 30 == 1))
              {
                (*(*(a1 + 32) + 16))(*(a1 + 32), "Unit %llx/%llx is garbage");
                goto LABEL_59;
              }
            }

LABEL_60:
            ++v44;
            v45 += 8;
            if (v44 >= *v37)
            {
              v34 = *v9;
              break;
            }
          }
        }
      }
    }

    ++v35;
  }

  while (v35 < v34);
  v32 = *(*(a1 + 40) + 8);
LABEL_64:
  *(v32 + 24) = v33;
}

void ___CSStoreValidate_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v13 = [v11 initWithFormat:v12 arguments:&a9];

  fprintf(*MEMORY[0x1E69E9848], "*** %s ***\n", [v13 UTF8String]);
  objc_autoreleasePoolPop(v10);
}

@end