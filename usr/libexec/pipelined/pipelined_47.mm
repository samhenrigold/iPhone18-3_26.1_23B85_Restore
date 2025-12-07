void sub_1002D9018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D902C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D9040(uint64_t a1)
{
  *a1 = off_100447308;
  if (*(a1 + 184))
  {
    operator delete[]();
  }

  if (*(a1 + 168))
  {
    operator delete[]();
  }

  if (*(a1 + 152))
  {
    operator delete[]();
  }

  if (*(a1 + 136))
  {
    operator delete[]();
  }

  if (*(a1 + 120))
  {
    operator delete[]();
  }

  if (*(a1 + 104))
  {
    operator delete[]();
  }

  if (*(a1 + 92) >= 1)
  {
    v2 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < *(a1 + 92));
  }

  if (*(a1 + 80))
  {
    operator delete[]();
  }

  if (*(a1 + 64))
  {
    operator delete[]();
  }

  if (*(a1 + 48))
  {
    operator delete[]();
  }

  if (*(a1 + 32))
  {
    operator delete[]();
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002D91BC(uint64_t a1)
{
  sub_1002D9040(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002D92B0(uint64_t a1)
{
  if ((*(a1 + 213) & 0x7F8) != 0)
  {
    *(a1 + 200) = 0;
  }

  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  if (*(a1 + 88) >= 1)
  {
    v1 = 0;
    do
    {
      while (1)
      {
        v2 = *(*(a1 + 80) + 8 * v1);
        if (*(v2 + 23) < 0)
        {
          break;
        }

        *v2 = 0;
        *(v2 + 23) = 0;
        if (++v1 >= *(a1 + 88))
        {
          goto LABEL_8;
        }
      }

      **v2 = 0;
      *(v2 + 8) = 0;
      ++v1;
    }

    while (v1 < *(a1 + 88));
  }

LABEL_8:
  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 20) = 0;
  *(result + 26) = 0;
  *(result + 30) = 0;
  *(result + 34) = 0;
  *(result + 38) = 0;
  *(result + 42) = 0;
  *(result + 46) = 0;
  *(result + 51) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002D9358(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = result;
  while (1)
  {
    while (1)
    {
LABEL_2:
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        v7 = result;
        *(this + 8) = result;
        if (!result)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = v7;
        *(this + 1) = v6 + 1;
        if (!v7)
        {
          return 1;
        }
      }

      v8 = v7 >> 3;
      v9 = v7 & 7;
      if (v7 >> 3 > 6)
      {
        break;
      }

      if (v7 >> 3 > 3)
      {
        if (v8 != 4)
        {
          if (v8 == 5)
          {
            if (v9 == 2)
            {
              v10 = *(v5 + 92);
              v11 = *(v5 + 88);
              if (v11 >= v10)
              {
                goto LABEL_171;
              }

LABEL_62:
              *(v5 + 88) = v11 + 1;
              goto LABEL_174;
            }
          }

          else if (v8 == 6)
          {
            if ((v7 & 7) == 0)
            {
              v17 = *(this + 1);
              v16 = *(this + 2);
              goto LABEL_179;
            }

            if (v9 == 2)
            {
              result = sub_1002DA6BC(this, (v5 + 104));
              if (!result)
              {
                return result;
              }

              goto LABEL_202;
            }
          }

          goto LABEL_65;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            result = sub_100059C10(this, (v5 + 64));
            if (!result)
            {
              return result;
            }

            goto LABEL_167;
          }

          goto LABEL_65;
        }

        while (1)
        {
          *v148 = 0;
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v148);
          if ((result & 1) == 0)
          {
            return 0;
          }

          v54 = *v148;
          v55 = *(v5 + 72);
          v56 = *(v5 + 64);
          if (v55 == *(v5 + 76))
          {
            if (2 * v55 <= v55 + 1)
            {
              v57 = v55 + 1;
            }

            else
            {
              v57 = 2 * v55;
            }

            if (v57 <= 4)
            {
              v57 = 4;
            }

            *(v5 + 76) = v57;
            operator new[]();
          }

          v58 = v55 + 1;
          *(v5 + 72) = v55 + 1;
          *(v56 + 8 * v55) = v54;
          v59 = *(this + 1);
          v60 = *(this + 4) - v59;
          if (v60 >= 1)
          {
            v61 = *(v5 + 76) - v58;
            v62 = v60 / 9u;
            if ((v60 / 9u) >= v61)
            {
              v62 = *(v5 + 76) - v58;
            }

            if (v62 >= 1)
            {
              v63 = 0;
              v64 = v55 + 2;
              v65 = v56 + 8 * v58;
              v66 = ((*(this + 4) - v59) * 0x1C71C71C71C71C72uLL) >> 64;
              if (v66 >= v61)
              {
                LODWORD(v66) = v61;
              }

              while (*v59 == 33)
              {
                v67 = *(v59 + 1);
                *(v5 + 72) = v64;
                *(v65 + 8 * v63) = v67;
                ++v64;
                ++v63;
                v59 += 9;
                if (v66 == v63)
                {
                  goto LABEL_166;
                }
              }

              if (!v63)
              {
                goto LABEL_167;
              }

              v62 = v63;
LABEL_166:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v62);
            }
          }

LABEL_167:
          v36 = *(this + 1);
          if (v36 >= *(this + 2))
          {
            goto LABEL_2;
          }

          v68 = *v36;
          if (v68 != 33)
          {
            break;
          }

LABEL_146:
          *(this + 1) = v36 + 1;
        }

        if (v68 != 42)
        {
          continue;
        }

        do
        {
          *(this + 1) = v36 + 1;
          v10 = *(v5 + 92);
          v11 = *(v5 + 88);
          if (v11 < v10)
          {
            goto LABEL_62;
          }

LABEL_171:
          if (v10 == *(v5 + 96))
          {
            result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 80), v10 + 1);
            v10 = *(v5 + 92);
          }

          *(v5 + 92) = v10 + 1;
          v69 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
          v70 = *(v5 + 80);
          v71 = *(v5 + 88);
          *(v5 + 88) = v71 + 1;
          *(v70 + 8 * v71) = v69;
LABEL_174:
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v36 = *(this + 1);
          v16 = *(this + 2);
          if (v36 >= v16)
          {
            goto LABEL_2;
          }

          v72 = *v36;
        }

        while (v72 == 42);
        do
        {
          if (v72 != 48)
          {
            goto LABEL_2;
          }

          v17 = (v36 + 1);
          *(this + 1) = v17;
LABEL_179:
          v148[0] = 0;
          if (v17 >= v16 || (v73 = *v17, v73 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v148);
            if (!result)
            {
              return result;
            }

            v74 = v148[0] != 0;
            v75 = *(v5 + 112);
            v76 = *(v5 + 104);
            if (v75 == *(v5 + 116))
            {
LABEL_185:
              if (2 * v75 <= v75 + 1)
              {
                v77 = v75 + 1;
              }

              else
              {
                v77 = 2 * v75;
              }

              if (v77 <= 4)
              {
                v78 = 4;
              }

              else
              {
                v78 = v77;
              }

              *(v5 + 116) = v78;
              operator new[]();
            }
          }

          else
          {
            *(this + 1) = v17 + 1;
            v74 = v73 != 0;
            v75 = *(v5 + 112);
            v76 = *(v5 + 104);
            if (v75 == *(v5 + 116))
            {
              goto LABEL_185;
            }
          }

          v79 = v75 + 1;
          *(v5 + 112) = v75 + 1;
          *(v76 + v75) = v74;
          v80 = *(v5 + 116);
          if (v80 - (v75 + 1) >= 1)
          {
            v81 = v80 - v75;
            do
            {
              v82 = *(this + 1);
              v83 = *(this + 2);
              if (v82 >= v83 || *v82 != 48)
              {
                break;
              }

              *(this + 1) = v82 + 1;
              v148[0] = 0;
              if ((v82 + 1) >= v83 || (v84 = v82[1], (v84 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v148);
                if (!result)
                {
                  return result;
                }

                v84 = v148[0];
                v76 = *(v5 + 104);
                v79 = *(v5 + 112);
              }

              else
              {
                *(this + 1) = v82 + 2;
              }

              *(v5 + 112) = v79 + 1;
              *(v76 + v79) = v84 != 0;
              --v81;
              ++v79;
            }

            while (v81 > 1);
          }

LABEL_202:
          v36 = *(this + 1);
          v16 = *(this + 2);
          if (v36 >= v16)
          {
            goto LABEL_2;
          }

          v72 = *v36;
        }

        while (v72 != 57);
        *(this + 1) = v36 + 1;
LABEL_205:
        *v148 = 0;
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v148);
        if ((result & 1) == 0)
        {
          return 0;
        }

        *(v5 + 200) = *v148;
        *(v5 + 212) |= 0x800u;
        v85 = *(this + 1);
        v14 = *(this + 2);
        if (v85 < v14)
        {
          v86 = *v85;
          goto LABEL_208;
        }
      }

      else
      {
        if (v8 != 1)
        {
          if (v8 == 2)
          {
            if ((v7 & 7) == 0)
            {
              v20 = *(this + 1);
              v12 = *(this + 2);
              goto LABEL_101;
            }

            if (v9 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline();
              if (!result)
              {
                return result;
              }

              goto LABEL_115;
            }
          }

          else if (v8 == 3)
          {
            if ((v7 & 7) == 0)
            {
              v13 = *(this + 1);
              v12 = *(this + 2);
              goto LABEL_120;
            }

            if (v9 == 2)
            {
              result = sub_1002DA524(this, (v5 + 48));
              if (!result)
              {
                return result;
              }

              goto LABEL_142;
            }
          }

          goto LABEL_65;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            result = sub_100059C10(this, (v5 + 16));
            if (!result)
            {
              return result;
            }

            goto LABEL_96;
          }

          goto LABEL_65;
        }

        while (1)
        {
          *v148 = 0;
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v148);
          if ((result & 1) == 0)
          {
            return 0;
          }

          v22 = *v148;
          v23 = *(v5 + 24);
          v24 = *(v5 + 16);
          if (v23 == *(v5 + 28))
          {
            if (2 * v23 <= v23 + 1)
            {
              v25 = v23 + 1;
            }

            else
            {
              v25 = 2 * v23;
            }

            if (v25 <= 4)
            {
              v25 = 4;
            }

            *(v5 + 28) = v25;
            operator new[]();
          }

          v26 = v23 + 1;
          *(v5 + 24) = v23 + 1;
          *(v24 + 8 * v23) = v22;
          v27 = *(this + 1);
          v28 = *(this + 4) - v27;
          if (v28 >= 1)
          {
            v29 = *(v5 + 28) - v26;
            v30 = v28 / 9u;
            if ((v28 / 9u) >= v29)
            {
              v30 = *(v5 + 28) - v26;
            }

            if (v30 >= 1)
            {
              v31 = 0;
              v32 = v23 + 2;
              v33 = v24 + 8 * v26;
              v34 = ((*(this + 4) - v27) * 0x1C71C71C71C71C72uLL) >> 64;
              if (v34 >= v29)
              {
                LODWORD(v34) = v29;
              }

              while (*v27 == 9)
              {
                v35 = *(v27 + 1);
                *(v5 + 24) = v32;
                *(v33 + 8 * v31) = v35;
                ++v32;
                ++v31;
                v27 += 9;
                if (v34 == v31)
                {
                  goto LABEL_95;
                }
              }

              if (!v31)
              {
                goto LABEL_96;
              }

              v30 = v31;
LABEL_95:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v30);
            }
          }

