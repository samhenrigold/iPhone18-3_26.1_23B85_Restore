uint64_t caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterFillComplexBufferWithPacketDependencies::$_0>(void ***a1, uint64_t a2)
{
  v3 = (*(*a2 + 80))(a2, ***a1, *(*a1)[1], *(*a1)[2], *(*a1)[3], *(*a1)[4], *(*a1)[5], 0);
  if (isRenderStatusConcerning(v3))
  {
    v4 = (*(*a2 + 104))(a2) ? 15 : 11;
    v5 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v5 + 88 + v4, 16);
    if (message)
    {
      v7 = message;
      v8 = (message + v5 + 88);
      v9 = _os_log_pack_fill(message + 40, v5, 0, &dword_18F5DF000, "AudioConverter -> %p: FillComplexBufferWithPacketDependencies %s render returned %i", v12, v13, v14);
      if ((*(*a2 + 104))(a2))
      {
        v10 = "out-of-process";
      }

      else
      {
        v10 = "in-process";
      }

      stpcpy(v8, v10);
      *v9 = 134218498;
      *(v9 + 4) = a2;
      *(v9 + 12) = 2080;
      *(v9 + 14) = v8;
      *(v9 + 22) = 1024;
      *(v9 + 24) = v3;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v7);
    }
  }

  return v3;
}

uint64_t MP4GetRollGroupDescription(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __n128 a6)
{
  v89 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  if (v6 == a2)
  {
    return 0;
  }

  v10 = 0;
  v11 = &v71 | 0xFA10000000000000;
  a6.n128_u64[0] = 136315394;
  v12 = 1;
  while (2)
  {
    v13 = 0;
    v14 = v10;
    v10 = v12;
    while (*(v6 + 16) != 1936158820)
    {
LABEL_7:
      v6 = *(v6 + 8);
      if (v6 == a2)
      {
        return 0;
      }
    }

    if (v13 != v14)
    {
      ++v13;
      goto LABEL_7;
    }

    v68 = a6;
    v71 = &unk_1F0330650;
    v66 = a1;
    v67 = a3;
    (*(*a1 + 88))(&v72);
    v65 = v11;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 8;
    v71 = off_1F032E160;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    *v84 = 0;
    memset(&v84[4], 0, 28);
    v79 = 0;
    v80 = 0;
    v15 = MP4BoxParser_SampleGroupDescription::Init(&v71);
    if (v15)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = v68.n128_u32[0];
        v86 = "MP4_BoxParser_RollGroupUtility.cpp";
        v87 = 1024;
        v88 = 35;
        v61 = MEMORY[0x1E69E9C10];
        v62 = "%25s:%-5d  MP4GetRollGroupDescription: Failed to read GroupDescription box";
        goto LABEL_100;
      }
    }

    else
    {
      if (v79 != a4)
      {
        goto LABEL_94;
      }

      v16 = (v71[3])(&v71);
      v63 = a4;
      v64 = a5;
      if (v78 == 1 && !v84[0])
      {
        v84[1] = v80;
        v17 = v81;
        if (!v80)
        {
          v17 = 0;
        }

        *&v84[4] = v17;
        v18 = v83;
        if (v82 > ((*&v84[24] - *&v84[8]) >> 1))
        {
          std::allocator<APAC::UI13>::allocate_at_least[abi:ne200100](v82);
        }

        if (v82)
        {
          v19 = 0;
          v20 = v83 + v16;
          do
          {
            v21 = HIDWORD(v79);
            v70 = 0;
            if (!HIDWORD(v79))
            {
              v69 = 0;
              v22 = v75;
              v23 = (v71[3])(&v71);
              v18 += 4;
              v24 = v75;
              if (v22 <= v23)
              {
                v24 = 0;
              }

              if (v24 < v18)
              {
                v55 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = v68.n128_u32[0];
                  v86 = "MP4_BoxParser_SampleGroupDescription.cpp";
                  v87 = 1024;
                  v88 = 77;
                  v47 = v55;
                  v48 = "%25s:%-5d  'sgpd' box is too small for the group description entry size";
                  goto LABEL_87;
                }

LABEL_88:
                v15 = 0;
                v78 = 0;
LABEL_89:
                a5 = v64;
LABEL_90:
                a4 = v63;
                goto LABEL_91;
              }

              v15 = MP4BoxParser::ReadDataSourceBytes(v72, v20, 4uLL, &v69);
              if (v15)
              {
                v56 = MEMORY[0x1E69E9C10];
                if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_89;
                }

                *buf = v68.n128_u32[0];
                v86 = "MP4_BoxParser_SampleGroupDescription.cpp";
                v87 = 1024;
                v88 = 80;
                v51 = v56;
                v52 = "%25s:%-5d  Couldn't read sample group description entry size";
                goto LABEL_82;
              }

              v20 += 4;
              v21 = bswap32(v69);
            }

            v25 = v75;
            v26 = (v71[3])(&v71);
            v18 += v21;
            v27 = v75;
            if (v25 <= v26)
            {
              v27 = 0;
            }

            if (v27 < v18)
            {
              v46 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = v68.n128_u32[0];
                v86 = "MP4_BoxParser_SampleGroupDescription.cpp";
                v87 = 1024;
                v88 = 87;
                v47 = v46;
                v48 = "%25s:%-5d  'sgpd' box is too small for the group description entry";
                goto LABEL_87;
              }

              goto LABEL_88;
            }

            if (v21 != 2)
            {
              v49 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = v68.n128_u32[0];
                v86 = "MP4_BoxParser_SampleGroupDescription.cpp";
                v87 = 1024;
                v88 = 89;
                v47 = v49;
                v48 = "%25s:%-5d  Unexpected entry size in 'sgpd' box";
                goto LABEL_87;
              }

              goto LABEL_88;
            }

            v15 = MP4BoxParser::ReadDataSourceBytes(v72, v20, 2uLL, &v70);
            if (v15)
            {
              v50 = MEMORY[0x1E69E9C10];
              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_89;
              }

              *buf = v68.n128_u32[0];
              v86 = "MP4_BoxParser_SampleGroupDescription.cpp";
              v87 = 1024;
              v88 = 92;
              v51 = v50;
              v52 = "%25s:%-5d  Couldn't read sample group description entry";
LABEL_82:
              _os_log_impl(&dword_18F5DF000, v51, OS_LOG_TYPE_ERROR, v52, buf, 0x12u);
              goto LABEL_89;
            }

            v28 = bswap32(v70) >> 16;
            if (v79 == 1886547820)
            {
              if (v28 <= 0)
              {
                v59 = MEMORY[0x1E69E9C10];
                if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_88;
                }

                *buf = v68.n128_u32[0];
                v86 = "MP4_BoxParser_SampleGroupDescription.cpp";
                v87 = 1024;
                v88 = 101;
                v47 = v59;
                v48 = "%25s:%-5d  Unexpected entry for preroll group";
LABEL_87:
                _os_log_impl(&dword_18F5DF000, v47, OS_LOG_TYPE_ERROR, v48, buf, 0x12u);
                goto LABEL_88;
              }
            }

            else if (v79 == 1919904876 && (v28 & 0x80000000) == 0)
            {
              v57 = MEMORY[0x1E69E9C10];
              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_88;
              }

              *buf = v68.n128_u32[0];
              v86 = "MP4_BoxParser_SampleGroupDescription.cpp";
              v87 = 1024;
              v88 = 98;
              v47 = v57;
              v48 = "%25s:%-5d  Unexpected entry for roll recovery group";
              goto LABEL_87;
            }

            v29 = *&v84[16];
            if (*&v84[16] >= *&v84[24])
            {
              v31 = *&v84[8];
              v32 = *&v84[16] - *&v84[8];
              v33 = (*&v84[16] - *&v84[8]) >> 1;
              if (v33 < -1)
              {
                goto LABEL_104;
              }

              if (*&v84[24] - *&v84[8] <= (v33 + 1))
              {
                v34 = v33 + 1;
              }

              else
              {
                v34 = *&v84[24] - *&v84[8];
              }

              if (*&v84[24] - *&v84[8] >= 0x7FFFFFFFFFFFFFFEuLL)
              {
                v35 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v35 = v34;
              }

              if (v35)
              {
                std::allocator<APAC::UI13>::allocate_at_least[abi:ne200100](v35);
              }

              *(2 * v33) = v28;
              v30 = 2 * v33 + 2;
              memcpy(0, v31, v32);
              v36 = *&v84[8];
              *&v84[8] = 0;
              *&v84[16] = v30;
              *&v84[24] = 0;
              if (v36)
              {
                operator delete(v36);
              }
            }

            else
            {
              **&v84[16] = v28;
              v30 = v29 + 2;
            }

            *&v84[16] = v30;
            v20 += 2;
          }

          while (++v19 < v82);
        }
      }

      v84[0] = 1;
      a5 = v64;
      *v64 = *v84;
      if (v84 == v64)
      {
        v15 = 0;
        goto LABEL_90;
      }

      v37 = *&v84[8];
      v38 = *&v84[16] - *&v84[8];
      v39 = *(v64 + 24);
      v40 = *(v64 + 8);
      if (v39 - v40 < *&v84[16] - *&v84[8])
      {
        if (v40)
        {
          *(v64 + 16) = v40;
          operator delete(v40);
          v39 = 0;
          *(v64 + 8) = 0;
          *(v64 + 16) = 0;
          *(v64 + 24) = 0;
        }

        v41 = v38 >> 1;
        if (((v38 >> 1) & 0x8000000000000000) == 0)
        {
          if (v39 > v41)
          {
            v41 = v39;
          }

          if (v39 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v42 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v41;
          }

          if ((v42 & 0x8000000000000000) == 0)
          {
            std::allocator<APAC::UI13>::allocate_at_least[abi:ne200100](v42);
          }
        }

LABEL_104:
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v43 = *&v84[16];
      v44 = *(v64 + 16);
      v45 = v44 - v40;
      if (v44 - v40 >= v38)
      {
        if (*&v84[16] != *&v84[8])
        {
          memmove(*(v64 + 8), *&v84[8], *&v84[16] - *&v84[8]);
        }

        v15 = 0;
        a5 = v64;
        *(v64 + 16) = &v40[v38];
        a4 = v63;
      }

      else
      {
        if (v44 == v40)
        {
          a5 = v64;
        }

        else
        {
          memmove(*(v64 + 8), *&v84[8], v44 - v40);
          a5 = v64;
          v44 = *(v64 + 16);
        }

        a4 = v63;
        v53 = (v37 + v45);
        v54 = v43 - (v37 + v45);
        if (v54)
        {
          memmove(v44, v53, v54);
        }

        v15 = 0;
        *(a5 + 16) = &v44[v54];
      }

LABEL_91:
      if (!v15 && (v78 & 1) != 0 || (*(a5 + 16) = *(a5 + 8), !v15))
      {
LABEL_94:
        MP4BoxParser_SampleGroupDescription::~MP4BoxParser_SampleGroupDescription(&v71);
        v15 = 0;
        v12 = v10 + 1;
        v6 = *(a2 + 8);
        a1 = v66;
        a3 = v67;
        a6 = v68;
        v11 = v65;
        if (v6 == a2)
        {
          return v15;
        }

        continue;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = v68.n128_u32[0];
        v86 = "MP4_BoxParser_RollGroupUtility.cpp";
        v87 = 1024;
        v88 = 40;
        v61 = MEMORY[0x1E69E9C10];
        v62 = "%25s:%-5d  MP4GetRollGroupDescription: Failed to parse GroupDescription";
LABEL_100:
        _os_log_impl(&dword_18F5DF000, v61, OS_LOG_TYPE_ERROR, v62, buf, 0x12u);
      }
    }

    break;
  }

  MP4BoxParser_SampleGroupDescription::~MP4BoxParser_SampleGroupDescription(&v71);
  return v15;
}

void sub_18F798FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  MP4BoxParser_SampleGroupDescription::~MP4BoxParser_SampleGroupDescription(va);
  _Unwind_Resume(a1);
}

void MP4GetRollGroup(DataSource *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint8_t *a5, unsigned int a6, uint64_t a7)
{
  v28 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  *(a7 + 40) = *(a7 + 32);
  v8 = *(a2 + 8);
  if (v8 == a2)
  {
    goto LABEL_22;
  }

  v10 = a4;
  v14 = 0;
  v15 = 1;
  do
  {
    v16 = 0;
    v17 = v14;
    v14 = v15;
    while (1)
    {
      v18 = *(v8 + 16);
      if (v18 != 1935828848 && v18 != 1668507504)
      {
        goto LABEL_11;
      }

      if (v16 == v17)
      {
        break;
      }

      ++v16;
LABEL_11:
      v8 = *(v8 + 8);
      if (v8 == a2)
      {
        goto LABEL_22;
      }
    }

    if (v18 == 1668507504)
    {
      MP4BoxParser_SampleToGroup::MP4BoxParser_SampleToGroup(buf, a1, *(v8 + 32) + a3);
      *buf = off_1F03348F0;
      v26 = 0;
      memset(v27, 0, sizeof(v27));
      RollGroupWithSampleToGroupBox = MP4GetRollGroupWithSampleToGroupBox(a1, a2, a3, v10, buf, a5, a6, a7);
      MP4BoxParser_SampleToGroupCompact::~MP4BoxParser_SampleToGroupCompact(buf);
      if (RollGroupWithSampleToGroupBox)
      {
        break;
      }

      goto LABEL_18;
    }

    if (v18 != 1935828848)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "MP4_BoxParser_RollGroupUtility.cpp";
        v24 = 1024;
        v25 = 75;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  MP4GetRollSampleGroup: Unknown SampleToGroup box type", buf, 0x12u);
      }

      break;
    }

    MP4BoxParser_SampleToGroup::MP4BoxParser_SampleToGroup(buf, a1, *(v8 + 32) + a3);
    *buf = off_1F0337EA8;
    LODWORD(v27[0]) = 0;
    *(v27 + 8) = 0u;
    *(&v27[1] + 8) = 0u;
    v20 = MP4GetRollGroupWithSampleToGroupBox(a1, a2, a3, v10, buf, a5, a6, a7);
    MP4BoxParser_SampleToGroupRunLength::~MP4BoxParser_SampleToGroupRunLength(buf);
    if (v20)
    {
      break;
    }

LABEL_18:
    v15 = v14 + 1;
    v8 = *(a2 + 8);
  }

  while (v8 != a2);
LABEL_22:
  if ((*a7 & 1) == 0)
  {
    *(a7 + 40) = *(a7 + 32);
  }
}

void sub_18F799294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MP4BoxParser_SampleToGroupCompact::~MP4BoxParser_SampleToGroupCompact(va);
  _Unwind_Resume(a1);
}

BOOL MP4GetRollGroupWithSampleToGroupBox(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint8_t *a6, unsigned int a7, uint64_t a8)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!(*(*a5 + 16))(a5))
  {
    if (*(a5 + 64) != a4 || (*(a5 + 68) & 1) != 0)
    {
      return 0;
    }

    if (*(a5 + 60) != 1)
    {
      return 1;
    }

    v35 = 0;
    v36 = 0;
    v37 = 0;
    if ((*(*a5 + 32))(a5, &v35))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        __p[0] = "MP4_BoxParser_RollGroupUtility.cpp";
        LOWORD(__p[1]) = 1024;
        *(&__p[1] + 2) = 109;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  MP4GetRollSampleGroup: Failed to load SampleToGroup table", buf, 0x12u);
      }

LABEL_41:
      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      return 1;
    }

    *buf = 0;
    memset(__p, 0, sizeof(__p));
    v45 = 0;
    if (*(a5 + 77) == 1 && MP4GetRollGroupDescription(a1, a2, a3, a4, buf, v17))
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *v42 = 136315394;
      *&v42[4] = "MP4_BoxParser_RollGroupUtility.cpp";
      *&v42[12] = 1024;
      *&v42[14] = 116;
      v18 = MEMORY[0x1E69E9C10];
      v19 = "%25s:%-5d  MP4GetRollSampleGroup: Failed to load local RollGroupDescription";
LABEL_37:
      v33 = v42;
LABEL_38:
      _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_ERROR, v19, v33, 0x12u);
      goto LABEL_39;
    }

    if (*(a5 + 76) == 1 && (*a6 & 1) == 0)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *v42 = 136315394;
      *&v42[4] = "MP4_BoxParser_RollGroupUtility.cpp";
      *&v42[12] = 1024;
      *&v42[14] = 120;
      v18 = MEMORY[0x1E69E9C10];
      v19 = "%25s:%-5d  MP4GetRollSampleGroup: Lacks necessary global roll group description";
      goto LABEL_37;
    }

    memset(v42, 0, 24);
    v20 = v35;
    v21 = v36;
    if (v35 != v36)
    {
      v22 = 0;
      while (1)
      {
        v23 = v20[1];
        v24 = v23;
        if (v23)
        {
          v25 = (v23 & 0x10000) == 0;
          v26 = buf;
          if (v25)
          {
            v26 = a6;
          }

          if (!*v26)
          {
            goto LABEL_39;
          }

          v28 = v26 + 8;
          v27 = *(v26 + 1);
          if (v24 > (*(v28 + 1) - v27) >> 1)
          {
            goto LABEL_39;
          }

          *&v42[8] = *v20;
          *&v42[16] = *(v27 + 2 * v24 - 2);
          SampleToRollDistanceTable::append_entry(a8, v42);
        }

        v29 = *v20;
        v20 += 2;
        v22 += v29;
        *v42 = v22;
        if (v20 == v21)
        {
          goto LABEL_29;
        }
      }
    }

    v22 = 0;
LABEL_29:
    v30 = __OFSUB__(a7, v22);
    v31 = a7 - v22;
    if ((v31 < 0) ^ v30 | (v31 == 0))
    {
      goto LABEL_39;
    }

    if (buf[0])
    {
      goto LABEL_31;
    }

    if (MP4GetRollGroupDescription(a1, a2, a3, a4, buf, v17))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v38 = 136315394;
        v39 = "MP4_BoxParser_RollGroupUtility.cpp";
        v40 = 1024;
        v41 = 169;
        v18 = MEMORY[0x1E69E9C10];
        v19 = "%25s:%-5d  MP4GetRollSampleGroup: Failed to load local RollGroupDescription when looking for default description";
        v33 = &v38;
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (buf[0])
    {
LABEL_31:
      if (buf[1] == 1)
      {
        v32 = LOWORD(__p[0]);
        if ((__p[0] & 0x10000) != 0)
        {
          a6 = buf;
        }

        goto LABEL_51;
      }
    }

    if (*a6 == 1 && a6[1] == 1)
    {
      v32 = *(a6 + 1);
LABEL_51:
      if (v32)
      {
        if (*a6 == 1)
        {
          v34 = *(a6 + 1);
          if (v32 <= ((*(a6 + 2) - v34) >> 1))
          {
            *&v42[8] = v31;
            *&v42[16] = *(v34 + 2 * (v32 - 1));
            SampleToRollDistanceTable::append_entry(a8, v42);
          }
        }
      }
    }

LABEL_39:
    if (*(__p + 4))
    {
      *(&__p[1] + 4) = *(__p + 4);
      operator delete(*(__p + 4));
    }

    goto LABEL_41;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (!result)
  {
    return result;
  }

  *buf = 136315394;
  __p[0] = "MP4_BoxParser_RollGroupUtility.cpp";
  LOWORD(__p[1]) = 1024;
  *(&__p[1] + 2) = 97;
  _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  MP4GetRollSampleGroup: Failed to parse SampleToGroup box", buf, 0x12u);
  return 0;
}

