uint64_t re::ConsensusReader::read(re::OPackReader **a1, void *a2)
{
  v4 = *a1;
  result = re::OPackReader::next(*a1, a2);
  if (result)
  {
    if (*(v4 + 196) == 13)
    {
      v8 = re::OPackReader::next(*a1, v6);
      result = 1;
      if (v8)
      {
        while (1)
        {
          v9 = *a1;
          if (*(*a1 + 184) == 5)
          {
            break;
          }

          if (*(v9 + 196) != 6)
          {
            return 0;
          }

          if (*(v9 + 224) == 1)
          {
            result = re::OPackReader::next(*a1, v7);
            if (!result)
            {
              return result;
            }

            if (*(v9 + 196) != 12)
            {
              return 0;
            }

            if (re::OPackReader::next(*a1, v14))
            {
              do
              {
                v15 = *a1;
                if (*(*a1 + 184) == 3)
                {
                  break;
                }

                v18 = 0;
                *(v15 + 2) = 1;
                if (re::OPackReader::next(v15, v11) && *(v15 + 196) == 6)
                {
                  v18 = *(v15 + 28);
                }

                re::DynamicArray<re::TransitionCondition *>::add((a2 + 5), &v18);
              }

              while ((re::OPackReader::next(*a1, v16) & 1) != 0);
            }
          }

          else
          {
            if (*(v9 + 224))
            {
              return 0;
            }

            result = re::OPackReader::next(*a1, v7);
            if (!result)
            {
              return result;
            }

            if (*(v9 + 196) != 12)
            {
              return 0;
            }

            if (re::OPackReader::next(*a1, v10))
            {
              do
              {
                v12 = *a1;
                if (*(*a1 + 184) == 3)
                {
                  break;
                }

                *(v12 + 2) = 1;
                v18 = 0;
                if (re::OPackReader::next(v12, v11))
                {
                  if (*(v12 + 196) == 6)
                  {
                    v18 = *(v12 + 28);
                  }
                }

                re::DynamicArray<re::TransitionCondition *>::add(a2, &v18);
              }

              while ((re::OPackReader::next(*a1, v13) & 1) != 0);
            }
          }

          v17 = re::OPackReader::next(*a1, v11);
          result = 1;
          if ((v17 & 1) == 0)
          {
            return result;
          }
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::ConsensusWriter::write(re::zerocopy ***this, const re::Message *a2)
{
  v4 = *this;
  v42 = -19;
  re::zerocopy::writeAll(*v4, &v42, 1);
  v5 = *this;
  v43 = 8;
  re::zerocopy::writeAll(*v5, &v43, 1);
  re::ConsensusWriter::write(this, a2, v6, v7);
  v8 = *this;
  v44 = 9;
  re::zerocopy::writeAll(*v8, &v44, 1);
  re::OPackWriter::writeData(*this, *(a2 + 9), *(a2 + 7), v9);
  v10 = *this;
  v45 = 10;
  re::zerocopy::writeAll(*v10, &v45, 1);
  re::ConsensusWriter::write(this, (a2 + 80));
  v11 = *this;
  v46 = 11;
  re::zerocopy::writeAll(*v11, &v46, 1);
  re::OPackWriter::writeInteger(*this, *(a2 + 304), v12, v13);
  v14 = *this;
  v47 = 12;
  re::zerocopy::writeAll(*v14, &v47, 1);
  re::OPackWriter::writeInteger(*this, *(a2 + 39), v15, v16);
  v17 = *this;
  v48 = 13;
  re::zerocopy::writeAll(*v17, &v48, 1);
  re::OPackWriter::writeInteger(*this, *(a2 + 40), v18, v19);
  v20 = *this;
  v49 = 14;
  re::zerocopy::writeAll(*v20, &v49, 1);
  re::OPackWriter::writeInteger(*this, *(a2 + 41), v21, v22);
  v23 = *this;
  v50 = 15;
  re::zerocopy::writeAll(*v23, &v50, 1);
  re::OPackWriter::writeInteger(*this, *(a2 + 42), v24, v25);
  v26 = *this;
  v51 = 16;
  re::zerocopy::writeAll(*v26, &v51, 1);
  re::OPackWriter::writeInteger(*this, *(a2 + 43), v27, v28);
  v29 = *this;
  v52 = 17;
  re::zerocopy::writeAll(*v29, &v52, 1);
  re::OPackWriter::writeInteger(*this, *(a2 + 44), v30, v31);
  v32 = *this;
  v53 = 18;
  re::zerocopy::writeAll(*v32, &v53, 1);
  re::OPackWriter::writeInteger(*this, *(a2 + 45), v33, v34);
  v35 = *this;
  v54 = 19;
  re::zerocopy::writeAll(*v35, &v54, 1);
  re::OPackWriter::writeInteger(*this, *(a2 + 46), v36, v37);
  v38 = *this;
  v55 = 20;
  re::zerocopy::writeAll(*v38, &v55, 1);
  v39 = *this;
  if (*(a2 + 376))
  {
    v40 = 1;
  }

  else
  {
    v40 = 2;
  }

  v56 = v40;
  return re::zerocopy::writeAll(*v39, &v56, 1);
}

uint64_t re::ConsensusWriter::write(re::zerocopy ***this, const re::Snapshot *a2)
{
  v4 = *this;
  v9 = -30;
  re::zerocopy::writeAll(*v4, &v9, 1);
  v5 = *this;
  v10 = 8;
  re::zerocopy::writeAll(*v5, &v10, 1);
  re::OPackWriter::writeData(*this, *(a2 + 4), *(a2 + 2), v6);
  v7 = *this;
  v11 = 9;
  re::zerocopy::writeAll(*v7, &v11, 1);

  return re::ConsensusWriter::write(this, a2 + 5);
}

uint64_t re::ConsensusReader::read(re::OPackReader **this, re::Message *a2)
{
  v4 = *this;
  result = re::OPackReader::next(*this, a2);
  if (result)
  {
    if (*(v4 + 196) == 13)
    {
      v8 = re::OPackReader::next(*this, v6);
      result = 1;
      if (v8)
      {
        while (1)
        {
          v9 = *this;
          if (*(*this + 184) == 5)
          {
            return 1;
          }

          if (*(v9 + 196) != 6)
          {
            return 0;
          }

          switch(*(v9 + 224))
          {
            case 0:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 12)
              {
                return 0;
              }

              if (!re::OPackReader::next(*this, v10))
              {
                goto LABEL_118;
              }

              do
              {
                if (*(*this + 184) == 3)
                {
                  break;
                }

                v42 = 0;
                v40 = 0u;
                v41 = 0u;
                v38 = 0u;
                v39 = 0u;
                memset(v37, 0, sizeof(v37));
                v13 = re::DynamicArray<re::Entry>::add(a2, v37);
                if (*(&v38 + 1))
                {
                  v12 = *(&v40 + 1);
                  if (*(&v40 + 1))
                  {
                    (*(**(&v38 + 1) + 40))(v13);
                  }

                  *(&v40 + 1) = 0;
                  v39 = 0uLL;
                  *(&v38 + 1) = 0;
                  LODWORD(v40) = v40 + 1;
                }

                if (v37[0].n128_u64[0])
                {
                  v12 = v38;
                  if (v38)
                  {
                    (*(*v37[0].n128_u64[0] + 40))(v13);
                  }
                }

                v14 = *this;
                *(v14 + 2) = 1;
                v15 = *(a2 + 4);
                v16 = *(a2 + 2);
                result = re::OPackReader::next(v14, v12);
                if (!result)
                {
                  return result;
                }

                if (*(v14 + 196) != 13)
                {
                  return 0;
                }

                if (re::OPackReader::next(*this, v17))
                {
                  v19 = v15 + 104 * v16;
                  do
                  {
                    v20 = *this;
                    if (*(*this + 184) == 5)
                    {
                      break;
                    }

                    if (*(v20 + 196) != 6)
                    {
                      return 0;
                    }

                    result = 0;
                    v21 = *(v20 + 224);
                    if (v21 <= 1)
                    {
                      if (*(v20 + 224))
                      {
                        if (v21 != 1)
                        {
                          return result;
                        }

                        result = re::OPackReader::next(*this, v18);
                        if (!result)
                        {
                          return result;
                        }

                        if (*(v20 + 196) != 11)
                        {
                          return 0;
                        }

                        re::DynamicArray<BOOL>::resize(v19 - 64, *(*this + 27));
                        v23 = *(*this + 26);
                        v24 = *(*this + 27);
                        v25 = (v19 - 64);
                      }

                      else
                      {
                        result = re::OPackReader::next(*this, v18);
                        if (!result)
                        {
                          return result;
                        }

                        if (*(v20 + 196) != 11)
                        {
                          return 0;
                        }

                        re::DynamicArray<BOOL>::resize(v19 - 104, *(*this + 27));
                        v23 = *(*this + 26);
                        v24 = *(*this + 27);
                        v25 = (v19 - 104);
                      }

                      re::DynamicArray<REFrameAnalysisBottleneck>::copy(v25, 0, v23, v24);
                    }

                    else
                    {
                      switch(v21)
                      {
                        case 2u:
                          result = re::OPackReader::next(*this, v18);
                          if (!result)
                          {
                            return result;
                          }

                          if (*(v20 + 196) != 6)
                          {
                            return 0;
                          }

                          *(v19 - 24) = *(v20 + 28);
                          break;
                        case 3u:
                          result = re::OPackReader::next(*this, v18);
                          if (!result)
                          {
                            return result;
                          }

                          if (*(v20 + 196) != 6)
                          {
                            return 0;
                          }

                          *(v19 - 16) = *(v20 + 28);
                          break;
                        case 4u:
                          result = re::OPackReader::next(*this, v18);
                          if (!result)
                          {
                            return result;
                          }

                          if (*(v20 + 196) != 6)
                          {
                            return 0;
                          }

                          *(v19 - 8) = *(v20 + 28);
                          break;
                        default:
                          return result;
                      }
                    }
                  }

                  while ((re::OPackReader::next(*this, v22) & 1) != 0);
                }
              }

              while ((re::OPackReader::next(*this, v18) & 1) != 0);
              goto LABEL_118;
            case 1:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 11)
              {
                return 0;
              }

              re::DynamicArray<BOOL>::resize(a2 + 40, *(*this + 27));
              re::DynamicArray<REFrameAnalysisBottleneck>::copy((a2 + 40), 0, *(*this + 26), *(*this + 27));
              goto LABEL_118;
            case 2:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 13)
              {
                return 0;
              }

              if (!re::OPackReader::next(*this, v26))
              {
                goto LABEL_118;
              }

              break;
            case 3:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 304) = *(v9 + 28);
              goto LABEL_118;
            case 4:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 39) = *(v9 + 28);
              goto LABEL_118;
            case 5:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 40) = *(v9 + 28);
              goto LABEL_118;
            case 6:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 41) = *(v9 + 28);
              goto LABEL_118;
            case 7:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 42) = *(v9 + 28);
              goto LABEL_118;
            case 8:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 43) = *(v9 + 28);
              goto LABEL_118;
            case 9:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 44) = *(v9 + 28);
              goto LABEL_118;
            case 0xA:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 45) = *(v9 + 28);
              goto LABEL_118;
            case 0xB:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 46) = *(v9 + 28);
              goto LABEL_118;
            case 0xC:
              result = re::OPackReader::next(*this, v7);
              if (!result)
              {
                return result;
              }

              if (*(v9 + 196) != 2)
              {
                return 0;
              }

              *(a2 + 376) = *(*this + 224);
              goto LABEL_118;
            default:
              return 0;
          }

          do
          {
            v27 = *this;
            if (*(*this + 184) == 5)
            {
              break;
            }

            if (*(v27 + 196) != 6)
            {
              return 0;
            }

            if (*(v27 + 224) == 1)
            {
              result = re::OPackReader::next(*this, v11);
              if (!result)
              {
                return result;
              }

              if (*(v27 + 196) != 13)
              {
                return 0;
              }

              if (re::OPackReader::next(*this, v29))
              {
                do
                {
                  v30 = *this;
                  if (*(*this + 184) == 5)
                  {
                    break;
                  }

                  if (*(v30 + 196) != 6)
                  {
                    return 0;
                  }

                  result = 0;
                  v31 = *(v30 + 224);
                  if (v31 <= 1)
                  {
                    if (*(v30 + 224))
                    {
                      if (v31 != 1)
                      {
                        return result;
                      }

                      v35 = a2 + 200;
                    }

                    else
                    {
                      v35 = a2 + 120;
                    }

                    if ((re::ConsensusReader::read(this, v35) & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    switch(v31)
                    {
                      case 2u:
                        result = re::OPackReader::next(*this, v28);
                        if (!result)
                        {
                          return result;
                        }

                        v33 = *(v30 + 196);
                        v34 = a2 + 280;
                        break;
                      case 3u:
                        result = re::OPackReader::next(*this, v28);
                        if (!result)
                        {
                          return result;
                        }

                        v33 = *(v30 + 196);
                        v34 = a2 + 288;
                        break;
                      case 4u:
                        result = re::OPackReader::next(*this, v28);
                        if (!result)
                        {
                          return result;
                        }

                        v33 = *(v30 + 196);
                        v34 = a2 + 296;
                        break;
                      default:
                        return result;
                    }

                    if (v33 != 6)
                    {
                      return 0;
                    }

                    *v34 = *(v30 + 28);
                  }
                }

                while ((re::OPackReader::next(*this, v32) & 1) != 0);
              }
            }

            else
            {
              if (*(v27 + 224))
              {
                return 0;
              }

              result = re::OPackReader::next(*this, v11);
              if (!result)
              {
                return result;
              }

              if (*(v27 + 196) != 11)
              {
                return 0;
              }

              re::DynamicArray<BOOL>::resize(a2 + 80, *(*this + 27));
              re::DynamicArray<REFrameAnalysisBottleneck>::copy((a2 + 80), 0, *(*this + 26), *(*this + 27));
            }
          }

          while ((re::OPackReader::next(*this, v28) & 1) != 0);
LABEL_118:
          v36 = re::OPackReader::next(*this, v11);
          result = 1;
          if ((v36 & 1) == 0)
          {
            return result;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::ConsensusReader::read(re::OPackReader **a1, uint64_t a2)
{
  v4 = *a1;
  result = re::OPackReader::next(*a1, a2);
  if (result)
  {
    if (*(v4 + 196) == 13)
    {
      if (re::OPackReader::next(*a1, v6))
      {
        while (1)
        {
          v8 = *a1;
          if (*(*a1 + 184) == 5)
          {
            break;
          }

          if (*(v8 + 196) != 6)
          {
            return 0;
          }

          result = 0;
          v9 = *(v8 + 224);
          if (v9 <= 2)
          {
            if (*(v8 + 224))
            {
              if (v9 == 1)
              {
                if ((re::ConsensusReader::read(a1, (a2 + 40)) & 1) == 0)
                {
                  return 0;
                }
              }

              else
              {
                if (v9 != 2)
                {
                  return result;
                }

                result = re::OPackReader::next(*a1, v7);
                if (!result)
                {
                  return result;
                }

                if (*(v8 + 196) != 6)
                {
                  return 0;
                }

                *(a2 + 120) = *(v8 + 28);
              }
            }

            else
            {
              result = re::OPackReader::next(*a1, v7);
              if (!result)
              {
                return result;
              }

              if (*(v8 + 196) != 11)
              {
                return 0;
              }

              re::DynamicArray<BOOL>::resize(a2, *(*a1 + 27));
              re::DynamicArray<REFrameAnalysisBottleneck>::copy(a2, 0, *(*a1 + 26), *(*a1 + 27));
            }
          }

          else if (*(v8 + 224) > 4u)
          {
            if (v9 == 5)
            {
              result = re::OPackReader::next(*a1, v7);
              if (!result)
              {
                return result;
              }

              if (*(v8 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 144) = *(v8 + 28);
            }

            else
            {
              if (v9 != 6)
              {
                return result;
              }

              result = re::OPackReader::next(*a1, v7);
              if (!result)
              {
                return result;
              }

              if (*(v8 + 196) != 2)
              {
                return 0;
              }

              *(a2 + 152) = *(*a1 + 224);
            }
          }

          else if (v9 == 3)
          {
            result = re::OPackReader::next(*a1, v7);
            if (!result)
            {
              return result;
            }

            if (*(v8 + 196) != 6)
            {
              return 0;
            }

            *(a2 + 128) = *(v8 + 28);
          }

          else
          {
            if (v9 != 4)
            {
              return result;
            }

            result = re::OPackReader::next(*a1, v7);
            if (!result)
            {
              return result;
            }

            if (*(v8 + 196) != 6)
            {
              return 0;
            }

            *(a2 + 136) = *(v8 + 28);
          }

          v11 = re::OPackReader::next(*a1, v10);
          result = 1;
          if ((v11 & 1) == 0)
          {
            return result;
          }
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::Generic6DOFConstraint::Generic6DOFConstraint(uint64_t a1, uint64_t a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  v4 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = &str_67;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *a1 = &unk_1F5D0CC80;
  __asm { FMOV            V0.2S, #1.0 }

  v10 = -_D0;
  *(a1 + 56) = v10;
  *(a1 + 64) = v10;
  *(a1 + 72) = v10;
  *(a1 + 80) = v10;
  *(a1 + 88) = v10;
  *(a1 + 96) = v10;
  do
  {
    v11 = a1 + v4;
    *(v11 + 128) = 0;
    *(v11 + 136) = 0;
    *(v11 + 132) = 0;
    v4 += 16;
  }

  while (v4 != 48);
  for (i = 0; i != 48; i += 16)
  {
    v13 = a1 + i;
    *(v13 + 176) = 0;
    *(v13 + 184) = 0;
    *(v13 + 180) = 0;
  }

  for (j = 0; j != 60; j += 20)
  {
    v15 = a1 + j;
    *(v15 + 224) = 0;
    *(v15 + 240) = 0;
    *(v15 + 228) = 0;
    *(v15 + 236) = 0;
  }

  for (k = 0; k != 60; k += 20)
  {
    v17 = a1 + k;
    *(v17 + 284) = 0;
    *(v17 + 300) = 0;
    *(v17 + 288) = 0;
    *(v17 + 296) = 0;
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  return a1;
}

uint64_t re::Generic6DOFConstraint::setLinearLimit(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 3, v3, v4);
    result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v7, v8);
    __break(1u);
  }

  else
  {
    *(a1 + 8 * a2 + 56) = *a3;
    v5 = *(*a1 + 56);

    return v5();
  }

  return result;
}

uint64_t re::Generic6DOFConstraint::setAngularLimit(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 3, v3, v4);
    result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v7, v8);
    __break(1u);
  }

  else
  {
    *(a1 + 8 * a2 + 80) = *a3;
    v5 = *(*a1 + 56);

    return v5();
  }

  return result;
}

uint64_t re::Generic6DOFConstraint::setLinearRestitution(uint64_t a1, uint64_t a2, float a3)
{
  if (a2 >= 3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 3, v3, v4);
    result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v7, v8);
    __break(1u);
  }

  else
  {
    *(a1 + 4 * a2 + 104) = a3;
    v5 = *(*a1 + 64);

    return v5();
  }

  return result;
}

uint64_t re::Generic6DOFConstraint::setAngularRestitution(uint64_t a1, uint64_t a2, float a3)
{
  if (a2 >= 3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 3, v3, v4);
    result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v7, v8);
    __break(1u);
  }

  else
  {
    *(a1 + 4 * a2 + 116) = a3;
    v5 = *(*a1 + 64);

    return v5();
  }

  return result;
}

uint64_t re::Generic6DOFConstraint::setLinearSpring(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (a2 >= 3)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 3, v3, v4);
    result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v7, v8);
    __break(1u);
  }

  else
  {
    *(a1 + 16 * a2 + 128) = *a3;
    v5 = *(*a1 + 72);

    return v5();
  }

  return result;
}

uint64_t re::Generic6DOFConstraint::setAngularSpring(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (a2 >= 3)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 3, v3, v4);
    result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v7, v8);
    __break(1u);
  }

  else
  {
    *(a1 + 16 * a2 + 176) = *a3;
    v5 = *(*a1 + 72);

    return v5();
  }

  return result;
}

uint64_t re::Generic6DOFConstraint::setLinearMotor(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a2 >= 3)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 3, v3, v4);
    result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
  }

  else
  {
    v5 = a1 + 20 * a2;
    v6 = *a3;
    *(v5 + 240) = *(a3 + 4);
    *(v5 + 224) = v6;
    v7 = *(*a1 + 80);

    return v7();
  }

  return result;
}

uint64_t re::Generic6DOFConstraint::setAngularMotor(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a2 >= 3)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 3, v3, v4);
    result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
  }

  else
  {
    v5 = a1 + 20 * a2;
    v6 = *a3;
    *(v5 + 300) = *(a3 + 4);
    *(v5 + 284) = v6;
    v7 = *(*a1 + 80);

    return v7();
  }

  return result;
}

double re::HingeJoint::HingeJoint(uint64_t a1, uint64_t a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = 0;
  *(a1 + 32) = &str_67;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *a1 = &unk_1F5D0CD00;
  __asm { FMOV            V0.2S, #1.0 }

  result = -_D0;
  *(a1 + 56) = result;
  return result;
}

uint64_t re::HingeJoint::setAngularLimit(uint64_t a1, double a2, float a3)
{
  *(a1 + 56) = LODWORD(a2);
  *(a1 + 60) = a3;
  if (*&a2 <= a3)
  {
    *(&a2 + 1) = a3;
    v3 = vdup_n_s32(0x40C90FDBu);
    v4 = vbsl_s8(vcgt_f32(*&a2, v3), v3, *&a2);
    v5 = vdup_n_s32(0xC0C90FDB);
    *(a1 + 56) = vbsl_s8(vcgt_f32(v5, v4), v5, v4);
  }

  return (*(*a1 + 56))();
}

uint64_t re::Gravity::didEnable(float32x4_t *this)
{
  result = this->i64[1];
  if (result)
  {
    v3.i64[0] = (*(*result + 72))(result);
    v3.i64[1] = v4;
    v5 = vaddq_f32(this[2], v3);
    return (*(*this->i64[1] + 80))(this->i64[1], &v5);
  }

  return result;
}

uint64_t re::Gravity::didDisable(float32x4_t *this)
{
  result = this->i64[1];
  if (result)
  {
    v3.i64[0] = (*(*result + 72))(result);
    v3.i64[1] = v4;
    v5 = vsubq_f32(v3, this[2]);
    return (*(*this->i64[1] + 80))(this->i64[1], &v5);
  }

  return result;
}

uint64_t re::Gravity::didAddToSimulation(uint64_t this)
{
  if (*(this + 16) == 1)
  {
    v7 = v1;
    v8 = v2;
    v3 = this;
    v4.i64[0] = (*(**(this + 8) + 72))(*(this + 8));
    v4.i64[1] = v5;
    v6 = vaddq_f32(*(v3 + 32), v4);
    return (*(**(v3 + 8) + 80))(*(v3 + 8), &v6);
  }

  return this;
}

uint64_t re::Gravity::willRemoveFromSimulation(uint64_t this)
{
  if (*(this + 16) == 1)
  {
    v7 = v1;
    v8 = v2;
    v3 = this;
    v4.i64[0] = (*(**(this + 8) + 72))(*(this + 8));
    v4.i64[1] = v5;
    v6 = vsubq_f32(v4, *(v3 + 32));
    return (*(**(v3 + 8) + 80))(*(v3 + 8), &v6);
  }

  return this;
}

float32x4_t *re::Gravity::setAcceleration(float32x4_t *result, float32x4_t *a2)
{
  v4 = result[2];
  result[2] = *a2;
  if (result[1].i8[0] == 1)
  {
    v10 = v2;
    v11 = v3;
    v5 = result;
    result = result->i64[1];
    if (result)
    {
      v8 = v4;
      v6.i64[0] = (*(result->i64[0] + 72))(result);
      v6.i64[1] = v7;
      v9 = vaddq_f32(*(v5 + 32), vsubq_f32(v6, v8));
      return (*(**(v5 + 8) + 80))(*(v5 + 8), &v9);
    }
  }

  return result;
}

re::PhysXFixedJoint *re::PhysXFixedJoint::PhysXFixedJoint(re::PhysXFixedJoint *this, physx::PxFixedJoint *a2, uint64_t a3)
{
  *this = &unk_1F5D0CDC8;
  v6 = this + 56;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *(this + 4) = &str_67;
  *(this + 5) = v6;
  *this = &unk_1F5D0CDC8;
  *(this + 6) = 0;
  *(this + 7) = &unk_1F5D0DBF8;
  *(this + 8) = a2;
  *(a2 + 2) = this;
  (*(*a2 + 128))(a2, 16, 1);
  (*(**(this + 8) + 128))(*(this + 8), 8, a3);
  return this;
}

void re::PhysXFixedJoint::~PhysXFixedJoint(re::PhysXFixedJoint *this)
{
  *this = &unk_1F5D0CDC8;
  v2 = *(this + 8);
  if (v2)
  {
    (**v2)(v2);
  }

  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D0CDC8;
  v2 = *(this + 8);
  if (v2)
  {
    (**v2)(v2);
  }

  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::PhysXSliderJoint::PhysXSliderJoint(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F5D0CE40;
  v8 = re::SliderJoint::SliderJoint(a1, a1 + 64);
  *v9 = &unk_1F5D0CE40;
  v9[8] = &unk_1F5D0DBF8;
  v9[9] = a2;
  a2[2] = v9;
  (*(*a2 + 128))(a2, 16, 1, v8);
  (*(**(a1 + 72) + 128))(*(a1 + 72), 8, a4);
  *(a1 + 80) = a3;
  return a1;
}

uint64_t re::PhysXSliderJoint::updateLimits(re::PhysXSliderJoint *this)
{
  v2 = *(this + 9);
  result = (*(*v2 + 280))(v2, 2, *(this + 14) <= *(this + 15));
  v5 = *(this + 14);
  v4 = *(this + 15);
  if (v5 <= v4)
  {
    v6 = *(this + 10);
    v9[0] = 0;
    v9[1] = 0;
    v11 = v4;
    v12 = v5;
    v7 = *v6;
    v8 = (v5 * -0.49) + (v4 * 0.49);
    if ((*v6 * 0.01) < v8)
    {
      v8 = *v6 * 0.01;
    }

    v10 = v8;
    *(v9 + 1) = v7 + v7;
    return (*(*v2 + 256))(v2, v9);
  }

  return result;
}

void re::PhysXSliderJoint::~PhysXSliderJoint(re::PhysXSliderJoint *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    (**v2)(v2);
  }

  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  v2 = *(this + 9);
  if (v2)
  {
    (**v2)(v2);
  }

  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::PhysicsJointCollection::~PhysicsJointCollection(uint64_t this)
{
  v1 = this;
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 32))
  {
    v2 = *re::physicsLogObjects(this);
    this = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (this)
    {
      v3 = *(v1 + 32);
      v6 = 67109120;
      v7 = v3;
      _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "~PhysicsJointCollection(): %d joints left in the collection", &v6, 8u);
    }
  }

  if (*(v1 + 84))
  {
    v4 = *re::physicsLogObjects(this);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v1 + 84);
      v6 = 67109120;
      v7 = v5;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "~PhysicsJointCollection(): %d deferred to be deleted joints left in the collection", &v6, 8u);
    }
  }

  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v1 + 56));
  re::DynamicArray<unsigned long>::deinit(v1 + 16);
}

void re::PhysicsJointCollection::~PhysicsJointCollection(re::PhysicsJointCollection *this)
{
  re::PhysicsJointCollection::~PhysicsJointCollection(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::PhysicsJointCollection::operator[](uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 797;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 48) + 8 * a2);
}

void re::PhysicsJointCollection::add(re::PhysicsJointCollection *this, re::Constraint *a2)
{
  v9 = a2;
  re::DynamicArray<re::TransitionCondition *>::add((this + 16), &v9);
  v3 = v9;
  *(v9 + 6) = *(this + 1);
  v4 = physx::shdfnd::g_isLockingEnabled;
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
  {
    physx::shdfnd::g_isLockingEnabled = 0;
  }

  v5 = physx::shdfnd::g_alwaysUseLocking | v4;
  (*(**(v3 + 5) + 64))(*(v3 + 5));
  v6 = (*(**(v9 + 5) + 16))(*(v9 + 5));
  if (v6)
  {
    re::RigidBody::setAttachedJointCount(v6, *(v6 + 77) + 1);
  }

  v7 = v5 & 1;
  v8 = (*(**(v9 + 5) + 24))(*(v9 + 5));
  if (v8)
  {
    re::RigidBody::setAttachedJointCount(v8, *(v8 + 77) + 1);
  }

  if (physx::shdfnd::g_isLockingEnabled != v7)
  {
    physx::shdfnd::g_isLockingEnabled = v7;
  }
}