LABEL_96:
          v36 = *(this + 1);
          v12 = *(this + 2);
          if (v36 >= v12)
          {
            goto LABEL_2;
          }

          v37 = *v36;
          if (v37 == 16)
          {
            break;
          }

          if (v37 != 9)
          {
            goto LABEL_2;
          }

          *(this + 1) = v36 + 1;
        }

        while (1)
        {
          v20 = (v36 + 1);
          *(this + 1) = v20;
LABEL_101:
          v148[0] = 0;
          if (v20 >= v12 || (v38 = *v20, v38 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v148);
            if (!result)
            {
              return result;
            }

            v38 = v148[0];
            if (v148[0] - 1 > 3)
            {
LABEL_113:
              result = wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((v5 + 8), 2, v38);
              goto LABEL_115;
            }
          }

          else
          {
            *(this + 1) = v20 + 1;
            if ((v38 - 1) > 3)
            {
              goto LABEL_113;
            }
          }

          v39 = *(v5 + 40);
          v40 = *(v5 + 32);
          if (v39 == *(v5 + 44))
          {
            if (2 * v39 <= v39 + 1)
            {
              v41 = v39 + 1;
            }

            else
            {
              v41 = 2 * v39;
            }

            if (v41 <= 4)
            {
              v41 = 4;
            }

            *(v5 + 44) = v41;
            operator new[]();
          }

          *(v5 + 40) = v39 + 1;
          *(v40 + 4 * v39) = v38;
LABEL_115:
          v36 = *(this + 1);
          v12 = *(this + 2);
          if (v36 >= v12)
          {
            goto LABEL_2;
          }

          v42 = *v36;
          if (v42 == 24)
          {
            break;
          }

          if (v42 != 16)
          {
            goto LABEL_2;
          }
        }

        do
        {
          v13 = (v36 + 1);
          *(this + 1) = v13;
LABEL_120:
          v148[0] = 0;
          if (v13 >= v12 || (v43 = *v13, (v43 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v148);
            if (!result)
            {
              return result;
            }

            v43 = v148[0];
            v44 = *(v5 + 56);
            v45 = *(v5 + 48);
            if (v44 == *(v5 + 60))
            {
LABEL_126:
              if (2 * v44 <= v44 + 1)
              {
                v46 = v44 + 1;
              }

              else
              {
                v46 = 2 * v44;
              }

              if (v46 <= 4)
              {
                v46 = 4;
              }

              *(v5 + 60) = v46;
              operator new[]();
            }
          }

          else
          {
            *(this + 1) = v13 + 1;
            v44 = *(v5 + 56);
            v45 = *(v5 + 48);
            if (v44 == *(v5 + 60))
            {
              goto LABEL_126;
            }
          }

          *(v5 + 56) = v44 + 1;
          *(v45 + 4 * v44) = v43;
          v47 = *(v5 + 60) - *(v5 + 56);
          if (v47 >= 1)
          {
            for (i = v47 + 1; i > 1; --i)
            {
              v50 = *(this + 1);
              v51 = *(this + 2);
              if (v50 >= v51 || *v50 != 24)
              {
                break;
              }

              *(this + 1) = v50 + 1;
              v148[0] = 0;
              if ((v50 + 1) >= v51 || (v52 = v50[1], (v52 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v148);
                if (!result)
                {
                  return result;
                }

                v52 = v148[0];
                v45 = *(v5 + 48);
              }

              else
              {
                *(this + 1) = v50 + 2;
              }

              v49 = *(v5 + 56);
              *(v5 + 56) = v49 + 1;
              *(v45 + 4 * v49) = v52;
            }
          }

LABEL_142:
          v36 = *(this + 1);
          v12 = *(this + 2);
          if (v36 >= v12)
          {
            break;
          }

          v53 = *v36;
          if (v53 == 33)
          {
            goto LABEL_146;
          }
        }

        while (v53 == 24);
      }
    }

    if (v7 >> 3 <= 9)
    {
      break;
    }

    if (v8 == 10)
    {
      if (v9 == 1)
      {
        goto LABEL_262;
      }

      if (v9 == 2)
      {
        result = sub_100059C10(this, (v5 + 152));
        if (!result)
        {
          return result;
        }

        goto LABEL_282;
      }

      goto LABEL_65;
    }

    if (v8 == 11)
    {
      if (v9 == 1)
      {
        goto LABEL_286;
      }

      if (v9 == 2)
      {
        result = sub_100059C10(this, (v5 + 168));
        if (!result)
        {
          return result;
        }

        goto LABEL_306;
      }

      goto LABEL_65;
    }

    if (v8 != 12)
    {
      goto LABEL_65;
    }

    if ((v7 & 7) != 0)
    {
      if (v9 == 2)
      {
        result = sub_1002DA85C(this, (v5 + 184));
        if (!result)
        {
          return result;
        }

        goto LABEL_332;
      }

LABEL_65:
      if (v9 == 4)
      {
        return 1;
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, v7, v5 + 8, a4);
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v19 = *(this + 1);
      v18 = *(this + 2);
      while (1)
      {
        *v148 = 0;
        if (v19 >= v18 || (v138 = *v19, v138 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v148);
          if (!result)
          {
            return result;
          }

          v138 = *v148;
          v139 = *(v5 + 192);
          v140 = *(v5 + 184);
          if (v139 == *(v5 + 196))
          {
LABEL_316:
            if (2 * v139 <= v139 + 1)
            {
              v141 = v139 + 1;
            }

            else
            {
              v141 = 2 * v139;
            }

            if (v141 <= 4)
            {
              v141 = 4;
            }

            *(v5 + 196) = v141;
            operator new[]();
          }
        }

        else
        {
          *(this + 1) = v19 + 1;
          v139 = *(v5 + 192);
          v140 = *(v5 + 184);
          if (v139 == *(v5 + 196))
          {
            goto LABEL_316;
          }
        }

        v142 = v139 + 1;
        *(v5 + 192) = v139 + 1;
        *(v140 + 8 * v139) = v138;
        v143 = *(v5 + 196);
        if (v143 - (v139 + 1) >= 1)
        {
          for (j = v143 - v139; j > 1; --j)
          {
            v146 = *(this + 1);
            v145 = *(this + 2);
            if (v146 >= v145 || *v146 != 96)
            {
              break;
            }

            *(this + 1) = v146 + 1;
            *v148 = 0;
            if ((v146 + 1) >= v145 || (v147 = v146[1], v147 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v148);
              if (!result)
              {
                return result;
              }

              v147 = *v148;
              v140 = *(v5 + 184);
              v142 = *(v5 + 192);
            }

            else
            {
              *(this + 1) = v146 + 2;
            }

            *(v5 + 192) = v142 + 1;
            *(v140 + 8 * v142++) = v147;
          }
        }

LABEL_332:
        v85 = *(this + 1);
        v18 = *(this + 2);
        if (v85 >= v18 || *v85 != 96)
        {
          break;
        }

LABEL_309:
        v19 = v85 + 1;
        *(this + 1) = v19;
      }

      if (v85 == v18 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }
  }

  if (v8 == 7)
  {
    if (v9 != 1)
    {
      goto LABEL_65;
    }

    goto LABEL_205;
  }

  if (v8 == 8)
  {
    if ((v7 & 7) == 0)
    {
      v21 = *(this + 1);
      v14 = *(this + 2);
      goto LABEL_210;
    }

    if (v9 == 2)
    {
      result = sub_1002DA524(this, (v5 + 120));
      if (!result)
      {
        return result;
      }

      while (1)
      {
        v85 = *(this + 1);
        v14 = *(this + 2);
        if (v85 >= v14)
        {
          goto LABEL_2;
        }

        v86 = *v85;
        if (v86 == 72)
        {
          goto LABEL_234;
        }

LABEL_208:
        if (v86 != 64)
        {
          goto LABEL_2;
        }

        v21 = v85 + 1;
        *(this + 1) = v21;
LABEL_210:
        v148[0] = 0;
        if (v21 >= v14 || (v87 = *v21, (v87 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v148);
          if (!result)
          {
            return result;
          }

          v87 = v148[0];
          v88 = *(v5 + 128);
          v89 = *(v5 + 120);
          if (v88 == *(v5 + 132))
          {
LABEL_216:
            if (2 * v88 <= v88 + 1)
            {
              v90 = v88 + 1;
            }

            else
            {
              v90 = 2 * v88;
            }

            if (v90 <= 4)
            {
              v90 = 4;
            }

            *(v5 + 132) = v90;
            operator new[]();
          }
        }

        else
        {
          *(this + 1) = v21 + 1;
          v88 = *(v5 + 128);
          v89 = *(v5 + 120);
          if (v88 == *(v5 + 132))
          {
            goto LABEL_216;
          }
        }

        *(v5 + 128) = v88 + 1;
        *(v89 + 4 * v88) = v87;
        v91 = *(v5 + 132) - *(v5 + 128);
        if (v91 >= 1)
        {
          v92 = v91 + 1;
          do
          {
            v94 = *(this + 1);
            v95 = *(this + 2);
            if (v94 >= v95 || *v94 != 64)
            {
              break;
            }

            *(this + 1) = v94 + 1;
            v148[0] = 0;
            if ((v94 + 1) >= v95 || (v96 = v94[1], (v96 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v148);
              if (!result)
              {
                return result;
              }

              v96 = v148[0];
              v89 = *(v5 + 120);
            }

            else
            {
              *(this + 1) = v94 + 2;
            }

            v93 = *(v5 + 128);
            *(v5 + 128) = v93 + 1;
            *(v89 + 4 * v93) = v96;
            --v92;
          }

          while (v92 > 1);
        }
      }
    }

    goto LABEL_65;
  }

  if (v8 != 9)
  {
    goto LABEL_65;
  }

  if ((v7 & 7) == 0)
  {
    v15 = *(this + 1);
    v14 = *(this + 2);
    goto LABEL_235;
  }

  if (v9 != 2)
  {
    goto LABEL_65;
  }

  result = sub_1002DA524(this, (v5 + 136));
  if (!result)
  {
    return result;
  }

  while (1)
  {
    v85 = *(this + 1);
    v14 = *(this + 2);
    if (v85 >= v14)
    {
      goto LABEL_2;
    }

    v107 = *v85;
    if (v107 == 81)
    {
      break;
    }

    if (v107 != 72)
    {
      goto LABEL_2;
    }

LABEL_234:
    v15 = v85 + 1;
    *(this + 1) = v15;
LABEL_235:
    v148[0] = 0;
    if (v15 >= v14 || (v97 = *v15, (v97 & 0x80000000) != 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v148);
      if (!result)
      {
        return result;
      }

      v97 = v148[0];
      v98 = *(v5 + 144);
      v99 = *(v5 + 136);
      if (v98 == *(v5 + 148))
      {
LABEL_241:
        if (2 * v98 <= v98 + 1)
        {
          v100 = v98 + 1;
        }

        else
        {
          v100 = 2 * v98;
        }

        if (v100 <= 4)
        {
          v100 = 4;
        }

        *(v5 + 148) = v100;
        operator new[]();
      }
    }

    else
    {
      *(this + 1) = v15 + 1;
      v98 = *(v5 + 144);
      v99 = *(v5 + 136);
      if (v98 == *(v5 + 148))
      {
        goto LABEL_241;
      }
    }

    *(v5 + 144) = v98 + 1;
    *(v99 + 4 * v98) = v97;
    v101 = *(v5 + 148) - *(v5 + 144);
    if (v101 >= 1)
    {
      v102 = v101 + 1;
      do
      {
        v104 = *(this + 1);
        v105 = *(this + 2);
        if (v104 >= v105 || *v104 != 72)
        {
          break;
        }

        *(this + 1) = v104 + 1;
        v148[0] = 0;
        if ((v104 + 1) >= v105 || (v106 = v104[1], (v106 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v148);
          if (!result)
          {
            return result;
          }

          v106 = v148[0];
          v99 = *(v5 + 136);
        }

        else
        {
          *(this + 1) = v104 + 2;
        }

        v103 = *(v5 + 144);
        *(v5 + 144) = v103 + 1;
        *(v99 + 4 * v103) = v106;
        --v102;
      }

      while (v102 > 1);
    }
  }

  do
  {
    *(this + 1) = v85 + 1;
LABEL_262:
    *v148 = 0;
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v148);
    if ((result & 1) == 0)
    {
      return 0;
    }

    v108 = *v148;
    v109 = *(v5 + 160);
    v110 = *(v5 + 152);
    if (v109 == *(v5 + 164))
    {
      if (2 * v109 <= v109 + 1)
      {
        v111 = v109 + 1;
      }

      else
      {
        v111 = 2 * v109;
      }

      if (v111 <= 4)
      {
        v111 = 4;
      }

      *(v5 + 164) = v111;
      operator new[]();
    }

    v112 = v109 + 1;
    *(v5 + 160) = v109 + 1;
    *(v110 + 8 * v109) = v108;
    v113 = *(this + 1);
    v114 = *(this + 4) - v113;
    if (v114 >= 1)
    {
      v115 = *(v5 + 164) - v112;
      v116 = v114 / 9u;
      if ((v114 / 9u) >= v115)
      {
        v116 = *(v5 + 164) - v112;
      }

      if (v116 >= 1)
      {
        v117 = 0;
        v118 = v109 + 2;
        v119 = v110 + 8 * v112;
        v120 = ((*(this + 4) - v113) * 0x1C71C71C71C71C72uLL) >> 64;
        if (v120 >= v115)
        {
          LODWORD(v120) = v115;
        }

        while (*v113 == 81)
        {
          v121 = *(v113 + 1);
          *(v5 + 160) = v118;
          *(v119 + 8 * v117) = v121;
          ++v118;
          ++v117;
          v113 += 9;
          if (v120 == v117)
          {
            goto LABEL_281;
          }
        }

        if (!v117)
        {
          goto LABEL_282;
        }

        v116 = v117;
LABEL_281:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v116);
      }
    }

LABEL_282:
    v85 = *(this + 1);
    if (v85 >= *(this + 2))
    {
      goto LABEL_2;
    }

    v122 = *v85;
  }

  while (v122 == 81);
  if (v122 != 89)
  {
    goto LABEL_2;
  }

  while (1)
  {
    *(this + 1) = v85 + 1;
LABEL_286:
    *v148 = 0;
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v148);
    if ((result & 1) == 0)
    {
      return 0;
    }

    v123 = *v148;
    v124 = *(v5 + 176);
    v125 = *(v5 + 168);
    if (v124 == *(v5 + 180))
    {
      if (2 * v124 <= v124 + 1)
      {
        v126 = v124 + 1;
      }

      else
      {
        v126 = 2 * v124;
      }

      if (v126 <= 4)
      {
        v126 = 4;
      }

      *(v5 + 180) = v126;
      operator new[]();
    }

    v127 = v124 + 1;
    *(v5 + 176) = v124 + 1;
    *(v125 + 8 * v124) = v123;
    v128 = *(this + 1);
    v129 = *(this + 4) - v128;
    if (v129 >= 1)
    {
      v130 = *(v5 + 180) - v127;
      v131 = v129 / 9u;
      if ((v129 / 9u) >= v130)
      {
        v131 = *(v5 + 180) - v127;
      }

      if (v131 >= 1)
      {
        v132 = 0;
        v133 = v124 + 2;
        v134 = v125 + 8 * v127;
        v135 = ((*(this + 4) - v128) * 0x1C71C71C71C71C72uLL) >> 64;
        if (v135 >= v130)
        {
          LODWORD(v135) = v130;
        }

        while (*v128 == 89)
        {
          v136 = *(v128 + 1);
          *(v5 + 176) = v133;
          *(v134 + 8 * v132) = v136;
          ++v133;
          ++v132;
          v128 += 9;
          if (v135 == v132)
          {
            goto LABEL_305;
          }
        }

        if (!v132)
        {
          goto LABEL_306;
        }

        v131 = v132;
LABEL_305:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v131);
      }
    }

LABEL_306:
    v85 = *(this + 1);
    v18 = *(this + 2);
    if (v85 >= v18)
    {
      goto LABEL_2;
    }

    v137 = *v85;
    if (v137 != 89)
    {
      if (v137 != 96)
      {
        goto LABEL_2;
      }

      goto LABEL_309;
    }
  }
}

uint64_t sub_1002DA524(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
{
  v13 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
    if (!result)
    {
      return result;
    }

    v5 = v13;
  }

  else
  {
    v13 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v14 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v14);
        if (!result)
        {
          return result;
        }

        v9 = v14;
        v10 = *(a2 + 2);
        v11 = *a2;
        if (v10 == *(a2 + 3))
        {
LABEL_15:
          if (2 * v10 <= v10 + 1)
          {
            v12 = v10 + 1;
          }

          else
          {
            v12 = 2 * v10;
          }

          if (v12 <= 4)
          {
            v12 = 4;
          }

          *(a2 + 3) = v12;
          operator new[]();
        }
      }

      else
      {
        *(this + 1) = v8 + 1;
        v10 = *(a2 + 2);
        v11 = *a2;
        if (v10 == *(a2 + 3))
        {
          goto LABEL_15;
        }
      }

      *(a2 + 2) = v10 + 1;
      *(v11 + 4 * v10) = v9;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
  return 1;
}

uint64_t sub_1002DA6BC(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
{
  v15 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
    if (!result)
    {
      return result;
    }

    v5 = v15;
  }

  else
  {
    v15 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v16 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v16);
        if (!result)
        {
          return result;
        }

        v10 = v16 != 0;
        v11 = *(a2 + 2);
        v12 = *a2;
        if (v11 == *(a2 + 3))
        {
LABEL_15:
          if (2 * v11 <= v11 + 1)
          {
            v13 = v11 + 1;
          }

          else
          {
            v13 = 2 * v11;
          }

          if (v13 <= 4)
          {
            v14 = 4;
          }

          else
          {
            v14 = v13;
          }

          *(a2 + 3) = v14;
          operator new[]();
        }
      }

      else
      {
        *(this + 1) = v8 + 1;
        v10 = v9 != 0;
        v11 = *(a2 + 2);
        v12 = *a2;
        if (v11 == *(a2 + 3))
        {
          goto LABEL_15;
        }
      }

      *(a2 + 2) = v11 + 1;
      *(v12 + v11) = v10;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
  return 1;
}

uint64_t sub_1002DA85C(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
{
  v13 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
    if (!result)
    {
      return result;
    }

    v5 = v13;
  }

  else
  {
    v13 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v14 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x8000000000000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v14);
        if (!result)
        {
          return result;
        }

        v9 = v14;
        v10 = *(a2 + 2);
        v11 = *a2;
        if (v10 == *(a2 + 3))
        {
LABEL_15:
          if (2 * v10 <= v10 + 1)
          {
            v12 = v10 + 1;
          }

          else
          {
            v12 = 2 * v10;
          }

          if (v12 <= 4)
          {
            v12 = 4;
          }

          *(a2 + 3) = v12;
          operator new[]();
        }
      }

      else
      {
        *(this + 1) = v8 + 1;
        v10 = *(a2 + 2);
        v11 = *a2;
        if (v10 == *(a2 + 3))
        {
          goto LABEL_15;
        }
      }

      *(a2 + 2) = v10 + 1;
      *(v11 + 8 * v10) = v9;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
  return 1;
}

uint64_t sub_1002DA9F4(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 24) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(*(v5 + 16) + 8 * v6++), a3);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(*(v5 + 32) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(*(v5 + 48) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(*(v5 + 64) + 8 * v9++), a3);
    }

    while (v9 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v10 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v10;
    }

    while (v10 < *(v5 + 88));
  }

  if (*(v5 + 112) >= 1)
  {
    v11 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(*(v5 + 104) + v11++), a2, a4);
    }

    while (v11 < *(v5 + 112));
  }

  if ((*(v5 + 213) & 8) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 200), a3);
  }

  if (*(v5 + 128) >= 1)
  {
    v12 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(*(v5 + 120) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 128));
  }

  if (*(v5 + 144) >= 1)
  {
    v13 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, *(*(v5 + 136) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 144));
  }

  if (*(v5 + 160) >= 1)
  {
    v14 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(*(v5 + 152) + 8 * v14++), a3);
    }

    while (v14 < *(v5 + 160));
  }

  if (*(v5 + 176) >= 1)
  {
    v15 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(*(v5 + 168) + 8 * v15++), a3);
    }

    while (v15 < *(v5 + 176));
  }

  if (*(v5 + 192) >= 1)
  {
    v16 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0xC, *(*(v5 + 184) + 8 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 192));
  }

  v19 = *(v5 + 8);
  v18 = (v5 + 8);
  v17 = v19;
  if (v19 && *v17 != v17[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v18, a2, a3);
  }

  return result;
}

uint64_t sub_1002DACB0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 6) < 1)
  {
    result = a2;
    if (*(this + 10) < 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0;
    result = a2;
    do
    {
      v7 = *(*(this + 2) + 8 * v5);
      *result = 9;
      *(result + 1) = v7;
      result += 9;
      ++v5;
    }

    while (v5 < *(this + 6));
    if (*(this + 10) < 1)
    {
      goto LABEL_14;
    }
  }

  v8 = 0;
  do
  {
    v9 = *(*(this + 4) + 4 * v8);
    *result = 16;
    v10 = result + 1;
    if ((v9 & 0x80000000) != 0)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v9, v10, a3);
    }

    else if (v9 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v10, a3);
    }

    else
    {
      *(result + 1) = v9;
      result += 2;
    }

    ++v8;
  }

  while (v8 < *(this + 10));