void sub_18F799778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EC3AudioStream::GetLoudnessInfo(EC3AudioStream *this, CACFDictionary *a2)
{
  if (*(this + 104) < 0xFFFFFFE1)
  {
    return 0xFFFFFFFFLL;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = 257;
  CACFDictionary::AddFloat32(a2, @"dialnorm", *(this + 104));
  CACFDictionary::~CACFDictionary(&Mutable);
  return 0;
}

uint64_t EC3AudioStream::HandleDiscontinuity(EC3AudioStream *this)
{
  *(this + 59) = 0;
  *(this + 438) = 0;
  *(this + 53) = 0;
  *(this + 108) = 0;
  *(this + 123) = 0;
  *(this + 333) = 0;
  *(this + 352) = 0;
  EC3AudioStream::Resync(this);
  return 0;
}

uint64_t EC3AudioStream::Resync(EC3AudioStream *this)
{
  v96 = *MEMORY[0x1E69E9840];
  v75 = (this + 424);
  if (*(this + 106) && (v2 = *(this + 107)) != 0)
  {
    v3 = *(this + 123);
    v4 = v2 - v3;
    if (v2 > v3)
    {
      v5 = 0;
      v6 = *(this + 1);
      v7 = *(v6 + 88);
      v8 = *(v6 + 96);
      v9 = v7 + *(v6 + 80);
      v11 = v8 < v7 || v9 <= v8;
      v12 = v9 - v8;
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      if (v13 >= v4)
      {
        v14 = v4;
      }

      else
      {
        v14 = v13;
      }

      if (!v11 && v12)
      {
        v5 = (*(v6 + 72) + (v8 - v7));
      }

      EC3AudioStream::EC3Packet::AppendPacketData(v75, v5, v14);
      *(*(this + 1) + 96) += v14;
    }
  }

  else
  {
    *(this + 438) = 0;
    *(this + 53) = 0;
    *(this + 108) = 0;
    *(this + 123) = 0;
  }

  v15 = 0;
  if (*(this + 332))
  {
    v16 = 10;
  }

  else
  {
    v16 = 12;
  }

  v17 = *(this + 1);
  v18 = *(v17 + 88);
  v19 = *(v17 + 96);
  v20 = v18 + *(v17 + 80);
  v22 = v19 < v18 || v20 <= v19;
  v23 = v20 - v19;
  if (v22)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  v86 = 0;
  if (!v22 && v23)
  {
    v15 = *(v17 + 72) + (v19 - v18);
  }

  if (!kASSubSytemEC3)
  {
    v25 = MEMORY[0x1E69E9C10];
LABEL_40:
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      *&buf[4] = "EC3AudioStream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 207;
      *&buf[18] = 2048;
      *&buf[20] = this;
      *&buf[28] = 1024;
      *&buf[30] = v24;
      *&buf[34] = 2048;
      *&buf[36] = v19;
      _os_log_impl(&dword_18F5DF000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d EC3AudioStream(%p):Resync bytesAvailable %d  fpos %qd", buf, 0x2Cu);
    }

    goto LABEL_42;
  }

  v25 = *kASSubSytemEC3;
  if (*kASSubSytemEC3)
  {
    goto LABEL_40;
  }

LABEL_42:
  v26 = 0;
  v27 = this + 440;
  do
  {
    v28 = v86;
    if ((v24 - v86) < v16)
    {
      goto LABEL_150;
    }

    v29 = EC3AudioStream::ScanForSyncWord(this, v24, v15, &v86);
    v28 = v86;
    if (!v29)
    {
      goto LABEL_150;
    }

    v84 = 0;
    v85 = 0;
    v82 = 0;
    v83 = 0;
    outPropertyData = 0;
    v81 = 0;
    v30 = EC3AudioStream::ParseOneCycle(this, v24 - v86, (v15 + v86), &v85, &v84, &v83);
    if (!v30)
    {
      v32 = v83;
      if (!v83 || (v33 = v84) == 0)
      {
        v26 = 0;
        v86 += v85;
LABEL_144:
        v31 = 5;
        goto LABEL_145;
      }

      v34 = *(this + 1);
      if (*(v34 + 112))
      {
LABEL_135:
        if (!*(this + 50))
        {
          *(this + 50) = 1;
          CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems(this + 24, 1);
        }

        v71 = *(this + 24);
        v71->mStartOffset = 0;
        v71->mVariableFramesInPacket = 0;
        v71->mDataByteSize = v33;
        if (kASSubSytemEC3)
        {
          v72 = *kASSubSytemEC3;
          if (!*kASSubSytemEC3)
          {
LABEL_143:
            AudioFileStreamWrapper::CallPacketsProc(*(this + 1), v33, 1u, v32, v71, 1);
            ++*(this + 23);
            *(this + 438) = 0;
            *(this + 53) = 0;
            *(this + 108) = 0;
            *(this + 123) = 0;
            v86 += v85;
            v26 = 1;
            goto LABEL_144;
          }
        }

        else
        {
          v72 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "EC3AudioStream.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 311;
          *&buf[18] = 2048;
          *&buf[20] = 0;
          *&buf[28] = 1024;
          *&buf[30] = v33;
          _os_log_impl(&dword_18F5DF000, v72, OS_LOG_TYPE_DEBUG, "%25s:%-5d found packet: offset = %lld, size = %d", buf, 0x22u);
          v71 = *(this + 24);
        }

        goto LABEL_143;
      }

      v35 = *(v27 + 1);
      v77 = *v27;
      v78 = v35;
      v74 = v27;
      v79 = *(v27 + 4);
      *(this + 29) = *(this + 108);
      v36 = v85;
      v37 = v86;
      *(this + 13) = *(v34 + 96) - v33 + v86 + v85;
      (*(*this + 56))(this, &v77);
      v38 = 1700998451;
      if (*(this + 8) == 1700998451)
      {
        v39 = 0;
      }

      else
      {
        v39 = *v75 < 2u;
        if (*v75 >= 2u)
        {
          v38 = 1700998451;
        }

        else
        {
          v38 = 1633889587;
        }
      }

      *(this + 332) = v39;
      *(this + 4) = v38;
      if ((!*(this + 15) || !*(this + 32)) && !EC3AudioStream::ConstructMagicCookie(this, v33, v32))
      {
        v41 = *(this + 1);
        *buf = 1;
        *(v41 + 108) = 1;
        v42 = *(v41 + 24);
        if (v42)
        {
          v42(*(v41 + 40), *(v41 + 8), 1835493731, buf);
        }
      }

      outPropertyDataSize = 0;
      v95 = 0;
      *buf = v77;
      *&buf[16] = v78;
      LODWORD(v95) = *(this + 32);
      v43 = *(this + 15);
      *&buf[32] = v79;
      *&buf[40] = v43;
      PropertyInfo = AudioFormatGetPropertyInfo(0x666C7374u, 0x38u, buf, &outPropertyDataSize);
      if (PropertyInfo || outPropertyDataSize < 0x30)
      {
        if (kASSubSytemEC3)
        {
          v49 = *kASSubSytemEC3;
          if (!*kASSubSytemEC3)
          {
LABEL_78:
            v26 = 0;
            *(this + 438) = 0;
            *(this + 53) = 0;
            *(this + 108) = 0;
            *(this + 123) = 0;
            v50 = v36 + v37;
            v31 = 5;
            v86 = v50;
            v27 = v74;
            goto LABEL_145;
          }
        }

        else
        {
          v49 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          CAX4CCString::CAX4CCString(v87, PropertyInfo);
          *v88 = 136315650;
          v89 = "EC3AudioStream.cpp";
          v90 = 1024;
          v91 = 280;
          v92 = 2080;
          v93 = v87;
          _os_log_impl(&dword_18F5DF000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: could not get format list items for the stream, err = %s", v88, 0x1Cu);
        }

        goto LABEL_78;
      }

      std::vector<AudioFormatListItem>::resize(&outPropertyData, outPropertyDataSize / 0x30uLL);
      v45 = outPropertyData;
      outPropertyDataSize = (v81 - outPropertyData) & 0xFFFFFFF0;
      if (!AudioFormatGetProperty(0x666C7374u, 0x38u, buf, &outPropertyDataSize, outPropertyData))
      {
        v46 = outPropertyDataSize;
        *(this + 100) = v45[12 * (outPropertyDataSize / 0x30) - 2];
        (*(*this + 64))(this, v46, v45);
      }

      v47 = kASSubSytemEC3;
      if (kASSubSytemEC3)
      {
        v48 = *kASSubSytemEC3;
        if (!*kASSubSytemEC3)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v48 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        v51 = *(this + 332);
        *v88 = 136315650;
        v89 = "EC3AudioStream.cpp";
        v90 = 1024;
        v91 = 287;
        v92 = 1024;
        LODWORD(v93) = v51;
        _os_log_impl(&dword_18F5DF000, v48, OS_LOG_TYPE_DEBUG, "%25s:%-5d isAC3Stream %d", v88, 0x18u);
        v47 = kASSubSytemEC3;
      }

      if (v47)
      {
        v52 = *v47;
        if (!*v47)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v52 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        v53 = *(this + 29);
        *v88 = 136315650;
        v89 = "EC3AudioStream.cpp";
        v90 = 1024;
        v91 = 288;
        v92 = 1024;
        LODWORD(v93) = v53;
        _os_log_impl(&dword_18F5DF000, v52, OS_LOG_TYPE_DEBUG, "%25s:%-5d packetSizeUpperBound %d", v88, 0x18u);
        v47 = kASSubSytemEC3;
      }

      if (v47)
      {
        v54 = *v47;
        if (!*v47)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v54 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        v55 = *(this + 13);
        *v88 = 136315650;
        v89 = "EC3AudioStream.cpp";
        v90 = 1024;
        v91 = 289;
        v92 = 2048;
        v93 = v55;
        _os_log_impl(&dword_18F5DF000, v54, OS_LOG_TYPE_DEBUG, "%25s:%-5d dataOffset %qd", v88, 0x1Cu);
        v47 = kASSubSytemEC3;
      }

      if (v47)
      {
        v56 = *v47;
        if (!*v47)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v56 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        v57 = *(this + 100);
        *v88 = 136315650;
        v89 = "EC3AudioStream.cpp";
        v90 = 1024;
        v91 = 291;
        v92 = 1024;
        LODWORD(v93) = v57;
        _os_log_impl(&dword_18F5DF000, v56, OS_LOG_TYPE_DEBUG, "%25s:%-5d layoutTag 0x%x", v88, 0x18u);
        v47 = kASSubSytemEC3;
      }

      if (v47)
      {
        v58 = *v47;
        if (!*v47)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v58 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        v59 = *(this + 3);
        *v88 = 136315650;
        v89 = "EC3AudioStream.cpp";
        v90 = 1024;
        v91 = 292;
        v92 = 2048;
        v93 = v59;
        _os_log_impl(&dword_18F5DF000, v58, OS_LOG_TYPE_DEBUG, "%25s:%-5d sampleRate %g", v88, 0x1Cu);
        v47 = kASSubSytemEC3;
      }

      if (v47)
      {
        v60 = *v47;
        if (!*v47)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v60 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        v61 = *(this + 11);
        *v88 = 136315650;
        v89 = "EC3AudioStream.cpp";
        v90 = 1024;
        v91 = 293;
        v92 = 1024;
        LODWORD(v93) = v61;
        _os_log_impl(&dword_18F5DF000, v60, OS_LOG_TYPE_DEBUG, "%25s:%-5d framesPerPacket %d", v88, 0x18u);
        v47 = kASSubSytemEC3;
      }

      if (v47)
      {
        v62 = *v47;
        if (!*v47)
        {
LABEL_118:
          v64 = *(this + 1);
          *v88 = 1;
          if ((*(v64 + 104) & 1) == 0)
          {
            *(v64 + 104) = 1;
            v65 = *(v64 + 24);
            if (v65)
            {
              v65(*(v64 + 40), *(v64 + 8), 1717988724, v88);
              v64 = *(this + 1);
            }
          }

          *v88 = 1;
          if ((*(v64 + 105) & 1) == 0)
          {
            *(v64 + 105) = 1;
            v66 = *(v64 + 24);
            if (v66)
            {
              v66(*(v64 + 40), *(v64 + 8), 1684434292, v88);
              v64 = *(this + 1);
            }
          }

          *v88 = 1;
          *(v64 + 108) = 1;
          v67 = *(v64 + 24);
          if (v67)
          {
            v67(*(v64 + 40), *(v64 + 8), 1718383476, v88);
            v64 = *(this + 1);
          }

          *v88 = 1;
          if ((*(v64 + 109) & 1) == 0)
          {
            *(v64 + 109) = 1;
            v68 = *(v64 + 24);
            if (v68)
            {
              v68(*(v64 + 40), *(v64 + 8), 1668112752, v88);
              v64 = *(this + 1);
            }
          }

          *v88 = 1;
          v69 = *(v64 + 24);
          if (v69)
          {
            v69(*(v64 + 40), *(v64 + 8), 1685022310, v88);
            v64 = *(this + 1);
          }

          *v88 = 1;
          if (!*(v64 + 112))
          {
            *(v64 + 112) = 1;
            v70 = *(v64 + 24);
            if (v70)
            {
              v70(*(v64 + 40), *(v64 + 8), 1919247481, v88);
            }
          }

          v27 = v74;
          goto LABEL_135;
        }
      }

      else
      {
        v62 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        v63 = *(this + 13);
        *v88 = 136315650;
        v89 = "EC3AudioStream.cpp";
        v90 = 1024;
        v91 = 294;
        v92 = 1024;
        LODWORD(v93) = v63;
        _os_log_impl(&dword_18F5DF000, v62, OS_LOG_TYPE_DEBUG, "%25s:%-5d channelsPerFrame %d", v88, 0x18u);
      }

      goto LABEL_118;
    }

    if (v30 == 1717662832)
    {
      v31 = 1;
      *(this + 177) = 1;
      *(this + 59) = -1;
    }

    else
    {
      v40 = v85;
      if (v85 <= 1)
      {
        v40 = 1;
      }

      v86 += v40;
      v31 = 4;
    }

LABEL_145:
    if (outPropertyData)
    {
      operator delete(outPropertyData);
    }
  }

  while (v31 == 4);
  if (v31 == 5)
  {
    v28 = v86;
LABEL_150:
    *(*(this + 1) + 96) += v28;
    return v26 & 1;
  }

  v26 = 1;
  return v26 & 1;
}

void sub_18F79A458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const unsigned __int8 **EC3AudioStream::EC3Packet::AppendPacketData(const unsigned __int8 **this, const unsigned __int8 *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    if (__n)
    {
      v5 = this;
      v7 = this[7];
      this += 7;
      v6 = v7;
      if (v7 != __src)
      {
        v8 = *(v5 + 17);
        v9 = v8 + __n;
        if (*(v5 + 16) < (v8 + __n))
        {
          CADeprecated::CAAutoFree<unsigned char>::reallocBytes(this, (v8 + __n));
          *(v5 + 16) = v9;
          v6 = v5[7];
          v8 = *(v5 + 17);
        }

        this = memcpy(&v6[v8], __src, v3);
        *(v5 + 17) += v3;
      }
    }
  }

  return this;
}

BOOL EC3AudioStream::ScanForSyncWord(uint64_t a1, int a2, uint64_t a3, int *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (kASSubSytemEC3)
  {
    v8 = *kASSubSytemEC3;
    if (!*kASSubSytemEC3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *a4;
    *buf = 136315906;
    v31 = "EC3AudioStream.cpp";
    v32 = 1024;
    v33 = 1088;
    v34 = 1024;
    v35 = a2;
    v36 = 1024;
    v37 = v9;
    _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->ScanForSyncWord %d %d", buf, 0x1Eu);
  }

LABEL_7:
  if (*(a1 + 332))
  {
    v10 = -10;
  }

  else
  {
    v10 = -12;
  }

  v11 = *a4;
  v12 = v10 + a2;
  if (*a4 > v10 + a2)
  {
    v13 = *a4;
LABEL_41:
    *a4 = v13;
    if (kASSubSytemEC3)
    {
      v27 = *kASSubSytemEC3;
      if (!*kASSubSytemEC3)
      {
        return 0;
      }
    }

    else
    {
      v27 = MEMORY[0x1E69E9C10];
    }

    result = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    *buf = 136315906;
    v31 = "EC3AudioStream.cpp";
    v32 = 1024;
    v33 = 1126;
    v34 = 1024;
    v35 = a2;
    v36 = 1024;
    v37 = v13;
    _os_log_impl(&dword_18F5DF000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-ScanForSyncWord DID NOT find sync word, buf size = %d, index = %d", buf, 0x1Eu);
    return 0;
  }

  while (1)
  {
    v14 = (a3 + v11);
    v15 = *v14;
    if (v15 != 11)
    {
      break;
    }

    if (v14[1] == 119)
    {
      goto LABEL_15;
    }

LABEL_18:
    v16 = *v14 == 17481 && v14[2] == 51;
    if (v16 || (*v14 == 16724 ? (v17 = v14[2] == 71) : (v17 = 0), v17))
    {
      (*(*a1 + 16))(a1);
      v18 = *(a1 + 8);
      v19 = v14 - *(v18 + 72);
      *(a1 + 364) = v19;
      *(a1 + 368) = *(v18 + 88) + v19;
      if (*(a1 + 376) < 0)
      {
        v20 = *(v18 + 48);
        v21 = *(v18 + 56) - v20;
        if (v21)
        {
          v22 = 0;
          v23 = v21 >> 2;
          v24 = 1;
          do
          {
            v16 = *(v20 + 4 * v22) == 1768174437;
            LODWORD(v21) = v16;
            v22 = v24++;
            v25 = !v16 && v23 > v22;
          }

          while (v25);
        }

        *(a1 + 376) = v21;
        if (!v21)
        {
          goto LABEL_40;
        }

LABEL_37:
        *buf = 0;
        v26 = *(v18 + 24);
        if (v26)
        {
          v26(*(v18 + 40), *(v18 + 8), 1768174437, buf);
        }

        v11 = v11 + ID3Size(a2 - v11, (a3 + v11), buf) - 1;
        goto LABEL_40;
      }

      if (*(a1 + 376))
      {
        goto LABEL_37;
      }
    }

LABEL_40:
    v13 = v11 + 1;
    v25 = v11++ < v12;
    if (!v25)
    {
      goto LABEL_41;
    }
  }

  if (v15 != 119 || v14[1] != 11)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (ParseAC3Header((a3 + v11), a2 - v11, 0, 0, 0, 0, 0, 0))
  {
    goto LABEL_40;
  }

  *a4 = v11;
  if (kASSubSytemEC3)
  {
    v29 = *kASSubSytemEC3;
    if (!*kASSubSytemEC3)
    {
      return 1;
    }
  }

  else
  {
    v29 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v31 = "EC3AudioStream.cpp";
    v32 = 1024;
    v33 = 1105;
    v34 = 1024;
    v35 = a2;
    v36 = 1024;
    v37 = v11;
    _os_log_impl(&dword_18F5DF000, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-ScanForSyncWord found sync word, buf size = %d, index = %d", buf, 0x1Eu);
  }

  return 1;
}

uint64_t EC3AudioStream::ParseOneCycle(EC3AudioStream *this, signed int a2, const unsigned __int8 *a3, unsigned int *a4, unsigned int *a5, const unsigned __int8 **a6)
{
  v67 = *MEMORY[0x1E69E9840];
  v24 = *(this + 332) == 0;
  *a4 = 0;
  if (v24)
  {
    v8 = 12;
  }

  else
  {
    v8 = 10;
  }

  *a5 = 0;
  *a6 = 0;
  if (!a3 || v8 > a2)
  {
    if (kASSubSytemEC3)
    {
      v13 = *kASSubSytemEC3;
      if (!*kASSubSytemEC3)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *&v65[16] = 136316162;
      *&v65[20] = "EC3AudioStream.cpp";
      *&v65[28] = 1024;
      *&v65[30] = 418;
      *&v65[34] = 2048;
      *&v65[36] = this;
      *&v65[44] = 2048;
      *&v66 = a3;
      WORD4(v66) = 1024;
      *(&v66 + 10) = a2;
      _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d EC3AudioStream(%p): invalid inputs, inBuf = %p, inBufSize = %d", &v65[16], 0x2Cu);
    }

    return 0xFFFFFFFFLL;
  }

  *&v64[1] = 0;
  std::vector<unsigned char>::vector[abi:ne200100](__dst, v8);
  v55 = a6;
  if (*(this + 106))
  {
    v12 = *(this + 107) != 0;
  }

  else
  {
    v12 = 0;
  }

  v15 = **(this + 51);
  if (!kASSubSytemEC3)
  {
    v16 = MEMORY[0x1E69E9C10];
LABEL_20:
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *&v65[16] = 136316162;
      *&v65[20] = "EC3AudioStream.cpp";
      *&v65[28] = 1024;
      *&v65[30] = 434;
      *&v65[34] = 1024;
      *&v65[36] = a2;
      *&v65[40] = 1024;
      *&v65[42] = v15 ^ 1;
      LOWORD(v66) = 1024;
      *(&v66 + 2) = v12;
      _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d -> inBufSize = %d, isFirstCycle = %d, hadPartialPacket = %d", &v65[16], 0x24u);
    }

    goto LABEL_22;
  }

  v16 = *kASSubSytemEC3;
  if (*kASSubSytemEC3)
  {
    goto LABEL_20;
  }

LABEL_22:
  v54 = a4;
  if (!v12)
  {
    *(this + 438) = 0;
    *(this + 53) = 0;
    *(this + 108) = 0;
    *(this + 123) = 0;
  }

  v56 = (this + 424);
  memcpy(__dst[0], a3, v8);
  v18 = 0;
  v19 = 0;
  v62 = 0;
  *v60 = 0u;
  v61 = 0u;
  v53 = a2;
  v20 = (this + 440);
  v21 = *(this + 106);
  while (1)
  {
    *v65 = 0;
    v64[0] = 0;
    v59 = 0;
    EC3StreamParser::AssessPacketHeader(__dst[0], v8, &v64[1], v64, v60, v65, &v59, v17);
    v14 = v22;
    if ((v15 & 1) == 0 && !v22)
    {
      if (v19 == *(this + 101))
      {
        *(this + 104) = v59;
      }

      v14 = EC3StreamParser::AssessPacket(*(this + 51), __dst[0], v8, v21, &v65[16], &v58);
    }

    v23 = *&v64[1];
    v24 = v14 != -2 || *&v64[1] == 0;
    v25 = !v24;
    if (v14 && (v25 & 1) == 0)
    {
      v30 = &unk_1EAD0E000;
      if (kASSubSytemEC3)
      {
        v31 = *kASSubSytemEC3;
        if (!*kASSubSytemEC3)
        {
          goto LABEL_100;
        }
      }

      else
      {
        v31 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_100;
      }

      *&v65[16] = 136315906;
      *&v65[20] = "EC3AudioStream.cpp";
      *&v65[28] = 1024;
      *&v65[30] = 467;
      *&v65[34] = 2048;
      *&v65[36] = this;
      *&v65[44] = 1024;
      LODWORD(v66) = v14;
      v36 = "%25s:%-5d EC3AudioStream(%p): AssessPacketHeader or AssessPacket failed, err = %d";
LABEL_99:
      _os_log_impl(&dword_18F5DF000, v31, OS_LOG_TYPE_DEBUG, v36, &v65[16], 0x22u);
      goto LABEL_100;
    }

    if (v21)
    {
      if (v64[0])
      {
        goto LABEL_70;
      }
    }

    else if ((v64[0] & 1) == 0)
    {
      v32 = 0;
      v14 = 0xFFFFFFFFLL;
      goto LABEL_92;
    }

    if ((*(this + 332) & 1) == 0)
    {
      v19 += (*v65 == 1) & ~v64[0];
    }

    v26 = __dst[0];
    v14 = 0xFFFFFFFFLL;
    if (!__dst[0] || !*&v64[1])
    {
      goto LABEL_78;
    }

    if (*(this + 436))
    {
      if (*v60 == *v20 && DWORD1(v61) == *(this + 115))
      {
        goto LABEL_54;
      }

      if (*(this + 437) != 1 || *v56)
      {
        v14 = 560226676;
LABEL_78:
        v30 = &unk_1EAD0E000;
        if (kASSubSytemEC3)
        {
          v31 = *kASSubSytemEC3;
          if (!*kASSubSytemEC3)
          {
            goto LABEL_100;
          }
        }

        else
        {
          v31 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_100;
        }

        *&v65[16] = 136315906;
        *&v65[20] = "EC3AudioStream.cpp";
        *&v65[28] = 1024;
        *&v65[30] = 493;
        *&v65[34] = 2048;
        *&v65[36] = this;
        *&v65[44] = 1024;
        LODWORD(v66) = v14;
        v36 = "%25s:%-5d EC3AudioStream(%p): AddSubPacketInfo failed, err = %d";
        goto LABEL_99;
      }

      *(this + 438) = 1;
    }

    else
    {
      *(this + 436) = 1;
    }

    v27 = v61;
    *v20 = *v60;
    *(this + 456) = v27;
    *(this + 59) = v62;
LABEL_54:
    v18 += v23;
    v28.i32[0] = 1;
    v28.i32[1] = v23;
    *(this + 53) = vadd_s32(*(this + 424), v28);
    v29 = *(this + 112) == 1700998451 ? 4096 : 3840;
    *(this + 108) += v29;
    if (v18 > (a2 - v8))
    {
      break;
    }

    if (++v21 >= 0x48)
    {
      if (v18 <= a2)
      {
LABEL_70:
        v30 = &unk_1EAD0E000;
        goto LABEL_71;
      }

      v14 = 1717662832;
      v30 = &unk_1EAD0E000;
      if (kASSubSytemEC3)
      {
        v31 = *kASSubSytemEC3;
        if (!*kASSubSytemEC3)
        {
          goto LABEL_100;
        }
      }

      else
      {
        v31 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *&v65[16] = 136315906;
        *&v65[20] = "EC3AudioStream.cpp";
        *&v65[28] = 1024;
        *&v65[30] = 509;
        *&v65[34] = 2048;
        *&v65[36] = this;
        *&v65[44] = 1024;
        LODWORD(v66) = 1717662832;
        v36 = "%25s:%-5d EC3AudioStream(%p): entire packet data must be within given buffer boundary, err = %d";
        goto LABEL_99;
      }

LABEL_100:
      v32 = v14 == 0;
LABEL_101:
      if (*v56)
      {
        v40 = *(this + 107);
        if (v40)
        {
          v41 = v40 - *(this + 123);
          if (v41 >= a2)
          {
            v42 = a2;
          }

          else
          {
            v42 = v41;
          }

          if ((v42 & 0x80000000) != 0)
          {
            v14 = 1717662832;
            v47 = *(v30 + 171);
            if (v47)
            {
              v38 = *v47;
              if (!*v47)
              {
                goto LABEL_129;
              }
            }

            else
            {
              v38 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              *&v65[16] = 136316162;
              *&v65[20] = "EC3AudioStream.cpp";
              *&v65[28] = 1024;
              *&v65[30] = 558;
              *&v65[34] = 2048;
              *&v65[36] = this;
              *&v65[44] = 1024;
              LODWORD(v66) = v42;
              WORD2(v66) = 1024;
              *(&v66 + 6) = 1717662832;
              v39 = "%25s:%-5d EC3AudioStream(%p): trying to cache partial packet data, but mEC3Packet actual packet size or cached packet size is incorrect, bytesToCopy = %d, err = %d";
LABEL_122:
              _os_log_impl(&dword_18F5DF000, v38, OS_LOG_TYPE_DEBUG, v39, &v65[16], 0x28u);
            }

            goto LABEL_123;
          }

          if (v42)
          {
            EC3AudioStream::EC3Packet::AppendPacketData(v56, a3, v42);
            *v54 = v42;
          }
        }
      }

      *v55 = 0;
      *a5 = 0;
      if (!v32)
      {
        goto LABEL_123;
      }

LABEL_110:
      v43 = *(v30 + 171);
      if (v43)
      {
        if (*(v43 + 8))
        {
          v44 = *v43;
          if (*v43)
          {
            if (os_log_type_enabled(*v43, OS_LOG_TYPE_DEBUG))
            {
              v45 = *a5;
              v46 = *v54;
              *&v65[16] = 136315906;
              *&v65[20] = "EC3AudioStream.cpp";
              *&v65[28] = 1024;
              *&v65[30] = 578;
              *&v65[34] = 1024;
              *&v65[36] = v45;
              *&v65[40] = 1024;
              *&v65[42] = v46;
              _os_log_impl(&dword_18F5DF000, v44, OS_LOG_TYPE_DEBUG, "%25s:%-5d <- outPacketSize = %d, outBufBytesConsumed = %d", &v65[16], 0x1Eu);
            }
          }
        }
      }

      v14 = 0;
      goto LABEL_129;
    }

    memcpy(v26, &a3[v18], v8);
  }

  v14 = 0;
  v32 = 1;
  if ((v21 - 71) > 0xFFFFFFB7)
  {
LABEL_92:
    v30 = &unk_1EAD0E000;
    goto LABEL_101;
  }

  v30 = &unk_1EAD0E000;
  if (v18 > a2)
  {
    goto LABEL_101;
  }

LABEL_71:
  v33 = *(this + 123);
  if (!v33)
  {
    *v55 = a3;
    *a5 = v18;
    *v54 = v18;
    goto LABEL_110;
  }

  v34 = *(this + 107);
  v35 = v34 - v33;
  if ((v34 - v33) >= 0 && v35 <= a2)
  {
    if (v34 != v33)
    {
      EC3AudioStream::EC3Packet::AppendPacketData(v56, a3, v34 - v33);
      *v54 = v35;
      v33 = *(this + 123);
    }

    *v55 = *(this + 60);
    *a5 = v33;
    goto LABEL_110;
  }

  v14 = 1717662832;
  v37 = *(v30 + 171);
  if (v37)
  {
    v38 = *v37;
    if (!*v37)
    {
      goto LABEL_129;
    }
  }

  else
  {
    v38 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    *&v65[16] = 136316162;
    *&v65[20] = "EC3AudioStream.cpp";
    *&v65[28] = 1024;
    *&v65[30] = 533;
    *&v65[34] = 2048;
    *&v65[36] = this;
    *&v65[44] = 1024;
    LODWORD(v66) = v35;
    WORD2(v66) = 1024;
    *(&v66 + 6) = 1717662832;
    v39 = "%25s:%-5d EC3AudioStream(%p): trying to complete partial packet data, but mEC3Packet actual packet size or cached packet size is incorrect, bytesToCopy = %d, err = %d";
    goto LABEL_122;
  }

LABEL_123:
  v48 = *(v30 + 171);
  if (v48)
  {
    v49 = *v48;
    if (!*v48)
    {
      goto LABEL_129;
    }
  }

  else
  {
    v49 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    v50 = *a5;
    v51 = *v54;
    CAX4CCString::CAX4CCString(v65, v14);
    *&v65[16] = 136316418;
    *&v65[20] = "EC3AudioStream.cpp";
    *&v65[28] = 1024;
    *&v65[30] = 575;
    *&v65[34] = 1024;
    *&v65[36] = v53;
    *&v65[40] = 1024;
    *&v65[42] = v50;
    LOWORD(v66) = 1024;
    *(&v66 + 2) = v51;
    WORD3(v66) = 2080;
    *(&v66 + 1) = v65;
    _os_log_impl(&dword_18F5DF000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: inBufSize = %d, outPacketSize = %d, outBufBytesConsumed = %d, err = %s", &v65[16], 0x2Eu);
  }

LABEL_129:
  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  return v14;
}

void sub_18F79B29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EC3AudioStream::ConstructMagicCookie(EC3AudioStream *this, unsigned int a2, unsigned __int8 *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = 0xFFFFFFFFLL;
  if (!a2 || !a3)
  {
    return v3;
  }

  v7 = *(this + 8);
  v18 = 45;
  v19 = 11;
  if (v7 == 1633889587)
  {
    v8 = 11;
  }

  else
  {
    v8 = 0;
  }

  if (v7 == 1700998451 || (*(this + 332) & 1) == 0)
  {
    v9 = v8 + 45;
  }

  else
  {
    v9 = v8;
  }

  CADeprecated::CAAutoFree<unsigned char>::reallocBytes(this + 15, v9);
  *(this + 32) = v9;
  if (v7 == 1633889587)
  {
    v3 = ConvertAC3HeaderToAC3MP4Cookie(a3, a2, *(this + 15), &v19);
    v10 = v19;
    v11 = v19;
  }

  else
  {
    v10 = 0;
    v3 = 0;
    v11 = 0;
  }

  if (v7 == 1700998451 || (*(this + 332) & 1) == 0)
  {
    v3 = ConvertEAC3HeaderToEAC3MP4Cookie(a3, a2, (*(this + 15) + v11), &v18);
    if (v3)
    {
      goto LABEL_15;
    }

LABEL_21:
    v14 = v18 + v10;
    *(this + 32) = v18 + v10;
    if (kASSubSytemEC3)
    {
      v15 = *kASSubSytemEC3;
      if (!*kASSubSytemEC3)
      {
        return v3;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      CAFormatter::CAFormatter(&v17, *(this + 15), v14);
      *buf = 136315906;
      v21 = "EC3AudioStream.cpp";
      v22 = 1024;
      v23 = 630;
      v24 = 1024;
      v25 = v14;
      v26 = 2080;
      v27 = v17;
      _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d magic cookie, size = %d { %s }", buf, 0x22u);
      if (v17)
      {
        free(v17);
      }
    }

    return v3;
  }

  v18 = 0;
  if (!v3)
  {
    goto LABEL_21;
  }

LABEL_15:
  v12 = *(this + 15);
  if (v12)
  {
    free(v12);
    *(this + 15) = 0;
  }

  *(this + 32) = 0;
  if (kASSubSytemEC3)
  {
    v13 = *kASSubSytemEC3;
    if (!*kASSubSytemEC3)
    {
      return v3;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v21 = "EC3AudioStream.cpp";
    v22 = 1024;
    v23 = 624;
    v24 = 1024;
    v25 = v3;
    _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d got a bad magic cookie, err = %d!", buf, 0x18u);
  }

  return v3;
}

void *CADeprecated::CAAutoFree<unsigned char>::reallocBytes(void **a1, size_t a2)
{
  result = reallocf(*a1, a2);
  if (a2 && !result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_alloc::bad_alloc(exception);
  }

  *a1 = result;
  return result;
}

uint64_t EC3AudioStream::GeneratePackets(EC3AudioStream *this)
{
  v206 = *MEMORY[0x1E69E9840];
  if (!kASSubSytemEC3)
  {
    v2 = MEMORY[0x1E69E9C10];
LABEL_5:
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v195 = "EC3AudioStream.cpp";
      v196 = 1024;
      v197 = 652;
      v198 = 2048;
      *v199 = this;
      _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->EC3AudioStream(%p)::GeneratePackets", buf, 0x1Cu);
    }

    goto LABEL_7;
  }

  v2 = *kASSubSytemEC3;
  if (*kASSubSytemEC3)
  {
    goto LABEL_5;
  }

LABEL_7:
  if (*(this + 332))
  {
    v3 = 10;
  }

  else
  {
    v3 = 12;
  }

  v190 = v3;
  v4 = *(this + 59);
  if (v4 > 668)
  {
    switch(v4)
    {
      case 669:
        goto LABEL_52;
      case 792:
        v8 = *(this + 64);
        v9 = *(this + 33);
        goto LABEL_143;
      case 984:
        v5 = *(this + 64);
        v6 = *(this + 33);
LABEL_302:
        *buf = v5;
        StreamBuffer::Copy((*(this + 1) + 72), buf, v6);
        v147 = *buf;
        v148 = *(this + 64);
        *(this + 33) += *buf;
        v149 = v148 - v147;
        *(this + 64) = v149;
        if (!v149)
        {
          v150 = *(this + 107);
          if (*(this + 122) < v150)
          {
            CADeprecated::CAAutoFree<unsigned char>::reallocBytes(this + 60, *(this + 107));
            *(this + 122) = v150;
          }

          *(this + 123) = v150;
          goto LABEL_20;
        }

        result = 0;
        v165 = 984;
        goto LABEL_395;
    }

    goto LABEL_17;
  }

  if (v4 == -1)
  {
    return 0;
  }

  if (v4)
  {
LABEL_17:
    result = 0;
LABEL_394:
    v165 = -1;
    goto LABEL_395;
  }

  while (1)
  {
LABEL_20:
    v10 = kASSubSytemEC3;
    v11 = MEMORY[0x1E69E9C10];
    if (!kASSubSytemEC3 || (v11 = *kASSubSytemEC3) != 0)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(*(this + 1) + 88);
        *buf = 136315650;
        v195 = "EC3AudioStream.cpp";
        v196 = 1024;
        v197 = 663;
        v198 = 2048;
        *v199 = v12;
        _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d buffer file position %qd", buf, 0x1Cu);
        v10 = kASSubSytemEC3;
      }

      v13 = MEMORY[0x1E69E9C10];
      if (!v10 || (v13 = *v10) != 0)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = *(*(this + 1) + 96);
          *buf = 136315650;
          v195 = "EC3AudioStream.cpp";
          v196 = 1024;
          v197 = 664;
          v198 = 2048;
          *v199 = v14;
          _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d current file position %qd", buf, 0x1Cu);
          v10 = kASSubSytemEC3;
        }

        v15 = MEMORY[0x1E69E9C10];
        if (!v10 || (v15 = *v10) != 0)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = *(this + 1);
            v17 = *(v16 + 80);
            v19 = *(v16 + 88);
            v18 = *(v16 + 96);
            if (v18 >= v19 + v17 || v18 < v19)
            {
              v21 = v17;
            }

            else
            {
              v21 = v18 - v19;
            }

            *buf = 136315650;
            v195 = "EC3AudioStream.cpp";
            v196 = 1024;
            v197 = 665;
            v198 = 1024;
            *v199 = v21;
            _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d current offset %d", buf, 0x18u);
            v10 = kASSubSytemEC3;
          }

          v22 = MEMORY[0x1E69E9C10];
          if (!v10 || (v22 = *v10) != 0)
          {
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              v23 = *(this + 1);
              v24 = *(v23 + 80);
              v26 = *(v23 + 88);
              v25 = *(v23 + 96);
              v27 = v26 + v24;
              if (v27 <= v25 || v25 < v26)
              {
                v29 = 0;
              }

              else
              {
                v29 = v27 - v25;
              }

              *buf = 136315650;
              v195 = "EC3AudioStream.cpp";
              v196 = 1024;
              v197 = 666;
              v198 = 1024;
              *v199 = v29;
              _os_log_impl(&dword_18F5DF000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d bytes available %d", buf, 0x18u);
              v10 = kASSubSytemEC3;
            }

            v30 = MEMORY[0x1E69E9C10];
            if ((!v10 || (v30 = *v10) != 0) && os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v195 = "EC3AudioStream.cpp";
              v196 = 1024;
              v197 = 667;
              _os_log_impl(&dword_18F5DF000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d >>STREAM_WAIT_FOR_DATA  B", buf, 0x12u);
            }
          }
        }
      }
    }

LABEL_52:
    v31 = *(this + 1);
    v32 = *(v31 + 88);
    v33 = *(v31 + 96);
    v34 = v32 + *(v31 + 80);
    if (v33 < v32 || v34 <= v33)
    {
      break;
    }

    v36 = v34 - v33;
    if (v34 == v33)
    {
      break;
    }

    if (*(this + 352) == 1)
    {
      v37 = 0;
      v38 = *(this + 84);
      v39 = v38;
      if (10 - v38 >= v36)
      {
        v40 = v36;
      }

      else
      {
        v40 = (10 - v38);
      }

      v41 = (this + 340);
      if (v36)
      {
        v37 = (*(v31 + 72) + (v33 - v32));
      }

      memcpy(v41 + v38, v37, v40);
      v42 = *(this + 84) + v40;
      *(this + 84) = v42;
      if (v42 >= 3)
      {
        v43 = *v41 == 17481 && *(this + 342) == 51;
        if (!v43 && (*v41 != 16724 || *(this + 342) != 71))
        {
          goto LABEL_88;
        }

        if (v42 != 10)
        {
          if (v42 < 0xB)
          {
            goto LABEL_89;
          }

LABEL_88:
          *(this + 352) = 0;
          *(this + 84) = 0;
          goto LABEL_89;
        }

        v45 = ID3Size(0xAu, this + 340, &v192);
        if (v45)
        {
          v46 = v45;
          (*(*this + 16))(this);
          *(this + 91) = -v39;
          v47 = *(this + 1);
          *(this + 46) = *(v47 + 88) - v39;
          v48 = *(this + 376);
          if (v48 < 0)
          {
            v48 = 0;
            v49 = *(v47 + 48);
            v50 = *(v47 + 56) - v49;
            if (v50)
            {
              v51 = 0;
              v52 = v50 >> 2;
              v53 = 1;
              do
              {
                v43 = *(v49 + 4 * v51) == 1768174437;
                v48 = v43;
                v51 = v53++;
              }

              while (!v43 && v52 > v51);
            }

            *(this + 376) = v48;
          }

          if (v48)
          {
            *buf = 0;
            v55 = *(v47 + 24);
            if (v55)
            {
              v55(*(v47 + 40), *(v47 + 8), 1768174437, buf);
              v47 = *(this + 1);
            }
          }

          *(v47 + 96) += (v40 + v46 - 10);
          *(this + 352) = 0;
        }
      }
    }

LABEL_89:
    if (*(this + 333) == 1)
    {
      LODWORD(v56) = 0;
      v57 = *(this + 84);
      v58 = v190 - v57;
      if (v190 > v57)
      {
        v59 = 0;
        v60 = *(this + 1);
        v61 = *(v60 + 88);
        v62 = *(v60 + 96);
        v63 = v61 + *(v60 + 80);
        v65 = v62 < v61 || v63 <= v62;
        v66 = v63 - v62;
        if (v65)
        {
          v67 = 0;
        }

        else
        {
          v67 = v66;
        }

        if (v67 >= v58)
        {
          v56 = v58;
        }

        else
        {
          v56 = v67;
        }

        v68 = this + v57;
        if (!v65 && v66)
        {
          v59 = (*(v60 + 72) + (v62 - v61));
        }

        memcpy(v68 + 340, v59, v56);
        LODWORD(v57) = *(this + 84) + v56;
        *(this + 84) = v57;
      }

      v69 = *(this + 340);
      if (v69 == 11)
      {
        if (*(this + 341) == 119)
        {
          goto LABEL_110;
        }
      }

      else if (v69 == 119 && *(this + 341) == 11)
      {
LABEL_110:
        if (v57 >= v190)
        {
          v192 = 0;
          *v193 = 0;
          v70 = EC3AudioStream::ParseOneCycle(this, 12, this + 340, &v193[1], v193, &v192);
          if (v70)
          {
            if (v70 == 1717662832)
            {
              goto LABEL_393;
            }
          }

          else
          {
            v71 = v192;
            if (v192)
            {
              v72 = v193[0];
              if (v193[0])
              {
                if (*(this + 438) == 1)
                {
                  EC3AudioStream::NotifyFormatChange(this, this + 11);
                }

                if (!*(this + 50))
                {
                  *(this + 50) = 1;
                  CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems(this + 24, 1);
                }

                v73 = *(this + 24);
                v73->mStartOffset = 0;
                v73->mVariableFramesInPacket = 0;
                v73->mDataByteSize = v72;
                v74 = MEMORY[0x1E69E9C10];
                if ((!kASSubSytemEC3 || (v74 = *kASSubSytemEC3) != 0) && os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315906;
                  v195 = "EC3AudioStream.cpp";
                  v196 = 1024;
                  v197 = 752;
                  v198 = 2048;
                  *v199 = 0;
                  *&v199[8] = 1024;
                  *v200 = v72;
                  _os_log_impl(&dword_18F5DF000, v74, OS_LOG_TYPE_DEBUG, "%25s:%-5d found packet: offset = %lld, size = %d", buf, 0x22u);
                  v73 = *(this + 24);
                }

                AudioFileStreamWrapper::CallPacketsProc(*(this + 1), v72, 1u, v71, v73, 1);
                ++*(this + 23);
                *(this + 438) = 0;
                *(this + 53) = 0;
                *(this + 108) = 0;
                *(this + 123) = 0;
                if (!v193[1])
                {
                  v75 = EC3AudioStream::ParseOneCycle(this, 12, this + 340, &v193[1], v193, &v192);
                  if (v75)
                  {
                    v187 = v75;
                    if (kASSubSytemEC3)
                    {
                      v188 = *kASSubSytemEC3;
                      if (!*kASSubSytemEC3)
                      {
LABEL_393:
                        result = 1685348671;
                        *(this + 177) = 1;
                        goto LABEL_394;
                      }
                    }

                    else
                    {
                      v188 = MEMORY[0x1E69E9C10];
                    }

                    if (!os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_393;
                    }

                    *buf = 136315650;
                    v195 = "EC3AudioStream.cpp";
                    v196 = 1024;
                    v197 = 762;
                    v198 = 1024;
                    *v199 = v187;
                    v184 = "%25s:%-5d ERROR: unexpected failure in ParseOneCycle, err = %d";
                    v185 = v188;
                    v186 = 24;
                    goto LABEL_392;
                  }

                  v76 = v192;
                  v77 = v193[0];
                  if (v192 || v193[0])
                  {
                    if (kASSubSytemEC3)
                    {
                      v189 = *kASSubSytemEC3;
                      if (!*kASSubSytemEC3)
                      {
                        goto LABEL_393;
                      }
                    }

                    else
                    {
                      v189 = MEMORY[0x1E69E9C10];
                    }

                    if (!os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_393;
                    }

                    *buf = 136315906;
                    v195 = "EC3AudioStream.cpp";
                    v196 = 1024;
                    v197 = 766;
                    v198 = 2048;
                    *v199 = v76;
                    *&v199[8] = 1024;
                    *v200 = v77;
                    v184 = "%25s:%-5d ERROR: we should not have a full packet because we just cached a header, outPacketBuf = %p, outPacketSize = %d";
                    v185 = v189;
                    v186 = 34;
                    goto LABEL_392;
                  }
                }
              }
            }

            if (v56 >= v193[1])
            {
              v78 = v193[1];
            }

            else
            {
              v78 = v56;
            }

            *(*(this + 1) + 96) += v78;
          }

          goto LABEL_136;
        }

        goto LABEL_116;
      }

      if (v57 >= 2)
      {
LABEL_136:
        *(this + 333) = 0;
        *(this + 84) = 0;
        goto LABEL_137;
      }

LABEL_116:
      if (v57 < v190)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

LABEL_137:
    if (*(this + 106) && (v79 = *(this + 107)) != 0)
    {
      v80 = *(this + 123);
      if (v79 <= v80)
      {
        goto LABEL_148;
      }

      if (*(this + 122) < v79)
      {
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes(this + 60, *(this + 107));
        *(this + 122) = v79;
        v79 = *(this + 107);
        v80 = *(this + 123);
      }

      v8 = v79 - v80;
      *(this + 64) = v79 - v80;
      v9 = (*(this + 60) + v80);
      *(this + 33) = v9;
LABEL_143:
      *buf = v8;
      StreamBuffer::Copy((*(this + 1) + 72), buf, v9);
      v81 = *buf;
      v82 = *(this + 64);
      *(this + 33) += *buf;
      v83 = v82 - v81;
      *(this + 64) = v83;
      if (v83)
      {
        result = 0;
        v165 = 792;
        goto LABEL_395;
      }

      v84 = *(this + 107);
      if (*(this + 122) < v84)
      {
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes(this + 60, *(this + 107));
        *(this + 122) = v84;
      }
    }

    else
    {
      v84 = 0;
      *(this + 438) = 0;
      *(this + 53) = 0;
      *(this + 108) = 0;
    }

    *(this + 123) = v84;
LABEL_148:
    v85 = 0;
    v86 = *(this + 1);
    v87 = *(v86 + 88);
    v88 = *(v86 + 96);
    v89 = v87 + *(v86 + 80);
    v90 = v88 < v87 || v89 <= v88;
    v91 = v90;
    v92 = v89 - v88;
    if (!v90 && v92)
    {
      v85 = (*(v86 + 72) + (v88 - v87));
    }

    if (!v92)
    {
      v91 = 1;
    }

    if ((v91 & 1) == 0)
    {
      v193[1] = 0;
      if (v190 <= v92)
      {
        v93 = 0;
        v94 = 0;
        while (1)
        {
          while (1)
          {
            if (!EC3AudioStream::ScanForSyncWord(this, v92, v85, &v193[1]))
            {
              if (v94)
              {
                AudioFileStreamWrapper::CallPacketsProc(*(this + 1), v93, v94, v85, *(this + 24), 1);
                *(*(this + 1) + 96) += v93;
                v193[1] -= v93;
                *(this + 23) += v94;
              }

              if (kASSubSytemEC3)
              {
                v140 = *kASSubSytemEC3;
                v141 = v193[1];
                if (!*kASSubSytemEC3)
                {
LABEL_291:
                  *(*(this + 1) + 96) += v141;
                  v193[1] = 0;
                  goto LABEL_292;
                }
              }

              else
              {
                v140 = MEMORY[0x1E69E9C10];
                v141 = v193[1];
              }

              if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136316162;
                v195 = "EC3AudioStream.cpp";
                v196 = 1024;
                v197 = 828;
                v198 = 1024;
                *v199 = v141;
                *&v199[4] = 1024;
                *&v199[6] = v92;
                *v200 = 1024;
                *&v200[2] = v141;
                _os_log_impl(&dword_18F5DF000, v140, OS_LOG_TYPE_DEBUG, "%25s:%-5d did not find sync word, index = %d, size = %d, skipping to %d", buf, 0x24u);
              }

              goto LABEL_291;
            }

            if (kASSubSytemEC3)
            {
              if (*(kASSubSytemEC3 + 8))
              {
                v95 = *kASSubSytemEC3;
                if (*kASSubSytemEC3)
                {
                  if (os_log_type_enabled(*kASSubSytemEC3, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136316162;
                    v195 = "EC3AudioStream.cpp";
                    v196 = 1024;
                    v197 = 838;
                    v198 = 1024;
                    *v199 = v193[1];
                    *&v199[4] = 1024;
                    *&v199[6] = v92;
                    *v200 = 1024;
                    *&v200[2] = v92 - v193[1];
                    _os_log_impl(&dword_18F5DF000, v95, OS_LOG_TYPE_DEBUG, "%25s:%-5d --> searching for packet at index %d, size %d, remaining %d", buf, 0x24u);
                  }
                }
              }
            }

            v193[0] = 0;
            v191 = 0;
            v192 = 0;
            v96 = *(this + 106) && *(this + 107) != 0;
            v97 = &v85[v193[1]];
            v98 = EC3AudioStream::ParseOneCycle(this, v92 - v193[1], v97, v193, &v191, &v192);
            if (!v98)
            {
              break;
            }

            v99 = v98;
            if (v98 == 1717662832)
            {
              goto LABEL_393;
            }

            v100 = *(this + 1);
            if (v94)
            {
              AudioFileStreamWrapper::CallPacketsProc(*(this + 1), v93, v94, v85, *(this + 24), 1);
              v100 = *(this + 1);
              v101 = *(v100 + 96) + v93;
              *(v100 + 96) = v101;
              v102 = v193[1] - v93;
              v193[1] -= v93;
              *(this + 23) += v94;
              v93 = 0;
            }

            else
            {
              v102 = v193[1];
              v101 = *(v100 + 96);
            }

            v104 = v193[0];
            if (v193[0] <= 1)
            {
              v104 = 1;
            }

            v105 = v102 + v104;
            v106 = v101 + v105;
            *(v100 + 96) = v101 + v105;
            if (!kASSubSytemEC3)
            {
              v107 = MEMORY[0x1E69E9C10];
LABEL_191:
              if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
              {
                v108 = *(v100 + 88);
                v109 = v108 + *(v100 + 80);
                if (v109 <= v106 || v106 < v108)
                {
                  v111 = 0;
                }

                else
                {
                  v111 = v109 - v106;
                }

                *buf = 136316162;
                v195 = "EC3AudioStream.cpp";
                v196 = 1024;
                v197 = 868;
                v198 = 1024;
                *v199 = v99;
                *&v199[4] = 1024;
                *&v199[6] = v105;
                *v200 = 1024;
                *&v200[2] = v111;
                _os_log_impl(&dword_18F5DF000, v107, OS_LOG_TYPE_DEBUG, "%25s:%-5d Error: searching for packet (%d), skipping to index %d, remaining %d", buf, 0x24u);
                v100 = *(this + 1);
                v106 = *(v100 + 96);
              }

              goto LABEL_199;
            }

            v107 = *kASSubSytemEC3;
            if (*kASSubSytemEC3)
            {
              goto LABEL_191;
            }

LABEL_199:
            v85 = 0;
            v112 = *(v100 + 88);
            v113 = v112 + *(v100 + 80);
            v114 = v106 < v112 || v113 <= v106;
            v115 = v114;
            v116 = v113 - v106;
            if (!v114 && v116)
            {
              v85 = (*(v100 + 72) + (v106 - v112));
            }

            v94 = 0;
            if (v115)
            {
              v92 = 0;
            }

            else
            {
              v92 = v116;
            }

            v193[1] = 0;
            if (v92 < v190)
            {
              goto LABEL_292;
            }
          }

          if (v192 && v191)
          {
            break;
          }

          if (*(this + 106) && *(this + 107))
          {
            v172 = *(this + 1);
            if (v94)
            {
              AudioFileStreamWrapper::CallPacketsProc(v172, v93, v94, v85, *(this + 24), 1);
              v172 = *(this + 1);
              v173 = *(v172 + 12) + v93;
              *(v172 + 12) = v173;
              v174 = v193[1] - v93;
              v193[1] -= v93;
              *(this + 23) += v94;
            }

            else
            {
              v174 = v193[1];
              v173 = *(v172 + 12);
            }

            *(v172 + 12) = v173 + v174 + v193[0];
            goto LABEL_292;
          }

LABEL_256:
          v133 = kASSubSytemEC3;
          if (kASSubSytemEC3)
          {
            v134 = *kASSubSytemEC3;
            if (!*kASSubSytemEC3)
            {
              goto LABEL_280;
            }
          }

          else
          {
            v134 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v195 = "EC3AudioStream.cpp";
            v196 = 1024;
            v197 = 959;
            v198 = 1024;
            *v199 = v193[1];
            _os_log_impl(&dword_18F5DF000, v134, OS_LOG_TYPE_DEBUG, "%25s:%-5d ---index   %d", buf, 0x18u);
            v133 = kASSubSytemEC3;
          }

          if (v133)
          {
            v135 = *v133;
            if (!*v133)
            {
              goto LABEL_280;
            }
          }

          else
          {
            v135 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
          {
            v136 = *(this + 3);
            *buf = 136315650;
            v195 = "EC3AudioStream.cpp";
            v196 = 1024;
            v197 = 961;
            v198 = 2048;
            *v199 = v136;
            _os_log_impl(&dword_18F5DF000, v135, OS_LOG_TYPE_DEBUG, "%25s:%-5d    srate %g", buf, 0x1Cu);
            v133 = kASSubSytemEC3;
          }

          if (v133)
          {
            v137 = *v133;
            if (!*v133)
            {
              goto LABEL_280;
            }
          }

          else
          {
            v137 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
          {
            v138 = *(this + 11);
            *buf = 136315650;
            v195 = "EC3AudioStream.cpp";
            v196 = 1024;
            v197 = 962;
            v198 = 1024;
            *v199 = v138;
            _os_log_impl(&dword_18F5DF000, v137, OS_LOG_TYPE_DEBUG, "%25s:%-5d    framesPerPacket %d", buf, 0x18u);
            v133 = kASSubSytemEC3;
          }

          if (!v133)
          {
            v139 = MEMORY[0x1E69E9C10];
LABEL_278:
            if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v195 = "EC3AudioStream.cpp";
              v196 = 1024;
              v197 = 963;
              v198 = 1024;
              *v199 = v93;
              _os_log_impl(&dword_18F5DF000, v139, OS_LOG_TYPE_DEBUG, "%25s:%-5d    numberOfBytes    %d", buf, 0x18u);
            }

            goto LABEL_280;
          }

          v139 = *v133;
          if (*v133)
          {
            goto LABEL_278;
          }

LABEL_280:
          if ((v92 - v193[1]) < v190)
          {
            if (v94)
            {
              AudioFileStreamWrapper::CallPacketsProc(*(this + 1), v93, v94, v85, *(this + 24), 1);
              *(*(this + 1) + 96) += v93;
              *(this + 23) += v94;
            }

            goto LABEL_292;
          }
        }

        if (*(this + 438) == 1)
        {
          if (kASSubSytemEC3)
          {
            v103 = *kASSubSytemEC3;
            if (!*kASSubSytemEC3)
            {
              goto LABEL_216;
            }
          }

          else
          {
            v103 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v195 = "EC3AudioStream.cpp";
            v196 = 1024;
            v197 = 882;
            v198 = 1024;
            *v199 = v94;
            _os_log_impl(&dword_18F5DF000, v103, OS_LOG_TYPE_DEBUG, "%25s:%-5d FORMAT CHANGED  np %d", buf, 0x18u);
          }

LABEL_216:
          if (v94)
          {
            AudioFileStreamWrapper::CallPacketsProc(*(this + 1), v93, v94, v85, *(this + 24), 1);
            v85 = 0;
            v117 = *(this + 1);
            v118 = *(v117 + 96) + v93;
            *(v117 + 96) = v118;
            v193[1] -= v93;
            *(this + 23) += v94;
            v119 = *(v117 + 88);
            v120 = v119 + *(v117 + 80);
            v121 = v118 < v119 || v120 <= v118;
            v122 = v121;
            v123 = v120 - v118;
            if (!v121 && v123)
            {
              v85 = (*(v117 + 72) + (v118 - v119));
            }

            if (v122)
            {
              v92 = 0;
            }

            else
            {
              v92 = v123;
            }
          }

          EC3AudioStream::NotifyFormatChange(this, this + 11);
          v94 = 0;
          if (*(this + 438))
          {
            goto LABEL_410;
          }
        }

        if (!*(this + 15) || !*(this + 32))
        {
LABEL_410:
          if (!EC3AudioStream::ConstructMagicCookie(this, v191, v192))
          {
            v124 = *(this + 1);
            *buf = 1;
            *(v124 + 108) = 1;
            v125 = *(v124 + 24);
            if (v125)
            {
              v125(*(v124 + 40), *(v124 + 8), 1835493731, buf);
            }
          }
        }

        if (v96)
        {
          if (!*(this + 50))
          {
            *(this + 50) = 1;
            CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems(this + 24, 1);
          }

          v126 = v191;
          v127 = *(this + 24);
          v127->mStartOffset = 0;
          v127->mVariableFramesInPacket = 0;
          v127->mDataByteSize = v126;
          if (kASSubSytemEC3)
          {
            v128 = *kASSubSytemEC3;
            if (!*kASSubSytemEC3)
            {
              goto LABEL_250;
            }
          }

          else
          {
            v128 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v195 = "EC3AudioStream.cpp";
            v196 = 1024;
            v197 = 915;
            v198 = 2048;
            *v199 = 0;
            *&v199[8] = 1024;
            *v200 = v126;
            _os_log_impl(&dword_18F5DF000, v128, OS_LOG_TYPE_DEBUG, "%25s:%-5d found packet: offset = %lld, size = %d", buf, 0x22u);
            v127 = *(this + 24);
          }

LABEL_250:
          AudioFileStreamWrapper::CallPacketsProc(*(this + 1), v126, 1u, v192, v127, 1);
          ++*(this + 23);
          LODWORD(v127) = v193[1];
LABEL_255:
          *(this + 438) = 0;
          *(this + 53) = 0;
          *(this + 108) = 0;
          *(this + 123) = 0;
          v93 = v193[0] + v127;
          v193[1] = v193[0] + v127;
          goto LABEL_256;
        }

        if (v192 != v97)
        {
          if (kASSubSytemEC3)
          {
            v175 = *kASSubSytemEC3;
            if (!*kASSubSytemEC3)
            {
              goto LABEL_393;
            }
          }

          else
          {
            v175 = MEMORY[0x1E69E9C10];
          }

          if (!os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_393;
          }

          *buf = 136315394;
          v195 = "EC3AudioStream.cpp";
          v196 = 1024;
          v197 = 923;
          v184 = "%25s:%-5d expected a full packet in the stream buffer";
          v185 = v175;
          v186 = 18;
LABEL_392:
          _os_log_impl(&dword_18F5DF000, v185, OS_LOG_TYPE_DEBUG, v184, buf, v186);
          goto LABEL_393;
        }

        if (*(this + 50) < v94 + 1)
        {
          v129 = (1 << -__clz(v94));
          *(this + 50) = v129;
          CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems(this + 24, v129);
        }

        v127 = v193[1];
        v130 = v191;
        v131 = *(this + 24) + 16 * v94;
        *v131 = v193[1];
        *(v131 + 8) = 0;
        *(v131 + 12) = v130;
        if (kASSubSytemEC3)
        {
          v132 = *kASSubSytemEC3;
          if (!*kASSubSytemEC3)
          {
LABEL_254:
            ++v94;
            goto LABEL_255;
          }
        }

        else
        {
          v132 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v195 = "EC3AudioStream.cpp";
          v196 = 1024;
          v197 = 931;
          v198 = 2048;
          *v199 = v127;
          *&v199[8] = 1024;
          *v200 = v130;
          _os_log_impl(&dword_18F5DF000, v132, OS_LOG_TYPE_DEBUG, "%25s:%-5d found packet: offset = %lld, size = %d", buf, 0x22u);
        }

        goto LABEL_254;
      }
    }

LABEL_292:
    if (*(this + 106))
    {
      v142 = *(this + 107);
      if (v142)
      {
        v143 = *(this + 123);
        v144 = v142 - v143;
        if (v142 > v143)
        {
          v145 = MEMORY[0x1E69E9C10];
          if ((!kASSubSytemEC3 || (v145 = *kASSubSytemEC3) != 0) && os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v195 = "EC3AudioStream.cpp";
            v196 = 1024;
            v197 = 981;
            v198 = 1024;
            *v199 = v144;
            *&v199[4] = 1024;
            *&v199[6] = v142;
            _os_log_impl(&dword_18F5DF000, v145, OS_LOG_TYPE_DEBUG, "%25s:%-5d reading %d bytes into partial packet data, total size = %d", buf, 0x1Eu);
            v142 = *(this + 107);
          }

          if (*(this + 122) < v142)
          {
            CADeprecated::CAAutoFree<unsigned char>::reallocBytes(this + 60, v142);
            *(this + 122) = v142;
            v142 = *(this + 107);
          }

          v146 = *(this + 123);
          v5 = v142 - v146;
          *(this + 64) = v142 - v146;
          v6 = (*(this + 60) + v146);
          *(this + 33) = v6;
          goto LABEL_302;
        }
      }
    }

    v151 = *(this + 1);
    v152 = *(v151 + 88);
    v153 = *(v151 + 96);
    v154 = v152 + *(v151 + 80);
    v156 = v153 < v152 || v154 <= v153;
    v157 = v154 - v153;
    if (v156)
    {
      v158 = 0;
    }

    else
    {
      v158 = v157;
    }

    if (v156 || !v157)
    {
      goto LABEL_377;
    }

    v159 = *(v151 + 72);
    if (!v158 || v159 == 0)
    {
      goto LABEL_377;
    }

    v161 = (v159 + (v153 - v152));
    v162 = *(this + 333);
    if ((v162 & 1) != 0 || v158 >= v190)
    {
LABEL_334:
      if (v162)
      {
        goto LABEL_377;
      }

      goto LABEL_345;
    }

    v163 = *v161;
    if (v158 == 1)
    {
      v162 = v163 == 119;
      if (v163 == 11)
      {
        v162 = 1;
      }

      *(this + 333) = v162;
      if (v163 != 119 && v163 != 11)
      {
        goto LABEL_334;
      }

      *(this + 84) = 1;
      *(this + 87) = 0;
      *(this + 340) = 0;
      *(this + 340) = *v161;
      *(this + 352) = 0;
      if (v163 == 11 || v163 == 119)
      {
        goto LABEL_377;
      }
    }

    else
    {
      if (v163 == 11)
      {
        if (v161[1] == 119)
        {
          goto LABEL_339;
        }
      }

      else if (v163 == 119 && v161[1] == 11)
      {
LABEL_339:
        *(this + 333) = 1;
        *(this + 84) = v158;
        *(this + 87) = 0;
        *(this + 340) = 0;
        memcpy(this + 340, v161, v158);
LABEL_352:
        *(this + 352) = 0;
        goto LABEL_377;
      }

      *(this + 333) = 0;
    }

LABEL_345:
    if ((*(this + 352) & 1) != 0 || v158 > 0xA)
    {
      goto LABEL_377;
    }

    if (v158 == 1)
    {
      v168 = *v161;
      v169 = v168 == 73;
      if (v168 == 84)
      {
        v169 = 1;
      }

      *(this + 352) = v169;
      if (v168 == 84 || v168 == 73)
      {
        goto LABEL_376;
      }
    }

    else
    {
      if (v158 != 2)
      {
        if (*v161 == 17481 && v161[2] == 51)
        {
          *(this + 352) = 1;
        }

        else
        {
          v171 = *v161 ^ 0x4154 | v161[2] ^ 0x47;
          *(this + 352) = v171 == 0;
          if (v171)
          {
            goto LABEL_377;
          }
        }

LABEL_376:
        *(this + 84) = v158;
        *(this + 174) = 0;
        *(this + 340) = 0;
        memcpy(this + 340, v161, v158);
        goto LABEL_377;
      }

      v166 = *v161;
      if (v166 == 73)
      {
        v167 = v161[1] == 68;
      }

      else
      {
        if (v166 != 84)
        {
          goto LABEL_352;
        }

        v167 = v161[1] == 65;
      }

      v176 = v167;
      *(this + 352) = v176;
      if (v167)
      {
        goto LABEL_376;
      }
    }

LABEL_377:
    v177 = MEMORY[0x1E69E9C10];
    if ((!kASSubSytemEC3 || (v177 = *kASSubSytemEC3) != 0) && os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
    {
      v178 = *(this + 84);
      v179 = "";
      v180 = *(this + 333);
      v181 = "Warning: discarding few bytes:";
      v182 = *(this + 352);
      if (v158 <= v178)
      {
        v181 = "";
      }

      if (v158)
      {
        v179 = v181;
      }

      *buf = 136316674;
      v195 = "EC3AudioStream.cpp";
      v196 = 1024;
      v197 = 1027;
      v198 = 2080;
      *v199 = v179;
      *&v199[8] = 1024;
      *v200 = v158;
      *&v200[4] = 1024;
      v201 = v178;
      v202 = 1024;
      v203 = v180;
      v204 = 1024;
      v205 = v182;
      _os_log_impl(&dword_18F5DF000, v177, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s bytes remaining in buffer %d, mPossiblePartialSyncWordBytes %d, mHasPossiblePartialSyncWord %d, mHasPossiblePartialID3Tag %d", buf, 0x34u);
      v151 = *(this + 1);
    }

    v183 = *(v151 + 88) + *(v151 + 80);
    if (*(v151 + 96) < v183)
    {
      *(v151 + 96) = v183;
    }
  }

  result = 0;
  v165 = 669;
LABEL_395:
  *(this + 59) = v165;
  return result;
}

uint64_t EC3AudioStream::NotifyFormatChange(EC3AudioStream *this, const AudioStreamBasicDescription *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (kASSubSytemEC3)
  {
    v4 = *kASSubSytemEC3;
    if (!*kASSubSytemEC3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(this + 40);
    v16[0] = *(this + 24);
    v16[1] = v5;
    v17 = *(this + 7);
    v6 = v18;
    CA::StreamDescription::AsString(v18, v16, *v16, *&v5);
    if (v19 < 0)
    {
      v6 = v18[0];
    }

    v7 = *&a2->mBytesPerPacket;
    v12[0] = *&a2->mSampleRate;
    v12[1] = v7;
    v13 = *&a2->mBitsPerChannel;
    CA::StreamDescription::AsString(__p, v12, *v12, *&v7);
    if (v15 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136315906;
    v21 = "EC3AudioStream.cpp";
    v22 = 1024;
    v23 = 399;
    v24 = 2080;
    v25 = v6;
    v26 = 2080;
    v27 = v8;
    _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d FORMAT CHANGED:\n %s ->\n %s", buf, 0x26u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

LABEL_15:
  result = (*(*this + 56))(this, a2);
  v10 = *(this + 1);
  LODWORD(v16[0]) = 1;
  if ((*(v10 + 105) & 1) == 0)
  {
    *(v10 + 105) = 1;
    v11 = *(v10 + 24);
    if (v11)
    {
      return v11(*(v10 + 40), *(v10 + 8), 1684434292, v16);
    }
  }

  return result;
}

uint64_t EC3AudioStream::ParseHeader(EC3AudioStream *this, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (kASSubSytemEC3)
  {
    v4 = *kASSubSytemEC3;
    if (!*kASSubSytemEC3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v25 = 136315650;
    v26 = "EC3AudioStream.cpp";
    v27 = 1024;
    v28 = 336;
    v29 = 2048;
    v30 = this;
    _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d EC3AudioStream(%p):ParseHeader", &v25, 0x1Cu);
  }

LABEL_7:
  v5 = *(this + 59);
  if (v5 != -1)
  {
    if (v5 == 347)
    {
      goto LABEL_15;
    }

    if (v5)
    {
      v6 = -1;
LABEL_38:
      *(this + 59) = v6;
    }

    else
    {
      do
      {
        v7 = MEMORY[0x1E69E9C10];
        if ((!kASSubSytemEC3 || (v7 = *kASSubSytemEC3) != 0) && os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v25 = 136315394;
          v26 = "EC3AudioStream.cpp";
          v27 = 1024;
          v28 = 344;
          _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d >>STREAM_WAIT_FOR_DATA  A", &v25, 0x12u);
        }

LABEL_15:
        v8 = *(this + 1);
        v9 = *(v8 + 80);
        v11 = *(v8 + 88);
        v10 = *(v8 + 96);
        v12 = v11 + v9;
        if (*(this + 332))
        {
          v13 = 10;
        }

        else
        {
          v13 = 12;
        }

        v14 = v10 < v11 || v12 <= v10;
        if (v14 || v13 > v12 - v10)
        {
          v6 = 347;
          goto LABEL_38;
        }
      }

      while (!EC3AudioStream::Resync(this));
      v15 = 0;
      *a2 = this;
      *(a2 + 8) = AudioFileStreamObject::GeneratePackets;
      *(a2 + 16) = 0;
      v16 = *(this + 1);
      v17 = *(v16 + 88);
      v18 = *(v16 + 96);
      v19 = v17 + *(v16 + 80);
      v20 = v18 < v17 || v19 <= v18;
      v21 = v20;
      v22 = v19 - v18;
      if (!v20 && v22)
      {
        v15 = *(v16 + 72) + (v18 - v17);
      }

      *(a2 + 32) = v15;
      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v22;
      }

      *(a2 + 24) = v23;
    }
  }

  return 0;
}

uint64_t EC3AudioStream::GetBitRate(EC3AudioStream *this, unsigned int *a2)
{
  LODWORD(v2) = *(this + 99);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = *(this + 40);
  if (v3)
  {
    v2 = v3 / *(this + 26);
LABEL_4:
    result = 0;
    *a2 = v2;
    return result;
  }

  return 1836020325;
}

uint64_t EC3AudioStream::SetProperty(EC3AudioStream *this, int a2, unsigned int a3, _DWORD *a4)
{
  if (a2 != 1634494051)
  {
    return 1886681407;
  }

  result = 0;
  *(this + 437) = *a4 != 0;
  return result;
}

uint64_t EC3AudioStream::GetProperty(EC3AudioStream *this, signed int a2, unsigned int *a3, char *__dst)
{
  if (a2 > 1718383475)
  {
    if (a2 == 1718383476)
    {
      result = AudioFileStreamObject::GetProperty(this, 1718383476, a3, __dst);
      if (!result)
      {
        if (*a3 >= 0x30)
        {
          v12 = *(this + 11);
          v13 = *a3 / 0x30uLL;
          v14 = (v13 + 3) & 0xFFFFFFC;
          v15 = vdupq_n_s64(v13 - 1);
          v16 = xmmword_18F9016B0;
          v17 = xmmword_18F9016C0;
          v18 = __dst + 116;
          v19 = vdupq_n_s64(4uLL);
          do
          {
            v20 = vmovn_s64(vcgeq_u64(v15, v17));
            if (vuzp1_s16(v20, *v15.i8).u8[0])
            {
              *(v18 - 24) = v12;
            }

            if (vuzp1_s16(v20, *&v15).i8[2])
            {
              *(v18 - 12) = v12;
            }

            if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, *&v16))).i32[1])
            {
              *v18 = v12;
              *(v18 + 12) = v12;
            }

            v16 = vaddq_s64(v16, v19);
            v17 = vaddq_s64(v17, v19);
            v18 += 192;
            v14 -= 4;
          }

          while (v14);
        }

        return 0;
      }

      return result;
    }

    if (a2 == 1768174433)
    {
      result = 561211770;
      if (a3 && *a3 == 8)
      {
        result = 0;
        *__dst = *(this + 46);
      }

      return result;
    }

    if (a2 != 1768174437)
    {
LABEL_30:

      return AudioFileStreamObject::GetProperty(this, a2, a3, __dst);
    }

    result = 561211770;
    if (!a3 || *a3 != 4)
    {
      return result;
    }

    result = 0;
    v11 = *(this + 91);
LABEL_18:
    *__dst = v11;
    return result;
  }

  if (a2 == 1634494051)
  {
    result = 561211770;
    if (!a3 || *a3 != 4)
    {
      return result;
    }

    result = 0;
    v11 = *(this + 437);
    goto LABEL_18;
  }

  if (a2 == 1668112752)
  {
    result = 561211770;
    if (a3 && *a3 >= 0x20)
    {
      result = 0;
      *__dst = 0u;
      *(__dst + 1) = 0u;
      *__dst = *(this + 100);
      *a3 = 32;
    }

    return result;
  }

  if (a2 != 1684434292)
  {
    goto LABEL_30;
  }

  v7 = *(this + 1);
  v8 = *(v7 + 136);
  if (v8)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    result = AudioFormatGetProperty(0x78686173u, 0xCu, v8, a3, &v23);
    if (*a3 == 40)
    {
      if (!result)
      {
        v10 = v24;
        *__dst = v23;
        *(__dst + 1) = v10;
        *(__dst + 4) = v25;
      }

      return result;
    }

    return 561211770;
  }

  if (*(this + 177))
  {
    return 1685348671;
  }

  if (*(v7 + 112))
  {
    result = 1970170687;
  }

  else
  {
    result = 1836020325;
  }

  if (*(v7 + 105) == 1)
  {
    if (*a3 == 40)
    {
      result = 0;
      v21 = *(this + 24);
      v22 = *(this + 40);
      *(__dst + 4) = *(this + 7);
      *__dst = v21;
      *(__dst + 1) = v22;
      return result;
    }

    return 561211770;
  }

  return result;
}

uint64_t EC3AudioStream::GetPropertyInfo(EC3AudioStream *this, signed int a2, unsigned int *a3, unsigned __int8 *a4)
{
  if (a2 <= 1768174432)
  {
    if (a2 == 1634494051)
    {
      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        *a4 = 1;
      }

      return 0;
    }

    if (a2 == 1668112752)
    {
      if (!a3)
      {
        goto LABEL_18;
      }

      v4 = 32;
      goto LABEL_17;
    }

    return AudioFileStreamObject::GetPropertyInfo(this, a2, a3, a4);
  }

  if (a2 != 1768174433)
  {
    if (a2 == 1768174437)
    {
      if (!a3)
      {
        goto LABEL_18;
      }

      v4 = 4;
      goto LABEL_17;
    }

    return AudioFileStreamObject::GetPropertyInfo(this, a2, a3, a4);
  }

  if (!a3)
  {
    goto LABEL_18;
  }

  v4 = 8;
LABEL_17:
  *a3 = v4;
LABEL_18:
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

uint64_t EC3AudioStream::Flush(EC3AudioStream *this)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(this + 106) && *(this + 107) && *(this + 123))
  {
    if (*(this + 438) == 1)
    {
      EC3AudioStream::NotifyFormatChange(this, this + 11);
    }

    if (!*(this + 50))
    {
      *(this + 50) = 1;
      CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems(this + 24, 1);
    }

    v2 = *(this + 123);
    v3 = *(this + 24);
    v3->mStartOffset = 0;
    v3->mVariableFramesInPacket = 0;
    v3->mDataByteSize = v2;
    if (kASSubSytemEC3)
    {
      v4 = *kASSubSytemEC3;
      if (!*kASSubSytemEC3)
      {
LABEL_14:
        AudioFileStreamWrapper::CallPacketsProc(*(this + 1), v2, 1u, *(this + 60), v3, 0);
        ++*(this + 23);
        *(this + 438) = 0;
        *(this + 53) = 0;
        *(this + 108) = 0;
        *(this + 123) = 0;
        return 0;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315906;
      v7 = "EC3AudioStream.cpp";
      v8 = 1024;
      v9 = 382;
      v10 = 2048;
      v11 = 0;
      v12 = 1024;
      v13 = v2;
      _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d found packet: offset = %lld, size = %d", &v6, 0x22u);
      v2 = *(this + 123);
      v3 = *(this + 24);
    }

    goto LABEL_14;
  }

  return 0;
}

void EC3AudioStream::~EC3AudioStream(EC3AudioStream *this)
{
  EC3AudioStream::~EC3AudioStream(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032D570;
  v2 = *(this + 51);
  if (v2)
  {
    EC3StreamParser::~EC3StreamParser(v2);
    MEMORY[0x193ADF220]();
  }

  *(this + 438) = 0;
  *(this + 53) = 0;
  *(this + 108) = 0;
  *(this + 123) = 0;
  v3 = *(this + 60);
  if (v3)
  {
    free(v3);
    *(this + 60) = 0;
  }

  AudioFileStreamObject::~AudioFileStreamObject(this);
}

void EC3AudioStream::EC3AudioStream(EC3AudioStream *this)
{
  v10 = *MEMORY[0x1E69E9840];
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = -1;
  *(this + 12) = -1;
  *(this + 13) = -1;
  *(this + 17) = 0;
  *(this + 36) = 0;
  *(this + 19) = 0;
  *(this + 88) = 0;
  *(this + 59) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 232) = 0;
  *(this + 28) = 0;
  *(this + 30) = AudioFileStreamObject::ParseHeader;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 33) = 0;
  *(this + 300) = 0;
  *(this + 284) = 0;
  *(this + 292) = 0;
  *(this + 82) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *this = &unk_1F032D570;
  *(this + 166) = 0;
  *(this + 84) = 0;
  *(this + 352) = 0;
  *(this + 376) = -1;
  *(this + 429) = 0;
  *(this + 53) = 0;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 104) = 0;
  *(this + 437) = 1;
  *(this + 61) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 440) = 0u;
  if (atomic_load_explicit(&EC3AudioStream::EC3AudioStream(void)::onceflag, memory_order_acquire) != -1)
  {
    *buf = &v3;
    v4 = buf;
    std::__call_once(&EC3AudioStream::EC3AudioStream(void)::onceflag, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<EC3AudioStream::EC3AudioStream(void)::$_0 &&>>);
  }

  if (kASSubSytemEC3)
  {
    v2 = *kASSubSytemEC3;
    if (!*kASSubSytemEC3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "EC3AudioStream.cpp";
    v6 = 1024;
    v7 = 138;
    v8 = 2048;
    v9 = this;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d EC3AudioStream(%p): -> constructed", buf, 0x1Cu);
  }

LABEL_9:
  *(this + 48) = 0;
  *(this + 49) = 0;
  operator new();
}