void re::PhysicsJointCollection::deleteJoint(uint64_t this, re::Constraint *a2, int a3)
{
  v22 = a2;
  if (a2)
  {
    if (a3)
    {
      re::DynamicArray<unsigned long long>::remove(this + 16, &v22);
      v4 = v22;
      v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) >> 27));
      v6 = v5 ^ (v5 >> 31);
      v7 = *(this + 80);
      if (v7)
      {
        v8 = v6 % v7;
        v9 = *(*(this + 64) + 4 * (v6 % v7));
        if (v9 != 0x7FFFFFFF)
        {
          v10 = *(this + 72);
          if (*(v10 + 24 * v9 + 16) == v22)
          {
            return;
          }

          while (1)
          {
            LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
            if (v9 == 0x7FFFFFFF)
            {
              break;
            }

            if (*(v10 + 24 * v9 + 16) == v22)
            {
              return;
            }
          }
        }
      }

      else
      {
        LODWORD(v8) = 0;
      }

      v18 = *(this + 92);
      if (v18 == 0x7FFFFFFF)
      {
        v18 = *(this + 88);
        v19 = v18;
        if (v18 == v7)
        {
          re::HashSetBase<re::Constraint *,re::Constraint *,re::internal::ValueAsKey<re::Constraint *>,re::Hash<re::Constraint *>,re::EqualTo<re::Constraint *>,true,false>::setCapacity((this + 56), (2 * *(this + 84)));
          LODWORD(v8) = v6 % *(this + 80);
          v19 = *(this + 88);
          v4 = v22;
        }

        *(this + 88) = v19 + 1;
        v20 = *(this + 72);
        v21 = *(v20 + 24 * v18 + 8);
      }

      else
      {
        v20 = *(this + 72);
        v21 = *(v20 + 24 * v18 + 8);
        *(this + 92) = v21 & 0x7FFFFFFF;
      }

      *(v20 + 24 * v18 + 8) = v21 | 0x80000000;
      *(*(this + 72) + 24 * v18 + 8) = *(*(this + 72) + 24 * v18 + 8) & 0x80000000 | *(*(this + 64) + 4 * v8);
      *(*(this + 72) + 24 * v18) = v6;
      *(*(this + 72) + 24 * v18 + 16) = v4;
      *(*(this + 64) + 4 * v8) = v18;
      ++*(this + 84);
      ++*(this + 96);
    }

    else
    {
      if (*(a2 + 6))
      {
        v23 = a2;
        re::DynamicArray<re::Allocator const*>::removeStable((this + 16), &v23);
      }

      v12 = physx::shdfnd::g_isLockingEnabled;
      if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
      {
        physx::shdfnd::g_isLockingEnabled = 0;
      }

      v13 = physx::shdfnd::g_alwaysUseLocking | v12;
      (*(**(a2 + 5) + 72))(*(a2 + 5), *(this + 8));
      v14 = (*(**(a2 + 5) + 16))(*(a2 + 5));
      if (v14)
      {
        re::RigidBody::setAttachedJointCount(v14, *(v14 + 77) - 1);
      }

      v15 = v13 & 1;
      v16 = (*(**(a2 + 5) + 24))(*(a2 + 5));
      if (v16)
      {
        re::RigidBody::setAttachedJointCount(v16, *(v16 + 77) - 1);
      }

      v17 = re::globalAllocators(v16)[2];
      (**a2)(a2);
      (*(*v17 + 40))(v17, a2);
      if (physx::shdfnd::g_isLockingEnabled != v15)
      {
        physx::shdfnd::g_isLockingEnabled = v15;
      }
    }
  }
}

void re::PhysicsJointCollection::deleteDeferredDeletedJoints(re::PhysicsJointCollection *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 9) + 8);
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
        LODWORD(v3) = *(this + 22);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 != v2)
  {
    do
    {
      re::PhysicsJointCollection::deleteJoint(this, *(*(this + 9) + 24 * v3 + 16), 0);
      v6 = *(this + 22);
      if (v6 <= v3 + 1)
      {
        v7 = v3 + 1;
      }

      else
      {
        v7 = *(this + 22);
      }

      while (v7 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(this + 9) + 24 * v3 + 8) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v3) = v7;
LABEL_15:
      ;
    }

    while (v3 != v6);
  }

  re::HashSetBase<re::Constraint *,re::Constraint *,re::internal::ValueAsKey<re::Constraint *>,re::Hash<re::Constraint *>,re::EqualTo<re::Constraint *>,true,false>::clear(this + 56);
}

void re::HashSetBase<re::Constraint *,re::Constraint *,re::internal::ValueAsKey<re::Constraint *>,re::Hash<re::Constraint *>,re::EqualTo<re::Constraint *>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_12, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = *(a1 + 16);
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 24;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v7 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v7;
  }
}

void re::PhysicsJointCollection::deleteJointsReferencingRigidBody(const re::RigidBody *this, const re::RigidBody *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a2 + 77) >= 1 && *(this + 4) >= 1)
  {
    v5 = (*(this + 4) & 0x7FFFFFFFLL) - 1;
    do
    {
      v6 = *(this + 4);
      if (v6 <= v5)
      {
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v10 = MEMORY[0x1E69E9C10];
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

        v20 = 789;
        v21 = 2048;
        v22 = v5;
        v23 = 2048;
        v24 = v6;
        _os_log_send_and_compose_impl(v11, &v16, &v25, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
LABEL_15:
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v12 = MEMORY[0x1E69E9C10];
        v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (v13)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v20 = 789;
        v21 = 2048;
        v22 = v5;
        v23 = 2048;
        v24 = v2;
        _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
      }

      v7 = *(*(this + 6) + 8 * v5);
      if ((*(**(v7 + 5) + 16))(*(v7 + 5)) == a2)
      {
        goto LABEL_8;
      }

      v2 = *(this + 4);
      if (v2 <= v5)
      {
        goto LABEL_15;
      }

      v8 = *(*(*(this + 6) + 8 * v5) + 40);
      if ((*(*v8 + 24))(v8) == a2)
      {
LABEL_8:
        re::PhysicsJointCollection::deleteJoint(this, v7, 0);
      }

      v9 = v5-- + 1;
    }

    while (v9 > 1);
  }
}

void re::HashSetBase<re::Constraint *,re::Constraint *,re::internal::ValueAsKey<re::Constraint *>,re::Hash<re::Constraint *>,re::EqualTo<re::Constraint *>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v22, 0, 36);
      *&v22[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::Constraint *,re::Constraint *,re::internal::ValueAsKey<re::Constraint *>,re::Hash<re::Constraint *>,re::EqualTo<re::Constraint *>,true,false>::init(v22, v4, v2);
      v5 = *a1;
      *a1 = *v22;
      v6 = a1[2];
      v7 = *&v22[8];
      *v22 = v5;
      *&v22[16] = v6;
      *(a1 + 1) = v7;
      v9 = *&v22[24];
      *&v22[24] = *(a1 + 3);
      v8 = *&v22[32];
      *(a1 + 3) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = DWORD1(v9);
        v12 = v7;
        v13 = (v6 + 16);
        do
        {
          if ((*(v13 - 1) & 0x80000000) != 0)
          {
            v14 = *(v13 - 2);
            v15 = *(a1 + 6);
            v16 = v14 % v15;
            v17 = *(a1 + 9);
            if (v17 == 0x7FFFFFFF)
            {
              v17 = *(a1 + 8);
              v18 = v17;
              if (v17 == v15)
              {
                re::HashSetBase<re::Constraint *,re::Constraint *,re::internal::ValueAsKey<re::Constraint *>,re::Hash<re::Constraint *>,re::EqualTo<re::Constraint *>,true,false>::setCapacity(a1, (2 * v11));
                v16 = v14 % *(a1 + 6);
                v18 = *(a1 + 8);
                v12 = a1[1];
              }

              *(a1 + 8) = v18 + 1;
              v19 = a1[2];
              v20 = *(v19 + 24 * v17 + 8);
            }

            else
            {
              v19 = a1[2];
              v20 = *(v19 + 24 * v17 + 8);
              *(a1 + 9) = v20 & 0x7FFFFFFF;
            }

            *(v19 + 24 * v17 + 8) = v20 | 0x80000000;
            *(a1[2] + 24 * v17 + 8) = *(a1[2] + 24 * v17 + 8) & 0x80000000 | *(v12 + 4 * v16);
            *(a1[2] + 24 * v17) = v14;
            *(a1[2] + 24 * v17 + 16) = *v13;
            v12 = a1[1];
            *(v12 + 4 * v16) = v17;
            v11 = *(a1 + 7) + 1;
            *(a1 + 7) = v11;
          }

          v13 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v22);
    }
  }

  else
  {
    if (v2)
    {
      v21 = v2;
    }

    else
    {
      v21 = 3;
    }
  }
}

void re::HashSetBase<re::Constraint *,re::Constraint *,re::internal::ValueAsKey<re::Constraint *>,re::Hash<re::Constraint *>,re::EqualTo<re::Constraint *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_12, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

float re::PhysicsMaterial::createGenericMaterial(re::PhysicsMaterial *this, re::Allocator *a2)
{
  v3 = (*(*a2 + 32))(a2, 24, 8);
  if (v3)
  {
    result = *(this + 4);
    *v3 = &unk_1F5D0CED8;
    *(v3 + 8) = *(this + 1);
    *(v3 + 16) = result;
  }

  return result;
}

void *re::allocInfo_PhysicsMaterial(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BCE40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BCE40))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BCE68, "PhysicsMaterial");
    __cxa_guard_release(&qword_1EE1BCE40);
  }

  return &unk_1EE1BCE68;
}

void re::initInfo_PhysicsMaterial(re *this, re::IntrospectionBase *a2)
{
  v20[0] = 0x6D3D3F22840C60DCLL;
  v20[1] = "PhysicsMaterial";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&_MergedGlobals_490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_490))
  {
    v5 = re::introspectionAllocator();
    v7 = re::introspect_float(1, v6);
    v8 = (*(*v5 + 32))(v5, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "m_restitution";
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0x800000001;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1BCE48 = v8;
    v9 = re::introspectionAllocator();
    v11 = re::introspect_float(1, v10);
    v12 = (*(*v9 + 32))(v9, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "m_staticFriction";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0xC00000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1BCE50 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 5;
    *(v14 + 8) = "m_friction";
    *(v14 + 16) = "m_staticFriction";
    qword_1EE1BCE58 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "m_dynamicFriction";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1BCE60 = v18;
    __cxa_guard_release(&_MergedGlobals_490);
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1BCE48;
  *(this + 9) = re::internal::defaultConstruct<re::PhysicsMaterial>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::PhysicsMaterial>;
  *(this + 13) = re::internal::defaultConstructV2<re::PhysicsMaterial>;
  *(this + 14) = re::internal::defaultDestructV2<re::PhysicsMaterial>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v19 = v21;
}

double re::internal::defaultConstruct<re::PhysicsMaterial>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5D0CED8;
  result = 0.0000305175852;
  *(a3 + 8) = 0x3F0000003DCCCCCDLL;
  *(a3 + 16) = -1082130432;
  return result;
}

double re::internal::defaultConstructV2<re::PhysicsMaterial>(uint64_t a1)
{
  *a1 = &unk_1F5D0CED8;
  result = 0.0000305175852;
  *(a1 + 8) = 0x3F0000003DCCCCCDLL;
  *(a1 + 16) = -1082130432;
  return result;
}

uint64_t *re::physicsLogObjects(re *this)
{
  {
    re::physicsLogObjects(void)::logObjects = os_log_create("com.apple.re", "Physics");
  }

  return &re::physicsLogObjects(void)::logObjects;
}

void *re::LinearSpring::onApply(re::LinearSpring *this)
{
  (*(**(this + 3) + 40))(&v37);
  v2 = *(this + 3);
  v3 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL);
  v4 = vnegq_f32(v38);
  v5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL), v4), v2, v3);
  v6 = vaddq_f32(v5, v5);
  v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), v4), v7, v3);
  v34 = vaddq_f32(v37, vaddq_f32(vaddq_f32(v2, vmulq_laneq_f32(v7, v38, 3)), vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL)));
  v39 = v34;
  result = (*(**(this + 4) + 40))(&v37);
  v10 = *(this + 4);
  v11 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL);
  v12 = vnegq_f32(v38);
  v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), v12), v10, v11);
  v14 = vaddq_f32(v13, v13);
  v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
  v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v12), v15, v11);
  v36 = vaddq_f32(v37, vaddq_f32(vaddq_f32(v10, vmulq_laneq_f32(v15, v38, 3)), vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL)));
  v17 = vsubq_f32(v34, v36);
  v18 = vmulq_f32(v17, v17);
  v18.f32[0] = sqrtf(v18.f32[2] + vaddv_f32(*v18.f32));
  if (v18.f32[0] < 0.000001)
  {
    return result;
  }

  v19 = *(this + 20);
  v20 = v18.f32[0] - v19;
  *(this + 22) = 0;
  if (v18.f32[0] <= v19 || (v21 = *(this + 25), v21 <= 0.000001))
  {
    if (v18.f32[0] >= v19)
    {
      goto LABEL_12;
    }

    v23 = *(this + 24);
    if (v23 <= 0.000001)
    {
      goto LABEL_12;
    }

    v22 = (v19 - v18.f32[0]) / v23;
  }

  else
  {
    v22 = v20 / v21;
  }

  *(this + 22) = v22;
  if (v22 > 1.0)
  {
    if (*(this + 16))
    {
      *(this + 16) = 0;
      return (*(*this + 32))(this);
    }

    return result;
  }

LABEL_12:
  v24 = *(this + 3);
  v25 = *(v24 + 208);
  if (v25 != 2)
  {
    result = *(this + 4);
    if (*(result + 52) != 2)
    {
      return result;
    }

    v26 = 0.0;
    goto LABEL_18;
  }

  v26 = *(v24 + 192);
  result = *(this + 4);
  v27 = *(result + 52);
  if (v27 == 2)
  {
LABEL_18:
    v30 = *(result + 48);
    v29 = v26 + v30;
    if ((v26 + v30) == 0.0)
    {
      return result;
    }

    v31 = v30 == 0.0;
    v28 = v30 / v29;
    v27 = 2;
    if (v31)
    {
      v28 = 1.0;
    }

    goto LABEL_21;
  }

  if (v26 == 0.0)
  {
    return result;
  }

  v28 = 1.0;
  v29 = *(v24 + 192);
LABEL_21:
  v32 = vmulq_n_f32(vdivq_f32(vmulq_n_f32(v17, v20), vdupq_lane_s32(*v18.f32, 0)), -*(this + 21));
  v33 = vmulq_n_f32(v32, v28);
  v37 = v33;
  v33.f32[0] = v26 / v29;
  if (v26 == 0.0)
  {
    v33.f32[0] = 1.0;
  }

  v35 = vmulq_f32(v32, vnegq_f32(vdupq_lane_s32(*v33.f32, 0)));
  if (v25 == 2)
  {
    (*(*v24 + 376))(v24, &v37, &v39, 0);
    result = *(this + 4);
    v27 = *(result + 52);
  }

  if (v27 == 2)
  {
    return (*(*result + 376))(result, &v35, &v36, 0);
  }

  return result;
}

double re::PhysXRigidBody::PhysXRigidBody(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, int a5)
{
  *a1 = &unk_1F5CCDCB0;
  v5 = a4[1];
  *(a1 + 16) = *a4;
  *(a1 + 32) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *a1 = &unk_1F5D0D950;
  *(a1 + 64) = a3;
  *(a1 + 72) = 0;
  v6 = *a4;
  v7 = a4[1];
  v8 = a4[3];
  *(a1 + 112) = a4[2];
  *(a1 + 128) = v8;
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  v9 = *a4;
  v10 = a4[1];
  v11 = a4[3];
  *(a1 + 176) = a4[2];
  *(a1 + 192) = v11;
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 208) = a5;
  *(a1 + 212) = 0x100000006;
  *(a1 + 308) = 0;
  result = 0.0;
  *(a1 + 236) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 252) = 0u;
  *(a1 + 268) = 0u;
  *(a1 + 284) = 0u;
  *(a1 + 297) = 0;
  *a1 = &unk_1F5D0CF80;
  *(a1 + 312) = 0x3B23D70A3F800000;
  *(a1 + 320) = 1;
  *(a1 + 324) = 0x3D4CCCCD3CA3D70ALL;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 432) = a2;
  *(a1 + 440) = 0;
  return result;
}

uint64_t re::PhysXRigidBody::updateUnderlyingRigidBody(uint64_t this, __n128 a2)
{
  v2 = *(*(this + 72) + 24);
  if (v2 && v2[4] == 5)
  {
    v3 = this;
    a2.n128_u32[0] = *(this + 324);
    if (a2.n128_f32[0] < 0.0)
    {
      a2.n128_f32[0] = 0.0;
    }

    (*(*v2 + 280))(*(*(this + 72) + 24), a2);
    v4.n128_f32[0] = v3[82] * 5.0;
    if (v4.n128_f32[0] < 0.0)
    {
      v4.n128_f32[0] = 0.0;
    }

    (*(*v2 + 296))(v2, v4);
    re::PhysXRigidBody::updateSleepThreshold(v3);

    return re::PhysXRigidBody::updateCCDSettings(v3);
  }

  return this;
}

_WORD *re::PhysXRigidBody::updateSleepThreshold(re::PhysXRigidBody *this)
{
  result = *(*(this + 9) + 24);
  if (result && result[4] == 5 && *(this + 320) == 1)
  {
    v3 = *(this + 82);
    if (v3 > *(this + 81))
    {
      v3 = *(this + 81);
    }

    if (v3 > 1.0)
    {
      v3 = 1.0;
    }

    if (v3 < 0.0)
    {
      v3 = 0.0;
    }

    return (*(*result + 520))((*(this + 78) * *(this + 79)) * v3);
  }

  return result;
}

uint64_t re::PhysXRigidBody::updateCCDSettings(uint64_t this)
{
  v1 = *(*(this + 72) + 24);
  if (v1 && v1[4] == 5)
  {
    v2 = *(*v1 + 416);
    if (*(this + 304) == 1)
    {
      v2(*(*(this + 72) + 24), 4, 1);
      v3 = *(*v1 + 440);
      v4.n128_u32[0] = 1041865114;

      return v3(v1, v4);
    }

    else
    {
      v5 = *(*(this + 72) + 24);

      return (v2)(v5, 4, 0);
    }
  }

  return this;
}

uint64_t re::PhysXRigidBody::setCollisionObject(re::PhysXRigidBody *this, re::CollisionObject *a2)
{
  *(this + 9) = a2;
  (*(*this + 432))(this);

  return re::PhysXRigidBody::updateUnderlyingRigidBody(this, v3);
}

void re::PhysXRigidBody::~PhysXRigidBody(re::PhysXRigidBody *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    v3 = *(this + 54);
    (**v2)(*(this + 9));
    (*(*v3 + 40))(v3, v2);
  }

  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 54);
    (**v4)(*(this + 8));
    (*(*v5 + 40))(v5, v4);
  }

  *this = &unk_1F5D0D950;
  *(this + 8) = 0;
  *(this + 9) = 0;
}

