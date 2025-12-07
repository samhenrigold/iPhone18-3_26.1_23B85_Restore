uint64_t BBUEUR2Programmer::collectCoreDump(BBUFeedback **a1, const char *a2)
{
  v89[2] = *MEMORY[0x1E69E9840];
  if (capabilities::coredump::getPersonality(a1) == 3)
  {
    if (a2[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v74, *a2, *(a2 + 1));
    }

    else
    {
      v74 = *a2;
    }

    v31 = operator new[](0x10000uLL);
    v75 = 0;
    BBUFeedback::handleBeginPhase(a1[1], "Collecting core dump...");
    if (ETLSAHGetDebugRecordCount64Bit())
    {
      if (v75 >> 58)
      {
        v32 = -1;
      }

      else
      {
        v32 = v75 << 6;
      }

      v33 = operator new[](v32);
      v34 = ETLSAHGetDebugTable64Bit();
      if (((v75 != 0) & v34) == 1)
      {
        v69 = v31;
        v35 = 0;
        v67 = v33;
        v36 = v33;
        while (1)
        {
          BBUFeedback::handleComment(a1[1], "Record %llu: Preference 0x%x, Base 0x%llx, Length 0x%llx", v35, *v36, *(v36 + 1), *(v36 + 2));
          BBUFeedback::handleComment(a1[1], "\tDescription: '%s', Filename '%s'", v36 + 24, v36 + 44);
          if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v88, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
          }

          else
          {
            v88 = v74;
          }

          v87 = 0xAAAAAAAAAAAAAAAALL;
          *&v37 = 0xAAAAAAAAAAAAAAAALL;
          *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v85[16] = v37;
          v86 = v37;
          v84 = v37;
          *v85 = v37;
          v83 = v37;
          __p = 0;
          v82 = 0uLL;
          v38 = SHIBYTE(v88.__r_.__value_.__r.__words[2]);
          if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v88.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v88.__r_.__value_.__l.__size_;
          }

          v40 = size + 1;
          if (size + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v40 < 0x17)
          {
            memset(&v79, 0, sizeof(v79));
            v42 = &v79;
            *(&v79.__r_.__value_.__s + 23) = size + 1;
            if (!size)
            {
              goto LABEL_104;
            }
          }

          else
          {
            if ((v40 | 7) == 0x17)
            {
              v41 = 25;
            }

            else
            {
              v41 = (v40 | 7) + 1;
            }

            v42 = operator new(v41);
            v79.__r_.__value_.__l.__size_ = size + 1;
            v79.__r_.__value_.__r.__words[2] = v41 | 0x8000000000000000;
            v79.__r_.__value_.__r.__words[0] = v42;
          }

          if (v38 >= 0)
          {
            v43 = &v88;
          }

          else
          {
            v43 = v88.__r_.__value_.__r.__words[0];
          }

          memmove(v42, v43, size);
LABEL_104:
          *&v42[size] = 47;
          v44 = strlen(v36 + 44);
          v45 = std::string::append(&v79, v36 + 44, v44);
          v46 = v45->__r_.__value_.__r.__words[0];
          v89[0] = v45->__r_.__value_.__l.__size_;
          *(v89 + 7) = *(&v45->__r_.__value_.__r.__words[1] + 7);
          v47 = HIBYTE(v45->__r_.__value_.__r.__words[2]);
          v45->__r_.__value_.__l.__size_ = 0;
          v45->__r_.__value_.__r.__words[2] = 0;
          v45->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v82) < 0)
          {
            operator delete(__p);
          }

          __p = v46;
          *&v82 = v89[0];
          *(&v82 + 7) = *(v89 + 7);
          HIBYTE(v82) = v47;
          if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v79.__r_.__value_.__l.__data_);
            v47 = HIBYTE(v82);
            v46 = __p;
          }

          if (v47 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = v46;
          }

          v49 = open_dprotected_np(p_p, 1793, 4, 0, 420);
          if ((v49 & 0x80000000) == 0)
          {
            if (TelephonyUtilTransportCreateWithFD())
            {
              v50 = *(v36 + 2);
              v79.__r_.__value_.__r.__words[0] = 0;
              v79.__r_.__value_.__l.__size_ = a1;
              v79.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
              v80 = 0;
              if (v50 >= 0x28000)
              {
                v57 = v50 >> 15;
                if (v57 <= 0x64)
                {
                  v51 = 0x64 / v57;
                }

                else
                {
                  LODWORD(v51) = 1;
                }
              }

              else
              {
                LODWORD(v51) = 20;
              }

              LODWORD(v79.__r_.__value_.__r.__words[2]) = v51;
              v76.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
              v76.__r_.__value_.__l.__size_ = 0x40000000;
              v76.__r_.__value_.__r.__words[2] = ___ZN17BBUEUR2Programmer21captureRecord64Bit_nlENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEPK33ETLSAHDebugDataFieldRecord64Bit_t_block_invoke;
              v77 = &__block_descriptor_tmp_47_0;
              v78 = a1;
              v58 = ETLSAHGetRecordEx64Bit();
              if ((v58 & 1) == 0)
              {
                if (gBBULogMaskGet(void)::once == -1)
                {
                  if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
                  {
LABEL_132:
                    if ((gBBULogVerbosity & 0x80000000) == 0)
                    {
                      _BBULog(1, 0, "BBUProgrammer", &str_8_3, "failed getting record\n");
                    }
                  }
                }

                else
                {
                  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                  if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
                  {
                    goto LABEL_132;
                  }
                }
              }

              v52 = v58 ^ 1;
LABEL_135:
              close(v49);
              TelephonyUtilTransportFree();
              goto LABEL_136;
            }

            if (gBBULogMaskGet(void)::once == -1)
            {
              v52 = 1;
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
              {
                goto LABEL_135;
              }
            }

            else
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              v52 = 1;
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
              {
                goto LABEL_135;
              }
            }

            if ((gBBULogVerbosity & 0x80000000) == 0)
            {
              _BBULog(1, 0, "BBUProgrammer", &str_8_3, "failed creating transport with fd %i\n", v49);
            }

            goto LABEL_135;
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            v52 = 1;
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
            {
              goto LABEL_136;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            v52 = 1;
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
            {
              goto LABEL_136;
            }
          }

          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            v53 = SHIBYTE(v82);
            v54 = __p;
            v55 = __error();
            if (v53 >= 0)
            {
              v56 = &__p;
            }

            else
            {
              v56 = v54;
            }

            _BBULog(1, 0, "BBUProgrammer", &str_8_3, "failed opening file %s with fd %i errno %d\n", v56, v49, *v55);
          }

LABEL_136:
          if (SHIBYTE(v82) < 0)
          {
            operator delete(__p);
            if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_141:
              operator delete(v88.__r_.__value_.__l.__data_);
              v34 = v52 == 0;
              if (++v35 >= v75)
              {
                goto LABEL_161;
              }

              goto LABEL_142;
            }
          }

          else if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_141;
          }

          v34 = v52 == 0;
          if (++v35 >= v75)
          {
            goto LABEL_161;
          }

LABEL_142:
          v36 += 64;
          if (v52)
          {
LABEL_161:
            v33 = v67;
            v31 = v69;
            if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS != -1)
            {
LABEL_162:
              dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
              if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
              {
LABEL_163:
                dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
                if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
                {
LABEL_155:
                  BBUFeedback::handleComment(a1[1], "Parsing crash reason...");
                  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v76, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v76 = v74;
                  }

                  (*(*a1 + 26))(a1, &v76);
                  if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_186;
                  }

                  operator delete(v76.__r_.__value_.__l.__data_);
                  if (!v34)
                  {
                    goto LABEL_190;
                  }

LABEL_187:
                  if (!ETLSAHCommandCreateReset())
                  {
                    goto LABEL_190;
                  }

                  v64 = ETLSAHCommandSend();
                  goto LABEL_191;
                }

LABEL_154:
                if (BBUpdaterCommon::inRestoreOS(void)::recoveryOS)
                {
                  goto LABEL_155;
                }

LABEL_186:
                if (v34)
                {
                  goto LABEL_187;
                }

LABEL_190:
                v64 = 0;
LABEL_191:
                if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v65 = &v74;
                }

                else
                {
                  v65 = v74.__r_.__value_.__r.__words[0];
                }

                BBUFeedback::handleComment(a1[1], "Final coredump at %s:", v65);
                *&v83 = MEMORY[0x1E69E9820];
                *(&v83 + 1) = 1174405120;
                *&v84 = ___ZN17BBUEUR2Programmer20collectCoreDump64BitENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
                *(&v84 + 1) = &__block_descriptor_tmp_38;
                *v85 = a1;
                if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                {
                  std::string::__init_copy_ctor_external(&v85[8], v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
                }

                else
                {
                  *&v85[8] = v74;
                }

                ctu::fs::iterate_folder();
                if (v64)
                {
                  v62 = v52;
                }

                else
                {
                  v62 = 3;
                }

                operator delete[](v31);
                if (v33)
                {
                  operator delete[](v33);
                }

                (*(*a1[1] + 16))(a1[1], v62);
                if ((v85[31] & 0x80000000) != 0)
                {
                  operator delete(*&v85[8]);
                  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_206;
                  }
                }

                else if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
                {
LABEL_206:
                  v63 = v74.__r_.__value_.__r.__words[0];
LABEL_207:
                  operator delete(v63);
                }

                return v62;
              }

LABEL_153:
              if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
              {
                goto LABEL_155;
              }

              goto LABEL_154;
            }

LABEL_152:
            if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
            {
              goto LABEL_163;
            }

            goto LABEL_153;
          }
        }
      }
    }

    else
    {
      BBUFeedback::handleComment(a1[1], "Failed to get debug table\n");
      v33 = 0;
      v34 = 0;
    }

    v52 = 0;
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS != -1)
    {
      goto LABEL_162;
    }

    goto LABEL_152;
  }

  v4 = operator new[](0x10000uLL);
  LODWORD(v89[0]) = -1431655766;
  BBUFeedback::handleBeginPhase(a1[1], "Collecting core dump...");
  v68 = v4;
  if ((ETLSAHGetDebugRecordCount() & 1) == 0)
  {
    BBUFeedback::handleComment(a1[1], "Failed to get debug table\n");
    v70 = 0;
    v24 = 0;
    v6 = 0;
LABEL_74:
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS != -1)
    {
      goto LABEL_158;
    }

LABEL_75:
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
    {
      goto LABEL_159;
    }

    goto LABEL_76;
  }

  if (is_mul_ok(SLODWORD(v89[0]), 0x34uLL))
  {
    v5 = 52 * SLODWORD(v89[0]);
  }

  else
  {
    v5 = -1;
  }

  v70 = operator new[](v5);
  v6 = ETLSAHGetDebugTable();
  if (((SLODWORD(v89[0]) > 0) & v6) == 1)
  {
    v7 = 1;
    v8 = v70;
    while (1)
    {
      BBUFeedback::handleComment(a1[1], "Record %u: Preference 0x%x, Base 0x%x, Length 0x%x", v7 - 1, *v8, *(v8 + 1), *(v8 + 2));
      BBUFeedback::handleComment(a1[1], "\tDescription: '%s', Filename '%s'", v8 + 12, v8 + 32);
      if (a2[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v73, *a2, *(a2 + 1));
      }

      else
      {
        v73 = *a2;
      }

      v87 = 0xAAAAAAAAAAAAAAAALL;
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v85[16] = v9;
      v86 = v9;
      v84 = v9;
      *v85 = v9;
      v83 = v9;
      __p = 0;
      v82 = 0uLL;
      v10 = SHIBYTE(v73.__r_.__value_.__r.__words[2]);
      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v11 = v73.__r_.__value_.__l.__size_;
      }

      v12 = v11 + 1;
      if (v11 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 < 0x17)
      {
        memset(&v79, 0, sizeof(v79));
        v14 = &v79;
        *(&v79.__r_.__value_.__s + 23) = v11 + 1;
        if (!v11)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if ((v12 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v12 | 7) + 1;
        }

        v14 = operator new(v13);
        v79.__r_.__value_.__l.__size_ = v11 + 1;
        v79.__r_.__value_.__r.__words[2] = v13 | 0x8000000000000000;
        v79.__r_.__value_.__r.__words[0] = v14;
      }

      if (v10 >= 0)
      {
        v15 = &v73;
      }

      else
      {
        v15 = v73.__r_.__value_.__r.__words[0];
      }

      memmove(v14, v15, v11);
LABEL_27:
      *&v14[v11] = 47;
      v16 = strlen(v8 + 32);
      v17 = std::string::append(&v79, v8 + 32, v16);
      v18 = v17->__r_.__value_.__r.__words[0];
      v88.__r_.__value_.__r.__words[0] = v17->__r_.__value_.__l.__size_;
      *(v88.__r_.__value_.__r.__words + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
      v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v82) < 0)
      {
        operator delete(__p);
      }

      __p = v18;
      *&v82 = v88.__r_.__value_.__r.__words[0];
      *(&v82 + 7) = *(v88.__r_.__value_.__r.__words + 7);
      HIBYTE(v82) = v19;
      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
        v19 = HIBYTE(v82);
        v18 = __p;
      }

      if (v19 >= 0)
      {
        v20 = &__p;
      }

      else
      {
        v20 = v18;
      }

      v21 = open_dprotected_np(v20, 1793, 4, 0, 420);
      if ((v21 & 0x80000000) == 0)
      {
        if (TelephonyUtilTransportCreateWithFD())
        {
          v22 = *(v8 + 2);
          v79.__r_.__value_.__r.__words[0] = 0;
          v79.__r_.__value_.__l.__size_ = a1;
          v79.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
          v80 = 0;
          if (v22 >= 0x28000)
          {
            v29 = v22 >> 15;
            if (v29 <= 0x64)
            {
              v23 = 0x64 / v29;
            }

            else
            {
              v23 = 1;
            }
          }

          else
          {
            v23 = 20;
          }

          LODWORD(v79.__r_.__value_.__r.__words[2]) = v23;
          v76.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
          v76.__r_.__value_.__l.__size_ = 0x40000000;
          v76.__r_.__value_.__r.__words[2] = ___ZN17BBUEUR2Programmer16captureRecord_nlENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEPK28ETLSAHDebugDataFieldRecord_t_block_invoke;
          v77 = &__block_descriptor_tmp_44;
          v78 = a1;
          v30 = ETLSAHGetRecordEx();
          if ((v30 & 1) == 0)
          {
            if (gBBULogMaskGet(void)::once == -1)
            {
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
              {
LABEL_55:
                if ((gBBULogVerbosity & 0x80000000) == 0)
                {
                  _BBULog(1, 0, "BBUProgrammer", &str_8_3, "failed getting record\n");
                }
              }
            }

            else
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
              {
                goto LABEL_55;
              }
            }
          }

          v24 = v30 ^ 1;
LABEL_58:
          close(v21);
          TelephonyUtilTransportFree();
          goto LABEL_59;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          v24 = 1;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_58;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v24 = 1;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_58;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(1, 0, "BBUProgrammer", &str_8_3, "failed creating transport with fd %i\n", v21);
        }

        goto LABEL_58;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        v24 = 1;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_59;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v24 = 1;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_59;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v25 = SHIBYTE(v82);
        v26 = __p;
        v27 = __error();
        if (v25 >= 0)
        {
          v28 = &__p;
        }

        else
        {
          v28 = v26;
        }

        _BBULog(1, 0, "BBUProgrammer", &str_8_3, "failed opening file %s with fd %i errno %d\n", v28, v21, *v27);
      }

LABEL_59:
      if (SHIBYTE(v82) < 0)
      {
        operator delete(__p);
        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_64:
          operator delete(v73.__r_.__value_.__l.__data_);
          v6 = v24 == 0;
          if (v7 >= SLODWORD(v89[0]))
          {
            goto LABEL_74;
          }

          goto LABEL_65;
        }
      }

      else if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_64;
      }

      v6 = v24 == 0;
      if (v7 >= SLODWORD(v89[0]))
      {
        goto LABEL_74;
      }

LABEL_65:
      ++v7;
      v8 += 52;
      if (v24)
      {
        goto LABEL_74;
      }
    }
  }

  v24 = 0;
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    goto LABEL_75;
  }

LABEL_158:
  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
  {
LABEL_159:
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_76:
  if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
  {
    goto LABEL_78;
  }

LABEL_77:
  if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0)
  {
    goto LABEL_167;
  }

LABEL_78:
  BBUFeedback::handleComment(a1[1], "Parsing crash reason...");
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v72, *a2, *(a2 + 1));
  }

  else
  {
    v72 = *a2;
  }

  (*(*a1 + 26))(a1, &v72);
  if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_167:
    if (!v6)
    {
      goto LABEL_172;
    }

    goto LABEL_168;
  }

  operator delete(v72.__r_.__value_.__l.__data_);
  if (!v6)
  {
LABEL_172:
    v59 = 0;
    v60 = a1[1];
    v61 = a2;
    if ((a2[23] & 0x80000000) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_173;
  }

LABEL_168:
  if (!ETLSAHCommandCreateReset())
  {
    goto LABEL_172;
  }

  v59 = ETLSAHCommandSend();
  v60 = a1[1];
  v61 = a2;
  if ((a2[23] & 0x80000000) == 0)
  {
    goto LABEL_174;
  }

LABEL_173:
  v61 = *a2;
LABEL_174:
  BBUFeedback::handleComment(v60, "Final coredump at %s:", v61);
  if ((a2[23] & 0x8000000000000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v71, *a2, *(a2 + 1));
  }

  else
  {
    v71 = *a2;
  }

  ctu::fs::iterate_folder();
  if (v59)
  {
    v62 = v24;
  }

  else
  {
    v62 = 3;
  }

  operator delete[](v68);
  if (v70)
  {
    operator delete[](v70);
  }

  (*(*a1[1] + 16))(a1[1], v62);
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    v63 = v71.__r_.__value_.__r.__words[0];
    goto LABEL_207;
  }

  return v62;
}

void sub_1E531FA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN17BBUEUR2Programmer15collectCoreDumpENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v9.st_blksize = v4;
  *v9.st_qspare = v4;
  v9.st_birthtimespec = v4;
  *&v9.st_size = v4;
  v9.st_mtimespec = v4;
  v9.st_ctimespec = v4;
  *&v9.st_uid = v4;
  v9.st_atimespec = v4;
  *&v9.st_dev = v4;
  v5 = (a2 + 21);
  memset(&v8, 170, sizeof(v8));
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v8 = *(a1 + 40);
  }

  ctu::path_join_impl();
  v6 = *(a2 + 20);
  if (v6 == 4)
  {
    BBUFeedback::handleComment(*(v3 + 8), "\t%-30s  <DIR>", v5);
  }

  else if (v6 == 10 || v6 == 8)
  {
    memset(&v9, 0, sizeof(v9));
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v8;
    }

    else
    {
      v7 = v8.__r_.__value_.__r.__words[0];
    }

    stat(v7, &v9);
    BBUFeedback::handleComment(*(v3 + 8), "\t%-30s  0x%-10llx", v5, v9.st_size);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1E531FD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void ___ZN17BBUEUR2Programmer20collectCoreDump64BitENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v9.st_blksize = v4;
  *v9.st_qspare = v4;
  v9.st_birthtimespec = v4;
  *&v9.st_size = v4;
  v9.st_mtimespec = v4;
  v9.st_ctimespec = v4;
  *&v9.st_uid = v4;
  v9.st_atimespec = v4;
  *&v9.st_dev = v4;
  v5 = (a2 + 21);
  memset(&v8, 170, sizeof(v8));
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v8 = *(a1 + 40);
  }

  ctu::path_join_impl();
  v6 = *(a2 + 20);
  if (v6 == 4)
  {
    BBUFeedback::handleComment(*(v3 + 8), "\t%-30s  <DIR>", v5);
  }

  else if (v6 == 10 || v6 == 8)
  {
    memset(&v9, 0, sizeof(v9));
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v8;
    }

    else
    {
      v7 = v8.__r_.__value_.__r.__words[0];
    }

    stat(v7, &v9);
    BBUFeedback::handleComment(*(v3 + 8), "\t%-30s  0x%-10llx", v5, v9.st_size);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1E531FEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN17BBUEUR2Programmer16captureRecord_nlENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEPK28ETLSAHDebugDataFieldRecord_t_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[1];
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      return;
    }
  }

  else
  {
    v7 = a3;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    a3 = v7;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      return;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    v6 = (v4 - v5) * 100.0 / (v3 - v5);
    _BBULog(13, 1, "BBUProgrammer", &str_8_3, "%s: ... %0.1f%c\n", (a3 + 32), v6, 37);
  }
}

void ___ZN17BBUEUR2Programmer21captureRecord64Bit_nlENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEPK33ETLSAHDebugDataFieldRecord64Bit_t_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[1];
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      return;
    }
  }

  else
  {
    v6 = a3;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    a3 = v6;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      return;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    _BBULog(13, 1, "BBUProgrammer", &str_8_3, "%s: ... %0.1f%c\n", (a3 + 44), (v4 - v5) * 100.0 / (v3 - v5), 37);
  }
}

uint64_t BBUEUR2Programmer::sendImageInternal_nl(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (*(*a2 + 32))(a2);
  v6 = *(a1 + 8);
  *(&v56.__r_.__value_.__s + 23) = 15;
  strcpy(&v56, "Sending Image '");
  v7 = (*(*a2 + 16))(a2);
  v8 = 0x7FFFFFFFFFFFFFF7;
  v9 = strlen(v7);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    p_dst = operator new(v12);
    v54 = v10;
    v55 = v12 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_9;
  }

  HIBYTE(v55) = v9;
  p_dst = &__dst;
  if (v9)
  {
LABEL_9:
    memmove(p_dst, v7, v10);
  }

  *(p_dst + v10) = 0;
  if (v55 >= 0)
  {
    v13 = &__dst;
  }

  else
  {
    v13 = __dst;
  }

  if (v55 >= 0)
  {
    v14 = HIBYTE(v55);
  }

  else
  {
    v14 = v54;
  }

  v15 = std::string::append(&v56, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v58 = v15->__r_.__value_.__r.__words[2];
  *v57 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = SHIBYTE(v58);
  if ((SHIBYTE(v58) & 0x8000000000000000) == 0)
  {
    v18 = v57;
    if (SHIBYTE(v58) == 22)
    {
      v19 = v5;
      v20 = 22;
      v21 = 23;
LABEL_22:
      v22 = 2 * v20;
      if (v21 > 2 * v20)
      {
        v22 = v21;
      }

      if ((v22 | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (v22 | 7) + 1;
      }

      if (v22 >= 0x17)
      {
        v8 = v23;
      }

      else
      {
        v8 = 23;
      }

      v24 = v20 == 22;
      goto LABEL_31;
    }

LABEL_37:
    *(v17 + v18) = 39;
    v28 = v17 + 1;
    if (SHIBYTE(v58) < 0)
    {
      v57[1] = v28;
    }

    else
    {
      HIBYTE(v58) = v28 & 0x7F;
    }

    v27 = &v28[v18];
    goto LABEL_41;
  }

  v17 = v57[1];
  v21 = v58 & 0x7FFFFFFFFFFFFFFFLL;
  v20 = (v58 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v20 != v57[1])
  {
    v18 = v57[0];
    goto LABEL_37;
  }

  if (v21 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v18 = v57[0];
  v19 = v5;
  if (v20 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_22;
  }

  v24 = 0;
LABEL_31:
  v25 = operator new(v8);
  v26 = v25;
  if (v20)
  {
    memmove(v25, v18, v20);
  }

  v26[v20] = 39;
  if (!v24)
  {
    operator delete(v18);
  }

  v57[1] = v21;
  v58 = v8 | 0x8000000000000000;
  v57[0] = v26;
  v27 = &v26[v21];
  v5 = v19;
LABEL_41:
  *v27 = 0;
  *__p = *v57;
  v60 = v58;
  v57[1] = 0;
  v58 = 0;
  v57[0] = 0;
  (*(*v6 + 32))(v6, __p, 0, v5);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v58) & 0x80000000) == 0)
    {
LABEL_43:
      if ((SHIBYTE(v55) & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

LABEL_59:
      operator delete(__dst);
      if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_60;
    }
  }

  else if ((SHIBYTE(v58) & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

  operator delete(v57[0]);
  if (SHIBYTE(v55) < 0)
  {
    goto LABEL_59;
  }

LABEL_44:
  if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_60:
  operator delete(v56.__r_.__value_.__l.__data_);
LABEL_45:
  v29 = operator new[](0x100000uLL);
  LODWORD(__p[0]) = -1431655766;
  LODWORD(v57[0]) = -1431655766;
  LODWORD(v56.__r_.__value_.__l.__data_) = -1431655766;
  Current = CFAbsoluteTimeGetCurrent();
  if ((ETLSAHCommandReceive() & 1) == 0)
  {
    goto LABEL_51;
  }

  Data = ETLSAHCommandParseReadData();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      goto LABEL_50;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      goto LABEL_50;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(5, 0, "BBUProgrammer", &str_8_3, "First request image ID %u, data offset %u, data length %u\n", LODWORD(__p[0]), LODWORD(v57[0]), LODWORD(v56.__r_.__value_.__l.__data_));
  }

LABEL_50:
  if (Data)
  {
    goto LABEL_114;
  }

LABEL_51:
  if (!ETLSAHCommandReceive())
  {
    goto LABEL_66;
  }

  v32 = ETLSAHCommandParseReadData();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      goto LABEL_65;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
LABEL_65:
      if (v32)
      {
        goto LABEL_114;
      }

      goto LABEL_66;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_65;
  }

  _BBULog(5, 0, "BBUProgrammer", &str_8_3, "First request image ID %u, data offset %u, data length %u\n", LODWORD(__p[0]), LODWORD(v57[0]), LODWORD(v56.__r_.__value_.__l.__data_));
  if (v32)
  {
    goto LABEL_114;
  }

LABEL_66:
  if (!ETLSAHCommandReceive())
  {
    goto LABEL_74;
  }

  v33 = ETLSAHCommandParseReadData();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      goto LABEL_73;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
LABEL_73:
      if (v33)
      {
        goto LABEL_114;
      }

      goto LABEL_74;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_73;
  }

  _BBULog(5, 0, "BBUProgrammer", &str_8_3, "First request image ID %u, data offset %u, data length %u\n", LODWORD(__p[0]), LODWORD(v57[0]), LODWORD(v56.__r_.__value_.__l.__data_));
  if (v33)
  {
    goto LABEL_114;
  }