LABEL_14:
  if (*(this + 14) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *(*(this + 6) + 4 * v11);
      *result = 24;
      v13 = result + 1;
      if ((v12 & 0x80000000) != 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v12, v13, a3);
      }

      else if (v12 > 0x7F)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v13, a3);
      }

      else
      {
        *(result + 1) = v12;
        result += 2;
      }

      ++v11;
    }

    while (v11 < *(this + 14));
  }

  if (*(this + 18) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(*(this + 8) + 8 * v14);
      *result = 33;
      *(result + 1) = v15;
      result += 9;
      ++v14;
    }

    while (v14 < *(this + 18));
  }

  if (*(this + 22) >= 1)
  {
    for (i = 0; i < *(this + 22); ++i)
    {
      v21 = *(*(this + 10) + 8 * i);
      *result = 42;
      v22 = *(v21 + 23);
      if ((v22 & 0x8000000000000000) != 0)
      {
        v22 = *(v21 + 8);
        if (v22 > 0x7F)
        {
LABEL_39:
          v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, result + 1, a3);
          goto LABEL_28;
        }
      }

      else if (v22 > 0x7F)
      {
        goto LABEL_39;
      }

      *(result + 1) = v22;
      v17 = result + 2;
LABEL_28:
      v18 = *(v21 + 23);
      if (v18 >= 0)
      {
        v19 = v21;
      }

      else
      {
        v19 = *v21;
      }

      if (v18 >= 0)
      {
        v20 = *(v21 + 23);
      }

      else
      {
        v20 = *(v21 + 8);
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v19, v20, v17, a4);
    }
  }

  if (*(this + 28) >= 1)
  {
    v23 = 0;
    do
    {
      v24 = *(*(this + 13) + v23);
      *result = 48;
      *(result + 1) = v24;
      result += 2;
      ++v23;
    }

    while (v23 < *(this + 28));
  }

  if ((*(this + 213) & 8) != 0)
  {
    v25 = *(this + 25);
    *result = 57;
    *(result + 1) = v25;
    result += 9;
  }

  if (*(this + 32) >= 1)
  {
    v26 = 0;
    do
    {
      v27 = *(*(this + 15) + 4 * v26);
      *result = 64;
      v28 = result + 1;
      if ((v27 & 0x80000000) != 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v27, v28, a3);
      }

      else if (v27 > 0x7F)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v28, a3);
      }

      else
      {
        *(result + 1) = v27;
        result += 2;
      }

      ++v26;
    }

    while (v26 < *(this + 32));
  }

  if (*(this + 36) >= 1)
  {
    v29 = 0;
    do
    {
      v30 = *(*(this + 17) + 4 * v29);
      *result = 72;
      v31 = result + 1;
      if ((v30 & 0x80000000) != 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v30, v31, a3);
      }

      else if (v30 > 0x7F)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v30, v31, a3);
      }

      else
      {
        *(result + 1) = v30;
        result += 2;
      }

      ++v29;
    }

    while (v29 < *(this + 36));
  }

  if (*(this + 40) >= 1)
  {
    v32 = 0;
    do
    {
      v33 = *(*(this + 19) + 8 * v32);
      *result = 81;
      *(result + 1) = v33;
      result += 9;
      ++v32;
    }

    while (v32 < *(this + 40));
  }

  if (*(this + 44) >= 1)
  {
    v34 = 0;
    do
    {
      v35 = *(*(this + 21) + 8 * v34);
      *result = 89;
      *(result + 1) = v35;
      result += 9;
      ++v34;
    }

    while (v34 < *(this + 44));
  }

  if (*(this + 48) >= 1)
  {
    v36 = 0;
    do
    {
      v37 = *(*(this + 23) + 8 * v36);
      *result = 96;
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v37, result + 1, a3);
      ++v36;
    }

    while (v36 < *(this + 48));
  }

  v40 = *(this + 1);
  v39 = (this + 8);
  v38 = v40;
  if (v40 && *v38 != v38[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v39, result, a3);
  }

  return result;
}

uint64_t sub_1002DB1D4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 213) << 28;
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v9 = *(*(a1 + 32) + 4 * v6);
      if ((v9 & 0x80000000) != 0)
      {
        v8 = 10;
      }

      else if (v9 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
        v5 = *(a1 + 40);
      }

      else
      {
        v8 = 1;
      }

      v7 += v8;
      ++v6;
    }

    while (v6 < v5);
  }

  v10 = (v3 >> 31) & 9;
  v11 = *(a1 + 56);
  if (v11 < 1)
  {
    v13 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v15 = *(*(a1 + 48) + 4 * v12);
      if ((v15 & 0x80000000) != 0)
      {
        v14 = 10;
      }

      else if (v15 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
        v11 = *(a1 + 56);
      }

      else
      {
        v14 = 1;
      }

      v13 += v14;
      ++v12;
    }

    while (v12 < v11);
  }

  v16 = *(a1 + 88);
  v17 = v7 + v10 + v5 + v13 + v11 + v16 + 9 * (*(a1 + 72) + v4);
  if (v16 >= 1)
  {
    for (i = 0; i < v16; ++i)
    {
      v21 = *(*(a1 + 80) + 8 * i);
      v20 = *(v21 + 23);
      v22 = v20;
      v23 = *(v21 + 8);
      if ((v20 & 0x80u) == 0)
      {
        v24 = *(v21 + 23);
      }

      else
      {
        v24 = v23;
      }

      if (v24 < 0x80)
      {
        v19 = 1;
      }

      else
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
        v20 = *(v21 + 23);
        v23 = *(v21 + 8);
        v16 = *(a1 + 88);
        v22 = *(v21 + 23);
      }

      if (v22 < 0)
      {
        v20 = v23;
      }

      v17 += v19 + v20;
    }
  }

  v25 = *(a1 + 112);
  v26 = *(a1 + 128);
  if (v26 < 1)
  {
    v28 = 0;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v30 = *(*(a1 + 120) + 4 * v27);
      if ((v30 & 0x80000000) != 0)
      {
        v29 = 10;
      }

      else if (v30 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
        v26 = *(a1 + 128);
      }

      else
      {
        v29 = 1;
      }

      v28 += v29;
      ++v27;
    }

    while (v27 < v26);
  }

  v31 = *(a1 + 144);
  if (v31 < 1)
  {
    v33 = 0;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    do
    {
      v35 = *(*(a1 + 136) + 4 * v32);
      if ((v35 & 0x80000000) != 0)
      {
        v34 = 10;
      }

      else if (v35 >= 0x80)
      {
        v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2);
        v31 = *(a1 + 144);
      }

      else
      {
        v34 = 1;
      }

      v33 += v34;
      ++v32;
    }

    while (v32 < v31);
  }

  v36 = 2 * v25;
  v37 = *(a1 + 160);
  v38 = *(a1 + 176);
  LODWORD(v39) = *(a1 + 192);
  if (v39 < 1)
  {
    v41 = 0;
  }

  else
  {
    v45 = 2 * v25;
    v40 = 0;
    v41 = 0;
    do
    {
      v41 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(a1 + 184) + 8 * v40++), a2);
      v39 = *(a1 + 192);
    }

    while (v40 < v39);
    v36 = v45;
  }

  v42 = (v36 + v17 + v28 + v26 + v33 + v31 + 9 * (v38 + v37) + v39 + v41);
  v43 = *(a1 + 8);
  if (v43 && *v43 != v43[1])
  {
    v42 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v42;
  }

  *(a1 + 208) = v42;
  return v42;
}

uint64_t sub_1002DB4CC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1002D8848(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1002DB5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002DB5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DB5D4(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1002DB668()
{
  v0 = qword_10045D390;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002D47B8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D318;
}

void sub_1002DB6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DB70C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), *(a2 + 32) + *(a1 + 32));
  if (*(a2 + 32) >= 1)
  {
    v4 = 0;
    do
    {
      v6 = *(*(a2 + 24) + 8 * v4);
      v7 = *(a1 + 36);
      v8 = *(a1 + 32);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 40))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v7 + 1);
          v7 = *(a1 + 36);
        }

        *(a1 + 36) = v7 + 1;
        operator new();
      }

      v5 = *(a1 + 24);
      *(a1 + 32) = v8 + 1;
      sub_1002D8848(*(v5 + 8 * v8), v6);
      ++v4;
    }

    while (v4 < *(a2 + 32));
  }

  if (*(a2 + 52))
  {
    *(a1 + 52) |= 1u;
    v9 = *(a1 + 16);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 16);
    if (!v10)
    {
      v10 = *(qword_100471C40 + 16);
    }

    sub_1002D5C0C(v9, v10);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002DB984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002DB998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002DB9C8(uint64_t a1)
{
  *a1 = off_1004473B8;
  if (qword_100471C40 != a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(a1 + 36);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(a1 + 24) + 8 * i);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v3 = *(a1 + 36);
      }
    }
  }

  if (*(a1 + 24))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002DBAD4(uint64_t a1)
{
  sub_1002DB9C8(a1);

  operator delete();
}

uint64_t sub_1002DBBA8(uint64_t this)
{
  v1 = this;
  if (*(this + 52))
  {
    this = *(this + 16);
    if (this)
    {
      v2 = *(this + 32);
      if (!v2 || (*(this + 24) = 1, (v2 & 2) == 0) || (v3 = *(this + 16), v3 == &wireless_diagnostics::google::protobuf::internal::kEmptyString))
      {
LABEL_8:
        v4 = *(this + 8);
        this += 8;
        *(this + 24) = 0;
        if (!v4)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if ((*(v3 + 23) & 0x80000000) == 0)
      {
        *v3 = 0;
        *(v3 + 23) = 0;
        goto LABEL_8;
      }

      **v3 = 0;
      *(v3 + 8) = 0;
      v9 = *(this + 8);
      this += 8;
      *(this + 24) = 0;
      if (v9)
      {
LABEL_9:
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

LABEL_10:
  if (*(v1 + 32) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(v1 + 24) + 8 * v5);
      this = (*(*v6 + 32))(v6);
      ++v5;
    }

    while (v5 < *(v1 + 32));
  }

  v8 = *(v1 + 8);
  v7 = (v1 + 8);
  *(v7 + 6) = 0;
  *(v7 + 11) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v7);
  }

  return this;
}

uint64_t sub_1002DBCB8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v8 != 2)
      {
        goto LABEL_15;
      }

      *(a1 + 52) |= 1u;
      v9 = *(a1 + 16);
      if (!v9)
      {
        operator new();
      }

      v34 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34))
        {
          return 0;
        }
      }

      else
      {
        v34 = *v10;
        *(this + 1) = v10 + 1;
      }

      v11 = *(this + 14);
      v12 = *(this + 15);
      *(this + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34);
      if (!sub_1002D6030(v9, this, v14, v15) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
      v16 = *(this + 14);
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (v18 < 0 == v17)
      {
        *(this + 14) = v18;
      }

      v19 = *(this + 1);
      if (v19 < *(this + 2) && *v19 == 18)
      {
        do
        {
          *(this + 1) = v19 + 1;
LABEL_27:
          v20 = *(a1 + 36);
          v21 = *(a1 + 32);
          if (v21 >= v20)
          {
            if (v20 == *(a1 + 40))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v20 + 1);
              v20 = *(a1 + 36);
            }

            *(a1 + 36) = v20 + 1;
            operator new();
          }

          v22 = *(a1 + 24);
          *(a1 + 32) = v21 + 1;
          v23 = *(v22 + 8 * v21);
          v35 = 0;
          v24 = *(this + 1);
          if (v24 >= *(this + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
            {
              return 0;
            }
          }

          else
          {
            v35 = *v24;
            *(this + 1) = v24 + 1;
          }

          v25 = *(this + 14);
          v26 = *(this + 15);
          *(this + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35);
          if (!sub_1002D9358(v23, this, v28, v29) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
          v30 = *(this + 14);
          v17 = __OFSUB__(v30, 1);
          v31 = v30 - 1;
          if (v31 < 0 == v17)
          {
            *(this + 14) = v31;
          }

          v19 = *(this + 1);
          v32 = *(this + 2);
        }

        while (v19 < v32 && *v19 == 18);
        if (v19 == v32 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1002DC0A0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 52))
  {
    v6 = *(result + 16);
    if (!v6)
    {
      v6 = *(qword_100471C40 + 16);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v6, a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002DC164(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if ((*(this + 52) & 1) == 0)
  {
    result = a2;
    if (*(this + 8) < 1)
    {
      goto LABEL_15;
    }

LABEL_10:
    v13 = 0;
    do
    {
      v15 = *(*(this + 3) + 8 * v13);
      *result = 18;
      v16 = *(v15 + 52);
      if (v16 <= 0x7F)
      {
        *(result + 1) = v16;
        v14 = result + 2;
      }

      else
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v15 + 52), result + 1, a3);
      }

      result = sub_1002DACB0(v15, v14, a3, a4);
      ++v13;
    }

    while (v13 < *(this + 8));
    goto LABEL_15;
  }

  v6 = *(this + 2);
  if (v6)
  {
    v7 = a2;
    *a2 = 10;
    v8 = a2 + 1;
    v9 = v6[7];
    if (v9 <= 0x7F)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(qword_100471C40 + 16);
    v7 = a2;
    *a2 = 10;
    v8 = a2 + 1;
    v9 = v6[7];
    if (v9 <= 0x7F)
    {
LABEL_6:
      *(v7 + 1) = v9;
      result = sub_1002D62C4(v6, (v7 + 2), a3, a4);
      if (*(this + 8) < 1)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
  result = sub_1002D62C4(v6, v10, v11, v12);
  if (*(this + 8) >= 1)
  {
    goto LABEL_10;
  }

LABEL_15:
  v19 = *(this + 1);
  v18 = (this + 8);
  v17 = v19;
  if (v19 && *v17 != v17[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v18, result, a3);
  }

  return result;
}

uint64_t sub_1002DC2BC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 52))
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = sub_1002D63F8(v5, a2);
      if (v6 < 0x80)
      {
LABEL_6:
        v7 = 1;
        goto LABEL_9;
      }
    }

    else
    {
      v6 = sub_1002D63F8(*(qword_100471C40 + 16), a2);
      if (v6 < 0x80)
      {
        goto LABEL_6;
      }
    }

    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
LABEL_9:
    v8 = *(a1 + 32);
    v4 = (v8 + v6 + v7 + 1);
    if (v8 < 1)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v3 = *(a1 + 32);
  v4 = v3;
  if (v3 < 1)
  {
    goto LABEL_15;
  }

LABEL_10:
  v9 = 0;
  do
  {
    v11 = sub_1002DB1D4(*(*(a1 + 24) + 8 * v9), a2);
    v12 = v11;
    if (v11 < 0x80)
    {
      v10 = 1;
    }

    else
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
    }

    v4 = (v12 + v4 + v10);
    ++v9;
  }

  while (v9 < *(a1 + 32));
LABEL_15:
  v13 = *(a1 + 8);
  if (v13 && *v13 != v13[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 48) = v4;
  return v4;
}

uint64_t sub_1002DC3D0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1002DB70C(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1002DC4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002DC4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DC4D8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1002DC564(uint64_t a1)
{
  if ((*(a1 + 52) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    return (*(*v2 + 40))();
  }

  else
  {
    return (*(**(qword_100471C40 + 16) + 40))();
  }
}

uint64_t sub_1002DC5D0()
{
  v0 = qword_10045D390;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002D47B8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D328;
}

void sub_1002DC660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DC674(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), *(a2 + 24) + *(a1 + 24));
  if (*(a2 + 24) >= 1)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v9 = *(*(a2 + 16) + 8 * v5);
        v10 = *(a1 + 28);
        v11 = *(a1 + 24);
        if (v11 >= v10)
        {
          break;
        }

        v12 = *(a1 + 16);
        *(a1 + 24) = v11 + 1;
        v4 = std::string::operator=(*(v12 + 8 * v11), v9);
        if (++v5 >= *(a2 + 24))
        {
          goto LABEL_11;
        }
      }

      if (v10 == *(a1 + 32))
      {
        v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v10 + 1);
        v10 = *(a1 + 28);
      }

      *(a1 + 28) = v10 + 1;
      v6 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v4);
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      *(a1 + 24) = v8 + 1;
      *(v7 + 8 * v8) = v6;
      v4 = std::string::operator=(v6, v9);
      ++v5;
    }

    while (v5 < *(a2 + 24));
  }