{
  re::PhysXRigidBody::~PhysXRigidBody(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RigidBody::shape(re::RigidBody *this)
{
  return *(this + 8);
}

{
  return *(this + 8);
}

uint64_t re::PhysXRigidBody::changeUnderlyingType(re::PhysXRigidBody *this)
{
  v2 = *(*(this + 9) + 24);
  v3 = (*(*v2 + 48))(v2) == 0;
  v4 = (*(*v2 + 152))(v9, v2);
  v6 = re::PhysicsFactory::defaultFactory(v4, v5);
  UnderlyingRigidBody = re::PhysXPhysicsFactory::createUnderlyingRigidBody(v6, re::PhysicsFactory::m_defaultAllocator, v2, this + 36, v3);
  (**v2)(v2);
  (*(**(this + 9) + 40))(*(this + 9), UnderlyingRigidBody);
  (*(**(*(this + 9) + 24) + 160))(*(*(this + 9) + 24), v9, 1);
  return re::PhysXRigidBody::setSolverIterations(this, this + 53);
}

uint64_t re::PhysXRigidBody::setSolverIterations(uint64_t result, unsigned int *a2)
{
  if (*(result + 212) != *a2 || *(result + 216) != a2[1])
  {
    *(result + 212) = *a2;
    result = *(*(result + 72) + 24);
    if (result)
    {
      if (*(result + 8) == 5)
      {
        return (*(*result + 608))(result, *a2, a2[1]);
      }
    }
  }

  return result;
}

__n128 re::PhysXRigidBody::onMotionTypeChanged(__n128 *this, int a2)
{
  v4 = *(this[4].n128_u64[1] + 24);
  if (v4)
  {
    if (*(v4 + 8) == 5)
    {
      v5 = *(this[4].n128_u64[1] + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((a2 - 1) >= 2)
  {
    if (a2)
    {
      return result;
    }

    if (v5)
    {
      re::PhysXRigidBody::changeUnderlyingType(this);
    }
  }

  else
  {
    if (!v5)
    {
      re::PhysXRigidBody::changeUnderlyingType(this);
      v6 = *(this[4].n128_u64[1] + 24);
      if (v6)
      {
        if (*(v6 + 8) == 5)
        {
          v5 = *(this[4].n128_u64[1] + 24);
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    v7 = *(*v5 + 416);
    if (a2 == 2)
    {
      v7(v5, 1, 0);
      (*(*v5 + 320))(v5, this + 21, 1);
      v8.n128_f64[0] = (*(*v5 + 336))(v5, this + 22, 1);
      re::PhysXRigidBody::updateUnderlyingRigidBody(this, v8);
    }

    else
    {
      v7(v5, 4, 0);
      (*(*v5 + 416))(v5, 1, 1);
    }
  }

  this[21].n128_u64[0] = 0;
  this[21].n128_u64[1] = 0;
  result = this[21];
  this[22] = result;
  return result;
}

_WORD *re::PhysXRigidBody::lockTranslationX(re::PhysXRigidBody *this)
{
  result = *(*(this + 9) + 24);
  if (result)
  {
    if (result[4] == 5)
    {
      v5 = v1;
      v6 = v2;
      (*(*result + 552))(&v4);
      return (v4 & 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_WORD *re::PhysXRigidBody::lockTranslationY(re::PhysXRigidBody *this)
{
  result = *(*(this + 9) + 24);
  if (result)
  {
    if (result[4] == 5)
    {
      v5 = v1;
      v6 = v2;
      (*(*result + 552))(&v4);
      return ((v4 >> 1) & 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_WORD *re::PhysXRigidBody::lockTranslationZ(re::PhysXRigidBody *this)
{
  result = *(*(this + 9) + 24);
  if (result)
  {
    if (result[4] == 5)
    {
      v5 = v1;
      v6 = v2;
      (*(*result + 552))(&v4);
      return ((v4 >> 2) & 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

re::PhysXRigidBody *re::PhysXRigidBody::setLockTranslationX(re::PhysXRigidBody *this, uint64_t a2)
{
  v2 = *(*(this + 9) + 24);
  if (v2)
  {
    if (v2[4] == 5)
    {
      v4 = this;
      this = re::PhysXRigidBody::lockTranslationX(this);
      if (this != a2)
      {
        this = (*(*v2 + 560))(v2, 1, a2);
        if ((a2 & 1) == 0)
        {

          return re::PhysXRigidBody::wakeUp(v4);
        }
      }
    }
  }

  return this;
}

void *re::PhysXRigidBody::wakeUp(void *this)
{
  v1 = *(this[9] + 24);
  if (v1 && v1[4] == 5)
  {
    this = (*(*v1 + 432))(&v2, *(this[9] + 24));
    if ((v2 & 1) == 0)
    {
      return (*(*v1 + 592))(v1);
    }
  }

  return this;
}

re::PhysXRigidBody *re::PhysXRigidBody::setLockTranslationY(re::PhysXRigidBody *this, uint64_t a2)
{
  v2 = *(*(this + 9) + 24);
  if (v2)
  {
    if (v2[4] == 5)
    {
      v4 = this;
      this = re::PhysXRigidBody::lockTranslationY(this);
      if (this != a2)
      {
        this = (*(*v2 + 560))(v2, 2, a2);
        if ((a2 & 1) == 0)
        {

          return re::PhysXRigidBody::wakeUp(v4);
        }
      }
    }
  }

  return this;
}

re::PhysXRigidBody *re::PhysXRigidBody::setLockTranslationZ(re::PhysXRigidBody *this, uint64_t a2)
{
  v2 = *(*(this + 9) + 24);
  if (v2)
  {
    if (v2[4] == 5)
    {
      v4 = this;
      this = re::PhysXRigidBody::lockTranslationZ(this);
      if (this != a2)
      {
        this = (*(*v2 + 560))(v2, 4, a2);
        if ((a2 & 1) == 0)
        {

          return re::PhysXRigidBody::wakeUp(v4);
        }
      }
    }
  }

  return this;
}

_WORD *re::PhysXRigidBody::lockRotationX(re::PhysXRigidBody *this)
{
  result = *(*(this + 9) + 24);
  if (result)
  {
    if (result[4] == 5)
    {
      v5 = v1;
      v6 = v2;
      (*(*result + 552))(&v4);
      return ((v4 >> 3) & 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_WORD *re::PhysXRigidBody::lockRotationY(re::PhysXRigidBody *this)
{
  result = *(*(this + 9) + 24);
  if (result)
  {
    if (result[4] == 5)
    {
      v5 = v1;
      v6 = v2;
      (*(*result + 552))(&v4);
      return ((v4 >> 4) & 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_WORD *re::PhysXRigidBody::lockRotationZ(re::PhysXRigidBody *this)
{
  result = *(*(this + 9) + 24);
  if (result)
  {
    if (result[4] == 5)
    {
      v5 = v1;
      v6 = v2;
      (*(*result + 552))(&v4);
      return ((v4 >> 5) & 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

re::PhysXRigidBody *re::PhysXRigidBody::setLockRotationX(re::PhysXRigidBody *this, uint64_t a2)
{
  v2 = *(*(this + 9) + 24);
  if (v2)
  {
    if (v2[4] == 5)
    {
      this = re::PhysXRigidBody::lockRotationX(this);
      if (this != a2)
      {
        v4 = *(*v2 + 560);

        return v4(v2, 8, a2);
      }
    }
  }

  return this;
}

re::PhysXRigidBody *re::PhysXRigidBody::setLockRotationY(re::PhysXRigidBody *this, uint64_t a2)
{
  v2 = *(*(this + 9) + 24);
  if (v2)
  {
    if (v2[4] == 5)
    {
      this = re::PhysXRigidBody::lockRotationY(this);
      if (this != a2)
      {
        v4 = *(*v2 + 560);

        return v4(v2, 16, a2);
      }
    }
  }

  return this;
}

re::PhysXRigidBody *re::PhysXRigidBody::setLockRotationZ(re::PhysXRigidBody *this, uint64_t a2)
{
  v2 = *(*(this + 9) + 24);
  if (v2)
  {
    if (v2[4] == 5)
    {
      this = re::PhysXRigidBody::lockRotationZ(this);
      if (this != a2)
      {
        v4 = *(*v2 + 560);

        return v4(v2, 32, a2);
      }
    }
  }

  return this;
}

uint64_t re::PhysXRigidBody::setPoseInternal(uint64_t a1, float32x4_t *a2)
{
  _Q0 = a2[1];
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = a2[1].i64[1];
  __asm { FMLA            S1, S2, V0.S[2] }

  _S2 = _Q0.i32[3];
  __asm { FMLA            S1, S2, V0.S[3] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v15 = a2->i32[2];
  v18 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
  v19 = a2->i64[0];
  v20 = v15;
  re::PhysXRigidBody::pose(v17, a1);
  *&v11 = v19;
  DWORD2(v11) = v15;
  v16[0] = v11;
  v16[1] = v18;
  result = re::areAlmostEqual<float>(v16, v17);
  v13 = result;
  v14 = *(*(a1 + 72) + 24);
  if (v14 && v14[4] == 5 && (result = (*(*v14 + 432))(v16, v14), (v16[0] & 1) != 0))
  {
    if (!v13 || (result = (*(*v14 + 504))(v14, v16), ((result | v13 ^ 1) & 1) != 0))
    {
      result = (*(*v14 + 496))(v14, &v18);
    }

    *(a1 + 440) = 1;
  }

  else if ((v13 & 1) == 0)
  {
    return (*(**(*(a1 + 72) + 24) + 160))(*(*(a1 + 72) + 24), &v18, 1);
  }

  return result;
}

uint64_t *re::PhysXRigidBody::pose@<X0>(uint64_t *__return_ptr a1@<X8>, re::PhysXRigidBody *this@<X0>)
{
  v3 = *(*(this + 9) + 24);
  if (v3)
  {
    v4 = v3[4] == 5;
  }

  else
  {
    v4 = 0;
  }

  if (v4 && ((*(*v3 + 432))(&v12, *(*(this + 9) + 24)), (v12 & 1) != 0) && (result = (*(*v3 + 504))(v3, &v12), result))
  {
    v7 = v14;
  }

  else
  {
    result = (*(*v3 + 152))(&v9, v3);
    v12 = v9;
    v13 = v10;
    v7 = v11;
  }

  *&v6 = v13;
  DWORD2(v6) = v7;
  v8 = v12;
  *a1 = v6;
  *(a1 + 1) = v8;
  return result;
}

__n128 re::PhysXRigidBody::poseCenterOfMass@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  worldSpaceCenterOfMassPose(v7, *(*(a2 + 72) + 24));
  *&v3 = v7[2];
  DWORD2(v3) = v8;
  v4 = v7[0];
  v5 = v7[1];
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  result.n128_u64[0] = v3;
  result.n128_u32[2] = DWORD2(v3);
  return result;
}

float worldSpaceCenterOfMassPose(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 152))(a2);
  if ((*(*a2 + 40))(a2, "PxRigidBody"))
  {
    (*(*a2 + 224))(&v26, a2);
    _S2 = v27 + v27;
    _S4 = v29 + v29;
    v7 = *(a1 + 12);
    v8 = *(a1 + 16);
    v9 = (v7 * v7) + -0.5;
    v10.i32[0] = *a1;
    _Q7.i64[0] = *(a1 + 4);
    __asm
    {
      FMLA            S16, S4, V7.S[1]
      FMLA            S18, S2, V7.S[1]
      FMLA            S20, S16, V7.S[1]
    }

    v19 = *(a1 + 20) + (((v7 * _S18) + ((v28 + v28) * v9)) + (*_Q7.i32 * _S16));
    v20 = v26;
    v20.i32[3] = _Q7.i32[1];
    v21 = *(a1 + 24) + _S20;
    v22 = ((v7 * (vmuls_lane_f32(v28 + v28, vnegq_f32(v20), 3) + (*_Q7.i32 * (v29 + v29)))) + ((v27 + v27) * v9)) + (*a1 * _S16);
    v23 = vextq_s8(vextq_s8(v10, v10, 4uLL), _Q7, 0xCuLL);
    v23.f32[3] = -*a1;
    v24 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v26, 3), v26, 4uLL), v23), v26, v7);
    v23.f32[3] = -*_Q7.i32;
    _Q7.i32[2] = *a1;
    _Q7.i32[3] = v26.i32[2];
    v25 = vmlsq_f32(vmlaq_f32(vuzp2q_s32(vextq_s8(v24, v24, 4uLL), v24), vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL), v23), _Q7, v20);
    *a1 = vzip2q_s32(vzip1q_s32(v25, vextq_s8(v25, v25, 0xCuLL)), v25);
    result = v8 + v22;
    *(a1 + 16) = v8 + v22;
    *(a1 + 20) = v19;
    *(a1 + 24) = v21;
  }

  return result;
}

uint64_t re::PhysXRigidBody::linearVelocity(re::PhysXRigidBody *this)
{
  v1 = *(*(this + 9) + 24);
  if (!v1 || v1[4] != 5)
  {
    return 0;
  }

  (*(*v1 + 432))(&v5, *(*(this + 9) + 24));
  if ((v5 & 1) == 0)
  {
    (*(*v1 + 312))(&v4, v1);
    return v4;
  }

  if ((*(this + 440) & 1) == 0)
  {
    return *(this + 42);
  }

  else
  {
    return 0;
  }
}

float32x4_t *re::PhysXRigidBody::setLinearVelocity(float32x4_t *result, float32x4_t *a2)
{
  v2 = *(result[4].i64[1] + 24);
  if (v2 && v2[4] == 5)
  {
    v4 = result;
    result = (*(*v2 + 432))(&v10, *(result[4].i64[1] + 24));
    if (v10)
    {
      v4[21] = *a2;
      v7 = vmulq_f32(*a2, *a2);
      if (fabsf(v7.f32[2] + vaddv_f32(*v7.f32)) >= 0.00001)
      {
        v4[27].i8[8] = 0;
      }
    }

    else
    {
      result = (*(*v2 + 312))(&v8, v2);
      v5.i64[0] = v8;
      v5.i32[2] = v9;
      v6 = vmvnq_s8(vceqq_f32(*a2, v5));
      v6.i32[3] = v6.i32[2];
      if ((vmaxvq_u32(v6) & 0x80000000) != 0)
      {
        return (*(*v2 + 320))(v2, a2, 1);
      }
    }
  }

  return result;
}

uint64_t re::PhysXRigidBody::angularVelocity(re::PhysXRigidBody *this)
{
  v1 = *(*(this + 9) + 24);
  if (!v1 || v1[4] != 5)
  {
    return 0;
  }

  (*(*v1 + 432))(&v5, *(*(this + 9) + 24));
  if ((v5 & 1) == 0)
  {
    (*(*v1 + 328))(&v4, v1);
    return v4;
  }

  if ((*(this + 440) & 1) == 0)
  {
    return *(this + 44);
  }

  else
  {
    return 0;
  }
}

float32x4_t *re::PhysXRigidBody::setAngularVelocity(float32x4_t *result, float32x4_t *a2)
{
  v2 = *(result[4].i64[1] + 24);
  if (v2 && v2[4] == 5)
  {
    v4 = result;
    result = (*(*v2 + 432))(&v10, *(result[4].i64[1] + 24));
    if (v10)
    {
      v4[22] = *a2;
      v7 = vmulq_f32(*a2, *a2);
      if (fabsf(v7.f32[2] + vaddv_f32(*v7.f32)) >= 0.00001)
      {
        v4[27].i8[8] = 0;
      }
    }

    else
    {
      result = (*(*v2 + 328))(&v8, v2);
      v5.i64[0] = v8;
      v5.i32[2] = v9;
      v6 = vmvnq_s8(vceqq_f32(*a2, v5));
      v6.i32[3] = v6.i32[2];
      if ((vmaxvq_u32(v6) & 0x80000000) != 0)
      {
        return (*(*v2 + 336))(v2, a2, 1);
      }
    }
  }

  return result;
}

void *re::PhysXRigidBody::applyLinearImpulse(void *result, float32x4_t *a2)
{
  v2 = *(result[9] + 24);
  if (v2)
  {
    if (v2[4] == 5)
    {
      result = (*(*v2 + 432))(&v5, *(result[9] + 24));
      if ((v5 & 1) == 0)
      {
        v4 = vmulq_f32(*a2, *a2);
        if ((v4.f32[2] + vaddv_f32(*v4.f32)) >= 0.00000011921)
        {
          return (*(*v2 + 376))(v2, a2, 1, 1);
        }
      }
    }
  }

  return result;
}

void *re::PhysXRigidBody::applyForce(void *result, float32x4_t *a2, int a3)
{
  v3 = *(result[9] + 24);
  if (v3)
  {
    if (v3[4] == 5)
    {
      result = (*(*v3 + 432))(&v8, *(result[9] + 24));
      if ((v8 & 1) == 0)
      {
        v6 = vmulq_f32(*a2, *a2);
        if ((v6.f32[2] + vaddv_f32(*v6.f32)) >= 0.00000011921)
        {
          if ((a3 - 1) < 3)
          {
            v7 = (a3 - 1) + 1;
          }

          else
          {
            v7 = 0;
          }

          return (*(*v3 + 376))(v3, a2, v7, 1);
        }
      }
    }
  }

  return result;
}

void *re::PhysXRigidBody::applyTorque(void *result, float32x4_t *a2, int a3)
{
  v3 = *(result[9] + 24);
  if (v3)
  {
    if (v3[4] == 5)
    {
      result = (*(*v3 + 432))(&v8, *(result[9] + 24));
      if ((v8 & 1) == 0)
      {
        v6 = vmulq_f32(*a2, *a2);
        if ((v6.f32[2] + vaddv_f32(*v6.f32)) >= 0.00000011921)
        {
          if ((a3 - 1) < 3)
          {
            v7 = (a3 - 1) + 1;
          }

          else
          {
            v7 = 0;
          }

          return (*(*v3 + 384))(v3, a2, v7, 1);
        }
      }
    }
  }

  return result;
}

void *re::PhysXRigidBody::applyAngularImpulse(void *result, float32x4_t *a2)
{
  v2 = *(result[9] + 24);
  if (v2)
  {
    if (v2[4] == 5)
    {
      result = (*(*v2 + 432))(&v5, *(result[9] + 24));
      if ((v5 & 1) == 0)
      {
        v4 = vmulq_f32(*a2, *a2);
        if ((v4.f32[2] + vaddv_f32(*v4.f32)) >= 0.00000011921)
        {
          return (*(*v2 + 384))(v2, a2, 1, 1);
        }
      }
    }
  }

  return result;
}

void *re::PhysXRigidBody::applyImpulse(void *result, float32x4_t *a2, uint64_t a3)
{
  v3 = *(result[9] + 24);
  if (v3 && v3[4] == 5)
  {
    result = (*(*v3 + 432))(&v6, *(result[9] + 24));
    if ((v6 & 1) == 0)
    {
      return addForce(v3, 1, a3, 1, *a2);
    }
  }

  return result;
}

uint64_t addForce(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t a5)
{
  v7 = vmulq_f32(a5, a5);
  if ((v7.f32[2] + vaddv_f32(*v7.f32)) >= 0.00000011921)
  {
    v29 = v5;
    v30 = v6;
    v11 = result;
    v27 = a5.i64[0];
    v28 = a5.i32[2];
    worldSpaceCenterOfMassPose(&v23, result);
    _S0 = *a3 - v25;
    _D1 = vsub_f32(*(a3 + 4), v26);
    v14.i32[0] = vdup_lane_s32(_D1, 1).u32[0];
    v14.f32[1] = _S0;
    _Q4 = a5;
    v16.i32[0] = vextq_s8(_Q4, _Q4, 8uLL).u32[0];
    v16.i32[1] = a5.i32[0];
    v17 = vmla_f32(vmul_f32(*&vextq_s8(_Q4, _Q4, 4uLL), vneg_f32(v14)), v16, _D1);
    __asm { FMLA            S1, S0, V4.S[1] }

    v23 = v17;
    v24 = _D1.i32[0];
    (*(*v11 + 384))(v11, &v23, a2, a4);
    return (*(*v11 + 376))(v11, &v27, a2, a4);
  }

  return result;
}

void *re::PhysXRigidBody::applyForce(void *result, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result[9] + 24);
  if (v4 && v4[4] == 5)
  {
    result = (*(*v4 + 432))(&v8, *(result[9] + 24));
    if ((v8 & 1) == 0)
    {
      return addForce(v4, 0, a3, a4, *a2);
    }
  }

  return result;
}

void *re::PhysXRigidBody::applyForce(void *result, float32x4_t *a2, uint64_t a3)
{
  v3 = *(result[9] + 24);
  if (v3)
  {
    if (v3[4] == 5)
    {
      result = (*(*v3 + 432))(&v7, *(result[9] + 24));
      if ((v7 & 1) == 0)
      {
        v6 = vmulq_f32(*a2, *a2);
        if ((v6.f32[2] + vaddv_f32(*v6.f32)) >= 0.00000011921)
        {
          return (*(*v3 + 376))(v3, a2, 0, a3);
        }
      }
    }
  }

  return result;
}

void *re::PhysXRigidBody::applyTorque(void *result, float32x4_t *a2, uint64_t a3)
{
  v3 = *(result[9] + 24);
  if (v3)
  {
    if (v3[4] == 5)
    {
      result = (*(*v3 + 432))(&v7, *(result[9] + 24));
      if ((v7 & 1) == 0)
      {
        v6 = vmulq_f32(*a2, *a2);
        if ((v6.f32[2] + vaddv_f32(*v6.f32)) >= 0.00000011921)
        {
          return (*(*v3 + 384))(v3, a2, 0, a3);
        }
      }
    }
  }

  return result;
}

void *re::PhysXRigidBody::applyUserForces(float32x4_t *this)
{
  v3 = vaddq_f32(this[15], this[23]);
  re::PhysXRigidBody::applyForce(this, &v3, 1);
  v3 = vaddq_f32(this[16], this[24]);
  re::PhysXRigidBody::applyTorque(this, &v3, 1);
  v3 = vaddq_f32(this[17], this[25]);
  re::PhysXRigidBody::applyLinearImpulse(this, &v3);
  v3 = vaddq_f32(this[18], this[26]);
  return re::PhysXRigidBody::applyAngularImpulse(this, &v3);
}

_WORD *re::PhysXRigidBody::setCanSleep(_WORD *this, int a2)
{
  if (*(this + 320) != a2)
  {
    *(this + 320) = a2;
    if (a2)
    {
      return re::PhysXRigidBody::updateSleepThreshold(this);
    }

    else
    {
      this = *(*(this + 9) + 24);
      if (this)
      {
        if (this[4] == 5)
        {
          return (*(*this + 520))(0.0);
        }
      }
    }
  }

  return this;
}

uint64_t re::PhysXRigidBody::isSleeping(re::PhysXRigidBody *this)
{
  v1 = *(*(this + 9) + 24);
  if (v1 && v1[4] == 5 && ((*(*v1 + 432))(&v3, *(*(this + 9) + 24)), (v3 & 1) == 0))
  {
    return (*(*v1 + 512))(v1);
  }

  else
  {
    return 0;
  }
}

void *re::PhysXRigidBody::sleep(void *this)
{
  v1 = *(this[9] + 24);
  if (v1 && v1[4] == 5)
  {
    this = (*(*v1 + 432))(&v2, *(this[9] + 24));
    if ((v2 & 1) == 0)
    {
      return (*(*v1 + 600))(v1);
    }
  }

  return this;
}

double re::PhysXRigidBody::clearForces(re::PhysXRigidBody *this)
{
  v2 = *(*(this + 9) + 24);
  if (v2)
  {
    if (v2[4] == 5)
    {
      (*(*v2 + 432))(&v4, *(*(this + 9) + 24));
      if ((v4 & 1) == 0)
      {
        (*(*v2 + 392))(v2, 0);
        (*(*v2 + 400))(v2, 0);
      }
    }
  }

  result = 0.0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  return result;
}

void re::PhysXRigidBody::onScaleChanged(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  re::GeometricObjectBase::scalePose(a1, a3, 1);
  re::MassFrame::makeScaledFrame(a1 + 80, a3, &v12, v5, v6);
  *(a1 + 192) = v15;
  v7 = v14;
  *(a1 + 160) = v13;
  *(a1 + 176) = v7;
  *(a1 + 144) = v12;
  v8 = *(*(a1 + 72) + 24);
  if (v8 && v8[4] == 5)
  {
    (*(*v8 + 232))(v8);
    (*(*v8 + 256))(v8, &v14);
    v9 = v13;
    v10 = v12;
    v11 = DWORD2(v12);
    (*(*v8 + 216))(v8, &v9);
    if ((*(*v8 + 56))(v8))
    {
      (*(*v8 + 592))(v8);
    }
  }
}

float32x4_t *re::PhysXRigidBody::updateKinematicTargetFromVelocity(float32x4_t *this, float a2)
{
  v2 = *(this[4].i64[1] + 24);
  if (v2)
  {
    v3 = this;
    v4 = *(v2 + 8) == 5 ? *(this[4].i64[1] + 24) : 0;
    if ((this[27].i8[8] & 1) == 0)
    {
      if (v4)
      {
        this = (*(*v4 + 432))(&v39, v4);
        if (v39.i8[0])
        {
          if ((*(*v4 + 504))(v4, &v39))
          {
            v5 = v40;
            v6 = v41;
          }

          else
          {
            (*(*v4 + 152))(&v36, v4);
            v39 = v36;
            v5 = v37;
            v6 = v38;
          }

          v7 = v3[22];
          v8 = a2;
          v9 = vmulq_n_f32(v3[21], a2);
          v40 = vadd_f32(v5, *v9.f32);
          v41 = v6 + v9.f32[2];
          v10 = vmulq_f32(v7, v7);
          v11 = sqrtf(v10.f32[2] + vaddv_f32(*v10.f32));
          v12 = a2;
          if ((v11 * a2) > 0.785398163)
          {
            v11 = 0.785398163 / v12;
          }

          if (v11 >= 0.001)
          {
            v14 = v11 * 0.5 * v12;
            v33 = v7;
            v15 = sinf(v14);
            v7 = v33;
            v8 = a2;
            v13 = v15 / v11;
          }

          else
          {
            v13 = ((a2 * a2) * a2) * -0.0208333333 * v11 * v11 + v12 * 0.5;
          }

          v35 = vmulq_n_f32(v7, v13);
          v16 = cosf((v11 * v8) * 0.5);
          v17 = v35;
          v18 = v35;
          v17.i32[3] = v35.i32[2];
          v19 = vzip1q_s32(v39, v39);
          v19.i32[0] = v39.i32[2];
          v20 = vuzp2q_s32(vextq_s8(v19, v19, 4uLL), v17);
          v17.f32[3] = -*v35.i32;
          v21 = vmulq_f32(vextq_s8(vdupq_laneq_s32(v39, 3), v39, 4uLL), v17);
          v22 = vextq_s8(vextq_s8(v18, v18, 0xCuLL), v35, 8uLL);
          v22.f32[3] = -*&v35.i32[1];
          v23 = vmlaq_f32(vmlaq_n_f32(v21, v39, v16), v19, v22);
          v20.i32[2] = v19.i32[1];
          v24 = vextq_s8(vuzp1q_s32(v18, v18), v35, 0xCuLL);
          v24.i32[3] = v39.i32[2];
          _Q1 = vmlsq_f32(v23, v24, v20);
          _Q0 = vmulq_f32(_Q1, _Q1);
          _S2 = _Q1.i32[2];
          __asm { FMLA            S0, S2, V1.S[2] }

          _S2 = _Q1.i32[3];
          __asm { FMLA            S0, S2, V1.S[3] }

          _Q0.f32[0] = sqrtf(_Q0.f32[0]);
          if (_Q0.f32[0] != 0.0)
          {
            _Q1 = vdivq_f32(_Q1, vdupq_lane_s32(*_Q0.f32, 0));
          }

          v39 = _Q1;
          return (*(*v4 + 496))(v4, &v39);
        }
      }
    }
  }

  return this;
}

void re::PhysXRigidBody::setDamping(re::PhysXRigidBody *this, float a2, float a3)
{
  *(this + 81) = a2;
  *(this + 82) = a3;
  v3 = *(*(this + 9) + 24);
  if (v3 && v3[4] == 5)
  {
    if ((*(*v3 + 288))(*(*(this + 9) + 24)) != a2)
    {
      v7.n128_u64[0] = 0;
      if (a2 >= 0.0)
      {
        v7.n128_f32[0] = a2;
      }

      (*(*v3 + 280))(v3, v7);
      re::PhysXRigidBody::updateSleepThreshold(this);
    }

    v8 = a3 * 5.0;
    if (v8 != (*(*v3 + 304))(v3))
    {
      v9.n128_u64[0] = 0;
      if (v8 >= 0.0)
      {
        v9.n128_f32[0] = v8;
      }

      (*(*v3 + 296))(v3, v9);

      re::PhysXRigidBody::updateSleepThreshold(this);
    }
  }
}

uint64_t re::PhysXRigidBody::material(re::PhysXRigidBody *this, uint64_t a2)
{
  v3 = *(*(this + 9) + 24);
  v6 = 0;
  (*(*v3 + 192))(v3, &v6, 1, 0);
  result = v6;
  if (v6)
  {
    v5 = 0;
    (*(*v6 + 216))(v6, &v5, 1, a2);
    if (v5)
    {
      return *(v5 + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::PhysXRigidBody::materialCount(re::PhysXRigidBody *this)
{
  v1 = *(*(this + 9) + 24);
  v3 = 0;
  (*(*v1 + 192))(v1, &v3, 1, 0);
  result = v3;
  if (v3)
  {
    return (*(*v3 + 208))(v3);
  }

  return result;
}

void *re::PhysXRigidBody::setGravityEnabled(re::PhysXRigidBody *this, int a2)
{
  v4 = *(*(this + 9) + 24);
  result = (*(*v4 + 104))(&v7, v4);
  if (((v7 & 2) == 0) != a2)
  {
    v6 = a2 ^ 1u;
    result = (*(*v4 + 88))(v4, 2, v6);
    if ((v6 & 1) == 0)
    {
      return re::PhysXRigidBody::wakeUp(this);
    }
  }

  return result;
}

void re::PhysXRigidBody::poseDidChange(re::PhysXRigidBody *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not supported.", "!Unreachable code", "poseDidChange", 101);
  _os_crash("assertion failure: (!Unreachable code) Not supported.");
  __break(1u);
}

re::PhysXHingeJoint *re::PhysXHingeJoint::PhysXHingeJoint(re::PhysXHingeJoint *this, physx::PxRevoluteJoint *a2, uint64_t a3)
{
  *this = &unk_1F5D0D160;
  v6 = re::HingeJoint::HingeJoint(this, this + 64);
  *v7 = &unk_1F5D0D160;
  v7[8] = &unk_1F5D0DBF8;
  v7[9] = a2;
  *(a2 + 2) = v7;
  (*(*a2 + 128))(a2, 16, 1, v6);
  (*(**(this + 9) + 128))(*(this + 9), 8, a3);
  return this;
}

uint64_t re::PhysXHingeJoint::updateLimits(re::PhysXHingeJoint *this)
{
  v2 = *(this + 9);
  result = (*(*v2 + 328))(v2, 1, *(this + 14) <= *(this + 15));
  v5 = *(this + 14);
  v4 = *(this + 15);
  if (v5 <= v4)
  {
    v9 = *(this + 15);
    v10 = v5;
    v6 = (v4 - v5) * 0.49;
    if (v6 > 0.1)
    {
      v6 = 0.1;
    }

    v7[0] = 0x3F00000000000000;
    v7[1] = 0;
    v8 = v6;
    return (*(*v2 + 256))(v2, v7);
  }

  return result;
}

void re::PhysXHingeJoint::~PhysXHingeJoint(re::PhysXHingeJoint *this)
{
  *this = &unk_1F5D0D160;
  v2 = *(this + 9);
  if (v2)
  {
    (**v2)(v2);
  }

  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D0D160;
  v2 = *(this + 9);
  if (v2)
  {
    (**v2)(v2);
  }

  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::PhysXPhysicsMaterial::PhysXPhysicsMaterial(uint64_t a1, void *a2)
{
  v4 = (*(*a2 + 104))(a2);
  v5 = (*(*a2 + 88))(a2);
  v6 = (*(*a2 + 72))(a2);
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  *(a1 + 16) = v6;
  *a1 = &unk_1F5D0D1C8;
  *(a1 + 24) = a2;
  a2[2] = a1;
  return a1;
}

void re::PhysXPhysicsMaterial::~PhysXPhysicsMaterial(re::PhysXPhysicsMaterial *this)
{
  (***(this + 3))(*(this + 3));
}

{
  (***(this + 3))(*(this + 3));

  JUMPOUT(0x1E6906520);
}

double re::Explosion::didAddToSimulation(re::Explosion *this)
{
  result = *(*(this + 1) + 24) + *(this + 13);
  *(this + 8) = result;
  return result;
}

float32x4_t *re::Explosion::onApply(float32x4_t *this)
{
  v1 = this;
  v26 = *MEMORY[0x1E69E9840];
  v2 = this->i64[1];
  if (*this[4].i64 <= *(v2 + 24))
  {

    return re::ForceEffectCollection::remove((v2 + 248), this);
  }

  else
  {
    v3 = *(v2 + 104);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        v5 = *(v2 + 104);
        if (v5 <= i)
        {
          v16 = 0;
          memset(v25, 0, sizeof(v25));
          v14 = MEMORY[0x1E69E9C10];
          v17 = 136315906;
          v18 = "operator[]";
          v19 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v15 = 3;
          }

          else
          {
            v15 = 2;
          }

          v20 = 797;
          v21 = 2048;
          v22 = i;
          v23 = 2048;
          v24 = v5;
          _os_log_send_and_compose_impl(v15, &v16, v25, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, 0x3F80000000000000uLL, 0);
          _os_crash_msg();
          __break(1u);
        }

        v6 = *(*(v2 + 120) + 8 * i);
        this = (*(*v6 + 208))(v25, v6);
        v7 = vsubq_f32(v25[0], v1[2]);
        v8 = vmulq_f32(v7, v7);
        v9 = v8.f32[2] + vaddv_f32(*v8.f32);
        v10 = v1[3].f32[0] * v1[3].f32[0];
        if (v9 <= v10)
        {
          v11 = xmmword_1E3047680;
          if (fabsf(v9) >= 1.0e-10)
          {
            v12 = vrsqrte_f32(LODWORD(v9));
            v13 = vmul_f32(v12, vrsqrts_f32(LODWORD(v9), vmul_f32(v12, v12)));
            v11 = vmulq_n_f32(v7, vmul_f32(v13, vrsqrts_f32(LODWORD(v9), vmul_f32(v13, v13))).f32[0]);
          }

          v25[0] = vmulq_n_f32(v11, (1.0 - (v9 / v10)) * v1[3].f32[2]);
          this = (*(*v6 + 384))(v6, v25, 0);
        }
      }
    }
  }

  return this;
}

uint64_t re::ForceEffectCollection::remove(re::ForceEffectCollection *this, re::ForceEffect *a2)
{
  v5 = a2;
  if (*(a2 + 1))
  {
    (*(*a2 + 48))(a2);
    *(a2 + 1) = 0;
  }

  return re::DynamicArray<unsigned long long>::remove(this + 8, &v5);
}

BOOL re::MassFrame::operator==(float32x4_t *a1, float32x4_t *a2)
{
  v2 = vceqq_f32(*a1, *a2);
  v2.i32[3] = v2.i32[2];
  if ((vminvq_u32(v2) & 0x80000000) != 0 && (vminvq_u32(vceqq_f32(a1[1], a2[1])) & 0x80000000) != 0 && (v3 = vceqq_f32(a1[2], a2[2]), v3.i32[3] = v3.i32[2], (vminvq_u32(v3) & 0x80000000) != 0))
  {
    return a1[3].f32[0] == a2[3].f32[0];
  }

  else
  {
    return 0;
  }
}

void *re::MassFrame::makeFromShapeAndDensity@<X0>(re::MassFrame *this@<X0>, const re::CollisionShape *a2@<X1>, float a3@<S0>, float32x4_t *a4@<X8>)
{
  result = (*(*this + 56))(this, a2);
  if (result)
  {
    v7 = 0;
    v8 = 0;
    a4[1].i64[0] = 0;
    a4[1].i64[1] = 0x3F80000000000000;
    v9 = 0.0;
    v10 = 0uLL;
  }

  else
  {
    v20 = 0.0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    (*(*this + 32))(this, &v20, &v19, &v16);
    v11 = v20;
    *&v12 = v16;
    *(&v12 + 1) = __PAIR64__(v17, DWORD2(v16));
    *&v13 = *(&v17 + 4);
    *(&v13 + 1) = v18;
    v21[0] = v12;
    v21[1] = v13;
    v22 = DWORD2(v18);
    result = physx::PxDiagonalize(v21, a4[1].f32, &v23);
    v9 = v11 * a3;
    v14.i64[0] = v23;
    v14.i32[2] = v24;
    v10 = vmulq_n_f32(v14, a3);
    v8 = *(&v19 + 1);
    v7 = v19;
  }

  a4->i64[0] = v7;
  a4->i64[1] = v8;
  a4[2] = v10;
  a4[3].f32[0] = v9;
  return result;
}

uint64_t *re::MassFrame::makeFromShapeAndMass@<X0>(float32x4_t *__return_ptr a1@<X8>, re::MassFrame *this@<X0>, const re::CollisionShape *a3@<X1>, float a4@<S0>)
{
  result = (*(*this + 56))(this, a3);
  if (result)
  {
    v8 = 0;
    v9 = 0;
    a1[1].i64[0] = 0;
    a1[1].i64[1] = 0x3F80000000000000;
    v10 = 0.0;
    v11 = 0uLL;
  }

  else
  {
    v21 = 0.0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    (*(*this + 32))(this, &v21, &v20, &v17);
    v12 = v21;
    v16 = a4 / v21;
    *&v13 = v17;
    *(&v13 + 1) = __PAIR64__(v18, DWORD2(v17));
    *&v14 = *(&v18 + 4);
    *(&v14 + 1) = v19;
    v22[0] = v13;
    v22[1] = v14;
    v23 = DWORD2(v19);
    result = physx::PxDiagonalize(v22, a1[1].f32, &v24);
    v10 = v12 * v16;
    v15.i64[0] = v24;
    v15.i32[2] = v25;
    v11 = vmulq_n_f32(v15, v16);
    v9 = *(&v20 + 1);
    v8 = v20;
  }

  a1->i64[0] = v8;
  a1->i64[1] = v9;
  a1[2] = v11;
  a1[3].f32[0] = v10;
  return result;
}

float32x4_t re::MassFrame::makeScaledFrame@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, float32x4_t a5@<Q3>)
{
  v5 = (a2->f32[0] * a2->f32[1]) * a2->f32[2];
  v6 = *(a1 + 32);
  v7.i64[0] = 0x3F0000003F000000;
  v7.i64[1] = 0x3F0000003F000000;
  v8 = vmulq_f32(v6, v7);
  v8.f32[0] = v8.f32[2] + vaddv_f32(*v8.f32);
  v9 = vsubq_f32(vdupq_lane_s32(*v8.f32, 0), v6);
  v10 = *a2;
  v11 = vmulq_n_f32(vmulq_f32(*a2, vmulq_f32(*a2, v9)), v5);
  *a5.f32 = vadd_f32(vdup_laneq_s32(v11, 2), *v11.i8);
  v12 = vaddv_f32(*v11.i8);
  *&a4 = v5 * *(a1 + 48);
  v13 = 5000.0;
  if (*&a4 <= 5000.0)
  {
    v13 = *&a4;
  }

  if (v13 < 0.0002)
  {
    v13 = 0.0002;
  }

  if (*&a4 <= 0.0)
  {
    v13 = 0.0;
  }

  *(a3 + 48) = v13;
  *a5.f32 = vrev64_s32(*a5.f32);
  a5.f32[2] = v12;
  v14 = vdivq_f32(vmulq_n_f32(a5, v13), vdupq_lane_s32(*&a4, 0));
  v15 = *(a1 + 16);
  result = vmulq_f32(v10, *a1);
  *a3 = result;
  *(a3 + 16) = v15;
  *(a3 + 32) = v14;
  return result;
}

void *re::allocInfo_MassFrame(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BCF00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BCF00))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BCF20, "MassFrame");
    __cxa_guard_release(&qword_1EE1BCF00);
  }

  return &unk_1EE1BCF20;
}

void re::initInfo_MassFrame(re *this, re::IntrospectionBase *a2)
{
  v16[0] = 0x7C8101421572;
  v16[1] = "MassFrame";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&_MergedGlobals_491, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_491))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_PoseF(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "m_pose";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 1;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1BCF08 = v7;
    v8 = re::introspectionAllocator();
    v9 = re::introspect_Vector3F(1);
    v10 = (*(*v8 + 32))(v8, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "m_inertia";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x2000000002;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1BCF10 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_float(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "m_mass";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x3000000003;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1BCF18 = v14;
    __cxa_guard_release(&_MergedGlobals_491);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1BCF08;
  *(this + 9) = re::internal::defaultConstruct<re::MassFrame>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MassFrame>;
  *(this + 13) = re::internal::defaultConstructV2<re::MassFrame>;
  *(this + 14) = re::internal::defaultDestructV2<re::MassFrame>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v15 = v17;
}

int32x4_t re::internal::defaultConstruct<re::MassFrame>(uint64_t a1, uint64_t a2, int32x4_t *a3)
{
  *a3 = 0uLL;
  a3[1].i64[0] = 0;
  a3[1].i64[1] = 0x3F80000000000000;
  result = vdupq_n_s32(0x3DCCCCCDu);
  a3[2] = result;
  a3[3].i32[0] = 1065353216;
  return result;
}

int32x4_t re::internal::defaultConstructV2<re::MassFrame>(int32x4_t *a1)
{
  *a1 = 0uLL;
  a1[1].i64[0] = 0;
  a1[1].i64[1] = 0x3F80000000000000;
  result = vdupq_n_s32(0x3DCCCCCDu);
  a1[2] = result;
  a1[3].i32[0] = 1065353216;
  return result;
}

uint64_t re::RigidBodyCollection::add(re::RigidBodyCollection *this, re::RigidBody *a2)
{
  v4 = a2;
  re::DynamicArray<re::TransitionCondition *>::add((this + 8), &v4);
  (*(*v4 + 96))(v4, *this + 128);
  result = (*(**this + 120))(*this, v4);
  *(*this + 240) = 1;
  return result;
}

uint64_t re::RigidBodyCollection::remove(re::RigidBody ***this, re::RigidBody *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 9);
  if (((*(*a2 + 296))(a2) & 1) != 0 || *(a2 + 52) != 2)
  {
    for (i = *(v4 + 80); i; i = i[v10])
    {
      v6 = *i;
      if (*i == v4)
      {
        v6 = i[1];
      }

      v7 = *(v6 + 16);
      v8 = (*(*v7 + 56))(v7);
      v9 = v7 != a2 && v8 == 2;
      if (v9 && (*(*v7 + 296))(v7) && *(v7 + 52) == 2)
      {
        (*(*v7 + 312))(v7);
      }

      if (*i == v4)
      {
        v10 = 14;
      }

      else
      {
        v10 = 15;
      }
    }
  }

  result = (*(**this + 16))(*this, a2);
  v12 = this[5];
  v13 = this[3];
  v14 = v12;
  if (v13)
  {
    v15 = 8 * v13;
    v14 = this[5];
    while (*v14 != a2)
    {
      ++v14;
      v15 -= 8;
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  v16 = &v12[v13];
  if (v14 != v16)
  {
    v17 = v14 - v12;
    v18 = v17 >> 3;
    if (v13 <= v17 >> 3)
    {
      v22 = 0;
      memset(v31, 0, sizeof(v31));
      v19 = MEMORY[0x1E69E9C10];
      v23 = 136315906;
      v24 = "removeAt";
      v25 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v26 = 931;
      v27 = 2048;
      v28 = v18;
      v29 = 2048;
      v30 = v13;
      _os_log_send_and_compose_impl(v20, &v22, v31, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
      _os_crash_msg();
      __break(1u);
    }

    if (v13 - 1 > v18)
    {
      *(v12 + v17) = *(v16 - 1);
    }

    this[3] = (v13 - 1);
    ++*(this + 8);
  }

LABEL_28:
  *(*this + 240) = 1;
  return result;
}

uint64_t re::RigidBodyCollection::setSolverIterations(uint64_t result, uint64_t a2)
{
  v2 = result + 48;
  if (*(result + 48) != *a2 || *(result + 52) != *(a2 + 4))
  {
    *(result + 48) = *a2;
    v3 = *(result + 24);
    if (v3)
    {
      v4 = *(result + 40);
      v5 = 8 * v3;
      do
      {
        v6 = *v4++;
        result = (*(*v6 + 96))(v6, v2);
        v5 -= 8;
      }

      while (v5);
    }
  }

  return result;
}

void *re::PhysXPhysicsFactory::PhysXPhysicsFactory(void *a1, uint64_t a2, __n128 a3, __n128 a4)
{
  *a1 = &unk_1F5D0D278;
  a1[1] = a2;
  a3.n128_u32[0] = 1036831949;
  a4.n128_u32[0] = 0.5;
  PhysicsMaterial = re::PhysXPhysicsFactory::createPhysicsMaterial(*(a2 + 16), a3, a4, 0.5);
  re::PhysXPhysicsMaterial::PhysXPhysicsMaterial((a1 + 2), PhysicsMaterial);
  return a1;
}

uint64_t re::PhysXPhysicsFactory::createPhysicsMaterial(uint64_t a1, __n128 a2, __n128 a3, float a4)
{
  v4 = 1.0;
  if (a2.n128_f32[0] <= 1.0)
  {
    v4 = a2.n128_f32[0];
  }

  if (a2.n128_f32[0] < 0.0)
  {
    v4 = 0.0;
  }

  if (a3.n128_f32[0] >= 0.0)
  {
    a2.n128_f32[0] = a3.n128_f32[0];
  }

  else
  {
    a2.n128_f32[0] = 0.0;
  }

  if (a4 >= 0.0)
  {
    a3.n128_f32[0] = a4;
  }

  else
  {
    a3.n128_f32[0] = 0.0;
  }

  v5 = (*(*a1 + 240))(a1, a2, a3, v4);
  (*(*v5 + 112))(v5, 4, 1);
  (*(*v5 + 136))(v5, 2);
  return v5;
}

void re::PhysXPhysicsFactory::~PhysXPhysicsFactory(re::PhysXPhysicsFactory *this)
{
  *this = &unk_1F5D0D278;
  (***(this + 5))(*(this + 5));
}

{
  *this = &unk_1F5D0D278;
  (***(this + 5))(*(this + 5));

  JUMPOUT(0x1E6906520);
}

double re::PhysXPhysicsFactory::createPhysicsSimulation(re::PhysXPhysicsFactory *this, re::Allocator *a2)
{
  v2 = (*(*a2 + 32))(a2, 984, 8);
  v3 = re::PhysicsSimulation::PhysicsSimulation(v2);
  *v3 = &unk_1F5D0DE70;
  result = 0.0;
  *(v3 + 59) = 0u;
  return result;
}

uint64_t re::PhysXPhysicsFactory::createPhysicsMaterial(re::PhysXPhysicsFactory *this, re::Allocator *a2, __n128 a3, __n128 a4, float a5)
{
  if (a5 < 0.0)
  {
    a5 = a4.n128_f32[0];
  }

  PhysicsMaterial = re::PhysXPhysicsFactory::createPhysicsMaterial(*(*(this + 1) + 16), a3, a4, a5);
  v7 = (*(*a2 + 32))(a2, 32, 8);

  return re::PhysXPhysicsMaterial::PhysXPhysicsMaterial(v7, PhysicsMaterial);
}

uint64_t re::PhysXPhysicsFactory::createUnderlyingRigidBody(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, int a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = *(*(a1 + 8) + 16);
  if (a5)
  {
    v16 = xmmword_1E30474D0;
    v17 = 0;
    v18 = 0;
    v8 = (*(*v6 + 176))(v6, &v16);
    (*(*v8 + 256))();
    (*(*v8 + 232))(v8, a4[12]);
    v16 = *(a4 + 1);
    v17 = *a4;
    v18 = *(a4 + 2);
    (*(*v8 + 216))(v8, &v16);
    (*(*v8 + 608))(v8, 6, 1);
  }

  else
  {
    v16 = xmmword_1E30474D0;
    v17 = 0;
    v18 = 0;
    v8 = (*(*v6 + 168))(v6, &v16, a3, a4);
  }

  v9 = (*(*a3 + 184))(a3);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v16 - v11);
  if (v10 >= 0x200)
  {
    v13 = 512;
  }

  else
  {
    v13 = v10;
  }

  bzero(&v16 - v11, v13);
  (*(*a3 + 192))(a3, v12, v9, 0);
  if (v9)
  {
    v9 = v9;
    do
    {
      (**v12)[7]();
      (*(*a3 + 176))(a3, *v12, 1);
      (*(*v8 + 168))(v8, *v12);
      v14 = *v12++;
      (**v14)();
      --v9;
    }

    while (v9);
  }

  return v8;
}

uint64_t re::PhysXPhysicsFactory::createRigidBody(re::CollisionFactory **this, re::Allocator *a2, const re::CollisionShape *a3, const re::MassFrame *a4, const re::PhysicsMaterial *const *a5, uint64_t a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = re::CollisionFactory::deepCopyShape(this[1], a2, a3);
  v12 = *(this[1] + 2);
  if ((*(*v11 + 56))(v11) || (v14 = fabsf(*(a4 + 12)), v14 == INFINITY) || v14 < 0.00001)
  {
    v27 = xmmword_1E30474D0;
    v28 = 0;
    v29 = 0;
    v13 = (*(*v12 + 168))(v12, &v27);
  }

  else
  {
    v27 = xmmword_1E30474D0;
    v28 = 0;
    v29 = 0;
    v13 = (*(*v12 + 176))(v12, &v27);
    (*(*v13 + 256))();
    (*(*v13 + 232))(v13, *(a4 + 12));
    v27 = *(a4 + 1);
    v28 = *a4;
    v29 = *(a4 + 2);
    (*(*v13 + 216))(v13, &v27);
    (*(*v13 + 608))(v13, 6, 1);
  }

  v15 = 2 * ((*(*v13 + 48))(v13) == 1);
  v16 = (*(*a2 + 32))(a2, 448, 16);
  re::PhysXRigidBody::PhysXRigidBody(v16, a2, v11, a4, v15);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - v19;
  if (v18 >= 0x200)
  {
    v21 = 512;
  }

  else
  {
    v21 = v18;
  }

  bzero(&v27 - v19, v21);
  if (a6)
  {
    v22 = a6;
    v23 = v20;
    do
    {
      v24 = *a5++;
      *v23 = *(v24 + 24);
      v23 += 8;
      --v22;
    }

    while (v22);
  }

  v25 = (*(*this[1] + 184))(this[1], a2, v16, v13, v20, a6);
  (*(*v16 + 360))(v16, v25);
  return v16;
}

re::PhysXHingeJoint *re::PhysXPhysicsFactory::createHingeJoint(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6, uint64_t a7)
{
  if (!a3)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = *(*(a3 + 72) + 24);
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = *(*(a5 + 72) + 24);
LABEL_6:
  v11 = *(*(a1 + 8) + 16);
  v18 = a4[1];
  v19 = a4->i64[0];
  v20 = a4->i32[2];
  v15 = a6[1];
  v16 = a6->i64[0];
  v17 = a6->i32[2];
  v12 = physx::PxRevoluteJointCreate(v11, v9, &v18, v10, &v15);
  v13 = (*(*a2 + 32))(a2, 80, 8);
  return re::PhysXHingeJoint::PhysXHingeJoint(v13, v12, a7);
}

re::PhysXFixedJoint *re::PhysXPhysicsFactory::createFixedJoint(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6, uint64_t a7)
{
  if (!a3)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = *(*(a3 + 72) + 24);
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = *(*(a5 + 72) + 24);
LABEL_6:
  v11 = *(*(a1 + 8) + 16);
  v18 = a4[1];
  v19 = a4->i64[0];
  v20 = a4->i32[2];
  v15 = a6[1];
  v16 = a6->i64[0];
  v17 = a6->i32[2];
  v12 = physx::PxFixedJointCreate(v11, v9, &v18, v10, &v15);
  v13 = (*(*a2 + 32))(a2, 72, 8);
  return re::PhysXFixedJoint::PhysXFixedJoint(v13, v12, a7);
}

uint64_t re::PhysXPhysicsFactory::createSliderJoint(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6, uint64_t a7)
{
  if (!a3)
  {
    v10 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = *(*(a3 + 72) + 24);
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = *(*(a5 + 72) + 24);
LABEL_6:
  v12 = *(*(a1 + 8) + 16);
  v20 = a4[1];
  v21 = a4->i64[0];
  v22 = a4->i32[2];
  v17 = a6[1];
  v18 = a6->i64[0];
  v19 = a6->i32[2];
  v13 = physx::PxPrismaticJointCreate(v12, v10, &v20, v11, &v17);
  v14 = (*(**(*(a1 + 8) + 16) + 40))(*(*(a1 + 8) + 16));
  v15 = (*(*a2 + 32))(a2, 88, 8);
  return re::PhysXSliderJoint::PhysXSliderJoint(v15, v13, v14, a7);
}

int32x2_t *re::PhysXPhysicsFactory::createBallSocketJoint(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6, uint64_t a7)
{
  if (!a3)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = *(*(a3 + 72) + 24);
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = *(*(a5 + 72) + 24);
LABEL_6:
  v11 = *(*(a1 + 8) + 16);
  v18 = a4[1];
  v19 = a4->i64[0];
  v20 = a4->i32[2];
  v15 = a6[1];
  v16 = a6->i64[0];
  v17 = a6->i32[2];
  v12 = physx::PxSphericalJointCreate(v11, v9, &v18, v10, &v15);
  v13 = (*(*a2 + 32))(a2, 80, 8);
  return re::PhysXBallSocketJoint::PhysXBallSocketJoint(v13, v12, a7);
}

re::PhysXDistanceJoint *re::PhysXPhysicsFactory::createDistanceJoint(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6, uint64_t a7)
{
  if (!a3)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = *(*(a3 + 72) + 24);
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = *(*(a5 + 72) + 24);
LABEL_6:
  v11 = *(*(a1 + 8) + 16);
  v18 = a4[1];
  v19 = a4->i64[0];
  v20 = a4->i32[2];
  v15 = a6[1];
  v16 = a6->i64[0];
  v17 = a6->i32[2];
  v12 = physx::PxDistanceJointCreate(v11, v9, &v18, v10, &v15);
  v13 = (*(*a2 + 32))(a2, 88, 8);
  return re::PhysXDistanceJoint::PhysXDistanceJoint(v13, v12, a7);
}

uint64_t re::PhysXPhysicsFactory::createGeneric6DOFConstraint(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6, uint64_t a7)
{
  if (!a3)
  {
    v10 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = *(*(a3 + 72) + 24);
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = *(*(a5 + 72) + 24);
LABEL_6:
  v12 = *(*(a1 + 8) + 16);
  v20 = a4[1];
  v21 = a4->i64[0];
  v22 = a4->i32[2];
  v17 = a6[1];
  v18 = a6->i64[0];
  v19 = a6->i32[2];
  v13 = physx::PxD6JointCreate(v12, v10, &v20, v11, &v17);
  v14 = (*(**(*(a1 + 8) + 16) + 40))(*(*(a1 + 8) + 16));
  v15 = (*(*a2 + 32))(a2, 368, 8);
  return re::PhysXGeneric6DOFConstraint::PhysXGeneric6DOFConstraint(v15, v13, v14, a7);
}

re::PhysXTwistSwingJoint *re::PhysXPhysicsFactory::createTwistSwingJoint(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6, uint64_t a7)
{
  if (!a3)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = *(*(a3 + 72) + 24);
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = *(*(a5 + 72) + 24);
LABEL_6:
  v11 = *(*(a1 + 8) + 16);
  v18 = a4[1];
  v19 = a4->i64[0];
  v20 = a4->i32[2];
  v15 = a6[1];
  v16 = a6->i64[0];
  v17 = a6->i32[2];
  v12 = physx::PxD6JointCreate(v11, v9, &v18, v10, &v15);
  v13 = (*(*a2 + 32))(a2, 120, 8);
  return re::PhysXTwistSwingJoint::PhysXTwistSwingJoint(v13, v12, a7);
}

uint64_t re::WiggleForce::WiggleForce(uint64_t a1, uint64_t a2, int a3, char a4, char a5, __n128 a6, float a7, float a8)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F5D0D318;
  *(a1 + 8) = 0;
  *(a1 + 24) = a2;
  *(a1 + 128) = a6;
  (*(*a2 + 40))(&v20, a2);
  *(a1 + 32) = v20;
  *(a1 + 48) = 0u;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 64) = 0u;
  *(a1 + 80) = _Q0;
  *(a1 + 96) = a7;
  *(a1 + 100) = a8;
  *(a1 + 104) = -1;
  *(a1 + 106) = 0;
  *(a1 + 110) = 0;
  *(a1 + 112) = a3;
  *(a1 + 116) = a4;
  *(a1 + 117) = a5;
  *(a1 + 118) = 0;
  *(a1 + 126) = 0;
  return a1;
}

void re::WiggleForce::onApply(float32x4_t *this, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = this[1].i64[1];
  if (v3)
  {
    v4 = &v20;
    (*(*v3 + 208))(&v20);
  }

  else
  {
    v4 = this + 8;
  }

  v5 = *v4;
  v6 = this[5];
  v22 = this[4];
  v23 = v6;
  v7 = this[7];
  v24 = this[6];
  v25 = v7;
  v8 = this[3];
  v20 = this[2];
  v21 = v8;
  *v9.i64 = WGLForceComputeLinearForce(&v20, a2, v5);
  v18 = v9;
  v10 = this->i64[1];
  v11 = *(v10 + 104);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v13 = *(v10 + 104);
      if (v13 <= i)
      {
        v19 = 0;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        v15 = MEMORY[0x1E69E9C10];
        v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v26 = 136315906;
        v27 = "operator[]";
        v28 = 1024;
        if (v16)
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v29 = 797;
        v30 = 2048;
        v31 = i;
        v32 = 2048;
        v33 = v13;
        _os_log_send_and_compose_impl(v17, &v19, &v20, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v18.u64[0], v18.u64[1]);
        _os_crash_msg();
        __break(1u);
      }

      v14 = *(*(v10 + 120) + 8 * i);
      if (v14 != this[1].i64[1])
      {
        v20 = v18;
        (*(*v14 + 384))(v14, &v20, 0);
        if (this[7].i8[5] == 1)
        {
          v20 = v18;
          (*(*v14 + 392))(v14, &v20, 0);
        }
      }
    }
  }
}

_DWORD *re::Goal::onApply(float32x4_t *this)
{
  result = this[1].i64[1];
  if (result[52] == 2 && this[7].f32[0] >= 0.0)
  {
    (*(*result + 40))(&v26);
    v3 = v26;
    v3.i32[3] = 0;
    v17 = v3;
    v18 = v27;
    v4 = (this[1].i64[1] + 192);
    v5 = vld1q_dup_f32(v4);
    v6 = this[7];
    v22 = this[6];
    v23 = v6;
    v7 = this[9];
    v24 = this[8];
    v25 = v7;
    v8 = this[5];
    v19 = v5;
    v20 = this[4];
    v21 = v8;
    *v10.i64 = WGLGoalComputeLinearForce(&v20, v9, v3, *v27.i64, _PromotedConst_1, unk_1E3100BC0);
    v11 = this[1].i64[1];
    v20 = vdivq_f32(v10, v19);
    (*(*v11 + 384))();
    v12 = this[7];
    v22 = this[6];
    v23 = v12;
    v13 = this[9];
    v24 = this[8];
    v25 = v13;
    v14 = this[5];
    v20 = this[4];
    v21 = v14;
    *v15.i64 = WGLGoalComputeAngularTorque(&v20, v17, v18, _PromotedConst_1, unk_1E3100BC0);
    v16 = this[1].i64[1];
    v20 = vdivq_f32(v15, v19);
    return (*(*v16 + 392))();
  }

  return result;
}

void re::PhysicsErrorCategoryImpl::~PhysicsErrorCategoryImpl(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E6906520);
}

void *re::PhysicsErrorCategoryImpl::message@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if (a1 <= 3002)
  {
    if (a1 <= 1999)
    {
      if (a1 > 1001)
      {
        if (a1 == 1002)
        {
          v2 = "Missing physics material static friction.";
          return std::string::basic_string[abi:nn200100]<0>(a2, v2);
        }

        if (a1 == 1003)
        {
          v2 = "Missing physics material dynamic friction.";
          return std::string::basic_string[abi:nn200100]<0>(a2, v2);
        }
      }

      else
      {
        if (a1 == 1000)
        {
          v2 = "Invalid physics material";
          return std::string::basic_string[abi:nn200100]<0>(a2, v2);
        }

        if (a1 == 1001)
        {
          v2 = "Missing physics material restitution";
          return std::string::basic_string[abi:nn200100]<0>(a2, v2);
        }
      }

      goto LABEL_39;
    }

    if (a1 <= 3000)
    {
      if (a1 == 2000)
      {
        v2 = "Invialid physics gravitational force.";
        return std::string::basic_string[abi:nn200100]<0>(a2, v2);
      }

      if (a1 == 3000)
      {
        v2 = "Invalid physics collider.";
        return std::string::basic_string[abi:nn200100]<0>(a2, v2);
      }

      goto LABEL_39;
    }

    if (a1 == 3001)
    {
      v2 = "Missing physics collider relation.";
    }

    else
    {
      v2 = "Missing physics collision shape type.";
    }
  }

  else if (a1 <= 3006)
  {
    if (a1 > 3004)
    {
      if (a1 == 3005)
      {
        v2 = "Missing physics collision capsule height.";
      }

      else
      {
        v2 = "Missing physics collision capsule radius.";
      }
    }

    else if (a1 == 3003)
    {
      v2 = "Invalid physics collider relation.";
    }

    else
    {
      v2 = "Unsupported physics collision shape type.";
    }
  }

  else
  {
    if (a1 > 3008)
    {
      switch(a1)
      {
        case 3009:
          v2 = "Missing physics collision shape extent.";
          return std::string::basic_string[abi:nn200100]<0>(a2, v2);
        case 4000:
          v2 = "Invalid physics rigid body.";
          return std::string::basic_string[abi:nn200100]<0>(a2, v2);
        case 4001:
          v2 = "Missing mass on physics rigid body.";
          return std::string::basic_string[abi:nn200100]<0>(a2, v2);
      }

LABEL_39:
      v2 = "Unknown REPhysics error";
      return std::string::basic_string[abi:nn200100]<0>(a2, v2);
    }

    if (a1 == 3007)
    {
      v2 = "Missing physics collision sphere radius.";
    }

    else
    {
      v2 = "Missing physics collision cube size.";
    }
  }

  return std::string::basic_string[abi:nn200100]<0>(a2, v2);
}

re::PhysXDistanceJoint *re::PhysXDistanceJoint::PhysXDistanceJoint(re::PhysXDistanceJoint *this, physx::PxDistanceJoint *a2, uint64_t a3)
{
  *this = &unk_1F5D0D468;
  v6 = re::DistanceJoint::DistanceJoint(this, this + 72);
  *v7 = &unk_1F5D0D468;
  v7[9] = &unk_1F5D0DBF8;
  v7[10] = a2;
  *(a2 + 2) = v7;
  (*(*a2 + 128))(a2, 16, 1, v6);
  (*(**(this + 10) + 128))(*(this + 10), 8, a3);
  return this;
}

uint64_t re::PhysXDistanceJoint::updateLimits(re::PhysXDistanceJoint *this)
{
  v2 = *(this + 10);
  (*(*v2 + 248))(v2, *(this + 14));
  v3.n128_u32[0] = *(this + 15);
  v4 = *(*v2 + 264);

  return v4(v2, v3);
}

void re::PhysXDistanceJoint::~PhysXDistanceJoint(re::PhysXDistanceJoint *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    (**v2)(v2);
  }

  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  v2 = *(this + 10);
  if (v2)
  {
    (**v2)(v2);
  }

  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::Constraint::~Constraint(re::Constraint *this)
{
  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ConstraintKernelBase::onAddConstraint(uint64_t a1)
{
  if (*((*(*a1 + 16))(a1) + 208) == 2)
  {
    v2 = (*(*a1 + 16))(a1);
    (*(*v2 + 312))(v2);
  }

  result = (*(*a1 + 24))(a1);
  if (*(result + 208) == 2)
  {
    v4 = *(*(*(*a1 + 24))(a1) + 312);

    return v4();
  }

  return result;
}

uint64_t re::ConstraintKernelBase::onRemoveConstraint(uint64_t a1)
{
  if (*((*(*a1 + 16))(a1) + 208) == 2)
  {
    v2 = (*(*a1 + 16))(a1);
    (*(*v2 + 312))(v2);
  }

  result = (*(*a1 + 24))(a1);
  if (*(result + 208) == 2)
  {
    v4 = *(*(*(*a1 + 24))(a1) + 312);

    return v4();
  }

  return result;
}

re::PhysicsSimulation *re::PhysicsSimulation::PhysicsSimulation(re::PhysicsSimulation *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  v2 = 0;
  *this = &unk_1F5D0D560;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 8) = 0x3C88888900000004;
  *(this + 72) = 0;
  *(this + 15) = 0;
  *(this + 10) = this;
  *(this + 11) = 0;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 16) = 0x100000006;
  *(this + 17) = &unk_1F5D0CEA8;
  *(this + 18) = this;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 19) = 0;
  *(this + 44) = 0;
  *(this + 212) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 228) = 0x7FFFFFFFLL;
  *(this + 240) = 0;
  *(this + 70) = 0;
  *(this + 31) = this;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 80) = 0;
  *(this + 41) = 0;
  *(this + 42) = this;
  *(this + 47) = 0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 92) = 0;
  *(this + 43) = 0;
  do
  {
    v3 = this + v2;
    *(v3 + 52) = 0;
    *(v3 + 49) = 0;
    *(v3 + 50) = 0;
    *(v3 + 48) = 0;
    v2 += 40;
    *(v3 + 102) = 0;
  }

  while (v2 != 320);
  *(this + 182) = 0;
  *(this + 90) = 0;
  *(this + 44) = 0u;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 192) = 0;
  *(this + 202) = 0;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 212) = 0;
  *(this + 116) = 0;
  *(this + 234) = 0;
  *(this + 230) = 0;
  *(this + 856) = 0u;
  *(this + 872) = 0u;
  *(this + 888) = 0u;
  *(this + 904) = 0u;
  return this;
}

void re::PhysicsSimulation::~PhysicsSimulation(re::PhysicsSimulation *this)
{
  *this = &unk_1F5D0D560;
  v2 = *(this + 109);
  if (v2)
  {
    CFRelease(v2);
    *(this + 109) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 896);
  for (i = 824; i != 744; i -= 40)
  {
    re::DynamicArray<unsigned long>::deinit(this + i);
  }

  do
  {
    re::DynamicArray<unsigned long>::deinit(this + i);
    i -= 40;
  }

  while (i != 664);
  do
  {
    re::DynamicArray<unsigned long>::deinit(this + i);
    i -= 40;
  }

  while (i != 344);
  re::DynamicArray<unsigned long>::deinit(this + 344);
  re::DynamicArray<unsigned long>::deinit(this + 296);
  re::DynamicArray<unsigned long>::deinit(this + 256);
  re::PhysicsJointCollection::~PhysicsJointCollection(this + 136);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

void re::PhysicsSimulation::setParentClockOrTimebase(re::PhysicsSimulation *this, void *cf)
{
  v2 = (this + 872);
  v3 = *(this + 109);
  if (cf)
  {
    if (!v3)
    {
      v5 = *MEMORY[0x1E695E480];
      HostTimeClock = CMClockGetHostTimeClock();
      CMTimebaseCreateWithSourceClock(v5, HostTimeClock, v2);
      CMTimebaseSetRate(*v2, 1.0);
    }

    v7 = CFGetTypeID(cf);
    TypeID = CMClockGetTypeID();
    v9 = *v2;
    if (v7 == TypeID)
    {

      CMTimebaseSetSourceClock(v9, cf);
    }

    else
    {

      CMTimebaseSetSourceTimebase(v9, cf);
    }
  }

  else if (v3)
  {
    CFRelease(v3);
    *v2 = 0;
  }
}

void re::PhysicsSimulation::update(re::PhysicsSimulation *this, float a2)
{
  if ((*(*this + 96))(this))
  {
    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v23, 7000, this, *(this + 13), *(this + 21), *(this + 34));
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v22);
    v5 = physx::shdfnd::g_alwaysUseLocking;
    v6 = physx::shdfnd::g_isLockingEnabled;
    if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
    {
      physx::shdfnd::g_isLockingEnabled = 0;
    }

    v7 = *(this + 109);
    if (v7)
    {
      CMTimebaseGetTime(&time, v7);
      v4.n128_f64[0] = CMTimeGetSeconds(&time);
      a2 = v4.n128_f64[0] - *(this + 110);
      *(this + 110) = v4.n128_u64[0];
    }

    v4.n128_f64[0] = a2;
    v8 = *(this + 111) + a2;
    *(this + 111) = v8;
    v4.n128_u32[0] = *(this + 17);
    if (*(this + 234) != 1)
    {
      v8 = v4.n128_f32[0];
      *(this + 111) = v4.n128_f32[0];
      *(this + 234) = 1;
    }

    v9 = v5 | v6;
    if (v8 >= (v4.n128_f32[0] * 0.95))
    {
      v13 = 1;
      while (1)
      {
        *(this + 111) = v8 - v4.n128_f32[0];
        LOBYTE(time.value) = 0;
        v14 = *(this + 4);
        if (v14)
        {
          (*(*v14 + 16))(v14, v13 == 1, this, &time);
          if (time.value)
          {
            if (v13 != 1)
            {
              goto LABEL_28;
            }

            break;
          }

          v4.n128_u32[0] = *(this + 17);
        }

        (*(*this + 64))(this, v4);
        (*(**(this + 7) + 224))(*(this + 7));
        v15 = *(this + 4);
        if (v15)
        {
          (*(*v15 + 24))(v15, this, *(this + 17));
        }

        else
        {
          (*(**(this + 7) + 208))(*(this + 7));
        }

        (*(**(this + 7) + 136))(*(this + 7));
        if (v13 >= *(this + 16))
        {
          *(this + 111) = 0;
          goto LABEL_28;
        }

        v8 = *(this + 111);
        v4.n128_u32[0] = *(this + 17);
        ++v13;
        if (v8 < (v4.n128_f32[0] * 0.95))
        {
          goto LABEL_28;
        }
      }
    }

    v10 = *(this + 4);
    if (v10)
    {
      (*(*v10 + 24))(v10, this, 0.0);
    }

LABEL_28:
    v16 = v9 & 1;
    v17 = *(this + 17) * 0.05;
    if (a2 > v17)
    {
      v18 = *(this + 111);
      if (fabsf(v18) < v17)
      {
        *(this + 111) = 0;
      }
    }

    (*(*this + 88))(this);
    if (physx::shdfnd::g_isLockingEnabled != v16)
    {
      physx::shdfnd::g_isLockingEnabled = v16;
    }

    re::ProfilerTimeGuard<(re::ProfilerStatistic)19>::end(v22);
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v23, v19, v20);
  }

  else
  {
    *(this + 234) = 0;
    v11 = *(this + 4);
    if (v11)
    {
      v12 = *(*v11 + 32);

      v12();
    }
  }
}

_anonymous_namespace_ *re::PhysicsSimulation::applyForceEffects(re::PhysicsSimulation *this)
{
  v2 = *(this + 34);
  v7[0] = *(this + 36);
  v7[1] = v2;
  result = re::DynamicArray<re::ForceEffect *>::operator=((this + 296), v7);
  v4 = *(this + 39);
  if (v4)
  {
    v5 = *(this + 41);
    v6 = 8 * v4;
    do
    {
      result = *v5;
      if (*(*v5 + 16) == 1)
      {
        result = (*(*result + 56))(result);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::ForceEffect *>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<char const*>::copy(this, 0, *a2, v4);
      re::DynamicArray<double>::resize(this, *(a2 + 8));
    }

    else
    {
      *(this + 2) = 0;
      ++*(this + 6);
    }
  }

  else if (v4)
  {
    re::DynamicArray<float *>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<char const*>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

uint64_t re::PhysicsSimulation::onRigidBodyAdded(re::PhysicsSimulation *this, re::RigidBody *a2)
{
  v4 = *(*(this + 7) + 128);
  *(*(a2 + 9) + 56) = v4;
  result = (*(*v4 + 192))(v4);
  v6 = *(this + 34);
  if (v6)
  {
    v7 = *(this + 36);
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      result = (*(*v9 + 64))(v9, a2);
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t re::PhysicsSimulation::onRigidBodyRemoved(re::PhysicsSimulation *this, re::RigidBody *a2)
{
  v4 = physx::shdfnd::g_alwaysUseLocking | physx::shdfnd::g_isLockingEnabled;
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
  {
    physx::shdfnd::g_isLockingEnabled = 0;
  }

  v5 = v4 & 1;
  v6 = *(this + 7);
  v7 = *(a2 + 9);
  re::ContactSetCollection::remove((*(v6 + 128) + 72), v7);
  result = (*(**(v6 + 128) + 200))(*(v6 + 128), v7);
  *(v7 + 7) = 0;
  v9 = *(this + 34);
  if (v9)
  {
    v10 = *(this + 36);
    v11 = 8 * v9;
    do
    {
      v12 = *v10++;
      result = (*(*v12 + 72))(v12, a2);
      v11 -= 8;
    }

    while (v11);
  }

  if (physx::shdfnd::g_isLockingEnabled != v5)
  {
    physx::shdfnd::g_isLockingEnabled = v5;
  }

  return result;
}

_anonymous_namespace_ *re::PhysicsSimulation::addConstraintToDelete(_anonymous_namespace_ *this, re::Constraint *a2)
{
  v5 = a2;
  if (a2)
  {
    v2 = *(this + 114);
    if (v2)
    {
      v3 = 8 * v2;
      for (i = *(this + 116); *i != a2; ++i)
      {
        v3 -= 8;
        if (!v3)
        {
          return re::DynamicArray<re::TransitionCondition *>::add((this + 896), &v5);
        }
      }
    }

    else
    {
      i = *(this + 116);
    }

    if (i == (*(this + 116) + 8 * v2))
    {
      return re::DynamicArray<re::TransitionCondition *>::add((this + 896), &v5);
    }
  }

  return this;
}

re *re::PhysicsSimulation::deleteConstraintsMarkedForDeletion(re *this)
{
  v1 = this;
  v22 = *MEMORY[0x1E69E9840];
  if (*(this + 114) >= 1)
  {
    v2 = *(this + 114) & 0x7FFFFFFFLL;
    do
    {
      v3 = v2--;
      v4 = *(v1 + 114);
      if (v4 <= v2)
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
        v18 = v2;
        v19 = 2048;
        v20 = v4;
        _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
        _os_crash_msg();
        __break(1u);
      }

      v5 = *(*(v1 + 116) + 8 * v2);
      v6 = *(v1 + 21);
      if (v6)
      {
        v7 = 8 * v6;
        v8 = *(v1 + 23);
        while (*v8 != v5)
        {
          ++v8;
          v7 -= 8;
          if (!v7)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        v8 = *(v1 + 23);
      }

      if (v8 != (*(v1 + 23) + 8 * v6))
      {
        *&v21[0] = *(*(v1 + 116) + 8 * v2);
        re::DynamicArray<re::Allocator const*>::removeStable(v1 + 19, v21);
        this = re::internal::destroyPersistent<re::PhysicsSimulation>("deleteConstraintsMarkedForDeletion", 257, v5);
      }

LABEL_12:
      ;
    }

    while (v3 > 1);
  }

  *(v1 + 114) = 0;
  ++*(v1 + 230);
  return this;
}

uint64_t re::PhysXGeneric6DOFConstraint::PhysXGeneric6DOFConstraint(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F5D0D610;
  v8 = re::Generic6DOFConstraint::Generic6DOFConstraint(a1, a1 + 344);
  *v8 = &unk_1F5D0D610;
  v8[43] = &unk_1F5D0DBF8;
  v8[44] = a2;
  a2[2] = v8;
  (*(*a2 + 128))(a2, 16, 1);
  (*(**(a1 + 352) + 128))(*(a1 + 352), 8, a4);
  *(a1 + 360) = a3;
  return a1;
}

uint64_t re::PhysXGeneric6DOFConstraint::updateLimits(re::PhysXGeneric6DOFConstraint *this, uint64_t a2)
{
  v3 = 0;
  v4 = *(this + 44);
  v5 = this + 56;
  v6 = this + 128;
  v7 = this + 104;
  while (1)
  {
    v8 = dword_1E3100C70[v3];
    if (v8 >= 3)
    {
      break;
    }

    v9 = &v6[16 * v8];
    v10 = dword_1E3100C70[v8];
    if (*v9 == 1)
    {
      (*(*v4 + 240))(v4, v10, 1);
      v11 = fabsf(*(v9 + 3));
      v33 = 0uLL;
      v34 = 0.0;
      v35 = v11;
      v36 = 0.0;
      *(&v33 + 1) = *(v9 + 4);
      (*(*v4 + 296))(v4, v10, &v33);
    }

    else
    {
      v12 = &v5[8 * v8];
      v13 = *v12;
      v14 = v12[1];
      v15 = *v12 <= v14;
      v16 = 2;
      if (*v12 == v14)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      if (!v15)
      {
        v17 = 0;
      }

      if (v17)
      {
        v18 = 0;
        v16 = v17 == 1;
      }

      else
      {
        v18 = 1;
        v13 = 0.0;
        v14 = 0.0;
      }

      v19 = *&v7[4 * v8];
      v20 = *(this + 45);
      (*(*v4 + 240))(v4, v10, v16);
      if ((v18 & 1) == 0)
      {
        *(&v33 + 1) = 0;
        v35 = v14;
        v36 = v13;
        v21 = *v20;
        v22 = *v20 * 0.01;
        if (v22 >= ((v13 * -0.49) + (v14 * 0.49)))
        {
          v22 = (v13 * -0.49) + (v14 * 0.49);
        }

        v34 = v22;
        LODWORD(v33) = v19;
        *(&v33 + 1) = v21 + v21;
        (*(*v4 + 296))(v4, v10, &v33);
      }
    }

    if (++v3 == 3)
    {
      v32 = *(this + 10);
      v33 = *(this + 11);
      re::setPxD6JointTwistLimit(v4, &v32, &v33, *(this + 29));
      v23 = *(this + 12);
      v31 = *(this + 11);
      v24 = *(this + 13);
      v30 = *(this + 12);
      v29 = v23;
      v28 = v24;
      return re::setPxD6JointSwingLimit(v4, &v31, &v30, &v29, &v28, *(this + 30), *(this + 31));
    }
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, dword_1E3100C70[v3], 3);
  result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v26, v27);
  __break(1u);
  return result;
}

uint64_t re::setPxD6JointTwistLimit(uint64_t a1, float *a2, uint64_t a3, float a4)
{
  if (*a3 == 1)
  {
    (*(*a1 + 240))(a1, 3, 1, a4);
    v6 = *(a3 + 12);
    v15 = 0;
    v17 = 0.0;
    v18 = v6;
    v19 = 0.0;
    v16 = *(a3 + 4);
    return (*(*a1 + 312))(a1, &v15);
  }

  else
  {
    v10 = *a2;
    v9 = a2[1];
    v11 = 2;
    if (*a2 == v9)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    if (*a2 > v9)
    {
      v12 = 0;
    }

    if (v12)
    {
      v13 = 0;
      v11 = v12 == 1;
    }

    else
    {
      v13 = 1;
      v10 = 0.0;
      v9 = 0.0;
    }

    result = (*(*a1 + 240))(a1, 3, v11);
    if ((v13 & 1) == 0)
    {
      v18 = v9;
      v19 = v10;
      v14 = (v9 - v10) * 0.49;
      if (v14 > 0.1)
      {
        v14 = 0.1;
      }

      v16 = 0;
      v17 = v14;
      v15 = LODWORD(a4) | 0x3F00000000000000;
      return (*(*a1 + 312))(a1, &v15);
    }
  }

  return result;
}

uint64_t re::setPxD6JointSwingLimit(uint64_t a1, float *a2, uint64_t a3, float *a4, uint64_t a5, float a6, float a7)
{
  if (*a3 != 1)
  {
    if ((*a5 & 1) == 0)
    {
      goto LABEL_12;
    }

    v15 = *(a5 + 12);
    v44 = 0u;
    v45 = 0u;
    v46 = v15;
    v16 = *(a5 + 4);
    goto LABEL_11;
  }

  if (!*a5)
  {
    v17 = *(a3 + 12);
    *&v44 = 0;
    *&v45 = 0;
    *(&v45 + 1) = v17;
    v46 = 0.0;
    v16 = *(a3 + 4);
LABEL_11:
    *(&v44 + 1) = v16;
    (*(*a1 + 344))(a1, &v44);
    goto LABEL_12;
  }

  v12 = *(a3 + 12);
  v13 = *(a5 + 12);
  *(&v45 + 4) = __PAIR64__(LODWORD(v13), LODWORD(v12));
  if (v12 < v13)
  {
    v13 = v12;
  }

  v14 = v13 * 0.49;
  if (v14 > 0.1)
  {
    v14 = 0.1;
  }

  v44 = 0x3F00000000000000uLL;
  *&v45 = v14;
  (*(*a1 + 328))(a1, &v44);
LABEL_12:
  v18 = *a2;
  v19 = a2[1];
  v20 = *a2 == v19;
  v21 = *a2 <= v19;
  v22 = 2;
  if (v20)
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  if (!v21)
  {
    v23 = 0;
  }

  v24 = 0.0;
  if (v23)
  {
    if (v23 == 1)
    {
      v25 = 0;
      v26 = 1;
      v27 = 1;
    }

    else
    {
      v27 = 0;
      v26 = 1;
      v25 = 1;
    }
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v18 = 0.0;
    v19 = 0.0;
    v27 = 2;
  }

  v28 = *a4;
  v29 = a4[1];
  if (*a4 == v29)
  {
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

  if (*a4 > v29)
  {
    v30 = 0;
  }

  if (v30)
  {
    if (v30 == 1)
    {
      v31 = 0;
      v32 = 1;
      v24 = v28;
      v22 = 1;
    }

    else
    {
      v22 = 0;
      v32 = 1;
      v24 = v28;
      v31 = 1;
    }
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v29 = 0.0;
  }

  (*(*a1 + 240))(a1, 4, v27);
  result = (*(*a1 + 240))(a1, 5, v22);
  if ((v26 & v32) != 1)
  {
    if (!v26)
    {
      if (!v32)
      {
        return result;
      }

      *(&v44 + 1) = 0;
      *(&v45 + 4) = 0;
      *(&v45 + 3) = v24;
      v46 = v29;
      v43 = (v29 - v24) * 0.49;
      if (v43 > 0.1)
      {
        v43 = 0.1;
      }

      if (v43 > 0.0)
      {
        v43 = 0.0;
      }

      v20 = v43 == -1.0;
      v37 = 1.0;
      if (!v20)
      {
        v37 = 0.0;
      }

      goto LABEL_49;
    }

    v38 = (v19 - v18) * 0.49;
    if (v38 > 0.1)
    {
      v38 = 0.1;
    }

    v20 = fminf(v38, 0.0) == -1.0;
    *(&v44 + 1) = 0;
    *(&v45 + 1) = LODWORD(v19);
    v46 = 0.0;
    v37 = 1.0;
    if (!v20)
    {
      v37 = 0.0;
    }

LABEL_48:
    *(&v45 + 1) = v18;
LABEL_49:
    *&v45 = v37;
    DWORD1(v44) = 1056964608;
    if (a6 >= a7)
    {
      v39 = a6;
    }

    else
    {
      v39 = a7;
    }

    *&v44 = v39;
    return (*(*a1 + 344))(a1, &v44);
  }

  if ((v25 | v31) == 1)
  {
    *(&v44 + 1) = 0;
    *(&v45 + 1) = __PAIR64__(LODWORD(v24), LODWORD(v19));
    v46 = v29;
    v34 = (v19 - v18) * 0.49;
    v35 = v29 - v24;
    if (v34 > 0.1)
    {
      v34 = 0.1;
    }

    v36 = v35 * 0.49;
    if ((v35 * 0.49) > 0.1)
    {
      v36 = 0.1;
    }

    if (v34 >= v36)
    {
      v34 = v36;
    }

    v20 = v34 == -1.0;
    v37 = 0.0;
    if (v20)
    {
      v37 = 1.0;
    }

    goto LABEL_48;
  }

  *(&v45 + 4) = __PAIR64__(LODWORD(v29), LODWORD(v19));
  if (v19 >= v29)
  {
    v40 = v29;
  }

  else
  {
    v40 = v19;
  }

  v41 = v40 * 0.49;
  if (v41 > 0.1)
  {
    v41 = 0.1;
  }

  *(&v44 + 1) = 0;
  *&v45 = v41;
  DWORD1(v44) = 1056964608;
  if (a6 >= a7)
  {
    v42 = a6;
  }

  else
  {
    v42 = a7;
  }

  *&v44 = v42;
  return (*(*a1 + 328))(a1, &v44);
}

uint64_t re::PhysXGeneric6DOFConstraint::updateMotor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 352);
  v4 = *(a3 + 8);
  v23 = 0x3F80000000000000;
  v24 = v4;
  v25 = 0;
  if (a2 >= 6)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unsupported drive axis!", "!Unreachable code", "physxDriveAxis", 66);
    result = _os_crash("assertion failure: (!Unreachable code) Unsupported drive axis!");
    __break(1u);
  }

  else
  {
    v6 = (*(*v3 + 360))(v3, dword_1E3100CA0[a2], &v23);
    v6.n128_u32[0] = *(a1 + 228);
    v6.n128_u32[1] = *(a1 + 248);
    v6.n128_u32[2] = *(a1 + 268);
    v22 = v6;
    v6.n128_u32[0] = *(a1 + 288);
    v6.n128_u32[1] = *(a1 + 308);
    v6.n128_u32[2] = *(a1 + 328);
    v21 = v6;
    (*(*v3 + 392))(v3, &v22, &v21, 1);
    v7 = *(a1 + 260);
    v8 = *(a1 + 280);
    v20[4] = *(a1 + 240);
    v20[5] = v7;
    v20[6] = v8;
    v9 = __sincosf_stret(*(a1 + 300) * 0.5);
    v10 = v9.__sinval * 0.0;
    v11 = __sincosf_stret(*(a1 + 320) * 0.5);
    v12 = v11.__sinval * 0.0;
    v13 = __sincosf_stret(*(a1 + 340) * 0.5);
    v14 = v11.__cosval * (v13.__sinval * 0.0);
    v15 = ((v14 + (v13.__cosval * v12)) + ((v13.__sinval * 0.0) * v12)) - (v11.__sinval * v13.__sinval);
    v16 = ((v14 + (v13.__cosval * v11.__sinval)) + (v13.__sinval * v12)) - (v12 * (v13.__sinval * 0.0));
    v17 = (((v11.__cosval * v13.__sinval) + (v13.__cosval * v12)) + ((v13.__sinval * 0.0) * v11.__sinval)) - (v12 * (v13.__sinval * 0.0));
    v18 = (((v13.__cosval * v11.__cosval) - ((v13.__sinval * 0.0) * v12)) - ((v13.__sinval * 0.0) * v11.__sinval)) - (v13.__sinval * v12);
    v20[0] = (((v9.__cosval * v15) + (v18 * v9.__sinval)) + (v16 * v10)) - (v10 * v17);
    v20[1] = (((v9.__cosval * v16) + (v18 * v10)) + (v17 * v9.__sinval)) - (v10 * v15);
    v20[2] = (((v9.__cosval * v17) + (v18 * v10)) + (v15 * v10)) - (v9.__sinval * v16);
    v20[3] = (((v18 * v9.__cosval) - (v15 * v9.__sinval)) - (v16 * v10)) - (v17 * v10);
    return (*(*v3 + 376))(v3, v20, 1);
  }

  return result;
}

void re::PhysXGeneric6DOFConstraint::~PhysXGeneric6DOFConstraint(re::PhysXGeneric6DOFConstraint *this)
{
  v2 = *(this + 44);
  if (v2)
  {
    (**v2)(v2);
  }

  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  v2 = *(this + 44);
  if (v2)
  {
    (**v2)(v2);
  }

  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

float re::AngularLimit::range(re::AngularLimit *this, float a2, float a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3 - a2;
  if ((a3 - a2) >= 6.2657)
  {
    v6 = *re::physicsLogObjects(this);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218496;
      v9 = ((a2 * 180.0) * 0.31831);
      v10 = 2048;
      v11 = ((a3 * 180.0) * 0.31831);
      v12 = 2048;
      v13 = ((v5 * 180.0) * 0.31831);
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "Warning: Range of angular limit is too large (min = %f°, max = %f°, range = %f°). The range needs to be significantly less than 360°. Otherwise, the angular limit might be ineffective.", &v8, 0x20u);
    }
  }

  return a2;
}

void *re::allocInfo_LinearLimit(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BCFB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BCFB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BCFF0, "LinearLimit");
    __cxa_guard_release(&qword_1EE1BCFB8);
  }

  return &unk_1EE1BCFF0;
}

void re::initInfo_LinearLimit(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x1CF05B5D2D046ECLL;
  v14[1] = "LinearLimit";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&_MergedGlobals_492, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_492))
  {
    v5 = re::introspectionAllocator();
    v7 = re::introspect_float(1, v6);
    v8 = (*(*v5 + 32))(v5, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "m_min";
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1BCFD0 = v8;
    v9 = re::introspectionAllocator();
    v11 = re::introspect_float(1, v10);
    v12 = (*(*v9 + 32))(v9, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "m_max";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x400000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1BCFD8 = v12;
    __cxa_guard_release(&_MergedGlobals_492);
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BCFD0;
  *(this + 9) = re::internal::defaultConstruct<re::LinearLimit>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::LinearLimit>;
  *(this + 13) = re::internal::defaultConstructV2<re::LinearLimit>;
  *(this + 14) = re::internal::defaultDestructV2<re::LinearLimit>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

double re::internal::defaultConstruct<re::LinearLimit>(uint64_t a1, uint64_t a2, double *a3)
{
  __asm { FMOV            V0.2S, #1.0 }

  result = -_D0;
  *a3 = result;
  return result;
}

double re::internal::defaultConstructV2<re::LinearLimit>(double *a1)
{
  __asm { FMOV            V0.2S, #1.0 }

  result = -_D0;
  *a1 = result;
  return result;
}

void *re::allocInfo_AngularLimit(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BCFC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BCFC8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BD080, "AngularLimit");
    __cxa_guard_release(&qword_1EE1BCFC8);
  }

  return &unk_1EE1BD080;
}

void re::initInfo_AngularLimit(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x306BACEF40AE7E32;
  v14[1] = "AngularLimit";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1BCFC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BCFC0))
  {
    v5 = re::introspectionAllocator();
    v7 = re::introspect_float(1, v6);
    v8 = (*(*v5 + 32))(v5, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "m_min";
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1BCFE0 = v8;
    v9 = re::introspectionAllocator();
    v11 = re::introspect_float(1, v10);
    v12 = (*(*v9 + 32))(v9, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "m_max";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x400000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1BCFE8 = v12;
    __cxa_guard_release(&qword_1EE1BCFC0);
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BCFE0;
  *(this + 9) = re::internal::defaultConstruct<re::AngularLimit>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AngularLimit>;
  *(this + 13) = re::internal::defaultConstructV2<re::AngularLimit>;
  *(this + 14) = re::internal::defaultDestructV2<re::AngularLimit>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

double re::internal::defaultConstruct<re::AngularLimit>(uint64_t a1, uint64_t a2, double *a3)
{
  __asm { FMOV            V0.2S, #1.0 }

  result = -_D0;
  *a3 = result;
  return result;
}

double re::internal::defaultConstructV2<re::AngularLimit>(double *a1)
{
  __asm { FMOV            V0.2S, #1.0 }

  result = -_D0;
  *a1 = result;
  return result;
}

_DWORD *re::DampedSpring::onApply(float32x4_t *this)
{
  v2 = this[1].i64[1];
  if (v2)
  {
    (*(*v2 + 40))(&v57);
    v3 = this[3];
    v4 = vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL);
    v5 = vnegq_f32(v58);
    v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL), v5), v3, v4);
    v7 = vaddq_f32(v6, v6);
    v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
    v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v5), v8, v4);
    v10 = vaddq_f32(v57, vaddq_f32(vaddq_f32(v3, vmulq_laneq_f32(v8, v58, 3)), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL)));
    v56 = v10;
    v11 = this[1].i64[1];
    if (v11)
    {
      v50 = v10;
      v12.i64[0] = (*(*v11 + 216))(this[1].i64[1]);
      v12.i64[1] = v13;
      v52 = v12;
      v14.i64[0] = (*(*v11 + 232))(v11);
      v14.i64[1] = v15;
      v48 = v14;
      (*(*v11 + 208))(&v57, v11);
      v16 = vsubq_f32(v50, v57);
      v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL), vnegq_f32(v48)), v16, vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL));
      v18 = vaddq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v52);
      goto LABEL_6;
    }
  }

  else
  {
    v56 = this[3];
  }

  v18 = 0uLL;
LABEL_6:
  v19 = this[2].i64[0];
  if (v19)
  {
    v53 = v18;
    (*(*v19 + 40))(&v57);
    v20 = this[4];
    v21 = vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL);
    v22 = vnegq_f32(v58);
    v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), v22), v20, v21);
    v24 = vaddq_f32(v23, v23);
    v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
    v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v22), v25, v21);
    v27 = vaddq_f32(v57, vaddq_f32(vaddq_f32(v20, vmulq_laneq_f32(v25, v58, 3)), vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL)));
    v55 = v27;
    v28 = this[2].i64[0];
    if (v28)
    {
      v51 = v27;
      v29.i64[0] = (*(*v28 + 216))(this[2].i64[0]);
      v29.i64[1] = v30;
      v49 = v29;
      v31.i64[0] = (*(*v28 + 232))(v28);
      v31.i64[1] = v32;
      v47 = v31;
      (*(*v28 + 208))(&v57, v28);
      v27 = v51;
      v33 = vsubq_f32(v51, v57);
      v34 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), vnegq_f32(v47)), v33, vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL));
      v35 = vaddq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), v49);
    }

    else
    {
      v35 = 0uLL;
    }

    v18 = v53;
  }

  else
  {
    v55 = this[4];
    v35 = 0uLL;
    v27 = v55;
  }

  v36 = vsubq_f32(v27, v56);
  v37 = vmulq_f32(v36, v36);
  v38 = v37.f32[2] + vaddv_f32(*v37.f32);
  v39 = sqrtf(v38);
  if (fabsf(v38) < 1.0e-10)
  {
    v43 = xmmword_1E3047680;
  }

  else
  {
    v40 = v38;
    v41 = vrsqrte_f32(LODWORD(v38));
    v42 = vmul_f32(v41, vrsqrts_f32(LODWORD(v40), vmul_f32(v41, v41)));
    v43 = vmulq_n_f32(v36, vmul_f32(v42, vrsqrts_f32(LODWORD(v40), vmul_f32(v42, v42))).f32[0]);
  }

  v44 = vmulq_f32(vsubq_f32(v18, v35), v43);
  v57 = vaddq_f32(vmulq_n_f32(v43, this[5].f32[1] * (v39 - this[5].f32[0])), vmulq_n_f32(v43, -(this[5].f32[2] * (v44.f32[2] + vaddv_f32(*v44.f32)))));
  v45 = this[1].i64[1];
  if (v45 && v45[52] == 2)
  {
    (*(*v45 + 376))(v45, &v57, &v56, 0);
  }

  result = this[2].i64[0];
  if (result)
  {
    if (result[52] == 2)
    {
      v54 = vnegq_f32(v57);
      return (*(*result + 376))(result, &v54, &v55, 0);
    }
  }

  return result;
}