void sub_18F79DC88(_Unwind_Exception *a1)
{
  *(v1 + 438) = 0;
  *(v1 + 424) = 0;
  *(v1 + 432) = 0;
  *(v1 + 492) = 0;
  v3 = *(v1 + 480);
  if (v3)
  {
    free(v3);
    *(v1 + 480) = 0;
  }

  AudioFileStreamObject::~AudioFileStreamObject(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<ACRendererSharedMemory::Element>::__construct_one_at_end[abi:ne200100]<CA::StreamDescription *,unsigned int,unsigned int &,unsigned char *&,unsigned char *&>(uint64_t a1, __int128 *a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 8);
  v10 = *a2;
  v11 = a2[1];
  *(v9 + 32) = *(a2 + 4);
  *v9 = v10;
  *(v9 + 16) = v11;
  *(v9 + 40) = 0;
  *(v9 + 44) = a3;
  *(v9 + 48) = a4;
  result = CA::AudioBuffersBase::AudioBuffersBase((v9 + 56), v9, 0);
  *(v9 + 64) = a5;
  *(v9 + 72) = a6;
  *(v9 + 80) = -1;
  *(a1 + 8) = v9 + 88;
  return result;
}

void acv2::ChannelMixerConverter::ConvertBufferList(uint64_t a1, vDSP_Length __N, uint64_t *a3, uint64_t *a4)
{
  v5 = __N;
  v7 = *(a1 + 68);
  v57 = *(a1 + 28);
  if ((v57 & 0x20) != 0)
  {
    v8 = 1;
    if ((v7 & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *(a1 + 44);
    if ((v7 & 0x20) != 0)
    {
LABEL_3:
      v9 = 1;
      goto LABEL_6;
    }
  }

  v9 = *(a1 + 84);
LABEL_6:
  v10 = *(a1 + 168);
  v62 = v9;
  if (v10 != 1)
  {
    if (v10 == 2 && *(a1 + 172) == 1)
    {
      v11 = *(a1 + 176);
      v12 = *v11;
      if (*v11 == v11[1])
      {
        v13 = *(*a3 + 16);
        if ((v57 & 0x20) != 0)
        {
          v14 = *(*a3 + 32);
        }

        else
        {
          v14 = v13 + 1;
        }

        v43 = *(*a4 + 16);
        *&__C = *v11;
        if (v12 == 0.0)
        {
          if (v9 == 1)
          {
            v44 = 4 * __N;
            v45 = v43;
LABEL_75:
            bzero(v45, v44);
            return;
          }

          if (__N)
          {
            v47 = 0;
            do
            {
              v43[v47] = 0.0;
              v47 += v9;
              --v5;
            }

            while (v5);
          }
        }

        else if (v12 == 1.0)
        {
          MEMORY[0x193AE07B0](v13, v8, v14, v8, v43, v9, __N);
        }

        else
        {
          vDSP_vasm(v13, v8, v14, v8, &__C, v43, v9, __N);
        }

        return;
      }
    }

    goto LABEL_16;
  }

  if (*(a1 + 172) != 2 || (v15 = *(a1 + 176), v16 = *v15, *v15 != v15[1]))
  {
LABEL_16:
    v19 = *(a1 + 208);
    if (v19 >= 1)
    {
      __C = *(a1 + 200);
      v64 = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&__C, v19);
      v10 = *(a1 + 168);
    }

    v60 = v5;
    if (!v10)
    {
      v37 = *(a1 + 172);
LABEL_54:
      if (v37)
      {
        for (i = 0; i < v37; ++i)
        {
          if (((*(*(a1 + 200) + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1) == 0)
          {
            v39 = *a4;
            if ((v7 & 0x20) != 0)
            {
              v40 = *(v39 + 16 * i + 16);
            }

            else
            {
              v40 = (*(v39 + 16) + 4 * i);
            }

            if (v62 == 1)
            {
              bzero(v40, 4 * v60);
              v37 = *(a1 + 172);
            }

            else if (v60)
            {
              v41 = 0;
              v42 = v60;
              do
              {
                *(v40 + v41) = 0;
                v41 += v62;
                --v42;
              }

              while (v42);
            }
          }
        }
      }

      return;
    }

    v20 = 0;
    v21 = 0;
    v22 = v62;
    v24 = v8 == 1 && v62 == 1;
    v61 = v24;
    while (1)
    {
      v25 = *a3;
      v26 = (v57 & 0x20) != 0 ? *(v25 + 16 * v20 + 16) : (*(v25 + 16) + 4 * v20);
      if (*(a1 + 172))
      {
        break;
      }

      v37 = 0;
LABEL_51:
      if (++v20 >= v10)
      {
        goto LABEL_54;
      }
    }

    v59 = v20;
    v27 = 0;
    while (1)
    {
      v28 = *a4;
      if ((v7 & 0x20) != 0)
      {
        v29 = *(v28 + 16 * v27 + 16);
      }

      else
      {
        v29 = (*(v28 + 16) + 4 * v27);
      }

      v30 = *(*(a1 + 176) + 4 * v21);
      *&__C = v30;
      if (v30 != 0.0)
      {
        v31 = v27 >> 6;
        v32 = 1 << v27;
        v33 = *(*(a1 + 200) + 8 * (v27 >> 6)) & (1 << v27);
        if (v30 == 1.0)
        {
          if (!v33)
          {
            if (v61)
            {
              memcpy(v29, v26, 4 * v60);
              v22 = v62;
            }

            else if (v60)
            {
              v34 = 0;
              v35 = 0;
              v36 = v60;
              do
              {
                *(v29 + v34) = *(v26 + v35);
                v35 += v8;
                v34 += v22;
                --v36;
              }

              while (v36);
            }

            *(*(a1 + 200) + 8 * v31) |= v32;
            goto LABEL_48;
          }

          MEMORY[0x193AE07B0](v26, v8, v29, v62, v29, v62, v60);
        }

        else if (v33)
        {
          MEMORY[0x193AE0890](v26, v8, &__C, v29, v62, v29, v62, v60);
        }

        else
        {
          MEMORY[0x193AE08B0](v26, v8, &__C, v29, v62, v60);
          *(*(a1 + 200) + 8 * v31) |= v32;
        }

        v22 = v62;
      }

LABEL_48:
      ++v27;
      ++v21;
      v37 = *(a1 + 172);
      if (v27 >= v37)
      {
        v10 = *(a1 + 168);
        v20 = v59;
        goto LABEL_51;
      }
    }
  }

  v17 = *(*a4 + 16);
  if ((v7 & 0x20) != 0)
  {
    v18 = *(*a4 + 32);
  }

  else
  {
    v18 = v17 + 4;
  }

  v46 = *(*a3 + 16);
  *&__C = *v15;
  if (v16 != 0.0)
  {
    if (v16 == 1.0)
    {
      if (v8 == 1 && v9 == 1)
      {
        memcpy(v17, v46, 4 * __N);
      }

      else if (__N)
      {
        v52 = 0;
        v53 = 0;
        v54 = __N;
        do
        {
          *&v17[4 * v52] = *(v46 + v53);
          v53 += v8;
          v52 += v9;
          --v54;
        }

        while (v54);
        if (v9 != 1)
        {
          v55 = 0;
          do
          {
            v18[v55] = *&v17[4 * v55];
            v55 += v9;
            --v5;
          }

          while (v5);
          return;
        }
      }

      else if (v9 != 1)
      {
        return;
      }

      v51 = 4 * v5;
    }

    else
    {
      MEMORY[0x193AE08B0](v46, v8, &__C, v17, v9, __N);
      if (v62 != 1)
      {
        if (v5)
        {
          v56 = 0;
          do
          {
            v18[v56] = *&v17[4 * v56];
            v56 += v62;
            --v5;
          }

          while (v5);
        }

        return;
      }

      v51 = 4 * v5;
    }

    memcpy(v18, v17, v51);
    return;
  }

  if (v9 == 1)
  {
    bzero(v17, 4 * __N);
    v45 = v18;
    v44 = 4 * v5;
    goto LABEL_75;
  }

  if (__N)
  {
    v48 = 0;
    v49 = __N;
    do
    {
      *&v17[4 * v48] = 0;
      v48 += v9;
      --v49;
    }

    while (v49);
    v50 = 0;
    do
    {
      v18[v50] = 0;
      v50 += v9;
      --v5;
    }

    while (v5);
  }
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void acv2::ChannelMixerConverter::~ChannelMixerConverter(acv2::ChannelMixerConverter *this)
{
  *this = &unk_1F0331248;
  v2 = *(this + 25);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    *(this + 23) = v3;
    operator delete(v3);
  }

  acv2::AudioConverterBase::~AudioConverterBase(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0331248;
  v2 = *(this + 25);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    *(this + 23) = v3;
    operator delete(v3);
  }

  acv2::AudioConverterBase::~AudioConverterBase(this);
}

uint64_t acv2::normalizeMixMap(uint64_t this, int a2, float *a3, float *a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = 0.0;
    do
    {
      v6 = 0.0;
      if (this)
      {
        v7 = v4;
        v8 = this;
        do
        {
          v6 = v6 + fabsf(a3[v7]);
          v7 += a2;
          --v8;
        }

        while (v8);
      }

      if (v6 > v5)
      {
        v5 = v6;
      }

      ++v4;
    }

    while (v4 != a2);
    v9 = (a2 * this);
    if (v5 != 0.0 && v9 != 0)
    {
      v11 = 1.0 / v5;
      do
      {
        *a3 = v11 * *a3;
        ++a3;
        --v9;
      }

      while (v9);
    }
  }

  return this;
}

uint64_t acv2::ChannelMixerConverter::SetMixMap(uint64_t a1, char **a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = (v4 - *a2) >> 2;
  result = *(a1 + 168);
  v8 = *(a1 + 172);
  if (v6 == v8 * result)
  {
    if ((a1 + 176) != a2)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 176), v5, v4, v6);
      result = *(a1 + 168);
      v8 = *(a1 + 172);
    }

    result = acv2::normalizeMixMap(result, v8, *(a1 + 176), v6);
    *(a1 + 224) = 1;
  }

  return result;
}