LABEL_11:
  v13 = *(a2 + 48);
  if (v13)
  {
    v14 = *(a1 + 48);
    v15 = *(a1 + 52);
    v16 = v14 + v13;
    if (v15 < v16)
    {
      v17 = 2 * v15;
      if (2 * v15 <= v16)
      {
        v17 = v16;
      }

      if (v17 <= 4)
      {
        v17 = 4;
      }

      *(a1 + 52) = v17;
      operator new[]();
    }

    memcpy((*(a1 + 40) + 8 * v14), *(a2 + 40), 8 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  v18 = *(a2 + 64);
  if (v18)
  {
    v19 = *(a1 + 64);
    v20 = *(a1 + 68);
    v21 = v19 + v18;
    if (v20 < v21)
    {
      v22 = 2 * v20;
      if (2 * v20 <= v21)
      {
        v22 = v21;
      }

      if (v22 <= 4)
      {
        v22 = 4;
      }

      *(a1 + 68) = v22;
      operator new[]();
    }

    memcpy((*(a1 + 56) + 8 * v19), *(a2 + 56), 8 * *(a2 + 64));
    *(a1 + 64) += *(a2 + 64);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002DC91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002DC930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002DC944(uint64_t a1)
{
  *a1 = off_100447468;
  if (*(a1 + 56))
  {
    operator delete[]();
  }

  if (*(a1 + 40))
  {
    operator delete[]();
  }

  if (*(a1 + 28) >= 1)
  {
    v2 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < *(a1 + 28));
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002DCA1C(uint64_t a1)
{
  sub_1002DC944(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002DCAF8(uint64_t a1)
{
  if (*(a1 + 24) >= 1)
  {
    v1 = 0;
    do
    {
      while (1)
      {
        v2 = *(*(a1 + 16) + 8 * v1);
        if (*(v2 + 23) < 0)
        {
          break;
        }

        *v2 = 0;
        *(v2 + 23) = 0;
        if (++v1 >= *(a1 + 24))
        {
          goto LABEL_6;
        }
      }

      **v2 = 0;
      *(v2 + 8) = 0;
      ++v1;
    }

    while (v1 < *(a1 + 24));
  }

LABEL_6:
  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 10) = 0;
  *(result + 14) = 0;
  *(result + 17) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002DCB70(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = result;
  while (1)
  {
    while (1)
    {
LABEL_2:
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        v7 = result;
        *(this + 8) = result;
        if (!result)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = v7;
        *(this + 1) = v6 + 1;
        if (!v7)
        {
          return 1;
        }
      }

      v8 = v7 >> 3;
      v9 = v7 & 7;
      if (v7 >> 3 == 3)
      {
        break;
      }

      if (v8 == 2)
      {
        if (v9 != 1)
        {
          if (v9 == 2)
          {
            result = sub_100059C10(this, (v5 + 40));
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
          }

          goto LABEL_29;
        }

        while (1)
        {
          v47 = 0;
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v47);
          if ((result & 1) == 0)
          {
            return 0;
          }

          v17 = v47;
          v18 = *(v5 + 48);
          v19 = *(v5 + 40);
          if (v18 == *(v5 + 52))
          {
            if (2 * v18 <= v18 + 1)
            {
              v20 = v18 + 1;
            }

            else
            {
              v20 = 2 * v18;
            }

            if (v20 <= 4)
            {
              v20 = 4;
            }

            *(v5 + 52) = v20;
            operator new[]();
          }

          v21 = v18 + 1;
          *(v5 + 48) = v18 + 1;
          *(v19 + 8 * v18) = v17;
          v22 = *(this + 1);
          v23 = *(this + 4) - v22;
          if (v23 >= 1)
          {
            v24 = *(v5 + 52) - v21;
            v25 = v23 / 9u;
            if ((v23 / 9u) >= v24)
            {
              v25 = *(v5 + 52) - v21;
            }

            if (v25 >= 1)
            {
              v26 = 0;
              v27 = v18 + 2;
              v28 = v19 + 8 * v21;
              v29 = ((*(this + 4) - v22) * 0x1C71C71C71C71C72uLL) >> 64;
              if (v29 >= v24)
              {
                LODWORD(v29) = v24;
              }

              while (*v22 == 17)
              {
                v30 = *(v22 + 1);
                *(v5 + 48) = v27;
                *(v28 + 8 * v26) = v30;
                ++v27;
                ++v26;
                v22 += 9;
                if (v29 == v26)
                {
                  goto LABEL_53;
                }
              }

              if (!v26)
              {
                goto LABEL_54;
              }

              v25 = v26;
LABEL_53:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v25);
            }
          }

LABEL_54:
          v15 = *(this + 1);
          if (v15 >= *(this + 2))
          {
            break;
          }

          v31 = *v15;
          if (v31 != 17)
          {
            if (v31 == 25)
            {
              goto LABEL_81;
            }

            goto LABEL_2;
          }

LABEL_58:
          *(this + 1) = v15 + 1;
        }
      }

      else
      {
        if (v8 != 1 || v9 != 2)
        {
          goto LABEL_29;
        }

        while (1)
        {
          v10 = *(v5 + 28);
          v11 = *(v5 + 24);
          if (v11 >= v10)
          {
            if (v10 == *(v5 + 32))
            {
              result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 16), v10 + 1);
              v10 = *(v5 + 28);
            }

            *(v5 + 28) = v10 + 1;
            v12 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
            v13 = *(v5 + 16);
            v14 = *(v5 + 24);
            *(v5 + 24) = v14 + 1;
            *(v13 + 8 * v14) = v12;
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }
          }

          else
          {
            *(v5 + 24) = v11 + 1;
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }
          }

          v15 = *(this + 1);
          if (v15 >= *(this + 2))
          {
            break;
          }

          v16 = *v15;
          if (v16 != 10)
          {
            if (v16 != 17)
            {
              goto LABEL_2;
            }

            goto LABEL_58;
          }

          *(this + 1) = v15 + 1;
        }
      }
    }

    if (v9 == 1)
    {
      break;
    }

    if (v9 == 2)
    {
      result = sub_100059C10(this, (v5 + 56));
      if (!result)
      {
        return result;
      }

      goto LABEL_79;
    }

LABEL_29:
    if (v9 == 4)
    {
      return 1;
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, v7, v5 + 8, a4);
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v47 = 0;
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v47);
    if ((result & 1) == 0)
    {
      return 0;
    }

    v32 = v47;
    v33 = *(v5 + 64);
    v34 = *(v5 + 56);
    if (v33 == *(v5 + 68))
    {
      if (2 * v33 <= v33 + 1)
      {
        v35 = v33 + 1;
      }

      else
      {
        v35 = 2 * v33;
      }

      if (v35 <= 4)
      {
        v35 = 4;
      }

      *(v5 + 68) = v35;
      operator new[]();
    }

    v36 = v33 + 1;
    *(v5 + 64) = v33 + 1;
    *(v34 + 8 * v33) = v32;
    v37 = *(this + 1);
    v38 = *(this + 4) - v37;
    if (v38 >= 1)
    {
      v39 = *(v5 + 68) - v36;
      v40 = v38 / 9u;
      if ((v38 / 9u) >= v39)
      {
        v40 = *(v5 + 68) - v36;
      }

      if (v40 >= 1)
      {
        v41 = 0;
        v42 = v33 + 2;
        v43 = v34 + 8 * v36;
        v44 = ((*(this + 4) - v37) * 0x1C71C71C71C71C72uLL) >> 64;
        if (v44 >= v39)
        {
          LODWORD(v44) = v39;
        }

        while (*v37 == 25)
        {
          v45 = *(v37 + 1);
          *(v5 + 64) = v42;
          *(v43 + 8 * v41) = v45;
          ++v42;
          ++v41;
          v37 += 9;
          if (v44 == v41)
          {
            goto LABEL_78;
          }
        }

        if (!v41)
        {
          goto LABEL_79;
        }

        v40 = v41;
LABEL_78:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v40);
      }
    }

LABEL_79:
    v15 = *(this + 1);
    v46 = *(this + 2);
    if (v15 >= v46 || *v15 != 25)
    {
      if (v15 == v46 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }

      goto LABEL_2;
    }

LABEL_81:
    *(this + 1) = v15 + 1;
  }
}

uint64_t sub_1002DD034(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  if (*(result + 24) >= 1)
  {
    v5 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v5;
    }

    while (v5 < *(v4 + 24));
  }

  if (*(v4 + 48) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(*(v4 + 40) + 8 * v6++), a3);
    }

    while (v6 < *(v4 + 48));
  }

  if (*(v4 + 64) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(*(v4 + 56) + 8 * v7++), a3);
    }

    while (v7 < *(v4 + 64));
  }

  v10 = *(v4 + 8);
  v9 = (v4 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return result;
}

_BYTE *sub_1002DD138(uint64_t a1, _BYTE *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(a1 + 24) >= 1)
  {
    v5 = 0;
    result = a2;
    while (1)
    {
      v11 = *(*(a1 + 16) + 8 * v5);
      *result = 10;
      v12 = *(v11 + 23);
      if ((v12 & 0x8000000000000000) != 0)
      {
        v12 = *(v11 + 8);
        if (v12 <= 0x7F)
        {
LABEL_15:
          result[1] = v12;
          v7 = result + 2;
          goto LABEL_4;
        }
      }

      else if (v12 <= 0x7F)
      {
        goto LABEL_15;
      }

      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, result + 1, a3);
LABEL_4:
      v8 = *(v11 + 23);
      if (v8 >= 0)
      {
        v9 = v11;
      }

      else
      {
        v9 = *v11;
      }

      if (v8 >= 0)
      {
        v10 = *(v11 + 23);
      }

      else
      {
        v10 = *(v11 + 8);
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v9, v10, v7, a4);
      if (++v5 >= *(a1 + 24))
      {
        goto LABEL_17;
      }
    }
  }

  result = a2;
LABEL_17:
  if (*(a1 + 48) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(*(a1 + 40) + 8 * v13);
      *result = 17;
      *(result + 1) = v14;
      result += 9;
      ++v13;
    }

    while (v13 < *(a1 + 48));
  }

  if (*(a1 + 64) >= 1)
  {
    v15 = 0;
    do
    {
      v16 = *(*(a1 + 56) + 8 * v15);
      *result = 25;
      *(result + 1) = v16;
      result += 9;
      ++v15;
    }

    while (v15 < *(a1 + 64));
  }

  v19 = *(a1 + 8);
  v18 = (a1 + 8);
  v17 = v19;
  if (v19 && *v17 != v17[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v18, result, a3);
  }

  return result;
}

uint64_t sub_1002DD314(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 < 1)
  {
    v5 = *(a1 + 24);
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 24);
    do
    {
      v10 = *(*(a1 + 16) + 8 * v4);
      v7 = *(v10 + 23);
      v9 = v7;
      v8 = *(v10 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v11 = *(v10 + 23);
      }

      else
      {
        v11 = v8;
      }

      if (v11 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
        v7 = *(v10 + 23);
        v8 = *(v10 + 8);
        v3 = *(a1 + 24);
        v9 = *(v10 + 23);
      }

      else
      {
        v6 = 1;
      }

      if (v9 < 0)
      {
        v7 = v8;
      }

      v5 += v6 + v7;
      ++v4;
    }

    while (v4 < v3);
  }

  v12 = *(a1 + 8);
  v13 = (9 * (*(a1 + 64) + *(a1 + 48)) + v5);
  if (v12 && *v12 != v12[1])
  {
    v13 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v13;
  }

  *(a1 + 72) = v13;
  return v13;
}

uint64_t sub_1002DD3F4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1002DC674(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1002DD4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002DD4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DD4FC(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1002DD590()
{
  v0 = qword_10045D390;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002D47B8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D338;
}

void sub_1002DD620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DD634(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 36);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
  }

  if (*(a2 + 36))
  {
    v7 = *(a2 + 16);
    a1[9] |= 1u;
    a1[4] = v7;
    v4 = *(a2 + 36);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v9 = *(a2 + 24);
      a1[9] |= 4u;
      a1[6] = v9;
      if ((*(a2 + 36) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 36) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  a1[9] |= 2u;
  a1[5] = v8;
  v4 = *(a2 + 36);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 28);
    a1[9] |= 8u;
    a1[7] = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_1002DD73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002DD750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DD764(uint64_t a1, uint64_t a2)
{
  *a1 = off_100447518;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_1002DD634(a1, a2);
  return a1;
}

void sub_1002DD7D0(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_1002DD800(uint64_t a1)
{
  *a1 = off_100447518;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002DD854(uint64_t a1)
{
  *a1 = off_100447518;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002DD950(uint64_t a1)
{
  if (*(a1 + 36))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002DD970(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_23;
          }

          v12 = *(this + 1);
          v10 = *(this + 2);
          if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
            if (!result)
            {
              return result;
            }

            v14 = *(this + 1);
            v10 = *(this + 2);
            a1[9] |= 1u;
            if (v14 < v10)
            {
              goto LABEL_28;
            }
          }

          else
          {
            a1[4] = v13;
            v14 = v12 + 1;
            *(this + 1) = v14;
            a1[9] |= 1u;
            if (v14 < v10)
            {
LABEL_28:
              if (*v14 == 16)
              {
                v11 = v14 + 1;
                *(this + 1) = v11;
                if (v11 < v10)
                {
                  goto LABEL_30;
                }

LABEL_33:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
                if (!result)
                {
                  return result;
                }

                v17 = *(this + 1);
                v18 = *(this + 2);
                a1[9] |= 2u;
                if (v17 < v18)
                {
                  goto LABEL_35;
                }
              }
            }
          }
        }

        else
        {
          if (v8 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_23;
          }

          v11 = *(this + 1);
          v10 = *(this + 2);
          if (v11 >= v10)
          {
            goto LABEL_33;
          }

LABEL_30:
          v16 = *v11;
          if ((v16 & 0x80000000) != 0)
          {
            goto LABEL_33;
          }

          a1[5] = v16;
          v17 = v11 + 1;
          *(this + 1) = v17;
          a1[9] |= 2u;
          if (v17 < v10)
          {
LABEL_35:
            if (*v17 == 29)
            {
              *(this + 1) = v17 + 1;
              goto LABEL_37;
            }
          }
        }
      }

      if (v8 != 3)
      {
        break;
      }

      if (v9 != 5)
      {
        goto LABEL_23;
      }

LABEL_37:
      v21 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v21) & 1) == 0)
      {
        return 0;
      }

      a1[6] = v21;
      a1[9] |= 4u;
      v19 = *(this + 1);
      if (v19 < *(this + 2) && *v19 == 37)
      {
        *(this + 1) = v19 + 1;
        v20 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
        {
          return 0;
        }

LABEL_41:
        a1[7] = v20;
        a1[9] |= 8u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 4 && v9 == 5)
    {
      v20 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_41;
    }