void re::AngularSpring::onApply(re::AngularSpring *this)
{
  (*(**(this + 3) + 40))(&v94);
  v2 = *(this + 3);
  v3 = vextq_s8(vuzp1q_s32(v95, v95), v95, 0xCuLL);
  v4 = vnegq_f32(v95);
  v5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL), v4), v2, v3);
  v6 = vaddq_f32(v5, v5);
  v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v8 = vaddq_f32(v2, vmulq_laneq_f32(v7, v95, 3));
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), v4), v7, v3);
  v91 = vaddq_f32(v8, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  (*(**(this + 4) + 40))(&v94);
  v10 = *(this + 4);
  v11 = vextq_s8(vuzp1q_s32(v95, v95), v95, 0xCuLL);
  v12 = vnegq_f32(v95);
  v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), v12), v10, v11);
  v14 = vaddq_f32(v13, v13);
  v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
  v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v12), v15, v11);
  v17 = vaddq_f32(v94, vaddq_f32(vaddq_f32(v10, vmulq_laneq_f32(v15, v95, 3)), vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL)));
  v18 = vmulq_f32(v91, v17);
  if ((v18.f32[2] + vaddv_f32(*v18.f32)) >= 0.0)
  {
    v50 = vaddq_f32(v91, v17);
    v51 = vmulq_f32(v50, v50);
    *&v52 = v51.f32[2] + vaddv_f32(*v51.f32);
    *v51.f32 = vrsqrte_f32(v52);
    *v51.f32 = vmul_f32(*v51.f32, vrsqrts_f32(v52, vmul_f32(*v51.f32, *v51.f32)));
    v53 = vmulq_n_f32(v50, vmul_f32(*v51.f32, vrsqrts_f32(v52, vmul_f32(*v51.f32, *v51.f32))).f32[0]);
    v54 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL), vnegq_f32(v91)), v53, vextq_s8(vuzp1q_s32(v91, v91), v91, 0xCuLL));
    v49 = vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL);
    v55 = vmulq_f32(v91, v53);
    *&v49.i32[3] = v55.f32[2] + vaddv_f32(*v55.f32);
  }

  else
  {
    v20 = vmulq_f32(v91, v91);
    v19 = vaddv_f32(*v20.f32);
    v20.i32[1] = 0;
    *&v21 = v20.f32[2] + v19;
    v22 = vrsqrte_f32(COERCE_UNSIGNED_INT(v20.f32[2] + v19));
    v23 = vmul_f32(v22, vrsqrts_f32(v21, vmul_f32(v22, v22)));
    v24 = vmulq_n_f32(v91, vmul_f32(v23, vrsqrts_f32(v21, vmul_f32(v23, v23))).f32[0]);
    v25 = vmulq_f32(v17, v17);
    *&v26 = v25.f32[2] + vaddv_f32(*v25.f32);
    *v25.f32 = vrsqrte_f32(v26);
    *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32)));
    v27 = vaddq_f32(v24, vmulq_n_f32(v17, vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32))).f32[0]));
    v28 = vmulq_f32(v27, v27);
    v29 = v28.f32[2] + vaddv_f32(*v28.f32);
    if (v29 <= 1.4211e-14)
    {
      v56 = vabsq_f32(v91);
      v57 = v56.f32[1];
      v58 = v56.f32[2];
      if (v56.f32[0] > v56.f32[1] || v56.f32[0] > v56.f32[2])
      {
        v60 = vextq_s8(vuzp1q_s32(v91, v91), v91, 0xCuLL);
        if (v57 <= v58)
        {
          v61 = vmulq_f32(v91, xmmword_1E30661E0);
          v62 = xmmword_1E3047680;
        }

        else
        {
          v61 = vmulq_f32(v91, xmmword_1E30661F0);
          v62 = xmmword_1E30476A0;
        }
      }

      else
      {
        v60 = vextq_s8(vuzp1q_s32(v91, v91), v91, 0xCuLL);
        v61 = vmulq_f32(v91, xmmword_1E30661D0);
        v62 = xmmword_1E3047670;
      }

      v63 = vmlaq_f32(v61, v62, v60);
      v64 = vextq_s8(vuzp1q_s32(v63, v63), v63, 0xCuLL);
      v65 = vmulq_f32(v63, v63);
      *&v66 = v65.f32[1] + (v65.f32[2] + v65.f32[0]);
      *v65.f32 = vrsqrte_f32(v66);
      *v65.f32 = vmul_f32(*v65.f32, vrsqrts_f32(v66, vmul_f32(*v65.f32, *v65.f32)));
      v49 = vmulq_n_f32(v64, vmul_f32(*v65.f32, vrsqrts_f32(v66, vmul_f32(*v65.f32, *v65.f32))).f32[0]);
      v49.i32[3] = 0;
    }

    else
    {
      v30 = v29;
      v31 = vrsqrte_f32(LODWORD(v29));
      v32 = vmul_f32(v31, vrsqrts_f32(LODWORD(v30), vmul_f32(v31, v31)));
      v33 = vmulq_n_f32(v27, vmul_f32(v32, vrsqrts_f32(LODWORD(v30), vmul_f32(v32, v32))).f32[0]);
      v34 = vaddq_f32(v91, v33);
      v35 = vmulq_f32(v34, v34);
      *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
      *v35.f32 = vrsqrte_f32(v36);
      *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32)));
      v37 = vmulq_n_f32(v34, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]);
      v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), vnegq_f32(v91)), v37, vextq_s8(vuzp1q_s32(v91, v91), v91, 0xCuLL));
      v39 = vmulq_f32(v91, v37);
      v40 = vaddq_f32(v17, v33);
      v41 = vmulq_f32(v40, v40);
      v20.f32[0] = v41.f32[2] + vaddv_f32(*v41.f32);
      *v41.f32 = vrsqrte_f32(*v20.f32);
      *v41.f32 = vmul_f32(*v41.f32, vrsqrts_f32(*v20.f32, vmul_f32(*v41.f32, *v41.f32)));
      v42 = vmulq_n_f32(v40, vmul_f32(*v41.f32, vrsqrts_f32(*v20.f32, vmul_f32(*v41.f32, *v41.f32))).f32[0]);
      v43 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), vnegq_f32(v33)), v42, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
      v44 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
      v45 = vmulq_f32(v33, v42);
      *&v44.i32[3] = v45.f32[2] + vaddv_f32(*v45.f32);
      v46 = vnegq_f32(v44);
      v47 = vtrn2q_s32(v44, vtrn1q_s32(v44, v46));
      v48 = vrev64q_s32(v44);
      v48.i32[0] = v46.i32[1];
      v48.i32[3] = v46.i32[2];
      v49 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, v39.f32[2] + vaddv_f32(*v39.f32)), v48, *v38.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v44, v46, 8uLL), v38.f32[0]), vextq_s8(v47, v47, 8uLL), v38, 2));
    }
  }

  v92 = v49;
  v67 = *&v49.i32[3];
  v68 = fabsf(*&v49.i32[3]);
  if (v68 <= 1.0 || fabsf(v68 + -1.0) < (((v68 + 1.0) + 1.0) * 0.00001))
  {
    if (*&v49.i32[3] > 1.0)
    {
      v67 = 1.0;
    }

    if (v67 < -1.0)
    {
      v67 = -1.0;
    }

    v70 = acosf(v67);
    v69 = v70 + v70;
  }

  else
  {
    v69 = NAN;
  }

  if (fabsf(v69) >= 0.000001)
  {
    *(this + 22) = 0;
    v71 = *(this + 20);
    if (v69 <= v71 || (v72 = *(this + 23), v72 <= 0.000001) || (v73 = (v69 - v71) / v72, *(this + 22) = v73, v73 <= 1.0))
    {
      v74 = *(this + 3);
      v75 = v74[52];
      v76 = 0.0;
      v77 = 0;
      if (v75 == 2)
      {
        v77.i32[0] = v74[48];
      }

      v78 = *(this + 4);
      v79 = *(v78 + 208);
      if (v79 == 2)
      {
        v76 = *(v78 + 192);
      }

      v80 = *v77.i32 + v76;
      if ((*v77.i32 + v76) != 0.0)
      {
        v81 = -(*(this + 21) * (v69 - v71));
        v82 = vmulq_f32(v92, v92);
        v83 = v82.f32[2] + vaddv_f32(*v82.f32);
        v84 = 0uLL;
        if (fabsf(v83) >= 1.0e-10)
        {
          v85 = v83;
          v86 = vrsqrte_f32(LODWORD(v83));
          v87 = vmul_f32(v86, vrsqrts_f32(LODWORD(v85), vmul_f32(v86, v86)));
          v84 = vmulq_n_f32(v92, vmul_f32(v87, vrsqrts_f32(LODWORD(v85), vmul_f32(v87, v87))).f32[0]);
        }

        v88 = vmulq_n_f32(v84, v81);
        v89 = v76 / v80;
        if (v76 == 0.0)
        {
          v89 = 1.0;
        }

        v90 = vmulq_n_f32(v88, v89);
        if (*v77.i32 == 0.0)
        {
          *v77.i32 = 1.0;
        }

        else
        {
          *v77.i32 = *v77.i32 / v80;
        }

        v93 = vmulq_f32(v88, vnegq_f32(vdupq_lane_s32(v77, 0)));
        v94 = v90;
        if (v75 == 2)
        {
          (*(*v74 + 392))(v74, &v94, 0);
          v78 = *(this + 4);
          v79 = *(v78 + 208);
        }

        if (v79 == 2)
        {
          (*(*v78 + 392))(v78, &v93, 0);
        }
      }
    }

    else if (*(this + 16))
    {
      *(this + 16) = 0;
      (*(*this + 32))(this);
    }
  }
}