uint64_t ExtAudioFileWrapAudioFileIDWithPreferredFormatID(uint64_t a1, int a2, int a3, void *a4)
{
  v6 = *MEMORY[0x1E69E9840];
  result = 4294967246;
  if (a1)
  {
    if (a4)
    {
      *a4 = 0;
      operator new();
    }
  }

  return result;
}

void sub_18F79E754(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v3);
  if (a2 == 4)
  {
    v6 = *(__cxa_begin_catch(exception_object) + 2);
  }

  else if (a2 == 3)
  {
    v6 = *(__cxa_begin_catch(exception_object) + 66);
  }

  else
  {
    v7 = __cxa_begin_catch(exception_object);
    if (a2 != 2)
    {
      __cxa_end_catch();
      v6 = -1;
      if (!v2)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    v6 = *v7;
  }

  __cxa_end_catch();
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_9:
  if (v6)
  {
    (*(*v2 + 8))(v2);
  }

LABEL_15:
  JUMPOUT(0x18F79E648);
}

OSStatus ExtAudioFileCreateWithURL(CFURLRef inURL, AudioFileTypeID inFileType, const AudioStreamBasicDescription *inStreamDesc, const AudioChannelLayout *inChannelLayout, UInt32 inFlags, ExtAudioFileRef *outExtAudioFile)
{
  v8 = *MEMORY[0x1E69E9840];
  result = -50;
  if (inURL && inStreamDesc)
  {
    if (outExtAudioFile)
    {
      *outExtAudioFile = 0;
      operator new();
    }
  }

  return result;
}