LABEL_23:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1002DDC10(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 16), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  if ((*(v5 + 36) & 8) == 0)
  {
LABEL_5:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_11:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

_BYTE *sub_1002DDCE4(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  if ((*(a1 + 36) & 1) == 0)
  {
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    v9 = *(a1 + 20);
    *a2 = 16;
    if (v9 > 0x7F)
    {
      v10 = a1;
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, a2 + 1, a3);
      a1 = v10;
      v3 = *(v10 + 36);
      if ((v3 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      a2[1] = v9;
      a2 += 2;
      v3 = *(a1 + 36);
      if ((v3 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  v7 = *(a1 + 16);
  *a2 = 8;
  if (v7 > 0x7F)
  {
    v8 = a1;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
    a1 = v8;
    if ((*(v8 + 36) & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    a2[1] = v7;
    a2 += 2;
    if ((*(a1 + 36) & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_3:
  v3 = *(a1 + 36);
  if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v11 = *(a1 + 24);
  *a2 = 29;
  *(a2 + 1) = v11;
  a2 += 5;
  if ((*(a1 + 36) & 8) == 0)
  {
LABEL_5:
    v6 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v6;
    if (!v6)
    {
      return a2;
    }

    goto LABEL_17;
  }

LABEL_16:
  v12 = *(a1 + 28);
  *a2 = 37;
  *(a2 + 1) = v12;
  a2 += 5;
  v13 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v13;
  if (!v13)
  {
    return a2;
  }

LABEL_17:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}

uint64_t sub_1002DDE54(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if (*(a1 + 36))
    {
      v9 = *(a1 + 16);
      if (v9 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
        v3 = *(a1 + 36);
        if ((v3 & 2) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(a1 + 36) & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    v10 = *(a1 + 20);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
LABEL_15:
    v12 = v4 + 5;
    if ((v3 & 4) == 0)
    {
      v12 = v4;
    }

    if ((v3 & 8) != 0)
    {
      v5 = v12 + 5;
    }

    else
    {
      v5 = v12;
    }

    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  v5 = 0;
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7)
  {
LABEL_6:
    *(a1 + 32) = v5;
    return v5;
  }

LABEL_21:
  if (*v7 == v7[1])
  {
    goto LABEL_6;
  }

  v13 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 32) = v13;
  return v13;
}

uint64_t sub_1002DDF3C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1002DD634(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1002DE01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002DE030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DE044(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1002DE0E4()
{
  v0 = qword_10045D390;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002D47B8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D348;
}

void sub_1002DE174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DE188(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
    v4 = *(a2 + 80);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v4 = *(a2 + 80);
    if (!v4)
    {
LABEL_17:
      if ((v4 & 0xFF00) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_40;
    }
  }

  if (v4)
  {
    *(a1 + 80) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_100471C58 + 16);
    }

    sub_1002D5C0C(v5, v6);
    v4 = *(a2 + 80);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
    *(a1 + 80) |= 2u;
    *(a1 + 24) = v7;
    v4 = *(a2 + 80);
    if ((v4 & 4) == 0)
    {
LABEL_12:
      if ((v4 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(a2 + 28);
  *(a1 + 80) |= 4u;
  *(a1 + 28) = v8;
  v4 = *(a2 + 80);
  if ((v4 & 8) == 0)
  {
LABEL_13:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a2 + 32);
  *(a1 + 80) |= 8u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 80);
  if ((v4 & 0x10) == 0)
  {
LABEL_14:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_23:
    *(a1 + 80) |= 0x20u;
    v11 = *(a1 + 40);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 40);
    if (v12)
    {
      sub_1002D673C(v11, v12);
      v4 = *(a2 + 80);
      if ((v4 & 0x40) != 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_1002D673C(v11, *(qword_100471C58 + 40));
      v4 = *(a2 + 80);
      if ((v4 & 0x40) != 0)
      {
        goto LABEL_30;
      }
    }

LABEL_16:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_22:
  v10 = *(a2 + 36);
  *(a1 + 80) |= 0x10u;
  *(a1 + 36) = v10;
  v4 = *(a2 + 80);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_30:
  *(a1 + 80) |= 0x40u;
  v13 = *(a1 + 48);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 48);
  if (v14)
  {
    sub_1002D673C(v13, v14);
    v4 = *(a2 + 80);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    sub_1002D673C(v13, *(qword_100471C58 + 48));
    v4 = *(a2 + 80);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_36:
  v15 = *(a2 + 56);
  *(a1 + 80) |= 0x80u;
  v16 = *(a1 + 56);
  if (v16 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v16, v15);
  v4 = *(a2 + 80);
  if ((v4 & 0xFF00) != 0)
  {
LABEL_40:
    if ((v4 & 0x100) != 0)
    {
      *(a1 + 80) |= 0x100u;
      v17 = *(a1 + 64);
      if (!v17)
      {
        operator new();
      }

      v18 = *(a2 + 64);
      if (!v18)
      {
        v18 = *(qword_100471C58 + 64);
      }

      sub_1002DD634(v17, v18);
      v4 = *(a2 + 80);
    }

    if ((v4 & 0x200) != 0)
    {
      v19 = *(a2 + 72);
      *(a1 + 80) |= 0x200u;
      *(a1 + 72) = v19;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002DE5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002DE600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1002DE614(void *result)
{
  v1 = result;
  v2 = result[7];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_100471C58 != result)
  {
    v4 = result[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[5];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[6];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    result = v1[8];
    if (result)
    {
      v7 = *(*result + 8);

      return v7();
    }
  }

  return result;
}

void sub_1002DE74C(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_1004475C8;
  v2 = (a1 + 8);
  sub_1002DE614(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002DE7AC(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_1004475C8;
  v2 = (a1 + 8);
  sub_1002DE614(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002DE8D4(uint64_t a1)
{
  if (*(a1 + 80))
  {
    if (*(a1 + 80))
    {
      v1 = *(a1 + 16);
      if (v1)
      {
        v2 = *(v1 + 32);
        if (v2)
        {
          *(v1 + 24) = 1;
          if ((v2 & 2) != 0)
          {
            v3 = *(v1 + 16);
            if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              if (*(v3 + 23) < 0)
              {
                **v3 = 0;
                *(v3 + 8) = 0;
              }

              else
              {
                *v3 = 0;
                *(v3 + 23) = 0;
              }
            }
          }
        }

        v5 = *(v1 + 8);
        v4 = (v1 + 8);
        *(v4 + 6) = 0;
        if (v5)
        {
          v6 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
          a1 = v6;
        }
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    if ((*(a1 + 80) & 0x20) != 0)
    {
      v7 = *(a1 + 40);
      if (v7)
      {
        if (*(v7 + 40))
        {
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
          *(v7 + 32) = 0;
        }

        v9 = *(v7 + 8);
        v8 = (v7 + 8);
        *(v8 + 8) = 0;
        if (v9)
        {
          v10 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v8);
          a1 = v10;
        }
      }
    }

    if ((*(a1 + 80) & 0x40) != 0)
    {
      v11 = *(a1 + 48);
      if (v11)
      {
        if (*(v11 + 40))
        {
          *(v11 + 16) = 0;
          *(v11 + 24) = 0;
          *(v11 + 32) = 0;
        }

        v13 = *(v11 + 8);
        v12 = (v11 + 8);
        *(v12 + 8) = 0;
        if (v13)
        {
          v14 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v12);
          a1 = v14;
        }
      }
    }

    if ((*(a1 + 80) & 0x80) != 0)
    {
      v15 = *(a1 + 56);
      if (v15 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v15 + 23) < 0)
        {
          **v15 = 0;
          *(v15 + 8) = 0;
          v16 = *(a1 + 80);
          if ((v16 & 0xFF00) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_29;
        }

        *v15 = 0;
        *(v15 + 23) = 0;
      }
    }
  }

  v16 = *(a1 + 80);
  if ((v16 & 0xFF00) == 0)
  {
    goto LABEL_36;
  }

LABEL_29:
  if ((v16 & 0x100) != 0)
  {
    v17 = *(a1 + 64);
    if (v17)
    {
      if (*(v17 + 36))
      {
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
      }

      v19 = *(v17 + 8);
      v18 = (v17 + 8);
      *(v18 + 7) = 0;
      if (v19)
      {
        v20 = a1;
        wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v18);
        a1 = v20;
      }
    }
  }

  *(a1 + 72) = 1;
LABEL_36:
  v22 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 18) = 0;
  if (v22)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002DEA9C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v6 = *(this + 1);
            if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
            {
              TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
              *(this + 8) = TagFallback;
              if (!TagFallback)
              {
                return 1;
              }
            }

            else
            {
              *(this + 8) = TagFallback;
              *(this + 1) = v6 + 1;
              if (!TagFallback)
              {
                return 1;
              }
            }

            v8 = TagFallback >> 3;
            v9 = TagFallback & 7;
            if (TagFallback >> 3 > 5)
            {
              break;
            }

            if (TagFallback >> 3 <= 2)
            {
              if (v8 == 1)
              {
                if (v9 != 2)
                {
                  goto LABEL_52;
                }

                *(a1 + 80) |= 1u;
                v17 = *(a1 + 16);
                if (!v17)
                {
                  operator new();
                }

                v72 = 0;
                v18 = *(this + 1);
                if (v18 >= *(this + 2) || *v18 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72))
                  {
                    return 0;
                  }
                }

                else
                {
                  v72 = *v18;
                  *(this + 1) = v18 + 1;
                }

                v23 = *(this + 14);
                v24 = *(this + 15);
                *(this + 14) = v23 + 1;
                if (v23 >= v24)
                {
                  return 0;
                }

                v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v72);
                if (!sub_1002D6030(v17, this, v26, v27) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
                v28 = *(this + 14);
                v29 = __OFSUB__(v28, 1);
                v30 = v28 - 1;
                if (v30 < 0 == v29)
                {
                  *(this + 14) = v30;
                }

                v31 = *(this + 1);
                v10 = *(this + 2);
                if (v31 < v10 && *v31 == 16)
                {
                  v14 = v31 + 1;
                  *(this + 1) = v14;
                  if (v14 < v10)
                  {
                    goto LABEL_64;
                  }

LABEL_67:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
                  if (!result)
                  {
                    return result;
                  }

                  v33 = *(this + 1);
                  v10 = *(this + 2);
                  *(a1 + 80) |= 2u;
                  if (v33 < v10)
                  {
                    goto LABEL_69;
                  }
                }
              }

              else
              {
                if (v8 != 2 || (TagFallback & 7) != 0)
                {
                  goto LABEL_52;
                }

                v14 = *(this + 1);
                v10 = *(this + 2);
                if (v14 >= v10)
                {
                  goto LABEL_67;
                }

LABEL_64:
                v32 = *v14;
                if (v32 < 0)
                {
                  goto LABEL_67;
                }

                *(a1 + 24) = v32;
                v33 = v14 + 1;
                *(this + 1) = v33;
                *(a1 + 80) |= 2u;
                if (v33 < v10)
                {
LABEL_69:
                  if (*v33 == 24)
                  {
                    v20 = v33 + 1;
                    *(this + 1) = v20;
                    if (v20 < v10)
                    {
                      goto LABEL_71;
                    }

LABEL_74:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
                    if (!result)
                    {
                      return result;
                    }

                    v35 = *(this + 1);
                    v10 = *(this + 2);
                    *(a1 + 80) |= 4u;
                    if (v35 < v10)
                    {
                      goto LABEL_76;
                    }
                  }
                }
              }
            }

            else if (v8 == 3)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_52;
              }

              v20 = *(this + 1);
              v10 = *(this + 2);
              if (v20 >= v10)
              {
                goto LABEL_74;
              }

LABEL_71:
              v34 = *v20;
              if (v34 < 0)
              {
                goto LABEL_74;
              }

              *(a1 + 28) = v34;
              v35 = v20 + 1;
              *(this + 1) = v35;
              *(a1 + 80) |= 4u;
              if (v35 < v10)
              {
LABEL_76:
                if (*v35 == 32)
                {
                  v22 = v35 + 1;
                  *(this + 1) = v22;
                  if (v22 < v10)
                  {
                    goto LABEL_78;
                  }

LABEL_81:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
                  if (!result)
                  {
                    return result;
                  }

                  v37 = *(this + 1);
                  v10 = *(this + 2);
                  *(a1 + 80) |= 8u;
                  if (v37 < v10)
                  {
                    goto LABEL_83;
                  }
                }
              }
            }

            else if (v8 == 4)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_52;
              }

              v22 = *(this + 1);
              v10 = *(this + 2);
              if (v22 >= v10)
              {
                goto LABEL_81;
              }

LABEL_78:
              v36 = *v22;
              if (v36 < 0)
              {
                goto LABEL_81;
              }

              *(a1 + 32) = v36;
              v37 = v22 + 1;
              *(this + 1) = v37;
              *(a1 + 80) |= 8u;
              if (v37 < v10)
              {
LABEL_83:
                if (*v37 == 40)
                {
                  v11 = v37 + 1;
                  *(this + 1) = v11;
                  if (v11 < v10)
                  {
                    goto LABEL_85;
                  }

LABEL_88:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
                  if (!result)
                  {
                    return result;
                  }

                  v39 = *(this + 1);
                  v41 = *(this + 2);
                  v40 = *(a1 + 80) | 0x10;
                  *(a1 + 80) = v40;
                  if (v39 < v41)
                  {
                    goto LABEL_90;
                  }
                }
              }
            }

            else
            {
              if (v8 != 5 || (TagFallback & 7) != 0)
              {
                goto LABEL_52;
              }

              v11 = *(this + 1);
              v10 = *(this + 2);
              if (v11 >= v10)
              {
                goto LABEL_88;
              }

LABEL_85:
              v38 = *v11;
              if (v38 < 0)
              {
                goto LABEL_88;
              }

              *(a1 + 36) = v38;
              v39 = v11 + 1;
              *(this + 1) = v39;
              v40 = *(a1 + 80) | 0x10;
              *(a1 + 80) = v40;
              if (v39 < v10)
              {
LABEL_90:
                if (*v39 == 50)
                {
                  *(this + 1) = v39 + 1;
                  *(a1 + 80) = v40 | 0x20;
                  v19 = *(a1 + 40);
                  if (!v19)
                  {
LABEL_92:
                    operator new();
                  }

                  goto LABEL_93;
                }
              }
            }
          }

          if (TagFallback >> 3 <= 7)
          {
            break;
          }

          if (v8 == 8)
          {
            if (v9 == 2)
            {
              *(a1 + 80) |= 0x80u;
              if (*(a1 + 56) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
              {
                goto LABEL_117;
              }

              goto LABEL_46;
            }

LABEL_52:
            if (v9 == 4)
            {
              return 1;
            }

            if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            if (v8 == 9)
            {
              if (v9 == 2)
              {
                goto LABEL_121;
              }

              goto LABEL_52;
            }

            if (v8 != 10 || (TagFallback & 7) != 0)
            {
              goto LABEL_52;
            }

            v13 = *(this + 1);
            v12 = *(this + 2);
            v72 = 0;
            if (v13 < v12)
            {
              goto LABEL_135;
            }

LABEL_139:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72);
            if (!result)
            {
              return result;
            }

            v71 = v72;
            if (sub_1002E3564(v72))
            {
              goto LABEL_137;
            }

LABEL_141:
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 10, v71);
            if (*(this + 1) == *(this + 2))
            {
              goto LABEL_142;
            }
          }
        }

        if (v8 != 6)
        {
          break;
        }

        if (v9 != 2)
        {
          goto LABEL_52;
        }

        *(a1 + 80) |= 0x20u;
        v19 = *(a1 + 40);
        if (!v19)
        {
          goto LABEL_92;
        }

LABEL_93:
        v72 = 0;
        v42 = *(this + 1);
        if (v42 >= *(this + 2) || *v42 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72))
          {
            return 0;
          }
        }

        else
        {
          v72 = *v42;
          *(this + 1) = v42 + 1;
        }

        v43 = *(this + 14);
        v44 = *(this + 15);
        *(this + 14) = v43 + 1;
        if (v43 >= v44)
        {
          return 0;
        }

        v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v72);
        if (!sub_1002D69C4(v19, this, v46, v47) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v45);
        v48 = *(this + 14);
        v29 = __OFSUB__(v48, 1);
        v49 = v48 - 1;
        if (v49 < 0 == v29)
        {
          *(this + 14) = v49;
        }

        v50 = *(this + 1);
        if (v50 < *(this + 2) && *v50 == 58)
        {
          *(this + 1) = v50 + 1;
          *(a1 + 80) |= 0x40u;
          v15 = *(a1 + 48);
          if (!v15)
          {
LABEL_105:
            operator new();
          }

          goto LABEL_30;
        }
      }

      if (v8 != 7 || v9 != 2)
      {
        goto LABEL_52;
      }

      *(a1 + 80) |= 0x40u;
      v15 = *(a1 + 48);
      if (!v15)
      {
        goto LABEL_105;
      }

LABEL_30:
      v72 = 0;
      v16 = *(this + 1);
      if (v16 >= *(this + 2) || *v16 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72))
        {
          return 0;
        }
      }

      else
      {
        v72 = *v16;
        *(this + 1) = v16 + 1;
      }

      v51 = *(this + 14);
      v52 = *(this + 15);
      *(this + 14) = v51 + 1;
      if (v51 >= v52)
      {
        return 0;
      }

      v53 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v72);
      if (!sub_1002D69C4(v15, this, v54, v55) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v53);
      v56 = *(this + 14);
      v29 = __OFSUB__(v56, 1);
      v57 = v56 - 1;
      if (v57 < 0 == v29)
      {
        *(this + 14) = v57;
      }

      v58 = *(this + 1);
      if (v58 < *(this + 2) && *v58 == 66)
      {
        *(this + 1) = v58 + 1;
        *(a1 + 80) |= 0x80u;
        if (*(a1 + 56) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
LABEL_117:
          operator new();
        }

LABEL_46:
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v59 = *(this + 1);
        if (v59 < *(this + 2) && *v59 == 74)
        {
          break;
        }
      }
    }

    *(this + 1) = v59 + 1;
LABEL_121:
    *(a1 + 80) |= 0x100u;
    v60 = *(a1 + 64);
    if (!v60)
    {
      operator new();
    }

    v72 = 0;
    v61 = *(this + 1);
    if (v61 >= *(this + 2) || *v61 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72))
      {
        return 0;
      }
    }

    else
    {
      v72 = *v61;
      *(this + 1) = v61 + 1;
    }

    v62 = *(this + 14);
    v63 = *(this + 15);
    *(this + 14) = v62 + 1;
    if (v62 >= v63)
    {
      return 0;
    }

    v64 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v72);
    if (!sub_1002DD970(v60, this, v65, v66) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v64);
    v67 = *(this + 14);
    v29 = __OFSUB__(v67, 1);
    v68 = v67 - 1;
    if (v68 < 0 == v29)
    {
      *(this + 14) = v68;
    }

    v70 = *(this + 1);
    v69 = *(this + 2);
    if (v70 < v69 && *v70 == 80)
    {
      v13 = v70 + 1;
      *(this + 1) = v13;
      v72 = 0;
      if (v13 >= v69)
      {
        goto LABEL_139;
      }

LABEL_135:
      v71 = *v13;
      if (v71 < 0)
      {
        goto LABEL_139;
      }

      *(this + 1) = v13 + 1;
      if (!sub_1002E3564(v71))
      {
        goto LABEL_141;
      }

LABEL_137:
      *(a1 + 80) |= 0x200u;
      *(a1 + 72) = v71;
      if (*(this + 1) == *(this + 2))
      {
LABEL_142:
        if (*(this + 11) || *(this + 6) == *(this + 10))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }
  }
}

uint64_t sub_1002DF448(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 80);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 80);
      if ((v6 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_100471C58 + 16), a2, a4);
      v6 = *(v5 + 80);
      if ((v6 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_25:
    v12 = *(v5 + 48);
    if (v12)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v12, a2, a4);
      v6 = *(v5 + 80);
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, *(qword_100471C58 + 48), a2, a4);
      v6 = *(v5 + 80);
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_30:
    v13 = *(v5 + 64);
    if (v13)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, v13, a2, a4);
      if ((*(v5 + 80) & 0x200) != 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, *(qword_100471C58 + 64), a2, a4);
      if ((*(v5 + 80) & 0x200) != 0)
      {
        goto LABEL_34;
      }
    }

LABEL_11:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_21:
  v11 = *(v5 + 40);
  if (v11)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v11, a2, a4);
    v6 = *(v5 + 80);
    if ((v6 & 0x40) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, *(qword_100471C58 + 40), a2, a4);
    v6 = *(v5 + 80);
    if ((v6 & 0x40) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 80);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    goto LABEL_11;
  }

LABEL_34:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 72), a2, a4);
  v14 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v14;
  if (!v14)
  {
    return result;
  }