uint64_t WGLComputeFalloff(uint64_t result, uint64_t a2, double a3, float a4)
{
  v6 = *&a3;
  if (*&a3 > 0.0)
  {
    HIDWORD(v7) = 0;
    LODWORD(a3) = 1.0;
    *&v7 = 1.0 - fminf(fmaxf(a4 / v6, 0.0), 1.0);
    if (result <= 2)
    {
      if (result <= 2)
      {
        return result;
      }

LABEL_11:
      re::internal::assertLog(4, a2, a3, v7, "assertion failure: '%s' (%s:line %i) Unexpected falloff type.", "!Unreachable code", "WGLComputeFalloff", 32, v4, v5);
      result = _os_crash("assertion failure: (!Unreachable code) Unexpected falloff type.");
      __break(1u);
      return result;
    }

    if (result != 3 && result != 4 && result != 5)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t re::PhysicsFactory::defaultFactory(re::PhysicsFactory *this, re::CollisionFactory *a2)
{
  result = re::PhysicsFactory::m_defaultFactory;
  if (!re::PhysicsFactory::m_defaultFactory)
  {
    re::PhysicsFactory::m_lazilyInitializedPhysicsFactory = 1;
    {
      re::initCollision(0);
    }

    re::PhysicsFactory::init(v3, a2);
    return re::PhysicsFactory::m_defaultFactory;
  }

  return result;
}

re *re::PhysicsFactory::init(re *this, re::CollisionFactory *a2)
{
  v2 = re::PhysicsFactory::m_factoryInitCount;
  if (!re::PhysicsFactory::m_factoryInitCount)
  {
    v3 = this;
    v4 = re::globalAllocators(this);
    re::PhysicsFactory::m_defaultAllocator = v4[2];
    v5 = re::globalAllocators(v4);
    v6 = (*(*v5[2] + 32))(v5[2], 48, 8);
    this = re::PhysXPhysicsFactory::PhysXPhysicsFactory(v6, v3, v7, v8);
    re::PhysicsFactory::m_defaultFactory = this;
    v2 = re::PhysicsFactory::m_factoryInitCount;
  }

  re::PhysicsFactory::m_factoryInitCount = v2 + 1;
  return this;
}

re *re::PhysicsFactory::deinit(re::PhysicsFactory *this)
{
  if (!--re::PhysicsFactory::m_factoryInitCount)
  {
    result = re::internal::destroyPersistent<re::PhysicsFactory>("deinit", 40, re::PhysicsFactory::m_defaultFactory);
    re::PhysicsFactory::m_lazilyInitializedPhysicsFactory = 0;
    re::PhysicsFactory::m_defaultFactory = 0;
  }

  return result;
}

re *re::internal::destroyPersistent<re::PhysicsFactory>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

double WGLGoalComputeLinearForce(float32x2_t *a1, uint64_t a2, float32x4_t a3, double a4, float32x4_t a5, float32x4_t a6)
{
  v6 = a1[6].f32[0];
  v7 = 0.0;
  if (v6 > 0.0)
  {
    v8 = vmulq_f32(a6, xmmword_1E3100CF0);
    v9 = vnegq_f32(v8);
    v10 = vtrn2q_s32(v8, vtrn1q_s32(v8, v9));
    v11 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v8, v9, 8uLL), *a1, 1), vextq_s8(v10, v10, 8uLL), COERCE_FLOAT(*a1->f32));
    v12 = vrev64q_s32(v8);
    v12.i32[0] = v9.i32[1];
    v12.i32[3] = v9.i32[2];
    v13 = vmlaq_laneq_f32(v11, v12, *a1->f32, 2);
    v14 = vnegq_f32(v13);
    v15 = vtrn2q_s32(v13, vtrn1q_s32(v13, v14));
    v16 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v13, v14, 8uLL), *a6.f32, 1), vextq_s8(v15, v15, 8uLL), a6.f32[0]);
    v17 = vrev64q_s32(v13);
    v17.i32[0] = v14.i32[1];
    v17.i32[3] = v14.i32[2];
    v21 = vsubq_f32(vaddq_f32(a5, vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v13, a6, 3), v17, a6, 2), v16)), a3);
    a3.i32[0] = a1[7].i32[1];
    v18 = vmulq_f32(v21, v21);
    WGLComputeFalloff(a1[10].u32[1], a2, *a3.i64, sqrtf(v18.f32[2] + vaddv_f32(*v18.f32)));
    *&v7 = vmulq_n_f32(v21, v6 * v19).u64[0];
  }

  return v7;
}