LABEL_74:
  if (!ETLSAHCommandReceive())
  {
    goto LABEL_82;
  }

  v34 = ETLSAHCommandParseReadData();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      goto LABEL_81;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
LABEL_81:
      if (v34)
      {
        goto LABEL_114;
      }

      goto LABEL_82;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_81;
  }

  _BBULog(5, 0, "BBUProgrammer", &str_8_3, "First request image ID %u, data offset %u, data length %u\n", LODWORD(__p[0]), LODWORD(v57[0]), LODWORD(v56.__r_.__value_.__l.__data_));
  if (v34)
  {
    goto LABEL_114;
  }

LABEL_82:
  if (!ETLSAHCommandReceive())
  {
    goto LABEL_90;
  }

  v35 = ETLSAHCommandParseReadData();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      goto LABEL_89;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
LABEL_89:
      if (v35)
      {
        goto LABEL_114;
      }

      goto LABEL_90;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_89;
  }

  _BBULog(5, 0, "BBUProgrammer", &str_8_3, "First request image ID %u, data offset %u, data length %u\n", LODWORD(__p[0]), LODWORD(v57[0]), LODWORD(v56.__r_.__value_.__l.__data_));
  if (v35)
  {
    goto LABEL_114;
  }

LABEL_90:
  if (!ETLSAHCommandReceive())
  {
    goto LABEL_98;
  }

  v36 = ETLSAHCommandParseReadData();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      goto LABEL_97;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
LABEL_97:
      if (v36)
      {
        goto LABEL_114;
      }

      goto LABEL_98;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_97;
  }

  _BBULog(5, 0, "BBUProgrammer", &str_8_3, "First request image ID %u, data offset %u, data length %u\n", LODWORD(__p[0]), LODWORD(v57[0]), LODWORD(v56.__r_.__value_.__l.__data_));
  if (v36)
  {
    goto LABEL_114;
  }

LABEL_98:
  if (!ETLSAHCommandReceive())
  {
    goto LABEL_106;
  }

  v37 = ETLSAHCommandParseReadData();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
      goto LABEL_105;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
    {
LABEL_105:
      if (v37)
      {
        goto LABEL_114;
      }

LABEL_106:
      if (!ETLSAHCommandReceive())
      {
        goto LABEL_111;
      }

      v38 = ETLSAHCommandParseReadData();
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
        {
          goto LABEL_113;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
        {
          goto LABEL_113;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(5, 0, "BBUProgrammer", &str_8_3, "First request image ID %u, data offset %u, data length %u\n", LODWORD(__p[0]), LODWORD(v57[0]), LODWORD(v56.__r_.__value_.__l.__data_));
        if (v38)
        {
          goto LABEL_114;
        }

        goto LABEL_111;
      }

LABEL_113:
      if (v38)
      {
        goto LABEL_114;
      }

LABEL_111:
      v39 = 0;
      v40 = 3;
      goto LABEL_150;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_105;
  }

  _BBULog(5, 0, "BBUProgrammer", &str_8_3, "First request image ID %u, data offset %u, data length %u\n", LODWORD(__p[0]), LODWORD(v57[0]), LODWORD(v56.__r_.__value_.__l.__data_));
  if ((v37 & 1) == 0)
  {
    goto LABEL_106;
  }

LABEL_114:
  v41 = v56.__r_.__value_.__l.__data_;
  v42 = LODWORD(v56.__r_.__value_.__l.__data_) + LODWORD(v57[0]);
  if (v5 < LODWORD(v56.__r_.__value_.__l.__data_) + LODWORD(v57[0]))
  {
    goto LABEL_164;
  }

  v43 = v5;
  v51 = v5;
  while (2)
  {
    if (v5 == v42)
    {
      (*(*a2 + 16))(a2);
      v41 = v56.__r_.__value_.__l.__data_;
    }

    v44 = 0;
    do
    {
      while (1)
      {
        v45 = v41 >= 0x100000 ? 0x100000 : v41;
        (*(*a2 + 24))(a2, v29, v45, LODWORD(v57[0]));
        v46 = ETLSAHSendReadData();
        if (!v46)
        {
          break;
        }

        if (a3)
        {
          LODWORD(v47) = v57[0];
          BBUFeedback::updateProgressBarItem(*(a1 + 8), v47 / v43);
        }

        v41 = LODWORD(v56.__r_.__value_.__l.__data_) - v45;
        LODWORD(v56.__r_.__value_.__l.__data_) = v41;
        LODWORD(v57[0]) += v45;
        v44 = v46 ^ 1;
        if (!v41)
        {
          goto LABEL_135;
        }
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
        {
          goto LABEL_130;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
        {
          goto LABEL_130;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(5, 0, "BBUProgrammer", &str_8_3, "Failed to send read data at offset 0x%x, chunk %u\n", LODWORD(v57[0]), v45);
      }

LABEL_130:
      if (v44)
      {
        goto LABEL_146;
      }

      sched_yield();
      usleep(0x64u);
      v41 = v56.__r_.__value_.__l.__data_;
      v44 = 1;
    }

    while (LODWORD(v56.__r_.__value_.__l.__data_));
LABEL_135:
    (*(**(a1 + 8) + 40))(*(a1 + 8), LODWORD(v57[0]));
    if (ETLSAHCommandReceive())
    {
      LODWORD(v5) = v51;
      if (v51 != v42)
      {
        if (ETLSAHCommandParseReadData())
        {
          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
            {
LABEL_140:
              if ((gBBULogVerbosity & 0x80000000) == 0)
              {
                _BBULog(5, 0, "BBUProgrammer", &str_8_3, "request image ID %u, data offset 0x%x, data length %u\n", LODWORD(__p[0]), LODWORD(v57[0]), LODWORD(v56.__r_.__value_.__l.__data_));
              }
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
            {
              goto LABEL_140;
            }
          }

          v41 = v56.__r_.__value_.__l.__data_;
          v42 = LODWORD(v56.__r_.__value_.__l.__data_) + LODWORD(v57[0]);
          if (v51 < LODWORD(v56.__r_.__value_.__l.__data_) + LODWORD(v57[0]))
          {
LABEL_164:
            exception = __cxa_allocate_exception(0x210uLL);
            _BBUException::_BBUException(exception, 72, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x3FCu, "Assertion failure(( imagePayloadDataLength >=(dataOffset + dataLength)) && Error: Chunk size is not sufficient to write payload data!)");
          }

          continue;
        }

LABEL_159:
        v39 = 0;
        v40 = 12;
        goto LABEL_150;
      }

      LODWORD(__dst) = -1431655766;
      if (!ETLSAHCommandParseEndOfImageTransfer())
      {
        goto LABEL_159;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
        {
LABEL_156:
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            _BBULog(5, 0, "BBUProgrammer", &str_8_3, "end of image %u\n", LODWORD(__p[0]));
          }
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
        {
          goto LABEL_156;
        }
      }

      v40 = 0;
      v39 = 1;
      goto LABEL_150;
    }

    break;
  }

LABEL_146:
  if (gBBULogMaskGet(void)::once == -1)
  {
    v39 = 0;
    v40 = 12;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_150;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v39 = 0;
    v40 = 12;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_150;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    _BBULog(13, 1, "BBUProgrammer", &str_8_3, "Timeout on receiving read request\n");
    v39 = 0;
  }

LABEL_150:
  (*(**(a1 + 8) + 48))(*(a1 + 8), v40);
  if (v39)
  {
    v48 = CFAbsoluteTimeGetCurrent();
    BBUFeedback::handleComment(*(a1 + 8), "Took %f seconds", v48 - Current);
  }

  operator delete[](v29);
  return v40;
}

void sub_1E5320EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a32 < 0)
  {
    operator delete(a27);
    if (a20 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a26 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a21);
      goto LABEL_8;
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_3;
  }

  if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t BBUEUR2Programmer::processItems(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 74, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x493u, "Assertion failure(fConnected && Not connected to programmer.)");
  }

  pthread_mutex_lock((a1 + 88));
  BBUFeedback::handleBeginPhase(*(a1 + 8), "Sending %zu Images", *(a1 + 56) - 1);
  v15 = *(a1 + 48);
  if (v15 == a1 + 40)
  {
LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  if ((a4 & 1) == 0)
  {
    while (1)
    {
      v18 = *(v15 + 16);
      if (!v18)
      {
        break;
      }

      v17 = (*(*a1 + 168))(a1, v18, a2, a3, 0, a5, a7, a8);
      if (v17)
      {
        goto LABEL_10;
      }

      v15 = *(v15 + 8);
      if (v15 == a1 + 40)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v20 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v20, 66, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x4A1u, "Assertion failure(item && Unable to create programmer item.)");
  }

  v16 = *(v15 + 16);
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = (*(*a1 + 168))(a1, v16, a2, a3, 1, a5, a7, a8);
LABEL_10:
  (*(**(a1 + 8) + 16))(*(a1 + 8), v17);
  pthread_mutex_unlock((a1 + 88));
  return v17;
}

void BBUEUR2Programmer::setDebugParameters(uint64_t a1, uint64_t a2)
{
  memset(v22, 170, sizeof(v22));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a2, *(a2 + 8));
  }

  else
  {
    v21 = *a2;
  }

  ctu::tokenize();
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
    v3 = v22[0];
    v4 = v22[1];
    if (v22[1] == v22[0])
    {
      goto LABEL_39;
    }

    goto LABEL_8;
  }

  v3 = v22[0];
  v4 = v22[1];
  if (v22[1] != v22[0])
  {
LABEL_8:
    v5 = 0;
    v6 = 0;
    do
    {
      v8 = &v3[3 * v5];
      memset(__p, 170, sizeof(__p));
      if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v19, *v8, v8[1]);
      }

      else
      {
        v9 = *v8;
        v19.__r_.__value_.__r.__words[2] = v8[2];
        *&v19.__r_.__value_.__l.__data_ = v9;
      }

      ctu::tokenize();
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
        v10 = __p[0];
        if ((__p[1] - __p[0]) != 24)
        {
LABEL_17:
          if (v10)
          {
            goto LABEL_34;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v10 = __p[0];
        if ((__p[1] - __p[0]) != 24)
        {
          goto LABEL_17;
        }
      }

      memset(&v18, 170, sizeof(v18));
      if (*(v10 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, *v10, v10[1]);
      }

      else
      {
        v11 = *v10;
        v18.__r_.__value_.__r.__words[2] = v10[2];
        *&v18.__r_.__value_.__l.__data_ = v11;
      }

      v12 = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        v13 = v18.__r_.__value_.__r.__words[0];
        if (v18.__r_.__value_.__l.__size_ != 4)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) != 4)
        {
          goto LABEL_29;
        }

        v13 = &v18;
      }

      if (LODWORD(v13->__r_.__value_.__l.__data_) == 1953068401)
      {
        *(a1 + 4292) = 1;
        if ((v12 & 0x80000000) == 0)
        {
LABEL_29:
          v10 = __p[0];
          if (__p[0])
          {
            goto LABEL_34;
          }

          goto LABEL_11;
        }
      }

      else if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      v13 = v18.__r_.__value_.__r.__words[0];
LABEL_33:
      operator delete(v13);
      v10 = __p[0];
      if (__p[0])
      {
LABEL_34:
        v14 = __p[1];
        v7 = v10;
        if (__p[1] != v10)
        {
          do
          {
            v15 = *(v14 - 1);
            v14 -= 3;
            if (v15 < 0)
            {
              operator delete(*v14);
            }
          }

          while (v14 != v10);
          v7 = __p[0];
        }

        __p[1] = v10;
        operator delete(v7);
      }

LABEL_11:
      v3 = v22[0];
      v4 = v22[1];
      v5 = ++v6;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v22[1] - v22[0]) >> 3) > v6);
  }

LABEL_39:
  if (v3)
  {
    v16 = v3;
    if (v4 != v3)
    {
      do
      {
        v17 = *(v4 - 1);
        v4 -= 3;
        if (v17 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v16 = v22[0];
    }

    v22[1] = v3;
    operator delete(v16);
  }
}

void sub_1E5321498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a27 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEUR2Programmer::handleHashesQuery(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v16[12] = v7;
  v15 = v7;
  *v16 = v7;
  v14 = v7;
  if (!ETLSAHCommandParseMaverickSendHashesQuery())
  {
    return 3;
  }

  result = 0;
  if (a3 && a4)
  {
    v9 = operator new(0x68uLL);
    *v9 = &unk_1F5F01FD0;
    v10 = off_1F5F01FF0(v9);
    memcpy(v9 + 8, &v14, v10);
    v11 = (*(*v9 + 32))(v9);
    memcpy(v9 + 40, &v15 + 4, v11);
    v12 = (*(*v9 + 32))(v9);
    memcpy(v9 + 72, &v16[8], v12);
    (*(*v9 + 24))(v9, *(a1 + 8));
    if ((*(*a4 + 16))(a4, *(a1 + 8), v9))
    {
      v13 = 0;
    }

    else
    {
      v13 = 33;
    }

    (*(*v9 + 8))(v9);
    return v13;
  }

  return result;
}

uint64_t BBUEUR2Programmer::handleMaverickHashData_nl(BBUFeedback **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned __int8 *a7)
{
  DigestType = capabilities::updater::getDigestType(a1);
  v14 = DigestType;
  if (DigestType == 1)
  {
    v15 = 32;
    if (!a6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (DigestType != 2)
  {
    BBUFeedback::handleComment(a1[1], "Capabilities returned invalid hash_length");
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 1, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x540u, "Assertion failure(false && Unsupported hash digest type.)");
  }

  v15 = 48;
  if (a6)
  {
LABEL_6:
    BBUFeedback::handleComment(a1[1], "Resuming Maverick Protocol");
  }

LABEL_7:
  v16 = a3;
  if (a2)
  {
    v16 = (*(*a2 + 24))(a2);
  }

  v17 = operator new(v15);
  v18 = &v17[v15];
  __p = v17;
  v55 = &v17[v15];
  bzero(v17, v15);
  v54 = v18;
  if (v16 <= a3)
  {
    v22 = operator new[](v16);
    if (a2)
    {
      *v56 = 0;
      v19 = (*(*a2 + 16))(a2, v22, v16, v56, 0);
      if (v14 == 1)
      {
        CC_SHA256(v22, v16, __p);
      }

      else
      {
        CC_SHA384(v22, v16, __p);
      }

      if (v19)
      {
        BBUFeedback::handleComment(a1[1], "failed copying root manifest to buffer\n");
        if (*v56 == v16)
        {
          v23 = v22;
          goto LABEL_71;
        }

LABEL_79:
        v47 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v47, 76, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x570u, "Assertion failure(( copied == rootManifestSize) && Copied data size does not match root manifest size!)");
      }

      if (*v56 != v16)
      {
        goto LABEL_79;
      }
    }

    else
    {
      BBUFeedback::handleComment(a1[1], "No root manifest present\n");
      bzero(v22, v16);
    }

    v24 = v16 + 1024;
    if (v16 + 1024 != (v16 + 1024) << 31 >> 31)
    {
      v48 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v48, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x582u, "Assertion failure(success)");
    }

    v23 = operator new[](v24);
    if ((ETLSAHCommandCreateMaverickRootManifestResponse() & 1) == 0)
    {
      BBUFeedback::handleComment(a1[1], "failed createing maverick root manifest response\n");
      operator delete[](v22);
      v19 = 11;
      goto LABEL_71;
    }

    operator delete[](v22);
    v25 = ETLSAHCommandSend();
    v26 = a1[1];
    if (v25)
    {
      ctu::hex();
      if (v56[23] >= 0)
      {
        v27 = v56;
      }

      else
      {
        v27 = *v56;
      }

      BBUFeedback::handleComment(v26, "Sent Manifest with length %u, %s", v16, v27);
      if ((v56[23] & 0x80000000) != 0)
      {
        operator delete(*v56);
      }

      if (v24 < v16 || (ETLSAHCommandReceive() & 1) == 0)
      {
        BBUFeedback::handleComment(a1[1], "failed reading hash query results\n");
        pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        v35 = off_1ED944120;
        if (!off_1ED944120)
        {
          v36 = operator new(0x38uLL);
          v37 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
          v38 = dispatch_queue_create("BBUError", v37);
          *v36 = 0;
          v36[1] = 0;
          v36[2] = v38;
          if (v38)
          {
            v39 = v38;
            dispatch_retain(v38);
            v36[3] = 0;
            dispatch_release(v39);
          }

          else
          {
            v36[3] = 0;
          }

          v36[4] = 0;
          v36[5] = 0;
          v36[6] = 0;
          std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(v56, v36);
          v40 = *v56;
          *v56 = 0;
          *&v56[8] = 0;
          v41 = *(&off_1ED944120 + 1);
          off_1ED944120 = v40;
          if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v41->__on_zero_shared)(v41);
            std::__shared_weak_count::__release_weak(v41);
          }

          v42 = *&v56[8];
          if (*&v56[8] && !atomic_fetch_add((*&v56[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v42->__on_zero_shared)(v42);
            std::__shared_weak_count::__release_weak(v42);
          }

          v35 = off_1ED944120;
        }

        v33 = *(&off_1ED944120 + 1);
        v51 = v35;
        v52 = *(&off_1ED944120 + 1);
        if (*(&off_1ED944120 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        v49 = operator new(0x28uLL);
        v50 = xmmword_1E5392800;
        strcpy(v49, "Failed reading hash query results");
        *v56 = MEMORY[0x1E69E9820];
        *&v56[8] = 0x40000000;
        *&v56[16] = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
        v57 = &__block_descriptor_tmp_8;
        v58 = v35;
        v59 = &v49;
        v60 = 47;
        v61 = v56;
        block = MEMORY[0x1E69E9820];
        v63 = 0x40000000;
        v64 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
        v65 = &__block_descriptor_tmp_13_0;
        v66 = v35;
        v67 = &v61;
        v43 = *(v35 + 16);
        if (*(v35 + 24))
        {
          dispatch_async_and_wait(v43, &block);
          if ((SHIBYTE(v50) & 0x80000000) == 0)
          {
            goto LABEL_67;
          }
        }

        else
        {
          dispatch_sync(v43, &block);
          if ((SHIBYTE(v50) & 0x80000000) == 0)
          {
            goto LABEL_67;
          }
        }

        v34 = v49;
LABEL_66:
        operator delete(v34);
LABEL_67:
        if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v33->__on_zero_shared)(v33);
          std::__shared_weak_count::__release_weak(v33);
        }

        v19 = 47;
LABEL_71:
        operator delete[](v23);
        v20 = __p;
        if (!__p)
        {
          return v19;
        }

        goto LABEL_11;
      }

      if ((*(*a1 + 19))(a1, v23, a2, a4))
      {
        BBUFeedback::handleComment(a1[1], "failed handling hash query\n");
        pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        v28 = off_1ED944120;
        if (!off_1ED944120)
        {
          v29 = operator new(0x38uLL);
          BBUError::BBUError(v29);
          std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(v56, v29);
          v30 = *v56;
          *v56 = 0;
          *&v56[8] = 0;
          v31 = *(&off_1ED944120 + 1);
          off_1ED944120 = v30;
          if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v31->__on_zero_shared)(v31);
            std::__shared_weak_count::__release_weak(v31);
          }

          v32 = *&v56[8];
          if (*&v56[8] && !atomic_fetch_add((*&v56[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v32->__on_zero_shared)(v32);
            std::__shared_weak_count::__release_weak(v32);
          }

          v28 = off_1ED944120;
        }

        v33 = *(&off_1ED944120 + 1);
        block = v28;
        v63 = *(&off_1ED944120 + 1);
        if (*(&off_1ED944120 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        *v56 = operator new(0x20uLL);
        *&v56[8] = xmmword_1E5393720;
        strcpy(*v56, "Failed handling hash query");
        BBUError::addError(v28, v56, 47);
        if ((v56[23] & 0x80000000) == 0)
        {
          goto LABEL_67;
        }

        v34 = *v56;
        goto LABEL_66;
      }

      *a7 = 1;
      MaverickHashResponse = ETLSAHCommandCreateMaverickHashResponse();
      v45 = a1[1];
      if ((MaverickHashResponse & 1) == 0)
      {
        BBUFeedback::handleComment(v45, "failed creating maverick hash response\n");
        v19 = 11;
        goto LABEL_71;
      }

      BBUFeedback::handleComment(v45, "Sending Hash Response: value %u  success %u", *a7, 1);
      if (ETLSAHCommandSend())
      {
        v19 = 0;
        goto LABEL_71;
      }

      BBUFeedback::handleComment(a1[1], "failed sending maverick hash response\n");
    }

    else
    {
      BBUFeedback::handleComment(v26, "failed sending maverick root manifest response\n");
    }

    v19 = 3;
    goto LABEL_71;
  }

  BBUFeedback::handleComment(a1[1], "root manifest larger than protocol specification, size = %u bytes", v16);
  v19 = 12;
  v20 = __p;
  if (__p)
  {
LABEL_11:
    v54 = v20;
    operator delete(v20);
  }

  return v19;
}

void sub_1E5321F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t BBUEUR2Programmer::handleMaverickEnd_nl(BBUFeedback **this)
{
  v2 = operator new[](0x400uLL);
  if (ETLSAHCommandReceive())
  {
    if (ETLSAHCommandMaverickParseEnd())
    {
      v3 = 0;
    }

    else
    {
      v3 = 11;
      BBUFeedback::handleComment(this[1], "failed parsing maverick end\n");
    }
  }

  else
  {
    v3 = 3;
    BBUFeedback::handleComment(this[1], "failed receiving maverick end\n");
  }

  operator delete[](v2);
  return v3;
}

void BBUEUR2Programmer::postCrashReason(uint64_t a1, size_t *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 8))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x613u, "Assertion failure(fFeedback)");
  }

  v62 = 0;
  v63 = 0;
  v64 = 0;
  memset(&__p, 0, 24);
  folder = ctu::fs::read_folder();
  v4 = folder;
  v5 = 0;
  if (folder)
  {
    v6 = -1431655765 * ((__p.st_ino - *&__p.st_dev) >> 3);
    if (v6)
    {
      v7 = 0;
      v8 = 24 * v6;
      while (1)
      {
        v10 = (*&__p.st_dev + v7);
        BYTE7(v66) = 8;
        strcpy(&__s2, "mav_core");
        v11 = *(*&__p.st_dev + v7 + 23);
        if (v11 < 0)
        {
          v13 = *v10;
          if (v10[1] >= 8)
          {
            v12 = 8;
          }

          else
          {
            v12 = v10[1];
          }
        }

        else
        {
          if (v11 >= 8)
          {
            v12 = 8;
          }

          else
          {
            v12 = v11;
          }

          v13 = (*&__p.st_dev + v7);
        }

        v14 = memcmp(v13, &__s2, v12);
        if (v12 != 8 || v14 != 0)
        {
          goto LABEL_7;
        }

        if ((v11 & 0x80000000) != 0)
        {
          v17 = *(*&__p.st_dev + v7 + 8);
          v18 = v17 > 4;
          v19 = v17 - 4;
          if (!v18)
          {
            v24 = v63;
            if (v63 < v64)
            {
              goto LABEL_39;
            }

            goto LABEL_5;
          }

          BYTE7(v66) = 4;
          strcpy(&__s2, ".bin");
          v20 = *(*&__p.st_dev + v7 + 8);
          v21 = v20 >= v19;
          v22 = v20 - v19;
          if (!v21)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          if (v22 >= 4)
          {
            v23 = 4;
          }

          else
          {
            v23 = v22;
          }

          v16 = memcmp(*v10 + v19, &__s2, v23);
          if (v23 != 4)
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (v11 <= 4)
          {
            v24 = v63;
            if (v63 < v64)
            {
              goto LABEL_37;
            }

            goto LABEL_5;
          }

          BYTE7(v66) = 4;
          strcpy(&__s2, ".bin");
          v16 = memcmp(v10 + v11 - 4, &__s2, 4uLL);
        }

        if (v16)
        {
          goto LABEL_7;
        }

        v24 = v63;
        if (v63 < v64)
        {
          if ((v11 & 0x80000000) != 0)
          {
LABEL_39:
            std::string::__init_copy_ctor_external(v24, *(*&__p.st_dev + v7), *(*&__p.st_dev + v7 + 8));
          }

          else
          {
LABEL_37:
            v25 = *v10;
            v24->__r_.__value_.__r.__words[2] = v10[2];
            *&v24->__r_.__value_.__l.__data_ = v25;
          }

          v9 = &v24[1];
          goto LABEL_6;
        }

LABEL_5:
        v9 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v62, v10);
LABEL_6:
        v63 = v9;
LABEL_7:
        v7 += 24;
        if (v8 == v7)
        {
          v5 = *&__p.st_dev;
          break;
        }
      }
    }
  }

  if (v5)
  {
    st_ino = __p.st_ino;
    v27 = v5;
    if (__p.st_ino != v5)
    {
      do
      {
        v28 = *(st_ino - 1);
        st_ino -= 3;
        if (v28 < 0)
        {
          operator delete(*st_ino);
        }
      }

      while (st_ino != v5);
      v27 = *&__p.st_dev;
    }

    __p.st_ino = v5;
    operator delete(v27);
  }

  if (v4)
  {
    v29 = v62;
    if (v62 != v63)
    {
      while (1)
      {
        memset(v61, 170, sizeof(v61));
        v30 = *(a2 + 23);
        if (v30 >= 0)
        {
          v31 = *(a2 + 23);
        }

        else
        {
          v31 = a2[1];
        }

        v32 = v31 + 1;
        if (v31 + 1 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v32 < 0x17)
        {
          *&v66 = 0;
          __s2 = 0uLL;
          p_s2 = &__s2;
          BYTE7(v66) = v31 + 1;
          if (!v31)
          {
            goto LABEL_66;
          }
        }

        else
        {
          if ((v32 | 7) == 0x17)
          {
            v33 = 25;
          }

          else
          {
            v33 = (v32 | 7) + 1;
          }

          p_s2 = operator new(v33);
          *(&__s2 + 1) = v31 + 1;
          *&v66 = v33 | 0x8000000000000000;
          *&__s2 = p_s2;
        }

        if (v30 >= 0)
        {
          v35 = a2;
        }

        else
        {
          v35 = *a2;
        }

        memmove(p_s2, v35, v31);
LABEL_66:
        *(p_s2 + v31) = 47;
        v36 = SHIBYTE(v29->__r_.__value_.__r.__words[2]);
        if (v36 >= 0)
        {
          v37 = v29;
        }

        else
        {
          v37 = v29->__r_.__value_.__r.__words[0];
        }

        if (v36 >= 0)
        {
          size = HIBYTE(v29->__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v29->__r_.__value_.__l.__size_;
        }

        v39 = std::string::append(&__s2, v37, size);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v61[2] = v39->__r_.__value_.__r.__words[2];
        *v61 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if (SBYTE7(v66) < 0)
        {
          operator delete(__s2);
        }

        v41.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v41.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *__p.st_qspare = v41;
        *&__p.st_size = v41;
        *&__p.st_blksize = v41;
        __p.st_ctimespec = v41;
        __p.st_birthtimespec = v41;
        __p.st_atimespec = v41;
        __p.st_mtimespec = v41;
        *&__p.st_dev = v41;
        *&__p.st_uid = v41;
        if (SHIBYTE(v61[2]) >= 0)
        {
          v42 = v61;
        }

        else
        {
          v42 = v61[0];
        }

        if (stat(v42, &__p))
        {
          v54 = v61;
          if (SHIBYTE(v61[2]) < 0)
          {
            v54 = v61[0];
          }

          BBUFeedback::handleComment(*(a1 + 8), "Failed on getting file status from (%s) \n", v54);
          if (SHIBYTE(v61[2]) < 0)
          {
            operator delete(v61[0]);
          }

          goto LABEL_121;
        }

        if (SHIBYTE(v61[2]) >= 0)
        {
          v43 = v61;
        }

        else
        {
          v43 = v61[0];
        }

        v44 = open(v43, 0);
        if (v44 < 0)
        {
          if (SHIBYTE(v61[2]) >= 0)
          {
            v48 = v61;
          }

          else
          {
            v48 = v61[0];
          }

          BBUFeedback::handleComment(*(a1 + 8), "Failed on opening a file (%s).\n", v48);
        }

        else
        {
          st_size = __p.st_size;
          st_size_low = LODWORD(__p.st_size);
          if (LODWORD(__p.st_size))
          {
            v47 = operator new(LODWORD(__p.st_size));
            bzero(v47, st_size_low);
          }

          else
          {
            v47 = 0;
          }

          if (read(v44, v47, st_size) < 0)
          {
            BBUFeedback::handleComment(*(a1 + 8), "Failed on reading the file.\n");
          }

          else if (ETLEFSDumpInterpret())
          {
            v70 = 0xAAAAAAAAAAAAAAAALL;
            *&v49 = 0xAAAAAAAAAAAAAAAALL;
            *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v69[14] = v49;
            v69[15] = v49;
            v69[12] = v49;
            v69[13] = v49;
            v69[10] = v49;
            v69[11] = v49;
            v69[8] = v49;
            v69[9] = v49;
            v69[6] = v49;
            v69[7] = v49;
            v69[4] = v49;
            v69[5] = v49;
            v69[2] = v49;
            v69[3] = v49;
            v69[0] = v49;
            v69[1] = v49;
            v67 = v49;
            v68 = v49;
            __s2 = v49;
            v66 = v49;
            v50 = ETLEFSDUmpCopyCrashLocationDetails();
            v51 = *(a1 + 8);
            if (v50)
            {
              if (SHIBYTE(v61[2]) >= 0)
              {
                v52 = v61;
              }

              else
              {
                v52 = v61[0];
              }

              BBUFeedback::handleComment(v51, "File: %s", v52);
              BBUFeedback::handleComment(*(a1 + 8), "\tCrash at %s:%d, Reason '%s', TID %d\n", &__s2 + 8, DWORD1(__s2), v69 + 8, __s2);
            }

            else
            {
              BBUFeedback::handleComment(v51, "Failed on parsing the information.\n");
            }

            if ((ETLEFSDumpInfoFree() & 1) == 0)
            {
              BBUFeedback::handleComment(*(a1 + 8), "Failed on freeing dumpInfo.\n");
            }
          }

          else
          {
            BBUFeedback::handleComment(*(a1 + 8), "Failed on interpreting the file.\n");
          }

          if (close(v44))
          {
            if (SHIBYTE(v61[2]) >= 0)
            {
              v53 = v61;
            }

            else
            {
              v53 = v61[0];
            }

            BBUFeedback::handleComment(*(a1 + 8), "Failed on closing a file (%s).\n", v53);
          }

          if (v47)
          {
            operator delete(v47);
          }
        }

        if (SHIBYTE(v61[2]) < 0)
        {
          operator delete(v61[0]);
        }

        if ((v44 & 0x80000000) == 0 && ++v29 != v63)
        {
          continue;
        }

        goto LABEL_121;
      }
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_121;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_121;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(1, 0, "BBUProgrammer", &str_8_3, "failed scanning coredump folder\n");
    }

LABEL_121:
    v29 = v62;
  }

  if (v29)
  {
    p_data = &v63->__r_.__value_.__l.__data_;
    v56 = v29;
    if (v63 != v29)
    {
      do
      {
        v57 = *(p_data - 1);
        p_data -= 3;
        if (v57 < 0)
        {
          operator delete(*p_data);
        }
      }

      while (p_data != v29);
      v56 = v62;
    }

    v63 = v29;
    operator delete(v56);
  }
}