LABEL_35:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002DF664(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 20);
  if ((v5 & 1) == 0)
  {
    result = a2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v7 = *(this + 2);
  if (v7)
  {
    v8 = a2;
    *a2 = 10;
    v9 = a2 + 1;
    v10 = v7[7];
    if (v10 <= 0x7F)
    {
      goto LABEL_6;
    }

LABEL_9:
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v9, a3);
    result = sub_1002D62C4(v7, v11, v12, v13);
    if ((*(this + 20) & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v7 = *(qword_100471C58 + 16);
  v8 = a2;
  *a2 = 10;
  v9 = a2 + 1;
  v10 = v7[7];
  if (v10 > 0x7F)
  {
    goto LABEL_9;
  }

LABEL_6:
  *(v8 + 1) = v10;
  result = sub_1002D62C4(v7, (v8 + 2), a3, a4);
  if ((*(this + 20) & 2) == 0)
  {
LABEL_12:
    if ((*(this + 80) & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v19 = *(this + 7);
    *result = 24;
    if (v19 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, result + 1, a3);
      if ((*(this + 80) & 8) != 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *(result + 1) = v19;
      result = (result + 2);
      if ((*(this + 80) & 8) != 0)
      {
        goto LABEL_30;
      }
    }

LABEL_14:
    if ((*(this + 80) & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_34:
    v21 = *(this + 9);
    *result = 40;
    if (v21 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, result + 1, a3);
      v15 = *(this + 20);
      if ((v15 & 0x20) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      *(result + 1) = v21;
      result = (result + 2);
      v15 = *(this + 20);
      if ((v15 & 0x20) != 0)
      {
        goto LABEL_38;
      }
    }

LABEL_16:
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_17;
    }

LABEL_44:
    v27 = *(this + 6);
    if (v27)
    {
      *result = 58;
      v28 = result + 1;
      v29 = *(v27 + 36);
      if (v29 <= 0x7F)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v27 = *(qword_100471C58 + 48);
      *result = 58;
      v28 = result + 1;
      v29 = *(v27 + 36);
      if (v29 <= 0x7F)
      {
LABEL_46:
        *(result + 1) = v29;
        result = sub_1002D6C80(v27, result + 2, a3);
        v15 = *(this + 20);
        if ((v15 & 0x80) != 0)
        {
          goto LABEL_50;
        }

LABEL_18:
        if ((v15 & 0x100) == 0)
        {
          goto LABEL_19;
        }

LABEL_62:
        v38 = *(this + 8);
        if (v38)
        {
          *result = 74;
          v39 = result + 1;
          v40 = *(v38 + 32);
          if (v40 <= 0x7F)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v38 = *(qword_100471C58 + 64);
          *result = 74;
          v39 = result + 1;
          v40 = *(v38 + 32);
          if (v40 <= 0x7F)
          {
LABEL_64:
            *(result + 1) = v40;
            result = sub_1002DDCE4(v38, result + 2, a3);
            if ((*(this + 20) & 0x200) != 0)
            {
              goto LABEL_68;
            }

LABEL_20:
            v18 = *(this + 1);
            v17 = (this + 8);
            v16 = v18;
            if (!v18)
            {
              return result;
            }

            goto LABEL_21;
          }
        }

        v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v40, v39, a3);
        result = sub_1002DDCE4(v38, v41, v42);
        if ((*(this + 20) & 0x200) != 0)
        {
          goto LABEL_68;
        }

        goto LABEL_20;
      }
    }

    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, v28, a3);
    result = sub_1002D6C80(v27, v30, v31);
    v15 = *(this + 20);
    if ((v15 & 0x80) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_18;
  }

LABEL_10:
  v14 = *(this + 6);
  *result = 16;
  if (v14 <= 0x7F)
  {
    *(result + 1) = v14;
    result = (result + 2);
    goto LABEL_12;
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, result + 1, a3);
  if ((*(this + 80) & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((*(this + 80) & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_30:
  v20 = *(this + 8);
  *result = 32;
  if (v20 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, result + 1, a3);
    if ((*(this + 80) & 0x10) != 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    *(result + 1) = v20;
    result = (result + 2);
    if ((*(this + 80) & 0x10) != 0)
    {
      goto LABEL_34;
    }
  }

LABEL_15:
  v15 = *(this + 20);
  if ((v15 & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_38:
  v22 = *(this + 5);
  if (v22)
  {
    *result = 50;
    v23 = result + 1;
    v24 = *(v22 + 36);
    if (v24 <= 0x7F)
    {
      goto LABEL_40;
    }

LABEL_43:
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v23, a3);
    result = sub_1002D6C80(v22, v25, v26);
    v15 = *(this + 20);
    if ((v15 & 0x40) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_17;
  }

  v22 = *(qword_100471C58 + 40);
  *result = 50;
  v23 = result + 1;
  v24 = *(v22 + 36);
  if (v24 > 0x7F)
  {
    goto LABEL_43;
  }

LABEL_40:
  *(result + 1) = v24;
  result = sub_1002D6C80(v22, result + 2, a3);
  v15 = *(this + 20);
  if ((v15 & 0x40) != 0)
  {
    goto LABEL_44;
  }

LABEL_17:
  if ((v15 & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_50:
  v32 = *(this + 7);
  *result = 66;
  v33 = *(v32 + 23);
  if ((v33 & 0x8000000000000000) != 0)
  {
    v33 = *(v32 + 8);
    if (v33 <= 0x7F)
    {
      goto LABEL_52;
    }
  }

  else if (v33 <= 0x7F)
  {
LABEL_52:
    *(result + 1) = v33;
    v34 = result + 2;
    goto LABEL_55;
  }

  v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v33, result + 1, a3);
LABEL_55:
  v35 = *(v32 + 23);
  if (v35 >= 0)
  {
    v36 = v32;
  }

  else
  {
    v36 = *v32;
  }

  if (v35 >= 0)
  {
    v37 = *(v32 + 23);
  }

  else
  {
    v37 = *(v32 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v36, v37, v34, a4);
  v15 = *(this + 20);
  if ((v15 & 0x100) != 0)
  {
    goto LABEL_62;
  }

LABEL_19:
  if ((v15 & 0x200) == 0)
  {
    goto LABEL_20;
  }

LABEL_68:
  v43 = *(this + 18);
  *result = 80;
  v44 = result + 1;
  if ((v43 & 0x80000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v43, v44, a3);
    v46 = *(this + 1);
    v17 = (this + 8);
    v16 = v46;
    if (!v46)
    {
      return result;
    }
  }

  else if (v43 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v43, v44, a3);
    v47 = *(this + 1);
    v17 = (this + 8);
    v16 = v47;
    if (!v47)
    {
      return result;
    }
  }

  else
  {
    *(result + 1) = v43;
    result = (result + 2);
    v45 = *(this + 1);
    v17 = (this + 8);
    v16 = v45;
    if (!v45)
    {
      return result;
    }
  }

LABEL_21:
  if (*v16 != v16[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v17, result, a3);
  }

  return result;
}

uint64_t sub_1002DFA90(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 80);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_100;
    }

LABEL_86:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_93;
    }

    v37 = *(a1 + 64);
    if (v37)
    {
      v38 = sub_1002DDE54(v37, a2);
      if (v38 < 0x80)
      {
LABEL_89:
        v39 = 1;
LABEL_92:
        v4 = (v4 + v38 + v39 + 1);
        v3 = *(a1 + 80);
LABEL_93:
        if ((v3 & 0x200) != 0)
        {
          v40 = *(a1 + 72);
          if ((v40 & 0x80000000) != 0)
          {
            v41 = 11;
          }

          else if (v40 >= 0x80)
          {
            v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40, a2) + 1;
          }

          else
          {
            v41 = 2;
          }

          v4 = (v41 + v4);
        }

        goto LABEL_100;
      }
    }

    else
    {
      v38 = sub_1002DDE54(*(qword_100471C58 + 64), a2);
      if (v38 < 0x80)
      {
        goto LABEL_89;
      }
    }

    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2);
    goto LABEL_92;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = sub_1002D63F8(v5, a2);
    if (v6 < 0x80)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = sub_1002D63F8(*(qword_100471C58 + 16), a2);
    if (v6 < 0x80)
    {
LABEL_9:
      v4 = (v6 + 2);
      v3 = *(a1 + 80);
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  v4 = v6 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
  v3 = *(a1 + 80);
  if ((v3 & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  v7 = *(a1 + 24);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(a1 + 80);
  }

  else
  {
    v8 = 2;
  }

  v4 = (v8 + v4);
LABEL_17:
  if ((v3 & 4) != 0)
  {
    v9 = *(a1 + 28);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
      v3 = *(a1 + 80);
      v4 = (v10 + 1 + v4);
      if ((v3 & 8) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 8) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_19:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_20;
    }

LABEL_33:
    v13 = *(a1 + 36);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
      v3 = *(a1 + 80);
      v4 = (v14 + 1 + v4);
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_21:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_22;
    }

LABEL_57:
    v23 = *(a1 + 48);
    if (v23)
    {
      v24 = *(v23 + 40);
      if (*(v23 + 40))
      {
        goto LABEL_59;
      }
    }

    else
    {
      v23 = *(qword_100471C58 + 48);
      v24 = *(v23 + 40);
      if (*(v23 + 40))
      {
LABEL_59:
        v25 = (v24 << 31 >> 31) & 9;
        if ((v24 & 2) != 0)
        {
          v26 = v25 + 9;
        }

        else
        {
          v26 = v25;
        }

        if ((v24 & 4) != 0)
        {
          v27 = *(v23 + 32);
          if (v27 >= 0x80)
          {
            v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2) + 1;
          }

          else
          {
            v28 = 2;
          }

          v26 = (v28 + v26);
          v29 = (v23 + 8);
          v30 = *(v23 + 8);
          if (!v30)
          {
            goto LABEL_73;
          }

          goto LABEL_71;
        }

LABEL_67:
        v29 = (v23 + 8);
        v30 = *(v23 + 8);
        if (!v30)
        {
          goto LABEL_73;
        }

LABEL_71:
        if (*v30 != v30[1])
        {
          v26 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v29, a2) + v26;
        }

LABEL_73:
        *(v23 + 36) = v26;
        if (v26 >= 0x80)
        {
          v4 = v4 + v26 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 1;
          v3 = *(a1 + 80);
          if ((v3 & 0x80) != 0)
          {
            goto LABEL_77;
          }
        }

        else
        {
          v4 = (v4 + v26 + 2);
          v3 = *(a1 + 80);
          if ((v3 & 0x80) != 0)
          {
            goto LABEL_77;
          }
        }

LABEL_23:
        if ((v3 & 0xFF00) == 0)
        {
          goto LABEL_100;
        }

        goto LABEL_86;
      }
    }

    v26 = 0;
    goto LABEL_67;
  }

  if ((v3 & 8) == 0)
  {
    goto LABEL_19;
  }

LABEL_29:
  v11 = *(a1 + 32);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
    v3 = *(a1 + 80);
    v4 = (v12 + 1 + v4);
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v4 = (v4 + 2);
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_33;
    }
  }

LABEL_20:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_21;
  }

LABEL_37:
  v15 = *(a1 + 40);
  if (v15)
  {
    v16 = *(v15 + 40);
    if (*(v15 + 40))
    {
      goto LABEL_39;
    }

LABEL_46:
    v18 = 0;
    goto LABEL_47;
  }

  v15 = *(qword_100471C58 + 40);
  v16 = *(v15 + 40);
  if (!*(v15 + 40))
  {
    goto LABEL_46;
  }

LABEL_39:
  v17 = (v16 << 31 >> 31) & 9;
  if ((v16 & 2) != 0)
  {
    v18 = v17 + 9;
  }

  else
  {
    v18 = v17;
  }

  if ((v16 & 4) != 0)
  {
    v19 = *(v15 + 32);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
    }

    else
    {
      v20 = 2;
    }

    v18 = (v20 + v18);
    v21 = (v15 + 8);
    v22 = *(v15 + 8);
    if (!v22)
    {
      goto LABEL_53;
    }

    goto LABEL_51;
  }

LABEL_47:
  v21 = (v15 + 8);
  v22 = *(v15 + 8);
  if (!v22)
  {
    goto LABEL_53;
  }

LABEL_51:
  if (*v22 != v22[1])
  {
    v18 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v21, a2) + v18;
  }

LABEL_53:
  *(v15 + 36) = v18;
  if (v18 >= 0x80)
  {
    v4 = v4 + v18 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
    v3 = *(a1 + 80);
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v4 = (v4 + v18 + 2);
    v3 = *(a1 + 80);
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_57;
    }
  }

LABEL_22:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_23;
  }

LABEL_77:
  v31 = *(a1 + 56);
  v32 = *(v31 + 23);
  v33 = v32;
  v34 = *(v31 + 8);
  if ((v32 & 0x80u) == 0)
  {
    v35 = *(v31 + 23);
  }

  else
  {
    v35 = v34;
  }

  if (v35 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2);
    v32 = *(v31 + 23);
    v34 = *(v31 + 8);
    v3 = *(a1 + 80);
    v33 = *(v31 + 23);
  }

  else
  {
    v36 = 1;
  }

  if (v33 < 0)
  {
    v32 = v34;
  }

  v4 = (v4 + v36 + v32 + 1);
  if ((v3 & 0xFF00) != 0)
  {
    goto LABEL_86;
  }

LABEL_100:
  v42 = *(a1 + 8);
  if (v42 && *v42 != v42[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 76) = v4;
  return v4;
}

uint64_t sub_1002DFEDC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1002DE188(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1002DFFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002DFFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DFFE4(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1002E0070(uint64_t a1)
{
  if ((~*(a1 + 80) & 0x9F) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    result = (*(*v2 + 40))(v2);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = (*(**(qword_100471C58 + 16) + 40))(*(qword_100471C58 + 16));
    if (!result)
    {
      return result;
    }
  }

  v4 = *(a1 + 80);
  if ((v4 & 0x20) != 0)
  {
    v5 = *(a1 + 40);
    if (!v5)
    {
      v5 = *(qword_100471C58 + 40);
    }

    result = (*(*v5 + 40))(v5);
    if (!result)
    {
      return result;
    }

    v4 = *(a1 + 80);
  }

  if ((v4 & 0x40) == 0)
  {
LABEL_17:
    if ((v4 & 0x100) == 0)
    {
      return 1;
    }

    v7 = *(a1 + 64);
    if (!v7)
    {
      v7 = *(qword_100471C58 + 64);
    }

    result = (*(*v7 + 40))(v7);
    if (result)
    {
      return 1;
    }

    return result;
  }

  v6 = *(a1 + 48);
  if (!v6)
  {
    v6 = *(qword_100471C58 + 48);
  }

  result = (*(*v6 + 40))(v6);
  if (result)
  {
    v4 = *(a1 + 80);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1002E01F0()
{
  v0 = qword_10045D390;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002D47B8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D358;
}

void sub_1002E0280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E0294(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), *(a2 + 24) + *(a1 + 24));
  if (*(a2 + 24) >= 1)
  {
    v4 = 0;
    do
    {
      v6 = *(*(a2 + 16) + 8 * v4);
      v7 = *(a1 + 28);
      v8 = *(a1 + 24);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 32))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v7 + 1);
          v7 = *(a1 + 28);
        }

        *(a1 + 28) = v7 + 1;
        operator new();
      }

      v5 = *(a1 + 16);
      *(a1 + 24) = v8 + 1;
      sub_1002D5C0C(*(v5 + 8 * v8), v6);
      ++v4;
    }

    while (v4 < *(a2 + 24));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40), *(a2 + 48) + *(a1 + 48));
  if (*(a2 + 48) >= 1)
  {
    v9 = 0;
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      v16 = *(*(a2 + 40) + 8 * v9);
      v17 = *(a1 + 52);
      v18 = *(a1 + 48);
      if (v18 >= v17)
      {
        if (v17 == *(a1 + 56))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40), v17 + 1);
          v17 = *(a1 + 52);
        }

        *(a1 + 52) = v17 + 1;
        operator new();
      }

      v15 = *(a1 + 40);
      *(a1 + 48) = v18 + 1;
      sub_1002D70D0(*(v15 + 8 * v18), v16);
      ++v9;
    }

    while (v9 < *(a2 + 48));
  }

  v19 = *(a2 + 92);
  if ((v19 & 0x3FC) != 0)
  {
    if ((v19 & 4) != 0)
    {
      *(a1 + 92) |= 4u;
      v20 = *(a1 + 64);
      if (!v20)
      {
        operator new();
      }

      v21 = *(a2 + 64);
      if (!v21)
      {
        v21 = *(qword_100471C60 + 64);
      }

      sub_1002E9584(v20, v21);
      v19 = *(a2 + 92);
    }

    if ((v19 & 8) != 0)
    {
      v22 = *(a2 + 72);
      *(a1 + 92) |= 8u;
      v23 = *(a1 + 72);
      if (v23 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v23, v22);
      v19 = *(a2 + 92);
    }

    if ((v19 & 0x10) != 0)
    {
      v24 = *(a2 + 80);
      *(a1 + 92) |= 0x10u;
      *(a1 + 80) = v24;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002E0660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E0674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E06C0(uint64_t a1)
{
  *a1 = off_100447678;
  v2 = *(a1 + 72);
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_100471C60 != a1)
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  v5 = *(a1 + 52);
  if (v5 >= 1)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = *(*(a1 + 40) + 8 * i);
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v5 = *(a1 + 52);
      }
    }
  }

  if (*(a1 + 40))
  {
    operator delete[]();
  }

  v8 = *(a1 + 28);
  if (v8 >= 1)
  {
    for (j = 0; j < v8; ++j)
    {
      v10 = *(*(a1 + 16) + 8 * j);
      if (v10)
      {
        (*(*v10 + 8))(v10);
        v8 = *(a1 + 28);
      }
    }
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002E0880(uint64_t a1)
{
  sub_1002E06C0(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002E0964(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 23);
  if ((v2 & 0x3FC) != 0)
  {
    if ((v2 & 4) != 0)
    {
      this = *(this + 8);
      if (this)
      {
        this = sub_1002E9A88(this);
        v2 = *(v1 + 23);
      }
    }

    if ((v2 & 8) != 0)
    {
      v3 = *(v1 + 9);
      if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(v1 + 10) = 0;
  }

  if (*(v1 + 6) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 2) + 8 * v4);
      this = (*(*v5 + 32))(v5);
      ++v4;
    }

    while (v4 < *(v1 + 6));
  }

  *(v1 + 6) = 0;
  if (*(v1 + 12) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v1 + 5) + 8 * v6);
      this = (*(*v7 + 32))(v7);
      ++v6;
    }

    while (v6 < *(v1 + 12));
  }

  v9 = *(v1 + 1);
  v8 = (v1 + 8);
  *(v8 + 10) = 0;
  *(v8 + 21) = 0;
  if (v9)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v8);
  }

  return this;
}