double WGLGoalComputeAngularTorque(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v6 = *(a1 + 52);
  v7 = 0.0;
  if (v6 > 0.0)
  {
    v9 = *(a1 + 16);
    v10 = vnegq_f32(v9);
    v11 = vtrn2q_s32(v9, vtrn1q_s32(v9, v10));
    v12 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v9, v10, 8uLL), *a5.f32, 1), vextq_s8(v11, v11, 8uLL), a5.f32[0]);
    v13 = vrev64q_s32(v9);
    v13.i32[0] = v10.i32[1];
    v13.i32[3] = v10.i32[2];
    v14 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v9, a5, 3), v13, a5, 2), v12);
    v15 = vmulq_f32(v14, v14);
    *v15.i8 = vadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
    v15.i32[0] = vadd_f32(*v15.i8, vdup_lane_s32(*v15.i8, 1)).u32[0];
    *v13.f32 = vrecpe_f32(v15.u32[0]);
    *v13.f32 = vmul_f32(*v13.f32, vrecps_f32(v15.u32[0], *v13.f32));
    v16 = vmulq_n_f32(vmulq_f32(v14, xmmword_1E3100CF0), vmul_f32(*v13.f32, vrecps_f32(v15.u32[0], *v13.f32)).f32[0]);
    v17 = vnegq_f32(v16);
    v18 = vtrn2q_s32(v16, vtrn1q_s32(v16, v17));
    v19 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v16, v17, 8uLL), *a3.f32, 1), vextq_s8(v18, v18, 8uLL), a3.f32[0]);
    v20 = vrev64q_s32(v16);
    v20.i32[0] = v17.i32[1];
    v20.i32[3] = v17.i32[2];
    v21 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v16, a3, 3), v20, a3, 2), v19);
    v22 = vmulq_f32(v21, v21);
    v23 = vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
    v48 = a5;
    if (vaddv_f32(v23) == 0.0)
    {
      v24 = xmmword_1E30474D0;
    }

    else
    {
      v25 = vadd_f32(v23, vdup_lane_s32(v23, 1)).u32[0];
      v26 = vrsqrte_f32(v25);
      v27 = vmul_f32(v26, vrsqrts_f32(v25, vmul_f32(v26, v26)));
      v24 = vmulq_n_f32(v21, vmul_f32(v27, vrsqrts_f32(v25, vmul_f32(v27, v27))).f32[0]);
    }

    v28 = vmulq_f32(v24, v24);
    v45 = *a1;
    v46 = v28.f32[2] + vaddv_f32(*v28.f32);
    v47 = v24;
    *&v30 = atan2f(sqrtf(v46), v24.f32[3]);
    *&v30 = *&v30 + *&v30;
    v7 = 0.0;
    if (*&v30 != 0.0)
    {
      v31 = vmulq_f32(v48, xmmword_1E3100CF0);
      v32 = vnegq_f32(v31);
      v33 = vtrn2q_s32(v31, vtrn1q_s32(v31, v32));
      v34 = vextq_s8(v31, v32, 8uLL);
      v35 = vrev64q_s32(v31);
      v35.i32[0] = v32.i32[1];
      v35.i32[3] = v32.i32[2];
      v36 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v34, *v45.f32, 1), vextq_s8(v33, v33, 8uLL), v45.f32[0]), v35, v45, 2);
      v37 = vnegq_f32(v36);
      v38 = vrev64q_s32(v36);
      v39 = vtrn2q_s32(v36, vtrn1q_s32(v36, v37));
      v38.i32[0] = v37.i32[1];
      v38.i32[3] = v37.i32[2];
      v40 = vsubq_f32(vaddq_f32(a4, vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v36, v48, 3), v38, v48, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v36, v37, 8uLL), *v48.f32, 1), vextq_s8(v39, v39, 8uLL), v48.f32[0]))), a2);
      *v36.i8 = vrsqrte_f32(LODWORD(v46));
      *v36.i8 = vmul_f32(*v36.i8, vrsqrts_f32(LODWORD(v46), vmul_f32(*v36.i8, *v36.i8)));
      v52 = vmulq_n_f32(v47, vmul_f32(*v36.i8, vrsqrts_f32(LODWORD(v46), vmul_f32(*v36.i8, *v36.i8))).f32[0]);
      v38.f32[0] = 6.28318531 - *&v30;
      v41 = -v38.f32[0];
      if (*&v30 > 3.14159265)
      {
        *&v30 = v41;
      }

      v50 = *&v30;
      LODWORD(v30) = *(a1 + 60);
      v42 = vmulq_f32(v40, v40);
      WGLComputeFalloff(*(a1 + 84), v29, v30, sqrtf(v42.f32[2] + vaddv_f32(*v42.f32)));
      *&v7 = vmulq_n_f32(vmulq_n_f32(v52, v50), v6 * v43).u64[0];
    }
  }

  return v7;
}

void *re::introspect_MotionType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Static";
    re::introspect_MotionType(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "Kinematic";
    qword_1EE1C68F8 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "Dynamic";
    qword_1EE1C6900 = v14;
  }

  {
    v15 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_MotionType(BOOL)::info, "MotionType", 4, 4, 1, 1);
    *v15 = &unk_1F5D0C658;
    *(v15 + 8) = &re::introspect_MotionType(BOOL)::enumTable;
    *(v15 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_MotionType(BOOL)::isInitialized)
    {
      return &re::introspect_MotionType(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v17);
    v3 = re::introspect_MotionType(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v17);
    if (v3)
    {
      return &re::introspect_MotionType(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_MotionType(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_MotionType(BOOL)::info;
    }
  }

  re::introspect_MotionType(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_MotionType(BOOL)::info, a2);
  v16[0] = 0xF296097B3A860;
  v16[1] = "MotionType";
  xmmword_1EE1C68C8 = v17;
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

  return &re::introspect_MotionType(BOOL)::info;
}

uint64_t *re::introspect_PhysicsJointType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BD118, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BD120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BD120))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BD168, "PhysicsJointType", 4, 4, 1, 1);
      qword_1EE1BD168 = &unk_1F5D0C658;
      qword_1EE1BD1A8 = &re::introspect_PhysicsJointType(BOOL)::enumTable;
      dword_1EE1BD178 = 9;
      __cxa_guard_release(&qword_1EE1BD120);
    }

    if (v2)
    {
      if (_MergedGlobals_493)
      {
        return &qword_1EE1BD168;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v54);
      v3 = _MergedGlobals_493;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v54);
      if (v3)
      {
        return &qword_1EE1BD168;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (_MergedGlobals_493)
      {
        goto LABEL_46;
      }
    }

    _MergedGlobals_493 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BD168, a2);
    v51 = 0x3A6AA135739A28FALL;
    v52 = "PhysicsJointType";
    v55 = 0x607DD0F01DCLL;
    v56 = "uint32_t";
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
    if (__cxa_guard_acquire(&qword_1EE1BD118))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 0;
      *(v35 + 16) = "Unknown";
      qword_1EE1BD128 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 1;
      *(v37 + 16) = "FixedJoint";
      qword_1EE1BD130 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 2;
      *(v39 + 16) = "SphericalJoint";
      qword_1EE1BD138 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 3;
      *(v41 + 16) = "RevoluteJoint";
      qword_1EE1BD140 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 4;
      *(v43 + 16) = "PrismaticJoint";
      qword_1EE1BD148 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 5;
      *(v45 + 16) = "DistanceJoint";
      qword_1EE1BD150 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 6;
      *(v47 + 16) = "CustomJoint";
      qword_1EE1BD158 = v47;
      v48 = re::introspectionAllocator();
      v49 = (*(*v48 + 32))(v48, 24, 8);
      *v49 = 1;
      *(v49 + 8) = 7;
      *(v49 + 16) = "TwistSwingJoint";
      qword_1EE1BD160 = v49;
      __cxa_guard_release(&qword_1EE1BD118);
    }
  }

  v11 = qword_1EE1BD1A8;
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
  xmmword_1EE1BD188 = v53;
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

  return &qword_1EE1BD168;
}

double re::DistanceJoint::DistanceJoint(uint64_t a1, uint64_t a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = 0;
  *(a1 + 32) = &str_67;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *a1 = &unk_1F5D0D780;
  result = 6.08244611e77;
  *(a1 + 56) = 0x501502F900000000;
  *(a1 + 64) = 1008981770;
  return result;
}

uint64_t re::DistanceJoint::setDistanceRange(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(a1 + 56) = *a2;
  v5 = *(&v3 + 1);
  v4 = *&v3;
  if (*&v3 <= *(&v3 + 1))
  {
    if (*&v3 > 1.0e10)
    {
      v4 = 1.0e10;
    }

    if (v4 < 0.0)
    {
      v4 = 0.0;
    }

    if (*(&v3 + 1) > 1.0e10)
    {
      v5 = 1.0e10;
    }

    if (v5 < 0.0)
    {
      v5 = 0.0;
    }

    *(a1 + 56) = v4;
    *(a1 + 60) = v5;
  }

  if (v4 > v5)
  {
    *(a1 + 56) = v5;
    *(a1 + 60) = v4;
  }

  (*(*a1 + 56))(a1);
  v6 = *(*a1 + 64);

  return v6(a1);
}

void re::introspect_REPhysicsForceMode(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BD1B8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BD1C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BD1C0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BD310, "REPhysicsForceMode", 1, 1, 1, 1);
      qword_1EE1BD310 = &unk_1F5D0C658;
      qword_1EE1BD350 = &re::introspect_REPhysicsForceMode(BOOL)::enumTable;
      dword_1EE1BD320 = 9;
      __cxa_guard_release(&qword_1EE1BD1C0);
    }

    if (_MergedGlobals_494)
    {
      break;
    }

    _MergedGlobals_494 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BD310, a2);
    v37 = 0xD906E491CB7559F4;
    v38 = "REPhysicsForceMode";
    v41 = 0x31CD534126;
    v42 = "uint8_t";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1BD350;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
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
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
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
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE1BD330 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v36);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1BD1B8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "REPhysicsForceModeForce";
      qword_1EE1BD240 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "REPhysicsForceModeImpulse";
      qword_1EE1BD248 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "REPhysicsForceModeVelocity";
      qword_1EE1BD250 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "REPhysicsForceModeAcceleration";
      qword_1EE1BD258 = v35;
      __cxa_guard_release(&qword_1EE1BD1B8);
    }
  }
}

void *re::allocInfo_TimedForceFalloff(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BD1C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BD1C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BD358, "TimedForceFalloff");
    __cxa_guard_release(&qword_1EE1BD1C8);
  }

  return &unk_1EE1BD358;
}

void re::initInfo_TimedForceFalloff(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x49AF4234DC13BEC0;
  v14[1] = "TimedForceFalloff";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1BD1D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BD1D0))
  {
    v5 = re::introspectionAllocator();
    v7 = re::introspect_double(1, v6);
    v8 = (*(*v5 + 32))(v5, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "duration";
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1BD218 = v8;
    v9 = re::introspectionAllocator();
    v11 = re::introspect_float(1, v10);
    v12 = (*(*v9 + 32))(v9, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "rate";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x800000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1BD220 = v12;
    __cxa_guard_release(&qword_1EE1BD1D0);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BD218;
  *(this + 9) = re::internal::defaultConstruct<re::TimedForceFalloff>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TimedForceFalloff>;
  *(this + 13) = re::internal::defaultConstructV2<re::TimedForceFalloff>;
  *(this + 14) = re::internal::defaultDestructV2<re::TimedForceFalloff>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

uint64_t re::internal::defaultConstructV2<re::TimedForceFalloff>(uint64_t result)
{
  *result = 0x3FF0000000000000;
  *(result + 8) = 1065353216;
  return result;
}

void *re::allocInfo_SpatialForceFalloff(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BD1E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BD1E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BD3E8, "SpatialForceFalloff");
    __cxa_guard_release(&qword_1EE1BD1E0);
  }

  return &unk_1EE1BD3E8;
}

void re::initInfo_SpatialForceFalloff(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0xC60D12D4D665635ALL;
  v18[1] = "SpatialForceFalloff";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1BD1E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BD1E8))
  {
    v5 = re::introspectionAllocator();
    v7 = re::introspect_float(1, v6);
    v8 = (*(*v5 + 32))(v5, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "radius";
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1BD228 = v8;
    v9 = re::introspectionAllocator();
    v11 = re::introspect_float(1, v10);
    v12 = (*(*v9 + 32))(v9, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "distanceOffset";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x400000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1BD230 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::introspect_float(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "rate";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x800000003;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1BD238 = v16;
    __cxa_guard_release(&qword_1EE1BD1E8);
  }

  *(this + 2) = 0xC00000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1BD228;
  *(this + 9) = re::internal::defaultConstruct<re::SpatialForceFalloff>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SpatialForceFalloff>;
  *(this + 13) = re::internal::defaultConstructV2<re::SpatialForceFalloff>;
  *(this + 14) = re::internal::defaultDestructV2<re::SpatialForceFalloff>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

double re::internal::defaultConstruct<re::SpatialForceFalloff>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 1065353216;
  result = 0.0078125;
  *(a3 + 4) = 0x3F80000000000000;
  return result;
}

double re::internal::defaultConstructV2<re::SpatialForceFalloff>(uint64_t a1)
{
  *&result = 1065353216;
  *a1 = 1065353216;
  *(a1 + 8) = 1065353216;
  return result;
}

void *re::allocInfo_ForceEffectDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BD1F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BD1F8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BD478, "ForceEffectDefinition");
    __cxa_guard_release(&qword_1EE1BD1F8);
  }

  return &unk_1EE1BD478;
}

