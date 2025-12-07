@interface GLPValue
@end

@implementation GLPValue

char *__deserialize_GLPValue_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59[1] = *MEMORY[0x277D85DE8];
  MutableValue = glpMakeMutableValue(*(*(a1 + 32) + 240), *(a1 + 40), 0, a4, a5, a6, a7, a8, v59[0]);
  glpABIGetTypeSize(0, *(a1 + 40), 0);
  glpTypeSizeGetSize();
  v11 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = (v59 - v12);
  bzero(v59 - v12, v14);
  glpTypeGetAppleVec4Types(*(a1 + 40), v13, 1, 0, 0, 0, 0, 0, 0);
  if (v11)
  {
    v15 = 0;
    v16 = MutableValue;
    v17 = v11;
    do
    {
      ScalarType = glpPrimitiveTypeGetScalarType(v13[v15]);
      ScalarCount = glpPrimitiveTypeGetScalarCount(v13[v15]);
      v20 = ScalarCount;
      if (ScalarType <= 8)
      {
        if (ScalarType == 1)
        {
          if (ScalarCount)
          {
            v56 = 0;
            v57 = 4 * ScalarCount;
            do
            {
              *&v16[v56] = deserialize_float(*(a1 + 32));
              v56 += 4;
            }

            while (v57 != v56);
          }
        }

        else
        {
          if (ScalarType != 5)
          {
LABEL_96:
            abort();
          }

          if (ScalarCount)
          {
            v26 = 0;
            v22 = *(a1 + 32);
            v27 = 4 * v20;
            while (1)
            {
              v28 = *(v22 + 260);
              v29 = *(v22 + 256);
              if (v28 >= v29)
              {
                break;
              }

              v30 = *(v22 + 248);
              v31 = *(v30 + v28);
              v32 = *(v30 + v28);
              v33 = v28 + 1;
              *(v22 + 260) = v28 + 1;
              if (v31 < 0)
              {
                v34 = (v32 >> 1) & 7;
                if (v34 > 3)
                {
                  if (v34 > 5)
                  {
                    if (v34 == 6)
                    {
                      if (v28 + 5 > v29)
                      {
                        break;
                      }

                      LODWORD(v30) = *(v30 + v33);
                      *(v22 + 260) = v28 + 5;
                      v35 = v28 + 8;
                      if (v35 > v29)
                      {
                        break;
                      }
                    }

                    else
                    {
                      if (v28 + 9 > v29)
                      {
                        break;
                      }

                      v30 = *(v30 + v33);
                      v35 = v28 + 9;
                    }
                  }

                  else
                  {
                    v36 = v28 + 5;
                    if (v34 == 4)
                    {
                      if (v36 > v29)
                      {
                        break;
                      }

                      LODWORD(v30) = *(v30 + v33);
                      *(v22 + 260) = v28 + 5;
                      if (v28 + 5 >= v29)
                      {
                        break;
                      }

                      v35 = v28 + 6;
                    }

                    else
                    {
                      if (v36 > v29)
                      {
                        break;
                      }

                      LODWORD(v30) = *(v30 + v33);
                      v37 = (v28 + 5);
                      *(v22 + 260) = v37;
                      if (v37 + 2 > v29)
                      {
                        break;
                      }

                      v35 = v28 + 7;
                    }
                  }
                }

                else if (v34 > 1)
                {
                  if (v34 == 2)
                  {
                    v35 = v28 + 4;
                    if (v35 > v29)
                    {
                      break;
                    }

                    LODWORD(v30) = *(v30 + v33) | (*(v30 + v33 + 2) << 16);
                  }

                  else
                  {
                    if (v28 + 5 > v29)
                    {
                      break;
                    }

                    LODWORD(v30) = *(v30 + v33);
                    v35 = v28 + 5;
                  }
                }

                else if (v34)
                {
                  if (v28 + 3 > v29)
                  {
                    break;
                  }

                  LODWORD(v30) = *(v30 + v33);
                  v35 = v28 + 3;
                }

                else
                {
                  if (v33 >= v29)
                  {
                    break;
                  }

                  LODWORD(v30) = *(v30 + v33);
                  v35 = v28 + 2;
                }

                *(v22 + 260) = v35;
                v38 = -256 << (8 * v34);
                if (v31)
                {
                  v39 = v38;
                }

                else
                {
                  v39 = 0;
                }

                LODWORD(v32) = v30 | v39;
              }

              *&v16[v26] = v32;
              v26 += 4;
              if (v27 == v26)
              {
                goto LABEL_93;
              }
            }

LABEL_95:
            glpDeserialError(v22, 1u);
          }
        }
      }

      else
      {
        switch(ScalarType)
        {
          case 62:
            if (ScalarCount)
            {
              v40 = 0;
              v41 = 8 * ScalarCount;
              do
              {
                *&v16[v40] = deserialize_double(*(a1 + 32));
                v40 += 8;
              }

              while (v41 != v40);
            }

            break;
          case 36:
            if (ScalarCount)
            {
              v42 = 0;
              v22 = *(a1 + 32);
              v43 = 4 * v20;
              while (1)
              {
                v44 = *(v22 + 260);
                v45 = *(v22 + 256);
                if (v44 >= v45)
                {
                  goto LABEL_95;
                }

                v46 = *(v22 + 248);
                v47 = *(v46 + v44);
                v48 = *(v46 + v44);
                v49 = v44 + 1;
                *(v22 + 260) = v44 + 1;
                if (v47 < 0)
                {
                  v50 = (v48 >> 1) & 7;
                  if (v50 > 3)
                  {
                    if (v50 > 5)
                    {
                      if (v50 == 6)
                      {
                        if (v44 + 5 > v45)
                        {
                          goto LABEL_95;
                        }

                        LODWORD(v46) = *(v46 + v49);
                        *(v22 + 260) = v44 + 5;
                        v51 = v44 + 8;
                        if (v51 > v45)
                        {
                          goto LABEL_95;
                        }
                      }

                      else
                      {
                        if (v44 + 9 > v45)
                        {
                          goto LABEL_95;
                        }

                        v46 = *(v46 + v49);
                        v51 = v44 + 9;
                      }
                    }

                    else
                    {
                      v52 = v44 + 5;
                      if (v50 == 4)
                      {
                        if (v52 > v45)
                        {
                          goto LABEL_95;
                        }

                        LODWORD(v46) = *(v46 + v49);
                        *(v22 + 260) = v44 + 5;
                        if (v44 + 5 >= v45)
                        {
                          goto LABEL_95;
                        }

                        v51 = v44 + 6;
                      }

                      else
                      {
                        if (v52 > v45)
                        {
                          goto LABEL_95;
                        }

                        LODWORD(v46) = *(v46 + v49);
                        v53 = (v44 + 5);
                        *(v22 + 260) = v53;
                        if (v53 + 2 > v45)
                        {
                          goto LABEL_95;
                        }

                        v51 = v44 + 7;
                      }
                    }
                  }

                  else if (v50 > 1)
                  {
                    if (v50 == 2)
                    {
                      v51 = v44 + 4;
                      if (v51 > v45)
                      {
                        goto LABEL_95;
                      }

                      LODWORD(v46) = *(v46 + v49) | (*(v46 + v49 + 2) << 16);
                    }

                    else
                    {
                      if (v44 + 5 > v45)
                      {
                        goto LABEL_95;
                      }

                      LODWORD(v46) = *(v46 + v49);
                      v51 = v44 + 5;
                    }
                  }

                  else if (v50)
                  {
                    if (v44 + 3 > v45)
                    {
                      goto LABEL_95;
                    }

                    LODWORD(v46) = *(v46 + v49);
                    v51 = v44 + 3;
                  }

                  else
                  {
                    if (v49 >= v45)
                    {
                      goto LABEL_95;
                    }

                    LODWORD(v46) = *(v46 + v49);
                    v51 = v44 + 2;
                  }

                  *(v22 + 260) = v51;
                  v54 = -256 << (8 * v50);
                  if (v47)
                  {
                    v55 = v54;
                  }

                  else
                  {
                    v55 = 0;
                  }

                  LODWORD(v48) = v46 | v55;
                }

                *&v16[v42] = v48;
                v42 += 4;
                if (v43 == v42)
                {
                  goto LABEL_93;
                }
              }
            }

            break;
          case 9:
            if (ScalarCount)
            {
              v21 = 0;
              v22 = *(a1 + 32);
              v23 = 4 * v20;
              while (1)
              {
                v24 = *(v22 + 260);
                if (v24 >= *(v22 + 256))
                {
                  goto LABEL_95;
                }

                v25 = *(*(v22 + 248) + v24);
                *(v22 + 260) = v24 + 1;
                *&v16[v21] = v25 != 0;
                v21 += 4;
                if (v23 == v21)
                {
                  goto LABEL_93;
                }
              }
            }

            break;
          default:
            goto LABEL_96;
        }
      }

LABEL_93:
      ++v15;
      v16 += 16;
    }

    while (v15 != v17);
  }

  return MutableValue;
}

@end