uint64_t sub_1002E0AAC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  __asm { FMOV            V9.2S, #1.0 }

  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_2:
          v11 = *(this + 1);
          if (v11 >= *(this + 2) || (TagFallback = *v11, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v11 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v13 = TagFallback >> 3;
          v14 = TagFallback & 7;
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v13 != 1)
          {
            if (v13 != 2 || v14 != 2)
            {
              goto LABEL_30;
            }

            *(a1 + 92) |= 4u;
            v17 = *(a1 + 64);
            if (!v17)
            {
              goto LABEL_18;
            }

            goto LABEL_19;
          }

          if (v14 != 2)
          {
            goto LABEL_30;
          }

          while (1)
          {
            v24 = *(a1 + 28);
            v25 = *(a1 + 24);
            if (v25 >= v24)
            {
              if (v24 == *(a1 + 32))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v24 + 1);
                v24 = *(a1 + 28);
              }

              *(a1 + 28) = v24 + 1;
              operator new();
            }

            v26 = *(a1 + 16);
            *(a1 + 24) = v25 + 1;
            v27 = *(v26 + 8 * v25);
            v59[0] = 0;
            v28 = *(this + 1);
            if (v28 >= *(this + 2) || *v28 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v59))
              {
                return 0;
              }
            }

            else
            {
              v59[0] = *v28;
              *(this + 1) = v28 + 1;
            }

            v29 = *(this + 14);
            v30 = *(this + 15);
            *(this + 14) = v29 + 1;
            if (v29 >= v30)
            {
              return 0;
            }

            v31 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v59[0]);
            if (!sub_1002D6030(v27, this, v32, v33) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v31);
            v34 = *(this + 14);
            _VF = __OFSUB__(v34, 1);
            v35 = v34 - 1;
            if (v35 < 0 == _VF)
            {
              *(this + 14) = v35;
            }

            v36 = *(this + 1);
            if (v36 >= *(this + 2))
            {
              goto LABEL_2;
            }

            v37 = *v36;
            if (v37 != 10)
            {
              break;
            }

            *(this + 1) = v36 + 1;
          }

          if (v37 == 18)
          {
            *(this + 1) = v36 + 1;
            *(a1 + 92) |= 4u;
            v17 = *(a1 + 64);
            if (!v17)
            {
LABEL_18:
              operator new();
            }

LABEL_19:
            v59[0] = 0;
            v18 = *(this + 1);
            if (v18 >= *(this + 2) || *v18 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v59))
              {
                return 0;
              }
            }

            else
            {
              v59[0] = *v18;
              *(this + 1) = v18 + 1;
            }

            v38 = *(this + 14);
            v39 = *(this + 15);
            *(this + 14) = v38 + 1;
            if (v38 >= v39)
            {
              return 0;
            }

            v40 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v59[0]);
            if (!sub_1002E9B2C(v17, this, v41, v42) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v40);
            v43 = *(this + 14);
            _VF = __OFSUB__(v43, 1);
            v44 = v43 - 1;
            if (v44 < 0 == _VF)
            {
              *(this + 14) = v44;
            }

            v45 = *(this + 1);
            if (v45 < *(this + 2) && *v45 == 26)
            {
              *(this + 1) = v45 + 1;
              *(a1 + 92) |= 8u;
              if (*(a1 + 72) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
              {
LABEL_62:
                operator new();
              }

              goto LABEL_24;
            }
          }
        }

        if (v13 != 3)
        {
          break;
        }

        if (v14 != 2)
        {
          goto LABEL_30;
        }

        *(a1 + 92) |= 8u;
        if (*(a1 + 72) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          goto LABEL_62;
        }

LABEL_24:
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v46 = *(this + 1);
        if (v46 < *(this + 2) && *v46 == 34)
        {
          do
          {
            *(this + 1) = v46 + 1;
            v20 = *(a1 + 52);
            v21 = *(a1 + 48);
            if (v21 >= v20)
            {
              goto LABEL_66;
            }

LABEL_28:
            v22 = *(a1 + 40);
            *(a1 + 48) = v21 + 1;
            v23 = *(v22 + 8 * v21);
            v59[0] = 0;
            v47 = *(this + 1);
            if (v47 >= *(this + 2) || *v47 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v59))
              {
                return 0;
              }
            }

            else
            {
              v59[0] = *v47;
              *(this + 1) = v47 + 1;
            }

            v48 = *(this + 14);
            v49 = *(this + 15);
            *(this + 14) = v48 + 1;
            if (v48 >= v49)
            {
              return 0;
            }

            v50 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v59[0]);
            if (!sub_1002D7430(v23, this, v51, v52) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v50);
            v53 = *(this + 14);
            _VF = __OFSUB__(v53, 1);
            v54 = v53 - 1;
            if (v54 < 0 == _VF)
            {
              *(this + 14) = v54;
            }

            v46 = *(this + 1);
            v15 = *(this + 2);
          }

          while (v46 < v15 && *v46 == 34);
          if (v15 - v46 >= 2 && *v46 == 128 && v46[1] == 1)
          {
            v16 = (v46 + 2);
            *(this + 1) = v16;
            *v59 = 0;
            if (v16 < v15)
            {
              goto LABEL_84;
            }

LABEL_87:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v59);
            if (!result)
            {
              return result;
            }

            v58 = *(this + 1);
            v57 = *(this + 2);
            *(a1 + 80) = *v59;
            *(a1 + 92) |= 0x10u;
            if (v58 == v57)
            {
              goto LABEL_89;
            }
          }
        }
      }

      if (v13 == 4)
      {
        break;
      }

      if (v13 != 16 || (TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v16 = *(this + 1);
      v15 = *(this + 2);
      *v59 = 0;
      if (v16 >= v15)
      {
        goto LABEL_87;
      }

LABEL_84:
      v55 = *v16;
      if (v55 < 0)
      {
        goto LABEL_87;
      }

      v56 = v16 + 1;
      *(this + 1) = v56;
      *(a1 + 80) = v55;
      *(a1 + 92) |= 0x10u;
      if (v56 == v15)
      {
LABEL_89:
        if (*(this + 11) || *(this + 6) == *(this + 10))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v14 == 2)
    {
      v20 = *(a1 + 52);
      v21 = *(a1 + 48);
      if (v21 < v20)
      {
        goto LABEL_28;
      }

LABEL_66:
      if (v20 == *(a1 + 56))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40), v20 + 1);
        v20 = *(a1 + 52);
      }

      *(a1 + 52) = v20 + 1;
      operator new();
    }

LABEL_30:
    if (v14 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1002E1170(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 24) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  v7 = *(v5 + 92);
  if ((v7 & 4) != 0)
  {
    v8 = *(v5 + 64);
    if (v8)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v8, a2, a4);
      if ((*(v5 + 92) & 8) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(qword_100471C60 + 64), a2, a4);
      if ((*(v5 + 92) & 8) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_6:
    if (*(v5 + 48) < 1)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if ((v7 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  if (*(v5 + 48) < 1)
  {
    goto LABEL_15;
  }

LABEL_13:
  v9 = 0;
  do
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(*(v5 + 40) + 8 * v9++), a2, a4);
  }

  while (v9 < *(v5 + 48));
LABEL_15:
  if ((*(v5 + 92) & 0x10) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0x10, *(v5 + 80), a2, a4);
  }

  v12 = *(v5 + 8);
  v11 = (v5 + 8);
  v10 = v12;
  if (v12 && *v10 != v10[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v11, a2, a3);
  }

  return result;
}

_BYTE *sub_1002E12C4(uint64_t a1, _BYTE *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(a1 + 24) < 1)
  {
    result = a2;
  }

  else
  {
    v5 = 0;
    result = a2;
    do
    {
      v8 = *(*(a1 + 16) + 8 * v5);
      *result = 10;
      v9 = *(v8 + 7);
      if (v9 > 0x7F)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v8 + 7), result + 1, a3);
      }

      else
      {
        result[1] = v9;
        v7 = (result + 2);
      }

      result = sub_1002D62C4(v8, v7, a3, a4);
      ++v5;
    }

    while (v5 < *(a1 + 24));
  }

  v10 = *(a1 + 92);
  if ((v10 & 4) == 0)
  {
    if ((v10 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    v17 = *(a1 + 72);
    *result = 26;
    v18 = *(v17 + 23);
    if ((v18 & 0x8000000000000000) != 0)
    {
      v18 = *(v17 + 8);
      if (v18 <= 0x7F)
      {
        goto LABEL_20;
      }
    }

    else if (v18 <= 0x7F)
    {
LABEL_20:
      result[1] = v18;
      v19 = result + 2;
      goto LABEL_23;
    }

    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, result + 1, a3);
LABEL_23:
    v20 = *(v17 + 23);
    if (v20 >= 0)
    {
      v21 = v17;
    }

    else
    {
      v21 = *v17;
    }

    if (v20 >= 0)
    {
      v22 = *(v17 + 23);
    }

    else
    {
      v22 = *(v17 + 8);
    }

    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v21, v22, v19, a4);
    if (*(a1 + 48) < 1)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    *result = 18;
    v12 = result + 1;
    v13 = v11[9];
    if (v13 <= 0x7F)
    {
      goto LABEL_14;
    }

LABEL_17:
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v12, a3);
    result = sub_1002E9F48(v11, v14, v15, v16);
    if ((*(a1 + 92) & 8) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v11 = *(qword_100471C60 + 64);
  *result = 18;
  v12 = result + 1;
  v13 = v11[9];
  if (v13 > 0x7F)
  {
    goto LABEL_17;
  }

LABEL_14:
  result[1] = v13;
  result = sub_1002E9F48(v11, (result + 2), a3, a4);
  if ((*(a1 + 92) & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (*(a1 + 48) < 1)
  {
    goto LABEL_35;
  }

LABEL_30:
  v23 = 0;
  do
  {
    v25 = *(*(a1 + 40) + 8 * v23);
    *result = 34;
    v26 = v25[8];
    if (v26 <= 0x7F)
    {
      result[1] = v26;
      v24 = result + 2;
    }

    else
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25[8], result + 1, a3);
    }

    result = sub_1002D77AC(v25, v24, a3);
    ++v23;
  }

  while (v23 < *(a1 + 48));
LABEL_35:
  if ((*(a1 + 92) & 0x10) != 0)
  {
    v27 = *(a1 + 80);
    *result = 384;
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v27, (result + 2), a3);
  }

  v30 = *(a1 + 8);
  v29 = (a1 + 8);
  v28 = v30;
  if (v30 && *v28 != v28[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v29, result, a3);
  }

  return result;
}