void re::initInfo_ForceEffectDefinition(re *this, re::IntrospectionBase *a2)
{
  v24[0] = 0xDC17E0035793655ELL;
  v24[1] = "ForceEffectDefinition";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE1BD200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BD200))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_PoseF(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "pose";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 1;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1BD260 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_float(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "strength";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x2000000002;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1BD268 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_uint32_t(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "mask";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x2400000003;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1BD270 = v15;
    v16 = re::introspectionAllocator();
    re::introspect_REPhysicsForceMode(v16, v17);
    v18 = (*(*v16 + 32))(v16, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "forceMode";
    *(v18 + 16) = &qword_1EE1BD310;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2800000004;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1BD278 = v18;
    v19 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::SpatialForceFalloff>>::get(v19);
    v20 = (*(*v19 + 32))(v19, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "spatialForceFalloff";
    *(v20 + 16) = qword_1EE1BD290;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x2C00000005;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1BD280 = v20;
    v21 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::TimedForceFalloff>>::get(v21);
    v22 = (*(*v21 + 32))(v21, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "timedForceFalloff";
    *(v22 + 16) = &qword_1EE1BD2D0;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x4000000006;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1BD288 = v22;
    __cxa_guard_release(&qword_1EE1BD200);
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1BD260;
  *(this + 9) = re::internal::defaultConstruct<re::ForceEffectDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ForceEffectDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::ForceEffectDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::ForceEffectDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v23 = v25;
}

void re::IntrospectionInfo<re::Optional<re::SpatialForceFalloff>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1BD208, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1BD208);
    if (a1)
    {
      re::IntrospectionOptionalBase::IntrospectionOptionalBase(qword_1EE1BD290);
      qword_1EE1BD290[0] = &unk_1F5D0D850;
      __cxa_guard_release(&qword_1EE1BD208);
    }
  }

  if ((byte_1EE1BD1B1 & 1) == 0)
  {
    v1 = qword_1EE1BD1F0;
    if (qword_1EE1BD1F0 || (v1 = re::allocInfo_SpatialForceFalloff(a1), qword_1EE1BD1F0 = v1, re::initInfo_SpatialForceFalloff(v1, v2), (byte_1EE1BD1B1 & 1) == 0))
    {
      byte_1EE1BD1B1 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(qword_1EE1BD290, 0);
      unk_1EE1BD2A0 = 0x100000000DLL;
      unk_1EE1BD2A8 = v3;
      unk_1EE1BD2AC = 0;
      unk_1EE1BD2B0 = 0;
      qword_1EE1BD2B8 = 0xFFFFFFFFLL;
      qword_1EE1BD2C0 = v1;
      unk_1EE1BD2C8 = 0;
      qword_1EE1BD290[0] = &unk_1F5D0D850;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&v13, qword_1EE1BD290);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginOptionalType(&v13, &v11, 0x10uLL, 4uLL, &v12);
        re::TypeBuilder::setOptionalAccessors(&v13, re::TypeBuilderHelper::registerOptional<re::SpatialForceFalloff>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::SpatialForceFalloff>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      unk_1EE1BD2B0 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::Optional<re::TimedForceFalloff>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1BD210, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1BD210);
    if (a1)
    {
      re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1BD2D0);
      qword_1EE1BD2D0 = &unk_1F5D0D8D0;
      __cxa_guard_release(&qword_1EE1BD210);
    }
  }

  if ((byte_1EE1BD1B2 & 1) == 0)
  {
    v1 = qword_1EE1BD1D8;
    if (qword_1EE1BD1D8 || (v1 = re::allocInfo_TimedForceFalloff(a1), qword_1EE1BD1D8 = v1, re::initInfo_TimedForceFalloff(v1, v2), (byte_1EE1BD1B2 & 1) == 0))
    {
      byte_1EE1BD1B2 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1BD2D0, 0);
      qword_1EE1BD2E0 = 0x180000000DLL;
      dword_1EE1BD2E8 = v3;
      word_1EE1BD2EC = 0;
      *&xmmword_1EE1BD2F0 = 0;
      *(&xmmword_1EE1BD2F0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1BD300 = v1;
      unk_1EE1BD308 = 0;
      qword_1EE1BD2D0 = &unk_1F5D0D8D0;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&v13, &qword_1EE1BD2D0);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginOptionalType(&v13, &v11, 0x18uLL, 8uLL, &v12);
        re::TypeBuilder::setOptionalAccessors(&v13, re::TypeBuilderHelper::registerOptional<re::TimedForceFalloff>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::TimedForceFalloff>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1BD2F0 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::ForceEffectDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0x3F80000000000000;
  *(a3 + 32) = -3229614080;
  *(a3 + 40) = 0;
  *(a3 + 44) = 0;
  *(a3 + 64) = 0;
  *(a3 + 88) = 0;
  *(a3 + 152) = 0;
  *(a3 + 168) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
}

uint64_t re::internal::defaultConstructV2<re::ForceEffectDefinition>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0x3F80000000000000;
  *(result + 32) = -3229614080;
  *(result + 40) = 0;
  *(result + 44) = 0;
  *(result + 64) = 0;
  *(result + 88) = 0;
  *(result + 152) = 0;
  *(result + 168) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  return result;
}

void *re::ForceEffect::setSimulation(void *this, re::PhysicsSimulation *a2)
{
  v2 = this[1];
  if (v2 != a2)
  {
    v4 = this;
    if (v2)
    {
      this = (*(*this + 48))(this);
    }

    v4[1] = a2;
    if (a2)
    {
      v5 = *(*v4 + 40);

      return v5(v4);
    }
  }

  return this;
}

uint64_t re::ForceEffectDefinition::advance(uint64_t this, float a2)
{
  if (*(this + 128) && *(this + 136) == 1 && *(this + 168) == 1)
  {
    v2 = *(this + 160) + a2;
    if (*(this + 64) == 1)
    {
      v3 = *(this + 144);
      v4 = *(this + 72);
      if (v2 - v3 >= v4)
      {
        v2 = v3 + v4;
      }
    }

    if ((*(this + 152) & 1) == 0)
    {
      *(this + 152) = 1;
    }

    *(this + 160) = v2;
  }

  return this;
}

uint64_t re::ForceEffectFunctionRuntime::elementSize(uint64_t a1, int a2)
{
  result = 0;
  if (a2 <= 7)
  {
    if (a2 == 1 || a2 == 2 || a2 == 4)
    {
      return 16;
    }
  }

  else
  {
    if (a2 <= 31)
    {
      if (a2 != 8)
      {
        if (a2 != 16)
        {
          return result;
        }

        return 4;
      }

      return 16;
    }

    if (a2 == 64)
    {
      return 48;
    }

    if (a2 == 32)
    {
      return 4;
    }
  }

  return result;
}

void re::ForceEffectFunctionRuntime::reserveInputBuffers(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = a1;
    v6 = 0;
    do
    {
      if (v4)
      {
        a1 = re::ForceEffectFunctionRuntime::elementSize(a1, 1 << v6);
        v7 = a1 * a3;
        if (v7 > 16 * *(v5 + 16))
        {
          re::DynamicArray<re::Vector4<float>>::resize(v5, vcvtpd_u64_f64(vcvtd_n_f64_u64(v7, 4uLL)));
        }
      }

      v5 += 40;
      ++v6;
      v8 = v4 > 1;
      v4 >>= 1;
    }

    while (v8);
  }
}

void re::ForceEffectFunctionRuntime::reserveOutputBuffers(re::ForceEffectFunctionRuntime *this, unint64_t a2)
{
  v4 = 0;
  v5 = this + 320;
  v6 = 16 * a2;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = &v5[40 * v4];
    if (*(v9 + 16) < a2)
    {
      re::DynamicArray<re::Vector3<float>>::resize(v9, a2);
      bzero(*(v9 + 32), v6);
    }

    v7 = 0;
    v4 = 1;
  }

  while ((v8 & 1) != 0);
  v10 = 0;
  v11 = this + 400;
  v12 = 1;
  do
  {
    v13 = v12;
    v14 = &v11[40 * v10];
    if (*(v14 + 16) < a2)
    {
      re::DynamicArray<re::Vector3<float>>::resize(v14, a2);
      bzero(*(v14 + 32), v6);
    }

    v12 = 0;
    v10 = 1;
  }

  while ((v13 & 1) != 0);
}

uint64_t re::CustomForceEffectFunction::compute(uint64_t result, uint64_t a2)
{
  if (*a2)
  {
    v2 = result;
    result = *(*a2 + 40);
    if (result)
    {
      if (*(v2 + 8))
      {
        return (*(*result + 16))();
      }
    }
  }

  return result;
}

void *re::IntrospectionOptional<re::SpatialForceFalloff>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::SpatialForceFalloff>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::SpatialForceFalloff>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 4) = 1065353216;
    *(a2 + 12) = 1065353216;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::SpatialForceFalloff>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 4;
}

{
  return a2 + 4;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::SpatialForceFalloff>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 4;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::SpatialForceFalloff>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v3 = *a2;
    v4 = *(a2 + 2);
    if (*result)
    {
      v2 = *a2;
      *(result + 12) = *(a2 + 2);
      *(result + 4) = v2;
    }

    else
    {
      *result = 1;
      *(result + 4) = v3;
      *(result + 12) = v4;
    }
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<re::TimedForceFalloff>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::TimedForceFalloff>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::TimedForceFalloff>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 8) = 0x3FF0000000000000;
    *(a2 + 16) = 1065353216;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::TimedForceFalloff>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::TimedForceFalloff>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

__n128 re::TypeBuilderHelper::registerOptional<re::TimedForceFalloff>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, __n128 *a2)
{
  if (a2)
  {
    result = *a2;
    v4 = *a2;
    if (*a1)
    {
      v3 = a2->n128_u64[0];
      *(a1 + 16) = a2->n128_u32[2];
      *(a1 + 8) = v3;
    }

    else
    {
      *a1 = 1;
      result = v4;
      *(a1 + 8) = v4;
    }
  }

  else if (*a1 == 1)
  {
    *a1 = 0;
  }

  return result;
}

void *re::allocInfo_PhysicsSolverIterations(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_495, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_495))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BD528, "PhysicsSolverIterations");
    __cxa_guard_release(&_MergedGlobals_495);
  }

  return &unk_1EE1BD528;
}

void re::initInfo_PhysicsSolverIterations(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xAE83321A565603E0;
  v14[1] = "PhysicsSolverIterations";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1BD510, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BD510))
  {
    v5 = re::introspectionAllocator();
    v7 = re::introspect_uint32_t(1, v6);
    v8 = (*(*v5 + 32))(v5, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "positionIterations";
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1BD518 = v8;
    v9 = re::introspectionAllocator();
    v11 = re::introspect_uint32_t(1, v10);
    v12 = (*(*v9 + 32))(v9, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "velocityIterations";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x400000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1BD520 = v12;
    __cxa_guard_release(&qword_1EE1BD510);
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BD518;
  *(this + 9) = re::internal::defaultConstruct<re::PhysicsSolverIterations>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::PhysicsSolverIterations>;
  *(this + 13) = re::internal::defaultConstructV2<re::PhysicsSolverIterations>;
  *(this + 14) = re::internal::defaultDestructV2<re::PhysicsSolverIterations>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

double re::internal::defaultConstruct<re::PhysicsSolverIterations>(uint64_t a1, uint64_t a2, void *a3)
{
  *&result = 0x100000006;
  *a3 = 0x100000006;
  return result;
}

double re::internal::defaultConstructV2<re::PhysicsSolverIterations>(void *a1)
{
  *&result = 0x100000006;
  *a1 = 0x100000006;
  return result;
}

void re::RigidBody::setMotionType(uint64_t a1, unsigned int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = (*(**(a1 + 64) + 56))(*(a1 + 64));
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  if (v5 == 2)
  {
    v6 = fabsf(*(a1 + 192));
    if (v6 < 0.00001 || v6 == INFINITY)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  if (v5 != a2)
  {
    v8 = *re::physicsLogObjects(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "static";
      if (a2 == 1)
      {
        v10 = "kinematic";
      }

      else
      {
        v10 = "static";
      }

      if (a2 == 2)
      {
        v10 = "dynamic";
      }

      if (v5 == 1)
      {
        v9 = "kinematic";
      }

      if (v5 == 2)
      {
        v9 = "dynamic";
      }

      v15 = 136315394;
      v16 = v10;
      v17 = 2080;
      v18 = v9;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Physics body motion type %s was requested but is not supported for all of its colliders.  Dynamic motion is not supported for some colliders, such as ARKit mesh colliders.  Motion type %s will be used instead.", &v15, 0x16u);
    }
  }

  if (*(a1 + 208) != v5)
  {
    v11 = *(*(a1 + 72) + 56);
    if (v11 && (*(*a1 + 424))(a1))
    {
      v12 = *(a1 + 72);
      re::ContactSetCollection::remove((*(v11 + 128) + 72), v12);
      (*(**(v11 + 128) + 200))(*(v11 + 128), v12);
      *(v12 + 7) = 0;
    }

    *(a1 + 208) = v5;
    (*(*a1 + 104))(a1, v5);
    v13 = *(a1 + 72);
    if (*(v13 + 56) != v11)
    {
      v14 = *(v11 + 128);
      *(v13 + 56) = v14;
      (*(*v14 + 192))(v14);
      if (v5 == 2)
      {
        (*(*a1 + 312))(a1);
      }
    }

    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }
}

float32x4_t re::RigidBody::pose@<Q0>(float32x4_t *this@<X0>, float32x4_t *a2@<X8>)
{
  (*(this->i64[0] + 208))(&v30);
  v5 = this[9];
  _Q0 = this[10];
  v6 = vnegq_f32(_Q0);
  v7 = vnegq_f32(v5);
  v8 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v9 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), _Q0), v8, v5);
  v10 = vaddq_f32(v9, v9);
  v11 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
  v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), _Q0), v11, v8);
  v13 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v11, _Q0, 3), v5), vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL));
  _Q3 = v31;
  v15 = vextq_s8(vuzp1q_s32(_Q3, _Q3), v31, 0xCuLL);
  v16 = vnegq_f32(v31);
  v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL), v16), v13, v15);
  v18 = vaddq_f32(v17, v17);
  v19 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
  v20 = vaddq_f32(v13, vmulq_laneq_f32(v19, v31, 3));
  _Q17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v16), v19, v15);
  v22 = vextq_s8(vuzp1q_s32(_Q17, _Q17), _Q17, 0xCuLL);
  _Q17.i32[0] = _Q0.i32[3];
  v23 = vmlsq_f32(vmulq_f32(v8, v16), v15, _Q0);
  v24 = vmlaq_laneq_f32(vmlsq_laneq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), _Q0, v31, 3), v31, _Q0, 3);
  __asm { FMLA            S0, S17, V3.S[3] }

  v24.i32[3] = _Q0.i32[0];
  result = vaddq_f32(v30, vaddq_f32(v20, v22));
  *a2 = result;
  a2[1] = v24;
  return result;
}

double re::RigidBody::calculateVelocityAtLocalPoint(uint64_t a1, int32x4_t *a2)
{
  (*(*a1 + 40))(&v20);
  v4 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
  v5 = vnegq_f32(v21);
  v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a2, *a2), *a2, 0xCuLL), v5), *a2, v4);
  v7 = vaddq_f32(v6, v6);
  v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v5), v8, v4);
  v19 = vaddq_f32(v20, vaddq_f32(vaddq_f32(*a2, vmulq_laneq_f32(v8, v21, 3)), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL)));
  v10.i64[0] = (*(*a1 + 216))(a1);
  v10.i64[1] = v11;
  v18 = v10;
  v12.i64[0] = (*(*a1 + 232))(a1);
  v12.i64[1] = v13;
  v17 = v12;
  (*(*a1 + 208))(v22, a1);
  v14 = vsubq_f32(v19, v22[0]);
  v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vnegq_f32(v17)), v14, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
  *&result = vaddq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v18).u64[0];
  return result;
}

void re::RigidBody::setAttachedJointCount(re::RigidBody *this, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    v5 = *re::physicsLogObjects(this);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    v4 = 0;
    if (v6)
    {
      v7[0] = 67109120;
      v7[1] = a2;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "RigidBody::setAttachedJointCount(cnt=%d): Negative reference count attempted to be set", v7, 8u);
      v4 = 0;
    }
  }

  else
  {
    v4 = a2;
  }

  *(this + 77) = v4;
}

void re::RigidBody::poseDidChange(re::RigidBody *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not supported.", "!Unreachable code", "poseDidChange", 236);
  _os_crash("assertion failure: (!Unreachable code) Not supported.");
  __break(1u);
}

uint64_t re::Damping::didEnable(uint64_t this)
{
  v1 = *(this + 8);
  if (v1)
  {
    return updateRigidBodies(v1 + 80, *(this + 20), *(this + 24));
  }

  return this;
}

uint64_t updateRigidBodies(uint64_t result, float a2, float a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(result + 24);
  if (v3)
  {
    v6 = result;
    for (i = 0; i != v3; ++i)
    {
      v8 = *(v6 + 24);
      if (v8 <= i)
      {
        v15 = 0;
        memset(v24, 0, sizeof(v24));
        v12 = MEMORY[0x1E69E9C10];
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v19 = 797;
        v20 = 2048;
        v21 = i;
        v22 = 2048;
        v23 = v8;
        _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
      }

      v9 = *(*(v6 + 40) + 8 * i);
      v10 = (*(*v9 + 320))(v9) + a2;
      v11.n128_f32[0] = (*(*v9 + 328))(v9) + a3;
      result = (*(*v9 + 336))(v9, v10, v11);
    }
  }

  return result;
}

uint64_t re::Damping::didDisable(uint64_t this)
{
  v1 = *(this + 8);
  if (v1)
  {
    return updateRigidBodies(v1 + 80, -*(this + 20), -*(this + 24));
  }

  return this;
}

uint64_t re::Damping::didAddToSimulation(uint64_t this)
{
  if (*(this + 16) == 1)
  {
    return updateRigidBodies(*(this + 8) + 80, *(this + 20), *(this + 24));
  }

  return this;
}

uint64_t re::Damping::willRemoveFromSimulation(uint64_t this)
{
  if (*(this + 16) == 1)
  {
    return updateRigidBodies(*(this + 8) + 80, -*(this + 20), -*(this + 24));
  }

  return this;
}

uint64_t re::Damping::onRigidBodyAdded(uint64_t this, re::RigidBody *a2)
{
  if (*(this + 16) == 1)
  {
    v4 = this;
    v5 = (*(*a2 + 320))(a2) + *(this + 20);
    v6.n128_f32[0] = (*(*a2 + 328))(a2) + *(v4 + 24);
    v7 = *(*a2 + 336);
    v8.n128_f32[0] = v5;

    return v7(a2, v8, v6);
  }

  return this;
}

uint64_t re::Damping::onRigidBodyRemoved(uint64_t this, re::RigidBody *a2)
{
  if (*(this + 16) == 1)
  {
    v4 = this;
    v5 = (*(*a2 + 320))(a2) - *(this + 20);
    v6.n128_f32[0] = (*(*a2 + 328))(a2) - *(v4 + 24);
    v7 = *(*a2 + 336);
    v8.n128_f32[0] = v5;

    return v7(a2, v8, v6);
  }

  return this;
}

uint64_t re::Damping::setLinearDamping(uint64_t this, float a2)
{
  v2 = *(this + 20);
  *(this + 20) = a2;
  if (*(this + 16) == 1)
  {
    v3 = this;
    v4 = *(this + 8);
    if (v4)
    {
      updateRigidBodies(v4 + 80, -v2, 0.0);
      v5 = *(v3 + 20);
      v6 = *(v3 + 8) + 80;

      return updateRigidBodies(v6, v5, 0.0);
    }
  }

  return this;
}

uint64_t re::Damping::setAngularDamping(uint64_t this, float a2)
{
  v2 = *(this + 24);
  *(this + 24) = a2;
  if (*(this + 16) == 1)
  {
    v3 = this;
    v4 = *(this + 8);
    if (v4)
    {
      updateRigidBodies(v4 + 80, 0.0, -v2);
      v5 = *(v3 + 24);
      v6 = *(v3 + 8) + 80;

      return updateRigidBodies(v6, 0.0, v5);
    }
  }

  return this;
}

int32x2_t re::BallSocketJoint::BallSocketJoint(int32x2_t *a1, uint64_t a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  a1[3] = 0;
  a1[4] = &str_67;
  a1[5] = a2;
  a1[6] = 0;
  *a1 = &unk_1F5D0DBA8;
  result = vdup_n_s32(0x3FC90FDBu);
  a1[7] = result;
  return result;
}

void re::PhysXConstraintKernel::~PhysXConstraintKernel(re::PhysXConstraintKernel *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    (**v1)(v1);
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    (**v1)(v1);
  }

  JUMPOUT(0x1E6906520);
}

uint64_t re::PhysXConstraintKernel::bodyA(re::PhysXConstraintKernel *this)
{
  v2 = 0;
  v3 = 0;
  (*(**(this + 1) + 56))(*(this + 1), &v3, &v2);
  if (v3)
  {
    return *(*(v3 + 16) + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t re::PhysXConstraintKernel::bodyB(re::PhysXConstraintKernel *this)
{
  v2 = 0;
  v3 = 0;
  (*(**(this + 1) + 56))(*(this + 1), &v3, &v2);
  if (v2)
  {
    return *(*(v2 + 16) + 16);
  }

  else
  {
    return 0;
  }
}

__n128 re::PhysXConstraintKernel::localAnchorPoseA@<Q0>(re::PhysXConstraintKernel *this@<X0>, uint64_t a2@<X8>)
{
  (*(**(this + 1) + 72))(v7);
  *&v3 = v7[2];
  DWORD2(v3) = v8;
  v4 = v7[0];
  v5 = v7[1];
  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  result.n128_u64[0] = v3;
  result.n128_u32[2] = DWORD2(v3);
  return result;
}

__n128 re::PhysXConstraintKernel::localAnchorPoseB@<Q0>(re::PhysXConstraintKernel *this@<X0>, uint64_t a2@<X8>)
{
  (*(**(this + 1) + 72))(v7);
  *&v3 = v7[2];
  DWORD2(v3) = v8;
  v4 = v7[0];
  v5 = v7[1];
  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  result.n128_u64[0] = v3;
  result.n128_u32[2] = DWORD2(v3);
  return result;
}

float re::internal::WGL_noise(unsigned int a1, __n128 a2)
{
  v2 = fabsf(a2.n128_f32[0]);
  v3 = (v2 - truncf(v2)) * 512.0;
  v4 = fabsf(a2.n128_f32[1]);
  v5 = (v4 - truncf(v4)) * 512.0;
  v6 = fabsf(a2.n128_f32[2]);
  v7 = (v6 - truncf(v6)) * 512.0;
  v8 = vdup_n_s32(a1);
  v9 = 0.0;
  v10 = 64.0;
  v11 = vdup_n_s32(0x3D73u);
  v12 = vdup_n_s32(0xC0AE5u);
  v13 = vdup_n_s32(0x5208DD0Du);
  v14 = vdup_n_s32(0x30800000u);
  __asm
  {
    FMOV            V19.2D, #1.0
    FMOV            V20.2D, #0.5
  }

  v21 = 0.0;
  do
  {
    v22 = (v3 / v10);
    v23 = (v3 / v10) - v22;
    v24 = v22 & 0x1FF;
    v25 = (v22 - 1) & 0x1FF;
    v26 = 57 * ((v5 / v10) & 0x1FF);
    v27 = 57 * (((v5 / v10) - 1) & 0x1FF);
    v28.i32[0] = (v7 / v10);
    v28.i32[1] = v28.i32[0] - 1;
    v29 = vmul_s32(vand_s8(v28, 0x100000001), v8);
    v30 = vadd_s32(vdup_n_s32(v26 + v25), v29);
    v31 = veor_s8(vshl_n_s32(v30, 0xDuLL), v30);
    v32 = vmla_s32(v13, vmla_s32(v12, vmul_s32(v31, v31), v11), v31);
    v33 = vadd_s32(vdup_n_s32(v26 + v24), v29);
    v34 = veor_s8(vshl_n_s32(v33, 0xDuLL), v33);
    v35 = vmla_s32(v13, vmla_s32(v12, vmul_s32(v34, v34), v11), v34);
    v36 = vadd_s32(vdup_n_s32(v27 + v25), v29);
    v37 = veor_s8(vshl_n_s32(v36, 0xDuLL), v36);
    v38 = vmla_s32(v13, vmla_s32(v12, vmul_s32(v37, v37), v11), v37);
    v39 = vadd_s32(vdup_n_s32(v27 + v24), v29);
    v40 = veor_s8(vshl_n_s32(v39, 0xDuLL), v39);
    v41 = vmla_s32(v13, vmla_s32(v12, vmul_s32(v40, v40), v11), v40);
    v42 = vcvt_f32_f64(vmulq_f64(vaddq_f64(vsubq_f64(_Q19, vcvtq_f64_f32(vmul_f32(vcvt_f32_u32((*&v32 & 0x7FFFFFFF7FFFFFFFLL)), v14))), _Q19), _Q20));
    v43 = vcvt_f32_f64(vmulq_f64(vaddq_f64(vsubq_f64(_Q19, vcvtq_f64_f32(vmul_f32(vcvt_f32_u32((*&v38 & 0x7FFFFFFF7FFFFFFFLL)), v14))), _Q19), _Q20));
    v44 = vmla_n_f32(v43, vsub_f32(vcvt_f32_f64(vmulq_f64(vaddq_f64(vsubq_f64(_Q19, vcvtq_f64_f32(vmul_f32(vcvt_f32_u32((*&v41 & 0x7FFFFFFF7FFFFFFFLL)), v14))), _Q19), _Q20)), v43), v23);
    v45 = vmla_n_f32(v44, vsub_f32(vmla_n_f32(v42, vsub_f32(vcvt_f32_f64(vmulq_f64(vaddq_f64(vsubq_f64(_Q19, vcvtq_f64_f32(vmul_f32(vcvt_f32_u32((*&v35 & 0x7FFFFFFF7FFFFFFFLL)), v14))), _Q19), _Q20)), v42), v23), v44), (v5 / v10) - (v5 / v10));
    v21 = v21 + ((v45.f32[1] + (((v7 / v10) - (v7 / v10)) * (v45.f32[0] - v45.f32[1]))) * v10);
    v9 = v9 + v10;
    v10 = v10 * 0.5;
  }

  while (v10 >= 1.0);
  return v21 / v9;
}

double WGLForceComputeLinearForce(float32x4_t *a1, uint64_t a2, float32x4_t a3)
{
  v3 = 0.0;
  if (a1[5].i8[6])
  {
    return v3;
  }

  v5 = vsubq_f32(*a1, a3);
  v6 = a1[5].u32[0];
  if (v6 || (v7 = 0.0, a1[5].i8[4] == 1))
  {
    v8 = vmulq_f32(v5, v5);
    v7 = sqrtf(v8.f32[2] + vaddv_f32(*v8.f32));
  }

  v9 = a1[4].f32[0];
  v10 = a1[4].i32[3];
  v11 = 1.0;
  if (v10 > 2)
  {
    if ((v10 - 4) < 2)
    {
      a3.i32[1] = 0;
      v26 = 0u;
      goto LABEL_21;
    }

    if (v10 != 3)
    {
      goto LABEL_16;
    }

    v27 = vmlaq_f32(a1[2], a1[1], a3);
    v13.f32[0] = re::internal::WGL_noise(0x106u, v27);
    v25 = v13;
    v24 = re::internal::WGL_noise(0x410u, v27);
    v14 = re::internal::WGL_noise(0x26u, v27);
    v15 = v25;
    v15.f32[1] = v24;
    v15.f32[2] = v14;
    a3.i64[0] = 0x4000000040000000;
    a3.i64[1] = 0x4000000040000000;
    __asm { FMOV            V2.4S, #-1.0 }

    v21 = vmlaq_f32(_Q2, a3, v15);
  }

  else
  {
    if (!v10)
    {
      v11 = v7;
      goto LABEL_16;
    }

    if (v10 != 1)
    {
      if (v10 == 2)
      {
        a3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a1[1], a1[1]), a1[1], 0xCuLL), vnegq_f32(v5)), a1[1], vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL));
        v26 = vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL);
        if (a1[5].i8[4] == 1)
        {
          a3 = vmulq_f32(a3, a3);
          v12 = a3.f32[2] + a3.f32[0];
          a3.i32[0] = a3.i32[1];
LABEL_20:
          v11 = sqrtf(a3.f32[0] + v12);
          goto LABEL_21;
        }

        goto LABEL_21;
      }

LABEL_16:
      v26 = v5;
      goto LABEL_21;
    }

    v21 = a1[1];
  }

  v26 = v21;
  if (a1[5].i8[4] == 1)
  {
    a3 = vmulq_f32(v21, v21);
    v12 = vaddv_f32(*a3.f32);
    a3.i32[0] = a3.i32[2];
    goto LABEL_20;
  }