void sub_18F79EA24(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v3);
  if (a2 == 4)
  {
    v6 = *(__cxa_begin_catch(exception_object) + 2);
  }

  else if (a2 == 3)
  {
    v6 = *(__cxa_begin_catch(exception_object) + 66);
  }

  else
  {
    v7 = __cxa_begin_catch(exception_object);
    if (a2 != 2)
    {
      __cxa_end_catch();
      v6 = -1;
      if (!v2)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    v6 = *v7;
  }

  __cxa_end_catch();
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_9:
  if (v6)
  {
    (*(*v2 + 8))(v2);
  }

LABEL_15:
  JUMPOUT(0x18F79E91CLL);
}

OSStatus ExtAudioFileWriteAsync(ExtAudioFileRef inExtAudioFile, UInt32 inNumberFrames, const AudioBufferList *ioData)
{
  v26 = *MEMORY[0x1E69E9840];
  if (inNumberFrames && !ioData)
  {
    return -50;
  }

  v5 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v5)
  {
    return -50;
  }

  v6 = v5;
  if (ioData)
  {
    CrashIfClientProvidedBogusAudioBufferList();
  }

  v7 = CADeprecated::TSingleton<ExtAudioFileAsyncWriteMgr>::instance();
  if (!*(v6 + 336))
  {
    v12 = 224;
    if (!*(v6 + 232))
    {
      v12 = 168;
    }

    *(v6 + 344) = *(v6 + 88) / *(v6 + v12 + 24);
    operator new();
  }

  if (!inNumberFrames)
  {
    return 0;
  }

  *&v27.__val_ = AT::RingBuffer::Store(*(v6 + 336), ioData, inNumberFrames, *(v6 + 376));
  CheckRingBufferResult(v27, -66569, "store ring buffer");
  *(v6 + 376) += inNumberFrames;
  v16 = 0;
  *&v28.__val_ = AT::RingBuffer::GetTimeBounds(*(*(v6 + 336) + 48), &v17, &v16);
  CheckRingBufferResult(v28, -66570, "get ring buffer time bounds on store");
  if (v16 - *(v6 + 384) >= *(v6 + 344))
  {
    std::condition_variable::notify_one((v7 + 64));
  }

  v8 = *(v6 + 368);
  *(v6 + 368) = 0;
  if (v8)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= *&ExtAudioFile::WriteFramesAsync(unsigned int,AudioBufferList const*)::lastLogTime + 1.0)
    {
      v13 = CADefaultLog();
      if (v13)
      {
        v14 = v13;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          buf = 136315906;
          buf_4 = "ExtAudioFile.cpp";
          v20 = 1024;
          v21 = 1496;
          v22 = 1024;
          v23 = v8;
          v24 = 1024;
          v25 = ExtAudioFile::WriteFramesAsync(unsigned int,AudioBufferList const*)::messagesThrottled;
          _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d ExtAudioFileWriteAsync error %d (%d prior errors not logged)", &buf, 0x1Eu);
        }
      }

      v10 = 0;
      ExtAudioFile::WriteFramesAsync(unsigned int,AudioBufferList const*)::lastLogTime = *&Current;
    }

    else
    {
      v10 = ExtAudioFile::WriteFramesAsync(unsigned int,AudioBufferList const*)::messagesThrottled + 1;
    }

    ExtAudioFile::WriteFramesAsync(unsigned int,AudioBufferList const*)::messagesThrottled = v10;
    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "", v8);
  }

  return v8;
}

void sub_18F79EFB0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    std::default_delete<std::tuple<caulk::thread::attributes,ExtAudioFileAsyncWriteMgr::AddClient(ExtAudioFile *)::{lambda(void)#1},std::tuple<>>>::operator()[abi:ne200100](v4);
    MEMORY[0x193ADF220](v3, 0x1020C405F07FB98);
    std::mutex::unlock(v2);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x18F79EC44);
  }

  _Unwind_Resume(exception_object);
}

OSStatus ExtAudioFileSeek(ExtAudioFileRef inExtAudioFile, SInt64 inFrameOffset)
{
  v3 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v3)
  {
    return -50;
  }

  ExtAudioFile::Seek(v3, inFrameOffset);
  return 0;
}

OSStatus ExtAudioFileTell(ExtAudioFileRef inExtAudioFile, SInt64 *outFrameOffset)
{
  if (!outFrameOffset)
  {
    return -50;
  }

  v3 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v3)
  {
    return -50;
  }

  v4 = v3;
  result = 0;
  *outFrameOffset = *(v4 + 56);
  return result;
}

uint64_t ExtAudioFileSetConverterProperty(unsigned int a1, int a2, int a3, void *a4)
{
  v7 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v7)
  {
    return 4294967246;
  }

  ExtAudioFile::SetConverterProperty(v7, a2, a3, a4, 0, v8);
  return 0;
}

uint64_t ParseADTSChannelConfig(CABitStreamReader *a1, _DWORD *a2, int *a3)
{
  result = CABitStreamReader::ReadBits(a1, 3u);
  if (result == 5)
  {
    CABitStreamReader::ReadBits(a1, 0xAu);
    Bits = CABitStreamReader::ReadBits(a1, 4u);
    v8 = CABitStreamReader::ReadBits(a1, 4u);
    v9 = CABitStreamReader::ReadBits(a1, 4u);
    v10 = CABitStreamReader::ReadBits(a1, 2u);
    result = CABitStreamReader::ReadBits(a1, 0xAu);
    if (Bits < 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      do
      {
        if (CABitStreamReader::ReadBits(a1, 1u))
        {
          v12 = 2;
        }

        else
        {
          v12 = 1;
        }

        v11 += v12;
        result = CABitStreamReader::ReadBits(a1, 4u);
        --Bits;
      }

      while (Bits);
    }

    if (v8 < 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = 0;
      do
      {
        if (CABitStreamReader::ReadBits(a1, 1u))
        {
          v16 = 2;
        }

        else
        {
          v16 = 1;
        }

        v15 += v16;
        result = CABitStreamReader::ReadBits(a1, 4u);
        --v8;
      }

      while (v8);
    }

    if (v9 < 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      do
      {
        if (CABitStreamReader::ReadBits(a1, 1u))
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        v17 += v18;
        result = CABitStreamReader::ReadBits(a1, 4u);
        --v9;
      }

      while (v9);
    }

    v14 = v11 + v10 + v15 + v17;
    v19 = (v11 << 24) | (v15 << 16) | (v17 << 8) | v10;
    if (v19 == 50331648)
    {
      v13 = 7471107;
    }

    else
    {
      v20 = &dword_18F916358;
      do
      {
        v13 = *v20;
        if (!*v20)
        {
          break;
        }

        v21 = *(v20 - 1);
        v20 += 2;
      }

      while (v21 != v19);
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  *a2 = v14;
  *a3 = v13;
  return result;
}

uint64_t MPEGAudioMaximumNumberOfDependentPackets(const AudioStreamBasicDescription *a1, unsigned int a2)
{
  mFormatID = a1->mFormatID;
  if (mFormatID - 778924081 < 2)
  {
    return 1;
  }

  if (mFormatID != 778924083)
  {
    return 0;
  }

  if (a2)
  {
    v4 = a2;
    mSampleRate = a1->mSampleRate;
  }

  else
  {
    mBytesPerPacket = a1->mBytesPerPacket;
    if (mBytesPerPacket && (mFramesPerPacket = a1->mFramesPerPacket) != 0)
    {
      mSampleRate = a1->mSampleRate;
      v4 = a1->mSampleRate / mFramesPerPacket * mBytesPerPacket * 8.0 / 1000.0;
    }

    else
    {
      mSampleRate = a1->mSampleRate;
      v4 = 32.0;
      if (a1->mSampleRate <= 24000.0)
      {
        v4 = 8.0;
      }
    }
  }

  mChannelsPerFrame = a1->mChannelsPerFrame;
  if (mChannelsPerFrame == 1)
  {
    v9 = -17;
  }

  else
  {
    v9 = -32;
  }

  if (mChannelsPerFrame == 1)
  {
    v10 = -9;
  }

  else
  {
    v10 = -17;
  }

  if (mSampleRate <= 24000.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = (v4 * (125 * a1->mFramesPerPacket) / mSampleRate) + v11 - 6;
  if (v12 < 1)
  {
    if (mChannelsPerFrame == 1)
    {
      return 18;
    }

    else
    {
      return 8;
    }
  }

  else
  {
    if (mSampleRate <= 24000.0)
    {
      v13 = 257;
    }

    else
    {
      v13 = 511;
    }

    return v13 / v12 + 2;
  }
}

uint64_t MP4BoxParser_iTunesMeaningDataItem::Init(MP4BoxParser_iTunesMeaningDataItem *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = MP4BoxParser::Initialize(this);
  if (!v2)
  {
    if (*(this + 5) == 757935405)
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = (*(*this + 24))(this);
      while (1)
      {
        v9 = *(this + 3);
        if (v9 <= (*(*this + 24))(this))
        {
          v10 = 0;
        }

        else
        {
          v10 = *(this + 3);
        }

        if (v10 < v3 + 8)
        {
          return v2;
        }

        DataSourceBytes = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v8, 8uLL, v25);
        if (DataSourceBytes)
        {
          break;
        }

        v13 = v25[0];
        v12 = v25[1];
        v14 = *(this + 3);
        if (v14 <= (*(*this + 24))(this))
        {
          v15 = 0;
        }

        else
        {
          v15 = *(this + 3);
        }

        v16 = bswap32(v13);
        v3 += v16;
        if (v15 < v3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v27 = "MP4_BoxParser_Meta.cpp";
            v28 = 1024;
            v29 = 521;
            v20 = MEMORY[0x1E69E9C10];
            v21 = "%25s:%-5d  '----' box is too small for the child box size";
            goto LABEL_46;
          }

          return 0xFFFFFFFFLL;
        }

        if (v16 <= 7)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            return 0xFFFFFFFFLL;
          }

          *buf = 136315394;
          v27 = "MP4_BoxParser_Meta.cpp";
          v28 = 1024;
          v29 = 522;
          v20 = MEMORY[0x1E69E9C10];
          v21 = "%25s:%-5d  child box size is too small for its box header";
LABEL_46:
          _os_log_impl(&dword_18F5DF000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x12u);
          return 0xFFFFFFFFLL;
        }

        v17 = bswap32(v12);
        switch(v17)
        {
          case 0x64617461u:
            if (v7)
            {
              v2 = 0;
            }

            else
            {
              if (v16 <= 0xF)
              {
                if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  return 0xFFFFFFFFLL;
                }

                *buf = 136315394;
                v27 = "MP4_BoxParser_Meta.cpp";
                v28 = 1024;
                v29 = 571;
                v20 = MEMORY[0x1E69E9C10];
                v21 = "%25s:%-5d  'data' box is too small to contain data";
                goto LABEL_46;
              }

              v2 = 0;
              *(this + 10) = v8 + 16;
              *(this + 18) = v16 - 16;
              ++v4;
            }

            v7 = 1;
            break;
          case 0x6E616D65u:
            if (v6)
            {
              v2 = 0;
            }

            else
            {
              if (v16 <= 0xB)
              {
                if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  return 0xFFFFFFFFLL;
                }

                *buf = 136315394;
                v27 = "MP4_BoxParser_Meta.cpp";
                v28 = 1024;
                v29 = 548;
                v20 = MEMORY[0x1E69E9C10];
                v21 = "%25s:%-5d  'name' box is too small to contain a name";
                goto LABEL_46;
              }

              *(this + 14) = v16 - 12;
              v18 = malloc_type_malloc((v16 - 12), 0xE4278B7DuLL);
              v19 = v18;
              if (v16 != 12 && !v18)
              {
                exception = __cxa_allocate_exception(8uLL);
                v24 = std::bad_alloc::bad_alloc(exception);
              }

              bzero(v18, (v16 - 12));
              *(this + 8) = v19;
              v2 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v8 + 12, *(this + 14), v19);
              if (v2)
              {
                free(*(this + 8));
                *(this + 8) = 0;
                *(this + 14) = 0;
              }

              ++v4;
            }

            v6 = 1;
            break;
          case 0x6D65616Eu:
            if (v5)
            {
              v2 = 0;
            }

            else
            {
              if (v16 <= 0xB)
              {
                if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  return 0xFFFFFFFFLL;
                }

                *buf = 136315394;
                v27 = "MP4_BoxParser_Meta.cpp";
                v28 = 1024;
                v29 = 530;
                v20 = MEMORY[0x1E69E9C10];
                v21 = "%25s:%-5d  'mean' box is too small to contain a meaning";
                goto LABEL_46;
              }

              v2 = 0;
              ++v4;
            }

            v5 = 1;
            break;
          default:
            v2 = 0;
            break;
        }

        v8 += v16;
        if (v4 >= 3)
        {
          return v2;
        }
      }

      v2 = DataSourceBytes;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "MP4_BoxParser_Meta.cpp";
        v28 = 1024;
        v29 = 516;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Failed to read child box header", buf, 0x12u);
      }
    }

    else
    {
      return 4294967294;
    }
  }

  return v2;
}