uint64_t sub_1002E1514(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 92);
  if ((v3 & 0x3FC) == 0)
  {
    v5 = *(a1 + 24);
    if (v5 < 1)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  if ((v3 & 4) == 0)
  {
    v4 = 0;
    if ((v3 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = sub_1002EA0FC(v6, a2);
    if (v7 < 0x80)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = sub_1002EA0FC(*(qword_100471C60 + 64), a2);
    if (v7 < 0x80)
    {
LABEL_9:
      v4 = v7 + 2;
      v3 = *(a1 + 92);
      if ((v3 & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }
  }

  v4 = v7 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
  v3 = *(a1 + 92);
  if ((v3 & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  v8 = *(a1 + 72);
  v9 = *(v8 + 23);
  v10 = v9;
  v11 = *(v8 + 8);
  if ((v9 & 0x80u) == 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = v11;
  }

  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
    v9 = *(v8 + 23);
    v11 = *(v8 + 8);
    v3 = *(a1 + 92);
    v10 = *(v8 + 23);
  }

  else
  {
    v13 = 1;
  }

  if (v10 < 0)
  {
    v9 = v11;
  }

  v4 += v13 + v9 + 1;
LABEL_22:
  if ((v3 & 0x10) != 0)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 80), a2);
    v16 = *(a1 + 24);
    v5 = v16 + v4 + v15 + 2;
    if (v16 < 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v14 = *(a1 + 24);
    v5 = v14 + v4;
    if (v14 < 1)
    {
      goto LABEL_31;
    }
  }

LABEL_26:
  v17 = 0;
  do
  {
    v19 = sub_1002D63F8(*(*(a1 + 16) + 8 * v17), a2);
    v20 = v19;
    if (v19 < 0x80)
    {
      v18 = 1;
    }

    else
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
    }

    v5 += v20 + v18;
    ++v17;
  }

  while (v17 < *(a1 + 24));
LABEL_31:
  v21 = *(a1 + 48);
  v22 = (v21 + v5);
  if (v21 >= 1)
  {
    v23 = 0;
    do
    {
      v25 = sub_1002D7924(*(*(a1 + 40) + 8 * v23), a2);
      v26 = v25;
      if (v25 < 0x80)
      {
        v24 = 1;
      }

      else
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
      }

      v22 = (v26 + v22 + v24);
      ++v23;
    }

    while (v23 < *(a1 + 48));
  }

  v27 = *(a1 + 8);
  if (v27 && *v27 != v27[1])
  {
    v22 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v22;
  }

  *(a1 + 88) = v22;
  return v22;
}

uint64_t sub_1002E1728(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1002E0294(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1002E1808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E181C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E1830(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1002E18BC(uint64_t a1)
{
  v1 = *(a1 + 92);
  if ((v1 & 8) == 0)
  {
    return 0;
  }

  if (*(a1 + 24) < 1)
  {
LABEL_8:
    if ((v1 & 4) != 0)
    {
      v6 = *(a1 + 64);
      if (v6)
      {
        result = (*(*v6 + 40))(v6);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = (*(**(qword_100471C60 + 64) + 40))(*(qword_100471C60 + 64));
        if (!result)
        {
          return result;
        }
      }
    }

    return 1;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(*(a1 + 16) + 8 * v4);
    if (((*(*v5 + 40))(v5) & 1) == 0)
    {
      return 0;
    }

    if (++v4 >= *(a1 + 24))
    {
      v1 = *(a1 + 92);
      goto LABEL_8;
    }
  }
}

uint64_t sub_1002E19D4()
{
  v0 = qword_10045D390;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002D47B8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D368;
}

void sub_1002E1A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E1A78(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 36);
    v7 = v5 + v4;
    if (v6 < v7)
    {
      v8 = 2 * v6;
      if (2 * v6 <= v7)
      {
        v8 = v7;
      }

      if (v8 <= 4)
      {
        v8 = 4;
      }

      *(a1 + 36) = v8;
      operator new[]();
    }

    memcpy((*(a1 + 24) + 4 * v5), *(a2 + 24), 4 * *(a2 + 32));
    *(a1 + 32) += *(a2 + 32);
  }

  if (*(a2 + 44))
  {
    *(a1 + 44) |= 1u;
    v9 = *(a1 + 16);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 16);
    if (!v10)
    {
      v10 = *(qword_100471C68 + 16);
    }

    sub_1002D5C0C(v9, v10);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002E1C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E1C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E1C94(void *a1)
{
  *a1 = off_100447728;
  if (qword_100471C68 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  if (a1[3])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002E1D44(void *a1)
{
  *a1 = off_100447728;
  if (qword_100471C68 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  if (a1[3])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002E1E9C(uint64_t a1)
{
  if (*(a1 + 44))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = *(v2 + 32);
      if (!v3 || (*(v2 + 24) = 1, (v3 & 2) == 0) || (v4 = *(v2 + 16), v4 == &wireless_diagnostics::google::protobuf::internal::kEmptyString))
      {
LABEL_8:
        v6 = *(v2 + 8);
        v5 = (v2 + 8);
        *(v5 + 6) = 0;
        if (!v6)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if ((*(v4 + 23) & 0x80000000) == 0)
      {
        *v4 = 0;
        *(v4 + 23) = 0;
        goto LABEL_8;
      }

      **v4 = 0;
      *(v4 + 8) = 0;
      v10 = *(v2 + 8);
      v5 = (v2 + 8);
      *(v5 + 6) = 0;
      if (v10)
      {
LABEL_9:
        v7 = a1;
        wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
        a1 = v7;
      }
    }
  }

LABEL_10:
  v9 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 6) = 0;
  *(result + 9) = 0;
  if (v9)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002E1F5C(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback & 7;
      if (TagFallback >> 3 != 2)
      {
        break;
      }

      if ((TagFallback & 7) == 0)
      {
        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_31;
      }

      if (v8 == 2)
      {
        result = sub_1002DA524(this, (a1 + 24));
        if (!result)
        {
          return result;
        }

        goto LABEL_53;
      }

LABEL_16:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
      {
        return 0;
      }
    }

    if (TagFallback >> 3 != 1 || v8 != 2)
    {
      goto LABEL_16;
    }

    *(a1 + 44) |= 1u;
    v9 = *(a1 + 16);
    if (!v9)
    {
      operator new();
    }

    v35 = 0;
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
      {
        return 0;
      }
    }

    else
    {
      v35 = *v10;
      *(this + 1) = v10 + 1;
    }

    v14 = *(this + 14);
    v15 = *(this + 15);
    *(this + 14) = v14 + 1;
    if (v14 >= v15)
    {
      return 0;
    }

    v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35);
    if (!sub_1002D6030(v9, this, v17, v18) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
    v19 = *(this + 14);
    v20 = __OFSUB__(v19, 1);
    v21 = v19 - 1;
    if (v21 < 0 == v20)
    {
      *(this + 14) = v21;
    }

    v22 = *(this + 1);
    v12 = *(this + 2);
    if (v22 < v12 && *v22 == 16)
    {
      do
      {
        v13 = v22 + 1;
        *(this + 1) = v13;
LABEL_31:
        v34 = 0;
        if (v13 >= v12 || (v23 = *v13, (v23 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34);
          if (!result)
          {
            return result;
          }

          v23 = v34;
          v24 = *(a1 + 32);
          v25 = *(a1 + 24);
          if (v24 == *(a1 + 36))
          {
LABEL_37:
            if (2 * v24 <= v24 + 1)
            {
              v26 = v24 + 1;
            }

            else
            {
              v26 = 2 * v24;
            }

            if (v26 <= 4)
            {
              v26 = 4;
            }

            *(a1 + 36) = v26;
            operator new[]();
          }
        }

        else
        {
          *(this + 1) = v13 + 1;
          v24 = *(a1 + 32);
          v25 = *(a1 + 24);
          if (v24 == *(a1 + 36))
          {
            goto LABEL_37;
          }
        }

        *(a1 + 32) = v24 + 1;
        *(v25 + 4 * v24) = v23;
        v27 = *(a1 + 36) - *(a1 + 32);
        if (v27 >= 1)
        {
          for (i = v27 + 1; i > 1; --i)
          {
            v30 = *(this + 1);
            v31 = *(this + 2);
            if (v30 >= v31 || *v30 != 16)
            {
              break;
            }

            *(this + 1) = v30 + 1;
            v33 = 0;
            if ((v30 + 1) >= v31 || (v32 = v30[1], (v32 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v33);
              if (!result)
              {
                return result;
              }

              v32 = v33;
              v25 = *(a1 + 24);
            }

            else
            {
              *(this + 1) = v30 + 2;
            }

            v29 = *(a1 + 32);
            *(a1 + 32) = v29 + 1;
            *(v25 + 4 * v29) = v32;
          }
        }

LABEL_53:
        v22 = *(this + 1);
        v12 = *(this + 2);
      }

      while (v22 < v12 && *v22 == 16);
      if (v22 == v12 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }
  }
}

uint64_t sub_1002E2348(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 44))
  {
    v6 = *(result + 16);
    if (!v6)
    {
      v6 = *(qword_100471C68 + 16);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v6, a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(*(v5 + 24) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002E240C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (*(this + 44))
  {
    v6 = *(this + 2);
    if (v6)
    {
      *a2 = 10;
      v7 = a2 + 1;
      v8 = v6[7];
      if (v8 <= 0x7F)
      {
LABEL_4:
        *(v4 + 1) = v8;
        v9 = (v4 + 2);
LABEL_7:
        v4 = sub_1002D62C4(v6, v9, a3, a4);
        goto LABEL_8;
      }
    }

    else
    {
      v6 = *(qword_100471C68 + 16);
      *a2 = 10;
      v7 = a2 + 1;
      v8 = v6[7];
      if (v8 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    goto LABEL_7;
  }

LABEL_8:
  if (*(this + 8) >= 1)
  {
    v10 = 0;
    do
    {
      while (1)
      {
        while (1)
        {
          v11 = *(*(this + 3) + 4 * v10);
          *v4 = 16;
          v12 = v4 + 1;
          if ((v11 & 0x80000000) == 0)
          {
            break;
          }

          v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, v12, a3);
          if (++v10 >= *(this + 8))
          {
            goto LABEL_16;
          }
        }

        if (v11 > 0x7F)
        {
          break;
        }

        *(v4 + 1) = v11;
        v4 = (v4 + 2);
        if (++v10 >= *(this + 8))
        {
          goto LABEL_16;
        }
      }

      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v12, a3);
      ++v10;
    }

    while (v10 < *(this + 8));
  }

LABEL_16:
  v15 = *(this + 1);
  v14 = (this + 8);
  v13 = v15;
  if (!v15 || *v13 == v13[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v14, v4, a3);
}

uint64_t sub_1002E2564(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 44))
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = sub_1002D63F8(v9, a2);
      if (v10 < 0x80)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = sub_1002D63F8(*(qword_100471C68 + 16), a2);
      if (v10 < 0x80)
      {
LABEL_10:
        v3 = v10 + 2;
        v4 = *(a1 + 32);
        if (v4 < 1)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }

    v3 = v10 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v4 = *(a1 + 32);
    if (v4 < 1)
    {
      goto LABEL_3;
    }

    goto LABEL_14;
  }

  v3 = 0;
  v4 = *(a1 + 32);
  if (v4 < 1)
  {
LABEL_3:
    v5 = 0;
    goto LABEL_4;
  }

LABEL_14:
  v11 = 0;
  v5 = 0;
  do
  {
    v13 = *(*(a1 + 24) + 4 * v11);
    if ((v13 & 0x80000000) != 0)
    {
      v12 = 10;
    }

    else if (v13 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
      v4 = *(a1 + 32);
    }

    else
    {
      v12 = 1;
    }

    v5 += v12;
    ++v11;
  }

  while (v11 < v4);
LABEL_4:
  v6 = (v5 + v3 + v4);
  v7 = *(a1 + 8);
  if (v7 && *v7 != v7[1])
  {
    v6 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v6;
  }

  *(a1 + 40) = v6;
  return v6;
}

uint64_t sub_1002E268C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1002E1A78(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_1002E276C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E2780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E2794(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1002E2820(uint64_t a1)
{
  if ((*(a1 + 44) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    return (*(*v2 + 40))();
  }

  else
  {
    return (*(**(qword_100471C68 + 16) + 40))();
  }
}

uint64_t sub_1002E288C()
{
  v0 = qword_10045D390;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002D47B8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D378;
}

void sub_1002E291C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1002E298C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1002E2D40(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  operator new();
}

void sub_1002E2CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E2CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E2CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002E2D40(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045D398 & 1) == 0)
  {
    byte_10045D398 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/protobuf/gen/venue.pb.cc", a4);
    sub_1002EA8A0(v4, v5, v6, v7);
    sub_1002D2BA0(v8, v9, v10, v11);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x18protobuf/gen/venue.proto\x12\vproto.venue\x1A\x1Eprotobuf/gen/coordinates.proto\x1A\x17protobuf/gen/math.protoB\n\rPolygonBounds\x12\x0E\n\x02xs\x18\x01 \x03(\x01B\x02\x10\x01\x12\x0E\n\x02ys\x18\x02 \x03(\x01B\x02\x10\x01\x12\x11\n\ttolerance\x18\x03 \x01(\x01u\n\x0EGeoJsonPolygon\x120\n\fexteriorRing\x18\x01 \x01(\v2\x1A.proto.venue.PolygonBounds\x121\n\rinteriorRings\x18\x02 \x03(\v2\x1A.proto.venue.PolygonBounds\x80\x01\n\x1DIndoorOutdoorLikelihoodParams\x12\x1E\n\x16indoorSurveyOnTileMean\x18\x01 \x02(\x01\x12\x1D\n\x15indoorSurveyOnTileMin\x18\x02 \x02(\x01\x12 \n\x18indoorSurveyOnTileStdDev\x18\x03 \x02(\x01\xB1\b\n\rFloorMetadata\x12\v\n\x03uid\x18\x01 \x02(\t\x12\x13\n\vfloorNumber\x18\x02 \x01(\x05\x12\x16\n\x0ErssiMapVersion\x18\x03 \x02(\x03\x12/\n\ftangentPoint\x18\x04 \x02(\v2\x19.proto.coordinates.LatLon\x12/\n\tglobalDbm\x18\x05 \x02(\v2\x1C.proto.math.ObservationStats\x12N\n\x17radioMapCoordinateFrame\x18\x06 \x02(\v2-.proto.coordinates.BoundedCellCoordinateFrame\x12Q\n\x1DwifiScanCountLikelihoodParams\x18\a \x02(\v2*.proto.venue.IndoorOutdoorLikelihoodParams\x12S\n\x1FbeaconScanCountLikelihoodParams\x18\n \x01(\v2*.proto.venue.IndoorOutdoorLikelihoodParams\x120\n\fsurveyBounds\x18\b \x03(\v2\x1A.proto.venue.PolygonBounds\x12\f\n\x04area\x18\t \x01(\x01\x12K\n\fencodingType\x18\v \x01(\x0E2!.proto.venue.RadioMapEncodingType:\x12FixedPointEncoding\x12J\n\x11mapCellLookupMode\x18\f \x01(\x0E2\x1E.proto.venue.MapCellLookupMode:\x0FNearestNeighbor\x124\n\x0FfloorplanBounds\x18\r \x03(\v2\x1B.proto.venue.GeoJsonPolygon\x12'\n\x1Fwifi2GpsFusionAccuracyThreshold\x18\x0E \x01(\x01\x12-\n\acontext\x18\x0F \x01(\x0E2\x1C.proto.venue.LocationContext\x12)\n!wifi2GpsInjectionParticleFraction\x18\x10 \x01(\x01\x12L\n\x14gpsAccuracyTransform\x18\x11 \x01(\v2..proto.math.LinearSaturationFunctionParameters\x12K\n\x13gpsAzimuthTransform\x18\x12 \x01(\v2..proto.math.LinearSaturationFunctionParameters\x12'\n\x1FcoarseRegionalWithWifiLocations\x18\x13 \x01(\b\x12\x16\n\x0EaltitudeMeters\x18\x14 \x01(\x01\x12\x1E\n\x16verticalAccuracyMeters\x18\x15 \x01(\x01\x95\x01\n\tOccupancy\x12F\n\x0FcoordinateFrame\x18\x01 \x02(\v2-.proto.coordinates.BoundedCellCoordinateFrame\x12\x10\n\bwalkable\x18\x02 \x02(\f\x12.\n\aversion\x18\x03 \x01(\x0E2\x1D.proto.venue.OccupancyVersion*6\n\x11MapCellLookupMode\x12\x13\n\x0FNearestNeighbor\x10\x01\x12\f\n\bBilinear\x10\x02*\xC0\x01\n\x14RadioMapEncodingType\x12\x1D\n\x19MangledFixedPointEncoding\x10\x01\x12\x16\n\x12FixedPointEncoding\x10\x02\x12\x1F\n\x1BRadiozapEncodingNoCertainty\x10\x03\x12\x14\n\x10RadiozapEncoding\x10\x04\x12\x19\n\x15PathLossModelEncoding\x10\x05\x12\x1F\n\x1BRadiozapEncoding_deprecated\x10e*+\n\x0FLocationContext\x12\n\n\x06Indoor\x10\x01\x12\f\n\bRegional\x10\x02*>\n\x10OccupancyVersion\x12\x0F\n\vSurveyBased\x10\x01\x12\x19\n\x15FloorplanOpeningBased\x10\x02B\x1E\n\x1Ccom.apple.indoor.proto.venue", 0x7F2, v12);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_1002E30D0()
{
  if (qword_100471C70)
  {
    (*(*qword_100471C70 + 8))(qword_100471C70);
  }

  if (qword_10045D3B0)
  {
    (*(*qword_10045D3B0 + 8))(qword_10045D3B0);
  }

  if (qword_100471C78)
  {
    (*(*qword_100471C78 + 8))(qword_100471C78);
  }

  if (qword_10045D3C0)
  {
    (*(*qword_10045D3C0 + 8))(qword_10045D3C0);
  }

  if (qword_100471C80)
  {
    (*(*qword_100471C80 + 8))(qword_100471C80);
  }

  if (qword_10045D3D0)
  {
    (*(*qword_10045D3D0 + 8))(qword_10045D3D0);
  }

  if (qword_100471C88)
  {
    (*(*qword_100471C88 + 8))(qword_100471C88);
  }

  if (qword_10045D3E0)
  {
    (*(*qword_10045D3E0 + 8))(qword_10045D3E0);
  }

  if (qword_100471C90)
  {
    (*(*qword_100471C90 + 8))(qword_100471C90);
  }

  result = qword_10045D3F0;
  if (qword_10045D3F0)
  {
    v1 = *(*qword_10045D3F0 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_1002E32D8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = qword_10045D418;
  __dmb(0xBu);
  if (v4 != 2)
  {
    v18[1] = sub_1002E298C;
    v19 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v18);
  }

  if (!qword_100471C70)
  {
    sub_1002E2D40(a1, 0, a3, a4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471C78)
  {
    sub_1002E2D40(v5, 0, v6, v7);
  }

  v8 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471C80)
  {
    sub_1002E2D40(v8, 0, v9, v10);
  }

  v11 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471C88)
  {
    sub_1002E2D40(v11, 0, v12, v13);
  }

  v14 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471C90)
  {
    sub_1002E2D40(v14, 0, v15, v16);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1002E3428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E343C(uint64_t a1)
{
  *a1 = off_100447AF0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 104) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 56) = 0x200000000;
  *(a1 + 64) = 0;
  *(a1 + 144) = 0;
  *(a1 + 136) = 0x100000001;
  *(a1 + 196) = 0;
  *(a1 + 200) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 177) = 0u;
  return a1;
}

uint64_t sub_1002E34F0(uint64_t a1)
{
  *a1 = off_100447BA0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_1002E3590(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = v5 + v4;
    if (v6 < v7)
    {
      v8 = 2 * v6;
      if (2 * v6 <= v7)
      {
        v8 = v7;
      }

      if (v8 <= 4)
      {
        v8 = 4;
      }

      *(a1 + 28) = v8;
      operator new[]();
    }

    memcpy((*(a1 + 16) + 8 * v5), *(a2 + 16), 8 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 52);
    v12 = v10 + v9;
    if (v11 < v12)
    {
      v13 = 2 * v11;
      if (2 * v11 <= v12)
      {
        v13 = v12;
      }

      if (v13 <= 4)
      {
        v13 = 4;
      }

      *(a1 + 52) = v13;
      operator new[]();
    }

    memcpy((*(a1 + 40) + 8 * v10), *(a2 + 40), 8 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  if ((*(a2 + 76) & 4) != 0)
  {
    v14 = *(a2 + 64);
    *(a1 + 76) |= 4u;
    *(a1 + 64) = v14;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002E3790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E37A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E37B8(void *a1)
{
  *a1 = off_1004478E0;
  if (a1[5])
  {
    operator delete[]();
  }

  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002E3840(void *a1)
{
  *a1 = off_1004478E0;
  if (a1[5])
  {
    operator delete[]();
  }

  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002E3974(uint64_t a1)
{
  if ((*(a1 + 76) & 0x3FC) != 0)
  {
    *(a1 + 64) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 10) = 0;
  *(result + 17) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002E39A0(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback >> 3;
      v9 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v9 == 1)
        {
          goto LABEL_62;
        }

        goto LABEL_19;
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_19;
      }

      if (v9 == 1)
      {
        result = sub_10009D754(1, 0xAu, this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        if (v16 < v15)
        {
LABEL_41:
          if (*v16 == 18)
          {
            v13 = v16 + 1;
            *(this + 1) = v13;
            v29 = 0;
            if (v13 >= v15)
            {
              goto LABEL_45;
            }

LABEL_43:
            v22 = *v13;
            if ((v22 & 0x80000000) != 0)
            {
LABEL_45:
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29))
              {
                return 0;
              }

              v22 = v29;
              goto LABEL_47;
            }

            v29 = *v13;
            *(this + 1) = v13 + 1;
LABEL_47:
            v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v22);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
            {
              v30 = 0;
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v30))
              {
                return 0;
              }

              v25 = v30;
              v26 = *(a1 + 48);
              if (v26 == *(a1 + 52))
              {
                if (2 * v26 <= v26 + 1)
                {
                  v27 = v26 + 1;
                }

                else
                {
                  v27 = 2 * v26;
                }

                if (v27 <= 4)
                {
                  v27 = 4;
                }

                *(a1 + 52) = v27;
                operator new[]();
              }

              v24 = *(a1 + 40);
              *(a1 + 48) = v26 + 1;
              *(v24 + 8 * v26) = v25;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v23);
LABEL_59:
            v28 = *(this + 1);
            if (v28 < *(this + 2) && *v28 == 25)
            {
              *(this + 1) = v28 + 1;
LABEL_62:
              v30 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v30) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 64) = v30;
              *(a1 + 76) |= 4u;
              if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
              {
                *(this + 8) = 0;
                result = 1;
                *(this + 36) = 1;
                return result;
              }
            }
          }
        }
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_19;
        }

        v29 = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29))
          {
            return 0;
          }

          v11 = v29;
        }

        else
        {
          v29 = *v10;
          *(this + 1) = v10 + 1;
        }

        v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v11);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
        {
          v30 = 0;
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v30))
          {
            return 0;
          }

          v19 = v30;
          v20 = *(a1 + 24);
          if (v20 == *(a1 + 28))
          {
            if (2 * v20 <= v20 + 1)
            {
              v21 = v20 + 1;
            }

            else
            {
              v21 = 2 * v20;
            }

            if (v21 <= 4)
            {
              v21 = 4;
            }

            *(a1 + 28) = v21;
            operator new[]();
          }

          v18 = *(a1 + 16);
          *(a1 + 24) = v20 + 1;
          *(v18 + 8 * v20) = v19;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v17);
        v16 = *(this + 1);
        v15 = *(this + 2);
        if (v16 < v15)
        {
          goto LABEL_41;
        }
      }
    }

    if (v9 == 1)
    {
      result = sub_10009D754(1, 0x12u, this, (a1 + 40));
      if (!result)
      {
        return result;
      }

      goto LABEL_59;
    }

    if (v9 == 2)
    {
      v13 = *(this + 1);
      v12 = *(this + 2);
      v29 = 0;
      if (v13 >= v12)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

LABEL_19:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}