void sub_1E532283C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void **a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a41);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_30()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUError>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t readStickyNvramItems(uint64_t *a1)
{
  v42[2] = *MEMORY[0x1E69E9840];
  __p = 0;
  v39 = 0uLL;
  cf = 0;
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v2 = off_1ED944170;
  if (!off_1ED944170)
  {
    v3 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v3);
    v40 = v3;
    v4 = operator new(0x20uLL);
    *v4 = &unk_1F5F05A00;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v3;
    v5 = off_1ED944178;
    off_1ED944170 = v3;
    off_1ED944178 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_1ED944170;
  }

  v6 = off_1ED944178;
  v36[0] = v2;
  v36[1] = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v7 = v2[1];
  if (!v7)
  {
LABEL_14:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v8 = *(v7 + 8);
      if (v8 < 3)
      {
        break;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    if (v8 == 2)
    {
      break;
    }

    v7 = v7[1];
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  if (*(v7 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, v7[5], v7[6]);
  }

  else
  {
    *&v41.st_dev = *(v7 + 5);
    *&v41.st_uid = v7[7];
  }

  st_gid_high = SHIBYTE(v41.st_gid);
  if ((SHIBYTE(v41.st_gid) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(v41.st_gid) < 0x17)
    {
      v10 = SHIBYTE(v41.st_gid) + 25;
      v11 = &v41;
      v12 = 22;
LABEL_24:
      v14 = 2 * v12;
      if (v10 > 2 * v12)
      {
        v14 = v10;
      }

      if ((v14 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v14 | 7) + 1;
      }

      if (v14 >= 0x17)
      {
        v13 = v15;
      }

      else
      {
        v13 = 23;
      }

      v16 = v12 == 22;
      goto LABEL_33;
    }

    v20 = &v41;
    qmemcpy(&v41 + SHIBYTE(v41.st_gid), "/sticky_nvram_items.plist", 25);
    v21 = st_gid_high + 25;
    HIBYTE(v41.st_gid) = (st_gid_high + 25) & 0x7F;
LABEL_40:
    v19 = v20 + v21;
    goto LABEL_41;
  }

  st_gid_high = v41.st_ino;
  v12 = (*&v41.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v12 - v41.st_ino >= 0x19)
  {
    v20 = *&v41.st_dev;
    qmemcpy((*&v41.st_dev + v41.st_ino), "/sticky_nvram_items.plist", 25);
    v21 = st_gid_high + 25;
    v41.st_ino = st_gid_high + 25;
    goto LABEL_40;
  }

  v13 = 0x7FFFFFFFFFFFFFF7;
  v10 = v41.st_ino + 25;
  if (0x7FFFFFFFFFFFFFF7 - (*&v41.st_uid & 0x7FFFFFFFFFFFFFFFuLL) < v41.st_ino + 25 - v12)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = *&v41.st_dev;
  if (v12 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_24;
  }

  v16 = 0;
LABEL_33:
  v17 = operator new(v13);
  v18 = v17;
  if (st_gid_high)
  {
    memmove(v17, v11, st_gid_high);
  }

  qmemcpy(&v18[st_gid_high], "/sticky_nvram_items.plist", 25);
  if (!v16)
  {
    operator delete(v11);
  }

  v41.st_ino = v10;
  *&v41.st_uid = v13 | 0x8000000000000000;
  *&v41.st_dev = v18;
  v19 = &v18[v10];
LABEL_41:
  *v19 = 0;
  v42[0] = v41.st_ino;
  v22 = *&v41.st_dev;
  *(v42 + 7) = *(&v41.st_ino + 7);
  v23 = HIBYTE(v41.st_gid);
  memset(&v41, 0, 24);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
    __p = v22;
    *&v39 = v42[0];
    *(&v39 + 7) = *(v42 + 7);
    HIBYTE(v39) = v23;
    if (SHIBYTE(v41.st_gid) < 0)
    {
      operator delete(*&v41.st_dev);
    }
  }

  else
  {
    __p = v22;
    *&v39 = v42[0];
    *(&v39 + 7) = *(v42 + 7);
    HIBYTE(v39) = v23;
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v24.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v24.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v41.st_blksize = v24;
  *v41.st_qspare = v24;
  v41.st_birthtimespec = v24;
  *&v41.st_size = v24;
  v41.st_mtimespec = v24;
  v41.st_ctimespec = v24;
  *&v41.st_uid = v24;
  v41.st_atimespec = v24;
  *&v41.st_dev = v24;
  if (v39 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v26 = stat(p_p, &v41);
  if (v26)
  {
    if (*(a1 + 23) < 0)
    {
      a1[1] = 0;
      a1 = *a1;
    }

    else
    {
      *(a1 + 23) = 0;
    }

    *a1 = 0;
    LogInstance = ACFULogging::getLogInstance(v26);
    ACFULogging::handleMessage(LogInstance, 3, "%s::%s: Sticky NVRAM items do not exist\n", "BasebandNVRAM", "readStickyNvramItems");
    v28 = cf;
    if (!cf)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if (v39 >= 0)
  {
    v27 = &__p;
  }

  else
  {
    v27 = __p;
  }

  v28 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v27, 0x8000100u);
  v29 = cf;
  cf = v28;
  if (v29)
  {
    CFRelease(v29);
  }

  memset(&v41, 170, 24);
  MEMORY[0x1E69265F0](&v41, v28, *MEMORY[0x1E695E8B8]);
  ctu::cf::MakeCFString::MakeCFString(v36, "NvramItems");
  v30 = (**&v41.st_dev)(&v41, v36[0]);
  if (v30)
  {
    ctu::cf::assign();
    CFRelease(v30);
  }

  v31 = MEMORY[0x1E6926590](v36);
  v32 = ACFULogging::getLogInstance(v31);
  if (*(a1 + 23) >= 0)
  {
    v33 = a1;
  }

  else
  {
    v33 = *a1;
  }

  ACFULogging::handleMessage(v32, 3, "%s::%s: Sticky NVRAM items: %s\n", "BasebandNVRAM", "readStickyNvramItems", v33);
  MEMORY[0x1E6926600](&v41);
  if (v28)
  {
LABEL_68:
    CFRelease(v28);
  }

LABEL_69:
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_1E5322F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t createNVData(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  __src = a4;
  LODWORD(v666) = a3;
  v717 = *MEMORY[0x1E69E9840];
  v699 = 0;
  v700 = 0;
  v669 = &v699;
  v697 = 0;
  v698 = &v699;
  v695 = 0;
  v696 = 0;
  v692 = 0;
  v693 = 0;
  v694 = 0;
  v689 = 0;
  v690 = 0;
  v691 = 0;
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    if (!*(a1 + 8))
    {
      goto LABEL_5;
    }
  }

  else if (!*(a1 + 23))
  {
LABEL_5:
    v6 = *(a2 + 23);
    if (v6 < 0)
    {
      v6 = *(a2 + 8);
    }

    if (!v6)
    {
      LogInstance = ACFULogging::getLogInstance(a1);
      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Both NVRAM strings are empty\n", "BasebandNVRAM", "createNVData");
      v8 = 1;
      goto LABEL_1157;
    }
  }

  if ((v5 & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v688, *a1, *(a1 + 8));
  }

  else
  {
    v688 = *a1;
  }

  NVRAMKeyValPairs = sGetNVRAMKeyValPairs(&v688, &v695);
  v8 = NVRAMKeyValPairs;
  if (SHIBYTE(v688.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v688.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    v72 = ACFULogging::getLogInstance(NVRAMKeyValPairs);
    ACFULogging::handleMessage(v72, 2, "%s::%s: Baseband NVRAM parsing failed for user provided nvram list (%d)\n", "BasebandNVRAM", "createNVData", v8);
    goto LABEL_1157;
  }

  if (v696 == v695)
  {
    goto LABEL_34;
  }

  v9 = ACFULogging::getLogInstance(NVRAMKeyValPairs);
  ACFULogging::handleMessage(v9, 4, "%s::%s: User OR Sticky NVRAM {key, value} pairs:\n", "BasebandNVRAM", "createNVData");
  __p = 0;
  v686 = 0;
  v687 = 0;
  v10 = v695;
  v11 = v696;
  *__dst = &__p;
  *&__dst[8] = 0xAAAAAAAAAAAAAA00;
  v12 = v696 - v695;
  if (v696 == v695)
  {
    goto LABEL_34;
  }

  if (0xAAAAAAAAAAAAAAABLL * (v12 >> 4) > 0x555555555555555)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  __p = operator new(v696 - v695);
  v686 = __p;
  v687 = __p + v12;
  v13 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&__p, v10, v11, __p);
  v14 = v13;
  v686 = v13;
  v15 = __p;
  if (__p != v13)
  {
    while (1)
    {
      v16 = ACFULogging::getLogInstance(v13);
      v17 = v15;
      if (v15[23] < 0)
      {
        v17 = *v15;
        v18 = v15 + 24;
        if (v15[47] < 0)
        {
LABEL_23:
          v18 = *v18;
        }
      }

      else
      {
        v18 = v15 + 24;
        if (v15[47] < 0)
        {
          goto LABEL_23;
        }
      }

      v13 = ACFULogging::handleMessage(v16, 3, "%s::%s: NVRAM {key, value} pair: {%s, %s}\n", "BasebandNVRAM", "sPrintKeyValPairs", v17, v18);
      v15 += 48;
      if (v15 == v14)
      {
        v15 = __p;
        break;
      }
    }
  }

  if (!v15)
  {
    goto LABEL_34;
  }

  v19 = v686;
  v20 = v15;
  if (v686 != v15)
  {
    while (1)
    {
      if (*(v19 - 1) < 0)
      {
        operator delete(*(v19 - 3));
        v21 = v19 - 6;
        if ((*(v19 - 25) & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_31:
        operator delete(*v21);
        v19 = v21;
        if (v21 == v15)
        {
LABEL_32:
          v20 = __p;
          break;
        }
      }

      else
      {
        v21 = v19 - 6;
        if (*(v19 - 25) < 0)
        {
          goto LABEL_31;
        }

LABEL_28:
        v19 = v21;
        if (v21 == v15)
        {
          goto LABEL_32;
        }
      }
    }
  }

  v686 = v15;
  operator delete(v20);
LABEL_34:
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v684, *a2, *(a2 + 8));
  }

  else
  {
    v684 = *a2;
  }

  v22 = sGetNVRAMKeyValPairs(&v684, &v692);
  v8 = v22;
  if (SHIBYTE(v684.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v684.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    v73 = ACFULogging::getLogInstance(v22);
    ACFULogging::handleMessage(v73, 2, "%s::%s: Baseband NVRAM parsing failed for default nvram list (%d)\n", "BasebandNVRAM", "createNVData", v8);
    goto LABEL_1157;
  }

  if (v693 != v692)
  {
    v23 = ACFULogging::getLogInstance(v22);
    v22 = ACFULogging::handleMessage(v23, 4, "%s::%s: Default NVRAM {key, value} pairs:\n", "BasebandNVRAM", "createNVData");
    v681 = 0;
    v682 = 0;
    v683 = 0;
    v24 = v692;
    v25 = v693;
    *__dst = &v681;
    *&__dst[8] = 0xAAAAAAAAAAAAAA00;
    v26 = v693 - v692;
    if (v693 != v692)
    {
      if (0xAAAAAAAAAAAAAAABLL * (v26 >> 4) > 0x555555555555555)
      {
        std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
      }

      v681 = operator new(v693 - v692);
      v682 = v681;
      v683 = v681 + v26;
      v22 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&v681, v24, v25, v681);
      v27 = v22;
      v682 = v22;
      v28 = v681;
      if (v681 != v22)
      {
        while (1)
        {
          v29 = ACFULogging::getLogInstance(v22);
          v30 = v28;
          if (v28[23] < 0)
          {
            v30 = *v28;
            v31 = v28 + 24;
            if (v28[47] < 0)
            {
LABEL_49:
              v31 = *v31;
            }
          }

          else
          {
            v31 = v28 + 24;
            if (v28[47] < 0)
            {
              goto LABEL_49;
            }
          }

          v22 = ACFULogging::handleMessage(v29, 3, "%s::%s: NVRAM {key, value} pair: {%s, %s}\n", "BasebandNVRAM", "sPrintKeyValPairs", v30, v31);
          v28 += 48;
          if (v28 == v27)
          {
            v28 = v681;
            break;
          }
        }
      }

      if (v28)
      {
        v32 = v682;
        v33 = v28;
        if (v682 == v28)
        {
LABEL_59:
          v682 = v28;
          operator delete(v33);
          goto LABEL_60;
        }

        while (1)
        {
          if (*(v32 - 1) < 0)
          {
            operator delete(*(v32 - 3));
            v34 = v32 - 6;
            if ((*(v32 - 25) & 0x80000000) == 0)
            {
              goto LABEL_54;
            }

LABEL_57:
            operator delete(*v34);
            v32 = v34;
            if (v34 == v28)
            {
LABEL_58:
              v33 = v681;
              goto LABEL_59;
            }
          }

          else
          {
            v34 = v32 - 6;
            if (*(v32 - 25) < 0)
            {
              goto LABEL_57;
            }

LABEL_54:
            v32 = v34;
            if (v34 == v28)
            {
              goto LABEL_58;
            }
          }
        }
      }
    }
  }

LABEL_60:
  v678 = 0;
  v679 = 0;
  v680 = 0;
  v35 = v695;
  v36 = v696;
  *__dst = &v678;
  *&__dst[8] = 0xAAAAAAAAAAAAAA00;
  v37 = v696 - v695;
  if (v696 == v695)
  {
    v38 = 0;
  }

  else
  {
    if (0xAAAAAAAAAAAAAAABLL * (v37 >> 4) > 0x555555555555555)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v678 = operator new(v696 - v695);
    v679 = v678;
    v680 = v678 + v37;
    v22 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&v678, v35, v36, v678);
    v38 = v22;
    v679 = v22;
  }

  v676 = 0;
  v677 = 0;
  v675 = 0;
  v39 = v692;
  v40 = v693;
  *__dst = &v675;
  *&__dst[8] = 0xAAAAAAAAAAAAAA00;
  v41 = v693 - v692;
  if (v693 == v692)
  {
    v43 = 0;
    v42 = 0;
  }

  else
  {
    if (0xAAAAAAAAAAAAAAABLL * (v41 >> 4) > 0x555555555555555)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v675 = operator new(v693 - v692);
    v676 = v675;
    v677 = v675 + v41;
    v22 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&v675, v39, v40, v675);
    v42 = v22;
    v676 = v22;
    v38 = v679;
    v43 = v675;
  }

  memset(__dst, 0, sizeof(__dst));
  if (v38 != v678)
  {
    v44 = 0xAAAAAAAAAAAAAAABLL * ((v38 - v678) >> 4);
    if (v42 != v43)
    {
      std::vector<std::pair<std::string,std::string>>::__assign_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&v689, v678, v38, v44);
      v46 = v675;
      v47 = v676;
      if (v675 != v676)
      {
        do
        {
          memset(&__s2, 170, sizeof(__s2));
          if (*(v46 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__s2, *v46, v46[1]);
          }

          else
          {
            v48 = *v46;
            __s2.__r_.__value_.__r.__words[2] = v46[2];
            *&__s2.__r_.__value_.__l.__data_ = v48;
          }

          v49 = v689;
          v50 = v690;
          if (v689 != v690)
          {
            if ((__s2.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__s2.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __s2.__r_.__value_.__l.__size_;
            }

            if ((*(&__s2.__r_.__value_.__s + 23) & 0x80) != 0)
            {
              v52 = __s2.__r_.__value_.__r.__words[0];
              while (1)
              {
                v56 = *(v49 + 23);
                v57 = v56;
                if ((v56 & 0x80u) != 0)
                {
                  v56 = *(v49 + 1);
                }

                if (v56 == size)
                {
                  v58 = v57 >= 0 ? v49 : *v49;
                  v45 = memcmp(v58, v52, size);
                  if (!v45)
                  {
                    break;
                  }
                }

                v49 += 3;
                if (v49 == v50)
                {
                  goto LABEL_100;
                }
              }
            }

            else
            {
              while (1)
              {
                v53 = *(v49 + 23);
                v54 = v53;
                if ((v53 & 0x80u) != 0)
                {
                  v53 = *(v49 + 1);
                }

                if (v53 == size)
                {
                  v55 = v54 >= 0 ? v49 : *v49;
                  v45 = memcmp(v55, &__s2, size);
                  if (!v45)
                  {
                    break;
                  }
                }

                v49 += 3;
                if (v49 == v50)
                {
                  goto LABEL_100;
                }
              }
            }
          }

          if (v49 == v50)
          {
LABEL_100:
            if (__dst != v46)
            {
              v59 = *(v46 + 23);
              if ((__dst[23] & 0x80000000) != 0)
              {
                if (v59 >= 0)
                {
                  v61 = v46;
                }

                else
                {
                  v61 = *v46;
                }

                if (v59 >= 0)
                {
                  v62 = *(v46 + 23);
                }

                else
                {
                  v62 = v46[1];
                }

                std::string::__assign_no_alias<false>(__dst, v61, v62);
              }

              else if ((*(v46 + 23) & 0x80) != 0)
              {
                std::string::__assign_no_alias<true>(__dst, *v46, v46[1]);
              }

              else
              {
                v60 = *v46;
                *&__dst[16] = v46[2];
                *__dst = v60;
              }

              v63 = *(v46 + 47);
              if ((__dst[47] & 0x80000000) != 0)
              {
                if (v63 >= 0)
                {
                  v65 = v46 + 3;
                }

                else
                {
                  v65 = v46[3];
                }

                if (v63 >= 0)
                {
                  v66 = *(v46 + 47);
                }

                else
                {
                  v66 = v46[4];
                }

                std::string::__assign_no_alias<false>(&__dst[24], v65, v66);
              }

              else if ((*(v46 + 47) & 0x80) != 0)
              {
                std::string::__assign_no_alias<true>(&__dst[24], v46[3], v46[4]);
              }

              else
              {
                v64 = *(v46 + 3);
                *&__dst[40] = v46[5];
                *&__dst[24] = v64;
              }
            }

            std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](&v689, __dst);
          }

          if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s2.__r_.__value_.__l.__data_);
          }

          v46 += 6;
        }

        while (v46 != v47);
      }