void MP4BoxParser_iTunesMeaningDataItem::~MP4BoxParser_iTunesMeaningDataItem(MP4BoxParser_iTunesMeaningDataItem *this)
{
  MP4BoxParser_iTunesMeaningDataItem::~MP4BoxParser_iTunesMeaningDataItem(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032D6B8;
  v2 = *(this + 8);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

uint64_t MP4BoxParser_iTunesDataItem::Init(MP4BoxParser **this)
{
  result = MP4BoxParser::Initialize(this);
  if (!result)
  {
    v3 = (*(*this + 3))(this);
    if (MP4BoxParser::ReadDataSourceBytes(this[1], v3, 0x10uLL, this + 7) || *(this + 15) != 1635017060)
    {
      bzero(this + 7, 0x10uLL);
      return 4294966295;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void MP4BoxParser_iTunesDataItem::~MP4BoxParser_iTunesDataItem(MP4BoxParser_iTunesDataItem *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t MP4BoxParser_Meta::Init(MP4BoxParser_Meta *this)
{
  v3 = *MEMORY[0x1E69E9840];
  result = MP4BoxParser_Full::Initialize(this);
  if (!result)
  {
    if (*(this + 5) == 1835365473)
    {
      operator new();
    }

    return 4294967294;
  }

  return result;
}

void sub_18F79FF10(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void MP4BoxParser_Meta::~MP4BoxParser_Meta(MP4BoxParser_Meta *this)
{
  MP4BoxParser_Meta::~MP4BoxParser_Meta(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032D718;
  v2 = *(this + 8);
  if (v2)
  {
    std::__list_imp<MP4BoxInfo>::clear(*(this + 8));
    MEMORY[0x193ADF220](v2, 0x1020C4062D53EE8);
  }

  v3 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

uint64_t MP4BoxParser_iTunesMeta::Init(MP4BoxParser_iTunesMeta *this)
{
  result = MP4BoxParser_Meta::Init(this);
  if (!result)
  {
    if (*(this + 18) != 1835297138)
    {
      return 4294966295;
    }

    v3 = *(this + 8);
    v4 = *(v3 + 8);
    if (v4 == v3)
    {
      return 4294966295;
    }

    else
    {
      while (*(v4 + 16) != 1768715124)
      {
        v4 = *(v4 + 8);
        if (v4 == v3)
        {
          return 4294966295;
        }
      }

      return 0;
    }
  }

  return result;
}

void MP4BoxParser_iTunesMeta::~MP4BoxParser_iTunesMeta(MP4BoxParser_iTunesMeta *this)
{
  MP4BoxParser_Meta::~MP4BoxParser_Meta(this);

  JUMPOUT(0x193ADF220);
}

uint64_t MP4BoxParser_iTunesSMPBMeta::Init(AudioFilePacketTableInfo *this)
{
  v2 = MP4BoxParser_iTunesMeta::Init(this);
  if (!v2)
  {
    DataSizeForMeaningName = MP4BoxParser_iTunesMeta::GetDataSizeForMeaningName(this, "iTunSMPB");
    this[4].mRemainderFrames = DataSizeForMeaningName;
    if (DataSizeForMeaningName)
    {
      v4 = DataSizeForMeaningName;
      v5 = malloc_type_malloc(DataSizeForMeaningName, 0xFDC78864uLL);
      if (!v5)
      {
        exception = __cxa_allocate_exception(8uLL);
        v10 = std::bad_alloc::bad_alloc(exception);
      }

      v6 = v5;
      bzero(v5, v4);
      mRemainderFrames = this[4].mRemainderFrames;
      if (MP4BoxParser_iTunesMeta::GetDataForMeaningName(this, "iTunSMPB", v6, &mRemainderFrames, v7))
      {
        v2 = 0;
      }

      else
      {
        v2 = ParseiTunesSMPBData(v6 + 9, mRemainderFrames - 9, this + 5);
      }

      free(v6);
    }

    else
    {
      return 4294966295;
    }
  }

  return v2;
}

const char *MP4BoxParser_iTunesMeta::GetDataSizeForMeaningName(MP4BoxParser_iTunesMeta *this, const char *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 8);
  v3 = *(v2 + 8);
  if (v3 == v2)
  {
    return 0;
  }

  v5 = *(v2 + 8);
  while (*(v5 + 16) != 1768715124)
  {
    v5 = *(v5 + 8);
    if (v5 == v2)
    {
      return 0;
    }
  }

  while (*(v3 + 16) != 1768715124)
  {
    v3 = *(v3 + 8);
    if (v3 == v2)
    {
      return 0;
    }
  }

  v7 = *(v3 + 40);
  if (!v7)
  {
    return 0;
  }

  (*(**(this + 1) + 88))(&v16);
  (*(*v16 + 32))(v16, *(v5 + 24));
  v8 = *(v7 + 8);
  if (v8 == v7)
  {
    goto LABEL_29;
  }

  v9 = 0;
  while (2)
  {
    v10 = 0;
    v11 = v8;
    do
    {
      if (*(v11 + 16) == 757935405)
      {
        ++v10;
      }

      v11 = *(v11 + 8);
    }

    while (v11 != v7);
    if (v9 >= v10)
    {
      break;
    }

    v12 = 0;
    v13 = v8;
    while (*(v13 + 16) != 757935405)
    {
LABEL_21:
      v13 = *(v13 + 8);
      if (v13 == v7)
      {
        goto LABEL_28;
      }
    }

    if (v12 != v9)
    {
      ++v12;
      goto LABEL_21;
    }

    v17 = &unk_1F0330650;
    (*(*v16 + 88))(&v18);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 8;
    v17 = &unk_1F032D6B8;
    v24 = 0;
    __s1 = 0;
    v26 = 0;
    v27 = 0;
    if (!MP4BoxParser_iTunesMeaningDataItem::Init(&v17) && __s1 && v24 == 8 && !strncmp(__s1, a2, 8uLL))
    {
      a2 = v26;
      MP4BoxParser_iTunesMeaningDataItem::~MP4BoxParser_iTunesMeaningDataItem(&v17);
      v14 = 0;
      goto LABEL_30;
    }

    MP4BoxParser_iTunesMeaningDataItem::~MP4BoxParser_iTunesMeaningDataItem(&v17);
    v8 = *(v7 + 8);
LABEL_28:
    ++v9;
    if (v8 != v7)
    {
      continue;
    }

    break;
  }

LABEL_29:
  v14 = 1;
LABEL_30:
  v15 = v16;
  v16 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  if (v14)
  {
    return 0;
  }

  return a2;
}

void sub_18F7A04A4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4BoxParser_iTunesMeta::GetDataForMeaningName(MP4BoxParser_iTunesMeta *this, const char *a2, void *a3, unsigned int *a4, unsigned int *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = *(this + 8);
  v6 = *(v5 + 8);
  if (v6 == v5)
  {
    return 4294966295;
  }

  v10 = *(v5 + 8);
  while (*(v10 + 16) != 1768715124)
  {
    v10 = *(v10 + 8);
    if (v10 == v5)
    {
      return 4294966295;
    }
  }

  while (*(v6 + 16) != 1768715124)
  {
    v6 = *(v6 + 8);
    if (v6 == v5)
    {
      return 4294966295;
    }
  }

  v12 = *(v6 + 40);
  if (!v12)
  {
    return 4294966295;
  }

  (*(**(this + 1) + 88))(&v23);
  (*(*v23 + 32))(v23, *(v10 + 24));
  v13 = *(v12 + 8);
  if (v13 == v12)
  {
    goto LABEL_32;
  }

  v14 = 0;
  while (2)
  {
    v15 = 0;
    v16 = v13;
    do
    {
      if (*(v16 + 16) == 757935405)
      {
        ++v15;
      }

      v16 = *(v16 + 8);
    }

    while (v16 != v12);
    if (v14 >= v15)
    {
      break;
    }

    v17 = 0;
    v18 = v13;
    while (*(v18 + 16) != 757935405)
    {
LABEL_21:
      v18 = *(v18 + 8);
      if (v18 == v12)
      {
        goto LABEL_25;
      }
    }

    if (v17 != v14)
    {
      ++v17;
      goto LABEL_21;
    }

    v24 = &unk_1F0330650;
    (*(*v23 + 88))(&v25);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 8;
    v24 = &unk_1F032D6B8;
    v31 = 0;
    __s1 = 0;
    v33 = 0;
    v34 = 0;
    if (!MP4BoxParser_iTunesMeaningDataItem::Init(&v24))
    {
      if (__s1)
      {
        if (!strncmp(__s1, a2, 8uLL))
        {
          v19 = v33;
          v20 = *a4;
          if (v20 >= v33 && !MP4BoxParser::ReadDataSourceBytes(v25, v34, v20, a3))
          {
            *a4 = v19;
            MP4BoxParser_iTunesMeaningDataItem::~MP4BoxParser_iTunesMeaningDataItem(&v24);
            v21 = 0;
            goto LABEL_33;
          }
        }
      }
    }

    MP4BoxParser_iTunesMeaningDataItem::~MP4BoxParser_iTunesMeaningDataItem(&v24);
    v13 = *(v12 + 8);
LABEL_25:
    ++v14;
    if (v13 != v12)
    {
      continue;
    }

    break;
  }

LABEL_32:
  v21 = 1;
LABEL_33:
  v22 = v23;
  v23 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  if ((v21 & 1) == 0)
  {
    return 0;
  }

  return 4294966295;
}

void sub_18F7A07E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MP4BoxParser_iTunesMeaningDataItem::~MP4BoxParser_iTunesMeaningDataItem(va);
  if (a5)
  {
    (*(*a5 + 8))(a5);
  }

  _Unwind_Resume(a1);
}

void MP4BoxParser_iTunesSMPBMeta::~MP4BoxParser_iTunesSMPBMeta(MP4BoxParser_iTunesSMPBMeta *this)
{
  MP4BoxParser_Meta::~MP4BoxParser_Meta(this);

  JUMPOUT(0x193ADF220);
}

uint64_t MP4BoxParser_iTunesNORMMeta::Init(MP4BoxParser_iTunesNORMMeta *this)
{
  result = MP4BoxParser_Meta::Init(this);
  if (!result)
  {
    DataSizeForMeaningName = MP4BoxParser_iTunesMeta::GetDataSizeForMeaningName(this, "iTunNORM");
    *(this + 19) = DataSizeForMeaningName;
    if (DataSizeForMeaningName)
    {
      return 0;
    }

    else
    {
      return 4294966295;
    }
  }

  return result;
}

void MP4BoxParser_iTunesNORMMeta::~MP4BoxParser_iTunesNORMMeta(MP4BoxParser_iTunesNORMMeta *this)
{
  MP4BoxParser_Meta::~MP4BoxParser_Meta(this);

  JUMPOUT(0x193ADF220);
}

uint64_t InitiiTunesMetaItemFromInfoDictionary(unsigned __int8 *a1, unsigned int a2, const __CFDictionary *a3, signed int a4, int *a5)
{
  if (!a1 || a2 >= 0x10)
  {
    theString = 0;
    v33 = a3;
    v34 = 0;
    InfoDictionaryKeyForMetaItemKey = GetInfoDictionaryKeyForMetaItemKey(a4);
    String = CACFDictionary::GetString(&v33, InfoDictionaryKeyForMetaItemKey, &theString);
    v12 = theString;
    if (!theString)
    {
      String = 0;
    }

    if ((String & 1) == 0)
    {
      v9 = 4294966294;
      goto LABEL_84;
    }

    v13 = a2;
    *a5 = 0;
    v9 = 4294966295;
    if (a4 > -1452051406)
    {
      if (a4 <= 1668313715)
      {
        if (a4 != -1452051405 && a4 != -1451987089)
        {
          v14 = -1451789708;
          goto LABEL_25;
        }
      }

      else
      {
        if (a4 > 1953329262)
        {
          if (a4 != 1953655662)
          {
            if (a4 != 1953329263)
            {
              goto LABEL_84;
            }

            IntValue = CFStringGetIntValue(v12);
            if (!a1)
            {
              Length = 2;
              goto LABEL_83;
            }

            *(a1 + 12) = bswap32(IntValue) >> 16;
            *(a1 + 1) = 1869639028;
            Length = 2;
            goto LABEL_54;
          }

          LOWORD(usedBufLen) = 0;
          LOWORD(buffer) = 0;
          if (ParseTrackNumberString(v12, &usedBufLen, &buffer))
          {
            if (a1)
            {
              if (a2 < 0x20)
              {
                goto LABEL_84;
              }

              v26 = bswap32(usedBufLen) >> 16;
              v27 = bswap32(buffer) >> 16;
              *(a1 + 12) = 0;
              *(a1 + 13) = v26;
              *(a1 + 7) = v27;
            }

            Length = 8;
            goto LABEL_46;
          }

LABEL_45:
          Length = 0;
LABEL_46:
          v23 = 0;
          goto LABEL_47;
        }

        if (a4 != 1668313716)
        {
          v14 = 1769173603;
          goto LABEL_25;
        }
      }
    }

    else
    {
      if (a4 > -1453101709)
      {
        if (a4 > -1452841619)
        {
          if (a4 == -1452841618)
          {
            Length = CFStringGetLength(v12);
            v18 = Length + 1;
            CADeprecated::CAAutoFree<char>::CAAutoFree(&usedBufLen, v18);
            v19 = theString;
            v20 = usedBufLen;
            SystemEncoding = CFStringGetSystemEncoding();
            CFStringGetCString(v19, v20, v18, SystemEncoding);
            v22 = 0;
            v23 = 1;
            v24 = usedBufLen;
            while (strcmp(v24, kGenreTable[v22]))
            {
              v23 = v22++ < 0x93;
              if (v22 == 148)
              {
                v23 = 0;
                v25 = 1;
                goto LABEL_68;
              }
            }

            if (v23)
            {
              Length = 2;
            }

            v25 = v22 + 1;
LABEL_68:
            if (a1)
            {
              if (Length + 24 > v13)
              {
                if (v24)
                {
                  free(v24);
                }

                goto LABEL_29;
              }

              if (v23)
              {
                *(a1 + 6) = bswap32(v25) >> 16;
              }

              else
              {
                memcpy(a1 + 24, v24, Length);
                v23 = 0;
              }
            }

            if (v24)
            {
              free(v24);
            }

LABEL_47:
            if (!a1)
            {
LABEL_83:
              v9 = 0;
              *a5 = Length + 24;
              goto LABEL_84;
            }

            if (v23)
            {
              v28 = 0;
              *(a1 + 1) = 1701998183;
LABEL_82:
              a1[19] = v28;
              *a1 = bswap32(Length + 24);
              *(a1 + 2) = bswap32(Length + 16);
              *(a1 + 3) = 1635017060;
              *(a1 + 8) = 0;
              a1[18] = 0;
              *(a1 + 5) = 0;
              goto LABEL_83;
            }

            *(a1 + 1) = bswap32(a4);
            v28 = 1;
            if (a4 <= -1451987090)
            {
              if (a4 > -1453039240)
              {
                if (a4 > -1452383892)
                {
                  if (a4 == -1452383891)
                  {
                    goto LABEL_82;
                  }

                  v29 = -1452051405;
                }

                else
                {
                  if (a4 == -1453039239)
                  {
                    goto LABEL_82;
                  }

                  v29 = -1452841618;
                }
              }

              else if (a4 > -1453230733)
              {
                if (a4 == -1453230732)
                {
                  goto LABEL_82;
                }

                v29 = -1453101708;
              }

              else
              {
                if (a4 == -1455336876)
                {
                  goto LABEL_82;
                }

                v29 = -1453233054;
              }
            }

            else if (a4 <= 1769173602)
            {
              if (a4 > 1668313715)
              {
                if (a4 == 1668313716)
                {
                  goto LABEL_82;
                }

                goto LABEL_81;
              }

              if (a4 == -1451987089)
              {
                goto LABEL_82;
              }

              v29 = -1451789708;
            }

            else
            {
              if (a4 > 1937009002)
              {
                if (a4 == 1937009003)
                {
LABEL_54:
                  v28 = 21;
                  goto LABEL_82;
                }

LABEL_81:
                v28 = 0;
                goto LABEL_82;
              }

              if (a4 == 1769173603)
              {
                goto LABEL_82;
              }

              v29 = 1886745188;
            }

            if (a4 == v29)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          }

          v14 = -1452383891;
        }

        else
        {
          if (a4 == -1453101708)
          {
            goto LABEL_26;
          }

          v14 = -1453039239;
        }

LABEL_25:
        if (a4 == v14)
        {
          goto LABEL_26;
        }

LABEL_84:
        CACFDictionary::~CACFDictionary(&v33);
        return v9;
      }

      if (a4 != -1455336876 && a4 != -1453233054)
      {
        v14 = -1453230732;
        goto LABEL_25;
      }
    }

LABEL_26:
    v36.length = CFStringGetLength(v12);
    usedBufLen = 0;
    v36.location = 0;
    if (CFStringGetBytes(theString, v36, 0x8000100u, 0, 0, 0, 256, &usedBufLen))
    {
      Length = usedBufLen;
      if (a1)
      {
        if (usedBufLen + 24 > a2)
        {
LABEL_29:
          v9 = 4294966295;
          goto LABEL_84;
        }

        CADeprecated::CAAutoFree<char>::CAAutoFree(&buffer, (usedBufLen + 1));
        CFStringGetCString(theString, buffer, Length + 1, 0x8000100u);
        v16 = buffer;
        memcpy(a1 + 24, buffer, Length);
        if (v16)
        {
          free(v16);
        }
      }

      goto LABEL_46;
    }

    goto LABEL_45;
  }

  return 4294966295;
}

void sub_18F7A0EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, ...)
{
  va_start(va, a11);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

__CFString *GetInfoDictionaryKeyForMetaItemKey(int a1)
{
  if (a1 <= -1452051406)
  {
    if (a1 <= -1453101709)
    {
      v6 = -1455336876;
      v7 = @"artist";
      if (a1 == -1453230732)
      {
        v12 = @"lyricist";
      }

      else
      {
        v12 = 0;
      }

      if (a1 == -1453233054)
      {
        v9 = @"album";
      }

      else
      {
        v9 = v12;
      }

LABEL_35:
      if (a1 == v6)
      {
        return v7;
      }

      else
      {
        return v9;
      }
    }

    if (a1 > -1452841619)
    {
      if (a1 != -1452841618)
      {
        v10 = a1 == -1452383891;
        v11 = @"title";
LABEL_29:
        if (v10)
        {
          return v11;
        }

        else
        {
          return 0;
        }
      }

      return @"genre";
    }

    v6 = -1453101708;
    v7 = @"comments";
    v8 = a1 == -1453039239;
    v9 = @"year";
LABEL_33:
    if (!v8)
    {
      v9 = 0;
    }

    goto LABEL_35;
  }

  if (a1 > 1735291492)
  {
    if (a1 <= 1953329262)
    {
      if (a1 != 1735291493)
      {
        v10 = a1 == 1769173603;
        v11 = @"ISRC";
        goto LABEL_29;
      }

      return @"genre";
    }

    v6 = 1953329263;
    v7 = @"tempo";
    v8 = a1 == 1953655662;
    v9 = @"track number";
    goto LABEL_33;
  }

  v1 = @"copyright";
  if (a1 != 1668313716)
  {
    v1 = 0;
  }

  if (a1 == -1451789708)
  {
    v2 = @"composer";
  }

  else
  {
    v2 = v1;
  }

  v3 = @"subtitle";
  v4 = @"encoding application";
  if (a1 != -1451987089)
  {
    v4 = 0;
  }

  if (a1 != -1452051405)
  {
    v3 = v4;
  }

  if (a1 <= -1451789709)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

void *CADeprecated::CAAutoFree<char>::CAAutoFree(void *a1, size_t size)
{
  *a1 = 0;
  v4 = malloc_type_malloc(size, 0xD7524C8FuLL);
  v5 = v4;
  if (size && !v4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v4, size);
  *a1 = v5;
  return a1;
}

BOOL ParseTrackNumberString(const __CFString *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  Length = CFStringGetLength(a1);
  v7 = Length + 1;
  CADeprecated::CAAutoFree<char>::CAAutoFree(&v18, v7);
  v8 = v18;
  SystemEncoding = CFStringGetSystemEncoding();
  CFStringGetCString(a1, v8, v7, SystemEncoding);
  v17 = 0;
  v10 = v18;
  if (Length)
  {
    v11 = 0;
    v12 = Length;
    while (v18[v11] - 48 <= 9)
    {
      if (Length == ++v11)
      {
        goto LABEL_9;
      }
    }

    if (!v11)
    {
      v15 = 0;
      goto LABEL_20;
    }

    sscanf(v18, "%d", &v17);
    *a2 = v17;
    v12 = v11 + 1;
    v10 = v18;
  }

  else
  {
    v12 = 0;
  }

LABEL_9:
  if (v12 >= Length)
  {
LABEL_16:
    v15 = *a2 != 0;
    if (!v10)
    {
      return v15;
    }
  }

  else
  {
    v13 = 0;
    v14 = v12;
    while (v10[v14] - 48 <= 9)
    {
      ++v13;
      if (++v14 > Length)
      {
        goto LABEL_18;
      }
    }

    if (v13)
    {
      sscanf(&v10[v12], "%d", &v17);
      *a3 = v17;
      v10 = v18;
      goto LABEL_16;
    }

LABEL_18:
    v15 = *a2 != 0;
  }

LABEL_20:
  free(v10);
  return v15;
}

void sub_18F7A12F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void MP4BoxParser_iTunesMeta::MP4BoxParser_iTunesMeta(MP4BoxParser_iTunesMeta *this, DataSource *a2, uint64_t a3)
{
  *this = &unk_1F0330650;
  (*(*a2 + 88))(a2, a3);
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 9) = 8;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *this = &unk_1F032D748;
}

uint64_t MP4BoxParser_iTunesMeta::AddMetaItemDataToInfoDictionary(MP4BoxParser_iTunesMeta *this, int a2, CACFDictionary *a3)
{
  v5 = 4294966295;
  if (a2 <= -1452051406)
  {
    if (a2 <= -1453101709)
    {
      if (a2 == -1455336876 || a2 == -1453233054)
      {
        goto LABEL_21;
      }

      v6 = -1453230732;
    }

    else if (a2 > -1452841619)
    {
      if (a2 == -1452841618)
      {
        goto LABEL_21;
      }

      v6 = -1452383891;
    }

    else
    {
      if (a2 == -1453101708)
      {
        goto LABEL_21;
      }

      v6 = -1453039239;
    }

LABEL_20:
    if (a2 != v6)
    {
      return v5;
    }

    goto LABEL_21;
  }

  if (a2 > 1735291492)
  {
    if (a2 <= 1953329262)
    {
      if (a2 == 1735291493)
      {
        goto LABEL_21;
      }

      v6 = 1769173603;
      goto LABEL_20;
    }

    if (a2 == 1953329263)
    {
      theString = 0;
      v5 = MP4BoxParser_iTunesMeta::CopyMetaItemData(this, 1953329263, &theString);
      if (v5)
      {
        return v5;
      }

      v11 = theString;
      if (!theString)
      {
        return v5;
      }

      valuePtr = 0;
      v16 = CFGetTypeID(theString);
      if (v16 == CFNumberGetTypeID())
      {
        v5 = 0;
        if (!CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr) || valuePtr < 1)
        {
          goto LABEL_46;
        }

        System = CFLocaleGetSystem();
        v18 = *MEMORY[0x1E695E480];
        v19 = CFNumberFormatterCreate(*MEMORY[0x1E695E480], System, kCFNumberFormatterDecimalStyle);
        if (v19)
        {
          v20 = v19;
          StringWithNumber = CFNumberFormatterCreateStringWithNumber(v18, v19, v11);
          if (StringWithNumber)
          {
            v22 = StringWithNumber;
            if (CFStringGetLength(StringWithNumber))
            {
              CACFDictionary::AddString(a3, @"tempo", v22);
              v5 = 0;
            }

            else
            {
              v5 = 4294966295;
            }

            CFRelease(v22);
          }

          else
          {
            v5 = 0;
          }

          CFRelease(v20);
          goto LABEL_46;
        }
      }
    }

    else
    {
      if (a2 != 1953655662)
      {
        return v5;
      }

      theString = 0;
      v5 = MP4BoxParser_iTunesMeta::CopyMetaItemData(this, 1953655662, &theString);
      if (v5)
      {
        return v5;
      }

      v11 = theString;
      if (!theString)
      {
        return v5;
      }

      v12 = CFGetTypeID(theString);
      if (v12 == CFDataGetTypeID())
      {
        TrackNumberString = MP4BoxParser_iTunesMeta::CreateTrackNumberString(v11, v13);
        if (!TrackNumberString)
        {
          v5 = 4294966295;
          goto LABEL_46;
        }

        v15 = TrackNumberString;
        CACFDictionary::AddString(a3, @"track number", TrackNumberString);
        CFRelease(v15);
      }
    }

    v5 = 0;
LABEL_46:
    v9 = v11;
LABEL_27:
    CFRelease(v9);
    return v5;
  }

  if (a2 > -1451789709)
  {
    if (a2 == -1451789708)
    {
      goto LABEL_21;
    }

    v6 = 1668313716;
    goto LABEL_20;
  }

  if (a2 != -1452051405)
  {
    v6 = -1451987089;
    goto LABEL_20;
  }

LABEL_21:
  theString = 0;
  v5 = MP4BoxParser_iTunesMeta::CopyMetaItemData(this, a2, &theString);
  if (!v5)
  {
    v7 = theString;
    if (theString)
    {
      if (CFStringGetLength(theString))
      {
        InfoDictionaryKeyForMetaItemKey = GetInfoDictionaryKeyForMetaItemKey(a2);
        CACFDictionary::AddString(a3, InfoDictionaryKeyForMetaItemKey, v7);
        v5 = 0;
      }

      else
      {
        v5 = 4294966295;
      }

      v9 = v7;
      goto LABEL_27;
    }
  }

  return v5;
}

uint64_t MP4BoxParser_iTunesMeta::CopyMetaItemData(MP4BoxParser_iTunesMeta *this, int a2, const void **a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *(this + 8);
  v4 = *(v3 + 8);
  if (v4 == v3)
  {
    return 4294966295;
  }

  v7 = *(v3 + 8);
  while (*(v7 + 16) != 1768715124)
  {
    v7 = *(v7 + 8);
    if (v7 == v3)
    {
      return 4294966295;
    }
  }

  while (*(v4 + 16) != 1768715124)
  {
    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      return 4294966295;
    }
  }

  v10 = *(v4 + 40);
  if (!v10)
  {
    return 4294966295;
  }

  (*(**(this + 1) + 88))(&v30);
  (*(*v30 + 32))(v30, *(v7 + 24));
  for (i = *(v10 + 8); ; i = *(i + 8))
  {
    if (i == v10)
    {
      DataSourceBytes = 4294966295;
      goto LABEL_57;
    }

    if (*(i + 16) == a2)
    {
      break;
    }
  }

  v31 = &unk_1F0330650;
  (*(*v30 + 88))(&v32);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 8;
  v31 = &unk_1F032D6E8;
  DataSourceBytes = MP4BoxParser_iTunesDataItem::Init(&v31);
  if (DataSourceBytes)
  {
    goto LABEL_55;
  }

  v12 = bswap32(v38) - 16;
  v13 = malloc_type_malloc(v12, 0x73C985BAuLL);
  v14 = v13;
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = v12 == 0;
  }

  if (!v15)
  {
    exception = __cxa_allocate_exception(8uLL);
    v28 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v13, v12);
  v16 = v31[3](&v31);
  DataSourceBytes = MP4BoxParser::ReadDataSourceBytes(v32, v16 + 16, v12, v14);
  if (DataSourceBytes)
  {
    goto LABEL_53;
  }

  DataSourceBytes = 4294966293;
  if (v39 <= 0xCu)
  {
    if (v39)
    {
      if (v39 != 1)
      {
        goto LABEL_53;
      }

      v19 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v14, v12, 0x8000100u, 0);
      goto LABEL_34;
    }

    if (a2 == 1668249202)
    {
      puts("kiTunesArtworkKey");
      goto LABEL_52;
    }

    if (a2 != 1953655662)
    {
      if (a2 != 1735291493)
      {
        goto LABEL_53;
      }

      if (v12 >= 2)
      {
        v20 = bswap32(*v14) >> 16;
        if (v20 <= 147)
        {
          v21 = v20 - 1;
          if (v21 <= 0x93)
          {
            v22 = kGenreTable[v21];
          }

          else
          {
            v22 = "Blues";
          }

          goto LABEL_62;
        }

LABEL_49:
        DataSourceBytes = 0;
LABEL_54:
        free(v14);
        goto LABEL_55;
      }

LABEL_52:
      DataSourceBytes = 0;
      goto LABEL_53;
    }

LABEL_33:
    v19 = CFDataCreate(*MEMORY[0x1E695E480], v14, v12);
    goto LABEL_34;
  }

  if (v39 - 13 < 2)
  {
    goto LABEL_33;
  }

  if (v39 == 18)
  {
    if (v12 >= 2)
    {
      v23 = bswap32(*v14) >> 16;
      if (v23 <= 147)
      {
        v24 = v23 - 1;
        if (v24 <= 0x93)
        {
          v22 = kGenreTable[v24];
        }

        else
        {
          v22 = "Blues";
        }

LABEL_62:
        v18 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v22, 0x201u);
        goto LABEL_63;
      }

      goto LABEL_49;
    }

    goto LABEL_52;
  }

  if (v39 != 21)
  {
    goto LABEL_53;
  }

  DataSourceBytes = 0;
  v17 = bswap32(v38);
  if (v17 <= 19)
  {
    if (v17 != 17)
    {
      if (v17 == 18)
      {
        LOWORD(v29) = bswap32(*v14) >> 16;
        v18 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &v29);
LABEL_63:
        DataSourceBytes = 0;
        *a3 = v18;
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    v19 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, v14);
LABEL_34:
    DataSourceBytes = 0;
    *a3 = v19;
    goto LABEL_53;
  }

  if (v17 == 20)
  {
    LODWORD(v29) = *v14 << 24;
    v18 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v29);
    goto LABEL_63;
  }

  if (v17 == 24)
  {
    v29 = *v14 << 56;
    v18 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &v29);
    goto LABEL_63;
  }

LABEL_53:
  if (v14)
  {
    goto LABEL_54;
  }

LABEL_55:
  v25 = v32;
  v31 = &unk_1F0330650;
  v32 = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

LABEL_57:
  v26 = v30;
  v30 = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  return DataSourceBytes;
}