LABEL_21:
  if ((a1[5].i8[4] & (v11 != 0.0)) != 0)
  {
    v9 = v9 / v11;
  }

  a3.i32[0] = a1[4].i32[1];
  WGLComputeFalloff(v6, a2, *a3.i64, v7);
  *&v3 = vmulq_f32(a1[3], vmulq_n_f32(v26, v22 * v9)).u64[0];
  return v3;
}

double re::SliderJoint::SliderJoint(uint64_t a1, uint64_t a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = 0;
  *(a1 + 32) = &str_67;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *a1 = &unk_1F5D0DC70;
  __asm { FMOV            V0.2S, #1.0 }

  result = -_D0;
  *(a1 + 56) = result;
  return result;
}

int32x2_t *re::PhysXBallSocketJoint::PhysXBallSocketJoint(int32x2_t *this, physx::PxSphericalJoint *a2, uint64_t a3)
{
  *this = &unk_1F5D0DCC0;
  *&v6 = re::BallSocketJoint::BallSocketJoint(this, &this[8]);
  *v7 = &unk_1F5D0DCC0;
  v7[8] = &unk_1F5D0DBF8;
  v7[9] = a2;
  *(a2 + 2) = v7;
  (*(*a2 + 128))(a2, 16, 1, v6);
  (*(**&this[9] + 128))(*&this[9], 8, a3);
  return this;
}

uint64_t re::PhysXBallSocketJoint::updateLimits(re::PhysXBallSocketJoint *this)
{
  v2 = *(this + 9);
  v3 = *(this + 14) >= 0.0 && *(this + 15) >= 0.0;
  result = (*(*v2 + 280))(*(this + 9), 2, v3);
  v5 = *(this + 14);
  if (v5 >= 0.0)
  {
    v6 = *(this + 15);
    if (v6 >= 0.0)
    {
      v10 = *(this + 14);
      v11 = v6;
      if (v5 < v6)
      {
        v6 = v5;
      }

      v7 = v6 * 0.49;
      if (v7 > 0.1)
      {
        v7 = 0.1;
      }

      v8[0] = 0x3F00000000000000;
      v8[1] = 0;
      v9 = v7;
      return (*(*v2 + 248))(v2, v8);
    }
  }

  return result;
}

void re::PhysXBallSocketJoint::~PhysXBallSocketJoint(re::PhysXBallSocketJoint *this)
{
  *this = &unk_1F5D0DCC0;
  v2 = *(this + 9);
  if (v2)
  {
    (**v2)(v2);
  }

  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D0DCC0;
  v2 = *(this + 9);
  if (v2)
  {
    (**v2)(v2);
  }

  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

re::PhysXTwistSwingJoint *re::PhysXTwistSwingJoint::PhysXTwistSwingJoint(re::PhysXTwistSwingJoint *this, physx::PxD6Joint *a2, uint64_t a3)
{
  *this = &unk_1F5D0DD28;
  v6 = re::TwistSwingJoint::TwistSwingJoint(this, this + 80);
  *v7 = &unk_1F5D0DD28;
  v7[10] = &unk_1F5D0DBF8;
  v7[11] = a2;
  *(a2 + 2) = v7;
  (*(*a2 + 128))(a2, 16, 1, v6);
  (*(**(this + 11) + 128))(*(this + 11), 8, a3);
  __asm { FMOV            V0.2S, #1.0 }

  v13 = -_D0;
  *(this + 12) = v13;
  *(this + 13) = v13;
  *(this + 14) = v13;
  return this;
}

uint64_t re::PhysXTwistSwingJoint::updateLimits(re::PhysXTwistSwingJoint *this)
{
  v1 = *(this + 11);
  v7[0] = 0;
  v9 = 0;
  v8 = 0;
  v2 = *(this + 7);
  v5 = *(this + 8);
  v6 = v2;
  v4 = *(this + 9);
  re::setPxD6JointTwistLimit(v1, &v6, v7, 0.0);
  return re::setPxD6JointSwingLimit(v1, &v5, v7, &v4, v7, 0.0, 0.0);
}

void re::PhysXTwistSwingJoint::~PhysXTwistSwingJoint(re::PhysXTwistSwingJoint *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    (**v2)(v2);
  }

  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  v2 = *(this + 11);
  if (v2)
  {
    (**v2)(v2);
  }

  *this = &unk_1F5D0D4F0;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

re *re::RadialRepulsionForce::onApply(re *this)
{
  v85 = *MEMORY[0x1E69E9840];
  v1 = fmaxf(fmaxf(COERCE_FLOAT(*(this + 3)), COERCE_FLOAT(*(this + 7))), COERCE_FLOAT(HIDWORD(*(this + 6))));
  if (v1 > 0.0)
  {
    v2 = this;
    v3 = fmaxf(fmaxf(COERCE_FLOAT(*(this + 2)), COERCE_FLOAT(*(this + 5))), COERCE_FLOAT(HIDWORD(*(this + 4))));
    v4 = *(*(*(this + 3) + 72) + 56);
    {
      this = re::initCollision(this);
    }

    v6 = re::globalAllocators(this);
    inited = (*(*v5 + 112))(v5, v6[2], v1 + v3);
    v8 = inited;
    {
      inited = re::initCollision(inited);
    }

    v10 = re::globalAllocators(inited)[2];
    v11 = (*(**(v2 + 3) + 40))(&v77);
    v12 = re::globalAllocators(v11);
    v13 = (*(*v9 + 168))(v9, v10, v8, &v77, 0, v12[2]);
    v14 = (*(*v4[16] + 176))(v4[16]);
    if (v14)
    {
      v15 = v14;
      for (i = 0; i != v15; ++i)
      {
        v17 = (*(*v4[16] + 184))(v4[16], i);
        if (v17 != *(*(v2 + 3) + 72))
        {
          v18 = v17;
          v19 = (*(**(v17 + 16) + 56))(*(v17 + 16));
          if (v19 == 2)
          {
            v82 = 0;
            v80 = 0u;
            v81 = 0u;
            v77 = 0u;
            memset(v78, 0, 28);
            v79[0] = 0;
            *(v79 + 7) = 0;
            v83 = 0;
            v84 = 0;
            v77 = 0uLL;
            re::DynamicArray<re::RigSplineIKJoint>::setCapacity(v78, 0);
            ++DWORD2(v78[1]);
            ((*v4)[13])(v4, v13, v18, &v77);
            if (*&v78[1])
            {
              v20 = v79[0];
              v21 = 80 * *&v78[1];
              v22 = (v79[0] + 64);
              v23 = 80 * *&v78[1];
              while (*v22 > 0.0)
              {
                v24 = vmulq_f32(*(v22 - 4), *(v22 - 4));
                if ((v24.f32[2] + vaddv_f32(*v24.f32)) != 0.0)
                {
                  break;
                }

                v22 += 20;
                v23 -= 80;
                if (!v23)
                {
                  goto LABEL_38;
                }
              }

              v25 = 0.0;
              v26 = 0uLL;
              do
              {
                if (v25 < -*(v20 + 64))
                {
                  v26 = *(v20 + 16 * (v77 == v13));
                  v25 = -*(v20 + 64);
                }

                v20 += 80;
                v21 -= 80;
              }

              while (v21);
              if (v25 > 0.0)
              {
                v69 = v26;
                v71 = v25;
                v27 = *(v18 + 16);
                v28.i64[0] = (*(*v27 + 216))(v27);
                v28.i64[1] = v29;
                v72 = v28;
                v30 = (*(**(v2 + 3) + 216))(*(v2 + 3));
                v75 = 0uLL;
                *&v76 = 0;
                *(&v76 + 1) = 0x3F80000000000000;
                v32 = vmulq_f32(v72, v72);
                v33 = v32.f32[2] + vaddv_f32(*v32.f32);
                if (fabsf(v33) >= 1.0e-10)
                {
                  v39.i64[0] = v30;
                  v39.i64[1] = v31;
                  v67 = v39;
                  v40 = v71 / v1;
                  if ((v71 / v1) > 1.0)
                  {
                    v40 = 1.0;
                  }

                  v68 = v40;
                  (*(*v27 + 40))(&v73, v27);
                  v41 = v74;
                  v76 = v74;
                  v42 = vsubq_f32(v73, v69);
                  v43 = vmulq_f32(v42, v42);
                  *&v44 = v43.f32[2] + vaddv_f32(*v43.f32);
                  *v43.f32 = vrsqrte_f32(v44);
                  *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32)));
                  v70 = vmulq_n_f32(v42, vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32))).f32[0]);
                  v75 = vaddq_f32(v73, vmulq_n_f32(v70, v71));
                  v27[1] = v75;
                  v27[2] = v41;
                  (*(*v27 + 64))(v27, &v75);
                  v45 = v67;
                  v46 = vmulq_f32(v45, v45);
                  v47 = fabsf(v46.f32[2] + vaddv_f32(*v46.f32)) < 1.0e-10;
                  v48 = vuzp1q_s32(v72, v72);
                  v49 = vnegq_f32(v72);
                  if (v47)
                  {
                    v50 = vextq_s8(v48, v72, 0xCuLL);
                    v51 = v70;
                    v52 = vextq_s8(vuzp1q_s32(v51, v51), v70, 0xCuLL);
                    v53 = vmlaq_f32(vmulq_f32(v52, v49), v70, v50);
                    v54 = vmulq_f32(v53, v53);
                    if (fabsf(v54.f32[1] + (v54.f32[2] + v54.f32[0])) < 1.0e-10)
                    {
                      v55 = vmlaq_f32(vmulq_f32(v70, xmmword_1E30661F0), xmmword_1E30476A0, v52);
                      v56 = vmulq_f32(v55, v55);
                      if (fabsf(v56.f32[1] + (v56.f32[2] + v56.f32[0])) < 1.0e-10)
                      {
                        v55 = vmlaq_f32(vmulq_f32(v70, xmmword_1E30661E0), xmmword_1E3047680, v52);
                      }

                      v51 = vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL);
                    }

                    v57 = 1.0 - v68;
                    v58 = vmulq_n_f32(vnegq_f32(v51), v68);
                  }

                  else
                  {
                    v59 = vextq_s8(v48, v72, 0xCuLL);
                    v60 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL), v49), v67, v59);
                    v61 = vmulq_f32(v60, v60);
                    if (fabsf(v61.f32[1] + (v61.f32[2] + v61.f32[0])) < 1.0e-10)
                    {
                      v62 = vmlaq_f32(vmulq_f32(v72, xmmword_1E30661F0), xmmword_1E30476A0, v59);
                      v63 = vmulq_f32(v62, v62);
                      if (fabsf(v63.f32[1] + (v63.f32[2] + v63.f32[0])) < 1.0e-10)
                      {
                        v62 = vmlaq_f32(vmulq_f32(v72, xmmword_1E30661E0), xmmword_1E3047680, v59);
                      }

                      v45 = vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL);
                    }

                    v57 = 1.0 - v68;
                    v58 = vmulq_n_f32(v45, v68);
                  }

                  v64 = vmlaq_n_f32(v58, v72, v57);
                  v65 = vmulq_f32(v64, v64);
                  *&v66 = v65.f32[2] + vaddv_f32(*v65.f32);
                  *v65.f32 = vrsqrte_f32(v66);
                  *v65.f32 = vmul_f32(*v65.f32, vrsqrts_f32(v66, vmul_f32(*v65.f32, *v65.f32)));
                  v73 = vmulq_n_f32(vmulq_n_f32(v64, vmul_f32(*v65.f32, vrsqrts_f32(v66, vmul_f32(*v65.f32, *v65.f32))).f32[0]), sqrtf(v33));
                  (*(*v27 + 224))(v27, &v73);
                }

                else
                {
                  (*(**(v2 + 3) + 40))(&v73);
                  v34 = v74;
                  v76 = v74;
                  v35 = vsubq_f32(v69, v73);
                  v36 = vmulq_f32(v35, v35);
                  *&v37 = v36.f32[2] + vaddv_f32(*v36.f32);
                  *v36.f32 = vrsqrte_f32(v37);
                  *v36.f32 = vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32)));
                  v75 = vaddq_f32(v73, vmulq_n_f32(vmulq_n_f32(v35, vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32))).f32[0]), v71));
                  v38 = *(v2 + 3);
                  v38[1] = v75;
                  v38[2] = v34;
                  (*(*v38 + 64))(v38, &v75);
                }
              }
            }

LABEL_38:
            re::ContactSet::~ContactSet(&v77);
          }
        }
      }
    }

    return re::internal::destroyPersistent<re::CollisionObject>("onApply", 129, v13);
  }

  return this;
}

re *re::internal::destroyPersistent<re::CollisionObject>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

double re::TwistSwingJoint::TwistSwingJoint(uint64_t a1, uint64_t a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = 0;
  *(a1 + 32) = &str_67;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *a1 = &unk_1F5D0DE20;
  __asm { FMOV            V0.2S, #1.0 }

  result = -_D0;
  *(a1 + 56) = result;
  *(a1 + 64) = result;
  *(a1 + 72) = result;
  return result;
}

uint64_t re::TwistSwingJoint::setAngularLimit(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 3, v3, v4);
    result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v7, v8);
    __break(1u);
  }

  else
  {
    *(a1 + 8 * a2 + 56) = *a3;
    v5 = *(*a1 + 56);

    return v5();
  }

  return result;
}

void re::PhysXPhysicsSimulation::~PhysXPhysicsSimulation(re::PhysXPhysicsSimulation *this)
{
  *this = &unk_1F5D0DE70;
  re::PhysXPhysicsSimulation::deinit(this);

  re::PhysicsSimulation::~PhysicsSimulation(this);
}

{
  *this = &unk_1F5D0DE70;
  re::PhysXPhysicsSimulation::deinit(this);
  re::PhysicsSimulation::~PhysicsSimulation(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::PhysXPhysicsSimulation::init(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[0] = a5;
  v12[1] = a6;
  a1[118] = a2;
  a1[119] = a3;
  {
    re::initCollision(0);
  }

  v10 = (*(*v9 + 24))(v9, a3);
  a1[7] = v10;
  (*(*v10 + 16))(v10, a3, a4, a1, 0);
  *(a1[7] + 136) = a1;
  (*(*a1 + 80))(a1, v12);
  a1[121] = *(a1[7] + 144);
  result = (*(*a3 + 32))(a3, 0x100000, 0);
  a1[122] = result;
  return result;
}

uint64_t re::PhysXPhysicsSimulation::deinit(re::PhysXPhysicsSimulation *this)
{
  result = (*(*this + 32))(this);
  if (result)
  {
    (*(**(this + 119) + 40))(*(this + 119), *(this + 122));
    result = (*(**(this + 7) + 24))(*(this + 7));
    v3 = *(this + 7);
    if (v3)
    {
      v4 = *(this + 119);
      (**v3)(*(this + 7));
      result = (*(*v4 + 40))(v4, v3);
    }

    *(this + 121) = 0;
    *(this + 119) = 0;
  }

  return result;
}

uint64_t re::PhysXPhysicsSimulation::needsPeriodicUpdates(re::PhysXPhysicsSimulation *this)
{
  v1 = *(this + 7);
  if (!*(v1 + 152))
  {
    return 0;
  }

  v3 = *(this + 13);
  if (!v3)
  {
    return *(v1 + 100) != 0;
  }

  v4 = *(this + 15);
  v5 = 8 * v3;
  while (((*(**v4 + 296))(*v4) & 1) != 0)
  {
    ++v4;
    v5 -= 8;
    if (!v5)
    {
      v1 = *(this + 7);
      return *(v1 + 100) != 0;
    }
  }

  return 1;
}

double re::PhysXPhysicsSimulation::advance(re::PhysXPhysicsSimulation *this, float a2)
{
  v4 = *(this + 7);
  v5 = *(v4 + 152);
  v6 = *(this + 72);
  *(v4 + 389) = v6;
  if (v6 == 1 && (physx::shdfnd::g_alwaysUseLocking & 1) == 0)
  {
    physx::shdfnd::g_alwaysUseLocking = 1;
  }

  v7 = *(v4 + 168);
  if (v7)
  {
    *(v7 + 16) = *(v4 + 388) | v6;
  }

  v8 = *(this + 13);
  if (v8)
  {
    v9 = *(this + 15);
    v10 = 8 * v8;
    v11 = 0uLL;
    while (1)
    {
      v12 = *v9;
      v13 = *(*v9 + 256);
      *(v12 + 368) = *(*v9 + 240);
      *(v12 + 384) = v13;
      v14 = *(v12 + 288);
      *(v12 + 400) = *(v12 + 272);
      *(v12 + 416) = v14;
      *(v12 + 272) = v11;
      *(v12 + 288) = v11;
      *(v12 + 240) = v11;
      *(v12 + 256) = v11;
      v15 = *(v12 + 208);
      if (v15 == 2)
      {
        break;
      }

      if (v15 == 1)
      {
        re::PhysXRigidBody::updateKinematicTargetFromVelocity(v12, a2);
LABEL_12:
        v11 = 0uLL;
      }

      *(v12 + 272) = v11;
      *(v12 + 288) = v11;
      ++v9;
      *(v12 + 240) = v11;
      *(v12 + 256) = v11;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    re::PhysXRigidBody::applyUserForces(v12);
    goto LABEL_12;
  }

LABEL_14:
  re::PhysicsSimulation::applyForceEffects(this);
  v16 = *(this + 45);
  if (v16)
  {
    v17 = *(this + 47);
    v18 = 8 * v16;
    do
    {
      v19 = *v17++;
      (*(*this + 112))(this, v19, this + 384, a2);
      v18 -= 8;
    }

    while (v18);
  }

  (*(*v5 + 400))(v5, 0, *(this + 122), 0x100000, 1, a2);
  v20 = *(this + 13);
  if (v20)
  {
    v21 = *(this + 15);
    v22 = 8 * v20;
    do
    {
      v23 = *v21++;
      (*(*v23 + 368))(v23);
      v22 -= 8;
    }

    while (v22);
  }

  result = *(this + 3) + a2;
  *(this + 3) = result;
  return result;
}

int64x2_t re::PhysXPhysicsSimulation::collectStats(re::PhysXPhysicsSimulation *this)
{
  v2 = 0;
  v3 = *(*(this + 7) + 152);
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  do
  {
    v4 = &v81 + v2;
    *(v4 + 124) = 0;
    v5 = &v92[v2];
    *(v4 + 116) = 0;
    *(v4 + 35) = 0;
    *(v4 + 132) = 0;
    *(v4 + 40) = 0;
    *(v4 + 41) = 0;
    *(v4 + 39) = 0;
    *(v4 + 84) = 0;
    *(v4 + 133) = 0;
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    *(v4 + 88) = 0;
    *(v4 + 90) = 0;
    *(v4 + 89) = 0;
    v2 += 28;
    *(v4 + 182) = 0;
  }

  while (v2 != 196);
  v84 = 0;
  v85 = 0;
  v87 = 0;
  v86 = 0;
  (*(*v3 + 592))(v3, &v81);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v6 = re::internal::enableSignposts(0, 0);
  if (v6)
  {
    v6 = kdebug_trace();
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v6);
  if (isStatisticCollectionEnabled)
  {
    isStatisticCollectionEnabled = re::profilerThreadContext(isStatisticCollectionEnabled);
    v8 = *(isStatisticCollectionEnabled + 152);
    if (v8)
    {
      v9 = (v83 + HIDWORD(v82) + HIDWORD(v83));
      v10 = v8[536].u64[0];
      if (v10 >= v9)
      {
        v10 = (v83 + HIDWORD(v82) + HIDWORD(v83));
      }

      v8[536].i64[0] = v10;
      v11 = v8[536].u64[1];
      if (v11 <= v9)
      {
        v11 = v9;
      }

      v8[536].i64[1] = v11;
      v12 = vdupq_n_s64(1uLL);
      v12.i64[0] = v9;
      v8[537] = vaddq_s64(v8[537], v12);
      *(isStatisticCollectionEnabled + 184) = 0;
    }
  }

  v13 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v13)
  {
    v13 = re::profilerThreadContext(v13);
    v14 = *(v13 + 152);
    if (v14)
    {
      v15 = (v82 + HIDWORD(v81));
      v16 = v14[544].u64[0];
      if (v16 >= v15)
      {
        v16 = (v82 + HIDWORD(v81));
      }

      v14[544].i64[0] = v16;
      v17 = v14[544].u64[1];
      if (v17 <= v15)
      {
        v17 = v15;
      }

      v14[544].i64[1] = v17;
      v18 = vdupq_n_s64(1uLL);
      v18.i64[0] = v15;
      v14[545] = vaddq_s64(v14[545], v18);
      *(v13 + 184) = 0;
    }
  }

  v19 = re::ProfilerConfig::isStatisticCollectionEnabled(v13);
  if (v19)
  {
    v19 = re::profilerThreadContext(v19);
    v20 = *(v19 + 152);
    if (v20)
    {
      v21 = *(this + 34);
      v22 = v20[576].u64[0];
      if (v22 >= v21)
      {
        v22 = *(this + 34);
      }

      v20[576].i64[0] = v22;
      v23 = v20[576].u64[1];
      if (v23 <= v21)
      {
        v23 = v21;
      }

      v20[576].i64[1] = v23;
      v24 = vdupq_n_s64(1uLL);
      v24.i64[0] = v21;
      v20[577] = vaddq_s64(v20[577], v24);
      *(v19 + 184) = 0;
    }
  }

  v25 = re::ProfilerConfig::isStatisticCollectionEnabled(v19);
  if (v25)
  {
    v26 = re::profilerThreadContext(v25);
    v25 = (*(**(*(this + 7) + 128) + 176))(*(*(this + 7) + 128));
    v27 = *(v26 + 152);
    if (v27)
    {
      v28 = v27[552].i64[0];
      if (v28 >= v25)
      {
        v28 = v25;
      }

      v27[552].i64[0] = v28;
      v29 = v27[552].i64[1];
      if (v29 <= v25)
      {
        v29 = v25;
      }

      v27[552].i64[1] = v29;
      v30 = vdupq_n_s64(1uLL);
      v30.i64[0] = v25;
      v27[553] = vaddq_s64(v27[553], v30);
      *(v26 + 184) = 0;
    }
  }

  v31 = re::ProfilerConfig::isStatisticCollectionEnabled(v25);
  if (v31)
  {
    v31 = re::profilerThreadContext(v31);
    v32 = *(v31 + 152);
    if (v32)
    {
      v33 = DWORD2(v89);
      v34 = v32[560].u64[0];
      if (v34 >= DWORD2(v89))
      {
        v34 = DWORD2(v89);
      }

      v32[560].i64[0] = v34;
      v35 = v32[560].u64[1];
      if (v35 <= v33)
      {
        v35 = v33;
      }

      v32[560].i64[1] = v35;
      v36 = vdupq_n_s64(1uLL);
      v36.i64[0] = v33;
      v32[561] = vaddq_s64(v32[561], v36);
      *(v31 + 184) = 0;
    }
  }

  v37 = re::ProfilerConfig::isStatisticCollectionEnabled(v31);
  if (v37)
  {
    v37 = re::profilerThreadContext(v37);
    v38 = *(v37 + 152);
    if (v38)
    {
      v39 = v81;
      v40 = v38[568].u64[0];
      if (v40 >= v81)
      {
        v40 = v81;
      }

      v38[568].i64[0] = v40;
      v41 = v38[568].u64[1];
      if (v41 <= v39)
      {
        v41 = v39;
      }

      v38[568].i64[1] = v41;
      v42 = vdupq_n_s64(1uLL);
      v42.i64[0] = v39;
      v38[569] = vaddq_s64(v38[569], v42);
      *(v37 + 184) = 0;
    }
  }

  v43 = re::ProfilerConfig::isStatisticCollectionEnabled(v37);
  if (v43)
  {
    v43 = re::profilerThreadContext(v43);
    v44 = *(v43 + 152);
    if (v44)
    {
      v45 = v84;
      v46 = v44[584].u64[0];
      if (v46 >= v84)
      {
        v46 = v84;
      }

      v44[584].i64[0] = v46;
      v47 = v44[584].u64[1];
      if (v47 <= v45)
      {
        v47 = v45;
      }

      v44[584].i64[1] = v47;
      v48 = vdupq_n_s64(1uLL);
      v48.i64[0] = v45;
      v44[585] = vaddq_s64(v44[585], v48);
      *(v43 + 184) = 0;
    }
  }

  v49 = re::ProfilerConfig::isStatisticCollectionEnabled(v43);
  if (v49)
  {
    v49 = re::profilerThreadContext(v49);
    v50 = *(v49 + 152);
    if (v50)
    {
      v51 = HIDWORD(v84);
      v52 = v50[592].u64[0];
      if (v52 >= HIDWORD(v84))
      {
        v52 = HIDWORD(v84);
      }

      v50[592].i64[0] = v52;
      v53 = v50[592].u64[1];
      if (v53 <= v51)
      {
        v53 = v51;
      }

      v50[592].i64[1] = v53;
      v54 = vdupq_n_s64(1uLL);
      v54.i64[0] = v51;
      v50[593] = vaddq_s64(v50[593], v54);
      *(v49 + 184) = 0;
    }
  }

  v55 = re::ProfilerConfig::isStatisticCollectionEnabled(v49);
  if (v55)
  {
    v55 = re::profilerThreadContext(v55);
    v56 = *(v55 + 152);
    if (v56)
    {
      v57 = v85;
      v58 = v56[600].u64[0];
      if (v58 >= v85)
      {
        v58 = v85;
      }

      v56[600].i64[0] = v58;
      v59 = v56[600].u64[1];
      if (v59 <= v57)
      {
        v59 = v57;
      }

      v56[600].i64[1] = v59;
      v60 = vdupq_n_s64(1uLL);
      v60.i64[0] = v57;
      v56[601] = vaddq_s64(v56[601], v60);
      *(v55 + 184) = 0;
    }
  }

  v61 = re::ProfilerConfig::isStatisticCollectionEnabled(v55);
  if (v61)
  {
    v61 = re::profilerThreadContext(v61);
    v62 = *(v61 + 152);
    if (v62)
    {
      v63 = HIDWORD(v85);
      v64 = v62[608].u64[0];
      if (v64 >= HIDWORD(v85))
      {
        v64 = HIDWORD(v85);
      }

      v62[608].i64[0] = v64;
      v65 = v62[608].u64[1];
      if (v65 <= v63)
      {
        v65 = v63;
      }

      v62[608].i64[1] = v65;
      v66 = vdupq_n_s64(1uLL);
      v66.i64[0] = v63;
      v62[609] = vaddq_s64(v62[609], v66);
      *(v61 + 184) = 0;
    }
  }

  v67 = re::ProfilerConfig::isStatisticCollectionEnabled(v61);
  if (v67)
  {
    v67 = re::profilerThreadContext(v67);
    v68 = *(v67 + 152);
    if (v68)
    {
      v69 = HIDWORD(v86);
      v70 = v68[616].u64[0];
      if (v70 >= HIDWORD(v86))
      {
        v70 = HIDWORD(v86);
      }

      v68[616].i64[0] = v70;
      v71 = v68[616].u64[1];
      if (v71 <= v69)
      {
        v71 = v69;
      }

      v68[616].i64[1] = v71;
      v72 = vdupq_n_s64(1uLL);
      v72.i64[0] = v69;
      v68[617] = vaddq_s64(v68[617], v72);
      *(v67 + 184) = 0;
    }
  }

  v73 = re::ProfilerConfig::isStatisticCollectionEnabled(v67);
  if (v73)
  {
    v75 = re::profilerThreadContext(v73);
    v76 = *(v75 + 152);
    if (v76)
    {
      v77 = v86;
      v78 = v76[624].u64[0];
      if (v78 >= v86)
      {
        v78 = v86;
      }

      v76[624].i64[0] = v78;
      v79 = v76[624].u64[1];
      if (v79 <= v77)
      {
        v79 = v77;
      }

      v76[624].i64[1] = v79;
      v80 = vdupq_n_s64(1uLL);
      v80.i64[0] = v77;
      result = vaddq_s64(v76[625], v80);
      v76[625] = result;
      *(v75 + 184) = 0;
    }
  }

  return result;
}