LABEL_130:
      v8 = 0;
      v67 = 1;
      if ((__dst[47] & 0x80000000) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_147;
    }

    v43 = v678;
    v42 = v38;
LABEL_129:
    std::vector<std::pair<std::string,std::string>>::__assign_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&v689, v43, v42, v44);
    goto LABEL_130;
  }

  if (v42 != v43)
  {
    v44 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v43) >> 4);
    goto LABEL_129;
  }

  v75 = ACFULogging::getLogInstance(v22);
  v45 = ACFULogging::handleMessage(v75, 2, "%s::%s: Both user and default nvram item lists are empty - this should not happens\n", "BasebandNVRAM", "sMergeNVRAMKeyValPairLists");
  v67 = 0;
  v8 = 1;
  if ((__dst[47] & 0x80000000) == 0)
  {
LABEL_131:
    if ((__dst[23] & 0x80000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_148;
  }

LABEL_147:
  operator delete(*&__dst[24]);
  if ((__dst[23] & 0x80000000) == 0)
  {
LABEL_132:
    v68 = v675;
    if (v675)
    {
      goto LABEL_133;
    }

LABEL_149:
    v70 = v678;
    if (!v678)
    {
      goto LABEL_159;
    }

LABEL_150:
    v76 = v679;
    v77 = v70;
    if (v679 == v70)
    {
LABEL_158:
      v679 = v70;
      operator delete(v77);
      goto LABEL_159;
    }

    while (1)
    {
      if (*(v76 - 1) < 0)
      {
        operator delete(*(v76 - 3));
        v78 = v76 - 6;
        if ((*(v76 - 25) & 0x80000000) == 0)
        {
          goto LABEL_153;
        }

LABEL_156:
        operator delete(*v78);
        v76 = v78;
        if (v78 == v70)
        {
LABEL_157:
          v77 = v678;
          goto LABEL_158;
        }
      }

      else
      {
        v78 = v76 - 6;
        if (*(v76 - 25) < 0)
        {
          goto LABEL_156;
        }

LABEL_153:
        v76 = v78;
        if (v78 == v70)
        {
          goto LABEL_157;
        }
      }
    }
  }

LABEL_148:
  operator delete(*__dst);
  v68 = v675;
  if (!v675)
  {
    goto LABEL_149;
  }

LABEL_133:
  v69 = v676;
  if (v676 == v68)
  {
    v676 = v68;
    operator delete(v68);
    v70 = v678;
    if (!v678)
    {
      goto LABEL_159;
    }

    goto LABEL_150;
  }

  do
  {
    while (*(v69 - 1) < 0)
    {
      operator delete(*(v69 - 3));
      v71 = v69 - 6;
      if (*(v69 - 25) < 0)
      {
        goto LABEL_140;
      }

LABEL_137:
      v69 = v71;
      if (v71 == v68)
      {
        goto LABEL_141;
      }
    }

    v71 = v69 - 6;
    if ((*(v69 - 25) & 0x80000000) == 0)
    {
      goto LABEL_137;
    }

LABEL_140:
    operator delete(*v71);
    v69 = v71;
  }

  while (v71 != v68);
LABEL_141:
  v676 = v68;
  operator delete(v675);
  v70 = v678;
  if (v678)
  {
    goto LABEL_150;
  }

LABEL_159:
  if ((v67 & 1) == 0)
  {
    v653 = ACFULogging::getLogInstance(v45);
    ACFULogging::handleMessage(v653, 2, "%s::%s: Baseband NVRAM list merge failed (%d)\n", "BasebandNVRAM", "createNVData", v8);
    goto LABEL_1157;
  }

  v79 = ACFULogging::getLogInstance(v45);
  v80 = ACFULogging::handleMessage(v79, 3, "%s::%s: Merged NVRAM {key, value} pairs:\n", "BasebandNVRAM", "createNVData");
  v81 = v689;
  v82 = v690;
  if (v689 != v690)
  {
    v83 = 0;
    alloc[0] = *MEMORY[0x1E695E480];
    do
    {
      v84 = ACFULogging::getLogInstance(v80);
      v85 = v81;
      if (SHIBYTE(v81->__r_.__value_.__r.__words[2]) < 0)
      {
        v85 = v81->__r_.__value_.__r.__words[0];
        v86 = v81 + 1;
        v87 = &v81[1];
        if ((SHIBYTE(v81[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_165;
        }
      }

      else
      {
        v86 = v81 + 1;
        v87 = &v81[1];
        if ((SHIBYTE(v81[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_165;
        }
      }

      v87 = v86->__r_.__value_.__r.__words[0];
LABEL_165:
      ACFULogging::handleMessage(v84, 3, "%s::%s: NVRAM {key, value} pair: {%s, %s}\n", "BasebandNVRAM", "createNVData", v85, v87);
      if (SHIBYTE(v81->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v674, v81->__r_.__value_.__l.__data_, v81->__r_.__value_.__l.__size_);
      }

      else
      {
        v88 = *&v81->__r_.__value_.__l.__data_;
        v674.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
        *&v674.__r_.__value_.__l.__data_ = v88;
      }

      if (SHIBYTE(v81[1].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v673, v81[1].__r_.__value_.__l.__data_, v81[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v673 = *v86;
      }

      if ((v673.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v89 = &v673;
      }

      else
      {
        v89 = v673.__r_.__value_.__r.__words[0];
      }

      v90 = CFStringCreateWithCString(alloc[0], v89, 0x600u);
      v92 = v90;
      if (!v90)
      {
        v8 = 1007;
        if ((SHIBYTE(v673.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_186;
        }

LABEL_185:
        operator delete(v673.__r_.__value_.__l.__data_);
        goto LABEL_186;
      }

      if (SHIBYTE(v674.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v674.__r_.__value_.__l.__size_ != 7)
        {
          if (v674.__r_.__value_.__l.__size_ != 8)
          {
            goto LABEL_237;
          }

          v93 = v674.__r_.__value_.__r.__words[0];
          if (*v674.__r_.__value_.__l.__data_ == 0x79616C64746F6F62 || *v674.__r_.__value_.__l.__data_ == 0x7374726175676264 || *v674.__r_.__value_.__l.__data_ == 0x6B636F6C72727463)
          {
            goto LABEL_244;
          }

          goto LABEL_229;
        }

        if (*v674.__r_.__value_.__l.__data_ != 1752462689 || *(v674.__r_.__value_.__r.__words[0] + 3) != 1734501480)
        {
LABEL_237:
          v8 = 0;
          v83 = v90;
          if (SHIBYTE(v673.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_185;
          }

          goto LABEL_186;
        }
      }

      else
      {
        if (HIBYTE(v674.__r_.__value_.__r.__words[2]) != 7)
        {
          if (HIBYTE(v674.__r_.__value_.__r.__words[2]) != 8)
          {
            goto LABEL_237;
          }

          if (v674.__r_.__value_.__r.__words[0] == 0x6B636F6C72727463 || v674.__r_.__value_.__r.__words[0] == 0x7374726175676264 || v674.__r_.__value_.__r.__words[0] == 0x79616C64746F6F62)
          {
            goto LABEL_244;
          }

          v93 = &v674;
LABEL_229:
          if (v93->__r_.__value_.__r.__words[0] != 0x746F6F626F747561)
          {
            goto LABEL_237;
          }

          goto LABEL_244;
        }

        v111 = LODWORD(v674.__r_.__value_.__l.__data_) == 1752462689 && *(v674.__r_.__value_.__r.__words + 3) == 1734501480;
        if (!v111)
        {
          goto LABEL_237;
        }
      }

LABEL_244:
      *__dst = 0;
      Num32FromString = support::cf::createNum32FromString(v90, __dst, v91);
      v114 = *__dst;
      if (Num32FromString)
      {
        v8 = 0;
      }

      else
      {
        if (*__dst)
        {
          CFRelease(*__dst);
          *__dst = 0;
        }

        v8 = 1;
        v114 = v83;
      }

      CFRelease(v92);
      v83 = v114;
      if (SHIBYTE(v673.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_185;
      }

LABEL_186:
      if (SHIBYTE(v674.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v674.__r_.__value_.__l.__data_);
        if (v8)
        {
LABEL_1005:
          v575 = ACFULogging::getLogInstance(v90);
          ACFULogging::handleMessage(v575, 2, "%s::%s: Baseband NVRAM data conversion failed (%d)\n", "BasebandNVRAM", "createNVData", v8);
          goto LABEL_1157;
        }
      }

      else if (v8)
      {
        goto LABEL_1005;
      }

      if (SHIBYTE(v81->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(__dst, v81->__r_.__value_.__l.__data_, v81->__r_.__value_.__l.__size_);
      }

      else
      {
        v94 = *&v81->__r_.__value_.__l.__data_;
        *&__dst[16] = *(&v81->__r_.__value_.__l + 2);
        *__dst = v94;
      }

      *&__dst[24] = v83;
      v95 = v699;
      v96 = v669;
      v97 = v669;
      if (v699)
      {
        v98 = __dst[23];
        if (__dst[23] >= 0)
        {
          v99 = __dst;
        }

        else
        {
          v99 = *__dst;
        }

        if (__dst[23] >= 0)
        {
          v100 = __dst[23];
        }

        else
        {
          v100 = *&__dst[8];
        }

        while (1)
        {
          v96 = v95;
          v103 = v95[4];
          v101 = v95 + 4;
          v102 = v103;
          v104 = *(v101 + 23);
          if (v104 >= 0)
          {
            v105 = v101;
          }

          else
          {
            v105 = v102;
          }

          if (v104 >= 0)
          {
            v106 = *(v101 + 23);
          }

          else
          {
            v106 = v101[1];
          }

          if (v106 >= v100)
          {
            v107 = v100;
          }

          else
          {
            v107 = v106;
          }

          v108 = memcmp(v99, v105, v107);
          if (v108)
          {
            if (v108 < 0)
            {
              goto LABEL_200;
            }

LABEL_214:
            v80 = memcmp(v105, v99, v107);
            if (v80)
            {
              if ((v80 & 0x80000000) == 0)
              {
                goto LABEL_231;
              }
            }

            else if (v106 >= v100)
            {
LABEL_231:
              if (v98 < 0)
              {
                goto LABEL_232;
              }

              goto LABEL_162;
            }

            v95 = v96[1];
            if (!v95)
            {
              v97 = v96 + 1;
              break;
            }
          }

          else
          {
            if (v100 >= v106)
            {
              goto LABEL_214;
            }

LABEL_200:
            v95 = *v96;
            v97 = v96;
            if (!*v96)
            {
              break;
            }
          }
        }
      }

      v109 = operator new(0x40uLL);
      v109[2] = *__dst;
      v110 = *&__dst[16];
      memset(__dst, 0, 24);
      *(v109 + 6) = v110;
      *(v109 + 7) = v83;
      *v109 = 0;
      *(v109 + 1) = 0;
      *(v109 + 2) = v96;
      *v97 = v109;
      if (*v698)
      {
        v698 = *v698;
      }

      v80 = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v699, v109);
      ++v700;
      if ((__dst[23] & 0x80) != 0)
      {
LABEL_232:
        operator delete(*__dst);
      }

LABEL_162:
      v81 += 2;
    }

    while (v81 != v82);
  }

  ACFURTKitNVRMGenerator::create();
  v115 = *__dst;
  if (*__dst)
  {
    v116 = operator new(0x20uLL);
    *v116 = &unk_1F5F04428;
    v116[1] = 0;
    v116[2] = 0;
    v116[3] = v115;
    *__dst = 0;
    v117 = __src;
    v118 = *(__src + 1);
    *__src = v115;
    v117[1] = v116;
    if (!v118)
    {
      goto LABEL_257;
    }
  }

  else
  {
    *__dst = 0;
    v119 = __src;
    v118 = *(__src + 1);
    *__src = 0;
    v119[1] = 0;
    if (!v118)
    {
      goto LABEL_257;
    }
  }

  if (!atomic_fetch_add(&v118->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v118->__on_zero_shared)(v118);
    std::__shared_weak_count::__release_weak(v118);
  }

LABEL_257:
  v120 = *__dst;
  *__dst = 0;
  if (v120)
  {
    v121 = MEMORY[0x1E69263C0]();
    operator delete(v121);
  }

  if (!*__src)
  {
    v654 = ACFULogging::getLogInstance(v120);
    ACFULogging::handleMessage(v654, 2, "%s::%s: Baseband NVRAM generator failed.\n", "BasebandNVRAM", "createNVData");
    v8 = 1007;
    goto LABEL_1157;
  }

  if (!v666)
  {
    goto LABEL_1156;
  }

  v670 = 0;
  v671 = 0;
  v672 = 0;
  v122 = v689;
  v123 = v690;
  *__dst = &v670;
  *&__dst[8] = 0xAAAAAAAAAAAAAA00;
  v124 = v690 - v689;
  if (v690 == v689)
  {
    v125 = 0;
    v126 = 0;
  }

  else
  {
    if (0xAAAAAAAAAAAAAAABLL * (v124 >> 4) > 0x555555555555555)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v670 = operator new(v690 - v689);
    v671 = v670;
    v672 = v670 + v124;
    v120 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&v670, v122, v123, v670);
    v125 = v120;
    v671 = v120;
    v126 = v670;
  }

  v710 = 0uLL;
  v709 = 0;
  memset(&v708, 0, sizeof(v708));
  v706 = 0;
  cf = 0;
  v704 = 0;
  v705 = 0;
  v702 = 0;
  v703 = 0;
  v701 = 0;
  *__dst = &v701;
  *&__dst[8] = 0xAAAAAAAAAAAAAA00;
  v127 = v125 - v126;
  if (v125 == v126)
  {
    v715 = 0uLL;
    v716 = 0;
  }

  else
  {
    if (0xAAAAAAAAAAAAAAABLL * (v127 >> 4) > 0x555555555555555)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v701 = operator new(v125 - v126);
    v702 = v701;
    v703 = v701 + v127;
    v120 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&v701, v126, v125, v701);
    v702 = v120;
    v128 = v701;
    v715 = 0uLL;
    v716 = 0;
    if (v701 != v120)
    {
      alloc[0] = v120;
      while (1)
      {
        v129 = ACFULogging::getLogInstance(v120);
        v130 = v128;
        if (*(v128 + 23) < 0)
        {
          v130 = *v128;
          v131 = (v128 + 24);
          if ((*(v128 + 47) & 0x80000000) == 0)
          {
LABEL_273:
            v132 = v131;
            goto LABEL_276;
          }
        }

        else
        {
          v131 = (v128 + 24);
          if ((*(v128 + 47) & 0x80000000) == 0)
          {
            goto LABEL_273;
          }
        }

        v132 = *v131;
LABEL_276:
        ACFULogging::handleMessage(v129, 3, "%s::%s: NVRAM {key, value} pair: {%s, %s}\n", "BasebandNVRAM", "sGetNVRAMListFromKeyValPairs", v130, v132);
        if (&v715 != v128)
        {
          v133 = *(v128 + 23);
          if (SHIBYTE(v716) < 0)
          {
            if (v133 >= 0)
            {
              v135 = v128;
            }

            else
            {
              v135 = *v128;
            }

            if (v133 >= 0)
            {
              v136 = *(v128 + 23);
            }

            else
            {
              v136 = *(v128 + 1);
            }

            std::string::__assign_no_alias<false>(&v715, v135, v136);
          }

          else if ((*(v128 + 23) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(&v715, *v128, *(v128 + 1));
          }

          else
          {
            v134 = *v128;
            v716 = *(v128 + 2);
            v715 = v134;
          }
        }

        v137 = mNVRAMItems;
        if (mNVRAMItems != &qword_1ED949BF8)
        {
          do
          {
            v145 = *(v128 + 23);
            if (v145 >= 0)
            {
              v146 = *(v128 + 23);
            }

            else
            {
              v146 = *(v128 + 1);
            }

            v147 = *(v137 + 79);
            v148 = v147;
            if ((v147 & 0x80u) != 0)
            {
              v147 = *(v137 + 64);
            }

            if (v146 == v147)
            {
              v149 = (v137 + 32);
              v150 = v145 >= 0 ? v128 : *v128;
              v151 = v148 >= 0 ? (v137 + 56) : *(v137 + 56);
              v152 = memcmp(v150, v151, v146);
              if (&v715 != v149 && !v152)
              {
                v153 = *(v137 + 55);
                if (SHIBYTE(v716) < 0)
                {
                  if (v153 >= 0)
                  {
                    v154 = (v137 + 32);
                  }

                  else
                  {
                    v154 = *(v137 + 32);
                  }

                  if (v153 >= 0)
                  {
                    v155 = *(v137 + 55);
                  }

                  else
                  {
                    v155 = *(v137 + 40);
                  }

                  std::string::__assign_no_alias<false>(&v715, v154, v155);
                }

                else if ((*(v137 + 55) & 0x80) != 0)
                {
                  std::string::__assign_no_alias<true>(&v715, *(v137 + 32), *(v137 + 40));
                }

                else
                {
                  v715 = *v149;
                  v716 = *(v137 + 48);
                }
              }
            }

            v156 = *(v137 + 8);
            if (v156)
            {
              do
              {
                v157 = v156;
                v156 = *v156;
              }

              while (v156);
            }

            else
            {
              do
              {
                v157 = *(v137 + 16);
                v111 = *v157 == v137;
                v137 = v157;
              }

              while (!v111);
            }

            v137 = v157;
          }

          while (v157 != &qword_1ED949BF8);
        }

        v138 = SHIBYTE(v708.__r_.__value_.__r.__words[2]);
        if ((v708.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v139 = HIBYTE(v708.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v139 = v708.__r_.__value_.__l.__size_;
        }

        v140 = SHIBYTE(v716);
        if (v716 >= 0)
        {
          v141 = HIBYTE(v716);
        }

        else
        {
          v141 = *(&v715 + 1);
        }

        v142 = v141 + v139;
        if (v141 + v139 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v142 <= 0x16)
        {
          memset(&v711, 0, sizeof(v711));
          v144 = &v711;
          *(&v711.__r_.__value_.__s + 23) = v141 + v139;
          if (!v139)
          {
            goto LABEL_339;
          }

LABEL_335:
          if (v138 >= 0)
          {
            v158 = &v708;
          }

          else
          {
            v158 = v708.__r_.__value_.__r.__words[0];
          }

          memmove(v144, v158, v139);
          goto LABEL_339;
        }

        if ((v142 | 7) == 0x17)
        {
          v143 = 25;
        }

        else
        {
          v143 = (v142 | 7) + 1;
        }

        v144 = operator new(v143);
        v711.__r_.__value_.__l.__size_ = v141 + v139;
        v711.__r_.__value_.__r.__words[2] = v143 | 0x8000000000000000;
        v711.__r_.__value_.__r.__words[0] = v144;
        if (v139)
        {
          goto LABEL_335;
        }

LABEL_339:
        v159 = v144 + v139;
        if (v141)
        {
          if (v140 >= 0)
          {
            v160 = &v715;
          }

          else
          {
            v160 = v715;
          }

          memmove(v159, v160, v141);
        }

        v159[v141] = 0;
        v161 = SHIBYTE(v711.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v711.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
        {
          if ((SHIBYTE(v711.__r_.__value_.__r.__words[2]) - 21) >= 2)
          {
            v172 = &v711;
            *(&v711.__r_.__value_.__l.__data_ + SHIBYTE(v711.__r_.__value_.__r.__words[2])) = 10045;
            v173 = v161 + 2;
            if (SHIBYTE(v711.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_367;
            }

            goto LABEL_365;
          }

          v162 = SHIBYTE(v711.__r_.__value_.__r.__words[2]) + 2;
          v163 = &v711;
          v164 = 22;
LABEL_350:
          v165 = 2 * v164;
          if (v162 > 2 * v164)
          {
            v165 = v162;
          }

          if ((v165 | 7) == 0x17)
          {
            v166 = 25;
          }

          else
          {
            v166 = (v165 | 7) + 1;
          }

          if (v165 >= 0x17)
          {
            v167 = v166;
          }

          else
          {
            v167 = 23;
          }

          v168 = v164 == 22;
          goto LABEL_359;
        }

        v161 = v711.__r_.__value_.__l.__size_;
        v164 = (v711.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v164 - v711.__r_.__value_.__l.__size_ >= 2)
        {
          v172 = v711.__r_.__value_.__r.__words[0];
          *(v711.__r_.__value_.__r.__words[0] + v711.__r_.__value_.__l.__size_) = 10045;
          v173 = v161 + 2;
          if (SHIBYTE(v711.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_367:
            v711.__r_.__value_.__l.__size_ = v173;
            goto LABEL_368;
          }

LABEL_365:
          *(&v711.__r_.__value_.__s + 23) = v173 & 0x7F;
LABEL_368:
          v171 = v172 + v173;
          goto LABEL_369;
        }

        v162 = v711.__r_.__value_.__l.__size_ + 2;
        if (0x7FFFFFFFFFFFFFF7 - (v711.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v711.__r_.__value_.__l.__size_ + 2 - v164)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v163 = v711.__r_.__value_.__r.__words[0];
        if (v164 < 0x3FFFFFFFFFFFFFF3)
        {
          goto LABEL_350;
        }

        v168 = 0;
        v167 = 0x7FFFFFFFFFFFFFF7;
LABEL_359:
        v169 = operator new(v167);
        v170 = v169;
        if (v161)
        {
          memmove(v169, v163, v161);
        }

        *(v170 + v161) = 10045;
        if (!v168)
        {
          operator delete(v163);
        }

        v711.__r_.__value_.__l.__size_ = v162;
        v711.__r_.__value_.__r.__words[2] = v167 | 0x8000000000000000;
        v711.__r_.__value_.__r.__words[0] = v170;
        v171 = (v170 + v162);
LABEL_369:
        *v171 = 0;
        __s2 = v711;
        memset(&v711, 0, sizeof(v711));
        v174 = *(v128 + 47);
        if (v174 >= 0)
        {
          v175 = v131;
        }

        else
        {
          v175 = *(v128 + 3);
        }

        if (v174 >= 0)
        {
          v176 = *(v128 + 47);
        }

        else
        {
          v176 = *(v128 + 4);
        }

        v120 = std::string::append(&__s2, v175, v176);
        v177 = *v120;
        *&__dst[16] = *(v120 + 2);
        *__dst = v177;
        *(v120 + 1) = 0;
        *(v120 + 2) = 0;
        *v120 = 0;
        v178 = __dst[23];
        if ((__dst[23] & 0x8000000000000000) != 0)
        {
          v178 = *&__dst[8];
          v181 = (*&__dst[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v181 - *&__dst[8] < 2)
          {
            v179 = *&__dst[8] + 2;
            if (0x7FFFFFFFFFFFFFF7 - (*&__dst[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&__dst[8] + 2 - v181)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v180 = *__dst;
            if (v181 >= 0x3FFFFFFFFFFFFFF3)
            {
              v185 = 0;
              v184 = 0x7FFFFFFFFFFFFFF7;
            }

            else
            {
LABEL_381:
              v182 = 2 * v181;
              if (v179 > 2 * v181)
              {
                v182 = v179;
              }

              if ((v182 | 7) == 0x17)
              {
                v183 = 25;
              }

              else
              {
                v183 = (v182 | 7) + 1;
              }

              if (v182 >= 0x17)
              {
                v184 = v183;
              }

              else
              {
                v184 = 23;
              }

              v185 = v181 == 22;
            }

            v120 = operator new(v184);
            v186 = v120;
            if (v178)
            {
              v120 = memmove(v120, v180, v178);
            }

            *(v186 + v178) = 11303;
            if (!v185)
            {
              operator delete(v180);
            }

            *&__dst[8] = v179;
            *&__dst[16] = v184 | 0x8000000000000000;
            *__dst = v186;
            v187 = v186 + v179;
            goto LABEL_400;
          }

          v188 = *__dst;
          *(*__dst + *&__dst[8]) = 11303;
          v189 = v178 + 2;
          if ((__dst[23] & 0x80000000) != 0)
          {
LABEL_398:
            *&__dst[8] = v189;
            goto LABEL_399;
          }
        }

        else
        {
          if ((__dst[23] - 21) < 2)
          {
            v179 = __dst[23] + 2;
            v180 = __dst;
            v181 = 22;
            goto LABEL_381;
          }

          v188 = __dst;
          *&__dst[__dst[23]] = 11303;
          v189 = v178 + 2;
          if ((__dst[23] & 0x80000000) != 0)
          {
            goto LABEL_398;
          }
        }

        __dst[23] = v189 & 0x7F;
LABEL_399:
        v187 = &v188[v189];
LABEL_400:
        *v187 = 0;
        v714[0] = *&__dst[8];
        v190 = *__dst;
        *(v714 + 7) = *&__dst[15];
        v191 = __dst[23];
        memset(__dst, 0, 24);
        if (SHIBYTE(v708.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v708.__r_.__value_.__l.__data_);
          v708.__r_.__value_.__r.__words[0] = v190;
          v708.__r_.__value_.__l.__size_ = v714[0];
          *(&v708.__r_.__value_.__r.__words[1] + 7) = *(v714 + 7);
          *(&v708.__r_.__value_.__s + 23) = v191;
          if ((__dst[23] & 0x80000000) == 0)
          {
            v192 = alloc[0];
            if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_269;
            }

            goto LABEL_405;
          }

          operator delete(*__dst);
          v192 = alloc[0];
          if ((SHIBYTE(__s2.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_405;
          }

LABEL_269:
          operator delete(__s2.__r_.__value_.__l.__data_);
          if (SHIBYTE(v711.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_406;
          }

LABEL_270:
          v128 = (v128 + 48);
          if (v128 == v192)
          {
            break;
          }
        }

        else
        {
          v708.__r_.__value_.__r.__words[0] = v190;
          v708.__r_.__value_.__l.__size_ = v714[0];
          *(&v708.__r_.__value_.__r.__words[1] + 7) = *(v714 + 7);
          *(&v708.__r_.__value_.__s + 23) = v191;
          v192 = alloc[0];
          if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_269;
          }

LABEL_405:
          if ((SHIBYTE(v711.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_270;
          }

LABEL_406:
          operator delete(v711.__r_.__value_.__l.__data_);
          v128 = (v128 + 48);
          if (v128 == v192)
          {
            break;
          }
        }
      }
    }
  }

  v193 = SHIBYTE(v708.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v708.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (!v708.__r_.__value_.__l.__size_)
    {
      goto LABEL_482;
    }

    --v708.__r_.__value_.__l.__size_;
    *(v708.__r_.__value_.__r.__words[0] + v708.__r_.__value_.__l.__size_) = 0;
    LODWORD(v193) = SHIBYTE(v708.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v708.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_416;
    }

    goto LABEL_420;
  }

  if (*(&v708.__r_.__value_.__s + 23))
  {
    --*(&v708.__r_.__value_.__s + 23);
    v708.__r_.__value_.__s.__data_[v193 - 1] = 0;
    LODWORD(v193) = SHIBYTE(v708.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v708.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_420:
      v194 = v708.__r_.__value_.__l.__size_;
      v195 = v708.__r_.__value_.__r.__words[0];
      if (!v708.__r_.__value_.__l.__size_)
      {
        goto LABEL_482;
      }

      goto LABEL_421;
    }
  }

LABEL_416:
  v194 = v193;
  v195 = &v708;
  if (!v193)
  {
    goto LABEL_482;
  }

LABEL_421:
  v196 = v195;
  if (v194 < 8)
  {
    goto LABEL_989;
  }

  if (v194 < 0x10)
  {
    v197 = 0;
    goto LABEL_424;
  }

  v197 = v194 & 0xFFFFFFFFFFFFFFF0;
  v201 = &v195->__r_.__value_.__s.__data_[7];
  v202.i64[0] = 0x2020202020202020;
  v202.i64[1] = 0x2020202020202020;
  v203 = v194 & 0xFFFFFFFFFFFFFFF0;
  while (2)
  {
    v204 = vceqq_s8(*(v201 - 7), v202);
    if (v204.i8[0])
    {
      *(v201 - 7) = 44;
      if ((v204.i8[1] & 1) == 0)
      {
        goto LABEL_449;
      }

LABEL_465:
      *(v201 - 6) = 44;
      if ((v204.i8[2] & 1) == 0)
      {
        goto LABEL_466;
      }

LABEL_450:
      *(v201 - 5) = 44;
      if ((v204.i8[3] & 1) == 0)
      {
        goto LABEL_451;
      }

LABEL_467:
      *(v201 - 4) = 44;
      if ((v204.i8[4] & 1) == 0)
      {
        goto LABEL_468;
      }

LABEL_452:
      *(v201 - 3) = 44;
      if ((v204.i8[5] & 1) == 0)
      {
        goto LABEL_453;
      }

LABEL_469:
      *(v201 - 2) = 44;
      if ((v204.i8[6] & 1) == 0)
      {
        goto LABEL_470;
      }

LABEL_454:
      *(v201 - 1) = 44;
      if ((v204.i8[7] & 1) == 0)
      {
        goto LABEL_455;
      }

LABEL_471:
      *v201 = 44;
      if ((v204.i8[8] & 1) == 0)
      {
        goto LABEL_472;
      }

LABEL_456:
      v201[1] = 44;
      if ((v204.i8[9] & 1) == 0)
      {
        goto LABEL_457;
      }

LABEL_473:
      v201[2] = 44;
      if ((v204.i8[10] & 1) == 0)
      {
        goto LABEL_474;
      }

LABEL_458:
      v201[3] = 44;
      if ((v204.i8[11] & 1) == 0)
      {
        goto LABEL_459;
      }

LABEL_475:
      v201[4] = 44;
      if ((v204.i8[12] & 1) == 0)
      {
        goto LABEL_476;
      }

LABEL_460:
      v201[5] = 44;
      if ((v204.i8[13] & 1) == 0)
      {
        goto LABEL_461;
      }

LABEL_477:
      v201[6] = 44;
      if ((v204.i8[14] & 1) == 0)
      {
        goto LABEL_478;
      }

LABEL_462:
      v201[7] = 44;
      if (v204.i8[15])
      {
        goto LABEL_479;
      }
    }

    else
    {
      if (v204.i8[1])
      {
        goto LABEL_465;
      }

LABEL_449:
      if (v204.i8[2])
      {
        goto LABEL_450;
      }

LABEL_466:
      if (v204.i8[3])
      {
        goto LABEL_467;
      }

LABEL_451:
      if (v204.i8[4])
      {
        goto LABEL_452;
      }

LABEL_468:
      if (v204.i8[5])
      {
        goto LABEL_469;
      }

LABEL_453:
      if (v204.i8[6])
      {
        goto LABEL_454;
      }

LABEL_470:
      if (v204.i8[7])
      {
        goto LABEL_471;
      }

LABEL_455:
      if (v204.i8[8])
      {
        goto LABEL_456;
      }

LABEL_472:
      if (v204.i8[9])
      {
        goto LABEL_473;
      }

LABEL_457:
      if (v204.i8[10])
      {
        goto LABEL_458;
      }

LABEL_474:
      if (v204.i8[11])
      {
        goto LABEL_475;
      }

LABEL_459:
      if (v204.i8[12])
      {
        goto LABEL_460;
      }

LABEL_476:
      if (v204.i8[13])
      {
        goto LABEL_477;
      }

LABEL_461:
      if (v204.i8[14])
      {
        goto LABEL_462;
      }

LABEL_478:
      if (v204.i8[15])
      {
LABEL_479:
        v201[8] = 44;
      }
    }

    v201 += 16;
    v203 -= 16;
    if (v203)
    {
      continue;
    }

    break;
  }

  if (v194 == v197)
  {
    goto LABEL_481;
  }

  if ((v194 & 8) == 0)
  {
    v196 = (v195 + v197);
LABEL_989:
    v565 = (v195 + v194);
    do
    {
      if (v196->__r_.__value_.__s.__data_[0] == 32)
      {
        v196->__r_.__value_.__s.__data_[0] = 44;
      }

      v196 = (v196 + 1);
    }

    while (v196 != v565);
    goto LABEL_481;
  }

LABEL_424:
  v196 = (v195 + (v194 & 0xFFFFFFFFFFFFFFF8));
  v198 = v197 - (v194 & 0xFFFFFFFFFFFFFFF8);
  v199 = &v195->__r_.__value_.__s.__data_[v197 + 3];
  while (2)
  {
    v200 = vceq_s8(*(v199 - 3), 0x2020202020202020);
    if (v200.i8[0])
    {
      *(v199 - 3) = 44;
      if ((v200.i8[1] & 1) == 0)
      {
        goto LABEL_428;
      }

LABEL_436:
      *(v199 - 2) = 44;
      if ((v200.i8[2] & 1) == 0)
      {
        goto LABEL_437;
      }

LABEL_429:
      *(v199 - 1) = 44;
      if ((v200.i8[3] & 1) == 0)
      {
        goto LABEL_430;
      }

LABEL_438:
      *v199 = 44;
      if ((v200.i8[4] & 1) == 0)
      {
        goto LABEL_439;
      }

LABEL_431:
      v199[1] = 44;
      if ((v200.i8[5] & 1) == 0)
      {
        goto LABEL_432;
      }

LABEL_440:
      v199[2] = 44;
      if ((v200.i8[6] & 1) == 0)
      {
        goto LABEL_441;
      }

LABEL_433:
      v199[3] = 44;
      if (v200.i8[7])
      {
        goto LABEL_442;
      }
    }

    else
    {
      if (v200.i8[1])
      {
        goto LABEL_436;
      }

LABEL_428:
      if (v200.i8[2])
      {
        goto LABEL_429;
      }

LABEL_437:
      if (v200.i8[3])
      {
        goto LABEL_438;
      }

LABEL_430:
      if (v200.i8[4])
      {
        goto LABEL_431;
      }

LABEL_439:
      if (v200.i8[5])
      {
        goto LABEL_440;
      }

LABEL_432:
      if (v200.i8[6])
      {
        goto LABEL_433;
      }

LABEL_441:
      if (v200.i8[7])
      {
LABEL_442:
        v199[4] = 44;
      }
    }

    v199 += 8;
    v198 += 8;
    if (v198)
    {
      continue;
    }

    break;
  }

  if (v194 != (v194 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_989;
  }

LABEL_481:
  LOBYTE(v193) = *(&v708.__r_.__value_.__s + 23);
LABEL_482:
  if ((v193 & 0x80u) == 0)
  {
    v205 = &v708;
  }

  else
  {
    v205 = v708.__r_.__value_.__r.__words[0];
  }

  v206 = v193;
  if ((v193 & 0x80u) != 0)
  {
    v206 = v708.__r_.__value_.__l.__size_;
  }

  if (!v206)
  {
    goto LABEL_1050;
  }

  v207 = v205;
  while (*v207 != 44)
  {
    ++v207;
    if (!--v206)
    {
      goto LABEL_1050;
    }
  }

  memset(__dst, 0, sizeof(__dst));
  v208 = v207 + 1;
  *alloc = xmmword_1E538E420;
  v209 = v205;
  while (2)
  {
    v665 = v208;
    v210 = boost::algorithm::detail::process_segment_helper<false>::operator()<std::deque<char>,std::string,std::__wrap_iter<char *>>(__dst, v205, v209, v207);
    v205 = v210;
    v211 = *&__dst[40];
    v212 = *&__dst[32] + *&__dst[40];
    v214 = *&__dst[16];
    v213 = *&__dst[8];
    v215 = *&__dst[32] >> 12;
    v216 = *&__dst[16] - *&__dst[8];
    v666 = *&__dst[32];
    if (*&__dst[16] == *&__dst[8] || (v217 = (v212 >> 9) & 0x7FFFFFFFFFFFF8, *(*&__dst[8] + v217) + (v212 & 0xFFF) == *(*&__dst[8] + 8 * v215) + (*&__dst[32] & 0xFFF)))
    {
      v218 = 0;
      if (*&__dst[40])
      {
        goto LABEL_504;
      }

LABEL_497:
      v219 = (v216 << 9) - 1;
      v220 = *&__dst[16] - *&__dst[8];
      if (*&__dst[16] == *&__dst[8])
      {
        v219 = 0;
      }

      if (v219 - v212 > 1)
      {
LABEL_696:
        v375 = &v213[8 * (v212 >> 12)];
        if (v214 == v213)
        {
          v376 = 0;
          v377 = v211 - v218;
          if (v377 <= 1)
          {
            goto LABEL_698;
          }
        }

        else
        {
          v376 = (*v375 + (v212 & 0xFFF));
          v377 = v211 - v218;
          if (v377 <= 1)
          {
LABEL_698:
            v378 = v377;
            v379 = &asc_1E53A7FA9[v377];
            v380 = v377;
            v381 = v375;
            v382 = v376;
            do
            {
              *v382++ = asc_1E53A7FA9[v380];
              if (&v382[-*v381] == 4096)
              {
                v383 = *(v381 + 1);
                v381 += 8;
                v382 = v383;
              }

              ++*&__dst[40];
              ++v380;
            }

            while (v380 != 2);
            if (!v377)
            {
              goto LABEL_940;
            }

            v384 = &v376[-v377 - *v375];
            if (v384 >= 1)
            {
              goto LABEL_704;
            }

LABEL_708:
            v389 = 4095 - v384;
            v385 = &v375[-8 * (v389 >> 12)];
            v386 = (*v385 + (~v389 & 0xFFF));
            v387 = v385;
            v388 = v386;
            if (v386 == v376)
            {
              goto LABEL_709;
            }

            while (1)
            {
LABEL_721:
              *v382++ = *v388;
              if (&v382[-*v381] == 4096)
              {
                v398 = *(v381 + 1);
                v381 += 8;
                v382 = v398;
                if (&(++v388)[-*v387] == 4096)
                {
                  goto LABEL_725;
                }
              }

              else if (&(++v388)[-*v387] == 4096)
              {
LABEL_725:
                v399 = *(v387 + 1);
                v387 += 8;
                v388 = v399;
              }

              ++*&__dst[40];
              if (v388 == v376)
              {
                goto LABEL_709;
              }
            }
          }
        }

        v378 = 2;
        v379 = "";
        v381 = v375;
        v382 = v376;
        v384 = &v376[-*v375 - 2];
        if (v384 >= 1)
        {
LABEL_704:
          v385 = &v375[8 * (v384 >> 12)];
          v386 = (*v385 + (v384 & 0xFFF));
          v387 = v385;
          v388 = v386;
          if (v386 != v376)
          {
            goto LABEL_721;
          }

LABEL_709:
          if (v378 >= v377)
          {
            goto LABEL_928;
          }

          v390 = *v375;
          v391 = &v376[-v377 - *v375];
          if (v391 < 1)
          {
            v400 = 4095 - v391;
            v392 = &v375[-8 * (v400 >> 12)];
            v393 = (*v392 + (~v400 & 0xFFF));
            if (v392 != v385)
            {
              goto LABEL_712;
            }
          }

          else
          {
            v392 = &v375[8 * (v391 >> 12)];
            v393 = (*v392 + (v391 & 0xFFF));
            if (v392 != v385)
            {
LABEL_712:
              v394 = *v385;
              if (*v385 != v386)
              {
                while (1)
                {
                  v395 = (v376 - v390);
                  if (v386 - v394 >= v395)
                  {
                    v396 = v395;
                  }

                  else
                  {
                    v396 = v386 - v394;
                  }

                  v386 -= v396;
                  v376 -= v396;
                  if (v396)
                  {
                    memmove(v376, v386, v396);
                  }

                  if (v386 == v394)
                  {
                    break;
                  }

                  v397 = *(v375 - 1);
                  v375 -= 8;
                  v390 = v397;
                  v376 = v397 + 4096;
                }

                goto LABEL_916;
              }

              while (1)
              {
                v385 -= 8;
                if (v385 == v392)
                {
                  break;
                }

                v522 = *v385;
                v523 = (*v385 + 4096);
                while (1)
                {
                  v524 = (v376 - v390);
                  if (v523 - v522 >= v524)
                  {
                    v525 = v524;
                  }

                  else
                  {
                    v525 = v523 - v522;
                  }

                  v523 -= v525;
                  v376 -= v525;
                  if (v525)
                  {
                    memmove(v376, v523, v525);
                  }

                  if (v523 == v522)
                  {
                    break;
                  }

                  v526 = *(v375 - 1);
                  v375 -= 8;
                  v390 = v526;
                  v376 = v526 + 4096;
                }

LABEL_916:
                v390 = *v375;
                if ((*v375 + 4096) == v376)
                {
                  v527 = *(v375 + 1);
                  v375 += 8;
                  v390 = v527;
                  v376 = v527;
                }
              }

              v528 = (*v385 + 4096);
              if (v528 == v393)
              {
LABEL_928:
                if (v379 == ", ")
                {
                  goto LABEL_940;
                }

                v534 = *v375;
                v533 = v375 - 8;
                v535 = &v376[-v534];
                if (v379 - ", " >= &v376[-v534])
                {
                  v536 = v535;
                }

                else
                {
                  v536 = v379 - ", ";
                }

                v537 = &v379[-v536];
                if (v536)
                {
                  goto LABEL_938;
                }

                while (1)
                {
                  do
                  {
                    if (v537 == ", ")
                    {
                      goto LABEL_940;
                    }

                    v538 = *v533;
                    v533 -= 8;
                    v376 = (v538 + 4096);
                    if (v537 - ", " >= 4096)
                    {
                      v536 = 4096;
                    }

                    else
                    {
                      v536 = v537 - ", ";
                    }

                    v537 -= v536;
                  }

                  while (!v536);
LABEL_938:
                  memcpy(&v376[-v536], v537, v536);
                }
              }

              while (1)
              {
                v529 = (v376 - v390);
                if (v528 - v393 >= v529)
                {
                  v530 = v529;
                }

                else
                {
                  v530 = v528 - v393;
                }

                v528 -= v530;
                v376 -= v530;
                if (v530)
                {
                  memmove(v376, v528, v530);
                }

                if (v528 == v393)
                {
                  break;
                }

                v531 = *(v375 - 1);
                v375 -= 8;
                v390 = v531;
                v376 = v531 + 4096;
              }

LABEL_926:
              if ((*v375 + 4096) == v376)
              {
                v532 = *(v375 + 1);
                v375 += 8;
                v376 = v532;
              }

              goto LABEL_928;
            }
          }

          if (v393 == v386)
          {
            goto LABEL_928;
          }

          while (1)
          {
            v401 = (v376 - v390);
            if (v386 - v393 >= v401)
            {
              v402 = v401;
            }

            else
            {
              v402 = v386 - v393;
            }

            v386 -= v402;
            v376 -= v402;
            if (v402)
            {
              memmove(v376, v386, v402);
            }

            if (v386 == v393)
            {
              break;
            }

            v403 = *(v375 - 1);
            v375 -= 8;
            v390 = v403;
            v376 = v403 + 4096;
          }

          goto LABEL_926;
        }

        goto LABEL_708;
      }

      v663 = v210;
      v221 = *&__dst[16];
      v222 = v215 != 0;
      if (v215)
      {
        v666 -= 4096;
        *&__dst[32] = v666;
        v224 = (*&__dst[8] + 8);
        v223 = **&__dst[8];
        if (*&__dst[16] != *&__dst[24])
        {
          v225 = *&__dst[8] + 8;
LABEL_694:
          *v221 = v223;
          *&__dst[8] = v225;
          *&__dst[16] = v221 + 8;
          v214 = v221 + 8;
          v213 = v225;
          goto LABEL_695;
        }

        v252 = *__dst;
        if (v224 > *__dst)
        {
          v253 = ((&v224[-*__dst] >> 3) + 1 + (((&v224[-*__dst] >> 3) + 1) >> 63)) >> 1;
          v225 = &v224[-8 * v253];
          if (*&__dst[16] != v224)
          {
            memmove(&v224[-8 * v253], (*&__dst[8] + 8), *&__dst[16] - v224);
          }

          v221 = (v225 + v221 - v224);
          goto LABEL_694;
        }

        if (*&__dst[16] == *__dst)
        {
          v255 = 1;
        }

        else
        {
          v255 = (*&__dst[16] - *__dst) >> 2;
        }

        if (v255 >> 61)
        {
          *&__dst[8] += 8;
          goto LABEL_1227;
        }

        v256 = operator new(8 * v255);
        v225 = &v256[8 * (v255 >> 2)];
        v257 = v221 - v224;
        v111 = v221 == v224;
        v221 = v225;
        if (!v111)
        {
          v221 = (v225 + v257);
          if ((v220 - 16) >= 0x18)
          {
            v367 = &v256[8 * (v255 >> 2)];
            v258 = v367;
            if ((v367 - v213 - 8) >= 0x20)
            {
              v368 = ((v220 - 16) >> 3) + 1;
              v369 = 8 * (v368 & 0x3FFFFFFFFFFFFFFCLL);
              v258 = (v225 + v369);
              v224 += v369;
              v370 = (v213 + 24);
              v371 = v367 + 16;
              v372 = v368 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v373 = *v370;
                *(v371 - 1) = *(v370 - 1);
                *v371 = v373;
                v370 += 2;
                v371 += 2;
                v372 -= 4;
              }

              while (v372);
              if (v368 == (v368 & 0x3FFFFFFFFFFFFFFCLL))
              {
                goto LABEL_693;
              }
            }
          }

          else
          {
            v258 = &v256[8 * (v255 >> 2)];
          }

          do
          {
            v374 = *v224;
            v224 += 8;
            *v258 = v374;
            v258 += 8;
          }

          while (v258 != v221);
        }

LABEL_693:
        *__dst = v256;
        *&__dst[24] = &v256[8 * v255];
        operator delete(v252);
        goto LABEL_694;
      }

      v662 = v218;
      v245 = *&__dst[24];
      v246 = *__dst;
      v247 = v220 >> 3;
      if (__PAIR128__(((*&__dst[24] - *__dst) >> 3) - (v220 >> 3), 0) < 1)
      {
        if ((*&__dst[24] - *__dst) >> 2 <= v247 + (v215 == 0))
        {
          v248 = v247 + (v215 == 0);
        }

        else
        {
          v248 = (*&__dst[24] - *__dst) >> 2;
        }

        if (v248)
        {
          if (v248 >> 61)
          {
            goto LABEL_1227;
          }

          v249 = operator new(8 * v248);
        }

        else
        {
          v249 = 0;
        }

        __src = v249;
        v322 = operator new(0x1000uLL);
        v323 = &v249[8 * (v247 - v222)];
        if (v247 - v222 == v248)
        {
          if (v247 == v222)
          {
            v324 = operator new(8uLL);
            v323 = v324 + 8;
            v218 = v662;
            if (__src)
            {
              operator delete(__src);
            }

            __src = v324;
LABEL_637:
            *v324 = v322;
            v214 = v324 + 8;
            if (v666 < 0x1000)
            {
LABEL_638:
              if (v221 == v213)
              {
LABEL_639:
                v327 = *__dst;
                *__dst = __src;
                *&__dst[8] = v324;
                *&__dst[16] = v214;
                *&__dst[24] = v323;
                *&__dst[32] = v666;
                if (v327)
                {
                  operator delete(v327);
                }

                v213 = v324;
                goto LABEL_695;
              }

              while (1)
              {
                if (v324 == __src)
                {
                  if (v214 >= v323)
                  {
                    if (v323 == __src)
                    {
                      v330 = 1;
                    }

                    else
                    {
                      v330 = (v323 - __src) >> 2;
                    }

                    if (v330 >> 61)
                    {
                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v331 = operator new(8 * v330);
                    v332 = v331;
                    v333 = (v330 + 3) >> 2;
                    v328 = &v331[8 * v333];
                    v334 = v214 - __src;
                    v111 = v214 == __src;
                    v214 = v328;
                    if (!v111)
                    {
                      v214 = &v328[v334];
                      v335 = v334 - 8;
                      if (v335 < 0x18 || (v336 = 8 * v333, (&v331[8 * v333] - v324) < 0x20))
                      {
                        v337 = &v331[8 * v333];
                        v338 = v324;
                        goto LABEL_656;
                      }

                      v340 = (v335 >> 3) + 1;
                      v341 = 8 * (v340 & 0x3FFFFFFFFFFFFFFCLL);
                      v337 = &v328[v341];
                      v338 = &v324[v341];
                      v342 = (v324 + 16);
                      v343 = &v331[v336 + 16];
                      v344 = v340 & 0x3FFFFFFFFFFFFFFCLL;
                      do
                      {
                        v345 = *v342;
                        *(v343 - 1) = *(v342 - 1);
                        *v343 = v345;
                        v342 += 2;
                        v343 += 32;
                        v344 -= 4;
                      }

                      while (v344);
                      if (v340 != (v340 & 0x3FFFFFFFFFFFFFFCLL))
                      {
                        do
                        {
LABEL_656:
                          v339 = *v338;
                          v338 += 8;
                          *v337 = v339;
                          v337 += 8;
                        }

                        while (v337 != v214);
                      }
                    }

                    v323 = &v331[8 * v330];
                    if (__src)
                    {
                      operator delete(__src);
                    }

                    __src = v332;
                    goto LABEL_643;
                  }

                  v328 = __src + 8 * ((((v323 - v214) >> 3) + 1 + ((((v323 - v214) >> 3) + 1) >> 63)) >> 1);
                  v329 = v214 - __src;
                  v111 = v214 == __src;
                  v214 += 8 * ((((v323 - v214) >> 3) + 1 + ((((v323 - v214) >> 3) + 1) >> 63)) >> 1);
                  if (!v111)
                  {
                    memmove(v328, v324, v329);
                  }
                }

                else
                {
                  v328 = v324;
                }

LABEL_643:
                *(v328 - 1) = *(v221 - 1);
                v324 = v328 - 8;
                v221 -= 8;
                if (v221 == v213)
                {
                  goto LABEL_639;
                }
              }
            }

            while (1)
            {
              while (v214 != v323)
              {
                v346 = *v213;
                v213 += 8;
                *v214 = v346;
                v214 += 8;
                *&__dst[8] = v213;
                if (!--v222)
                {
                  goto LABEL_638;
                }
              }

              if (v324 <= __src)
              {
                break;
              }

              v347 = (((v324 - __src) >> 3) + 1 + ((((v324 - __src) >> 3) + 1) >> 63)) >> 1;
              v348 = &v324[-8 * v347];
              if (v323 != v324)
              {
                memmove(&v324[-8 * v347], v324, v323 - v324);
              }

              v349 = &v348[v323 - v324];
LABEL_682:
              v360 = *v213;
              v213 += 8;
              *v349 = v360;
              v214 = v349 + 8;
              *&__dst[8] = v213;
              v324 = v348;
              if (!--v222)
              {
                goto LABEL_638;
              }
            }

            if (v323 == __src)
            {
              v350 = 1;
            }

            else
            {
              v350 = (v323 - __src) >> 2;
            }

            if (v350 >> 61)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v351 = operator new(8 * v350);
            v352 = v351;
            v353 = v350 >> 2;
            v348 = &v351[8 * (v350 >> 2)];
            v349 = v348;
            v354 = v323 - v324;
            if (v323 != v324)
            {
              v349 = &v348[v354];
              v355 = v354 - 8;
              if (v355 >= 0x18 && (v356 = 8 * v353, (&v351[8 * v353] - v324) >= 0x20))
              {
                v361 = (v355 >> 3) + 1;
                v362 = 8 * (v361 & 0x3FFFFFFFFFFFFFFCLL);
                v357 = &v348[v362];
                v358 = &v324[v362];
                v363 = (v324 + 16);
                v364 = &v351[v356 + 16];
                v365 = v361 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v366 = *v363;
                  *(v364 - 1) = *(v363 - 1);
                  *v364 = v366;
                  v363 += 2;
                  v364 += 32;
                  v365 -= 4;
                }

                while (v365);
                if (v361 == (v361 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_679;
                }
              }

              else
              {
                v357 = &v351[8 * (v350 >> 2)];
                v358 = v324;
              }

              do
              {
                v359 = *v358;
                v358 += 8;
                *v357 = v359;
                v357 += 8;
              }

              while (v357 != v349);
            }

LABEL_679:
            v323 = &v351[8 * v350];
            if (__src)
            {
              operator delete(__src);
            }

            __src = v352;
            goto LABEL_682;
          }

          v324 = &v323[-((4 * (v247 - v222) + 4) & 0xFFFFFFFFFFFFFFF8)];
        }

        else
        {
          v324 = &v249[8 * (v247 - v222)];
          v323 = &v249[8 * v248];
        }

        v218 = v662;
        goto LABEL_637;
      }

      if (*&__dst[24] != *&__dst[16])
      {
        *v221 = operator new(0x1000uLL);
        *&__dst[16] = v221 + 8;
        *&__dst[32] = v666;
        v214 = v221 + 8;
        v218 = v662;
LABEL_695:
        v211 = *&__dst[40];
        v212 = *&__dst[40] + v666;
        v205 = v663;
        goto LABEL_696;
      }

      v325 = operator new(0x1000uLL);
      if (v213 == v246)
      {
        if (v221 == v213)
        {
          v418 = 1;
        }

        else
        {
          v418 = (v245 - v213) >> 2;
        }

        if (v418 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v419 = operator new(8 * v418);
        v420 = (v418 + 3) >> 2;
        v326 = &v419[8 * v420];
        v421 = v221 - v213;
        v111 = v221 == v213;
        v221 = v326;
        if (!v111)
        {
          v221 = &v326[v220];
          v422 = v421 - 8;
          v423 = &v419[8 * v420];
          v424 = v213;
          if (v422 < 0x18)
          {
            goto LABEL_1242;
          }

          v425 = 8 * v420;
          v423 = &v419[8 * v420];
          v424 = v213;
          if ((v423 - v213) < 0x20)
          {
            goto LABEL_1242;
          }

          v426 = (v422 >> 3) + 1;
          v427 = 8 * (v426 & 0x3FFFFFFFFFFFFFFCLL);
          v423 = &v326[v427];
          v424 = &v213[v427];
          v428 = (v213 + 16);
          v429 = &v419[v425 + 16];
          v430 = v426 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v431 = *v428;
            *(v429 - 1) = *(v428 - 1);
            *v429 = v431;
            v428 += 2;
            v429 += 32;
            v430 -= 4;
          }

          while (v430);
          if (v426 != (v426 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_1242:
            do
            {
              v432 = *v424;
              v424 += 8;
              *v423 = v432;
              v423 += 8;
            }

            while (v423 != v221);
          }
        }

        *__dst = v419;
        *&__dst[8] = v326;
        *&__dst[16] = v221;
        *&__dst[24] = &v419[8 * v418];
        if (v213)
        {
          operator delete(v246);
          v221 = *&__dst[16];
          v326 = *&__dst[8];
          v666 = *&__dst[32];
        }
      }

      else
      {
        v326 = v213;
      }

      *(v326 - 1) = v325;
      v433 = v326 - 8;
      v434 = 4095;
      if (v221 - v433 != 8)
      {
        v434 = 4096;
      }

      *&__dst[8] = v433;
      v666 = v434 + v666 - 4096;
      *&__dst[32] = v666;
      v435 = v433;
      v436 = *&__dst[24];
      v437 = v433 + 8;
      v438 = *v433;
      if (v221 != *&__dst[24])
      {
        v439 = v433 + 8;
LABEL_906:
        v218 = v662;
        *v221 = v438;
        *&__dst[8] = v439;
        *&__dst[16] = v221 + 8;
        v214 = v221 + 8;
        v213 = v439;
        goto LABEL_695;
      }

      v440 = *__dst;
      if (v437 > *__dst)
      {
        v441 = ((&v437[-*__dst] >> 3) + 1 + (((&v437[-*__dst] >> 3) + 1) >> 63)) >> 1;
        v439 = &v437[-8 * v441];
        if (*&__dst[24] != v437)
        {
          memmove(&v437[-8 * v441], v435 + 8, *&__dst[24] - v437);
        }

        v221 = &v439[v436 - v437];
        goto LABEL_906;
      }

      if (*&__dst[24] == *__dst)
      {
        v442 = 1;
      }

      else
      {
        v442 = (*&__dst[24] - *__dst) >> 2;
      }

      if (v442 >> 61)
      {
        *&__dst[8] = v433 + 8;
        goto LABEL_1227;
      }

      v443 = operator new(8 * v442);
      v439 = &v443[8 * (v442 >> 2)];
      v221 = v439;
      if (v436 != v437)
      {
        v221 = &v439[v436 - v437];
        v444 = v436 - v435 - 16;
        if (v444 >= 0x18)
        {
          v514 = &v443[8 * (v442 >> 2)];
          v445 = v514;
          if ((v514 - v435 - 8) >= 0x20)
          {
            v515 = (v444 >> 3) + 1;
            v516 = 8 * (v515 & 0x3FFFFFFFFFFFFFFCLL);
            v445 = &v439[v516];
            v437 += v516;
            v517 = (v435 + 24);
            v518 = v514 + 16;
            v519 = v515 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v520 = *v517;
              *(v518 - 1) = *(v517 - 1);
              *v518 = v520;
              v517 += 2;
              v518 += 2;
              v519 -= 4;
            }

            while (v519);
            if (v515 == (v515 & 0x3FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_905;
            }
          }
        }

        else
        {
          v445 = &v443[8 * (v442 >> 2)];
        }

        do
        {
          v521 = *v437;
          v437 += 8;
          *v445 = v521;
          v445 += 8;
        }

        while (v445 != v221);
      }

LABEL_905:
      *__dst = v443;
      *&__dst[24] = &v443[8 * v442];
      operator delete(v440);
      goto LABEL_906;
    }

    v218 = (v212 & 0xFFF) + ((v217 - 8 * v215) << 9) - (*&__dst[32] & 0xFFF);
    if (v218 >= *&__dst[40] - v218)
    {
      goto LABEL_497;
    }

LABEL_504:
    v226 = v666;
    if (v666 > 1)
    {
      goto LABEL_805;
    }

    v227 = (v216 << 9) - 1;
    v228 = *&__dst[16] - *&__dst[8];
    if (*&__dst[16] == *&__dst[8])
    {
      v227 = 0;
    }

    v229 = ((*&__dst[16] == *&__dst[8]) - v666 + 2) >> 12;
    v230 = v229 + 1;
    v231 = v227 - v212;
    v232 = (v227 - v212) >> 12;
    if (v229 + 1 < v232)
    {
      v233 = v229 + 1;
    }

    else
    {
      v233 = v232;
    }

    v663 = v210;
    if (v229 < v232)
    {
      v234 = v666 | (v233 << 12);
      *&__dst[32] = v234;
      v235 = *__dst;
      v237 = (*&__dst[16] - 8);
      v236 = *(*&__dst[16] - 8);
      if (*&__dst[8] != *__dst)
      {
        v238 = *&__dst[8];
LABEL_513:
        *(v238 - 1) = v236;
        v239 = v238 - 8;
        *&__dst[8] = v239;
        *&__dst[16] = v237;
        goto LABEL_804;
      }

      if (v237 < *&__dst[24])
      {
        v238 = (8 * ((((*&__dst[24] - v237) >> 3) + 1 + ((((*&__dst[24] - v237) >> 3) + 1) >> 63)) >> 1) + *&__dst[8]);
        v254 = &v237[-*&__dst[8]];
        v111 = v237 == *&__dst[8];
        v237 += 8 * ((((*&__dst[24] - v237) >> 3) + 1 + ((((*&__dst[24] - v237) >> 3) + 1) >> 63)) >> 1);
        if (!v111)
        {
          memmove(v238, *&__dst[8], v254);
        }

        goto LABEL_513;
      }

      if (*&__dst[24] == *&__dst[8])
      {
        v264 = 1;
      }

      else
      {
        v264 = (*&__dst[24] - *&__dst[8]) >> 2;
      }

      if (!(v264 >> 61))
      {
        v265 = operator new(8 * v264);
        v266 = (v264 + 3) >> 2;
        v238 = &v265[8 * v266];
        v267 = v237 - v213;
        v111 = v237 == v213;
        v237 = v238;
        if (!v111)
        {
          v237 = &v238[v267];
          v268 = &v265[8 * v266];
          v269 = v213;
          if ((v228 - 16) < 0x18)
          {
            goto LABEL_1243;
          }

          v270 = 8 * v266;
          v268 = &v265[8 * v266];
          v269 = v213;
          if ((v268 - v213) < 0x20)
          {
            goto LABEL_1243;
          }

          v271 = ((v228 - 16) >> 3) + 1;
          v272 = 8 * (v271 & 0x3FFFFFFFFFFFFFFCLL);
          v268 = &v238[v272];
          v269 = &v213[v272];
          v273 = (v213 + 16);
          v274 = &v265[v270 + 16];
          v275 = v271 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v276 = *v273;
            *(v274 - 1) = *(v273 - 1);
            *v274 = v276;
            v273 += 2;
            v274 += 32;
            v275 -= 4;
          }

          while (v275);
          if (v271 != (v271 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_1243:
            do
            {
              v277 = *v269;
              v269 += 8;
              *v268 = v277;
              v268 += 8;
            }

            while (v268 != v237);
          }
        }

        *__dst = v265;
        *&__dst[24] = &v265[8 * v264];
        if (v213)
        {
          operator delete(v235);
        }

        goto LABEL_513;
      }

      *&__dst[16] -= 8;
LABEL_1227:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v662 = v218;
    v664 = v229 + 1;
    v240 = *&__dst[24];
    v241 = *__dst;
    v242 = v228 >> 3;
    if (v230 - v233 <= ((*&__dst[24] - *__dst) >> 3) - (v228 >> 3))
    {
      if (*&__dst[8] == *__dst)
      {
        v262 = *&__dst[16];
        v263 = operator new(0x1000uLL);
        if (v214 == v240)
        {
          if (v214 == v213)
          {
            v404 = 1;
          }

          else
          {
            v404 = (v214 - v241) >> 2;
          }

          if (v404 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v405 = operator new(8 * v404);
          v406 = v404 >> 2;
          v239 = &v405[8 * (v404 >> 2)];
          v407 = v239;
          if (v262 != v213)
          {
            v408 = v262 - v213 - 8;
            v409 = &v405[8 * (v404 >> 2)];
            v410 = v213;
            if (v408 < 0x18)
            {
              goto LABEL_775;
            }

            v411 = 8 * v406;
            v409 = &v405[8 * (v404 >> 2)];
            v410 = v213;
            if ((&v405[8 * v406] - v213) < 0x20)
            {
              goto LABEL_775;
            }

            v412 = (v408 >> 3) + 1;
            v413 = 8 * (v412 & 0x3FFFFFFFFFFFFFFCLL);
            v409 = &v239[v413];
            v410 = &v213[v413];
            v414 = (v213 + 16);
            v415 = &v405[v411 + 16];
            v416 = v412 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v417 = *v414;
              *(v415 - 1) = *(v414 - 1);
              *v415 = v417;
              v414 += 2;
              v415 += 2;
              v416 -= 4;
            }

            while (v416);
            if (v412 == (v412 & 0x3FFFFFFFFFFFFFFCLL))
            {
              v407 = &v239[v228];
            }

            else
            {
LABEL_775:
              v407 = &v239[v228];
              do
              {
                v446 = *v410;
                v410 += 8;
                *v409 = v446;
                v409 += 8;
              }

              while (v409 != &v239[v228]);
            }
          }

          *__dst = v405;
          *&__dst[8] = &v405[8 * (v404 >> 2)];
          *&__dst[16] = v407;
          *&__dst[24] = &v405[8 * v404];
          v214 = v407;
          if (v213)
          {
            operator delete(v241);
            v214 = *&__dst[16];
            v239 = *&__dst[8];
            v666 = *&__dst[32];
          }
        }

        else
        {
          v239 = v213;
        }

        *v214 = v263;
        v214 += 8;
        v321 = v233 + 1;
        *&__dst[16] = v214;
        v666 += (v233 + 1) << 12;
        *&__dst[32] = v666;
      }

      else
      {
        *(v213 - 1) = operator new(0x1000uLL);
        v250 = v213 - 8;
        v239 = v250;
        v251 = 4095;
        if (v214 - v250 != 8)
        {
          v251 = 4096;
        }

        v234 = v251 + v666 + (v233 << 12);
        *&__dst[8] = v250;
        *&__dst[32] = v234;
        if (v231 < 0x1000)
        {
          v237 = v214;
          v218 = v662;
          goto LABEL_804;
        }

        v666 = v234;
        v321 = 1;
      }

      v447 = *__dst;
      v448 = *&__dst[24];
      v237 = v214;
      while (1)
      {
        v450 = v237 - 8;
        v451 = *(v237 - 1);
        if (v239 == v447)
        {
          if (v450 >= v448)
          {
            if (v448 == v447)
            {
              v452 = 1;
            }

            else
            {
              v452 = (v448 - v447) >> 2;
            }

            if (v452 >> 61)
            {
              *&__dst[16] = v237 - 8;
              goto LABEL_1227;
            }

            v453 = operator new(8 * v452);
            v454 = v453;
            v455 = (v452 + 3) >> 2;
            v449 = &v453[8 * v455];
            v456 = v449;
            if (v450 != v447)
            {
              v456 = &v449[v450 - v447];
              v457 = v237 - v447 - 16;
              if (v457 < 0x18 || (v458 = 8 * v455, (&v453[8 * v455] - v239) < 0x20))
              {
                v459 = &v453[8 * v455];
                v460 = v239;
                goto LABEL_795;
              }

              v462 = (v457 >> 3) + 1;
              v463 = 8 * (v462 & 0x3FFFFFFFFFFFFFFCLL);
              v459 = &v449[v463];
              v460 = &v239[v463];
              v464 = (v239 + 16);
              v465 = &v453[v458 + 16];
              v466 = v462 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v467 = *v464;
                *(v465 - 1) = *(v464 - 1);
                *v465 = v467;
                v464 += 2;
                v465 += 2;
                v466 -= 4;
              }

              while (v466);
              if (v462 != (v462 & 0x3FFFFFFFFFFFFFFCLL))
              {
                do
                {
LABEL_795:
                  v461 = *v460;
                  v460 += 8;
                  *v459 = v461;
                  v459 += 8;
                }

                while (v459 != v456);
              }
            }

            v448 = &v453[8 * v452];
            *__dst = v453;
            *&__dst[24] = v448;
            if (v447)
            {
              operator delete(v447);
            }

            v447 = v454;
            v237 = v456;
            goto LABEL_782;
          }

          v237 = &v450[8 * ((((v448 - v450) >> 3) + 1 + ((((v448 - v450) >> 3) + 1) >> 63)) >> 1)];
          v449 = &v447[8 * ((((v448 - v450) >> 3) + 1 + ((((v448 - v450) >> 3) + 1) >> 63)) >> 1)];
          if (v450 != v447)
          {
            memmove(&v447[8 * ((((v448 - v450) >> 3) + 1 + ((((v448 - v450) >> 3) + 1) >> 63)) >> 1)], v239, v450 - v447);
          }
        }

        else
        {
          v237 -= 8;
          v449 = v239;
        }

LABEL_782:
        *(v449 - 1) = v451;
        v239 = v449 - 8;
        *&__dst[8] = v449 - 8;
        if (!--v321)
        {
          *&__dst[16] = v237;
          v218 = v662;
          v234 = v666;
          goto LABEL_804;
        }
      }
    }

    if (*&__dst[16] == *&__dst[8])
    {
      v243 = -1;
    }

    else
    {
      v243 = 0;
    }

    if ((*&__dst[24] - *__dst) >> 2 <= v230 - v233 + v242)
    {
      v244 = v230 - v233 + v242;
    }

    else
    {
      v244 = (*&__dst[24] - *__dst) >> 2;
    }

    if (v244)
    {
      if (v244 >> 61)
      {
        goto LABEL_1227;
      }

      __src = operator new(8 * v244);
    }

    else
    {
      __src = 0;
    }

    v218 = v662;
    v259 = operator new(0x1000uLL);
    v661 = v243;
    if (v244)
    {
      v260 = __src;
      v261 = __src + 8 * v244;
    }

    else
    {
      v260 = operator new(8uLL);
      v261 = v260 + 8;
      if (__src)
      {
        operator delete(__src);
      }
    }

    *v260 = v259;
    v237 = v260 + 8;
    __src = v260;
    v239 = v260;
    if (v231 >= 0x1000)
    {
      while (1)
      {
        while (v237 != v261)
        {
          v299 = *(v214 - 1);
          v214 -= 8;
          *v237 = v299;
          v237 += 8;
          *&__dst[16] = v214;
          if (!--v233)
          {
            goto LABEL_573;
          }
        }

        if (v239 <= __src)
        {
          break;
        }

        v300 = (((v239 - __src) >> 3) + 1 + ((((v239 - __src) >> 3) + 1) >> 63)) >> 1;
        v301 = &v239[-8 * v300];
        if (v261 != v239)
        {
          memmove(&v239[-8 * v300], v239, v261 - v239);
        }

        v302 = &v301[v261 - v239];
LABEL_616:
        v313 = *(v214 - 1);
        v214 -= 8;
        *v302 = v313;
        v237 = v302 + 8;
        *&__dst[16] = v214;
        v239 = v301;
        if (!--v233)
        {
          goto LABEL_573;
        }
      }

      if (v261 == __src)
      {
        v303 = 1;
      }

      else
      {
        v303 = (v261 - __src) >> 2;
      }

      if (v303 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v304 = operator new(8 * v303);
      v305 = v304;
      v306 = v303 >> 2;
      v301 = &v304[8 * (v303 >> 2)];
      v302 = v301;
      v307 = v261 - v239;
      if (v261 != v239)
      {
        v302 = &v301[v307];
        v308 = v307 - 8;
        if (v308 >= 0x18 && (v309 = 8 * v306, (&v304[8 * v306] - v239) >= 0x20))
        {
          v314 = (v308 >> 3) + 1;
          v315 = 8 * (v314 & 0x3FFFFFFFFFFFFFFCLL);
          v310 = &v301[v315];
          v311 = &v239[v315];
          v316 = (v239 + 16);
          v317 = &v304[v309 + 16];
          v318 = v314 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v319 = *v316;
            *(v317 - 1) = *(v316 - 1);
            *v317 = v319;
            v316 += 2;
            v317 += 32;
            v318 -= 4;
          }

          while (v318);
          if (v314 == (v314 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_613;
          }
        }

        else
        {
          v310 = &v304[8 * (v303 >> 2)];
          v311 = v239;
        }

        do
        {
          v312 = *v311;
          v311 += 8;
          *v310 = v312;
          v310 += 8;
        }

        while (v310 != v302);
      }

LABEL_613:
      v261 = &v304[8 * v303];
      if (__src)
      {
        operator delete(__src);
      }

      __src = v305;
      goto LABEL_616;
    }

LABEL_573:
    v278 = v213 == v214;
    v279 = __src;
    while (!v278)
    {
      if (v237 != v261)
      {
        v280 = v239;
        goto LABEL_575;
      }

      if (v239 > v279)
      {
        v282 = (((v239 - v279) >> 3) + 1 + ((((v239 - v279) >> 3) + 1) >> 63)) >> 1;
        v280 = &v239[-8 * v282];
        if (v261 != v239)
        {
          memmove(&v239[-8 * v282], v239, v261 - v239);
        }

        v237 = &v280[v261 - v239];
        goto LABEL_575;
      }

      if (v261 == v279)
      {
        v283 = 1;
      }

      else
      {
        v283 = (v261 - v279) >> 2;
      }

      if (v283 >> 61)
      {
        __src = v279;
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v284 = operator new(8 * v283);
      v285 = v284;
      v286 = v283 >> 2;
      v280 = &v284[8 * (v283 >> 2)];
      v237 = v280;
      v287 = v261 - v239;
      if (v261 != v239)
      {
        v237 = &v280[v287];
        v288 = v287 - 8;
        if (v288 >= 0x18 && (v289 = 8 * v286, (&v284[8 * v286] - v239) >= 0x20))
        {
          v293 = (v288 >> 3) + 1;
          v294 = 8 * (v293 & 0x3FFFFFFFFFFFFFFCLL);
          v290 = &v280[v294];
          v291 = &v239[v294];
          v295 = (v239 + 16);
          v296 = &v284[v289 + 16];
          v297 = v293 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v298 = *v295;
            *(v296 - 1) = *(v295 - 1);
            *v296 = v298;
            v295 += 2;
            v296 += 2;
            v297 -= 4;
          }

          while (v297);
          if (v293 == (v293 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_591;
          }
        }

        else
        {
          v290 = &v284[8 * (v283 >> 2)];
          v291 = v239;
        }

        do
        {
          v292 = *v291;
          v291 += 8;
          *v290 = v292;
          v290 += 8;
        }

        while (v290 != v237);
      }

LABEL_591:
      v261 = &v284[8 * v283];
      if (v279)
      {
        operator delete(v279);
      }

      v279 = v285;
LABEL_575:
      v281 = *v213;
      v213 += 8;
      *v237 = v281;
      v237 += 8;
      v239 = v280;
      v278 = v213 == v214;
    }

    v320 = *__dst;
    *__dst = v279;
    *&__dst[8] = v239;
    *&__dst[16] = v237;
    *&__dst[24] = v261;
    v234 = v666 + v661 + (v664 << 12);
    *&__dst[32] = v234;
    if (v320)
    {
      operator delete(v320);
    }

LABEL_804:
    v226 = v234;
    v215 = v234 >> 12;
    v214 = v237;
    v213 = v239;
    v205 = v663;
LABEL_805:
    v468 = &v213[8 * v215];
    if (v214 == v213)
    {
      v469 = 0;
      if (v218 > 1)
      {
        goto LABEL_818;
      }

LABEL_807:
      v470 = v468;
      v471 = v469;
      if (*v468 == v469)
      {
        v470 = (v468 - 8);
        v471 = *(v468 - 1) + 4096;
      }

      v472 = &asc_1E53A7FA9[-v218 + 2];
      *(v471 - 1) = asc_1E53A7FA9[-v218 + 1];
      v473 = (v471 - 1);
      *&__dst[32] = vaddq_s64(*&__dst[32], *alloc);
      if (&asc_1E53A7FA9[-v218 + 1] != ", ")
      {
        if (v473 == *v470)
        {
          v474 = *--v470;
          v473 = (v474 + 4096);
        }

        *--v473 = asc_1E53A7FA9[-v218];
        *&__dst[32] = vaddq_s64(*&__dst[32], *alloc);
      }

      v475 = v218;
      if (v218)
      {
        v476 = &v469[v218 - *v468];
        if (v476 < 1)
        {
          goto LABEL_819;
        }

        goto LABEL_815;
      }

      goto LABEL_940;
    }

    v469 = (*v468 + (v226 & 0xFFF));
    if (v218 <= 1)
    {
      goto LABEL_807;
    }

LABEL_818:
    v475 = 2;
    v472 = ", ";
    v470 = v468;
    v473 = v469;
    v476 = &v469[-*v468 + 2];
    if (v476 < 1)
    {
LABEL_819:
      v481 = 4095 - v476;
      v477 = &v468[-8 * (v481 >> 12)];
      v478 = (*v477 + (~v481 & 0xFFF));
      v479 = v477;
      v480 = v478;
      if (v478 == v469)
      {
        goto LABEL_820;
      }

LABEL_831:
      while (2)
      {
        if (v473 == *v470)
        {
          v490 = *--v470;
          v473 = (v490 + 4096);
          if (v480 == *v479)
          {
            goto LABEL_833;
          }
        }

        else if (v480 == *v479)
        {
LABEL_833:
          v492 = *--v479;
          v480 = (v492 + 4096);
        }

        v491 = *--v480;
        *--v473 = v491;
        *&__dst[32] = vaddq_s64(*&__dst[32], *alloc);
        if (v480 == v469)
        {
          goto LABEL_820;
        }

        continue;
      }
    }

LABEL_815:
    v477 = &v468[8 * (v476 >> 12)];
    v478 = (*v477 + (v476 & 0xFFF));
    v479 = v477;
    v480 = v478;
    if (v478 != v469)
    {
      goto LABEL_831;
    }

LABEL_820:
    if (v475 >= v218)
    {
      if (v472 == "")
      {
        goto LABEL_940;
      }

      goto LABEL_890;
    }

    v482 = v205;
    v483 = *v468;
    v484 = &v469[v218 - *v468];
    if (v484 < 1)
    {
      v495 = 4095 - v484;
      v485 = &v468[-8 * (v495 >> 12)];
      v486 = *v485 + (~v495 & 0xFFF);
      if (v477 == v485)
      {
        goto LABEL_847;
      }

LABEL_823:
      v487 = *v477 + 4096;
      if (v487 != v478)
      {
        v468 += 8;
        v488 = v483 - v469 + 4096;
        if (v487 - v478 >= v488)
        {
          v489 = v488;
        }

        else
        {
          v489 = v487 - v478;
        }

        if (v489)
        {
          goto LABEL_838;
        }

        while (1)
        {
          v478 += v489;
          if (v478 == v487)
          {
            break;
          }

          v493 = *v468;
          v468 += 8;
          v469 = v493;
          if (v487 - v478 >= 4096)
          {
            v489 = 4096;
          }

          else
          {
            v489 = v487 - v478;
          }

          if (v489)
          {
LABEL_838:
            memmove(v469, v478, v489);
          }
        }

        v469 += v489;
        v483 = *(v468 - 1);
        if (v483 + 4096 == v469)
        {
          v483 = *v468;
          v469 = *v468;
          v494 = (v477 + 8);
          if (v477 + 8 != v485)
          {
            goto LABEL_863;
          }

          goto LABEL_873;
        }

        v468 -= 8;
      }

      v494 = (v477 + 8);
      if (v477 + 8 != v485)
      {
        do
        {
LABEL_863:
          while (1)
          {
            v499 = 0;
            v500 = *v494;
            for (v468 += 8; ; v468 += 8)
            {
              v501 = v483 - v469 + 4096;
              if (4096 - v499 >= v501)
              {
                v502 = v501;
              }

              else
              {
                v502 = 4096 - v499;
              }

              if (v502)
              {
                memmove(v469, &v500[v499], v502);
              }

              v499 += v502;
              if (v499 == 4096)
              {
                break;
              }

              v503 = *v468;
              v483 = v503;
              v469 = v503;
            }

            v469 += v502;
            v483 = *(v468 - 1);
            if (v483 + 4096 != v469)
            {
              break;
            }

            v483 = *v468;
            v469 = *v468;
            if (++v494 == v485)
            {
              goto LABEL_873;
            }
          }

          v468 -= 8;
          ++v494;
        }

        while (v494 != v485);
      }

LABEL_873:
      v504 = *v494;
      v205 = v482;
      if (*v494 != v486)
      {
        v505 = *v468;
        v468 += 8;
        v506 = v505 - v469 + 4096;
        if (v486 - v504 >= v506)
        {
          v497 = v506;
        }

        else
        {
          v497 = v486 - v504;
        }

        if (v497)
        {
          goto LABEL_883;
        }

        while (1)
        {
          do
          {
            v504 += v497;
            if (v504 == v486)
            {
              goto LABEL_885;
            }

            v507 = *v468;
            v468 += 8;
            v469 = v507;
            if (v486 - v504 >= 4096)
            {
              v497 = 4096;
            }

            else
            {
              v497 = v486 - v504;
            }
          }

          while (!v497);
LABEL_883:
          memmove(v469, v504, v497);
        }
      }

LABEL_889:
      if (v472 == "")
      {
        goto LABEL_940;
      }

      goto LABEL_890;
    }

    v485 = &v468[8 * (v484 >> 12)];
    v486 = *v485 + (v484 & 0xFFF);
    if (v477 != v485)
    {
      goto LABEL_823;
    }

LABEL_847:
    if (v478 == v486)
    {
      v205 = v482;
      if (v472 != "")
      {
        goto LABEL_890;
      }

      goto LABEL_940;
    }

    v468 += 8;
    v205 = v482;
    v496 = v483 - v469 + 4096;
    if (v486 - v478 >= v496)
    {
      v497 = v496;
    }

    else
    {
      v497 = v486 - v478;
    }

    if (v497)
    {
LABEL_857:
      memmove(v469, v478, v497);
    }

    while (1)
    {
      v478 += v497;
      if (v478 == v486)
      {
        break;
      }

      v498 = *v468;
      v468 += 8;
      v469 = v498;
      if (v486 - v478 >= 4096)
      {
        v497 = 4096;
      }

      else
      {
        v497 = v486 - v478;
      }

      if (v497)
      {
        goto LABEL_857;
      }
    }

LABEL_885:
    v469 += v497;
    if ((*(v468 - 1) + 4096) == v469)
    {
      v469 = *v468;
      goto LABEL_889;
    }

    v468 -= 8;
    if (v472 == "")
    {
      goto LABEL_940;
    }

LABEL_890:
    v510 = *v468;
    v509 = (v468 + 8);
    v508 = v510;
    while (1)
    {
      v511 = v508 - v469 + 4096;
      if (", " - v472 + 2 >= v511)
      {
        v512 = v511;
      }

      else
      {
        v512 = ", " - v472 + 2;
      }

      if (v512)
      {
        memcpy(v469, v472, v512);
      }

      v472 += v512;
      if (v472 == "")
      {
        break;
      }

      v513 = *v509++;
      v508 = v513;
      v469 = v513;
    }

LABEL_940:
    v539 = HIBYTE(v708.__r_.__value_.__r.__words[2]);
    v540 = &v708;
    if ((v708.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v539 = v708.__r_.__value_.__l.__size_;
      v540 = v708.__r_.__value_.__r.__words[0];
    }

    v541 = v540 + v539;
    v208 = v541;
    v207 = v665;
    if (v665 != v541)
    {
      v207 = v665;
      v542 = v665;
      while (1)
      {
        v543 = *v542++;
        if (v543 == 44)
        {
          break;
        }

        v207 = v542;
        if (v542 == v541)
        {
          goto LABEL_946;
        }
      }

      v208 = v207 + 1;
    }

    v209 = v665;
    if (v207 != v208)
    {
      continue;
    }

    break;
  }

LABEL_946:
  v544 = boost::algorithm::detail::process_segment_helper<false>::operator()<std::deque<char>,std::string,std::__wrap_iter<char *>>(__dst, v205, v665, v541);
  if ((v708.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v545 = HIBYTE(v708.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v545 = v708.__r_.__value_.__l.__size_;
  }

  if (!*&__dst[40])
  {
    v562 = &v708;
    if ((v708.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v562 = v708.__r_.__value_.__r.__words[0];
    }

    v563 = v544 - v562;
    if (v545 < v544 - v562)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v564 = v562 + v545 - v544;
    if (v564 == -1)
    {
      if (SHIBYTE(v708.__r_.__value_.__r.__words[2]) < 0)
      {
        v708.__r_.__value_.__l.__size_ = v544 - v562;
        *(v708.__r_.__value_.__r.__words[0] + v563) = 0;
      }

      else
      {
        *(&v708.__r_.__value_.__s + 23) = v563 & 0x7F;
        v708.__r_.__value_.__s.__data_[v563] = 0;
      }
    }

    else
    {
      std::string::__erase_external_with_move(&v708, v563, v564);
    }

    goto LABEL_1037;
  }

  if (*&__dst[16] == *&__dst[8])
  {
    goto LABEL_1037;
  }

  v546 = (*&__dst[32] >> 9) & 0x7FFFFFFFFFFFF8;
  v547 = (*&__dst[8] + v546);
  v548 = (*(*&__dst[8] + v546) + (*&__dst[32] & 0xFFF));
  v549 = ((*&__dst[32] + *&__dst[40]) >> 9) & 0x7FFFFFFFFFFFF8;
  v550 = *(*&__dst[8] + v549) + ((*&__dst[32] + *&__dst[40]) & 0xFFFLL);
  if (v550 == v548 || !(((v549 - v546) << 9) - (*&__dst[32] & 0xFFF) + ((*&__dst[32] + *&__dst[40]) & 0xFFFLL)))
  {
    goto LABEL_1037;
  }

  __src = (((v549 - v546) << 9) - (*&__dst[32] & 0xFFF) + ((*&__dst[32] + *&__dst[40]) & 0xFFFLL));
  alloc[0] = v545;
  v666 = v545;
  memset(&__s2, 0, sizeof(__s2));
  while (2)
  {
    v551 = *v548;
    if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
    {
      v553 = (__s2.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (__s2.__r_.__value_.__l.__size_ == v553)
      {
        if ((__s2.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        p_s2 = __s2.__r_.__value_.__r.__words[0];
        if (v553 >= 0x3FFFFFFFFFFFFFF3)
        {
          v557 = 0;
          v556 = 0x7FFFFFFFFFFFFFF7;
        }

        else
        {
LABEL_961:
          if (v553 + 1 > 2 * v553)
          {
            v554 = v553 + 1;
          }

          else
          {
            v554 = 2 * v553;
          }

          if ((v554 | 7) == 0x17)
          {
            v555 = 25;
          }

          else
          {
            v555 = (v554 | 7) + 1;
          }

          if (v554 >= 0x17)
          {
            v556 = v555;
          }

          else
          {
            v556 = 23;
          }

          v557 = v553 == 22;
        }

        v558 = operator new(v556);
        v559 = v558;
        if (v553)
        {
          memmove(v558, p_s2, v553);
        }

        if (!v557)
        {
          operator delete(p_s2);
        }

        __s2.__r_.__value_.__r.__words[0] = v559;
        __s2.__r_.__value_.__r.__words[2] = v556 | 0x8000000000000000;
      }

      else
      {
        v553 = __s2.__r_.__value_.__l.__size_;
        v559 = __s2.__r_.__value_.__r.__words[0];
      }

      __s2.__r_.__value_.__l.__size_ = v553 + 1;
    }

    else
    {
      if (HIBYTE(__s2.__r_.__value_.__r.__words[2]) == 22)
      {
        p_s2 = &__s2;
        v553 = 22;
        goto LABEL_961;
      }

      v553 = HIBYTE(__s2.__r_.__value_.__r.__words[2]);
      *(&__s2.__r_.__value_.__s + 23) = (*(&__s2.__r_.__value_.__s + 23) + 1) & 0x7F;
      v559 = &__s2;
    }

    v560 = v559 + v553;
    *v560 = v551;
    v560[1] = 0;
    if (&(++v548)[-*v547] == 4096)
    {
      v561 = v547[1];
      ++v547;
      v548 = v561;
    }

    if (v548 != v550)
    {
      continue;
    }

    break;
  }

  v566 = SHIBYTE(v708.__r_.__value_.__r.__words[2]);
  if ((__s2.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v567 = &__s2;
  }

  else
  {
    v567 = __s2.__r_.__value_.__r.__words[0];
  }

  if ((__s2.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v568 = HIBYTE(__s2.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v568 = __s2.__r_.__value_.__l.__size_;
  }

  if ((SHIBYTE(v708.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v566 = v708.__r_.__value_.__l.__size_;
    v574 = (v708.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v570 = __src;
    v569 = alloc[0];
    v571 = v666;
    v576 = 0x7FFFFFFFFFFFFFF7;
    if (v574 - v708.__r_.__value_.__l.__size_ >= __src)
    {
      v582 = HIBYTE(v708.__r_.__value_.__r.__words[2]);
      v580 = v708.__r_.__value_.__r.__words[0];
      goto LABEL_1028;
    }

    v572 = __src + v708.__r_.__value_.__l.__size_;
    if (0x7FFFFFFFFFFFFFF8 - (v708.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __src + v708.__r_.__value_.__l.__size_ - v574)
    {
      goto LABEL_1235;
    }

    v573 = v708.__r_.__value_.__r.__words[0];
    if (v574 >= 0x3FFFFFFFFFFFFFF3)
    {
      v578 = 0;
    }

    else
    {
LABEL_1009:
      if (v572 <= 2 * v574)
      {
        v572 = 2 * v574;
      }

      if ((v572 | 7) == 0x17)
      {
        v577 = 25;
      }

      else
      {
        v577 = (v572 | 7) + 1;
      }

      if (v572 >= 0x17)
      {
        v576 = v577;
      }

      else
      {
        v576 = 23;
      }

      v578 = v574 == 22;
    }

    v579 = operator new(v576);
    v580 = v579;
    if (v571)
    {
      memmove(v579, v573, v571);
    }

    if (v566 != v569)
    {
      memmove(v569 + v580 + v570, v569 + v573, v566 - v569);
    }

    if (!v578)
    {
      operator delete(v573);
    }

    v708.__r_.__value_.__r.__words[0] = v580;
    v708.__r_.__value_.__r.__words[2] = v576 | 0x8000000000000000;
    v581 = v570 + v566;
  }

  else
  {
    v570 = __src;
    v569 = alloc[0];
    v571 = v666;
    if (22 - SHIBYTE(v708.__r_.__value_.__r.__words[2]) < __src)
    {
      v572 = __src + SHIBYTE(v708.__r_.__value_.__r.__words[2]);
      if (v572 - 0x7FFFFFFFFFFFFFF8 >= 0x800000000000001ELL)
      {
        v573 = &v708;
        v574 = 22;
        goto LABEL_1009;
      }

LABEL_1235:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v580 = &v708;
    v582 = HIBYTE(v708.__r_.__value_.__r.__words[2]);
LABEL_1028:
    if (v566 != v569)
    {
      memmove(v569 + v580 + v570, v569 + v580, v566 - v569);
      v582 = HIBYTE(v708.__r_.__value_.__r.__words[2]);
      v571 = v566;
    }

    v581 = v570 + v571;
    if ((v582 & 0x80) == 0)
    {
      *(&v708.__r_.__value_.__s + 23) = v581 & 0x7F;
      goto LABEL_1033;
    }
  }

  v708.__r_.__value_.__l.__size_ = v581;
LABEL_1033:
  v580->__r_.__value_.__s.__data_[v581] = 0;
  if (v568)
  {
    memmove(v569 + v580, v567, v568);
  }

  if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s2.__r_.__value_.__l.__data_);
  }

LABEL_1037:
  v584 = *&__dst[16];
  v583 = *&__dst[8];
  *&__dst[40] = 0;
  v585 = (*&__dst[16] - *&__dst[8]) >> 3;
  if (v585 >= 3)
  {
    do
    {
      operator delete(*v583);
      v584 = *&__dst[16];
      v583 = (*&__dst[8] + 8);
      *&__dst[8] = v583;
      v585 = (*&__dst[16] - v583) >> 3;
    }

    while (v585 > 2);
  }

  if (v585 == 1)
  {
    v586 = 2048;
LABEL_1043:
    *&__dst[32] = v586;
  }

  else if (v585 == 2)
  {
    v586 = 4096;
    goto LABEL_1043;
  }

  if (v583 != v584)
  {
    do
    {
      v587 = *v583++;
      operator delete(v587);
    }

    while (v583 != v584);
    if (*&__dst[16] != *&__dst[8])
    {
      *&__dst[16] += (*&__dst[8] - *&__dst[16] + 7) & 0xFFFFFFFFFFFFFFF8;
    }
  }

  v120 = *__dst;
  if (*__dst)
  {
    operator delete(*__dst);
  }

LABEL_1050:
  v588 = ACFULogging::getLogInstance(v120);
  if ((v708.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v589 = &v708;
  }

  else
  {
    v589 = v708.__r_.__value_.__r.__words[0];
  }

  ACFULogging::handleMessage(v588, 3, "%s::%s: Sticky NVRAM items: %s\n", "BasebandNVRAM", "sGetNVRAMListFromKeyValPairs", v589);
  if (SHIBYTE(v716) < 0)
  {
    operator delete(v715);
  }

  v590 = v701;
  if (v701)
  {
    v591 = v702;
    v592 = v701;
    if (v702 == v701)
    {
LABEL_1064:
      v702 = v590;
      operator delete(v592);
      goto LABEL_1065;
    }

    while (1)
    {
      if (*(v591 - 1) < 0)
      {
        operator delete(*(v591 - 3));
        v593 = v591 - 6;
        if ((*(v591 - 25) & 0x80000000) == 0)
        {
          goto LABEL_1059;
        }
      }

      else
      {
        v593 = v591 - 6;
        if ((*(v591 - 25) & 0x80000000) == 0)
        {
LABEL_1059:
          v591 = v593;
          if (v593 == v590)
          {
            goto LABEL_1063;
          }

          continue;
        }
      }

      operator delete(*v593);
      v591 = v593;
      if (v593 == v590)
      {
LABEL_1063:
        v592 = v701;
        goto LABEL_1064;
      }
    }
  }

LABEL_1065:
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v594 = off_1ED944170;
  if (!off_1ED944170)
  {
    v595 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v595);
    v711.__r_.__value_.__r.__words[0] = v595;
    v596 = operator new(0x20uLL);
    *v596 = &unk_1F5F05A00;
    v596[1] = 0;
    v596[2] = 0;
    v596[3] = v595;
    v597 = off_1ED944178;
    off_1ED944170 = v595;
    off_1ED944178 = v596;
    if (v597 && !atomic_fetch_add(&v597->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v597->__on_zero_shared)(v597);
      std::__shared_weak_count::__release_weak(v597);
    }

    v594 = off_1ED944170;
  }

  v598 = off_1ED944178;
  __s2.__r_.__value_.__r.__words[0] = v594;
  __s2.__r_.__value_.__l.__size_ = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  v599 = pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v600 = v594[1];
  if (!v600)
  {
LABEL_1078:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v601 = *(v600 + 8);
      if (v601 < 3)
      {
        break;
      }

      v600 = *v600;
      if (!v600)
      {
        goto LABEL_1078;
      }
    }

    if (v601 == 2)
    {
      break;
    }

    v600 = v600[1];
    if (!v600)
    {
      goto LABEL_1078;
    }
  }

  if (*(v600 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(__dst, v600[5], v600[6]);
  }

  else
  {
    *__dst = *(v600 + 5);
    *&__dst[16] = v600[7];
  }

  v602 = __dst[23];
  if ((__dst[23] & 0x8000000000000000) != 0)
  {
    v602 = *&__dst[8];
    v605 = (*&__dst[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v605 - *&__dst[8] >= 0x19)
    {
      v612 = *__dst;
      qmemcpy((*__dst + *&__dst[8]), "/sticky_nvram_items.plist", 25);
      v613 = v602 + 25;
      *&__dst[8] = v602 + 25;
      goto LABEL_1104;
    }

    v606 = 0x7FFFFFFFFFFFFFF7;
    v603 = *&__dst[8] + 25;
    if (0x7FFFFFFFFFFFFFF7 - (*&__dst[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&__dst[8] + 25 - v605)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v604 = *__dst;
    if (v605 >= 0x3FFFFFFFFFFFFFF3)
    {
      v609 = 0;
    }

    else
    {
LABEL_1088:
      v607 = 2 * v605;
      if (v603 > 2 * v605)
      {
        v607 = v603;
      }

      if ((v607 | 7) == 0x17)
      {
        v608 = 25;
      }

      else
      {
        v608 = (v607 | 7) + 1;
      }

      if (v607 >= 0x17)
      {
        v606 = v608;
      }

      else
      {
        v606 = 23;
      }

      v609 = v605 == 22;
    }

    v599 = operator new(v606);
    v610 = v599;
    if (v602)
    {
      v599 = memmove(v599, v604, v602);
    }

    qmemcpy(&v610[v602], "/sticky_nvram_items.plist", 25);
    if (!v609)
    {
      operator delete(v604);
    }

    *&__dst[8] = v603;
    *&__dst[16] = v606 | 0x8000000000000000;
    *__dst = v610;
    v611 = &v610[v603];
  }

  else
  {
    if (__dst[23] < 0x17)
    {
      v603 = __dst[23] + 25;
      v604 = __dst;
      v605 = 22;
      goto LABEL_1088;
    }

    v612 = __dst;
    qmemcpy(&__dst[__dst[23]], "/sticky_nvram_items.plist", 25);
    v613 = v602 + 25;
    __dst[23] = (v602 + 25) & 0x7F;
LABEL_1104:
    v611 = &v612[v613];
  }

  *v611 = 0;
  *&v715 = *&__dst[8];
  v614 = *__dst;
  *(&v715 + 7) = *&__dst[15];
  v615 = __dst[23];
  memset(__dst, 0, 24);
  if (SHIBYTE(v710) < 0)
  {
    operator delete(v709);
    v709 = v614;
    *&v710 = v715;
    *(&v710 + 7) = *(&v715 + 7);
    HIBYTE(v710) = v615;
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }
  }

  else
  {
    v709 = v614;
    *&v710 = v715;
    *(&v710 + 7) = *(&v715 + 7);
    HIBYTE(v710) = v615;
  }

  if (v598 && !atomic_fetch_add(&v598->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v598->__on_zero_shared)(v598);
    std::__shared_weak_count::__release_weak(v598);
  }

  v616 = ACFULogging::getLogInstance(v599);
  if (v710 >= 0)
  {
    v617 = &v709;
  }

  else
  {
    v617 = v709;
  }

  ACFULogging::handleMessage(v616, 3, "%s::%s: Saving the final NVRAM list file as: %s\n", "BasebandNVRAM", "sSaveStickyNVRAMItems", v617);
  v618 = *MEMORY[0x1E695E480];
  if (v710 >= 0)
  {
    v619 = &v709;
  }

  else
  {
    v619 = v709;
  }

  v620 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v619, 0x8000100u);
  v621 = cf;
  cf = v620;
  if (v621)
  {
    CFRelease(v621);
  }

  if (v620)
  {
    v622 = CFURLCreateWithString(v618, v620, 0);
    v623 = v704;
    v704 = v622;
    if (v623)
    {
      CFRelease(v623);
    }

    if (v622)
    {
      Mutable = CFDictionaryCreateMutable(v618, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v625 = v706;
      v706 = Mutable;
      if (v625)
      {
        CFRelease(v625);
      }

      if (Mutable)
      {
        if ((v708.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v626 = &v708;
        }

        else
        {
          v626 = v708.__r_.__value_.__r.__words[0];
        }

        v627 = CFStringCreateWithCString(v618, v626, 0x8000100u);
        v628 = v705;
        v705 = v627;
        if (v628)
        {
          CFRelease(v628);
        }

        if (v627)
        {
          CFDictionarySetValue(Mutable, @"NvramItems", v627);
          v629 = AMSupportWriteDictionarytoFileURL();
          v630 = v629;
          if (v629)
          {
            v659 = ACFULogging::getLogInstance(v629);
            v660 = &v709;
            if (v710 < 0)
            {
              v660 = v709;
            }

            ACFULogging::handleMessage(v659, 2, "%s::%s: Writing sticky nvram file to %s failed with error %d\n\n", "BasebandNVRAM", "sSaveStickyNVRAMItems", v660, v630);
          }
        }

        else
        {
          v658 = ACFULogging::getLogInstance(v628);
          ACFULogging::handleMessage(v658, 2, "%s::%s: Failed to create final nvram CFString for sticky nvram plist file\n");
        }
      }

      else
      {
        v657 = ACFULogging::getLogInstance(v625);
        ACFULogging::handleMessage(v657, 2, "%s::%s: Failed to create plist dictionary for sticky nvram plist file\n");
      }

LABEL_1134:
      CFRelease(v622);
    }

    else
    {
      v656 = ACFULogging::getLogInstance(v623);
      ACFULogging::handleMessage(v656, 2, "%s::%s: Failed to create file url for sticky nvram plist file\n", "BasebandNVRAM", "sSaveStickyNVRAMItems");
    }
  }

  else
  {
    v655 = ACFULogging::getLogInstance(v621);
    ACFULogging::handleMessage(v655, 2, "%s::%s: Failed to create file path for sticky nvram plist file\n", "BasebandNVRAM", "sSaveStickyNVRAMItems");
    v622 = v704;
    if (v704)
    {
      goto LABEL_1134;
    }
  }

  if (v705)
  {
    CFRelease(v705);
  }

  if (v706)
  {
    CFRelease(v706);
  }

  if (v620)
  {
    CFRelease(v620);
  }

  if (SHIBYTE(v708.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v708.__r_.__value_.__l.__data_);
    if (SHIBYTE(v710) < 0)
    {
      goto LABEL_1146;
    }

LABEL_1143:
    v631 = v670;
    if (!v670)
    {
      goto LABEL_1156;
    }

LABEL_1147:
    v632 = v671;
    v633 = v631;
    if (v671 == v631)
    {
LABEL_1155:
      v671 = v631;
      operator delete(v633);
      goto LABEL_1156;
    }

    while (1)
    {
      if (*(v632 - 1) < 0)
      {
        operator delete(*(v632 - 3));
        v634 = v632 - 6;
        if ((*(v632 - 25) & 0x80000000) == 0)
        {
          goto LABEL_1150;
        }

LABEL_1153:
        operator delete(*v634);
        v632 = v634;
        if (v634 == v631)
        {
LABEL_1154:
          v633 = v670;
          goto LABEL_1155;
        }
      }

      else
      {
        v634 = v632 - 6;
        if (*(v632 - 25) < 0)
        {
          goto LABEL_1153;
        }

LABEL_1150:
        v632 = v634;
        if (v634 == v631)
        {
          goto LABEL_1154;
        }
      }
    }
  }

  if ((SHIBYTE(v710) & 0x80000000) == 0)
  {
    goto LABEL_1143;
  }

LABEL_1146:
  operator delete(v709);
  v631 = v670;
  if (v670)
  {
    goto LABEL_1147;
  }

LABEL_1156:
  v8 = 0;
LABEL_1157:
  v635 = v698;
  if (v698 != v669)
  {
    do
    {
      *&v639 = 0xAAAAAAAAAAAAAAAALL;
      *(&v639 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__dst = v639;
      *&__dst[16] = v639;
      if (*(v635 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(__dst, v635[4], v635[5]);
      }

      else
      {
        *__dst = *(v635 + 2);
        *&__dst[16] = v635[6];
      }

      v640 = v635[7];
      *&__dst[24] = v640;
      if (v640)
      {
        CFRelease(v640);
        *&__dst[24] = 0;
      }

      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
        v641 = v635[1];
        if (v641)
        {
          do
          {
LABEL_1171:
            v642 = v641;
            v641 = *v641;
          }

          while (v641);
          goto LABEL_1161;
        }
      }

      else
      {
        v641 = v635[1];
        if (v641)
        {
          goto LABEL_1171;
        }
      }

      do
      {
        v642 = v635[2];
        v111 = *v642 == v635;
        v635 = v642;
      }

      while (!v111);
LABEL_1161:
      v635 = v642;
    }

    while (v642 != v669);
  }

  v636 = v689;
  if (!v689)
  {
    goto LABEL_1183;
  }

  v637 = v690;
  v638 = v689;
  if (v690 != v689)
  {
    while (1)
    {
      if (*(v637 - 1) < 0)
      {
        operator delete(*(v637 - 3));
        v643 = v637 - 6;
        if ((*(v637 - 25) & 0x80000000) == 0)
        {
          goto LABEL_1177;
        }

LABEL_1180:
        operator delete(*v643);
        v637 = v643;
        if (v643 == v636)
        {
LABEL_1181:
          v638 = v689;
          break;
        }
      }

      else
      {
        v643 = v637 - 6;
        if (*(v637 - 25) < 0)
        {
          goto LABEL_1180;
        }

LABEL_1177:
        v637 = v643;
        if (v643 == v636)
        {
          goto LABEL_1181;
        }
      }
    }
  }

  v690 = v636;
  operator delete(v638);
LABEL_1183:
  v644 = v692;
  if (v692)
  {
    v645 = v693;
    v646 = v692;
    if (v693 == v692)
    {
LABEL_1192:
      v693 = v644;
      operator delete(v646);
      goto LABEL_1193;
    }

    while (1)
    {
      if (*(v645 - 1) < 0)
      {
        operator delete(*(v645 - 3));
        v647 = v645 - 6;
        if ((*(v645 - 25) & 0x80000000) == 0)
        {
          goto LABEL_1187;
        }
      }

      else
      {
        v647 = v645 - 6;
        if ((*(v645 - 25) & 0x80000000) == 0)
        {
LABEL_1187:
          v645 = v647;
          if (v647 == v644)
          {
            goto LABEL_1191;
          }

          continue;
        }
      }

      operator delete(*v647);
      v645 = v647;
      if (v647 == v644)
      {
LABEL_1191:
        v646 = v692;
        goto LABEL_1192;
      }
    }
  }

LABEL_1193:
  v648 = v695;
  if (v695)
  {
    v649 = v696;
    v650 = v695;
    if (v696 == v695)
    {
LABEL_1202:
      v696 = v648;
      operator delete(v650);
      goto LABEL_1203;
    }

    while (1)
    {
      if (*(v649 - 1) < 0)
      {
        operator delete(*(v649 - 3));
        v651 = v649 - 6;
        if ((*(v649 - 25) & 0x80000000) == 0)
        {
          goto LABEL_1197;
        }
      }

      else
      {
        v651 = v649 - 6;
        if ((*(v649 - 25) & 0x80000000) == 0)
        {
LABEL_1197:
          v649 = v651;
          if (v651 == v648)
          {
            goto LABEL_1201;
          }

          continue;
        }
      }

      operator delete(*v651);
      v649 = v651;
      if (v651 == v648)
      {
LABEL_1201:
        v650 = v695;
        goto LABEL_1202;
      }
    }
  }

LABEL_1203:
  std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::destroy(v699);
  return v8;
}

void sub_1E53273A0()
{
  if (*(v0 - 153) < 0)
  {
    operator delete(*(v0 - 176));
  }

  JUMPOUT(0x1E5327524);
}

void sub_1E53273BC(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_rethrow();
  }

  JUMPOUT(0x1E532780CLL);
}

void sub_1E53273D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p)
{
  __cxa_end_catch();
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1E5327524);
}

void sub_1E5327458(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (*(v2 - 153) < 0)
    {
      operator delete(*(v2 - 176));
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x1E532780CLL);
}

void sub_1E5327508()
{
  if (*(v0 - 201) < 0)
  {
    operator delete(*(v0 - 224));
  }

  JUMPOUT(0x1E5327794);
}

void sub_1E5327520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void **a53, uint64_t a54, uint64_t a55, void **a56, uint64_t a57, uint64_t a58, void **a59, uint64_t a60, uint64_t a61, uint64_t a62, char *a63)
{
  std::deque<char>::~deque[abi:ne200100](v70 - 224);
  if (*(v70 - 105) < 0)
  {
    operator delete(*(v70 - 128));
  }

  std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](&a65);
  ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(&a66);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a67);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a68);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a69);
  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](&a24);
  std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](&a53);
  std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](&a56);
  std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](&a59);
  std::__tree<std::__value_type<std::string,eUICC::VinylPostProcess>,std::__map_value_compare<std::string,std::__value_type<std::string,eUICC::VinylPostProcess>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,eUICC::VinylPostProcess>>>::destroy(a63);
  _Unwind_Resume(a1);
}

uint64_t sGetNVRAMKeyValPairs(void ***a1, uint64_t a2)
{
  v69 = a2;
  v2 = a1;
  memset(v77, 0, 32);
  *v76 = 0u;
  __p[1] = 0xAAAAAAAAAAAAAAAALL;
  v75 = 0xAAAAAAAAAAAAAALL;
  __p[0] = 0xAAAAAAAAAAAAAA00;
  v72[1] = 0xAAAAAAAAAAAAAAAALL;
  v73 = 0xAAAAAAAAAAAAAALL;
  v72[0] = 0xAAAAAAAAAAAAAA00;
  v3 = *(a1 + 23);
  if (v3 < 0)
  {
    a1 = *a1;
    v4 = v2[1];
  }

  else
  {
    v4 = *(a1 + 23);
  }

  v5 = a1 + v4;
  v6 = memchr(a1, 32, v4);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7 + 1;
  if (v7 == v5 || v8 == v5)
  {
    if ((v3 & 0x80) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    do
    {
      v12 = *v8;
      if (v12 != 32)
      {
        *v7++ = v12;
      }

      ++v8;
    }

    while (v8 != v5);
    LOBYTE(v3) = *(v2 + 23);
    if ((v3 & 0x80) != 0)
    {
LABEL_20:
      v13 = v2[1];
      v10 = v13 + *v2;
      v11 = v7 - *v2;
      if (v13 < v11)
      {
LABEL_21:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      goto LABEL_14;
    }
  }

  v10 = v2 + v3;
  v11 = v7 - v2;
  if (v3 < (v7 - v2))
  {
    goto LABEL_21;
  }

LABEL_14:
  if (v10 - v7 == -1)
  {
    if ((v3 & 0x80) != 0)
    {
      v14 = *v2;
      v2[1] = v11;
      *(v14 + v11) = 0;
    }

    else
    {
      *(v2 + 23) = v11 & 0x7F;
      *(v2 + v11) = 0;
    }
  }

  else
  {
    std::string::__erase_external_with_move(v2, v11, v10 - v7);
  }

  v15 = 0;
  v16 = *(v2 + 23);
  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  do
  {
    v17 = v2;
    v18 = v16;
    if (v15 >= v16)
    {
      goto LABEL_208;
    }

    v19 = (v16 - v15);
    if ((v16 - v15) < 2)
    {
      goto LABEL_41;
    }

LABEL_31:
    v20 = v18 + v17;
    v21 = &v17[v15];
    while (1)
    {
      v22 = memchr(v21, 39, (v19 - 1));
      if (!v22)
      {
        goto LABEL_41;
      }

      if (*v22 == 11303)
      {
        break;
      }

      v21 = v22 + 1;
      v19 = (v20 - v21);
      if (v20 - v21 < 2)
      {
        goto LABEL_41;
      }
    }

    if (v22 == v20 || (v23 = v22 - v17, v23 == -1))
    {
LABEL_41:
      if ((v16 & 0x80000000) == 0)
      {
        v23 = v16 - 1;
LABEL_39:
        v24 = v2;
        v25 = v16 - v15;
        if (v16 <= v15)
        {
          goto LABEL_210;
        }

        goto LABEL_45;
      }

      v23 = v2[1] - 1;
    }

    else if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    v24 = *v2;
    v26 = v2[1];
    v25 = v26 - v15;
    if (v26 <= v15)
    {
LABEL_210:
      v28 = 1005;
LABEL_211:
      if (SHIBYTE(v73) < 0)
      {
        goto LABEL_217;
      }

      goto LABEL_212;
    }

LABEL_45:
    v27 = memchr(&v24[v15], 61, v25);
    v28 = 1005;
    if (!v27)
    {
      goto LABEL_211;
    }

    v29 = (v27 - v24);
    if (v27 - v24 == -1)
    {
      goto LABEL_211;
    }

    if ((v16 & 0x80000000) != 0)
    {
      v32 = v2[1];
      if (v32 < v15)
      {
LABEL_221:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v30 = *v2;
      if (v32 - v15 >= &v29[-v15])
      {
        v31 = &v29[-v15];
      }

      else
      {
        v31 = v32 - v15;
      }

      if (v31 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_222:
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    else
    {
      v30 = v2;
      if (v15 > v16)
      {
        goto LABEL_221;
      }

      if (v16 - v15 >= &v29[-v15])
      {
        v31 = &v29[-v15];
      }

      else
      {
        v31 = v16 - v15;
      }

      if (v31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_222;
      }
    }

    if (v31 >= 0x17)
    {
      if ((v31 | 7) == 0x17)
      {
        v36 = 25;
      }

      else
      {
        v36 = (v31 | 7) + 1;
      }

      p_dst = operator new(v36);
      *(&__dst + 1) = v31;
      v71 = v36 | 0x8000000000000000;
      *&__dst = p_dst;
LABEL_71:
      memmove(p_dst, &v30[v15], v31);
      *(p_dst + v31) = 0;
      if ((SHIBYTE(v75) & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    HIBYTE(v71) = v31;
    p_dst = &__dst;
    if (v31)
    {
      goto LABEL_71;
    }

    LOBYTE(__dst) = 0;
    if ((SHIBYTE(v75) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

LABEL_72:
    operator delete(__p[0]);
LABEL_62:
    *__p = __dst;
    v75 = v71;
    v34 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(__p);
    if (v34 == &qword_1ED949BF8)
    {
      v35 = HIBYTE(v75);
      if (v75 < 0)
      {
        v35 = __p[1];
      }

      if (v35 > 8)
      {
        v28 = 1005;
        if (SHIBYTE(v73) < 0)
        {
          goto LABEL_217;
        }

LABEL_212:
        if (SHIBYTE(v75) < 0)
        {
          goto LABEL_218;
        }

LABEL_213:
        if (SHIBYTE(v77[3]) < 0)
        {
          goto LABEL_219;
        }

LABEL_214:
        if (SHIBYTE(v77[0]) < 0)
        {
          goto LABEL_220;
        }

        return v28;
      }
    }

    else if (__p != (v34 + 7))
    {
      v37 = *(v34 + 79);
      if (SHIBYTE(v75) < 0)
      {
        if (v37 >= 0)
        {
          v38 = v34 + 7;
        }

        else
        {
          v38 = v34[7];
        }

        if (v37 >= 0)
        {
          v39 = *(v34 + 79);
        }

        else
        {
          v39 = v34[8];
        }

        std::string::__assign_no_alias<false>(__p, v38, v39);
      }

      else if ((*(v34 + 79) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(__p, v34[7], v34[8]);
      }

      else
      {
        *__p = *(v34 + 7);
        v75 = v34[9];
      }
    }

    v40 = v29 + 2;
    v41 = *(v2 + 23);
    if ((v41 & 0x8000000000000000) != 0)
    {
      v41 = v2[1];
      if (v41 < v40)
      {
LABEL_223:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v42 = *v2;
    }

    else
    {
      v42 = v2;
      if (v40 > v41)
      {
        goto LABEL_223;
      }
    }

    v43 = v41 - v40;
    if (v43 >= v23 - v29 - 2)
    {
      v44 = v23 - v29 - 2;
    }

    else
    {
      v44 = v43;
    }

    if (v44 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v44 >= 0x17)
    {
      if ((v44 | 7) == 0x17)
      {
        v58 = 25;
      }

      else
      {
        v58 = (v44 | 7) + 1;
      }

      v45 = operator new(v58);
      *(&__dst + 1) = v44;
      v71 = v58 | 0x8000000000000000;
      *&__dst = v45;
LABEL_137:
      memmove(v45, &v40[v42], v44);
      *(v45 + v44) = 0;
      if ((SHIBYTE(v73) & 0x80000000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_138;
    }

    HIBYTE(v71) = v44;
    v45 = &__dst;
    if (v44)
    {
      goto LABEL_137;
    }

    LOBYTE(__dst) = 0;
    if ((SHIBYTE(v73) & 0x80000000) == 0)
    {
      goto LABEL_97;
    }

LABEL_138:
    operator delete(v72[0]);
LABEL_97:
    *v72 = __dst;
    v73 = v71;
    HIBYTE(v71) = 8;
    strcpy(&__dst, "bootargs");
    v46 = HIBYTE(v75);
    if (v75 >= 0)
    {
      v47 = HIBYTE(v75);
    }

    else
    {
      v47 = __p[1];
    }

    if (v75 >= 0)
    {
      v48 = __p;
    }

    else
    {
      v48 = __p[0];
    }

    if (v47 >= 8)
    {
      v49 = 8;
    }

    else
    {
      v49 = v47;
    }

    v50 = memcmp(v48, &__dst, v49);
    if (v47 != 8 || v50)
    {
      goto LABEL_178;
    }

    v51 = HIBYTE(v73);
    v52 = v72;
    if (v73 < 0)
    {
      v52 = v72[0];
      v51 = v72[1];
    }

    if (!v51)
    {
      goto LABEL_178;
    }

    v53 = v52;
    if (v51 < 8)
    {
LABEL_204:
      v67 = v52 + v51;
      do
      {
        if (*v53 == 44)
        {
          *v53 = 32;
        }

        ++v53;
      }

      while (v53 != v67);
      goto LABEL_177;
    }

    if (v51 < 0x10)
    {
      v54 = 0;
      goto LABEL_114;
    }

    v54 = v51 & 0xFFFFFFFFFFFFFFF0;
    v59 = v52 + 7;
    v60 = v51 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v61.i64[0] = 0x2C2C2C2C2C2C2C2CLL;
      v61.i64[1] = 0x2C2C2C2C2C2C2C2CLL;
      v62 = vceqq_s8(*(v59 - 7), v61);
      if (v62.i8[0])
      {
        *(v59 - 7) = 32;
        if ((v62.i8[1] & 1) == 0)
        {
LABEL_145:
          if ((v62.i8[2] & 1) == 0)
          {
            goto LABEL_146;
          }

          goto LABEL_162;
        }
      }

      else if ((v62.i8[1] & 1) == 0)
      {
        goto LABEL_145;
      }

      *(v59 - 6) = 32;
      if ((v62.i8[2] & 1) == 0)
      {
LABEL_146:
        if ((v62.i8[3] & 1) == 0)
        {
          goto LABEL_147;
        }

        goto LABEL_163;
      }

LABEL_162:
      *(v59 - 5) = 32;
      if ((v62.i8[3] & 1) == 0)
      {
LABEL_147:
        if ((v62.i8[4] & 1) == 0)
        {
          goto LABEL_148;
        }

        goto LABEL_164;
      }

LABEL_163:
      *(v59 - 4) = 32;
      if ((v62.i8[4] & 1) == 0)
      {
LABEL_148:
        if ((v62.i8[5] & 1) == 0)
        {
          goto LABEL_149;
        }

        goto LABEL_165;
      }

LABEL_164:
      *(v59 - 3) = 32;
      if ((v62.i8[5] & 1) == 0)
      {
LABEL_149:
        if ((v62.i8[6] & 1) == 0)
        {
          goto LABEL_150;
        }

        goto LABEL_166;
      }

LABEL_165:
      *(v59 - 2) = 32;
      if ((v62.i8[6] & 1) == 0)
      {
LABEL_150:
        if ((v62.i8[7] & 1) == 0)
        {
          goto LABEL_151;
        }

        goto LABEL_167;
      }

LABEL_166:
      *(v59 - 1) = 32;
      if ((v62.i8[7] & 1) == 0)
      {
LABEL_151:
        if ((v62.i8[8] & 1) == 0)
        {
          goto LABEL_152;
        }

        goto LABEL_168;
      }

LABEL_167:
      *v59 = 32;
      if ((v62.i8[8] & 1) == 0)
      {
LABEL_152:
        if ((v62.i8[9] & 1) == 0)
        {
          goto LABEL_153;
        }

        goto LABEL_169;
      }

LABEL_168:
      v59[1] = 32;
      if ((v62.i8[9] & 1) == 0)
      {
LABEL_153:
        if ((v62.i8[10] & 1) == 0)
        {
          goto LABEL_154;
        }

        goto LABEL_170;
      }

LABEL_169:
      v59[2] = 32;
      if ((v62.i8[10] & 1) == 0)
      {
LABEL_154:
        if ((v62.i8[11] & 1) == 0)
        {
          goto LABEL_155;
        }

        goto LABEL_171;
      }

LABEL_170:
      v59[3] = 32;
      if ((v62.i8[11] & 1) == 0)
      {
LABEL_155:
        if ((v62.i8[12] & 1) == 0)
        {
          goto LABEL_156;
        }

        goto LABEL_172;
      }

LABEL_171:
      v59[4] = 32;
      if ((v62.i8[12] & 1) == 0)
      {
LABEL_156:
        if ((v62.i8[13] & 1) == 0)
        {
          goto LABEL_157;
        }

        goto LABEL_173;
      }

LABEL_172:
      v59[5] = 32;
      if ((v62.i8[13] & 1) == 0)
      {
LABEL_157:
        if (v62.i8[14])
        {
          goto LABEL_174;
        }

        goto LABEL_158;
      }

LABEL_173:
      v59[6] = 32;
      if (v62.i8[14])
      {
LABEL_174:
        v59[7] = 32;
        if ((v62.i8[15] & 1) == 0)
        {
          goto LABEL_142;
        }

        goto LABEL_175;
      }

LABEL_158:
      if ((v62.i8[15] & 1) == 0)
      {
        goto LABEL_142;
      }

LABEL_175:
      v59[8] = 32;
LABEL_142:
      v59 += 16;
      v60 -= 16;
    }

    while (v60);
    if (v51 == v54)
    {
      goto LABEL_177;
    }

    if ((v51 & 8) == 0)
    {
      v53 = v52 + v54;
      goto LABEL_204;
    }

LABEL_114:
    v53 = v52 + (v51 & 0xFFFFFFFFFFFFFFF8);
    v55 = v54 - (v51 & 0xFFFFFFFFFFFFFFF8);
    v56 = v52 + v54 + 3;
    while (2)
    {
      v57 = vceq_s8(*(v56 - 3), 0x2C2C2C2C2C2C2C2CLL);
      if (v57.i8[0])
      {
        *(v56 - 3) = 32;
        if (v57.i8[1])
        {
          goto LABEL_126;
        }

LABEL_118:
        if ((v57.i8[2] & 1) == 0)
        {
          goto LABEL_119;
        }

LABEL_127:
        *(v56 - 1) = 32;
        if (v57.i8[3])
        {
          goto LABEL_128;
        }

LABEL_120:
        if ((v57.i8[4] & 1) == 0)
        {
          goto LABEL_121;
        }

LABEL_129:
        v56[1] = 32;
        if (v57.i8[5])
        {
          goto LABEL_130;
        }

LABEL_122:
        if ((v57.i8[6] & 1) == 0)
        {
          goto LABEL_123;
        }

LABEL_131:
        v56[3] = 32;
        if (v57.i8[7])
        {
LABEL_132:
          v56[4] = 32;
        }
      }

      else
      {
        if ((v57.i8[1] & 1) == 0)
        {
          goto LABEL_118;
        }

LABEL_126:
        *(v56 - 2) = 32;
        if (v57.i8[2])
        {
          goto LABEL_127;
        }

LABEL_119:
        if ((v57.i8[3] & 1) == 0)
        {
          goto LABEL_120;
        }

LABEL_128:
        *v56 = 32;
        if (v57.i8[4])
        {
          goto LABEL_129;
        }

LABEL_121:
        if ((v57.i8[5] & 1) == 0)
        {
          goto LABEL_122;
        }

LABEL_130:
        v56[2] = 32;
        if (v57.i8[6])
        {
          goto LABEL_131;
        }

LABEL_123:
        if (v57.i8[7])
        {
          goto LABEL_132;
        }
      }

      v56 += 8;
      v55 += 8;
      if (v55)
      {
        continue;
      }

      break;
    }

    if (v51 != (v51 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_204;
    }

LABEL_177:
    v46 = HIBYTE(v75);
LABEL_178:
    if (SHIBYTE(v77[0]) < 0)
    {
      if (v46 >= 0)
      {
        v63 = __p;
      }

      else
      {
        v63 = __p[0];
      }

      if (v46 >= 0)
      {
        v64 = v46;
      }

      else
      {
        v64 = __p[1];
      }

      std::string::__assign_no_alias<false>(v76, v63, v64);
    }

    else if (v46 < 0)
    {
      std::string::__assign_no_alias<true>(v76, __p[0], __p[1]);
    }

    else
    {
      *v76 = *__p;
      v77[0] = v75;
    }

    if (SHIBYTE(v77[3]) < 0)
    {
      if (v73 >= 0)
      {
        v65 = v72;
      }

      else
      {
        v65 = v72[0];
      }

      if (v73 >= 0)
      {
        v66 = HIBYTE(v73);
      }

      else
      {
        v66 = v72[1];
      }

      std::string::__assign_no_alias<false>(&v77[1], v65, v66);
    }

    else if (v73 < 0)
    {
      std::string::__assign_no_alias<true>(&v77[1], v72[0], v72[1]);
    }

    else
    {
      *&v77[1] = *v72;
      v77[3] = v73;
    }

    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v69, v76);
    v15 = v23 + 2;
    v16 = *(v2 + 23);
  }

  while ((v16 & 0x8000000000000000) == 0);
LABEL_29:
  v18 = v2[1];
  if (v15 < v18)
  {
    v17 = *v2;
    v19 = v18 - v15;
    if ((v18 - v15) >= 2)
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

LABEL_208:
  v28 = 0;
  if ((SHIBYTE(v73) & 0x80000000) == 0)
  {
    goto LABEL_212;
  }

LABEL_217:
  operator delete(v72[0]);
  if ((SHIBYTE(v75) & 0x80000000) == 0)
  {
    goto LABEL_213;
  }

LABEL_218:
  operator delete(__p[0]);
  if ((SHIBYTE(v77[3]) & 0x80000000) == 0)
  {
    goto LABEL_214;
  }

LABEL_219:
  operator delete(v77[1]);
  if (SHIBYTE(v77[0]) < 0)
  {
LABEL_220:
    operator delete(v76[0]);
  }

  return v28;
}