void sub_18F7A1C60(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

__CFString *MP4BoxParser_iTunesMeta::CreateTrackNumberString(MP4BoxParser_iTunesMeta *this, const __CFData *a2)
{
  Length = CFDataGetLength(this);
  BytePtr = CFDataGetBytePtr(this);
  v5 = 0;
  if (!BytePtr || Length < 4)
  {
    return v5;
  }

  v6 = BytePtr;
  v7 = BytePtr[1];
  if (Length < (v7 + 4))
  {
    return 0;
  }

  v8 = bswap32(*&BytePtr[v7 + 2]);
  valuePtr = HIWORD(v8);
  if (v8 >> 16 < 1)
  {
    return 0;
  }

  v9 = *MEMORY[0x1E695E480];
  v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  System = CFLocaleGetSystem();
  v13 = CFNumberFormatterCreate(v9, System, kCFNumberFormatterDecimalStyle);
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = v13;
  StringWithNumber = CFNumberFormatterCreateStringWithNumber(v9, v13, v11);
  if (!StringWithNumber)
  {
    CFRelease(v14);
LABEL_23:
    v5 = 0;
LABEL_24:
    CFRelease(v11);
    return v5;
  }

  v16 = StringWithNumber;
  Mutable = CFStringCreateMutable(v9, 128);
  v5 = Mutable;
  if (!Mutable)
  {
    goto LABEL_17;
  }

  CFStringAppend(Mutable, v16);
  v18 = v6[1];
  if (Length >= (v18 + 6))
  {
    v19 = bswap32(*&v6[v18 + 4]);
    v21 = HIWORD(v19);
    if (valuePtr <= v19 >> 16)
    {
      CFRelease(v11);
      v11 = CFNumberCreate(v9, kCFNumberSInt16Type, &v21);
      if (v11)
      {
        CFRelease(v16);
        v16 = CFNumberFormatterCreateStringWithNumber(v9, v14, v11);
        if (v16)
        {
          CFStringAppend(v5, @"/");
          CFStringAppend(v5, v16);
        }
      }
    }
  }

  if (!CFStringGetLength(v5))
  {
    CFRelease(v5);
    v5 = 0;
  }

  if (v16)
  {
LABEL_17:
    CFRelease(v16);
  }

  CFRelease(v14);
  if (v11)
  {
    goto LABEL_24;
  }

  return v5;
}

uint64_t MP4BoxParser_iTunesMeta::GetStoreKind(MP4BoxParser_iTunesMeta *this)
{
  number = 0;
  valuePtr = 0;
  v1 = MP4BoxParser_iTunesMeta::CopyMetaItemData(this, 1937009003, &number);
  result = 0;
  if (!v1)
  {
    v3 = number;
    if (number)
    {
      CFNumberGetValue(number, kCFNumberSInt8Type, &valuePtr);
      CFRelease(v3);
      return valuePtr;
    }
  }

  return result;
}

void MP4BoxParser_iTunesNORMMeta::FillSoundCheckDictionary(MP4BoxParser_iTunesNORMMeta *this, CACFDictionary *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  DataSizeForMeaningName = MP4BoxParser_iTunesMeta::GetDataSizeForMeaningName(this, "iTunNORM");
  *(this + 19) = DataSizeForMeaningName;
  if (DataSizeForMeaningName)
  {
    v5 = *(this + 20);
    if (v5 && DataSizeForMeaningName >= 45 * v5)
    {
      v7 = DataSizeForMeaningName + 1;
      v8 = malloc_type_malloc(v7, 0x615894BFuLL);
      v9 = v8;
      if (!v7 || v8)
      {
        bzero(v8, v7);
        if (!v9)
        {
          return;
        }

        v21 = *(this + 19);
        if (MP4BoxParser_iTunesMeta::GetDataForMeaningName(this, "iTunNORM", v9, &v21, v10))
        {
          goto LABEL_18;
        }

        v11 = 5 * v5;
        v12 = 4 * (5 * v5);
        v13 = malloc_type_malloc(v12, 0x2DB610B2uLL);
        if (v13)
        {
          v14 = v13;
          bzero(v13, v12);
          if (v11 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v11;
          }

          v16 = v14;
          v17 = v9;
          do
          {
            sscanf(v17, "%X", v16);
            v17 += 9;
            ++v16;
            --v15;
          }

          while (v15);
          FillStringFromValues(v22, v14, *(this + 20));
          v18 = *(this + 20);
          CACFDictionary::AddCString(a2, @"sc ave perceived power coeff", v22);
          FillStringFromValues(v22, &v14[v18], *(this + 20));
          LODWORD(v18) = *(this + 20) + v18;
          CACFDictionary::AddCString(a2, @"sc max perceived power coeff", v22);
          FillStringFromValues(v22, &v14[v18], *(this + 20));
          LODWORD(v18) = *(this + 20) + v18;
          CACFDictionary::AddCString(a2, @"sc max perceived power msec", v22);
          FillStringFromValues(v22, &v14[v18], *(this + 20));
          LODWORD(v18) = *(this + 20) + v18;
          CACFDictionary::AddCString(a2, @"sc peak amplitude", v22);
          FillStringFromValues(v22, &v14[v18], *(this + 20));
          CACFDictionary::AddCString(a2, @"sc peak amplitude msec", v22);
          free(v14);
LABEL_18:
          free(v9);
          return;
        }
      }

      exception = __cxa_allocate_exception(8uLL);
      v20 = std::bad_alloc::bad_alloc(exception);
    }
  }
}

uint64_t FillStringFromValues(char *a1, _DWORD *a2, unsigned int *a3)
{
  v3 = a3;
  *(a1 + 14) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  result = snprintf(a1, 0x100uLL, "%u", *a2);
  if (v3 >= 2)
  {
    v7 = &a1[strlen(a1)];
    v8 = a1 + 256;
    v9 = v3 - 1;
    v10 = a2 + 1;
    do
    {
      v11 = *v10++;
      snprintf(v7, v8 - v7, "%s%u", " ", v11);
      result = strlen(v7);
      v7 += result;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t AudioFormatProperty_ISOChannelLayoutSizeForChannelLayout(const AudioChannelLayout *a1, unsigned int a2, unsigned __int8 *a3)
{
  result = 1718449215;
  *a3 = 0;
  if (a2 >= 4)
  {
    mChannelLayoutTag = a1->mChannelLayoutTag;
    if (a1->mChannelLayoutTag == 0x10000)
    {
      if (a2 < 8)
      {
        return result;
      }

      v7 = vcnt_s8(a1->mChannelBitmap);
      v7.i16[0] = vaddlv_u8(v7);
      mNumberChannelDescriptions = v7.i32[0];
    }

    else if (mChannelLayoutTag)
    {
      mNumberChannelDescriptions = a1->mChannelLayoutTag;
    }

    else
    {
      if (a2 < 0xC)
      {
        return result;
      }

      mNumberChannelDescriptions = a1->mNumberChannelDescriptions;
      if (20 * mNumberChannelDescriptions + 12 > a2)
      {
        return result;
      }
    }

    if (!mNumberChannelDescriptions)
    {
      return result;
    }

    if (mChannelLayoutTag <= 9306118)
    {
      if (mChannelLayoutTag > 7864324)
      {
        if (mChannelLayoutTag <= 8323079)
        {
          if (mChannelLayoutTag == 7864325)
          {
            v8 = 5;
            goto LABEL_61;
          }

          if (mChannelLayoutTag == 8126470)
          {
            v8 = 6;
            goto LABEL_61;
          }
        }

        else
        {
          switch(mChannelLayoutTag)
          {
            case 8323080:
              v8 = 7;
              goto LABEL_61;
            case 8585219:
              v8 = 9;
              goto LABEL_61;
            case 8650756:
              v8 = 10;
              goto LABEL_61;
          }
        }
      }

      else if (mChannelLayoutTag <= 6946817)
      {
        if (mChannelLayoutTag == 6553601)
        {
          v8 = 1;
          goto LABEL_61;
        }

        if (mChannelLayoutTag == 6619138)
        {
          v8 = 2;
          goto LABEL_61;
        }
      }

      else
      {
        switch(mChannelLayoutTag)
        {
          case 6946818:
            v8 = 21;
            goto LABEL_61;
          case 7471107:
            v8 = 3;
            goto LABEL_61;
          case 7602180:
            v8 = 4;
            goto LABEL_61;
        }
      }
    }

    else if (mChannelLayoutTag <= 13500427)
    {
      if (mChannelLayoutTag <= 11993095)
      {
        if (mChannelLayoutTag == 9306119)
        {
          v8 = 11;
          goto LABEL_61;
        }

        if (mChannelLayoutTag == 9633794)
        {
          v8 = 8;
          goto LABEL_61;
        }
      }

      else
      {
        switch(mChannelLayoutTag)
        {
          case 11993096:
            v8 = 12;
            goto LABEL_61;
          case 12058632:
            v8 = 14;
            goto LABEL_61;
          case 13369368:
            v8 = 13;
            goto LABEL_61;
        }
      }
    }

    else if (mChannelLayoutTag > 13697037)
    {
      switch(mChannelLayoutTag)
      {
        case 13697038:
          v8 = 18;
          goto LABEL_61;
        case 13762572:
          v8 = 19;
          goto LABEL_61;
        case 13828110:
          v8 = 20;
          goto LABEL_61;
      }
    }

    else
    {
      switch(mChannelLayoutTag)
      {
        case 13500428:
          v8 = 15;
          goto LABEL_61;
        case 13565962:
          result = 16;
          *a3 = 16;
          return result;
        case 13631500:
          v8 = 17;
LABEL_61:
          *a3 = v8;
          return 16;
      }
    }

    return 4 * mNumberChannelDescriptions + 16;
  }

  return result;
}

uint64_t AudioFormatProperty_ISOChannelLayoutForChannelLayout(AudioChannelLayout *a1, unsigned int a2, unsigned int *a3, unsigned __int8 *a4)
{
  v37 = 0;
  v8 = AudioFormatProperty_ISOChannelLayoutSizeForChannelLayout(a1, a2, &v37);
  if (*a3 >= v8)
  {
    v10 = v8;
    mChannelLayoutTag = a1->mChannelLayoutTag;
    if (a1->mChannelLayoutTag == 0x10000)
    {
      LOBYTE(mChannelLayoutTag) = vaddlv_u8(vcnt_s8(a1->mChannelBitmap));
    }

    else if (!mChannelLayoutTag)
    {
      mChannelLayoutTag = a1->mNumberChannelDescriptions;
    }

    bzero(a4, v8);
    *a4 = 0x6C6E686310000000;
    a4[8] = 1;
    a4[12] = 17;
    a4[13] = mChannelLayoutTag;
    v12 = v37;
    a4[14] = v37;
    if (v12)
    {
      PropertyInfo = 0;
      a4[15] = 0;
      *a3 = 16;
      return PropertyInfo;
    }

    a4[15] = mChannelLayoutTag;
    v32 = a4 + 16;
    v33 = a4 + 16;
    v34 = &a4[v10];
    v35 = 0x2000000000;
    v36 = (a4 + 16) & 3;
    memset(&v31, 0, sizeof(v31));
    outPropertyDataSize = 0;
    if (a1->mChannelLayoutTag)
    {
      if (a1->mChannelLayoutTag == 0x10000)
      {
        PropertyInfo = AudioFormatGetPropertyInfo(0x636D7062u, 4u, &a1->mChannelBitmap, &outPropertyDataSize);
        if (PropertyInfo)
        {
          return PropertyInfo;
        }

        if (outPropertyDataSize)
        {
          std::vector<unsigned char>::__append(&v31, outPropertyDataSize);
          begin = v31.__begin_;
        }

        else
        {
          begin = 0;
        }

        Property = AudioFormatGetProperty(0x636D7062u, 4u, &a1->mChannelBitmap, &outPropertyDataSize, begin);
      }

      else
      {
        PropertyInfo = AudioFormatGetPropertyInfo(0x636D706Cu, 4u, a1, &outPropertyDataSize);
        if (PropertyInfo)
        {
          return PropertyInfo;
        }

        if (outPropertyDataSize)
        {
          std::vector<unsigned char>::__append(&v31, outPropertyDataSize);
          begin = v31.__begin_;
        }

        else
        {
          begin = 0;
        }

        Property = AudioFormatGetProperty(0x636D706Cu, 4u, a1, &outPropertyDataSize, begin);
      }

      PropertyInfo = Property;
      if (Property)
      {
        goto LABEL_24;
      }
    }

    else
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v31, a1, a1 + a2, a2);
      begin = v31.__begin_;
    }

    PropertyInfo = 1718449215;
    if ((v31.__end_ - begin) < 0xC)
    {
LABEL_24:
      if (!begin)
      {
        return PropertyInfo;
      }

      goto LABEL_54;
    }

    if (!*(begin + 2))
    {
LABEL_51:
      AT::TBitstreamWriter<unsigned int>::Flush(&v32);
      PropertyInfo = 0;
      v23 = HIDWORD(v35) + 8 * (v34 - v33);
      v24 = v23 - 32;
      v25 = v23 - 25;
      if (v24 >= 0)
      {
        v25 = v24;
      }

      v26 = v10 - (v25 >> 3);
      *a3 = v26;
      *a4 = bswap32(v26);
LABEL_54:
      v31.__end_ = begin;
      operator delete(begin);
      return PropertyInfo;
    }

    v15 = 0;
    while (1)
    {
      v16 = &begin[20 * v15 + 12];
      v17 = *v16;
      if (*v16 > 199)
      {
        break;
      }

      if (v17 != 100)
      {
        if ((v17 - 38) < 8 || (v17 + 1) < 2)
        {
          goto LABEL_54;
        }

LABEL_44:
        v21 = 0;
        while (v17 != sChannelLabelsForISOSpeakerPositions[v21])
        {
          if (++v21 == 45)
          {
            v22 = *v16;
            v29 = v16[4];
            v28 = v22;
            SetDefaultChannelPosition(&v28);
            goto LABEL_48;
          }
        }

        goto LABEL_50;
      }

      v18 = *v16;
      v29 = v16[4];
      v28 = v18;
LABEL_48:
      if ((DWORD1(v28) & 0xFFFFFFFD) != 0)
      {
        goto LABEL_54;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(&v32, 126, 8u);
      AT::TBitstreamWriter<unsigned int>::PutBits(&v32, bswap32(-*(&v28 + 2)) >> 16, 0x10u);
      LODWORD(v21) = *(&v28 + 3);
LABEL_50:
      AT::TBitstreamWriter<unsigned int>::PutBits(&v32, v21, 8u);
      if (++v15 >= *(begin + 2))
      {
        goto LABEL_51;
      }
    }

    if ((v17 - 200) < 8)
    {
      goto LABEL_54;
    }

    v19 = (v17 - 301) > 4 || v17 == 303;
    if (!v19 || v17 == 400)
    {
      goto LABEL_54;
    }

    goto LABEL_44;
  }

  return 561211770;
}

void sub_18F7A2938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioFormatProperty_ChannelLayoutSizeForISOChannelLayout(unsigned int a1, unsigned __int8 *a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v8 = a2;
  v88[0] = a2;
  v88[1] = a2;
  v9 = &a2[a1];
  v89 = v9;
  LODWORD(v90) = 0;
  if ((a2 & 3) != 0)
  {
    v10 = 0;
    v11 = (a2 ^ 3) & 3;
    v12 = (a2 + 1);
    v13 = 8 * ((a2 ^ 3) & 3) + 8;
    v14 = a2;
    do
    {
      if (v14 >= v9)
      {
        v15 = 255;
      }

      else
      {
        v15 = *v14;
      }

      v10 = v15 | (v10 << 8);
      ++v14;
      v16 = (v12++ & 3) == 0;
    }

    while (!v16);
    a2 += v11 + 1;
    v88[0] = &v8[v11 + 1];
    v17 = v10 << ((8 * v11) ^ 0x18);
    LODWORD(v90) = v17;
  }

  else
  {
    v17 = 0;
    v13 = 0;
  }

  v18 = 560360820;
  if (a1 < 0xC)
  {
    return v18;
  }

  v19 = v9 - a2;
  v20 = v13 - 32;
  if (v13 - 32 < 0)
  {
    if ((v19 & ~(v19 >> 63) & 0xFFFFFFFC) != 0 && a2 >= v8)
    {
      v25 = bswap32(*a2);
    }

    else
    {
      v23 = 4;
      v24 = a2;
      v25 = v17;
      do
      {
        v26 = 255;
        if (v24 < v9 && v24 >= v8)
        {
          v26 = *v24;
        }

        v25 = v26 | (v25 << 8);
        ++v24;
        --v23;
      }

      while (v23);
    }

    a2 += 4;
    v88[0] = a2;
    v21 = (v25 >> v13) | v17;
    v27 = v25 << -v13;
    v17 = v13 ? v27 : 0;
    LODWORD(v90) = v17;
    v20 = v13;
  }

  else
  {
    v21 = v17;
  }

  if (v21 > a1)
  {
    return v18;
  }

  HIDWORD(v90) = v20 - 32;
  if (v20 - 32 < 0)
  {
    if (a2 >= v8 && ((v9 - a2) & ~((v9 - a2) >> 63) & 0xFFFFFFFC) != 0)
    {
      v29 = bswap32(*a2);
    }

    else
    {
      v30 = 4;
      v31 = a2;
      v29 = v17;
      do
      {
        v32 = v29 << 8;
        LODWORD(v90) = v32;
        v33 = 255;
        if (v31 < v9 && v31 >= v8)
        {
          v33 = *v31;
        }

        v29 = v33 | v32;
        LODWORD(v90) = v29;
        ++v31;
        --v30;
      }

      while (v30);
    }

    a2 += 4;
    v88[0] = a2;
    v28 = (v29 >> v20) | v17;
    if (!v20)
    {
      v34 = 0;
      v17 = 0;
      v90 = 0xFFFFFFF800000000;
      goto LABEL_44;
    }

    v17 = v29 << -v20;
    LODWORD(v90) = v17;
  }

  else
  {
    v20 -= 32;
    v28 = v17;
  }

  v34 = HIBYTE(v17);
  v35 = v20 - 8;
  HIDWORD(v90) = v20 - 8;
  if (v20 - 8 >= 0)
  {
    v36 = v17 << 8;
    goto LABEL_54;
  }

LABEL_44:
  if (a2 >= v8 && ((v9 - a2) & ~((v9 - a2) >> 63) & 0xFFFFFFFC) != 0)
  {
    v17 = bswap32(*a2);
  }

  else
  {
    v37 = 4;
    v38 = a2;
    do
    {
      v39 = v17 << 8;
      LODWORD(v90) = v39;
      v40 = 255;
      if (v38 < v9 && v38 >= v8)
      {
        v40 = *v38;
      }

      v17 = v40 | v39;
      LODWORD(v90) = v17;
      ++v38;
      --v37;
    }

    while (v37);
  }

  a2 += 4;
  v88[0] = a2;
  v35 = v20 + 24;
  v34 |= v17 >> (v20 + 24);
  if (v20 == -24)
  {
    v41 = 0;
    v36 = 0;
    v90 = 0xFFFFFFE800000000;
    goto LABEL_57;
  }

  v36 = v17 << (8 - v20);
LABEL_54:
  v41 = v36 >> 8;
  v42 = v35 - 24;
  LODWORD(v90) = v36;
  HIDWORD(v90) = v35 - 24;
  if (v35 - 24 >= 0)
  {
    v43 = v36 << 24;
    goto LABEL_71;
  }

LABEL_57:
  if (a2 >= v8 && ((v9 - a2) & ~((v9 - a2) >> 63) & 0xFFFFFFFC) != 0)
  {
    v36 = bswap32(*a2);
  }

  else
  {
    v44 = 4;
    v45 = a2;
    do
    {
      v46 = v36 << 8;
      LODWORD(v90) = v46;
      v47 = 255;
      if (v45 < v9 && v45 >= v8)
      {
        v47 = *v45;
      }

      v36 = v47 | v46;
      LODWORD(v90) = v36;
      ++v45;
      --v44;
    }

    while (v44);
  }

  v48 = v36 << (24 - v35);
  v49 = v35 + 8;
  a2 += 4;
  v88[0] = a2;
  v41 |= v36 >> v49;
  if (v49)
  {
    v43 = v48;
  }

  else
  {
    v43 = 0;
  }

  if (v49)
  {
    v42 = v49;
  }

  else
  {
    v42 = 0;
  }

LABEL_71:
  LODWORD(v90) = v43;
  if (v28 != 1667788396)
  {
    return v18;
  }

  v50 = v34;
  if (v21 <= 0xD && !v34)
  {
    return v18;
  }

  v52 = v21 < 0x10;
  if (v34 != 1)
  {
    v52 = 0;
  }

  if (v34 > 1u || v52 || v41)
  {
    return v18;
  }

  if (!a3 && !v34)
  {
    return 4294967246;
  }

  if (!v34)
  {
    v56 = HIBYTE(v43);
    v57 = v42 - 8;
    HIDWORD(v90) = v42 - 8;
    if (v42 - 8 < 0)
    {
      AT::TBitstreamReader<unsigned int>::FillCacheFrom(v88, a2);
      a2 = v88[0] + 4;
      v88[0] += 4;
      v56 |= v90 >> SBYTE4(v90);
      v57 = HIDWORD(v90) + 32;
      if (HIDWORD(v90) == -32)
      {
        v58 = 0;
      }

      else
      {
        v58 = v90 << -BYTE4(v90);
      }
    }

    else
    {
      v58 = v43 << 8;
    }

    LODWORD(v90) = v58;
    if (v56 != 1)
    {
      return v18;
    }

    v62 = *(a3 + 28);
    goto LABEL_108;
  }

  v53 = v43 >> 28;
  v54 = v42 - 4;
  HIDWORD(v90) = v42 - 4;
  if (v42 - 4 < 0)
  {
    AT::TBitstreamReader<unsigned int>::FillCacheFrom(v88, a2);
    a2 = v88[0] + 4;
    v88[0] += 4;
    v53 |= v90 >> SBYTE4(v90);
    v54 = HIDWORD(v90) + 32;
    if (HIDWORD(v90) == -32)
    {
      v59 = 0;
      v90 = 0xFFFFFFFC00000000;
LABEL_95:
      AT::TBitstreamReader<unsigned int>::FillCacheFrom(v88, a2);
      a2 = v88[0] + 4;
      v88[0] += 4;
      v59 |= v90 >> SBYTE4(v90);
      v60 = HIDWORD(v90) + 32;
      if (HIDWORD(v90) == -32)
      {
        v61 = 0;
      }

      else
      {
        v61 = v90 << -BYTE4(v90);
      }

      goto LABEL_98;
    }

    v55 = v90 << -BYTE4(v90);
  }

  else
  {
    v55 = 16 * v43;
  }

  v59 = v55 >> 28;
  v60 = v54 - 4;
  v90 = __PAIR64__(v60, v55);
  if (v60 < 0)
  {
    goto LABEL_95;
  }

  v61 = 16 * v55;
LABEL_98:
  LODWORD(v90) = v61;
  if (v53 != 1 || (v59 & 0xE) != 0)
  {
    return v18;
  }

  v62 = HIBYTE(v61);
  v57 = v60 - 8;
  HIDWORD(v90) = v57;
  if (v57 < 0)
  {
    AT::TBitstreamReader<unsigned int>::FillCacheFrom(v88, a2);
    a2 = v88[0] + 4;
    v88[0] += 4;
    v62 |= v90 >> SBYTE4(v90);
    v57 = HIDWORD(v90) + 32;
    if (HIDWORD(v90) == -32)
    {
      v63 = 0;
      v90 = 0xFFFFFFF800000000;
      goto LABEL_111;
    }

    v58 = v90 << -BYTE4(v90);
  }

  else
  {
    v58 = v61 << 8;
  }

  LODWORD(v90) = v58;
LABEL_108:
  v63 = HIBYTE(v58);
  v64 = v57 - 8;
  HIDWORD(v90) = v64;
  if (v64 >= 0)
  {
    v87 = v62;
    v65 = v58 << 8;
    goto LABEL_114;
  }

LABEL_111:
  AT::TBitstreamReader<unsigned int>::FillCacheFrom(v88, a2);
  a2 = v88[0] + 4;
  v88[0] += 4;
  v66 = BYTE4(v90);
  v63 |= v90 >> SBYTE4(v90);
  v64 = HIDWORD(v90) + 32;
  v16 = HIDWORD(v90) == -32;
  HIDWORD(v90) += 32;
  v87 = v62;
  if (v16)
  {
    v65 = 0;
  }

  else
  {
    v65 = v90 << -v66;
  }

LABEL_114:
  LODWORD(v90) = v65;
  v67 = v63;
  switch(v63)
  {
    case 0:
      if (!v50)
      {
        v74 = v87;
LABEL_145:
        v72 = 0;
        v73 = 0;
        v71 = v13 - v64 + 8 * (a2 - v89 + v19);
        v70 = v74;
        goto LABEL_146;
      }

      v68 = HIBYTE(v65);
      v64 -= 8;
      HIDWORD(v90) = v64;
      if (v64 < 0)
      {
        AT::TBitstreamReader<unsigned int>::FillCacheFrom(v88, a2);
        LODWORD(a2) = LODWORD(v88[0]) + 4;
        v88[0] += 4;
        v75 = BYTE4(v90);
        v68 |= v90 >> SBYTE4(v90);
        v64 = HIDWORD(v90) + 32;
        HIDWORD(v90) += 32;
        if (HIDWORD(v90))
        {
          v69 = v90 << -v75;
        }

        else
        {
          v69 = 0;
        }
      }

      else
      {
        v69 = v65 << 8;
      }

      LODWORD(v90) = v69;
      v74 = v87;
      if (v68 == v87)
      {
        goto LABEL_145;
      }

      return v18;
    case 1:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 6553601;
      goto LABEL_146;
    case 2:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 6619138;
      goto LABEL_146;
    case 3:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 7471107;
      goto LABEL_146;
    case 4:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 7602180;
      goto LABEL_146;
    case 5:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 7864325;
      goto LABEL_146;
    case 6:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 8126470;
      goto LABEL_146;
    case 7:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 8323080;
      goto LABEL_146;
    case 8:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 9633794;
      goto LABEL_146;
    case 9:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 8585219;
      goto LABEL_146;
    case 10:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 8650756;
      goto LABEL_146;
    case 11:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 9306119;
      goto LABEL_146;
    case 12:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 11993096;
      goto LABEL_146;
    case 13:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 13369368;
      goto LABEL_146;
    case 14:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 12058632;
      goto LABEL_146;
    case 15:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 13500428;
      goto LABEL_146;
    case 16:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 13565962;
      goto LABEL_146;
    case 17:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 13631500;
      goto LABEL_146;
    case 18:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 13697038;
      goto LABEL_146;
    case 19:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 13762572;
      goto LABEL_146;
    case 20:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 13828110;
      goto LABEL_146;
    case 21:
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 6946818;
      goto LABEL_146;
    default:
      v70 = 0;
      v71 = 0;
      v73 = -65536;
      v72 = 1;
LABEL_146:
      if (!v67)
      {
        v80 = 0;
        v81 = v70;
        goto LABEL_167;
      }

      if (!v50)
      {
        if (v21 < 0x16)
        {
          return v18;
        }

        v82 = 14;
        goto LABEL_160;
      }

      v86 = v70;
      v76 = v73;
      v77 = v72;
      AT::TBitstreamReader<unsigned int>::SkipBits(v88, 4);
      v78 = v90 >> 29;
      HIDWORD(v90) -= 3;
      if (v90 < 0)
      {
        AT::TBitstreamReader<unsigned int>::FillCacheFrom(v88, v88[0]);
        v88[0] += 4;
        v83 = BYTE4(v90);
        v78 |= v90 >> SBYTE4(v90);
        HIDWORD(v90) += 32;
        if (HIDWORD(v90))
        {
          v79 = v90 << -v83;
        }

        else
        {
          v79 = 0;
        }
      }

      else
      {
        v79 = 8 * v90;
      }

      LODWORD(v90) = v79;
      Bit = AT::TBitstreamReader<unsigned int>::GetBit(v88);
      if (v78)
      {
        return v18;
      }

      v72 = v77;
      v73 = v76;
      v70 = v86;
      if (Bit)
      {
        if (v21 < 0x18)
        {
          return v18;
        }

        v82 = 16;
LABEL_160:
        v85 = *&v8[v82];
        if (v85)
        {
          v80 = bswap64(v85);
          v81 = v73 & 0x1F;
          goto LABEL_167;
        }
      }

      if ((v72 & ((v73 & 0x1F) == v87)) != 0)
      {
        v81 = v73 & 0x1F;
      }

      else
      {
        v81 = v70;
      }

      if ((v73 & 0x1F) == v87)
      {
        v80 = 0;
LABEL_167:
        *a4 = 20 * v81 + 12;
        v18 = 0;
        if (a5)
        {
          *a5 = v67;
          *(a5 + 4) = v73;
          *(a5 + 8) = v87;
          *(a5 + 12) = v70;
          *(a5 + 16) = v71;
          *(a5 + 24) = v80;
        }

        return v18;
      }

      break;
  }

  return v18;
}

uint64_t AT::TBitstreamReader<unsigned int>::FillCacheFrom(uint64_t result, unsigned int *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (((v2 - a2) & ~((v2 - a2) >> 63) & 0xFFFFFFFC) != 0)
  {
    v4 = v3 >= a2;
    v5 = v3 == a2;
  }

  else
  {
    v4 = 1;
    v5 = 0;
  }

  if (!v5 && v4)
  {
    v6 = *(result + 24);
    v7 = 4;
    do
    {
      v8 = v6 << 8;
      *(result + 24) = v8;
      v9 = 255;
      if (a2 < v2 && a2 >= v3)
      {
        v9 = *a2;
      }

      v6 = v8 | v9;
      *(result + 24) = v6;
      a2 = (a2 + 1);
      --v7;
    }

    while (v7);
  }

  else
  {
    *(result + 24) = bswap32(*a2);
  }

  return result;
}

unsigned __int8 **AT::TBitstreamReader<unsigned int>::SkipBits(unsigned __int8 **result, int a2)
{
  v2 = *(result + 7);
  v3 = a2 - v2;
  if (a2 > v2)
  {
    result[3] = 0;
    v2 = 0;
    if (v3 >= 0x20)
    {
      *result += (v3 >> 3) & 0x1FFFFFFC;
      a2 = v3 & 0x1F;
    }

    else
    {
      a2 = v3;
    }
  }

  if ((a2 - 33) >= 0xFFFFFFE0)
  {
    v4 = *(result + 6);
    v5 = v2 - a2;
    *(result + 7) = v5;
    if (v5 < 0)
    {
      v8 = result[1];
      v7 = result[2];
      v9 = *result;
      if (((v7 - *result) & ~((v7 - *result) >> 63) & 0xFFFFFFFC) == 0 || v8 > v9)
      {
        v11 = 4;
        v12 = *result;
        do
        {
          v13 = v4 << 8;
          *(result + 6) = v13;
          v14 = 255;
          if (v12 < v7 && v12 >= v8)
          {
            v14 = *v12;
          }

          v4 = v14 | v13;
          *(result + 6) = v4;
          ++v12;
          --v11;
        }

        while (v11);
      }

      else
      {
        v4 = bswap32(*v9);
      }

      v15 = v4 << -v5;
      v16 = v5 + 32;
      *(result + 7) = v16;
      *result = (v9 + 4);
      if (v16)
      {
        v6 = v15;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = v4 << a2;
    }

    *(result + 6) = v6;
  }

  return result;
}

BOOL AT::TBitstreamReader<unsigned int>::GetBit(unsigned __int8 **a1)
{
  v2 = *(a1 + 6);
  v1 = *(a1 + 7);
  v3 = v2 >> 31;
  *(a1 + 7) = v1 - 1;
  if (v1 - 1 < 0)
  {
    v6 = a1[1];
    v5 = a1[2];
    v7 = *a1;
    if (((v5 - *a1) & ~((v5 - *a1) >> 63) & 0xFFFFFFFC) != 0)
    {
      v8 = v6 >= v7;
      v9 = v6 == v7;
    }

    else
    {
      v8 = 1;
      v9 = 0;
    }

    if (!v9 && v8)
    {
      v10 = 4;
      v11 = *a1;
      do
      {
        v12 = v2 << 8;
        *(a1 + 6) = v12;
        v13 = 255;
        if (v11 < v5 && v11 >= v6)
        {
          v13 = *v11;
        }

        v2 = v13 | v12;
        *(a1 + 6) = v2;
        ++v11;
        --v10;
      }

      while (v10);
    }

    else
    {
      v2 = bswap32(*v7);
    }

    v14 = v2 << (1 - v1);
    v15 = v1 + 31;
    *(a1 + 7) = v15;
    *a1 = v7 + 4;
    v3 |= v2 >> v15;
    if (v15)
    {
      v4 = v14;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 2 * v2;
  }

  *(a1 + 6) = v4;
  return v3 != 0;
}

uint64_t AudioFormatProperty_ChannelLayoutForISOChannelLayout(unsigned int a1, unsigned __int8 *a2, const AudioStreamBasicDescription *a3, unsigned int *a4, AudioChannelLayout *a5)
{
  v72 = 0;
  v70 = xmmword_18F916478;
  v71 = unk_18F916488;
  v9 = AudioFormatProperty_ChannelLayoutSizeForISOChannelLayout(a1, a2, a3, &v72, &v70);
  if (!v9)
  {
    v10 = *a4;
    if (v10 < v72)
    {
      return 561211770;
    }

    bzero(a5, v10);
    v11 = DWORD1(v70);
    v12 = DWORD1(v70) & 0xFFFF0000;
    if (DWORD1(v70) <= 0xFFFEFFFF && v12 && !*(&v71 + 1))
    {
      v9 = 0;
      *a4 = 12;
      a5->mChannelBitmap = 0;
      a5->mNumberChannelDescriptions = 0;
      a5->mChannelLayoutTag = v11;
      return v9;
    }

    if (v12 == -65536)
    {
      return 1718449215;
    }

    v9 = 560360820;
    if (v12)
    {
      if (DWORD1(v70))
      {
        outPropertyDataSize = 0;
        PropertyInfo = AudioFormatGetPropertyInfo(0x636D706Cu, 4u, &v70 + 4, &outPropertyDataSize);
        if (!PropertyInfo)
        {
          std::vector<unsigned char>::vector[abi:ne200100](outPropertyData, outPropertyDataSize);
          Property = AudioFormatGetProperty(0x636D706Cu, 4u, &v70 + 4, &outPropertyDataSize, outPropertyData[0]);
          v27 = outPropertyData[0];
          if (Property)
          {
            v9 = Property;
          }

          else
          {
            a5->mChannelLayoutTag = 0;
            a5->mNumberChannelDescriptions = 0;
            v35 = v27[2];
            if (v35)
            {
              v36 = 0;
              v37 = 0;
              v38 = 0;
              v39 = *(&v71 + 1);
              do
              {
                if ((v39 & (1 << v37)) == 0)
                {
                  v40 = &v27[5 * v38 + 3];
                  v41 = &a5->mChannelDescriptions[v36++];
                  a5->mNumberChannelDescriptions = v36;
                  v42 = *v40;
                  v41->mCoordinates[2] = *(v40 + 16);
                  *&v41->mChannelLabel = v42;
                  v35 = v27[2];
                }

                v37 = ++v38;
              }

              while (v35 > v38);
            }

            else
            {
              v36 = 0;
            }

            if (v36 == DWORD2(v70))
            {
              *a4 = 20 * v36 + 12;
              TryToCollapseAudioChannelLayoutToATag(a4, a5);
              v9 = 0;
              v27 = outPropertyData[0];
            }
          }

          if (v27)
          {
            outPropertyData[1] = v27;
            operator delete(v27);
          }

          return v9;
        }

        return PropertyInfo;
      }
    }

    else if (!v70)
    {
      v13 = v71;
      if (v71)
      {
        v14 = &a2[a1];
        if ((a2 & 3) != 0)
        {
          v15 = 0;
          v16 = a2 ^ 3;
          v17 = (a2 + 1);
          v18 = 8 * ((a2 ^ 3) & 3) + 8;
          v19 = a2;
          do
          {
            if (v19 >= v14)
            {
              v20 = 255;
            }

            else
            {
              v20 = *v19;
            }

            v15 = v20 | (v15 << 8);
            ++v19;
          }

          while ((v17++ & 3) != 0);
          v22 = v16 & 3;
          v23 = &a2[(v16 & 3) + 1];
          v24 = v15 << ((8 * v22) ^ 0x18);
        }

        else
        {
          v24 = 0;
          v18 = 0;
          v23 = a2;
        }

        v28 = HIDWORD(v70);
        v29 = v71 - v18;
        v30 = &v23[((v71 - v18) >> 3) & 0x1FFFFFFC];
        if ((v71 - v18) >= 0x20)
        {
          v29 = (v71 - v18) & 0x1F;
        }

        else
        {
          v30 = v23;
        }

        v31 = v71 <= v18;
        if (v71 > v18)
        {
          v32 = 0;
        }

        else
        {
          v32 = v24;
        }

        if (v71 > v18)
        {
          v33 = 0;
        }

        else
        {
          v33 = v18;
        }

        if (v71 > v18)
        {
          v34 = v30;
        }

        else
        {
          v34 = v23;
        }

        if (!v31)
        {
          v13 = v29;
        }

        if ((v13 - 33) >= 0xFFFFFFE0)
        {
          v33 -= v13;
          if (v33 < 0)
          {
            if (((v14 - v34) & ~((v14 - v34) >> 63) & 0xFFFFFFFC) != 0 && v34 >= a2)
            {
              v32 = bswap32(*v34);
            }

            else
            {
              v44 = 4;
              v45 = v34;
              do
              {
                v46 = 255;
                if (v45 < v14 && v45 >= a2)
                {
                  v46 = *v45;
                }

                v32 = v46 | (v32 << 8);
                ++v45;
                --v44;
              }

              while (v44);
            }

            ++v34;
            if (v33 == -32)
            {
              v32 = 0;
            }

            else
            {
              v32 <<= -v33;
            }

            if (v33 == -32)
            {
              v33 = 0;
            }

            else
            {
              v33 += 32;
            }
          }

          else
          {
            v32 <<= v13;
          }
        }

        if (!HIDWORD(v70))
        {
LABEL_130:
          a5->mNumberChannelDescriptions = v28;
          *a4 = 20 * v28 + 12;
          TryToCollapseAudioChannelLayoutToATag(a4, a5);
          return 0;
        }

        v47 = 0;
        while (1)
        {
          v48 = &a5->mChannelDescriptions[v47];
          v48->mChannelLabel = -1;
          if (v33 + 8 * (v14 - v34) < 8)
          {
            return v9;
          }

          v49 = HIBYTE(v32);
          if (v33 - 8 < 0)
          {
            if (v34 >= a2 && ((v14 - v34) & ~((v14 - v34) >> 63) & 0xFFFFFFFC) != 0)
            {
              v32 = bswap32(*v34);
            }

            else
            {
              v50 = 4;
              v51 = v34;
              do
              {
                v52 = 255;
                if (v51 < v14 && v51 >= a2)
                {
                  v52 = *v51;
                }

                v32 = v52 | (v32 << 8);
                ++v51;
                --v50;
              }

              while (v50);
            }

            v53 = v32 << (8 - v33);
            v33 += 24;
            ++v34;
            v49 |= v32 >> v33;
            if (v33)
            {
              v32 = v53;
            }

            else
            {
              v32 = 0;
            }

            if (!v33)
            {
              v33 = 0;
            }
          }

          else
          {
            v32 <<= 8;
            v33 -= 8;
          }

          if (v49 <= 0x7Du)
          {
            break;
          }

          if (v49 == 126)
          {
            if (v33 + 8 * (v14 - v34) < 24)
            {
              return v9;
            }

            *&v48->mChannelLabel = 0x200000064;
            v56 = HIWORD(v32);
            v57 = v33 - 16;
            if (v33 - 16 < 0)
            {
              if (((v14 - v34) & ~((v14 - v34) >> 63) & 0xFFFFFFFC) != 0 && v34 >= a2)
              {
                v32 = bswap32(*v34);
              }

              else
              {
                v59 = 4;
                v60 = v34;
                do
                {
                  v61 = 255;
                  if (v60 < v14 && v60 >= a2)
                  {
                    v61 = *v60;
                  }

                  v32 = v61 | (v32 << 8);
                  ++v60;
                  --v59;
                }

                while (v59);
              }

              v62 = v32 << (16 - v33);
              v63 = v33 + 16;
              ++v34;
              v56 |= v32 >> v63;
              if (v63)
              {
                v58 = v62;
              }

              else
              {
                v58 = 0;
              }

              if (v63)
              {
                v57 = v63;
              }

              else
              {
                v57 = 0;
              }
            }

            else
            {
              v58 = v32 << 16;
            }

            v48->mCoordinates[0] = -(bswap32(v56) >> 16);
            v64 = HIBYTE(v58);
            v33 = v57 - 8;
            if (v57 - 8 < 0)
            {
              if (((v14 - v34) & ~((v14 - v34) >> 63) & 0xFFFFFFFC) != 0 && v34 >= a2)
              {
                v58 = bswap32(*v34);
              }

              else
              {
                v65 = 4;
                v66 = v34;
                do
                {
                  v67 = 255;
                  if (v66 < v14 && v66 >= a2)
                  {
                    v67 = *v66;
                  }

                  v58 = v67 | (v58 << 8);
                  ++v66;
                  --v65;
                }

                while (v65);
              }

              v68 = v58 << (8 - v57);
              v69 = v57 + 24;
              ++v34;
              v64 |= v58 >> v69;
              if (v69)
              {
                v32 = v68;
              }

              else
              {
                v32 = 0;
              }

              if (v69)
              {
                v33 = v69;
              }

              else
              {
                v33 = 0;
              }
            }

            else
            {
              v32 = v58 << 8;
            }

            v55 = v64;
LABEL_128:
            v48->mCoordinates[1] = v55;
            v48->mCoordinates[2] = 1.0;
          }

LABEL_129:
          if (++v47 == v28)
          {
            goto LABEL_130;
          }
        }

        if (v49 > 0x2Cu)
        {
          goto LABEL_129;
        }

        v48->mChannelLabel = sChannelLabelsForISOSpeakerPositions[v49];
        if (v49 - 39 > 1)
        {
          goto LABEL_129;
        }

        *&v48->mChannelLabel = 0x200000064;
        v54 = (&sCoordinatesForISOSpeakerPositions + 8 * v49);
        v48->mCoordinates[0] = -*v54;
        v55 = v54[1];
        goto LABEL_128;
      }
    }
  }

  return v9;
}

void sub_18F7A3B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TryToCollapseAudioChannelLayoutToATag(unsigned int *a1, AudioChannelLayout *a2)
{
  v7 = -65536;
  result = AudioFormatProperty_TagForChannelLayout(a2, &v7);
  if (!result)
  {
    v5 = v7;
    v6 = v7 == -65536 || v7 == 0;
    if (!v6 && v7 != 0x10000)
    {
      a2->mChannelBitmap = 0;
      a2->mNumberChannelDescriptions = 0;
      a2->mChannelLayoutTag = v5;
      *a1 = 12;
    }
  }

  return result;
}

uint64_t AudioFileStreamObject::DetermineBytesAndPacketsWithinByteRangeFromStartingPacket(AudioFileStreamObject *this, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v6 = *(this + 10);
  if (v6)
  {
    v7 = *a3 / v6;
    *a4 = v7;
    v8 = *(this + 10) * v7;
LABEL_3:
    result = 0;
    *a3 = v8;
    return result;
  }

  v10 = *(this + 19);
  if (v10)
  {
    if (*(v10 + 24) <= a2)
    {
      v8 = 0;
      *a4 = 0;
    }

    else
    {
      CompressedPacketTable::operator[](&v18, v10, a2);
      v12 = *(v10 + 24);
      v13 = a2;
      v14 = v12 - a2;
      if (v12 != a2)
      {
        v15 = v18 + *a3;
        v13 = a2;
        do
        {
          CompressedPacketTable::operator[](&v18, v10, v13 + (v14 >> 1));
          if (v18 + v19 > v15)
          {
            v14 >>= 1;
          }

          else
          {
            v13 += (v14 >> 1) + 1;
            v14 += ~(v14 >> 1);
          }
        }

        while (v14);
      }

      *a4 = v13 - a2;
      CompressedPacketTable::operator[](&v18, v10, v13 - 1);
      v16 = v18;
      CompressedPacketTable::operator[](&v18, v10, v13 - 1);
      v17 = v16 + v19;
      CompressedPacketTable::operator[](&v18, v10, a2);
      v8 = v17 - v18;
    }

    goto LABEL_3;
  }

  return 1970170687;
}

uint64_t AudioFileStreamObject::ByteToPacket(AudioFileStreamObject *this, AudioBytePacketTranslation *a2)
{
  mByte = a2->mByte;
  if (a2->mByte < 0)
  {
    return 1885563711;
  }

  v4 = *(this + 10);
  if (v4)
  {
    result = 0;
    a2->mPacket = mByte / v4;
    *&a2->mByteOffsetInPacket = (mByte % v4);
    return result;
  }

  v6 = *(this + 19);
  if (!v6)
  {
    v15 = *(this + 11);
    if (v15 < 1 || (v16 = *(this + 12), v16 < 1))
    {
      v16 = *(this + 26);
      if (v16 < 1)
      {
        return 1836020325;
      }

      v17 = *(this + 27);
    }

    else
    {
      v17 = v15;
    }

    result = 0;
    v19 = v17 / v16;
    v20 = mByte / v19;
    a2->mPacket = vcvtmd_s64_f64(v20);
    a2->mByteOffsetInPacket = vcvtmd_u64_f64(v19 * (v20 - floor(v20)));
    a2->mFlags = 1;
    return result;
  }

  v26[1] = 0;
  v26[2] = 0;
  v26[0] = mByte;
  v7 = *(v6 + 24);
  v27 = byte_less_than;
  v28 = v6;
  v29 = 0;
  std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,CompressedPacketTable::iterator,AudioStreamPacketDescriptionExtended,std::__identity,BOOL (*)(AudioStreamPacketDescriptionExtended const&,AudioStreamPacketDescriptionExtended const&)>(&v23, &v28, v26, v7, &v27);
  v8 = *(v6 + 24);
  v9 = v24;
  if (v24 == v8)
  {
    v10 = v8 - 1;
    CompressedPacketTable::operator[](&v28, v6, v8 - 1);
    v11 = v28 + HIDWORD(v29);
    v12 = a2->mByte;
    if (a2->mByte >= v11)
    {
      v21 = v11 / *(v6 + 24);
      v22 = v12 / v21;
      v10 = vcvtmd_s64_f64(v22);
      v14 = vcvtmd_u64_f64(v21 * (v22 - floor(v22)));
      v13 = 1;
    }

    else
    {
      v13 = 0;
      v14 = v12 - v28;
    }

    a2->mPacket = v10;
    a2->mByteOffsetInPacket = v14;
    a2->mFlags = v13;
  }

  else
  {
    a2->mPacket = v24;
    v18 = a2->mByte;
    CompressedPacketTable::operator[](v25, v23, v9);
    *&a2->mByteOffsetInPacket = (v18 - v25[0]);
  }

  return 0;
}

void *std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,CompressedPacketTable::iterator,AudioStreamPacketDescriptionExtended,std::__identity,BOOL (*)(AudioStreamPacketDescriptionExtended const&,AudioStreamPacketDescriptionExtended const&)>(void *result, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t (**a5)(_BYTE *, uint64_t))
{
  v6 = result;
  if (a4)
  {
    v8 = a4;
    do
    {
      v10 = v8 >> 1;
      v11 = *a2;
      v12 = a2[1] + (v8 >> 1);
      CompressedPacketTable::operator[](v14, *a2, v12);
      result = (*a5)(v14, a3);
      if (result)
      {
        *a2 = v11;
        a2[1] = v12 + 1;
        v10 = v8 + ~v10;
      }

      v8 = v10;
    }

    while (v10);
  }

  v13 = a2[1];
  *v6 = *a2;
  v6[1] = v13;
  return result;
}

uint64_t AudioFileStreamObject::PacketToByte(AudioFileStreamObject *this, AudioBytePacketTranslation *a2)
{
  result = 1885563711;
  mPacket = a2->mPacket;
  if ((mPacket & 0x8000000000000000) == 0)
  {
    v6 = *(this + 10);
    if (v6)
    {
      v7 = 0;
      v8 = mPacket * v6;
LABEL_4:
      a2->mByte = v8;
LABEL_5:
      result = 0;
      a2->mFlags = v7;
      return result;
    }

    v9 = *(this + 19);
    if (!v9)
    {
      v10 = *(this + 11);
      if (v10 < 1 || (v11 = *(this + 12), v11 < 1))
      {
        v11 = *(this + 26);
        if (v11 < 1)
        {
          return 1836020325;
        }

        v12 = *(this + 27);
      }

      else
      {
        v12 = v10;
      }

      a2->mByte = vcvtmd_s64_f64(v12 / v11 * mPacket);
      v7 = 1;
      goto LABEL_5;
    }

    if (mPacket < *(v9 + 24))
    {
      CompressedPacketTable::operator[](v13, v9, mPacket);
      v7 = 0;
      v8 = v13[0];
      goto LABEL_4;
    }
  }

  return result;
}