uint64_t google::protobuf::EncodedDescriptorDatabase::FindAllExtensionNumbers(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  return google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindAllExtensionNumbers(v4, a2, v6, a3);
}

uint64_t google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindAllExtensionNumbers(google::protobuf::EncodedDescriptorDatabase::DescriptorIndex *a1, const void *a2, size_t a3, uint64_t a4)
{
  google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EnsureFlat(a1);
  v7 = *(a1 + 21);
  v27 = a1;
  v29 = *(a1 + 22);
  if (v29 != v7)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - v7) >> 3);
    do
    {
      v9 = v8 >> 1;
      v10 = v7 + 40 * (v8 >> 1);
      v11 = *(v10 + 31);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v10 + 16);
      }

      if (!v11)
      {
        goto LABEL_47;
      }

      if (v12 >= 0)
      {
        v13 = v10 + 8;
      }

      else
      {
        v13 = *(v10 + 8);
      }

      v14 = v11 - 1;
      v15 = *(v10 + 32);
      if (a3 >= v11 - 1)
      {
        v16 = v11 - 1;
      }

      else
      {
        v16 = a3;
      }

      v17 = memcmp((v13 + 1), a2, v16);
      if (v17)
      {
        if (v17 < 0)
        {
          goto LABEL_3;
        }
      }

      else if (v14 < a3)
      {
        goto LABEL_3;
      }

      v18 = memcmp(a2, (v13 + 1), v16);
      if (v18)
      {
        if (v18 < 0)
        {
          goto LABEL_4;
        }
      }

      else if (a3 < v14)
      {
        goto LABEL_4;
      }

      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_3:
      v7 = v10 + 40;
      v9 = v8 + ~v9;
LABEL_4:
      v8 = v9;
    }

    while (v9);
  }

  if (v7 == v29)
  {
    return 0;
  }

  v19 = *(v7 + 31);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v7 + 16);
  }

  if (!v19)
  {
LABEL_47:
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  if (v19 - 1 != a3)
  {
    return 0;
  }

  v21 = v20 >= 0 ? v7 + 8 : *(v7 + 8);
  if (memcmp((v21 + 1), a2, a3))
  {
    return 0;
  }

  std::vector<int>::push_back[abi:ne200100](a4, (v7 + 32));
  if (v7 + 40 != *(v27 + 22))
  {
    v23 = (v7 + 72);
    while (1)
    {
      v24 = *(v23 - 1);
      v25 = v24;
      if ((v24 & 0x80u) != 0)
      {
        v24 = *(v23 - 2);
      }

      if (!v24)
      {
        break;
      }

      if (v24 - 1 != a3)
      {
        return 1;
      }

      v26 = v25 >= 0 ? (v23 - 6) : *(v23 - 3);
      if (memcmp((v26 + 1), a2, a3))
      {
        return 1;
      }

      std::vector<int>::push_back[abi:ne200100](a4, v23);
      result = 1;
      v23 += 10;
      if (v23 - 8 == *(v27 + 22))
      {
        return result;
      }
    }

    goto LABEL_47;
  }

  return 1;
}

uint64_t google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddSymbol(void *a1, unsigned __int8 *__src, size_t __len)
{
  v186 = *MEMORY[0x277D85DE8];
  v175 = -858993459 * ((a1[1] - *a1) >> 3) - 1;
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = __len;
  v4 = __src;
  if (__len >= 0x17)
  {
    operator new();
  }

  v177 = __len;
  if (__len)
  {
    memmove(v176, __src, __len);
  }

  *(v176 + v3) = 0;
  v6 = *a1 + 40 * v175;
  v9 = *(v6 + 16);
  v7 = v6 + 16;
  v8 = v9;
  v10 = *(v7 + 8);
  if (*(v7 + 23) >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v7 = v8;
    v11 = v10;
  }

  v184 = v7;
  v185 = v11;
  v12 = v11 != 0;
  if (v11)
  {
    v13 = ".";
  }

  else
  {
    v13 = &byte_23CE7F131;
  }

  v182 = v13;
  v183 = v12;
  v14 = v177;
  if ((v177 & 0x80u) == 0)
  {
    v15 = v176;
  }

  else
  {
    v15 = v176[0];
  }

  if ((v177 & 0x80u) != 0)
  {
    v14 = v176[1];
  }

  v180 = v15;
  v181 = v14;
  absl::lts_20240722::StrCat(&v184, &v182, &v180, &__p);
  if (v3)
  {
    while (1)
    {
      v21 = *v4;
      if (v21 != 46 && v21 != 95)
      {
        v22 = v21 - 58;
        v23 = (v21 & 0xFFFFFFDF) - 91;
        if (v22 <= 0xFFFFFFF5 && v23 < 0xFFFFFFE6)
        {
          break;
        }
      }

      ++v4;
      if (!--v3)
      {
        goto LABEL_19;
      }
    }

    v25 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v184, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor_database.cc", 695);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, "Invalid symbol name: ", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<(&v184, &__p);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v184);
    v26 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_240;
  }

LABEL_19:
  v16 = (a1 + 10);
  i = a1[10];
  v184 = a1[11];
  v18 = i[10];
  if (i[10])
  {
    goto LABEL_22;
  }

  while (!i[11])
  {
    i = *&i[8 * v18 + 240];
    v184 = a1[11];
    v18 = i[10];
    if (i[10])
    {
LABEL_22:
      v19 = 0;
      do
      {
        v20 = (v18 + v19) >> 1;
        if (google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare::operator()<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>(&v184, &v175, &i[32 * v20 + 16]))
        {
          v18 = (v18 + v19) >> 1;
        }

        else
        {
          v19 = v20 + 1;
        }
      }

      while (v19 != v18);
    }
  }

  do
  {
    if (v18 != i[10])
    {
      v27 = i == **v16 && v18 == 0;
      v167 = a1 + 10;
      if (!v27)
      {
        goto LABEL_44;
      }

LABEL_55:
      v28 = 0;
      goto LABEL_59;
    }

    LODWORD(v18) = i[8];
    i = *i;
  }

  while (!i[11]);
  i = a1[12];
  LODWORD(v18) = i[10];
  v32 = i == **v16 && v18 == 0;
  v167 = a1 + 10;
  if (v32)
  {
    goto LABEL_55;
  }

LABEL_44:
  if (i[11])
  {
    v28 = v18 - 1;
    if (v18 <= 0)
    {
      v29 = i;
      while (1)
      {
        v30 = *v29;
        if (*(*v29 + 11))
        {
          break;
        }

        v31 = v29[8];
        v29 = *v29;
        if (v31)
        {
          v28 = v31 - 1;
          i = v30;
          break;
        }
      }
    }
  }

  else
  {
      ;
    }

    v28 = i[10] - 1;
  }

LABEL_59:
  v33 = v28;
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  __s1 = p_p;
  __n = size;
  v36 = a1[12];
  v37 = v36[10];
  if (i == v36 && v28 == v37)
  {
LABEL_117:
    v75 = a1[14];
    v76 = a1[15];
    v184 = a1[11];
    v77 = v76 - v75;
    if (v76 == v75)
    {
LABEL_158:
      v79 = v76;
      goto LABEL_159;
    }

LABEL_118:
    v78 = v77 >> 5;
    v79 = v75;
    do
    {
      if (google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare::operator()<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>(&v184, &v175, &v79[8 * (v78 >> 1)]))
      {
        v78 >>= 1;
      }

      else
      {
        v79 += 8 * (v78 >> 1) + 8;
        v78 += ~(v78 >> 1);
      }
    }

    while (v78);
    v75 = a1[14];
    v76 = a1[15];
LABEL_159:
    v27 = v79 == v75;
    v115 = 0x3FFFFFFFFFFFFFF8;
    if (v27)
    {
      v115 = 0;
    }

    v116 = &v79[v115];
    v117 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v118 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v117 = __p.__r_.__value_.__l.__size_;
      v118 = __p.__r_.__value_.__r.__words[0];
    }

    __s1a = v118;
    __na = v117;
    if (v116 == v76)
    {
      goto LABEL_239;
    }

    v169 = v33;
    v119 = *a1 + 40 * *v116;
    v122 = *(v119 + 16);
    v120 = v119 + 16;
    v121 = v122;
    v123 = *(v120 + 8);
    if (*(v120 + 23) >= 0)
    {
      v124 = *(v120 + 23);
    }

    else
    {
      v120 = v121;
      v124 = v123;
    }

    v184 = v120;
    v185 = v124;
    v125 = v124 != 0;
    if (v124)
    {
      v126 = ".";
    }

    else
    {
      v126 = &byte_23CE7F131;
    }

    v182 = v126;
    v183 = v125;
    v127 = *(v116 + 1);
    v128 = *(v116 + 31);
    if ((v128 & 0x80u) != 0)
    {
      v128 = *(v116 + 2);
    }

    else
    {
      v127 = v116 + 2;
    }

    v180 = v127;
    v181 = v128;
    absl::lts_20240722::StrCat(&v184, &v182, &v180, &v179);
    v129 = SHIBYTE(v179.__r_.__value_.__r.__words[2]);
    v130 = v179.__r_.__value_.__r.__words[0];
    if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v131 = &v179;
    }

    else
    {
      v131 = v179.__r_.__value_.__r.__words[0];
    }

    if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v132 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v132 = v179.__r_.__value_.__l.__size_;
    }

    if (v132 == __na && !memcmp(v131, __s1a, __na))
    {
      v133 = 1;
      if (v129 < 0)
      {
        goto LABEL_199;
      }
    }

    else
    {
      if (v132 && (__na < v132 || memcmp(__s1a, v131, v132)))
      {
        v133 = 0;
        if ((v129 & 0x80000000) == 0)
        {
          goto LABEL_185;
        }

LABEL_199:
        operator delete(v130);
        if (v133)
        {
LABEL_186:
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v178, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor_database.cc", 660);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v178, "Symbol name ", 0xDuLL);
          v58 = absl::lts_20240722::log_internal::LogMessage::operator<<(v178, __s1a, __na);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v58, " conflicts with the existing symbol ", 0x26uLL);
          v134 = *a1 + 40 * *v116;
          v137 = *(v134 + 16);
          v135 = v134 + 16;
          v136 = v137;
          v138 = *(v135 + 8);
          if (*(v135 + 23) >= 0)
          {
            v139 = *(v135 + 23);
          }

          else
          {
            v135 = v136;
            v139 = v138;
          }

          v184 = v135;
          v185 = v139;
          v140 = v139 != 0;
          if (v139)
          {
            v141 = ".";
          }

          else
          {
            v141 = &byte_23CE7F131;
          }

          v182 = v141;
          v183 = v140;
          v67 = *(v116 + 31);
          if ((v67 & 0x80u) == 0)
          {
            v68 = v116 + 2;
          }

          else
          {
            v68 = *(v116 + 1);
          }

          if ((v67 & 0x80u) != 0)
          {
            v67 = *(v116 + 2);
          }

          goto LABEL_235;
        }

LABEL_200:
        v33 = v169;
        if (v116 + 8 == v76)
        {
          goto LABEL_239;
        }

        v142 = *a1 + 40 * v116[8];
        v145 = *(v142 + 16);
        v143 = v142 + 16;
        v144 = v145;
        v146 = *(v143 + 8);
        if (*(v143 + 23) >= 0)
        {
          v147 = *(v143 + 23);
        }

        else
        {
          v143 = v144;
          v147 = v146;
        }

        v184 = v143;
        v185 = v147;
        v148 = v147 != 0;
        if (v147)
        {
          v149 = ".";
        }

        else
        {
          v149 = &byte_23CE7F131;
        }

        v182 = v149;
        v183 = v148;
        v150 = *(v116 + 5);
        v151 = *(v116 + 63);
        if ((v151 & 0x80u) != 0)
        {
          v151 = *(v116 + 6);
        }

        else
        {
          v150 = v116 + 10;
        }

        v180 = v150;
        v181 = v151;
        absl::lts_20240722::StrCat(&v184, &v182, &v180, &v179);
        v152 = SHIBYTE(v179.__r_.__value_.__r.__words[2]);
        v153 = v179.__r_.__value_.__r.__words[0];
        if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v154 = &v179;
        }

        else
        {
          v154 = v179.__r_.__value_.__r.__words[0];
        }

        if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v155 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v155 = v179.__r_.__value_.__l.__size_;
        }

        if (__na == v155 && !memcmp(__s1a, v154, __na))
        {
          v156 = 1;
          v33 = v169;
          if (v152 < 0)
          {
            goto LABEL_222;
          }
        }

        else
        {
          if (__na && (v155 < __na || memcmp(v154, __s1a, __na)))
          {
            v156 = 0;
            v33 = v169;
            if ((v152 & 0x80000000) == 0)
            {
              goto LABEL_223;
            }

            goto LABEL_222;
          }

          v156 = v154->__r_.__value_.__s.__data_[__na] == 46;
          v33 = v169;
          if (v152 < 0)
          {
LABEL_222:
            operator delete(v153);
          }
        }

LABEL_223:
        if (v156)
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v178, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor_database.cc", 674);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v178, "Symbol name ", 0xDuLL);
          v58 = absl::lts_20240722::log_internal::LogMessage::operator<<(v178, __s1a, __na);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v58, " conflicts with the existing symbol ", 0x26uLL);
          v157 = *a1 + 40 * v116[8];
          v160 = *(v157 + 16);
          v158 = v157 + 16;
          v159 = v160;
          v161 = *(v158 + 8);
          if (*(v158 + 23) >= 0)
          {
            v162 = *(v158 + 23);
          }

          else
          {
            v158 = v159;
            v162 = v161;
          }

          v184 = v158;
          v185 = v162;
          v163 = v162 != 0;
          if (v162)
          {
            v164 = ".";
          }

          else
          {
            v164 = &byte_23CE7F131;
          }

          v182 = v164;
          v183 = v163;
          v67 = *(v116 + 63);
          if ((v67 & 0x80u) == 0)
          {
            v68 = v116 + 10;
          }

          else
          {
            v68 = *(v116 + 5);
          }

          if ((v67 & 0x80u) != 0)
          {
            v67 = *(v116 + 6);
          }

          goto LABEL_235;
        }

LABEL_239:
        absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>::insert_hint_unique<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry const&>(v167, i, v33, &v175, &v175, &v184);
        v26 = 1;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_237;
        }

LABEL_240:
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v177 & 0x80000000) == 0)
        {
          return v26;
        }

LABEL_241:
        operator delete(v176[0]);
        return v26;
      }

      v133 = __s1a->__r_.__value_.__s.__data_[v132] == 46;
      if (v129 < 0)
      {
        goto LABEL_199;
      }
    }

LABEL_185:
    if (v133)
    {
      goto LABEL_186;
    }

    goto LABEL_200;
  }

  v168 = v28;
  v39 = &i[32 * v28];
  v40 = (v39 + 16);
  v41 = *a1 + 40 * *(v39 + 4);
  v44 = *(v41 + 16);
  v42 = v41 + 16;
  v43 = v44;
  v45 = *(v42 + 8);
  if (*(v42 + 23) >= 0)
  {
    v46 = *(v42 + 23);
  }

  else
  {
    v42 = v43;
    v46 = v45;
  }

  v184 = v42;
  v185 = v46;
  v47 = v46 != 0;
  if (v46)
  {
    v48 = ".";
  }

  else
  {
    v48 = &byte_23CE7F131;
  }

  v182 = v48;
  v183 = v47;
  v51 = *(v39 + 3);
  v50 = v39 + 24;
  v49 = v51;
  v52 = v50[23];
  if ((v52 & 0x80u) != 0)
  {
    v52 = *(v50 + 1);
  }

  else
  {
    v49 = v50;
  }

  v180 = v49;
  v181 = v52;
  absl::lts_20240722::StrCat(&v184, &v182, &v180, &v179);
  v53 = SHIBYTE(v179.__r_.__value_.__r.__words[2]);
  v54 = v179.__r_.__value_.__r.__words[0];
  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v55 = &v179;
  }

  else
  {
    v55 = v179.__r_.__value_.__r.__words[0];
  }

  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v56 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v56 = v179.__r_.__value_.__l.__size_;
  }

  if (v56 == __n && !memcmp(v55, __s1, __n))
  {
    v57 = 1;
    if (v53 < 0)
    {
      goto LABEL_100;
    }

LABEL_86:
    if (!v57)
    {
      goto LABEL_101;
    }

    goto LABEL_87;
  }

  if (!v56 || __n >= v56 && !memcmp(__s1, v55, v56))
  {
    v57 = __s1->__r_.__value_.__s.__data_[v56] == 46;
    if (v53 < 0)
    {
      goto LABEL_100;
    }

    goto LABEL_86;
  }

  v57 = 0;
  if ((v53 & 0x80000000) == 0)
  {
    goto LABEL_86;
  }

LABEL_100:
  operator delete(v54);
  if (v57)
  {
LABEL_87:
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v178, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor_database.cc", 660);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v178, "Symbol name ", 0xDuLL);
    v58 = absl::lts_20240722::log_internal::LogMessage::operator<<(v178, __s1, __n);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v58, " conflicts with the existing symbol ", 0x26uLL);
    v59 = *a1 + 40 * *v40;
    v62 = *(v59 + 16);
    v60 = v59 + 16;
    v61 = v62;
    v63 = *(v60 + 8);
    if (*(v60 + 23) >= 0)
    {
      v64 = *(v60 + 23);
    }

    else
    {
      v60 = v61;
      v64 = v63;
    }

    v184 = v60;
    v185 = v64;
    v65 = v64 != 0;
    if (v64)
    {
      v66 = ".";
    }

    else
    {
      v66 = &byte_23CE7F131;
    }

    v182 = v66;
    v183 = v65;
    v67 = *(v40 + 31);
    if ((v67 & 0x80u) == 0)
    {
      v68 = v50;
    }

    else
    {
      v68 = *(v40 + 1);
    }

    if ((v67 & 0x80u) != 0)
    {
      v67 = *(v40 + 2);
    }

LABEL_235:
    v180 = v68;
    v181 = v67;
    absl::lts_20240722::StrCat(&v184, &v182, &v180, &v179);
    v165 = absl::lts_20240722::log_internal::LogMessage::operator<<(v58, &v179);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v165, ".", 2uLL);
    operations_research::sat::ConvertCpModelProtoToMPModelProto();
    goto LABEL_236;
  }

LABEL_101:
  if (!i[11])
  {
    v73 = &i[8 * (v168 + 1) + 240];
    do
    {
      v71 = *v73;
      v74 = *(*v73 + 11);
      v73 = *v73 + 240;
    }

    while (!v74);
    v33 = 0;
    v69 = 0;
    if (v71 != v36)
    {
      goto LABEL_124;
    }

    goto LABEL_115;
  }

  v33 = v168 + 1;
  v69 = v33;
  if (v33 == i[10])
  {
    v70 = i;
    while (1)
    {
      v71 = *v70;
      if (*(*v70 + 11))
      {
        break;
      }

      v72 = v70[8];
      v70 = *v70;
      if (v72 != v71[10])
      {
        v33 = v72;
        v69 = v72;
        if (v71 == v36)
        {
          goto LABEL_115;
        }

        goto LABEL_124;
      }
    }
  }

  v71 = i;
  if (i == v36)
  {
LABEL_115:
    if (v69 != v37)
    {
      goto LABEL_124;
    }

    i = v36;
    goto LABEL_117;
  }

LABEL_124:
  v80 = &v71[32 * v69 + 16];
  v81 = *a1 + 40 * *v80;
  v84 = *(v81 + 16);
  v82 = v81 + 16;
  v83 = v84;
  v85 = *(v82 + 8);
  if (*(v82 + 23) >= 0)
  {
    v86 = *(v82 + 23);
  }

  else
  {
    v82 = v83;
    v86 = v85;
  }

  v184 = v82;
  v185 = v86;
  v87 = v86 != 0;
  if (v86)
  {
    v88 = ".";
  }

  else
  {
    v88 = &byte_23CE7F131;
  }

  v182 = v88;
  v183 = v87;
  v91 = *(v80 + 1);
  v89 = (v80 + 8);
  v90 = v91;
  v92 = *(v89 + 1);
  if (*(v89 + 23) >= 0)
  {
    v93 = *(v89 + 23);
  }

  else
  {
    v89 = v90;
    v93 = v92;
  }

  v180 = v89;
  v181 = v93;
  absl::lts_20240722::StrCat(&v184, &v182, &v180, &v179);
  v94 = SHIBYTE(v179.__r_.__value_.__r.__words[2]);
  v95 = v179.__r_.__value_.__r.__words[0];
  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v96 = &v179;
  }

  else
  {
    v96 = v179.__r_.__value_.__r.__words[0];
  }

  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v97 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v97 = v179.__r_.__value_.__l.__size_;
  }

  if (__n == v97 && !memcmp(__s1, v96, __n))
  {
    v98 = 1;
    if ((v94 & 0x80000000) == 0)
    {
      goto LABEL_146;
    }

LABEL_145:
    operator delete(v95);
    goto LABEL_146;
  }

  if (!__n || v97 >= __n && !memcmp(v96, __s1, __n))
  {
    v98 = v96->__r_.__value_.__s.__data_[__n] == 46;
    if ((v94 & 0x80000000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_145;
  }

  v98 = 0;
  if (v94 < 0)
  {
    goto LABEL_145;
  }

LABEL_146:
  if (!v98)
  {
    i = v71;
    v75 = a1[14];
    v76 = a1[15];
    v184 = a1[11];
    v77 = v76 - v75;
    if (v76 == v75)
    {
      goto LABEL_158;
    }

    goto LABEL_118;
  }

  absl::lts_20240722::log_internal::LogMessage::LogMessage(v178, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor_database.cc", 674);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v178, "Symbol name ", 0xDuLL);
  v99 = absl::lts_20240722::log_internal::LogMessage::operator<<(v178, __s1, __n);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v99, " conflicts with the existing symbol ", 0x26uLL);
  v100 = &v71[32 * v33 + 16];
  v101 = *a1 + 40 * *v100;
  v104 = *(v101 + 16);
  v102 = v101 + 16;
  v103 = v104;
  v105 = *(v102 + 8);
  if (*(v102 + 23) >= 0)
  {
    v106 = *(v102 + 23);
  }

  else
  {
    v102 = v103;
    v106 = v105;
  }

  v184 = v102;
  v185 = v106;
  v107 = v106 != 0;
  if (v106)
  {
    v108 = ".";
  }

  else
  {
    v108 = &byte_23CE7F131;
  }

  v182 = v108;
  v183 = v107;
  v111 = *(v100 + 1);
  v109 = (v100 + 8);
  v110 = v111;
  v112 = *(v109 + 1);
  if (*(v109 + 23) >= 0)
  {
    v113 = *(v109 + 23);
  }

  else
  {
    v109 = v110;
    v113 = v112;
  }

  v180 = v109;
  v181 = v113;
  absl::lts_20240722::StrCat(&v184, &v182, &v180, &v179);
  v114 = absl::lts_20240722::log_internal::LogMessage::operator<<(v99, &v179);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v114, ".", 2uLL);
  operations_research::sat::ConvertCpModelProtoToMPModelProto();
LABEL_236:
  v26 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_240;
  }

LABEL_237:
  if (v177 < 0)
  {
    goto LABEL_241;
  }

  return v26;
}

void sub_23CDBE524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a26);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EnsureFlat(google::protobuf::EncodedDescriptorDatabase::DescriptorIndex *this)
{
  std::vector<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EncodedEntry>::shrink_to_fit(this);
  v2 = *(this + 6);
  if (!v2)
  {
LABEL_21:
    v14 = *(this + 13);
    if (!v14)
    {
      goto LABEL_44;
    }

    goto LABEL_22;
  }

  v3 = *(this + 7);
  v4 = *(this + 8);
  __p[1] = 0;
  v40 = 0;
  __p[0] = 0;
  v41 = __p;
  v42 = 0;
  if (v2 + ((v4 - v3) >> 5))
  {
    if (!((v2 + ((v4 - v3) >> 5)) >> 59))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v5 = **(this + 3);
  v6 = *(this + 5);
  v7 = v6[10];
  v41 = *(this + 4);
  std::__merge[abi:ne200100]<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare &,absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry const&,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry const*>,std::__wrap_iter<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry*>,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry*>(v5, 0, v6, v7, v3, v4, 0);
  v8 = *(this + 7);
  if (v8)
  {
    v9 = *(this + 8);
    v10 = *(this + 7);
    if (v9 != v8)
    {
      do
      {
        if (*(v9 - 1) < 0)
        {
          operator delete(*(v9 - 24));
        }

        v9 -= 32;
      }

      while (v9 != v8);
      v10 = *(this + 7);
    }

    *(this + 8) = v8;
    operator delete(v10);
    *(this + 7) = 0;
    *(this + 8) = 0;
    *(this + 9) = 0;
  }

  *(this + 56) = *__p;
  *(this + 9) = v40;
  __p[1] = 0;
  v40 = 0;
  __p[0] = 0;
  if (!*(this + 6))
  {
    *(this + 5) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::EmptyNode(void)::empty_node;
    *(this + 3) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::EmptyNode(void)::empty_node;
    goto LABEL_21;
  }

  absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>::clear_and_delete(*(this + 3));
  v11 = __p[0];
  *(this + 3) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 5) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 6) = 0;
  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = __p[1];
  v13 = v11;
  if (__p[1] != v11)
  {
    do
    {
      if (*(v12 - 1) < 0)
      {
        operator delete(*(v12 - 3));
      }

      v12 -= 4;
    }

    while (v12 != v11);
    v13 = __p[0];
  }

  __p[1] = v11;
  operator delete(v13);
  v14 = *(this + 13);
  if (!v14)
  {
LABEL_44:
    v26 = *(this + 20);
    if (!v26)
    {
      return;
    }

    goto LABEL_45;
  }

LABEL_22:
  v15 = *(this + 14);
  v16 = *(this + 15);
  __p[1] = 0;
  v40 = 0;
  __p[0] = 0;
  v41 = __p;
  v42 = 0;
  if (v14 + ((v16 - v15) >> 5))
  {
    if (!((v14 + ((v16 - v15) >> 5)) >> 59))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v17 = **(this + 10);
  v18 = *(this + 12);
  v19 = v18[10];
  v41 = *(this + 11);
  std::__merge[abi:ne200100]<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare &,absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry const&,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry const*>,std::__wrap_iter<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry*>,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry*>(v17, 0, v18, v19, v15, v16, 0, &v41);
  v20 = *(this + 14);
  if (v20)
  {
    v21 = *(this + 15);
    v22 = *(this + 14);
    if (v21 != v20)
    {
      do
      {
        if (*(v21 - 1) < 0)
        {
          operator delete(*(v21 - 24));
        }

        v21 -= 32;
      }

      while (v21 != v20);
      v22 = *(this + 14);
    }

    *(this + 15) = v20;
    operator delete(v22);
    *(this + 14) = 0;
    *(this + 15) = 0;
    *(this + 16) = 0;
  }

  *(this + 7) = *__p;
  *(this + 16) = v40;
  __p[1] = 0;
  v40 = 0;
  __p[0] = 0;
  if (!*(this + 13))
  {
    *(this + 12) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>::EmptyNode(void)::empty_node;
    *(this + 10) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>::EmptyNode(void)::empty_node;
    v26 = *(this + 20);
    if (!v26)
    {
      return;
    }

    goto LABEL_45;
  }

  absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>::clear_and_delete(*(this + 10));
  v23 = __p[0];
  *(this + 10) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 12) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 13) = 0;
  if (!v23)
  {
    goto LABEL_44;
  }

  v24 = __p[1];
  v25 = v23;
  if (__p[1] != v23)
  {
    do
    {
      if (*(v24 - 1) < 0)
      {
        operator delete(*(v24 - 3));
      }

      v24 -= 4;
    }

    while (v24 != v23);
    v25 = __p[0];
  }

  __p[1] = v23;
  operator delete(v25);
  v26 = *(this + 20);
  if (v26)
  {
LABEL_45:
    v27 = *(this + 21);
    v28 = *(this + 22);
    v29 = v26 - 0x3333333333333333 * ((v28 - v27) >> 3);
    __p[1] = 0;
    v40 = 0;
    __p[0] = 0;
    v41 = __p;
    v42 = 0;
    if (v29)
    {
      if (v29 < 0x666666666666667)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v30 = **(this + 17);
    v31 = *(this + 19);
    v32 = v31[10];
    v41 = *(this + 18);
    std::__merge[abi:ne200100]<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare &,absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry const&,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry const*>,std::__wrap_iter<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry*>,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry*>(v30, 0, v31, v32, v27, v28, 0, &v41);
    v33 = *(this + 21);
    if (v33)
    {
      v34 = *(this + 22);
      v35 = *(this + 21);
      if (v34 != v33)
      {
        do
        {
          if (*(v34 - 9) < 0)
          {
            operator delete(*(v34 - 32));
          }

          v34 -= 40;
        }

        while (v34 != v33);
        v35 = *(this + 21);
      }

      *(this + 22) = v33;
      operator delete(v35);
      *(this + 21) = 0;
      *(this + 22) = 0;
      *(this + 23) = 0;
    }

    *(this + 168) = *__p;
    *(this + 23) = v40;
    __p[1] = 0;
    v40 = 0;
    __p[0] = 0;
    if (*(this + 20))
    {
      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::clear_and_delete(*(this + 17));
      v36 = __p[0];
      *(this + 17) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::EmptyNode(void)::empty_node;
      *(this + 19) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::EmptyNode(void)::empty_node;
      *(this + 20) = 0;
      if (v36)
      {
        v37 = __p[1];
        v38 = v36;
        if (__p[1] != v36)
        {
          do
          {
            if (*(v37 - 9) < 0)
            {
              operator delete(*(v37 - 4));
            }

            v37 -= 5;
          }

          while (v37 != v36);
          v38 = __p[0];
        }

        __p[1] = v36;
        operator delete(v38);
      }
    }

    else
    {
      *(this + 19) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::EmptyNode(void)::empty_node;
      *(this + 17) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::EmptyNode(void)::empty_node;
    }
  }
}

void sub_23CDBEB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__exception_guard_exceptions<std::vector<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CDBEB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__exception_guard_exceptions<std::vector<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CDBEB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__exception_guard_exceptions<std::vector<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindSymbolOnlyFlat(uint64_t a1, const void *a2, std::string::size_type a3)
{
  v34[6] = *MEMORY[0x277D85DE8];
  v30 = a2;
  v31 = a3;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v34[0] = *(a1 + 88);
  if (v5 == v4)
  {
    return 0;
  }

  v6 = (v5 - v4) >> 5;
  v7 = v4;
  do
  {
    if (google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare::operator()<std::string_view,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>(v34, &v30, (v7 + 32 * (v6 >> 1))))
    {
      v6 >>= 1;
    }

    else
    {
      v7 += 32 * (v6 >> 1) + 32;
      v6 += ~(v6 >> 1);
    }
  }

  while (v6);
  v8 = -32;
  if (v7 == *(a1 + 112))
  {
    v8 = 0;
  }

  v9 = (v7 + v8);
  if (v7 + v8 == *(a1 + 120))
  {
    return 0;
  }

  v10 = *a1 + 40 * *v9;
  v13 = *(v10 + 16);
  v11 = v10 + 16;
  v12 = v13;
  v14 = *(v11 + 8);
  if (*(v11 + 23) >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v11 = v12;
    v15 = v14;
  }

  v34[0] = v11;
  v34[1] = v15;
  v16 = v15 == 0;
  v17 = v15 != 0;
  v18 = &byte_23CE7F131;
  if (!v16)
  {
    v18 = ".";
  }

  v33[0] = v18;
  v33[1] = v17;
  v19 = v9 + 2;
  if (*(v9 + 31) >= 0)
  {
    v20 = *(v9 + 31);
  }

  else
  {
    v19 = *(v9 + 1);
    v20 = *(v9 + 2);
  }

  v32[0] = v19;
  v32[1] = v20;
  absl::lts_20240722::StrCat(v34, v33, v32, &v29);
  v21 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
  v22 = v29.__r_.__value_.__r.__words[0];
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v29;
  }

  else
  {
    v23 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v29.__r_.__value_.__l.__size_;
  }

  v25 = v30;
  v26 = v31;
  if (size == v31 && !memcmp(v23, v30, size) || (!size || v26 >= size && !memcmp(v25, v23, size)) && *(v25 + size) == 46)
  {
    result = *(*a1 + 40 * *v9);
    if ((v21 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((v21 & 0x80000000) == 0)
    {
      return result;
    }
  }

  v28 = result;
  operator delete(v22);
  return v28;
}

void std::vector<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EncodedEntry>::shrink_to_fit(char **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      if (0xCCCCCCCCCCCCCCCDLL * (v4 >> 3) < 0x666666666666667)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (v4 < v3)
    {
      v6 = (8 * (v4 >> 3));
      v7 = a1[1];
      v8 = &v6[v2 - v7];
      if (v2 != v7)
      {
        v9 = *a1;
        v10 = &v6[v2 - v7];
        do
        {
          v11 = *v9;
          *(v10 + 2) = *(v9 + 2);
          *v10 = v11;
          v12 = *(v9 + 1);
          *(v10 + 4) = *(v9 + 4);
          *(v10 + 1) = v12;
          *(v9 + 3) = 0;
          *(v9 + 4) = 0;
          *(v9 + 2) = 0;
          v9 += 40;
          v10 += 40;
        }

        while (v9 != v7);
        do
        {
          if (v2[39] < 0)
          {
            operator delete(*(v2 + 2));
          }

          v2 += 40;
        }

        while (v2 != v7);
        v2 = *a1;
      }

      *a1 = v8;
      a1[1] = v6;
      a1[2] = v6;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

double google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FindAllFileNames(uint64_t a1, std::vector<std::string> *this)
{
  v4 = *(a1 + 48) + ((*(a1 + 64) - *(a1 + 56)) >> 5);
  end = this->__end_;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
  if (v4 <= v6)
  {
    if (v4 < v6)
    {
      v8 = &this->__begin_[v4];
      while (end != v8)
      {
        v9 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
        --end;
        if (v9 < 0)
        {
          operator delete(end->__r_.__value_.__l.__data_);
        }
      }

      this->__end_ = v8;
    }
  }

  else
  {
    std::vector<std::string>::__append(this, v4 - v6);
  }

  v10 = **(a1 + 24);
  v11 = *(a1 + 40);
  v37 = v11[10];
  if (v10 != v11 || v11[10] != 0)
  {
    v36 = a1;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = &v10[32 * v14];
      v18 = *(v15 + 3);
      v16 = v15 + 24;
      v17 = v18;
      v19 = v16[23];
      if (v19 >= 0)
      {
        v20 = v16;
      }

      else
      {
        v20 = v17;
      }

      if (v19 >= 0)
      {
        v21 = v16[23];
      }

      else
      {
        v21 = *(v16 + 1);
      }

      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_58:
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v39) = v21;
      if (v21)
      {
        memmove(&__dst, v20, v21);
        *(&__dst + v21) = 0;
        v22 = &this->__begin_[v13];
        if ((SHIBYTE(v22->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_24:
          result = *&__dst;
          *&v22->__r_.__value_.__l.__data_ = __dst;
          v22->__r_.__value_.__r.__words[2] = v39;
          if (v10[11])
          {
            goto LABEL_25;
          }

          goto LABEL_33;
        }
      }

      else
      {
        LOBYTE(__dst) = 0;
        v22 = &this->__begin_[v13];
        if ((SHIBYTE(v22->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }
      }

      operator delete(v22->__r_.__value_.__l.__data_);
      result = *&__dst;
      *&v22->__r_.__value_.__l.__data_ = __dst;
      v22->__r_.__value_.__r.__words[2] = v39;
      if (v10[11])
      {
LABEL_25:
        if (++v14 == v10[10])
        {
          v23 = v10;
          while (1)
          {
            v24 = *v23;
            if (*(*v23 + 11))
            {
              break;
            }

            v25 = v23[8];
            v23 = *v23;
            if (v25 != v24[10])
            {
              v10 = v24;
              v14 = v25;
              goto LABEL_36;
            }
          }
        }

        goto LABEL_36;
      }

LABEL_33:
      v26 = &v10[8 * (v14 + 1) + 240];
      do
      {
        v10 = *v26;
        v27 = *(*v26 + 11);
        v26 = *v26 + 240;
      }

      while (!v27);
      v14 = 0;
LABEL_36:
      ++v13;
      if (v10 == v11 && v14 == v37)
      {
        v28 = v13;
        v29 = *(v36 + 56);
        v30 = *(v36 + 64);
        if (v29 == v30)
        {
          return result;
        }

LABEL_41:
        v31 = v28;
        while (2)
        {
          v32 = *(v29 + 31);
          if (v32 >= 0)
          {
            v33 = (v29 + 8);
          }

          else
          {
            v33 = *(v29 + 8);
          }

          if (v32 >= 0)
          {
            v34 = *(v29 + 31);
          }

          else
          {
            v34 = *(v29 + 16);
          }

          if (v34 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_58;
          }

          if (v34 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v39) = v34;
          if (v34)
          {
            memmove(&__dst, v33, v34);
            *(&__dst + v34) = 0;
            v35 = &this->__begin_[v31];
            if (SHIBYTE(v35->__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_56;
            }
          }

          else
          {
            LOBYTE(__dst) = 0;
            v35 = &this->__begin_[v31];
            if (SHIBYTE(v35->__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_56:
              operator delete(v35->__r_.__value_.__l.__data_);
            }
          }

          result = *&__dst;
          *&v35->__r_.__value_.__l.__data_ = __dst;
          v35->__r_.__value_.__r.__words[2] = v39;
          v29 += 32;
          ++v31;
          if (v29 == v30)
          {
            return result;
          }

          continue;
        }
      }
    }
  }

  v28 = 0;
  v29 = *(a1 + 56);
  v30 = *(a1 + 64);
  if (v29 != v30)
  {
    goto LABEL_41;
  }

  return result;
}

void google::protobuf::EncodedDescriptorDatabase::~EncodedDescriptorDatabase(google::protobuf::EncodedDescriptorDatabase *this)
{
  *this = &unk_284F46970;
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = *(this + 2);
  }

  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::~DescriptorIndex(v5);
    MEMORY[0x23EED9460]();
  }
}

{
  *this = &unk_284F46970;
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = *(this + 2);
  }

  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::~DescriptorIndex(v5);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void ***std::vector<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 3));
        }

        v3 -= 4;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>::clear_and_delete(void **__p)
{
  v1 = __p;
  if (*(__p + 11))
  {
    if (*(__p + 10))
    {
      v2 = __p + 3;
      v3 = 32 * *(__p + 10);
      do
      {
        if (*(v2 + 23) < 0)
        {
          operator delete(*v2);
        }

        v2 += 4;
        v3 -= 32;
      }

      while (v3);
    }

    goto LABEL_12;
  }

  if (!*(__p + 10))
  {
LABEL_12:

    operator delete(v1);
    return;
  }

  v4 = *__p;
  do
  {
    v1 = v1[30];
  }

  while (!*(v1 + 11));
  v5 = *(v1 + 8);
  v6 = *v1;
  v7 = v6[v5 + 30];
  if (v7[11])
  {
    goto LABEL_16;
  }

  do
  {
LABEL_18:
    v7 = *(v7 + 30);
  }

  while (!v7[11]);
  v5 = v7[8];
  v6 = *v7;
  v8 = v7[10];
  if (!v7[10])
  {
    goto LABEL_24;
  }

LABEL_20:
  v9 = v7 + 24;
  v10 = 32 * v8;
  do
  {
    if (v9[23] < 0)
    {
      operator delete(*v9);
    }

    v9 += 32;
    v10 -= 32;
  }

  while (v10);
LABEL_24:
  while (1)
  {
    operator delete(v7);
    v11 = *(v6 + 10);
    if (v5 >= v11)
    {
      break;
    }

    v7 = v6[++v5 + 30];
    if (!v7[11])
    {
      goto LABEL_18;
    }

LABEL_16:
    v8 = v7[10];
    if (v7[10])
    {
      goto LABEL_20;
    }
  }

  while (1)
  {
    v12 = *(v6 + 8);
    v13 = *v6;
    if (v11)
    {
      v14 = (v6 + 3);
      v15 = 32 * v11;
      do
      {
        if (*(v14 + 23) < 0)
        {
          operator delete(*v14);
        }

        v14 += 4;
        v15 -= 32;
      }

      while (v15);
    }

    operator delete(v6);
    if (v13 == v4)
    {
      break;
    }

    v11 = v13[10];
    v6 = v13;
    if (v12 < v11)
    {
      v6 = v13;
      v5 = v12 + 1;
      v7 = *&v13[8 * v5 + 240];
      if (v7[11])
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }
  }
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::clear(unsigned __int8 ***a1)
{
  if (!a1[2])
  {
    goto LABEL_4;
  }

  v2 = *a1;
  if (*(*a1 + 11) || !*(v2 + 10))
  {
    operator delete(v2);
    goto LABEL_4;
  }

  v3 = *v2;
  do
  {
    v2 = v2[32];
  }

  while (!*(v2 + 11));
  v4 = *(v2 + 8);
  v5 = *v2;
  while (1)
  {
    v6 = *&v5[8 * v4 + 256];
    if (!v6[11])
    {
      break;
    }

    v7 = v5;
    operator delete(*&v5[8 * v4 + 256]);
    v5 = v7;
    if (v4 >= v7[10])
    {
      goto LABEL_15;
    }

LABEL_9:
    ++v4;
  }

  do
  {
    v6 = *(v6 + 32);
  }

  while (!v6[11]);
  v4 = v6[8];
  v8 = *v6;
  operator delete(v6);
  v5 = v8;
  if (v4 < v8[10])
  {
    goto LABEL_9;
  }

LABEL_15:
  while (1)
  {
    v4 = v5[8];
    v9 = *v5;
    operator delete(v5);
    if (v9 == v3)
    {
      break;
    }

    v5 = v9;
    if (v4 < v9[10])
    {
      goto LABEL_9;
    }
  }

LABEL_4:
  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::EmptyNode(void)::empty_node;
  a1[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::EmptyNode(void)::empty_node;
  a1[2] = 0;
}

uint64_t google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddNestedExtensions<google::protobuf::DescriptorProto>(void *a1, const void *a2, size_t a3, uint64_t a4)
{
  v8 = *(a4 + 48);
  if (v8)
  {
    v9 = (v8 + 7);
  }

  else
  {
    v9 = (a4 + 48);
  }

  v10 = *(a4 + 56);
  if (v10)
  {
    v11 = 8 * v10;
    while ((google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddNestedExtensions<google::protobuf::DescriptorProto>(a1, a2, a3, *v9) & 1) != 0)
    {
      ++v9;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    v13 = *(a4 + 120);
    v12 = a4 + 120;
    v14 = (v13 + 7);
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    v16 = *(v12 + 8);
    if (v16)
    {
      v17 = 8 * v16 - 8;
      do
      {
        v18 = *v15++;
        result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddExtension<google::protobuf::FieldDescriptorProto>(a1, a2, a3, v18);
        if (result)
        {
          v20 = v17 == 0;
        }

        else
        {
          v20 = 1;
        }

        v17 -= 8;
      }

      while (!v20);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::AddExtension<google::protobuf::FieldDescriptorProto>(void *a1, const void *a2, size_t a3, uint64_t a4)
{
  v8 = (*(a4 + 32) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = v8[23];
  if ((v9 & 0x8000000000000000) != 0)
  {
    if (!*(v8 + 1) || **v8 != 46)
    {
      return 1;
    }
  }

  else if (!v8[23] || *v8 != 46)
  {
    return 1;
  }

  v32 = -858993459 * ((a1[1] - *a1) >> 3) - 1;
  if ((v9 & 0x80000000) == 0)
  {
    if (v9 < 0x17)
    {
      goto LABEL_9;
    }

LABEL_14:
    operator new();
  }

  v9 = *(v8 + 1);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = *v8;
  if (v9 >= 0x17)
  {
    goto LABEL_14;
  }

LABEL_9:
  v34 = v9;
  if (v9)
  {
    memmove(&v33, v8, v9);
    *(&v33 + v9) = 0;
    v35 = *(a4 + 72);
    if (!a1[20])
    {
      goto LABEL_16;
    }
  }

  else
  {
    LOBYTE(v33) = 0;
    v35 = *(a4 + 72);
    if (!a1[20])
    {
LABEL_16:
      operator new();
    }
  }

  v10 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::internal_locate<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>(a1 + 17, &v32);
  v12 = v11;
  v13 = v11;
  v14 = v10;
  while (v13 == v14[10])
  {
    v13 = v14[8];
    v14 = *v14;
    if (v14[11])
    {
      goto LABEL_22;
    }
  }

  if (!google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare::operator()((a1 + 18), &v32, &v14[40 * v13 + 16]))
  {
    v21 = 1;
    if (v34 < 0)
    {
      goto LABEL_38;
    }

    goto LABEL_32;
  }

LABEL_22:
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::internal_emplace<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>(a1 + 17, v10, v12, &v32);
  v15 = a1[21];
  v16 = a1[22];
  v17 = *(a4 + 32) & 0xFFFFFFFFFFFFFFFCLL;
  v18 = *(v17 + 23);
  if (v18 < 0)
  {
    v23 = *(v17 + 8);
    if (v23)
    {
      v17 = *v17;
      v19 = v23 - 1;
      if ((v23 - 1) <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_25;
      }

LABEL_36:
      std::string::__throw_length_error[abi:ne200100]();
    }

LABEL_42:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (!*(v17 + 23))
  {
    goto LABEL_42;
  }

  v19 = v18 - 1;
  if ((v18 - 1) > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_36;
  }

LABEL_25:
  if (v19 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v28) = v19;
  if (v19)
  {
    memmove(&__dst, (v17 + 1), v19);
  }

  *(&__dst + v19) = 0;
  v20 = *(a4 + 72);
  *__p = __dst;
  v30 = v28;
  v31 = v20;
  v21 = std::binary_search[abi:ne200100]<std::__wrap_iter<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry *>,std::pair<std::string,int>,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare>(v15, v16, __p, a1[18]);
  if ((SHIBYTE(v30) & 0x80000000) == 0)
  {
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_38:
    operator delete(v33);
    if (!v21)
    {
      return 1;
    }

    goto LABEL_39;
  }

  operator delete(__p[0]);
  if (v34 < 0)
  {
    goto LABEL_38;
  }

LABEL_32:
  if (!v21)
  {
    return 1;
  }

LABEL_39:
  absl::lts_20240722::log_internal::LogMessage::LogMessage(&v32, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor_database.cc", 748);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v32, "Extension conflicts with extension already in database: extend ", 0x3FuLL);
  v24 = absl::lts_20240722::log_internal::LogMessage::operator<<(&v32, (*(a4 + 32) & 0xFFFFFFFFFFFFFFFCLL));
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v24, " { ", 3uLL);
  v25 = absl::lts_20240722::log_internal::LogMessage::operator<<(v24, (*(a4 + 24) & 0xFFFFFFFFFFFFFFFCLL));
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, " = ", 3uLL);
  LODWORD(__p[0]) = *(a4 + 72);
  v26 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v25, __p);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v26, " } from:", 8uLL);
  absl::lts_20240722::log_internal::LogMessage::operator<<(v26, a2, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v32);
  return 0;
}

void sub_23CDBFCE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EncodedEntry>::__emplace_back_slow_path<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::EncodedEntry>(uint64_t **a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * (a1[2] - *a1) > v3)
  {
    v3 = 0x999999999999999ALL * (a1[2] - *a1);
  }

  if (0xCCCCCCCCCCCCCCCDLL * (a1[2] - *a1) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 8 * (a1[1] - *a1);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 16) = *(a2 + 16);
  *(v6 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  v7 = 40 * v2 + 40;
  v8 = *a1;
  v9 = a1[1];
  v10 = &(*a1)[v6 / 8] - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = &(*a1)[v6 / 8] - v9;
    do
    {
      v13 = *v11;
      *(v12 + 8) = *(v11 + 2);
      *v12 = v13;
      v14 = *(v11 + 1);
      *(v12 + 32) = v11[4];
      *(v12 + 16) = v14;
      v11[3] = 0;
      v11[4] = 0;
      v11[2] = 0;
      v11 += 5;
      v12 += 40;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 39) < 0)
      {
        operator delete(v8[2]);
      }

      v8 += 5;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::insert_unique<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a1[3])
  {
    operator new();
  }

  v5 = *(a2 + 31);
  if (v5 >= 0)
  {
    v6 = (a2 + 8);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 31);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v8 = *a1;
  v9 = *(*a1 + 10);
  if (*(*a1 + 10))
  {
LABEL_10:
    v10 = 0;
    do
    {
      v11 = (v9 + v10) >> 1;
      v12 = v8 + 16 + 32 * v11;
      v15 = *(v12 + 8);
      v13 = v12 + 8;
      v14 = v15;
      v16 = *(v13 + 23);
      if (v16 >= 0)
      {
        v17 = v13;
      }

      else
      {
        v17 = v14;
      }

      if (v16 >= 0)
      {
        v18 = *(v13 + 23);
      }

      else
      {
        v18 = *(v13 + 8);
      }

      if (v7 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v7;
      }

      v20 = memcmp(v17, v6, v19);
      if (v18 < v7)
      {
        v21 = -1;
      }

      else
      {
        v21 = 1;
      }

      if (v18 == v7)
      {
        v21 = 0;
      }

      if (v20)
      {
        v21 = v20;
      }

      if (v21 < 0)
      {
        v10 = v11 + 1;
      }

      else
      {
        v9 = (v9 + v10) >> 1;
      }
    }

    while (v10 != v9);
  }

  while (!*(v8 + 11))
  {
    v8 = *(v8 + 8 * v9 + 240);
    v9 = *(v8 + 10);
    if (*(v8 + 10))
    {
      goto LABEL_10;
    }
  }

  v22 = v9;
  v23 = v8;
  while (v9 == *(v23 + 10))
  {
    LODWORD(v9) = *(v23 + 8);
    v23 = *v23;
    if (*(v23 + 11))
    {
      goto LABEL_49;
    }
  }

  v24 = v23 + 32 * v9;
  v27 = *(v24 + 24);
  v25 = v24 + 24;
  v26 = v27;
  v28 = *(v25 + 23);
  if (v28 >= 0)
  {
    v29 = v25;
  }

  else
  {
    v29 = v26;
  }

  if (v28 >= 0)
  {
    v30 = *(v25 + 23);
  }

  else
  {
    v30 = *(v25 + 8);
  }

  if (v30 >= v7)
  {
    v31 = v7;
  }

  else
  {
    v31 = v30;
  }

  result = memcmp(v6, v29, v31);
  if (result)
  {
    if ((result & 0x80000000) != 0)
    {
LABEL_49:
      result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::internal_emplace<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>(a1, v8, v22, a3);
      v23 = result;
      LODWORD(v9) = v33;
      v34 = 1;
      goto LABEL_52;
    }
  }

  else if (v7 < v30)
  {
    goto LABEL_49;
  }

  v34 = 0;
LABEL_52:
  *a4 = v23;
  *(a4 + 8) = v9;
  *(a4 + 16) = v34;
  return result;
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::internal_emplace<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  i = a2;
  v23 = a3;
  v6 = *(a2 + 11);
  if (*(a2 + 11))
  {
    if (*(a2 + 10) == v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = a2;
    v8 = v23;
    v9 = *(a2 + 10);
    v10 = v23;
    if (v9 <= v23)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  a2 = *(a2 + 8 * a3 + 240);
  for (i = a2; !*(a2 + 11); i = a2)
  {
    a2 = *(a2 + 8 * *(a2 + 10) + 240);
  }

  LODWORD(v23) = *(a2 + 10);
  v6 = *(a2 + 11);
  if (!*(a2 + 11))
  {
    v6 = 7;
  }

  if (*(a2 + 10) != v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 <= 6)
  {
    operator new();
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::rebalance_or_split(a1, &i);
  v7 = i;
  v8 = v23;
  v9 = *(i + 10);
  v10 = v23;
  if (v9 > v23)
  {
LABEL_13:
    v10 = v8;
    if (((v9 - v8) & 0x7FFFFFFFFFFFFFFLL) != 0)
    {
      v11 = 32 * v9;
      v12 = v11 + v7 + 24;
      v13 = 32 * v8 - v11;
      do
      {
        *(v12 - 8) = *(v12 - 40);
        *v12 = *(v12 - 32);
        *(v12 + 16) = *(v12 - 16);
        *(v12 - 32) = 0;
        *(v12 - 24) = 0;
        *(v12 - 16) = 0;
        v12 -= 32;
        v13 += 32;
      }

      while (v13);
    }
  }

LABEL_16:
  v14 = v7 + 32 * v10;
  *(v14 + 16) = *a4;
  v15 = *(a4 + 8);
  *(v14 + 40) = *(a4 + 24);
  *(v14 + 24) = v15;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  v16 = (*(v7 + 10))++ + 1;
  if (!*(v7 + 11))
  {
    v17 = v8 + 1;
    if (v17 < v16)
    {
      v18 = v7 + 240;
      do
      {
        v19 = *(v18 + 8 * (v16 - 1));
        *(v18 + 8 * v16) = v19;
        *(v19 + 8) = v16;
      }

      while (v17 < --v16);
    }
  }

  ++a1[3];
  return i;
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::rebalance_or_split(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = **a2;
  if (*a2 == *a1)
  {
    operator new();
  }

  v5 = v3[8];
  if (v3[8])
  {
    v6 = *(v4 + 8 * (v5 - 1) + 240);
    v7 = *(v6 + 10);
    if (v7 <= 6)
    {
      v8 = *(a2 + 8);
      v9 = (7 - v7) >> (v8 < 7) <= 1u ? 1 : (7 - v7) >> (v8 < 7);
      v10 = (v9 + v7);
      if (v8 >= v9 || v10 <= 6)
      {
        result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::rebalance_right_to_left(*(v4 + 8 * (v5 - 1) + 240), v9, v3);
        v13 = *(a2 + 8) - v9;
        *(a2 + 2) = v13;
        if (v13 >= 0)
        {
          return result;
        }

        v22 = v13 + *(v6 + 10) + 1;
LABEL_30:
        *(a2 + 2) = v22;
        *a2 = v6;
        return result;
      }
    }
  }

  v14 = *(v4 + 10);
  if (v5 >= v14 || (v6 = *(v4 + 8 * (v5 + 1) + 240), v15 = *(v6 + 10), v15 > 6) || ((v16 = *(a2 + 2), (7 - v15) >> (v16 > 0) <= 1u) ? (v17 = 1) : (v17 = (7 - v15) >> (v16 > 0)), (v18 = (v17 + v15), (v3[10] - v17) < v16) ? (v19 = v18 > 6) : (v19 = 0), v19))
  {
    if (v14 == 7)
    {
      v23 = v4;
      v24 = v5;
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::rebalance_or_split(a1, &v23);
      v3 = *a2;
    }

    if (v3[11])
    {
      operator new();
    }

    operator new();
  }

  result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::rebalance_left_to_right(v3, v17, *(v4 + 8 * (v5 + 1) + 240));
  v20 = *(a2 + 2);
  v21 = *(*a2 + 10);
  if (v20 > v21)
  {
    v22 = v20 + ~v21;
    goto LABEL_30;
  }

  return result;
}

uint64_t absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::rebalance_right_to_left(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = result + 32 * *(result + 10);
  v4 = *result + 32 * *(result + 8);
  *(v3 + 16) = *(v4 + 16);
  v5 = *(v4 + 24);
  *(v3 + 40) = *(v4 + 40);
  *(v3 + 24) = v5;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 24) = 0;
  v6 = a3 + 16;
  v7 = a3 + 16 + 32 * (a2 - 1);
  if (a2 != 1)
  {
    v8 = result + 32 * *(result + 10) + 56;
    do
    {
      *(v8 - 8) = *v6;
      v9 = *(v6 + 8);
      *(v8 + 16) = *(v6 + 24);
      *v8 = v9;
      v8 += 32;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v6 += 32;
    }

    while (v6 != v7);
  }

  v10 = *result + 32 * *(result + 8);
  *(v10 + 16) = *v7;
  v11 = *(v7 + 8);
  *(v10 + 40) = *(v7 + 24);
  *(v10 + 24) = v11;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 8) = 0;
  v12 = *(a3 + 10);
  v13 = a2;
  if (v12 != a2)
  {
    v14 = 32 * v12;
    v15 = 32 * a2;
    v16 = v14 - v15;
    v17 = a3;
    do
    {
      v18 = (v17 + v15);
      *(v17 + 16) = *(v17 + v15 + 16);
      v19 = *(v17 + v15 + 40);
      *(v17 + 24) = *(v17 + v15 + 24);
      *(v17 + 40) = v19;
      v18[4] = 0;
      v18[5] = 0;
      v18[3] = 0;
      v17 += 32;
      v16 -= 32;
    }

    while (v16);
  }

  if (!*(result + 11))
  {
    if (a2)
    {
      v20 = (a3 + 240);
      v21 = 1;
      do
      {
        v22 = *(result + 10) + v21;
        v23 = *v20++;
        *(result + 240 + 8 * v22) = v23;
        *(v23 + 8) = v22;
        *v23 = result;
        ++v21;
        --v13;
      }

      while (v13);
    }

    if (*(a3 + 10) >= a2)
    {
      v24 = 0;
      v25 = a3 + 240;
      do
      {
        v26 = *(v25 + 8 * (v24 + a2));
        *(v25 + 8 * v24) = v26;
        *(v26 + 8) = v24;
        *v26 = a3;
        ++v24;
      }

      while ((*(a3 + 10) - a2) >= v24);
    }
  }

  *(result + 10) += a2;
  *(a3 + 10) -= a2;
  return result;
}

uint64_t absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::rebalance_left_to_right(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = a3 + 16;
  if (*(a3 + 10))
  {
    v4 = 0;
    v5 = 32 * *(a3 + 10);
    v6 = a3 + 32 * a2;
    v7 = a3;
    do
    {
      v8 = v6 + v5;
      v9 = (v7 + v5);
      *(v8 - 16) = *(v7 + v5 - 16);
      v10 = *(v7 + v5 - 8);
      *(v8 + 8) = *(v7 + v5 + 8);
      *(v8 - 8) = v10;
      *v9 = 0;
      v9[1] = 0;
      *(v9 - 1) = 0;
      v6 -= 32;
      v7 -= 32;
      v4 += 32;
    }

    while (v5 != v4);
  }

  v11 = result + 16;
  v12 = a2 - 1;
  v13 = 32 * v12;
  v14 = v3 + 32 * v12;
  v15 = *result + 32 * *(result + 8);
  *v14 = *(v15 + 16);
  v16 = *(v15 + 24);
  *(v14 + 24) = *(v15 + 40);
  *(v14 + 8) = v16;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 24) = 0;
  v17 = *(result + 10);
  if (a2 != 1)
  {
    v18 = v11 + 32 * (v17 - v12);
    v19 = v18 + v13;
    do
    {
      *v3 = *v18;
      v20 = *(v18 + 8);
      *(v3 + 24) = *(v18 + 24);
      *(v3 + 8) = v20;
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      *(v18 + 8) = 0;
      v18 += 32;
      v3 += 32;
    }

    while (v18 != v19);
    LODWORD(v17) = *(result + 10);
  }

  v21 = *result + 32 * *(result + 8);
  v22 = v11 + 32 * (v17 - a2);
  *(v21 + 16) = *v22;
  v23 = *(v22 + 8);
  *(v21 + 40) = *(v22 + 24);
  *(v21 + 24) = v23;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 8) = 0;
  if (!*(result + 11))
  {
    if (((*(a3 + 10) + 1) & 0x100) == 0)
    {
      v24 = a3 + 240;
      v25 = (*(a3 + 10) + 1);
      do
      {
        v26 = *(v24 + 8 * (v25 - 1));
        *(v24 + 8 * (v25 - 1 + a2)) = v26;
        *(v26 + 8) = v25 - 1 + a2;
        *v26 = a3;
        --v25;
      }

      while (v25);
    }

    if (a2)
    {
      v27 = 0;
      if ((a2 + 1) <= 2u)
      {
        v28 = 2;
      }

      else
      {
        v28 = (a2 + 1);
      }

      v29 = v28 - 1;
      do
      {
        v30 = *(result + 240 + 8 * (v27 + 1 - a2 + *(result + 10)));
        *(a3 + 8 * v27 + 240) = v30;
        *(v30 + 8) = v27;
        *v30 = a3;
        ++v27;
      }

      while (v29 != v27);
    }
  }

  *(result + 10) -= a2;
  *(a3 + 10) += a2;
  return result;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::split(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 7)
  {
    LOBYTE(v5) = 0;
  }

  else if (a2)
  {
    v5 = a1[10] >> 1;
  }

  else
  {
    LOBYTE(v5) = a1[10] - 1;
  }

  *(a3 + 10) = v5;
  v6 = a1[10] - v5;
  a1[10] = v6;
  v7 = a1 + 16;
  if (*(a3 + 10))
  {
    v8 = &v7[32 * v6];
    v9 = &v8[32 * *(a3 + 10)];
    v10 = a3 + 16;
    do
    {
      *v10 = *v8;
      v11 = *(v8 + 8);
      *(v10 + 24) = *(v8 + 3);
      *(v10 + 8) = v11;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 1) = 0;
      v8 += 32;
      v10 += 32;
    }

    while (v8 != v9);
    v6 = a1[10];
  }

  v12 = v6 - 1;
  a1[10] = v6 - 1;
  v13 = *a1;
  v14 = a1[8];
  v15 = &v7[32 * v12];
  v16 = *(*a1 + 10);
  if (v16 > v14 && ((v16 - v14) & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v17 = 32 * *(*a1 + 10);
    v18 = v17 + v13 + 24;
    v19 = 32 * v14 - v17;
    do
    {
      *(v18 - 8) = *(v18 - 40);
      *v18 = *(v18 - 32);
      *(v18 + 16) = *(v18 - 16);
      *(v18 - 32) = 0;
      *(v18 - 24) = 0;
      *(v18 - 16) = 0;
      v18 -= 32;
      v19 += 32;
    }

    while (v19);
  }

  v20 = v13 + 32 * v14;
  *(v20 + 16) = *v15;
  v21 = *(v15 + 8);
  *(v20 + 40) = *(v15 + 3);
  *(v20 + 24) = v21;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 1) = 0;
  v22 = (*(v13 + 10))++ + 1;
  if (!*(v13 + 11))
  {
    v23 = v14 + 1;
    if (v23 < v22)
    {
      v24 = v13 + 240;
      do
      {
        v25 = *(v24 + 8 * (v22 - 1));
        *(v24 + 8 * v22) = v25;
        *(v25 + 8) = v22;
      }

      while (v23 < --v22);
    }
  }

  v27 = &v7[32 * a1[10]];
  if (v27[31] < 0)
  {
    operator delete(*(v27 + 1));
  }

  *(*a1 + 8 * (a1[8] + 1) + 240) = a3;
  v28 = a1[11];
  if (!a1[11])
  {
    v29 = a1[10];
    do
    {
      v30 = *&a1[8 * ++v29 + 240];
      *(a3 + 240 + 8 * v28) = v30;
      *(v30 + 8) = v28;
      *v30 = a3;
      ++v28;
    }

    while (*(a3 + 10) >= v28);
  }
}

BOOL std::binary_search[abi:ne200100]<std::__wrap_iter<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry *>,std::pair<std::string,int>,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare>(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4)
{
  v6 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry *>,std::pair<std::string,int>,std::__identity,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare>(a1, a3, 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3));
  if (v6 == a2)
  {
    return 0;
  }

  v7 = *(a3 + 23);
  if (v7 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  v10 = *(v6 + 31);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v6 + 16);
  }

  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  v12 = *(a3 + 6);
  v15 = *(v6 + 8);
  v13 = v6 + 8;
  v14 = v15;
  if (v11 >= 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  v17 = v10 - 1;
  v18 = *(v13 + 24);
  if (v10 - 1 >= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v10 - 1;
  }

  v20 = memcmp(v8, (v16 + 1), v19);
  if (!v20)
  {
    if (v9 < v17)
    {
      return 0;
    }

LABEL_22:
    v22 = memcmp((v16 + 1), v8, v19);
    if (v22)
    {
      if (v22 < 0)
      {
        return 1;
      }
    }

    else if (v17 < v9)
    {
      return 1;
    }

    return v12 >= v18;
  }

  if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  return 0;
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::internal_locate<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v2 = a2 + 8;
  v3 = v4;
  v5 = *(v2 + 23);
  if (*(v2 + 23) >= 0)
  {
    v6 = v2;
  }

  else
  {
    v5 = *(v2 + 8);
    v6 = v3;
  }

  if (!v5)
  {
    for (result = *a1; !*(result + 10); result = *(result + 256))
    {
      if (*(result + 11))
      {
        return result;
      }
    }

LABEL_36:
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  v7 = v5 - 1;
  v28 = *(v2 + 24);
  v8 = *a1;
  v9 = *(*a1 + 10);
  v27 = *a1;
  if (!*(*a1 + 10))
  {
    goto LABEL_28;
  }

LABEL_6:
  v10 = 0;
  v11 = v8 + 16;
  do
  {
    v12 = (v9 + v10) >> 1;
    v13 = v11 + 40 * v12;
    v14 = *(v13 + 31);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v13 + 16);
    }

    if (!v14)
    {
      goto LABEL_36;
    }

    v18 = *(v13 + 8);
    v16 = v13 + 8;
    v17 = v18;
    if (v15 >= 0)
    {
      v19 = v16;
    }

    else
    {
      v19 = v17;
    }

    v20 = v14 - 1;
    v21 = *(v16 + 24);
    if (v7 >= v14 - 1)
    {
      v22 = v14 - 1;
    }

    else
    {
      v22 = v7;
    }

    v23 = memcmp((v19 + 1), (v6 + 1), v22);
    if (v23)
    {
      if (v23 < 0)
      {
        goto LABEL_7;
      }
    }

    else if (v20 < v7)
    {
      goto LABEL_7;
    }

    v24 = memcmp((v6 + 1), (v19 + 1), v22);
    if (v24)
    {
      if (v24 < 0)
      {
        goto LABEL_8;
      }
    }

    else if (v7 < v20)
    {
      goto LABEL_8;
    }

    if (v21 < v28)
    {
LABEL_7:
      v10 = v12 + 1;
      v12 = v9;
    }

LABEL_8:
    v9 = v12;
  }

  while (v10 != v12);
  while (1)
  {
    result = v27;
    if (*(v27 + 11))
    {
      return result;
    }

    v26 = v27 + 8 * v12 + 256;
    v8 = *v26;
    v9 = *(*v26 + 10);
    v27 = *v26;
    if (*(*v26 + 10))
    {
      goto LABEL_6;
    }

LABEL_28:
    LOBYTE(v12) = 0;
  }
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::internal_emplace<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  i = a2;
  v23 = a3;
  v7 = a2[11];
  if (a2[11])
  {
    if (a2[10] == v7)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = v5;
    v9 = v23;
    v10 = v8[10];
    if (v10 <= v23)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v5 = *&a2[8 * a3 + 256];
  for (i = v5; !v5[11]; i = v5)
  {
    v5 = *&v5[8 * v5[10] + 256];
  }

  LODWORD(v23) = v5[10];
  v7 = v5[11];
  if (!v5[11])
  {
    v7 = 6;
  }

  if (v5[10] != v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 <= 5)
  {
    operator new();
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::rebalance_or_split(a1, &i);
  v8 = i;
  v9 = v23;
  v10 = i[10];
  if (v10 > v23)
  {
LABEL_13:
    v11 = 40 * v10;
    v12 = 40 * v9;
    v13 = v8;
    do
    {
      v14 = &v13[v11];
      *(v14 + 4) = *&v13[v11 - 24];
      *(v14 + 24) = *&v13[v11 - 16];
      *(v14 + 5) = *&v13[v11];
      *(v14 - 1) = 0;
      *v14 = 0;
      *(v14 - 2) = 0;
      *(v14 + 12) = *&v13[v11 + 8];
      if (v13[v11 + 7] < 0)
      {
        operator delete(*(v14 - 2));
      }

      v12 += 40;
      v13 -= 40;
    }

    while (v11 != v12);
  }

LABEL_17:
  v15 = &v8[40 * v9];
  *(v15 + 4) = *a4;
  v16 = *(a4 + 8);
  *(v15 + 5) = *(a4 + 24);
  *(v15 + 24) = v16;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  *(v15 + 12) = *(a4 + 32);
  v17 = ++v8[10];
  if (!v8[11] && v9 + 1 < v17)
  {
    v18 = v8 + 256;
    do
    {
      v19 = *&v18[8 * (v17 - 1)];
      *&v18[8 * v17] = v19;
      *(v19 + 8) = v17;
    }

    while (v9 + 1 < --v17);
  }

  ++a1[3];
  return i;
}

BOOL google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 31);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 16);
  }

  if (!v3)
  {
    goto LABEL_25;
  }

  v7 = *(a2 + 8);
  v5 = a2 + 8;
  v6 = v7;
  if (v4 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(a3 + 31);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 16);
  }

  if (!v9)
  {
LABEL_25:
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  v11 = v3 - 1;
  v12 = *(v5 + 24);
  v15 = *(a3 + 8);
  v13 = a3 + 8;
  v14 = v15;
  if (v10 >= 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  v17 = v9 - 1;
  v18 = *(v13 + 24);
  if (v9 - 1 >= v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = v9 - 1;
  }

  v20 = memcmp((v8 + 1), (v16 + 1), v19);
  if (v20)
  {
    if (v20 < 0)
    {
      return 1;
    }
  }

  else if (v11 < v17)
  {
    return 1;
  }

  v22 = memcmp((v16 + 1), (v8 + 1), v19);
  if (v22)
  {
    if (v22 < 0)
    {
      return 0;
    }
  }

  else if (v17 < v11)
  {
    return 0;
  }

  return v12 < v18;
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::rebalance_or_split(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = **a2;
  if (*a2 == *a1)
  {
    operator new();
  }

  v5 = v3[8];
  if (v3[8])
  {
    v6 = *(v4 + 8 * (v5 - 1) + 256);
    v7 = *(v6 + 10);
    if (v7 <= 5)
    {
      v8 = *(a2 + 2);
      v9 = (6 - v7) >> ((v8 & 0xFEu) < 6) <= 1u ? 1 : (6 - v7) >> ((v8 & 0xFEu) < 6);
      v10 = (v9 + v7);
      if (v9 <= v8 || v10 <= 5)
      {
        absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::rebalance_right_to_left(*(v4 + 8 * (v5 - 1) + 256), v9, v3);
        v12 = *(a2 + 8) - v9;
        *(a2 + 2) = v12;
        if (v12 >= 0)
        {
          return;
        }

        v21 = v12 + *(v6 + 10) + 1;
LABEL_30:
        *(a2 + 2) = v21;
        *a2 = v6;
        return;
      }
    }
  }

  v13 = *(v4 + 10);
  if (v5 >= v13 || (v6 = *(v4 + 8 * (v5 + 1) + 256), v14 = *(v6 + 10), v14 > 5) || ((v15 = *(a2 + 2), (6 - v14) >> (v15 > 0) <= 1u) ? (v16 = 1) : (v16 = (6 - v14) >> (v15 > 0)), (v17 = (v16 + v14), (v3[10] - v16) < v15) ? (v18 = v17 > 5) : (v18 = 0), v18))
  {
    if (v13 == 6)
    {
      v22 = v4;
      v23 = v5;
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::rebalance_or_split(a1, &v22);
      v3 = *a2;
    }

    if (v3[11])
    {
      operator new();
    }

    operator new();
  }

  absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::rebalance_left_to_right(v3, v16, *(v4 + 8 * (v5 + 1) + 256));
  v19 = *(a2 + 2);
  v20 = *(*a2 + 10);
  if (v19 > v20)
  {
    v21 = v19 + ~v20;
    goto LABEL_30;
  }
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::clear_and_delete(void **__p)
{
  v1 = __p;
  if (*(__p + 11))
  {
    if (*(__p + 10))
    {
      v2 = __p + 3;
      v3 = 40 * *(__p + 10);
      do
      {
        if (*(v2 + 23) < 0)
        {
          operator delete(*v2);
        }

        v2 += 5;
        v3 -= 40;
      }

      while (v3);
    }

    goto LABEL_12;
  }

  if (!*(__p + 10))
  {
LABEL_12:

    operator delete(v1);
    return;
  }

  v4 = *__p;
  do
  {
    v1 = v1[32];
  }

  while (!*(v1 + 11));
  v5 = *(v1 + 8);
  v6 = *v1;
  v7 = v6[v5 + 32];
  if (v7[11])
  {
    goto LABEL_16;
  }

  do
  {
LABEL_18:
    v7 = *(v7 + 32);
  }

  while (!v7[11]);
  v5 = v7[8];
  v6 = *v7;
  v8 = v7[10];
  if (!v7[10])
  {
    goto LABEL_24;
  }

LABEL_20:
  v9 = v7 + 24;
  v10 = 40 * v8;
  do
  {
    if (v9[23] < 0)
    {
      operator delete(*v9);
    }

    v9 += 40;
    v10 -= 40;
  }

  while (v10);
LABEL_24:
  while (1)
  {
    operator delete(v7);
    v11 = *(v6 + 10);
    if (v5 >= v11)
    {
      break;
    }

    v7 = v6[++v5 + 32];
    if (!v7[11])
    {
      goto LABEL_18;
    }

LABEL_16:
    v8 = v7[10];
    if (v7[10])
    {
      goto LABEL_20;
    }
  }

  while (1)
  {
    v12 = *(v6 + 8);
    v13 = *v6;
    if (v11)
    {
      v14 = (v6 + 3);
      v15 = 40 * v11;
      do
      {
        if (*(v14 + 23) < 0)
        {
          operator delete(*v14);
        }

        v14 += 5;
        v15 -= 40;
      }

      while (v15);
    }

    operator delete(v6);
    if (v13 == v4)
    {
      break;
    }

    v11 = v13[10];
    v6 = v13;
    if (v12 < v11)
    {
      v6 = v13;
      v5 = v12 + 1;
      v7 = *&v13[8 * v5 + 256];
      if (v7[11])
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }
  }
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::rebalance_right_to_left(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = a1 + 40 * *(a1 + 10);
  v7 = *a1 + 40 * *(a1 + 8);
  *(v6 + 16) = *(v7 + 16);
  v8 = *(v7 + 24);
  *(v6 + 40) = *(v7 + 40);
  *(v6 + 24) = v8;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = 0;
  *(v6 + 48) = *(v7 + 48);
  if (*(v7 + 47) < 0)
  {
    operator delete(*(v7 + 24));
  }

  v9 = a3 + 40 * (a2 - 1);
  if (a2 != 1)
  {
    v10 = 0;
    v11 = a1 + 40 * *(a1 + 10);
    do
    {
      v12 = a3 + v10;
      v13 = v11 + v10;
      *(v13 + 56) = *(a3 + v10 + 16);
      v14 = *(a3 + v10 + 24);
      *(v13 + 80) = *(a3 + v10 + 40);
      *(v13 + 64) = v14;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 24) = 0;
      *(v13 + 88) = *(a3 + v10 + 48);
      if (*(a3 + v10 + 47) < 0)
      {
        operator delete(*(v12 + 24));
      }

      v10 += 40;
    }

    while (40 * a2 - 40 != v10);
  }

  v15 = *a1 + 40 * *(a1 + 8);
  *(v15 + 16) = *(v9 + 16);
  v16 = *(v9 + 24);
  *(v15 + 40) = *(v9 + 40);
  *(v15 + 24) = v16;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 24) = 0;
  *(v15 + 48) = *(v9 + 48);
  if (*(v9 + 47) < 0)
  {
    operator delete(*(v9 + 24));
    v17 = *(a3 + 10);
    v18 = a2;
    if (v17 == a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v17 = *(a3 + 10);
    v18 = a2;
    if (v17 == a2)
    {
      goto LABEL_12;
    }
  }

  v26 = 0;
  v27 = a3 + 40 * v18;
  v28 = 40 * v17 - 40 * v18;
  do
  {
    v29 = a3 + v26;
    v30 = v27 + v26;
    *(v29 + 16) = *(v27 + v26 + 16);
    v31 = *(v27 + v26 + 40);
    *(v29 + 24) = *(v27 + v26 + 24);
    *(v29 + 40) = v31;
    *(v30 + 32) = 0;
    *(v30 + 40) = 0;
    *(v30 + 24) = 0;
    *(v29 + 48) = *(v27 + v26 + 48);
    if (*(v27 + v26 + 47) < 0)
    {
      operator delete(*(v30 + 24));
    }

    v26 += 40;
  }

  while (v28 != v26);
LABEL_12:
  if (!*(a1 + 11))
  {
    if (a2)
    {
      v19 = (a3 + 256);
      v20 = 1;
      do
      {
        v21 = *(a1 + 10) + v20;
        v22 = *v19++;
        *(a1 + 256 + 8 * v21) = v22;
        *(v22 + 8) = v21;
        *v22 = a1;
        ++v20;
        --v18;
      }

      while (v18);
    }

    if (*(a3 + 10) >= a2)
    {
      v23 = 0;
      v24 = a3 + 256;
      do
      {
        v25 = *(v24 + 8 * (v23 + a2));
        *(v24 + 8 * v23) = v25;
        *(v25 + 8) = v23;
        *v25 = a3;
        ++v23;
      }

      while ((*(a3 + 10) - a2) >= v23);
    }
  }

  *(a1 + 10) += a2;
  *(a3 + 10) -= a2;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::rebalance_left_to_right(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = a3 + 16;
  if (*(a3 + 10))
  {
    v7 = 0;
    v8 = 40 * *(a3 + 10);
    v9 = a3 + 40 * a2;
    v10 = a3;
    do
    {
      v11 = v9 + v8;
      v12 = (v10 + v8);
      *(v11 - 24) = *(v10 + v8 - 24);
      v13 = *(v10 + v8 - 16);
      *v11 = *(v10 + v8);
      *(v11 - 16) = v13;
      *(v12 - 1) = 0;
      *v12 = 0;
      *(v12 - 2) = 0;
      *(v11 + 8) = *(v10 + v8 + 8);
      if (*(v10 + v8 + 7) < 0)
      {
        operator delete(*(v12 - 2));
      }

      v10 -= 40;
      v7 += 40;
      v9 -= 40;
    }

    while (v8 != v7);
  }

  v14 = v6 + 40 * (a2 - 1);
  v15 = *a1 + 40 * *(a1 + 8);
  *v14 = *(v15 + 16);
  v16 = *(v15 + 24);
  *(v14 + 24) = *(v15 + 40);
  *(v14 + 8) = v16;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 24) = 0;
  *(v14 + 32) = *(v15 + 48);
  if (*(v15 + 47) < 0)
  {
    operator delete(*(v15 + 24));
  }

  v17 = *(a1 + 10);
  if (a2 != 1)
  {
    v18 = 0;
    v19 = a1 + 40 * *(a1 + 10) - 40 * a2;
    do
    {
      v20 = v6 + v18;
      v21 = v19 + v18;
      *v20 = *(v19 + v18 + 56);
      v22 = *(v19 + v18 + 64);
      *(v20 + 24) = *(v19 + v18 + 80);
      *(v20 + 8) = v22;
      *(v21 + 72) = 0;
      *(v21 + 80) = 0;
      *(v21 + 64) = 0;
      *(v20 + 32) = *(v19 + v18 + 88);
      if (*(v19 + v18 + 87) < 0)
      {
        operator delete(*(v21 + 64));
      }

      v18 += 40;
    }

    while (40 * a2 - 40 != v18);
    v17 = *(a1 + 10);
  }

  v23 = *a1 + 40 * *(a1 + 8);
  v24 = a1 + 16 + 40 * (v17 - a2);
  *(v23 + 16) = *v24;
  v25 = *(v24 + 8);
  *(v23 + 40) = *(v24 + 24);
  *(v23 + 24) = v25;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 8) = 0;
  *(v23 + 48) = *(v24 + 32);
  if (*(v24 + 31) < 0)
  {
    operator delete(*(v24 + 8));
    if (*(a1 + 11))
    {
      goto LABEL_27;
    }
  }

  else if (*(a1 + 11))
  {
    goto LABEL_27;
  }

  if (((*(a3 + 10) + 1) & 0x100) == 0)
  {
    v26 = a3 + 256;
    v27 = (*(a3 + 10) + 1);
    do
    {
      v28 = *(v26 + 8 * (v27 - 1));
      *(v26 + 8 * (v27 - 1 + a2)) = v28;
      *(v28 + 8) = v27 - 1 + a2;
      *v28 = a3;
      --v27;
    }

    while (v27);
  }

  if (a2)
  {
    v29 = 0;
    if ((a2 + 1) <= 2u)
    {
      v30 = 2;
    }

    else
    {
      v30 = (a2 + 1);
    }

    v31 = v30 - 1;
    do
    {
      v32 = *(a1 + 256 + 8 * (v29 + 1 - a2 + *(a1 + 10)));
      *(a3 + 8 * v29 + 256) = v32;
      *(v32 + 8) = v29;
      *v32 = a3;
      ++v29;
    }

    while (v31 != v29);
  }

LABEL_27:
  *(a1 + 10) -= a2;
  *(a3 + 10) += a2;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::split(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 6)
  {
    LOBYTE(v5) = 0;
  }

  else if (a2)
  {
    v5 = a1[10] >> 1;
  }

  else
  {
    LOBYTE(v5) = a1[10] - 1;
  }

  *(a3 + 10) = v5;
  v6 = a1[10] - v5;
  a1[10] = v6;
  v7 = a1 + 16;
  if (*(a3 + 10))
  {
    v8 = a3 + 16;
    v9 = 40 * *(a3 + 10);
    v10 = &a1[40 * v6 + 24];
    do
    {
      *v8 = *(v10 - 2);
      v11 = *v10;
      *(v8 + 24) = *(v10 + 2);
      *(v8 + 8) = v11;
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      *(v8 + 32) = *(v10 + 6);
      if (v10[23] < 0)
      {
        operator delete(*v10);
      }

      v10 += 40;
      v8 += 40;
      v9 -= 40;
    }

    while (v9);
    v6 = a1[10];
  }

  v12 = v6 - 1;
  a1[10] = v12;
  v13 = *a1;
  v14 = a1[8];
  v15 = &v7[40 * v12];
  v16 = *(*a1 + 10);
  if (v16 > v14)
  {
    v17 = 40 * v16;
    v18 = 40 * v14;
    v19 = *a1;
    do
    {
      v20 = v19 + v17;
      *(v20 + 16) = *(v19 + v17 - 24);
      *(v20 + 24) = *(v19 + v17 - 16);
      *(v20 + 40) = *(v19 + v17);
      *(v20 - 8) = 0;
      *v20 = 0;
      *(v20 - 16) = 0;
      *(v20 + 48) = *(v19 + v17 + 8);
      if (*(v19 + v17 + 7) < 0)
      {
        operator delete(*(v20 - 16));
      }

      v18 += 40;
      v19 -= 40;
    }

    while (v17 != v18);
  }

  v21 = v13 + 40 * v14;
  *(v21 + 16) = *v15;
  v22 = *(v15 + 8);
  *(v21 + 40) = *(v15 + 3);
  *(v21 + 24) = v22;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 1) = 0;
  *(v21 + 48) = *(v15 + 8);
  v23 = (*(v13 + 10))++ + 1;
  if (!*(v13 + 11) && v14 + 1 < v23)
  {
    v24 = v13 + 256;
    do
    {
      v25 = *(v24 + 8 * (v23 - 1));
      *(v24 + 8 * v23) = v25;
      *(v25 + 8) = v23;
    }

    while (v14 + 1 < --v23);
  }

  v27 = &v7[40 * a1[10]];
  if (v27[31] < 0)
  {
    operator delete(*(v27 + 1));
  }

  *(*a1 + 8 * (a1[8] + 1) + 256) = a3;
  v28 = a1[11];
  if (!a1[11])
  {
    v29 = a1[10];
    do
    {
      v30 = *&a1[8 * ++v29 + 256];
      *(a3 + 256 + 8 * v28) = v30;
      *(v30 + 8) = v28;
      *v30 = a3;
      ++v28;
    }

    while (*(a3 + 10) >= v28);
  }
}

uint64_t std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry *>,std::pair<std::string,int>,std::__identity,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare>(uint64_t a1, const void **a2, unint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v5 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = a2[1];
    }

    v20 = *(a2 + 6);
    do
    {
      v8 = v4 >> 1;
      v9 = a1 + 40 * (v4 >> 1);
      v10 = *(v9 + 31);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v9 + 16);
      }

      if (!v10)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      if (v11 >= 0)
      {
        v12 = v9 + 8;
      }

      else
      {
        v12 = *(v9 + 8);
      }

      v13 = v10 - 1;
      v14 = *(v9 + 32);
      if (v7 >= v10 - 1)
      {
        v15 = v10 - 1;
      }

      else
      {
        v15 = v7;
      }

      v16 = memcmp((v12 + 1), v6, v15);
      if (v16)
      {
        if (v16 < 0)
        {
          goto LABEL_9;
        }
      }

      else if (v13 < v7)
      {
        goto LABEL_9;
      }

      v17 = memcmp(v6, (v12 + 1), v15);
      if (v17)
      {
        if (v17 < 0 || v14 >= v20)
        {
          goto LABEL_10;
        }
      }

      else if (v7 < v13 || v14 >= v20)
      {
        goto LABEL_10;
      }

LABEL_9:
      a1 = v9 + 40;
      v8 = v4 + ~v8;
LABEL_10:
      v4 = v8;
    }

    while (v8);
  }

  return a1;
}

BOOL google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare::operator()<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>(uint64_t **a1, int *a2, int *a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = **a1;
  v6 = v5 + 40 * *a2;
  v7 = (v6 + 16);
  v8 = *(v6 + 39);
  v9 = v8;
  v10 = *(v6 + 24);
  if ((v8 & 0x80u) == 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    if ((v8 & 0x80u) == 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = *v7;
    }

    v13 = a2 + 2;
    v14 = *(a2 + 31);
    v15 = v14;
    v68 = *(a2 + 2);
    v69 = *(a2 + 1);
    if (v14 < 0)
    {
      v13 = *(a2 + 1);
    }

    v66 = v13;
    if (v14 >= 0)
    {
      v16 = *(a2 + 31);
    }

    else
    {
      v16 = *(a2 + 2);
    }

    v67 = v16;
    v17 = v11;
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v18 = *(a2 + 31);
    v15 = v18;
    v68 = *(a2 + 2);
    v69 = *(a2 + 1);
    if (v18 >= 0)
    {
      v12 = a2 + 2;
    }

    else
    {
      v12 = *(a2 + 1);
    }

    if (v18 >= 0)
    {
      v17 = *(a2 + 31);
    }

    else
    {
      v17 = *(a2 + 2);
    }
  }

  v19 = v5 + 40 * *a3;
  v20 = *(v19 + 39);
  if (v20 >= 0)
  {
    v21 = *(v19 + 39);
  }

  else
  {
    v21 = *(v19 + 24);
  }

  if (v21)
  {
    v24 = *(v19 + 16);
    v22 = (v19 + 16);
    v23 = v24;
    if (v20 >= 0)
    {
      v25 = v22;
    }

    else
    {
      v25 = v23;
    }

    v26 = *(a3 + 31);
    if (v26 >= 0)
    {
      v27 = a3 + 2;
    }

    else
    {
      v27 = *(a3 + 1);
    }

    if (v26 >= 0)
    {
      v28 = *(a3 + 31);
    }

    else
    {
      v28 = *(a3 + 2);
    }

    if (v17 >= v21)
    {
      v29 = v21;
    }

    else
    {
      v29 = v17;
    }

    v30 = memcmp(v12, v25, v29);
    if (v30)
    {
      return v30 >> 31;
    }
  }

  else
  {
    v28 = 0;
    v27 = 0;
    v32 = *(a3 + 31);
    if (v32 >= 0)
    {
      v33 = a3 + 2;
    }

    else
    {
      v33 = *(a3 + 1);
    }

    if (v32 >= 0)
    {
      v21 = *(a3 + 31);
    }

    else
    {
      v21 = *(a3 + 2);
    }

    if (v17 >= v21)
    {
      v34 = v21;
    }

    else
    {
      v34 = v17;
    }

    v30 = memcmp(v12, v33, v34);
    if (v30)
    {
      return v30 >> 31;
    }
  }

  if (v17 != v21)
  {
    v38 = *v7;
    if (v9 >= 0)
    {
      v38 = v7;
    }

    v76 = v38;
    v77 = v11;
    if (v11)
    {
      v39 = ".";
    }

    else
    {
      v39 = &byte_23CE7F131;
    }

    v74 = v39;
    v75 = v11 != 0;
    v40 = a2 + 2;
    v41 = v15;
    if (v15 < 0)
    {
      v40 = v69;
      v41 = v68;
    }

    v72 = v40;
    v73 = v41;
    absl::lts_20240722::StrCat(&v76, &v74, &v72, &__p);
    v42 = **a1 + 40 * *a3;
    v45 = *(v42 + 16);
    v43 = v42 + 16;
    v44 = v45;
    v46 = *(v43 + 8);
    if (*(v43 + 23) >= 0)
    {
      v47 = *(v43 + 23);
    }

    else
    {
      v43 = v44;
      v47 = v46;
    }

    v76 = v43;
    v77 = v47;
    v48 = v47 != 0;
    if (v47)
    {
      v49 = ".";
    }

    else
    {
      v49 = &byte_23CE7F131;
    }

    v74 = v49;
    v75 = v48;
    v52 = *(a3 + 1);
    v51 = a3 + 2;
    v50 = v52;
    v53 = *(v51 + 23);
    if ((v53 & 0x80u) != 0)
    {
      v53 = *(v51 + 1);
    }

    else
    {
      v50 = v51;
    }

    v72 = v50;
    v73 = v53;
    absl::lts_20240722::StrCat(&v76, &v74, &v72, &v70);
    v54 = SHIBYTE(v70.__r_.__value_.__r.__words[2]);
    v55 = v70.__r_.__value_.__r.__words[0];
    v56 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = SHIBYTE(v70.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v59 = v70.__r_.__value_.__l.__size_;
    }

    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v70;
    }

    else
    {
      v60 = v70.__r_.__value_.__r.__words[0];
    }

    if (v59 >= size)
    {
      v61 = size;
    }

    else
    {
      v61 = v59;
    }

    v62 = memcmp(p_p, v60, v61);
    if (v62)
    {
      result = v62 < 0;
    }

    else
    {
      result = size < v59;
    }

    if (v54 < 0)
    {
      v63 = result;
      operator delete(v55);
      result = v63;
      if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        return result;
      }
    }

    else if ((v56 & 0x80) == 0)
    {
      return result;
    }

    v64 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v64;
  }

  if (v28 >= v67)
  {
    v35 = v67;
  }

  else
  {
    v35 = v28;
  }

  v36 = memcmp(v66, v27, v35);
  if (v67 < v28)
  {
    v37 = -1;
  }

  else
  {
    v37 = 1;
  }

  if (v67 == v28)
  {
    v37 = 0;
  }

  if (v36)
  {
    v37 = v36;
  }

  return v37 >> 31;
}

void sub_23CDC2300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>::insert_hint_unique<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry const&>@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (!*(a1 + 24))
  {
    goto LABEL_45;
  }

  v9 = a3;
  v11 = *(a1 + 16);
  if (v11 != a2 || a3 != v11[10])
  {
    v13 = &a2[32 * a3];
    v14 = a1;
    v15 = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare::operator()<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>((a1 + 8), a4, v13 + 4);
    a1 = v14;
    if (!v15)
    {
      result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare::operator()<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>((v14 + 8), v13 + 4, a4);
      if (!result)
      {
        *a6 = a2;
        *(a6 + 8) = v9;
        *(a6 + 16) = 0;
        return result;
      }

      if (a2[11])
      {
        v20 = (v9 + 1);
        v9 = v9 & 0xFFFFFFFF00000000 | v20;
        a1 = v14;
        if (v20 == a2[10])
        {
          v21 = a2;
          while (1)
          {
            v22 = *v21;
            if (*(*v21 + 11))
            {
              break;
            }

            v23 = v21[8];
            v9 = v9 & 0xFFFFFFFF00000000 | v23;
            v21 = *v21;
            if (v23 != v22[10])
            {
              goto LABEL_40;
            }
          }

          v9 = v9 & 0xFFFFFFFF00000000 | v20;
          v22 = a2;
          v36 = *(v14 + 16);
          if (a2 == v36 && v9 == v36[10])
          {
            goto LABEL_53;
          }
        }

        else
        {
          v22 = a2;
LABEL_40:
          v33 = *(v14 + 16);
          if (v22 == v33 && v9 == v33[10])
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
        v29 = &a2[8 * (v9 + 1) + 240];
        a1 = v14;
        do
        {
          v22 = *v29;
          v30 = *(*v29 + 11);
          v29 = (*v29 + 240);
        }

        while (!v30);
        v9 &= 0xFFFFFFFF00000000;
        v31 = *(v14 + 16);
        if (v22 == v31 && v9 == v31[10])
        {
          goto LABEL_53;
        }
      }

      v35 = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare::operator()<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>((v14 + 8), a4, &v22[32 * v9 + 16]);
      a1 = v14;
      if (!v35)
      {
        goto LABEL_45;
      }

LABEL_53:
      v27 = v22;
      goto LABEL_30;
    }
  }

  if (**a1 == a2 && v9 == 0)
  {
    goto LABEL_29;
  }

  if (a2[11])
  {
    if (v9 <= 0)
    {
      v24 = a2;
      while (1)
      {
        i = *v24;
        if (*(*v24 + 11))
        {
          break;
        }

        v17 = v24[8];
        v24 = *v24;
        if (v17)
        {
          goto LABEL_28;
        }
      }
    }

    v17 = v9;
    i = a2;
  }

  else
  {
      ;
    }

    v17 = i[10];
  }

LABEL_28:
  v25 = a1;
  v26 = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare::operator()<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>((a1 + 8), &i[(((v17 << 32) - 0x100000000) >> 27) + 16], a4);
  a1 = v25;
  if (v26)
  {
LABEL_29:
    v27 = a2;
LABEL_30:
    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>::internal_emplace<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry const&>(a1, v27, v9, a5);
    *a6 = result;
    *(a6 + 8) = v28;
    *(a6 + 16) = 1;
    return result;
  }

LABEL_45:

  return absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>::insert_unique<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry const&>(a1, a4, a5, a6);
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>::internal_emplace<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry const&>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  i = a2;
  v22 = a3;
  v6 = *(a2 + 11);
  if (*(a2 + 11))
  {
    if (*(a2 + 10) == v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = a2;
    v8 = v22;
    v9 = *(a2 + 10);
    v10 = v22;
    if (v9 <= v22)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  a2 = *(a2 + 8 * a3 + 240);
  for (i = a2; !*(a2 + 11); i = a2)
  {
    a2 = *(a2 + 8 * *(a2 + 10) + 240);
  }

  LODWORD(v22) = *(a2 + 10);
  v6 = *(a2 + 11);
  if (!*(a2 + 11))
  {
    v6 = 7;
  }

  if (*(a2 + 10) != v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 <= 6)
  {
    operator new();
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::rebalance_or_split(a1, &i);
  v7 = i;
  v8 = v22;
  v9 = *(i + 10);
  v10 = v22;
  if (v9 > v22)
  {
LABEL_13:
    v10 = v8;
    if (((v9 - v8) & 0x7FFFFFFFFFFFFFFLL) != 0)
    {
      v11 = 32 * v9;
      v12 = v11 + v7 + 24;
      v13 = 32 * v8 - v11;
      do
      {
        *(v12 - 8) = *(v12 - 40);
        *v12 = *(v12 - 32);
        *(v12 + 16) = *(v12 - 16);
        *(v12 - 32) = 0;
        *(v12 - 24) = 0;
        *(v12 - 16) = 0;
        v12 -= 32;
        v13 += 32;
      }

      while (v13);
    }
  }

LABEL_16:
  v14 = v7 + 32 * v10;
  *(v14 + 16) = *a4;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v14 + 24), *(a4 + 8), *(a4 + 16));
    v16 = (*(v7 + 10))++ + 1;
    if (*(v7 + 11))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v15 = *(a4 + 8);
    *(v14 + 40) = *(a4 + 24);
    *(v14 + 24) = v15;
    v16 = (*(v7 + 10))++ + 1;
    if (*(v7 + 11))
    {
      goto LABEL_24;
    }
  }

  if (v8 + 1 < v16)
  {
    v17 = v7 + 240;
    do
    {
      v18 = *(v17 + 8 * (v16 - 1));
      *(v17 + 8 * v16) = v18;
      *(v18 + 8) = v16;
    }

    while (v8 + 1 < --v16);
  }

LABEL_24:
  ++a1[3];
  return i;
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>::insert_unique<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry const&>@<X0>(uint64_t **a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a1[3])
  {
    operator new();
  }

  v8 = *a1;
  v9 = *(*a1 + 10);
  if (*(*a1 + 10))
  {
LABEL_4:
    v10 = 0;
    do
    {
      v11 = (v9 + v10) >> 1;
      if (google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare::operator()<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>(a1 + 1, &v8[32 * v11 + 16], a2))
      {
        v10 = v11 + 1;
      }

      else
      {
        v9 = (v9 + v10) >> 1;
      }
    }

    while (v10 != v9);
  }

  while (!v8[11])
  {
    v8 = *&v8[8 * v9 + 240];
    v9 = v8[10];
    if (v8[10])
    {
      goto LABEL_4;
    }
  }

  v12 = v9;
  v13 = v9;
  v14 = v8;
  while (v13 == *(v14 + 10))
  {
    v13 = *(v14 + 8);
    v14 = *v14;
    if (*(v14 + 11))
    {
      goto LABEL_17;
    }
  }

  result = google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare::operator()<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>(a1 + 1, a2, (v14 + 32 * v13 + 16));
  if (result)
  {
LABEL_17:
    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>::internal_emplace<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry const&>(a1, v8, v12, a3);
    v14 = result;
    v16 = 1;
    v13 = v17;
    goto LABEL_19;
  }

  v16 = 0;
LABEL_19:
  *a4 = v14;
  *(a4 + 8) = v13;
  *(a4 + 16) = v16;
  return result;
}

BOOL google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare::operator()<std::string_view,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>(void **a1, uint64_t a2, int *a3)
{
  v39[6] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = **a1 + 40 * *a3;
  v7 = (v6 + 16);
  v8 = *(v6 + 39);
  v9 = v8;
  v10 = *(v6 + 24);
  if (v8 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(a3 + 2);
  if (v11)
  {
    if (v8 >= 0)
    {
      v13 = v7;
    }

    else
    {
      v13 = *v7;
    }

    v14 = *(a3 + 31);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a3 + 2);
    }

    v16 = v14 != 0;
    v17 = v11;
    if (v5 >= v11)
    {
      v18 = v11;
    }

    else
    {
      v18 = v5;
    }

    v19 = memcmp(v4, v13, v18);
    if (v19)
    {
      return v19 >> 31;
    }
  }

  else
  {
    v16 = 0;
    v15 = *(a3 + 31);
    if (v15 >= 0)
    {
      v20 = a3 + 2;
    }

    else
    {
      v20 = *(a3 + 1);
    }

    if (v15 >= 0)
    {
      v17 = *(a3 + 31);
    }

    else
    {
      v17 = *(a3 + 2);
    }

    if (v5 >= v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = v5;
    }

    v19 = memcmp(v4, v20, v21);
    if (v19)
    {
      return v19 >> 31;
    }
  }

  if (v5 == v17)
  {
    return v16;
  }

  v22 = *v7;
  if (v9 >= 0)
  {
    v22 = v7;
  }

  v39[0] = v22;
  v39[1] = v11;
  v23 = &byte_23CE7F131;
  if (v11)
  {
    v23 = ".";
  }

  v38[0] = v23;
  v38[1] = v11 != 0;
  v26 = *(a3 + 1);
  v25 = a3 + 2;
  v24 = v26;
  v27 = v15;
  if (v15 < 0)
  {
    v27 = v12;
  }

  else
  {
    v24 = v25;
  }

  v37[0] = v24;
  v37[1] = v27;
  absl::lts_20240722::StrCat(v39, v38, v37, &v36);
  v28 = SHIBYTE(v36.__r_.__value_.__r.__words[2]);
  v29 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v36;
  }

  else
  {
    v30 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v36.__r_.__value_.__l.__size_;
  }

  if (size >= v5)
  {
    v32 = v5;
  }

  else
  {
    v32 = size;
  }

  v33 = memcmp(v4, v30, v32);
  if (v33)
  {
    goto LABEL_45;
  }

  if (v5 == size)
  {
    v33 = 0;
LABEL_45:
    v16 = v33 >> 31;
    if ((v28 & 0x80000000) == 0)
    {
      return v16;
    }

LABEL_46:
    operator delete(v29);
    return v16;
  }

  if (v5 < size)
  {
    v35 = -1;
  }

  else
  {
    v35 = 1;
  }

  v16 = v35 >> 31;
  if (v28 < 0)
  {
    goto LABEL_46;
  }

  return v16;
}

void ***std::__exception_guard_exceptions<std::vector<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          if (*(v4 - 1) < 0)
          {
            operator delete(*(v4 - 3));
          }

          v4 -= 4;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

_DWORD *std::__merge[abi:ne200100]<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare &,absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry const&,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry const*>,std::__wrap_iter<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry*>,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry*>(unsigned __int8 *a1, int a2, unsigned __int8 *a3, int a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  v11 = a2;
  v12 = a1;
  if (a1 == a3 && a2 == a4)
  {
LABEL_34:
    if (a5 != a6)
    {
      v32 = a5;
      v33 = a7;
      do
      {
        v34 = *v32;
        v32 += 8;
        *v33 = v34;
        v33 += 8;
        std::string::operator=((a7 + 2), (a5 + 2));
        a7 = v33;
        a5 = v32;
      }

      while (v32 != a6);
      return v33;
    }

    return a7;
  }

  while (a5 != a6)
  {
    v13 = &v12[32 * v11];
    v16 = *(v13 + 3);
    v15 = v13 + 24;
    v14 = v16;
    v17 = (a5 + 2);
    v18 = *(a5 + 31);
    if (v18 >= 0)
    {
      v19 = a5 + 2;
    }

    else
    {
      v19 = *(a5 + 1);
    }

    if (v18 >= 0)
    {
      v20 = *(a5 + 31);
    }

    else
    {
      v20 = *(a5 + 2);
    }

    v21 = v15[23];
    if (v21 >= 0)
    {
      v22 = v15;
    }

    else
    {
      v22 = v14;
    }

    if (v21 >= 0)
    {
      v23 = v15[23];
    }

    else
    {
      v23 = *(v15 + 1);
    }

    if (v23 >= v20)
    {
      v24 = v20;
    }

    else
    {
      v24 = v23;
    }

    v25 = memcmp(v19, v22, v24);
    if (v25)
    {
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v20 >= v23)
    {
LABEL_23:
      *a7 = *(v15 - 2);
      std::string::operator=((a7 + 2), v15);
      if (v12[11])
      {
        if (++v11 == v12[10])
        {
          v27 = v12;
          while (1)
          {
            v28 = *v27;
            if (*(*v27 + 11))
            {
              break;
            }

            v29 = v27[8];
            v27 = *v27;
            if (v29 != v28[10])
            {
              v12 = v28;
              v11 = v29;
              goto LABEL_32;
            }
          }
        }
      }

      else
      {
        v30 = &v12[8 * (v11 + 1) + 240];
        do
        {
          v12 = *v30;
          v31 = *(*v30 + 11);
          v30 = *v30 + 240;
        }

        while (!v31);
        v11 = 0;
      }

      goto LABEL_32;
    }

    v26 = *a5;
    a5 += 8;
    *a7 = v26;
    std::string::operator=((a7 + 2), v17);
LABEL_32:
    a7 += 8;
    if (v12 == a3 && v11 == a4)
    {
      goto LABEL_34;
    }
  }

  if (a3 != v12)
  {
    goto LABEL_40;
  }

LABEL_39:
  while (v11 != a4)
  {
    do
    {
LABEL_40:
      while (1)
      {
        v35 = &v12[32 * v11];
        *a7 = *(v35 + 4);
        std::string::operator=((a7 + 2), v35 + 1);
        if (v12[11])
        {
          break;
        }

        v39 = &v12[8 * (v11 + 1) + 240];
        do
        {
          v12 = *v39;
          v40 = *(*v39 + 11);
          v39 = *v39 + 240;
        }

        while (!v40);
        v11 = 0;
        a7 += 8;
        if (v12 == a3)
        {
          goto LABEL_39;
        }
      }

      if (++v11 == v12[10])
      {
        v36 = v12;
        while (1)
        {
          v37 = *v36;
          if (*(*v36 + 11))
          {
            break;
          }

          v38 = v36[8];
          v36 = *v36;
          if (v38 != v37[10])
          {
            v12 = v37;
            v11 = v38;
            break;
          }
        }
      }

      a7 += 8;
    }

    while (v12 != a3);
  }

  return a7;
}

_DWORD *std::__merge[abi:ne200100]<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare &,absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry const&,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry const*>,std::__wrap_iter<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry*>,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry*>(unsigned __int8 *a1, int a2, unsigned __int8 *a3, int a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, uint64_t **a8)
{
  v15 = a1;
  if (a1 == a3)
  {
LABEL_2:
    if (a2 != a4)
    {
      goto LABEL_3;
    }

    if (a5 != a6)
    {
      v21 = a5;
      v22 = a7;
      do
      {
        v23 = *v21;
        v21 += 8;
        *v22 = v23;
        v22 += 8;
        std::string::operator=((a7 + 2), (a5 + 2));
        a7 = v22;
        a5 = v21;
      }

      while (v21 != a6);
      return v22;
    }
  }

  else
  {
LABEL_3:
    while (a5 != a6)
    {
      if (google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare::operator()<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>(a8, a5, &v15[32 * a2 + 16]))
      {
        *a7 = *a5;
        std::string::operator=((a7 + 2), (a5 + 2));
        a5 += 8;
        a7 += 8;
        if (v15 == a3)
        {
          goto LABEL_2;
        }
      }

      else
      {
        *a7 = *&v15[32 * a2 + 16];
        std::string::operator=((a7 + 2), &v15[32 * a2 + 24]);
        if (v15[11])
        {
          if (++a2 == v15[10])
          {
            v16 = v15;
            while (1)
            {
              v17 = *v16;
              if (*(*v16 + 11))
              {
                break;
              }

              v18 = v16[8];
              v16 = *v16;
              if (v18 != v17[10])
              {
                v15 = v17;
                a2 = v18;
                break;
              }
            }
          }

          a7 += 8;
          if (v15 == a3)
          {
            goto LABEL_2;
          }
        }

        else
        {
          v19 = &v15[8 * (a2 + 1) + 240];
          do
          {
            v15 = *v19;
            v20 = *(*v19 + 11);
            v19 = *v19 + 240;
          }

          while (!v20);
          a2 = 0;
          a7 += 8;
          if (v15 == a3)
          {
            goto LABEL_2;
          }
        }
      }
    }

    if (a3 != v15)
    {
      goto LABEL_25;
    }

LABEL_24:
    while (a2 != a4)
    {
      do
      {
LABEL_25:
        while (1)
        {
          v24 = &v15[32 * a2];
          *a7 = *(v24 + 4);
          std::string::operator=((a7 + 2), v24 + 1);
          if (v15[11])
          {
            break;
          }

          v28 = &v15[8 * (a2 + 1) + 240];
          do
          {
            v15 = *v28;
            v29 = *(*v28 + 11);
            v28 = *v28 + 240;
          }

          while (!v29);
          a2 = 0;
          a7 += 8;
          if (v15 == a3)
          {
            goto LABEL_24;
          }
        }

        if (++a2 == v15[10])
        {
          v25 = v15;
          while (1)
          {
            v26 = *v25;
            if (*(*v25 + 11))
            {
              break;
            }

            v27 = v25[8];
            v25 = *v25;
            if (v27 != v26[10])
            {
              v15 = v26;
              a2 = v27;
              break;
            }
          }
        }

        a7 += 8;
      }

      while (v15 != a3);
    }
  }

  return a7;
}

void ***std::vector<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 9) < 0)
        {
          operator delete(*(v3 - 4));
        }

        v3 -= 5;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void ***std::__exception_guard_exceptions<std::vector<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          if (*(v4 - 9) < 0)
          {
            operator delete(*(v4 - 4));
          }

          v4 -= 5;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t std::__merge[abi:ne200100]<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare &,absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry const&,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry const*>,std::__wrap_iter<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry*>,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry*>(unsigned __int8 *a1, int a2, unsigned __int8 *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a2;
  v15 = a1;
  if (a1 == a3 && a2 == a4)
  {
LABEL_19:
    while (a5 != a6)
    {
      *a7 = *a5;
      std::string::operator=((a7 + 8), (a5 + 8));
      *(a7 + 32) = *(a5 + 32);
      a7 += 40;
      a5 += 40;
    }
  }

  else
  {
    while (a5 != a6)
    {
      if (google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare::operator()(a8, a5, &v15[40 * v14 + 16]))
      {
        *a7 = *a5;
        std::string::operator=((a7 + 8), (a5 + 8));
        *(a7 + 32) = *(a5 + 32);
        a5 += 40;
      }

      else
      {
        *a7 = *&v15[40 * v14 + 16];
        std::string::operator=((a7 + 8), &v15[40 * v14 + 24]);
        *(a7 + 32) = *&v15[40 * v14 + 48];
        if (v15[11])
        {
          if (++v14 == v15[10])
          {
            v16 = v15;
            while (1)
            {
              v17 = *v16;
              if (*(*v16 + 11))
              {
                break;
              }

              v18 = v16[8];
              v16 = *v16;
              if (v18 != v17[10])
              {
                v15 = v17;
                v14 = v18;
                break;
              }
            }
          }
        }

        else
        {
          v19 = &v15[8 * (v14 + 1) + 256];
          do
          {
            v15 = *v19;
            v20 = *(*v19 + 11);
            v19 = *v19 + 256;
          }

          while (!v20);
          v14 = 0;
        }
      }

      a7 += 40;
      if (v15 == a3 && v14 == a4)
      {
        goto LABEL_19;
      }
    }

    for (; v15 != a3 || v14 != a4; a7 += 40)
    {
      v22 = &v15[40 * v14];
      *a7 = *(v22 + 4);
      std::string::operator=((a7 + 8), v22 + 1);
      *(a7 + 32) = *(v22 + 12);
      if (v15[11])
      {
        if (++v14 == v15[10])
        {
          v23 = v15;
          while (1)
          {
            v24 = *v23;
            if (*(*v23 + 11))
            {
              break;
            }

            v25 = v23[8];
            v23 = *v23;
            if (v25 != v24[10])
            {
              v15 = v24;
              v14 = v25;
              break;
            }
          }
        }
      }

      else
      {
        v26 = &v15[8 * (v14 + 1) + 256];
        do
        {
          v15 = *v26;
          v27 = *(*v26 + 11);
          v26 = *v26 + 256;
        }

        while (!v27);
        v14 = 0;
      }
    }
  }

  return a7;
}

void google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::~DescriptorIndex(google::protobuf::EncodedDescriptorDatabase::DescriptorIndex *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    v3 = *(this + 22);
    v4 = *(this + 21);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 9) < 0)
        {
          operator delete(*(v3 - 32));
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = *(this + 21);
    }

    *(this + 22) = v2;
    operator delete(v4);
  }

  if (*(this + 20))
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::clear_and_delete(*(this + 17));
  }

  *(this + 17) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 19) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::ExtensionEntry>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 20) = 0;
  v5 = *(this + 14);
  if (v5)
  {
    v6 = *(this + 15);
    v7 = *(this + 14);
    if (v6 != v5)
    {
      do
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 24));
        }

        v6 -= 32;
      }

      while (v6 != v5);
      v7 = *(this + 14);
    }

    *(this + 15) = v5;
    operator delete(v7);
  }

  if (*(this + 13))
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>::clear_and_delete(*(this + 10));
  }

  *(this + 10) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 12) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 13) = 0;
  v8 = *(this + 7);
  if (v8)
  {
    v9 = *(this + 8);
    v10 = *(this + 7);
    if (v9 != v8)
    {
      do
      {
        if (*(v9 - 1) < 0)
        {
          operator delete(*(v9 - 24));
        }

        v9 -= 32;
      }

      while (v9 != v8);
      v10 = *(this + 7);
    }

    *(this + 8) = v8;
    operator delete(v10);
  }

  if (*(this + 6))
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::SymbolEntry>,256,false>>::clear_and_delete(*(this + 3));
  }

  *(this + 3) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 5) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry,google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileCompare,std::allocator<google::protobuf::EncodedDescriptorDatabase::DescriptorIndex::FileEntry>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 6) = 0;
  v11 = *this;
  if (*this)
  {
    v12 = *(this + 1);
    v13 = *this;
    if (v12 != v11)
    {
      do
      {
        if (*(v12 - 1) < 0)
        {
          operator delete(*(v12 - 24));
        }

        v12 -= 40;
      }

      while (v12 != v11);
      v13 = *this;
    }

    *(this + 1) = v11;
    operator delete(v13);
  }
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::rebalance_or_split(uint64_t *a1, uint64_t **a2)
{
  result = *a2;
  v5 = **a2;
  if (*a2 == *a1)
  {
    operator new();
  }

  v6 = result[8];
  if (!result[8] || (v7 = *(v5 + 8 * (v6 - 1) + 256), v8 = *(v7 + 10), v8 > 0x3C) || ((v9 = *(a2 + 8), LODWORD(v10) = (61 - v8) >> (v9 < 0x3D), v10 <= 1) ? (v10 = 1) : (v10 = v10), v9 < v10 && (v10 + v8) > 0x3Cu))
  {
    v11 = *(v5 + 10);
    if (v6 >= v11 || (v7 = *(v5 + 8 * (v6 + 1) + 256), v12 = *(v7 + 10), v12 > 0x3C) || ((v13 = *(a2 + 2), (61 - v12) >> (v13 > 0) <= 1u) ? (v14 = 1) : (v14 = (61 - v12) >> (v13 > 0)), (result[10] - v14) < v13 && (v14 + v12) > 0x3Cu))
    {
      if (v11 == 61)
      {
        v56 = v5;
        v57 = v6;
        absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::rebalance_or_split(a1, &v56);
        result = *a2;
      }

      if (result[11])
      {
        operator new();
      }

      operator new();
    }

    result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::rebalance_left_to_right(result, v14, *(v5 + 8 * (v6 + 1) + 256));
    v25 = *(a2 + 2);
    v26 = *(*a2 + 10);
    if (v25 <= v26)
    {
      return result;
    }

    v15 = v25 + ~v26;
LABEL_23:
    *(a2 + 2) = v15;
    *a2 = v7;
    return result;
  }

  v16 = *(v7 + 8);
  v17 = *v7;
  v18 = v7 + 4 * v8;
  *(v18 + 12) = *(*v7 + 4 * v16 + 12);
  v19 = v18 + 12;
  v20 = result + 12;
  v21 = (v10 - 1);
  v22 = &result[4 * v21 + 12];
  if (v10 != 1)
  {
    v23 = (v21 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v23 >= 0xB)
    {
      v27 = 4 * v8 + v7;
      v24 = result + 12;
      if (v27 - result + 4 >= 0x20)
      {
        v28 = v23 + 1;
        v29 = 4 * (v28 & 0x7FFFFFFFFFFFFFF8);
        v19 += v29;
        v24 = &v20[v29];
        v30 = result + 28;
        v31 = (v27 + 32);
        v32 = v28 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v33 = *v30;
          *(v31 - 1) = *(v30 - 1);
          *v31 = v33;
          v30 += 32;
          v31 += 2;
          v32 -= 8;
        }

        while (v32);
        if (v28 == (v28 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v24 = result + 12;
    }

    v34 = (v19 + 4);
    do
    {
      v35 = *v24;
      v24 += 4;
      *v34++ = v35;
    }

    while (v24 != v22);
LABEL_36:
    v17 = *v7;
    v16 = *(v7 + 8);
  }

  *(v17 + 4 * v16 + 12) = *v22;
  v36 = result[10];
  v37 = v36 - v10;
  if (v36 != v10)
  {
    v38 = &v20[4 * v10];
    v39 = 4 * v36 - 4 * v10 - 4;
    v40 = v38;
    if (v39 < 0x1C)
    {
      goto LABEL_42;
    }

    v41 = (v39 >> 2) + 1;
    v42 = 4 * (v41 & 0x7FFFFFFFFFFFFFF8);
    v20 += v42;
    v40 = &v38[v42];
    v43 = result + 28;
    v44 = &result[4 * v10 + 28];
    v45 = v41 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v46 = *v44;
      *(v43 - 1) = *(v44 - 1);
      *v43 = v46;
      v44 += 32;
      v43 += 32;
      v45 -= 8;
    }

    while (v45);
    if (v41 != (v41 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_42:
      v47 = &v38[4 * v37];
      do
      {
        v48 = *v40;
        v40 += 4;
        *v20 = v48;
        v20 += 4;
      }

      while (v40 != v47);
    }
  }

  if (!*(v7 + 11))
  {
    v49 = result + 256;
    v50 = 32;
    do
    {
      v51 = v50 + *(v7 + 10) - 31;
      v52 = *&result[8 * v50];
      *(v7 + 256 + 8 * v51) = v52;
      *(v52 + 8) = v51;
      *v52 = v7;
      ++v50;
    }

    while (v50 - v10 != 32);
    if (result[10] >= v10)
    {
      v53 = 0;
      do
      {
        v54 = *&v49[8 * (v53 + v10)];
        *&v49[8 * v53] = v54;
        *(v54 + 8) = v53;
        *v54 = result;
        ++v53;
      }

      while (result[10] - v10 >= v53);
    }
  }

  *(v7 + 10) += v10;
  result[10] -= v10;
  v55 = *(a2 + 8) - v10;
  *(a2 + 2) = v55;
  if (v55 < 0)
  {
    v15 = v55 + *(v7 + 10) + 1;
    goto LABEL_23;
  }

  return result;
}

uint64_t absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::rebalance_left_to_right(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 10);
  v4 = (a3 + 12);
  if (*(a3 + 10))
  {
    v5 = &v4[v3];
    v6 = &v5[a2];
    v7 = (v3 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v7 < 7)
    {
      goto LABEL_6;
    }

    v8 = v7 + 1;
    v9 = 4 * (v8 & 0x7FFFFFFFFFFFFFF8);
    v6 = (v6 - v9);
    v5 = (v5 - v9);
    v10 = a3 + 4 * v3;
    v11 = (v10 + 4 * a2 - 20);
    v12 = (v10 - 4);
    v13 = v8 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v14 = *v12;
      *v11 = *(v12 - 1);
      v11[1] = v14;
      v11 -= 2;
      v12 -= 2;
      v13 -= 8;
    }

    while (v13);
    if (v8 != (v8 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_6:
      v15 = v6 - 1;
      do
      {
        v16 = *--v5;
        *v15-- = v16;
      }

      while (v5 != v4);
    }
  }

  v17 = result + 12;
  v18 = (a2 - 1);
  v4[v18] = *(*result + 4 * *(result + 8) + 12);
  v19 = *(result + 10);
  if (a2 != 1)
  {
    v20 = v17 + 4 * (v19 - (a2 - 1));
    v21 = (a2 + 0x3FFFFFFFFFFFFFFELL) & 0x3FFFFFFFFFFFFFFFLL;
    if (v21 >= 0xF)
    {
      v23 = 4 * *(result + 10);
      v22 = (v17 + 4 * (v19 - (a2 - 1)));
      if (4 * a2 + a3 - result - v23 - 4 >= 0x20)
      {
        v24 = v21 + 1;
        v25 = 4 * (v24 & 0x7FFFFFFFFFFFFFF8);
        v4 = (v4 + v25);
        v22 = (v20 + v25);
        v26 = (v23 - 4 * a2 + result + 32);
        v27 = (a3 + 28);
        v28 = v24 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v29 = *v26;
          *(v27 - 1) = *(v26 - 1);
          *v27 = v29;
          v26 += 2;
          v27 += 2;
          v28 -= 8;
        }

        while (v28);
        if (v24 == (v24 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v22 = (v17 + 4 * (v19 - (a2 - 1)));
    }

    v30 = (v20 + v18 * 4);
    do
    {
      v31 = *v22++;
      *v4++ = v31;
    }

    while (v22 != v30);
LABEL_17:
    v19 = *(result + 10);
  }

  *(*result + 4 * *(result + 8) + 12) = *(v17 + 4 * (v19 - a2));
  if (!*(result + 11))
  {
    if (((*(a3 + 10) + 1) & 0x100) == 0)
    {
      v32 = a3 + 256;
      v33 = (*(a3 + 10) + 1);
      do
      {
        v34 = *(v32 + 8 * (v33 - 1));
        *(v32 + 8 * (v33 - 1 + a2)) = v34;
        *(v34 + 8) = v33 - 1 + a2;
        *v34 = a3;
        --v33;
      }

      while (v33);
    }

    if (a2)
    {
      v35 = 0;
      if ((a2 + 1) <= 2u)
      {
        v36 = 2;
      }

      else
      {
        v36 = (a2 + 1);
      }

      v37 = v36 - 1;
      do
      {
        v38 = *(result + 256 + 8 * (v35 + 1 - a2 + *(result + 10)));
        *(a3 + 8 * v35 + 256) = v38;
        *(v38 + 8) = v35;
        *v38 = a3;
        ++v35;
      }

      while (v37 != v35);
    }
  }

  *(result + 10) -= a2;
  *(a3 + 10) += a2;
  return result;
}

void google::protobuf::DynamicMessage::SharedCtor(google::protobuf::DynamicMessage *this, int a2)
{
  v4 = *(this + 1);
  v3 = *(this + 2);
  v5 = *(v3 + 32);
  if (v4)
  {
    v4 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
    if (*(v5 + 124) < 1)
    {
      goto LABEL_5;
    }
  }

  else if (*(v5 + 124) < 1)
  {
    goto LABEL_5;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    ++v7;
    *(this + v6 + *(v3 + 8)) = 0;
    v6 += 4;
  }

  while (v7 < *(v5 + 124));
LABEL_5:
  v8 = *(v3 + 12);
  if (v8 != -1)
  {
    v9 = this + v8;
    *v9 = v4;
    *(v9 + 2) = 0;
    *(v9 + 2) = 0;
  }

  if (*(v5 + 4) >= 1)
  {
    v10 = 0;
    for (i = 0; i < *(v5 + 4); ++i)
    {
      v12 = *(v5 + 56);
      v13 = v12 + v10;
      v14 = *(*(*(this + 2) + 40) + 4 * i);
      if ((*(v12 + v10 + 1) & 0x10) != 0)
      {
        v15 = *(v13 + 40);
        if (v15)
        {
          if (*(v15 + 4) != 1 || (*(*(v15 + 48) + 1) & 2) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      v16 = *(v13 + 24);
      if (v16 && (v27 = v12 + v10, v28 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v16, memory_order_acquire) != 221))
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v16, 1, &v28, &v27);
        v17 = (this + v14);
        v18 = v12 + v10;
        v19 = *(v12 + v10 + 2);
        v20 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v12 + v10 + 2)];
        if (v20 <= 5)
        {
LABEL_18:
          if (v20 <= 2)
          {
            if (v20 != 1)
            {
              if (v20 != 2)
              {
                goto LABEL_10;
              }

LABEL_25:
              if ((~*(v13 + 1) & 0x60) != 0)
              {
                *v17 = *(v12 + v10 + 80);
                goto LABEL_10;
              }

              goto LABEL_9;
            }
          }

          else if (v20 != 3)
          {
            if (v20 != 4)
            {
              if ((~*(v13 + 1) & 0x60) != 0)
              {
                *v17 = *(v12 + v10 + 80);
                goto LABEL_10;
              }

              goto LABEL_9;
            }

            goto LABEL_25;
          }

          if ((~*(v13 + 1) & 0x60) != 0)
          {
            *v17 = *(v12 + v10 + 80);
            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }

      else
      {
        v17 = (this + v14);
        v18 = v12 + v10;
        v19 = *(v12 + v10 + 2);
        v20 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v12 + v10 + 2)];
        if (v20 <= 5)
        {
          goto LABEL_18;
        }
      }

      if (v20 <= 7)
      {
        if (v20 == 6)
        {
          if ((~*(v13 + 1) & 0x60) != 0)
          {
            *v17 = *(v12 + v10 + 80);
            goto LABEL_10;
          }
        }

        else if ((~*(v13 + 1) & 0x60) != 0)
        {
          *v17 = *(v12 + v10 + 80);
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      switch(v20)
      {
        case 8:
          if ((~*(v13 + 1) & 0x60) != 0)
          {
            *v17 = *(google::protobuf::FieldDescriptor::default_value_enum((v12 + v10)) + 4);
            break;
          }

LABEL_9:
          *v17 = 0;
          v17[1] = v4;
          break;
        case 9:
          if ((~*(v13 + 1) & 0x60) != 0)
          {
            *v17 = &google::protobuf::internal::fixed_address_empty_string;
          }

          else
          {
            *v17 = 0;
            v17[1] = 0;
            v17[2] = v4;
          }

          break;
        case 10:
          if ((~*(v13 + 1) & 0x60) != 0)
          {
            *v17 = 0;
          }

          else
          {
            v21 = *(v13 + 24);
            if (v21)
            {
              v27 = v12 + v10;
              v28 = google::protobuf::FieldDescriptor::TypeOnceInit;
              if (atomic_load_explicit(v21, memory_order_acquire) != 221)
              {
                absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v21, 1, &v28, &v27);
              }

              v19 = *(v18 + 2);
            }

            if (v19 == 11 && google::protobuf::FieldDescriptor::is_map_message_type((v12 + v10)))
            {
              v22 = *(*(this + 2) + 16);
              v23 = google::protobuf::FieldDescriptor::message_type(v13);
              if (a2)
              {
                PrototypeNoLock = (*(*v22 + 16))(v22, v23);
                v25 = v17;
                if (!v4)
                {
                  goto LABEL_57;
                }
              }

              else
              {
                PrototypeNoLock = google::protobuf::DynamicMessageFactory::GetPrototypeNoLock(v22, v23);
                v25 = v17;
                if (!v4)
                {
LABEL_57:
                  google::protobuf::internal::DynamicMapField::DynamicMapField(v25, PrototypeNoLock);
                  break;
                }
              }

              google::protobuf::internal::DynamicMapField::DynamicMapField(v25, PrototypeNoLock, v4);
            }

            else
            {
              *v17 = 0;
              v17[1] = 0;
              v17[2] = v4;
            }
          }

          break;
      }

LABEL_10:
      v10 += 88;
    }
  }
}

void *google::protobuf::DynamicMessageFactory::GetPrototypeNoLock(google::protobuf::DynamicMessageFactory *this, const google::protobuf::Descriptor *a2)
{
  v13 = a2;
  if (*(this + 16) != 1 || (v4 = *(*(a2 + 2) + 24), v4 != google::protobuf::DescriptorPool::generated_pool(this)) || (GeneratedPrototype = google::protobuf::MessageFactory::TryGetGeneratedPrototype(a2, v5)) == 0)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::DynamicMessageFactory::TypeInfo const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::DynamicMessageFactory::TypeInfo const*>>>::find_or_prepare_insert<google::protobuf::Descriptor const*>(this + 3, &v13, &v10);
    if (v12 == 1)
    {
      v6 = v11;
      *v11 = v13;
      v6[1] = 0;
    }

    v7 = v11[1];
    if (!v7)
    {
      operator new();
    }

    return *(v7 + 8);
  }

  return GeneratedPrototype;
}

void google::protobuf::DynamicMessage::~DynamicMessage(google::protobuf::DynamicMessage *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  v4 = v2[1];
  v5 = *(v4 + 32);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
    v4 = *(this + 2);
  }

  v6 = *(v4 + 12);
  if (v6 != -1)
  {
    google::protobuf::internal::ExtensionSet::~ExtensionSet((this + v6));
  }

  if (*(v5 + 4) >= 1)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(v5 + 56);
      v10 = v9 + v7;
      v11 = *(v9 + v7 + 1);
      if ((v11 & 0x10) != 0)
      {
        v12 = *(v10 + 40);
        if (v12)
        {
          if (*(v12 + 4) != 1 || (*(*(v12 + 48) + 1) & 2) == 0)
          {
            break;
          }
        }
      }

      v16 = *(*(*(this + 2) + 40) + 4 * v8);
      v20 = *(v10 + 24);
      if ((~v11 & 0x60) != 0)
      {
        if (v20)
        {
          v29 = v9 + v7;
          v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v20, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v20, 1, &v30, &v29);
          }
        }

        v24 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v9 + v7 + 2)];
        if (v24 != 9)
        {
          v25 = *(v10 + 24);
          if (v25)
          {
            v29 = v9 + v7;
            v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
            if (atomic_load_explicit(v25, memory_order_acquire) != 221)
            {
              absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v25, 1, &v30, &v29);
            }

            v24 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v9 + v7 + 2)];
          }

          if (v24 != 10)
          {
            goto LABEL_8;
          }

          v26 = *(*(this + 2) + 64);
          if (v26 == this || v26 == 0)
          {
            goto LABEL_8;
          }

LABEL_45:
          google::protobuf::DynamicMessage::~DynamicMessage((this + v16));
          goto LABEL_8;
        }

LABEL_7:
        google::protobuf::internal::ArenaStringPtr::Destroy((this + v16));
        goto LABEL_8;
      }

      if (v20)
      {
        v29 = v9 + v7;
        v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v20, memory_order_acquire) != 221)
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v20, 1, &v30, &v29);
        }
      }

      v21 = *(v9 + v7 + 2);
      v22 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v9 + v7 + 2)];
      if (v22 <= 7)
      {
        if (v22 <= 3 && v22 != 1 && v22 != 2 && v22 != 3)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (v22 == 10)
        {
          v23 = *(v10 + 24);
          if (v23)
          {
            v29 = v9 + v7;
            v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
            if (atomic_load_explicit(v23, memory_order_acquire) != 221)
            {
              absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v23, 1, &v30, &v29);
            }

            v21 = *(v9 + v7 + 2);
          }

          if (v21 == 11 && google::protobuf::FieldDescriptor::is_map_message_type((v9 + v7)))
          {
            google::protobuf::internal::DynamicMapField::~DynamicMapField((this + v16));
          }

          else if (*(this + v16))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + v16));
          }

          goto LABEL_8;
        }

        if (v22 != 8)
        {
          if (v22 == 9)
          {
            google::protobuf::DynamicMessage::~DynamicMessage((this + v16));
          }

          goto LABEL_8;
        }
      }

      google::protobuf::DynamicMessage::~DynamicMessage(this + v16);
LABEL_8:
      ++v8;
      v7 += 88;
      if (v8 >= *(v5 + 4))
      {
        return;
      }
    }

    v13 = -1227133513 * ((v12 - *(*(v12 + 16) + 64)) >> 3);
    v14 = *(this + 2);
    v15 = v9 + v7;
    if (*(this + 4 * v13 + *(v14 + 8)) != *(v9 + v7 + 4))
    {
      goto LABEL_8;
    }

    v16 = *(*(v14 + 40) + 4 * (*(*(v14 + 32) + 4) + v13));
    v17 = *(v15 + 24);
    if (v17)
    {
      v29 = v9 + v7;
      v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v17, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v17, 1, &v30, &v29);
      }
    }

    v18 = v9 + v7;
    v19 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v18 + 2)];
    if (v19 != 9)
    {
      v28 = *(v15 + 24);
      if (v28)
      {
        v29 = v10;
        v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v28, memory_order_acquire) != 221)
        {
          absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v28, 1, &v30, &v29);
        }

        v19 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v18 + 2)];
      }

      if (v19 != 10)
      {
        goto LABEL_8;
      }

      goto LABEL_45;
    }

    goto LABEL_7;
  }
}

{
  google::protobuf::DynamicMessage::~DynamicMessage(this);

  operator delete(v1);
}

google::protobuf::FieldDescriptor *google::protobuf::DynamicMessage::CrossLinkPrototypes(google::protobuf::FieldDescriptor *this)
{
  v1 = *(this + 2);
  v2 = v1[8];
  if (v2 != this && v2 != 0)
  {
    google::protobuf::DynamicMessage::CrossLinkPrototypes(v17);
  }

  v4 = v1[4];
  if (*(v4 + 4) >= 1)
  {
    v5 = this;
    v6 = 0;
    v7 = 0;
    v8 = v1[2];
    do
    {
      v11 = *(v4 + 56);
      this = (v11 + v6);
      v12 = *(v11 + v6 + 24);
      if (v12 && (v17[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v18 = v11 + v6, atomic_load_explicit(v12, memory_order_acquire) != 221))
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v12, 1, v17, &v18);
        this = (v11 + v6);
        if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v11 + v6 + 2)] != 10)
        {
          goto LABEL_9;
        }
      }

      else if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 2)] != 10)
      {
        goto LABEL_9;
      }

      if ((*(*(v11 + v6 + 56) + 132) & 1) == 0)
      {
        v13 = *(v11 + v6 + 1);
        if ((v13 & 0x10) != 0 && (v14 = *(v11 + v6 + 40)) != 0)
        {
          if (*(v14 + 4) != 1)
          {
            goto LABEL_9;
          }

          v15 = *(*(v14 + 48) + 1) & 2;
          if ((~v13 & 0x60) == 0 || v15 == 0)
          {
            goto LABEL_9;
          }
        }

        else if ((~v13 & 0x60) == 0)
        {
          goto LABEL_9;
        }

        v9 = *(*(*(v5 + 2) + 40) + 4 * v7);
        v10 = google::protobuf::FieldDescriptor::message_type(this);
        this = google::protobuf::DynamicMessageFactory::GetPrototypeNoLock(v8, v10);
        *(v5 + v9) = this;
      }

LABEL_9:
      ++v7;
      v6 += 88;
    }

    while (v7 < *(v4 + 4));
  }

  return this;
}

void *google::protobuf::DynamicMessage::New(google::protobuf::DynamicMessage *this, google::protobuf::Arena *a2)
{
  v3 = **(this + 2);
  if (a2)
  {
    v5 = google::protobuf::Arena::AllocateForArray(a2, (v3 + 7) & 0xFFFFFFFFFFFFFFF8);
    bzero(v5, **(this + 2));
    v6 = *(this + 2);
    v5[1] = a2;
  }

  else
  {
    v5 = operator new(v3);
    v6 = *(this + 2);
    bzero(v5, *v6);
    v5[1] = 0;
  }

  *v5 = &unk_284F469E0;
  v5[2] = v6;
  *(v5 + 6) = 0;
  google::protobuf::DynamicMessage::SharedCtor(v5, 1);
  return v5;
}

double google::protobuf::DynamicMessageFactory::DynamicMessageFactory(google::protobuf::DynamicMessageFactory *this)
{
  *this = &unk_284F46A48;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *&result = 1;
  *(this + 24) = xmmword_23CE306D0;
  *(this + 7) = 0;
  return result;
}

void *google::protobuf::DynamicMessageFactory::GetPrototype(atomic_ullong *this, const google::protobuf::Descriptor *a2)
{
  absl::lts_20240722::Mutex::Lock(this + 7, a2);
  PrototypeNoLock = google::protobuf::DynamicMessageFactory::GetPrototypeNoLock(this, a2);
  absl::lts_20240722::Mutex::Unlock(this + 7);
  return PrototypeNoLock;
}

void google::protobuf::DynamicMessageFactory::TypeInfo::~TypeInfo(google::protobuf::DynamicMessageFactory::TypeInfo *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    google::protobuf::DynamicMessage::~DynamicMessage(v2);
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    v5 = *(*(this + 4) + 4);
    if (v5 >= 1)
    {
      memset(v4, 205, 4 * v5);
    }
  }

  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(*(this + 4) + 4);
    if (v7 >= 1)
    {
      memset(*(this + 6), 205, 4 * v7);
    }
  }

  v8 = *(this + 7);
  *(this + 7) = 0;
  if (v8)
  {
    google::protobuf::Reflection::~Reflection(v8);
    MEMORY[0x23EED9460]();
    v6 = *(this + 6);
  }

  *(this + 6) = 0;
  if (v6)
  {
    MEMORY[0x23EED9440](v6, 0x1000C8052888210);
  }

  v9 = *(this + 5);
  *(this + 5) = 0;
  if (v9)
  {
    MEMORY[0x23EED9440](v9, 0x1000C8052888210);
  }
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::DynamicMessageFactory::TypeInfo const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::DynamicMessageFactory::TypeInfo const*>>>::find_or_prepare_insert<google::protobuf::Descriptor const*>@<X0>(unint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + *a2;
    v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X10 >> 12)) & v3;
    v18 = *(_X10 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_8;
    }

LABEL_5:
    v20 = result[3];
    do
    {
      v21 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v3;
      if (*(v20 + 16 * v21) == v13)
      {
        *a3 = _X10 + v21;
        *(a3 + 8) = v20 + 16 * v21;
        *(a3 + 16) = 0;
        return result;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v19);
LABEL_8:
    while (1)
    {
      v22 = vceq_s8(v18, 0x8080808080808080);
      if (v22)
      {
        break;
      }

      v6 += 8;
      v17 = (v6 + v17) & v3;
      v18 = *(_X10 + v17);
      v19 = vceq_s8(v18, v16);
      if (v19)
      {
        goto LABEL_5;
      }
    }

    v23 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v15, (v17 + (__clz(__rbit64(v22)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::DynamicMessageFactory::TypeInfo const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::DynamicMessageFactory::TypeInfo const*>>>::GetPolicyFunctions(void)::value);
    v25 = v23[3] + 16 * result;
    *a3 = result + v23[2];
    *(a3 + 8) = v25;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (result[2] != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::DynamicMessageFactory::TypeInfo const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::DynamicMessageFactory::TypeInfo const*>>>::resize_impl(result, 3uLL);
      }

      v5 = 0;
    }

    else
    {
      result[1] = 2;
      v4 = result + 2;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::DynamicMessageFactory::TypeInfo const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::DynamicMessageFactory::TypeInfo const*>>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1 < 2 && v3 > 1;
  v5 = v4;
  v7 = a1[2];
  if (v4)
  {
    v6 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v7) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v7))) + v7;
    v8 = (((v6 * 0x9DDFEA08EB382D69) >> 64) ^ (105 * v6)) & 0x7F;
  }

  else
  {
    v8 = 0x80;
  }

  v11 = v3 & 1;
  v12 = v2 < 2;
  v13 = v5;
  v9 = a1[3];
  v10[0] = v7;
  v10[1] = v9;
  v10[2] = v2;
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,16ul,true,true,8ul>(v10, a1, v8);
}

void google::protobuf::internal::ExtensionSet::AppendToList(uint64_t a1, const google::protobuf::Descriptor *a2, atomic_ullong **a3, uint64_t a4)
{
  v16 = a4;
  v6 = *(a1 + 10);
  v7 = *(a1 + 16);
  if (v6 < 0)
  {
    v12 = *(v7 + 8);
    v13 = **v7;
    v14 = v12[10];
    v17[0] = a2;
    v17[1] = a3;
    v17[2] = &v16;
    google::protobuf::internal::ExtensionSet::ForEach<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>,google::protobuf::internal::ExtensionSet::AppendToList(google::protobuf::Descriptor const*,google::protobuf::DescriptorPool const*,std::vector<google::protobuf::FieldDescriptor const*> *)::$_0>(v15, v13, 0, v12, v14, v17);
  }

  else if (*(a1 + 10))
  {
    v8 = (v7 + 32 * v6);
    v9 = (v7 + 24);
    do
    {
      v11 = v9 - 3;
      v10 = *(v9 - 6);
      if (*(v9 - 7) == 1)
      {
        if (google::protobuf::internal::ExtensionSet::Extension::GetSize((v9 - 2)) > 0)
        {
          goto LABEL_10;
        }
      }

      else if ((*(v9 - 6) & 1) == 0)
      {
LABEL_10:
        if (*v9)
        {
          std::vector<google::protobuf::Symbol>::push_back[abi:ne200100](v16, v9);
        }

        else
        {
          v17[0] = google::protobuf::DescriptorPool::FindExtensionByNumber(a3, a2, v10);
          std::vector<google::protobuf::Symbol>::push_back[abi:ne200100](v16, v17);
        }
      }

      v9 += 4;
    }

    while (v11 + 4 != v8);
  }
}

uint64_t google::protobuf::internal::ExtensionSet::GetMessage(google::protobuf::internal::ExtensionSet *a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = google::protobuf::internal::ExtensionSet::FindOrNull(a1, a2);
  if (v7 && (v7[10] & 1) == 0)
  {
    v10 = *v7;
    if ((v7[10] & 0x10) != 0)
    {
      v11 = (*(*a4 + 16))(a4, a3);
      v12 = *a1;
      v13 = *(*v10 + 24);

      return v13(v10, v11, v12);
    }

    else
    {
      return *v7;
    }
  }

  else
  {
    v8 = *(*a4 + 16);

    return v8(a4, a3);
  }
}

uint64_t google::protobuf::internal::ExtensionSet::MutableMessage(google::protobuf::internal::ExtensionSet *this, const google::protobuf::FieldDescriptor *a2, google::protobuf::MessageFactory *a3)
{
  v18 = 0;
  if (google::protobuf::internal::ExtensionSet::MaybeNewExtension(this, *(a2 + 1), a2, &v18))
  {
    v6 = *(a2 + 3);
    if (v6)
    {
      v19 = a2;
      v20 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v6, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v20, &v19);
      }
    }

    v7 = v18;
    *(v18 + 4) = *(a2 + 2);
    *(v7 + 11) = 0;
    v8 = google::protobuf::FieldDescriptor::message_type(a2);
    v9 = (*(*a3 + 16))(a3, v8);
    *(v18 + 10) &= 0xFu;
    v10 = (*(*v9 + 16))(v9, *this);
    *v18 = v10;
    v11 = v18;
    *(v18 + 10) &= 0xF0u;
    return *v11;
  }

  else
  {
    v13 = v18;
    v14 = *(v18 + 10);
    *(v18 + 10) = v14 & 0xF0;
    result = *v13;
    if ((v14 & 0x10) != 0)
    {
      v15 = *v13;
      v16 = google::protobuf::FieldDescriptor::message_type(a2);
      v17 = (*(*a3 + 16))(a3, v16);
      return (*(*v15 + 32))(v15, v17, *this);
    }
  }

  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::UnsafeArenaReleaseMessage(google::protobuf::internal::ExtensionSet *a1, google::protobuf::FieldDescriptor *a2, uint64_t a3)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(a1, *(a2 + 1));
  if (!v6)
  {
    return 0;
  }

  v7 = *v6;
  if ((*(v6 + 10) & 0x10) != 0)
  {
    v8 = v6;
    v9 = google::protobuf::FieldDescriptor::message_type(a2);
    v10 = (*(*a3 + 16))(a3, v9);
    v7 = (*(*v7 + 64))(v7, v10, *a1);
    if (!*a1)
    {
      if (*v8)
      {
        (*(**v8 + 8))(*v8);
      }
    }
  }

  google::protobuf::internal::ExtensionSet::Erase(a1, *(a2 + 1));
  return v7;
}

google::protobuf::internal::ExtensionSet::Extension *google::protobuf::internal::ExtensionSet::MaybeNewRepeatedExtension(google::protobuf::Arena **this, const google::protobuf::FieldDescriptor *a2)
{
  v9 = 0;
  if (google::protobuf::internal::ExtensionSet::MaybeNewExtension(this, *(a2 + 1), a2, &v9))
  {
    v4 = *(a2 + 3);
    if (v4)
    {
      v10 = a2;
      v11 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v4, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v4, 1, &v11, &v10);
      }
    }

    v5 = v9;
    *(v9 + 8) = *(a2 + 2);
    *(v5 + 9) = 1;
    v6 = *this;
    if (!v6)
    {
      operator new();
    }

    v7 = google::protobuf::Arena::Allocate(v6);
    *v7 = 0;
    v7[1] = 0;
    v7[2] = v6;
    *v9 = v7;
  }

  return v9;
}

void *google::protobuf::internal::ExtensionSet::AddMessage(google::protobuf::Arena **this, const google::protobuf::FieldDescriptor *a2, google::protobuf::MessageFactory *a3)
{
  v6 = google::protobuf::internal::ExtensionSet::MaybeNewRepeatedExtension(this, a2);
  v7 = v6;
  v8 = *v6;
  v9 = *(*v6 + 8);
  v10 = **v6;
  if (v10)
  {
    if (v9 >= *(v10 - 1))
    {
LABEL_3:
      if (v9)
      {
LABEL_4:
        if (*v8)
        {
          v8 = (*v8 + 7);
        }

        v11 = *v8;
        goto LABEL_13;
      }

LABEL_12:
      v14 = google::protobuf::FieldDescriptor::message_type(a2);
      v11 = (*(*a3 + 16))(a3, v14);
      if (!v11)
      {
        google::protobuf::internal::ExtensionSet::AddMessage(&v26);
      }

LABEL_13:
      v13 = (*(*v11 + 16))(v11, *this);
      v15 = *v7;
      v16 = v13[1];
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        v17 = *(v15 + 16);
        if (v17 != v16)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v17 = *(v15 + 16);
        if (v17 != v16)
        {
LABEL_15:
          google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedSlowWithCopy<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(v15, v13, v16, v17);
          return v13;
        }
      }

      v19 = *v15;
      if (*v15)
      {
        v24 = *(v19 - 1);
        v23 = v19 - 1;
        v22 = v24;
        if (v24 > *(v15 + 12))
        {
          goto LABEL_15;
        }

        v21 = v23 + 8;
        v20 = *(v15 + 8);
        if (v20 >= v22)
        {
          goto LABEL_27;
        }

        v25 = (v21 + 8 * v20);
      }

      else
      {
        if (v19)
        {
          goto LABEL_15;
        }

        v20 = *(v15 + 8);
        if ((v20 & 0x80000000) == 0)
        {
          v21 = *v7;
          goto LABEL_27;
        }

        v22 = 0;
        v25 = (v15 + 8 * v20);
        v21 = *v7;
      }

      *(v21 + 8 * v22) = *v25;
LABEL_27:
      *(v15 + 8) = v20 + 1;
      *(v21 + 8 * v20) = v13;
      if (*v15)
      {
        ++*(*v15 - 1);
      }

      return v13;
    }
  }

  else if (v9 >= (v10 != 0))
  {
    goto LABEL_3;
  }

  *(v8 + 2) = v9 + 1;
  v12 = v10 + 8 * v9 + 7;
  if (v10)
  {
    v8 = v12;
  }

  v13 = *v8;
  if (!*v8)
  {
    v8 = *v6;
    if (*(*v6 + 8))
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  return v13;
}

BOOL google::protobuf::internal::DescriptorPoolExtensionFinder::Find(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ExtensionByNumber = google::protobuf::DescriptorPool::FindExtensionByNumber(*a1, *(a1 + 16), a2);
  v6 = ExtensionByNumber;
  if (!ExtensionByNumber)
  {
    return v6 != 0;
  }

  v7 = *(ExtensionByNumber + 24);
  if (v7)
  {
    v17[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v18 = v6;
    if (atomic_load_explicit(v7, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v7, 1, v17, &v18);
    }
  }

  *(a3 + 12) = *(v6 + 2);
  *(a3 + 13) = (~*(v6 + 1) & 0x60) == 0;
  *(a3 + 14) = google::protobuf::FieldDescriptor::is_packed(v6);
  *(a3 + 32) = v6;
  v8 = *(v6 + 24);
  if (v8 && (v17[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v18 = v6, atomic_load_explicit(v8, memory_order_acquire) != 221))
  {
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v8, 1, v17, &v18);
    v9 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v6 + 2)];
    if (v9 == 10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v6 + 2)];
    if (v9 == 10)
    {
LABEL_8:
      v10 = *(a1 + 8);
      v11 = google::protobuf::FieldDescriptor::message_type(v6);
      v12 = (*(*v10 + 16))(v10, v11);
      *(a3 + 16) = v12;
      if (!v12)
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v17, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set_heavy.cc", 273);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, "Extension factory's GetPrototype() returned nullptr; extension: ", 0x40uLL);
        absl::lts_20240722::log_internal::LogMessage::operator<<(v17, (*(v6 + 8) + 24));
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v17);
      }

      v13 = *(v6 + 56);
      if ((*(v13 + 40) & 0x10) != 0)
      {
        if (*(v13 + 129))
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }

        *(a3 + 15) = v14;
      }

      return v6 != 0;
    }
  }

  v15 = *(v6 + 24);
  if (v15)
  {
    v17[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v18 = v6;
    if (atomic_load_explicit(v15, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v15, 1, v17, &v18);
    }

    v9 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v6 + 2)];
  }

  if (v9 == 8)
  {
    *(a3 + 16) = google::protobuf::internal::ValidateEnumUsingDescriptor;
    *(a3 + 24) = google::protobuf::FieldDescriptor::enum_type(v6);
  }

  return v6 != 0;
}

google::protobuf::internal *google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *a1, google::protobuf::internal *a2, google::protobuf::internal *a3, uint64_t a4, void *a5, int32x2_t *a6)
{
  v11 = a2 >> 3;
  memset(v21, 0, sizeof(v21));
  v12 = a2 & 7;
  v13 = a6[12];
  if (!*&v13)
  {
    v22[0] = a4;
    if ((google::protobuf::internal::GeneratedExtensionFinder::Find(v22, a2 >> 3, v21) & 1) == 0)
    {
      goto LABEL_15;
    }

    v17 = google::protobuf::internal::WireFormatLite::kWireTypeForFieldType[BYTE12(v21[0])];
    if (v12 != 2 || (BYTE13(v21[0]) & 1) == 0 || (v17 - 5) > 0xFFFFFFFC)
    {
      goto LABEL_12;
    }

LABEL_11:
    v18 = 1;
    return google::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo<google::protobuf::UnknownFieldSet>(a1, v11, v18, v21, a5, a3, a6);
  }

  v14 = a6[13];
  v15 = (*(*a4 + 80))(a4);
  v22[0] = v13;
  v22[1] = v14;
  v22[2] = v15;
  if (!google::protobuf::internal::DescriptorPoolExtensionFinder::Find(v22, v11, v21))
  {
    goto LABEL_15;
  }

  v17 = google::protobuf::internal::WireFormatLite::kWireTypeForFieldType[BYTE12(v21[0])];
  if (v12 == 2 && (BYTE13(v21[0]) & 1) != 0 && (v17 - 5) <= 0xFFFFFFFC)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v17 == v12)
  {
    v18 = 0;
    return google::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo<google::protobuf::UnknownFieldSet>(a1, v11, v18, v21, a5, a3, a6);
  }

LABEL_15:
  if (*a5)
  {
    v20 = ((*a5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v20 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>(a5);
  }

  return google::protobuf::internal::UnknownFieldParse(a2, v20, a3, a6, v16);
}

google::protobuf::internal *google::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo<google::protobuf::UnknownFieldSet>(google::protobuf::internal::ExtensionSet *this, int a2, int a3, unint64_t a4, void *a5, google::protobuf::internal *a6, int32x2_t *a7)
{
  v8 = a6;
  if (a3)
  {
    switch(*(a4 + 12))
    {
      case 1:
        v9 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 1, *(a4 + 14), *(a4 + 32));

        return google::protobuf::internal::PackedDoubleParser(v9, v8, a7, v10);
      case 2:
        v35 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 2, *(a4 + 14), *(a4 + 32));

        return google::protobuf::internal::PackedFloatParser(v35, v8, a7, v36);
      case 3:
        v29 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 3, *(a4 + 14), *(a4 + 32));
        v31 = v8;
        v32 = a7;

        return google::protobuf::internal::PackedInt64Parser(v29, v31, v32, v30);
      case 4:
        v29 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 4, *(a4 + 14), *(a4 + 32));
        v31 = v8;
        v32 = a7;

        return google::protobuf::internal::PackedInt64Parser(v29, v31, v32, v30);
      case 5:
        v23 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 5, *(a4 + 14), *(a4 + 32));

        return google::protobuf::internal::PackedInt32Parser(v23, v8, a7, v24);
      case 6:
        v37 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 6, *(a4 + 14), *(a4 + 32));

        return google::protobuf::internal::PackedFixed64Parser(v37, v8, a7, v38);
      case 7:
        v41 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 7, *(a4 + 14), *(a4 + 32));

        return google::protobuf::internal::PackedFixed32Parser(v41, v8, a7, v42);
      case 8:
        v33 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 8, *(a4 + 14), *(a4 + 32));

        return google::protobuf::internal::PackedBoolParser(v33, v8, a7, v34);
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v118, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set_inl.h", 56);
        absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v118, "Non-primitive types can't be packed.");
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v118);
      case 0xD:
        v27 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 13, *(a4 + 14), *(a4 + 32));

        return google::protobuf::internal::PackedUInt32Parser(v27, v8, a7, v28);
      case 0xE:
        v18 = a2;
        v19 = a4;
        *v118 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 14, *(a4 + 14), *(a4 + 32));
        v119 = *(v19 + 16);
        v120 = a5;
        v121 = v18;
        google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::PackedEnumParserArg<google::protobuf::UnknownFieldSet>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::PackedEnumParserArg<google::protobuf::UnknownFieldSet>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::PackedEnumParserArg<google::protobuf::UnknownFieldSet>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(int)#1})::{lambda(int)#1}>(a7, v8, v118, v21);
        return v22;
      case 0xF:
        v25 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 15, *(a4 + 14), *(a4 + 32));

        return google::protobuf::internal::PackedSFixed32Parser(v25, v8, a7, v26);
      case 0x10:
        v16 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 16, *(a4 + 14), *(a4 + 32));

        return google::protobuf::internal::PackedSFixed64Parser(v16, v8, a7, v17);
      case 0x11:
        v39 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 17, *(a4 + 14), *(a4 + 32));

        return google::protobuf::internal::PackedSInt32Parser(v39, v8, a7, v40);
      case 0x12:
        v14 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 18, *(a4 + 14), *(a4 + 32));

        return google::protobuf::internal::PackedSInt64Parser(v14, v8, a7, v15);
      default:
        return v8;
    }
  }

  switch(*(a4 + 12))
  {
    case 1:
      v8 = (a6 + 8);
      v65 = *a6;
      if (*(a4 + 13) == 1)
      {
        google::protobuf::internal::ExtensionSet::AddDouble(this, a2, 1, *(a4 + 14), v65, *(a4 + 32));
      }

      else
      {
        google::protobuf::internal::ExtensionSet::SetDouble(this, a2, 1, v65, *(a4 + 32));
      }

      return v8;
    case 2:
      v8 = (a6 + 4);
      v66 = *a6;
      if (*(a4 + 13) == 1)
      {
        google::protobuf::internal::ExtensionSet::AddFloat(this, a2, 2, *(a4 + 14), v66, *(a4 + 32));
      }

      else
      {
        google::protobuf::internal::ExtensionSet::SetFloat(this, a2, 2, v66, *(a4 + 32));
      }

      return v8;
    case 3:
      *v118 = 0;
      v58 = *a6;
      if ((*a6 & 0x80) != 0)
      {
        v101 = a4;
        v102 = this;
        v103 = a2;
        if ((v58 & 0x8000) != 0)
        {
          v8 = google::protobuf::internal::VarintParseSlowArm(a6, v118, v58);
          a2 = v103;
          this = v102;
          a4 = v101;
          if (!v8)
          {
            return v8;
          }
        }

        else
        {
          *v118 = *a6 & 0x7FLL | (((*a6 >> 8) & 0x7FLL) << 7);
          v8 = (a6 + 2);
        }
      }

      else
      {
        *v118 = *a6 & 0x7FLL;
        v8 = (a6 + 1);
      }

      if (*(a4 + 13) == 1)
      {
        google::protobuf::internal::ExtensionSet::AddInt64(this, a2, 3, *(a4 + 14), *v118, *(a4 + 32));
      }

      else
      {
        google::protobuf::internal::ExtensionSet::SetInt64(this, a2, 3, *v118, *(a4 + 32));
      }

      return v8;
    case 4:
      *v118 = 0;
      v63 = *a6;
      if ((*a6 & 0x80) != 0)
      {
        v104 = a4;
        v105 = this;
        v106 = a2;
        if ((v63 & 0x8000) != 0)
        {
          v8 = google::protobuf::internal::VarintParseSlowArm(a6, v118, v63);
          a2 = v106;
          this = v105;
          a4 = v104;
          if (!v8)
          {
            return v8;
          }
        }

        else
        {
          *v118 = *a6 & 0x7FLL | (((*a6 >> 8) & 0x7FLL) << 7);
          v8 = (a6 + 2);
        }
      }

      else
      {
        *v118 = *a6 & 0x7FLL;
        v8 = (a6 + 1);
      }

      if (*(a4 + 13) == 1)
      {
        google::protobuf::internal::ExtensionSet::AddInt64(this, a2, 4, *(a4 + 14), *v118, *(a4 + 32));
      }

      else
      {
        google::protobuf::internal::ExtensionSet::SetInt64(this, a2, 4, *v118, *(a4 + 32));
      }

      return v8;
    case 5:
      *v118 = 0;
      v53 = *a6;
      if ((*a6 & 0x80) != 0)
      {
        v98 = a4;
        v99 = this;
        v100 = a2;
        if ((v53 & 0x8000) != 0)
        {
          v8 = google::protobuf::internal::VarintParseSlowArm(a6, v118, v53);
          a2 = v100;
          this = v99;
          a4 = v98;
          if (!v8)
          {
            return v8;
          }
        }

        else
        {
          *v118 = *a6 & 0x7FLL | (((*a6 >> 8) & 0x7FLL) << 7);
          v8 = (a6 + 2);
        }
      }

      else
      {
        *v118 = *a6 & 0x7FLL;
        v8 = (a6 + 1);
      }

      if (*(a4 + 13) == 1)
      {
        google::protobuf::internal::ExtensionSet::AddInt32(this, a2, 5, *(a4 + 14), *v118, *(a4 + 32));
      }

      else
      {
        google::protobuf::internal::ExtensionSet::SetInt32(this, a2, 5, *v118, *(a4 + 32));
      }

      return v8;
    case 6:
      v8 = (a6 + 8);
      v74 = *a6;
      if (*(a4 + 13) == 1)
      {
        google::protobuf::internal::ExtensionSet::AddInt64(this, a2, 6, *(a4 + 14), v74, *(a4 + 32));
      }

      else
      {
        google::protobuf::internal::ExtensionSet::SetInt64(this, a2, 6, v74, *(a4 + 32));
      }

      return v8;
    case 7:
      v8 = (a6 + 4);
      v80 = *a6;
      if (*(a4 + 13) == 1)
      {
        google::protobuf::internal::ExtensionSet::AddInt32(this, a2, 7, *(a4 + 14), v80, *(a4 + 32));
      }

      else
      {
        google::protobuf::internal::ExtensionSet::SetInt32(this, a2, 7, v80, *(a4 + 32));
      }

      return v8;
    case 8:
      *v118 = 0;
      v64 = *a6;
      if ((*a6 & 0x80) != 0)
      {
        v107 = a4;
        v108 = this;
        v109 = a2;
        if ((v64 & 0x8000) != 0)
        {
          v8 = google::protobuf::internal::VarintParseSlowArm(a6, v118, v64);
          a2 = v109;
          this = v108;
          a4 = v107;
          if (!v8)
          {
            return v8;
          }
        }

        else
        {
          *v118 = *a6 & 0x7FLL | (((*a6 >> 8) & 0x7FLL) << 7);
          v8 = (a6 + 2);
        }
      }

      else
      {
        *v118 = *a6 & 0x7FLL;
        v8 = (a6 + 1);
      }

      if (*(a4 + 13) == 1)
      {
        google::protobuf::internal::ExtensionSet::AddBool(this, a2, 8, *(a4 + 14), *v118 != 0, *(a4 + 32));
      }

      else
      {
        google::protobuf::internal::ExtensionSet::SetBool(this, a2, 8, *v118 != 0, *(a4 + 32));
      }

      return v8;
    case 9:
    case 0xC:
      v12 = *(a4 + 13);
      v13 = *(a4 + 32);
      if (v12 == 1)
      {
        v54 = google::protobuf::internal::ExtensionSet::AddString(this, a2, 9, v13);
      }

      else
      {
        v54 = google::protobuf::internal::ExtensionSet::MutableString(this, a2, 9, v13);
      }

      v55 = v54;
      v56 = *v8;
      if (*v8 < 0)
      {
        google::protobuf::internal::ReadSizeFallback(v8, *v8);
        if (!v81)
        {
          return 0;
        }

        v56 = v82;
        v57 = v81;
      }

      else
      {
        v57 = v8 + 1;
      }

      return google::protobuf::internal::EpsCopyInputStream::ReadString(a7, v57, v56, v55);
    case 0xA:
      v75 = *(a4 + 13);
      v76 = *(a4 + 32);
      v77 = a2;
      v78 = *(a4 + 16);
      if (v75 == 1)
      {
        v79 = google::protobuf::internal::ExtensionSet::AddMessage(this, a2, 10, v78, v76);
      }

      else
      {
        v79 = google::protobuf::internal::ExtensionSet::MutableMessage(this, a2, 10, v78, v76);
      }

      v87 = a7[11].i32[0];
      v88 = __OFSUB__(v87--, 1);
      a7[11].i32[0] = v87;
      if (v87 < 0 != v88)
      {
        return 0;
      }

      ++a7[11].i32[1];
      v89 = (*(*v79 + 56))(v79, v8, a7);
      a7[11] = vadd_s32(a7[11], 0xFFFFFFFF00000001);
      v90 = a7[10].i32[0];
      a7[10].i32[0] = 0;
      if (v90 == ((8 * v77) | 3))
      {
        return v89;
      }

      else
      {
        return 0;
      }

    case 0xB:
      v48 = *(a4 + 13);
      v49 = *(a4 + 32);
      v50 = *(a4 + 16);
      if (v48 == 1)
      {
        v51 = google::protobuf::internal::ExtensionSet::AddMessage(this, a2, 11, v50, v49);
      }

      else
      {
        v51 = google::protobuf::internal::ExtensionSet::MutableMessage(this, a2, 11, v50, v49);
      }

      return google::protobuf::internal::ParseContext::ParseMessage(a7, v51, v8);
    case 0xD:
      *v118 = 0;
      v52 = *a6;
      if ((*a6 & 0x80) != 0)
      {
        v95 = a4;
        v96 = this;
        v97 = a2;
        if ((v52 & 0x8000) != 0)
        {
          v8 = google::protobuf::internal::VarintParseSlowArm(a6, v118, v52);
          a2 = v97;
          this = v96;
          a4 = v95;
          if (!v8)
          {
            return v8;
          }
        }

        else
        {
          *v118 = *a6 & 0x7FLL | (((*a6 >> 8) & 0x7FLL) << 7);
          v8 = (a6 + 2);
        }
      }

      else
      {
        *v118 = *a6 & 0x7FLL;
        v8 = (a6 + 1);
      }

      if (*(a4 + 13) == 1)
      {
        google::protobuf::internal::ExtensionSet::AddInt32(this, a2, 13, *(a4 + 14), *v118, *(a4 + 32));
      }

      else
      {
        google::protobuf::internal::ExtensionSet::SetInt32(this, a2, 13, *v118, *(a4 + 32));
      }

      return v8;
    case 0xE:
      *v118 = 0;
      v68 = *a6;
      if ((*a6 & 0x80) != 0)
      {
        v69 = a5;
        v117 = a4;
        v70 = this;
        v71 = a2;
        if ((v68 & 0x8000) != 0)
        {
          v8 = google::protobuf::internal::VarintParseSlowArm(a6, v118, v68);
          if (!v8)
          {
            return v8;
          }

          LODWORD(v72) = *v118;
          v73 = v117;
          if ((*(v117 + 16))(*(v117 + 24), *v118))
          {
            goto LABEL_89;
          }
        }

        else
        {
          v72 = *a6 & 0x7FLL | (((*a6 >> 8) & 0x7FLL) << 7);
          v8 = (a6 + 2);
          v73 = a4;
          if ((*(a4 + 16))(*(a4 + 24), v72))
          {
LABEL_89:
            if (*(v73 + 13) == 1)
            {
              google::protobuf::internal::ExtensionSet::AddInt32(v70, v71, 14, *(v73 + 14), v72, *(v73 + 32));
            }

            else
            {
              google::protobuf::internal::ExtensionSet::SetInt32(v70, v71, 14, v72, *(v73 + 32));
            }

            return v8;
          }
        }
      }

      else
      {
        v69 = a5;
        v70 = this;
        v71 = a2;
        LODWORD(v72) = v68 & 0x7F;
        v8 = (a6 + 1);
        v73 = a4;
        if ((*(a4 + 16))(*(a4 + 24), *a6 & 0x7FLL))
        {
          goto LABEL_89;
        }
      }

      v114 = v72;
      v115 = v71;
      if (*v69)
      {
        v116 = ((*v69 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v116 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>(v69);
        v114 = v72;
        v115 = v71;
      }

      google::protobuf::UnknownFieldSet::AddVarint(v116, v115, v114);
      return v8;
    case 0xF:
      v8 = (a6 + 4);
      v44 = *a6;
      if (*(a4 + 13) == 1)
      {
        v45 = *(a4 + 14);
        v46 = *(a4 + 32);
        v47 = 15;
        goto LABEL_52;
      }

      v83 = *(a4 + 32);
      v84 = 15;
      goto LABEL_129;
    case 0x10:
      v8 = (a6 + 8);
      v59 = *a6;
      if (*(a4 + 13) == 1)
      {
        v60 = *(a4 + 14);
        v61 = *(a4 + 32);
        v62 = 16;
        goto LABEL_86;
      }

      v85 = *(a4 + 32);
      v86 = 16;
      goto LABEL_144;
    case 0x11:
      *v118 = 0;
      v43 = *a6;
      if ((*a6 & 0x80) != 0)
      {
        v91 = a4;
        v92 = this;
        v93 = a2;
        if ((v43 & 0x8000) != 0)
        {
          v8 = google::protobuf::internal::VarintParseSlowArm(a6, v118, v43);
          if (!v8)
          {
            return v8;
          }

          LODWORD(v94) = *v118;
        }

        else
        {
          v94 = *a6 & 0x7FLL | (((*a6 >> 8) & 0x7FLL) << 7);
          v8 = (a6 + 2);
        }

        a2 = v93;
        this = v92;
        a4 = v91;
        v44 = -(v94 & 1) ^ (v94 >> 1);
        if (*(v91 + 13) == 1)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v8 = (a6 + 1);
        v44 = -(v43 & 1) ^ ((v43 & 0x7F) >> 1);
        if (*(a4 + 13) == 1)
        {
LABEL_49:
          v45 = *(a4 + 14);
          v46 = *(a4 + 32);
          v47 = 17;
LABEL_52:
          google::protobuf::internal::ExtensionSet::AddInt32(this, a2, v47, v45, v44, v46);
          return v8;
        }
      }

      v83 = *(a4 + 32);
      v84 = 17;
LABEL_129:
      google::protobuf::internal::ExtensionSet::SetInt32(this, a2, v84, v44, v83);
      return v8;
    case 0x12:
      *v118 = 0;
      v67 = *a6;
      if ((*a6 & 0x80) != 0)
      {
        v110 = a4;
        v111 = this;
        v112 = a2;
        if ((v67 & 0x8000) != 0)
        {
          v8 = google::protobuf::internal::VarintParseSlowArm(a6, v118, v67);
          if (!v8)
          {
            return v8;
          }

          v113 = *v118;
        }

        else
        {
          v113 = *a6 & 0x7FLL | (((*a6 >> 8) & 0x7FLL) << 7);
          v8 = (a6 + 2);
        }

        a2 = v112;
        this = v111;
        a4 = v110;
        v59 = -(v113 & 1) ^ (v113 >> 1);
        if (*(v110 + 13) == 1)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v8 = (a6 + 1);
        v59 = -(*a6 & 1) ^ ((*a6 & 0x7FuLL) >> 1);
        if (*(a4 + 13) == 1)
        {
LABEL_85:
          v60 = *(a4 + 14);
          v61 = *(a4 + 32);
          v62 = 18;
LABEL_86:
          google::protobuf::internal::ExtensionSet::AddInt64(this, a2, v62, v60, v59, v61);
          return v8;
        }
      }

      v85 = *(a4 + 32);
      v86 = 18;
LABEL_144:
      google::protobuf::internal::ExtensionSet::SetInt64(this, a2, v86, v59, v85);
      return v8;
    default:
      return v8;
  }
}

uint64_t google::protobuf::internal::ExtensionSet::SpaceUsedExcludingSelfLong(google::protobuf::internal::ExtensionSet *this)
{
  v1 = *(this + 5);
  if (v1 < 0)
  {
    v6 = *(this + 2);
    v7 = *(v6 + 8);
    v8 = 32 * *(v6 + 16);
    google::protobuf::internal::ExtensionSet::ForEach<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>,google::protobuf::internal::ExtensionSet::SpaceUsedExcludingSelfLong(void)::$_0>(**v6, 0, v7, v7[10], &v8);
    return v8;
  }

  else
  {
    v2 = 32 * *(this + 4);
    if (*(this + 5))
    {
      v3 = 32 * v1;
      v4 = (*(this + 2) + 8);
      do
      {
        v2 += google::protobuf::internal::ExtensionSet::Extension::SpaceUsedExcludingSelfLong(v4);
        v4 = (v4 + 32);
        v3 -= 32;
      }

      while (v3);
    }

    return v2;
  }
}

uint64_t google::protobuf::internal::ExtensionSet::Extension::SpaceUsedExcludingSelfLong(google::protobuf::internal::ExtensionSet::Extension *this)
{
  v2 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 8)];
  if (*(this + 9) == 1)
  {
    result = 0;
    if (v2 <= 5)
    {
      if (v2 <= 2)
      {
        if (v2 != 1)
        {
          if (v2 != 2)
          {
            return result;
          }

          goto LABEL_21;
        }
      }

      else if (v2 != 3)
      {
LABEL_21:
        v7 = *(*this + 4);
        if (v7 <= 0)
        {
          return 16;
        }

        else
        {
          return 8 * v7 + 24;
        }
      }

      goto LABEL_29;
    }

    if (v2 > 7)
    {
      if (v2 != 8)
      {
        if (v2 == 9)
        {
          v4 = google::protobuf::internal::RepeatedPtrFieldBase::SpaceUsedExcludingSelfLong<google::protobuf::internal::GenericTypeHandler<std::string>>(*this);
        }

        else
        {
          if (v2 != 10)
          {
            return result;
          }

          v4 = google::protobuf::internal::RepeatedPtrFieldBase::SpaceUsedExcludingSelfLong<google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>>(*this);
        }

        return v4 + 24;
      }

LABEL_29:
      v10 = *(*this + 4);
      if (v10 <= 0)
      {
        return 16;
      }

      else
      {
        return 4 * v10 + 24;
      }
    }

    if (v2 == 6)
    {
      goto LABEL_29;
    }

    v8 = *(*this + 4);
    if (v8 <= 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = (v8 + 8);
    }

    return v9 + 16;
  }

  else
  {
    if (v2 != 10)
    {
      if (v2 != 9)
      {
        return 0;
      }

      v4 = google::protobuf::internal::StringSpaceUsedExcludingSelfLong(*this);
      return v4 + 24;
    }

    v5 = *(this + 10);
    v6 = *this;
    if ((v5 & 0x10) != 0)
    {
      v11 = *(*v6 + 104);

      return v11();
    }

    else
    {

      return google::protobuf::Message::SpaceUsedLong(v6);
    }
  }
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::SpaceUsedExcludingSelfLong<google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>>(uint64_t a1)
{
  v1 = *a1;
  if ((*a1 & 1) == 0)
  {
    v2 = 0;
    v3 = v1 != 0;
    if (v1)
    {
      v4 = (v1 + 7);
    }

    else
    {
      v4 = a1;
    }

    if (!v1)
    {
      return v2;
    }

LABEL_11:
    v5 = v3;
    do
    {
      v6 = *v4++;
      v2 += google::protobuf::Message::SpaceUsedLong(v6);
      --v5;
    }

    while (v5);
    return v2;
  }

  v2 = 8 * *(a1 + 12) + 16;
  v3 = *(v1 - 1);
  if (v1)
  {
    v4 = (v1 + 7);
  }

  else
  {
    v4 = a1;
  }

  if (v3 >= 1)
  {
    goto LABEL_11;
  }

  return v2;
}

__n128 google::protobuf::internal::ExtensionSet::ForEach<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>,google::protobuf::internal::ExtensionSet::AppendToList(google::protobuf::Descriptor const*,google::protobuf::DescriptorPool const*,std::vector<google::protobuf::FieldDescriptor const*> *)::$_0>(uint64_t a1, unsigned __int8 *a2, int a3, unsigned __int8 *a4, int a5, uint64_t a6)
{
  v10 = a2;
  while (v10 != a4)
  {
LABEL_3:
    while (1)
    {
      v12 = &v10[32 * a3];
      v15 = *(v12 + 4);
      v14 = v12 + 16;
      v13 = v15;
      if (v14[17] == 1)
      {
        break;
      }

      if (v14[18])
      {
        goto LABEL_9;
      }

LABEL_7:
      v17 = *(v14 + 3);
      v16 = v14 + 24;
      v18 = *(a6 + 16);
      v19 = *v18;
      if (v17)
      {
        std::vector<google::protobuf::Symbol>::push_back[abi:ne200100](*v18, v16);
        goto LABEL_9;
      }

      ExtensionByNumber = google::protobuf::DescriptorPool::FindExtensionByNumber(*(a6 + 8), *a6, v13);
      std::vector<google::protobuf::Symbol>::push_back[abi:ne200100](v19, &ExtensionByNumber);
      if (v10[11])
      {
        goto LABEL_10;
      }

LABEL_18:
      v23 = &v10[8 * (a3 + 1) + 240];
      do
      {
        v10 = *v23;
        v24 = *(*v23 + 11);
        v23 = *v23 + 240;
      }

      while (!v24);
      a3 = 0;
      if (v10 == a4)
      {
        goto LABEL_2;
      }
    }

    if (google::protobuf::internal::ExtensionSet::Extension::GetSize((v14 + 8)) > 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    if (!v10[11])
    {
      goto LABEL_18;
    }

LABEL_10:
    if (++a3 == v10[10])
    {
      v20 = v10;
      while (1)
      {
        v21 = *v20;
        if (*(*v20 + 11))
        {
          break;
        }

        v22 = v20[8];
        v20 = *v20;
        if (v22 != v21[10])
        {
          a3 = v22;
          v10 = v21;
          break;
        }
      }
    }
  }

LABEL_2:
  if (a3 != a5)
  {
    goto LABEL_3;
  }

  result = *a6;
  *a1 = *a6;
  *(a1 + 16) = *(a6 + 16);
  return result;
}

void google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::PackedEnumParserArg<google::protobuf::UnknownFieldSet>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::PackedEnumParserArg<google::protobuf::UnknownFieldSet>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::PackedEnumParserArg<google::protobuf::UnknownFieldSet>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(int)#1})::{lambda(int)#1}>(uint64_t a1, google::protobuf::internal *this, __int128 *a3, unint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = *this;
  if ((*this & 0x80000000) == 0)
  {
    v7 = (this + 1);
    v8 = *(a1 + 8);
    v9 = v8 - v7;
    if (v6 > v8 - v7)
    {
      goto LABEL_6;
    }

LABEL_11:
    v17 = a3[1];
    v19 = *a3;
    v20 = v17;
    v21 = *(a3 + 4);
    google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParserArg<google::protobuf::UnknownFieldSet>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(int)#1}>(v7, v7 + v6, &v19, a4);
    return;
  }

  google::protobuf::internal::ReadSizeFallback(this, *this);
  if (!v7)
  {
    return;
  }

  v6 = v10;
  v8 = *(a1 + 8);
  v9 = v8 - v7;
  if (v6 <= v8 - v7)
  {
    goto LABEL_11;
  }

LABEL_6:
  while (1)
  {
    v11 = a3[1];
    v19 = *a3;
    v20 = v11;
    v21 = *(a3 + 4);
    v12 = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParserArg<google::protobuf::UnknownFieldSet>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(int)#1}>(v7, v8, &v19, a4);
    if (!v12)
    {
      break;
    }

    v14 = *(a1 + 8);
    v15 = v12 - v14;
    if (v6 - v9 <= 16)
    {
      v24 = 0;
      v23 = 0;
      v22 = *v14;
      v18 = a3[1];
      v19 = *a3;
      v20 = v18;
      v21 = *(a3 + 4);
      google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParserArg<google::protobuf::UnknownFieldSet>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(int)#1}>((&v22 + v15), &v22 + v6 - v9, &v19, v13);
      return;
    }

    if (*(a1 + 28) < 17)
    {
      return;
    }

    v16 = google::protobuf::internal::EpsCopyInputStream::Next(a1);
    if (!v16)
    {
      return;
    }

    v6 = v6 - v9 - v15;
    v7 = (v16 + v15);
    v8 = *(a1 + 8);
    v9 = v8 - v7;
    if (v6 <= v8 - v7)
    {
      goto LABEL_11;
    }
  }
}

google::protobuf::internal *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParserArg<google::protobuf::UnknownFieldSet>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(int)#1}>(google::protobuf::internal *this, unint64_t a2, uint64_t **a3, unint64_t a4)
{
  for (i = this; i < a2; *(v10 + 4 * v9) = v12)
  {
    while (1)
    {
      *v17 = 0;
      v11 = *i;
      if ((*i & 0x80) != 0)
      {
        if ((v11 & 0x8000) != 0)
        {
          i = google::protobuf::internal::VarintParseSlowArm(i, v17, v11);
          if (!i)
          {
            return i;
          }

          v12 = *v17;
        }

        else
        {
          v12 = *i & 0x7FLL | (((*i >> 8) & 0x7FLL) << 7);
          i = (i + 2);
        }
      }

      else
      {
        v12 = *i & 0x7FLL;
        i = (i + 1);
      }

      if ((a3[1])(a3[2], v12))
      {
        break;
      }

      v13 = a3[3];
      if (*v13)
      {
        google::protobuf::UnknownFieldSet::AddVarint(((*v13 & 0xFFFFFFFFFFFFFFFELL) + 8), *(a3 + 8), v12);
        if (i >= a2)
        {
          return i;
        }
      }

      else
      {
        v14 = *(a3 + 8);
        v15 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>(v13);
        google::protobuf::UnknownFieldSet::AddVarint(v15, v14, v12);
        if (i >= a2)
        {
          return i;
        }
      }
    }

    v7 = *a3;
    v8 = **a3;
    v9 = v8;
    if (v8 == HIDWORD(v8))
    {
      google::protobuf::RepeatedField<int>::Grow(*a3, HIDWORD(v8), (HIDWORD(v8) + 1));
      v9 = *v7;
    }

    v10 = v7[1];
    *v7 = v9 + 1;
  }

  return i;
}

void *google::protobuf::internal::ExtensionSet::ForEach<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>,google::protobuf::internal::ExtensionSet::SpaceUsedExcludingSelfLong(void)::$_0>(unsigned __int8 *a1, int a2, unsigned __int8 *a3, int a4, void *a5)
{
  v9 = a1;
  while (v9 != a3)
  {
LABEL_3:
    while (1)
    {
      *a5 += google::protobuf::internal::ExtensionSet::Extension::SpaceUsedExcludingSelfLong(&v9[32 * a2 + 24]);
      if (v9[11])
      {
        break;
      }

      v13 = &v9[8 * (a2 + 1) + 240];
      do
      {
        v9 = *v13;
        v14 = *(*v13 + 11);
        v13 = *v13 + 240;
      }

      while (!v14);
      a2 = 0;
      if (v9 == a3)
      {
        goto LABEL_2;
      }
    }

    if (++a2 == v9[10])
    {
      v10 = v9;
      while (1)
      {
        v11 = *v10;
        if (*(*v10 + 11))
        {
          break;
        }

        v12 = v10[8];
        v10 = *v10;
        if (v12 != v11[10])
        {
          a2 = v12;
          v9 = v11;
          break;
        }
      }
    }
  }

LABEL_2:
  if (a2 != a4)
  {
    goto LABEL_3;
  }

  return a5;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::SpaceUsedExcludingSelfLong<google::protobuf::internal::GenericTypeHandler<std::string>>(uint64_t a1)
{
  v1 = *a1;
  if ((*a1 & 1) == 0)
  {
    v2 = 0;
    v3 = v1 != 0;
    if (v1)
    {
      v4 = (v1 + 7);
    }

    else
    {
      v4 = a1;
    }

    if (!v1)
    {
      return v2;
    }

LABEL_11:
    v5 = v3;
    do
    {
      v6 = *v4++;
      v2 += google::protobuf::internal::StringSpaceUsedExcludingSelfLong(v6) + 24;
      --v5;
    }

    while (v5);
    return v2;
  }

  v2 = 8 * *(a1 + 12) + 16;
  v3 = *(v1 - 1);
  if (v1)
  {
    v4 = (v1 + 7);
  }

  else
  {
    v4 = a1;
  }

  if (v3 >= 1)
  {
    goto LABEL_11;
  }

  return v2;
}

void google::protobuf::anonymous namespace::Error<char const*,google::protobuf::Edition,char const*,google::protobuf::Edition>(uint64_t *a1, char *__s, google::protobuf *a3, char *a4, google::protobuf *a5)
{
  v34[2] = *MEMORY[0x277D85DE8];
  if (__s)
  {
    v10 = strlen(__s);
  }

  else
  {
    v10 = 0;
  }

  v33[0] = __s;
  v33[1] = v10;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v28 = google::protobuf::internal::ShortEditionName(a3);
  v29 = v11;
  v30 = &v28;
  v31 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  absl::lts_20240722::str_format_internal::FormatUntyped(&v23, absl::lts_20240722::str_format_internal::FormatRawSinkImpl::Flush<absl::lts_20240722::strings_internal::StringifySink>, "%v", 2, &v30, 1uLL);
  v12 = HIBYTE(v25);
  if (v25 >= 0)
  {
    v13 = &v23;
  }

  else
  {
    v13 = v23;
  }

  if (v25 < 0)
  {
    v12 = v24;
  }

  v32[0] = v13;
  v32[1] = v12;
  if (a4)
  {
    v14 = strlen(a4);
  }

  else
  {
    v14 = 0;
  }

  v30 = a4;
  v31 = v14;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v27[0] = google::protobuf::internal::ShortEditionName(a5);
  v27[1] = v15;
  v34[0] = v27;
  v34[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  absl::lts_20240722::str_format_internal::FormatUntyped(&v20, absl::lts_20240722::str_format_internal::FormatRawSinkImpl::Flush<absl::lts_20240722::strings_internal::StringifySink>, "%v", 2, v34, 1uLL);
  v16 = HIBYTE(v22);
  if (v22 >= 0)
  {
    v17 = &v20;
  }

  else
  {
    v17 = v20;
  }

  if (v22 < 0)
  {
    v16 = v21;
  }

  v28 = v17;
  v29 = v16;
  absl::lts_20240722::StrCat(v33, v32, &v30, &v28, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  absl::lts_20240722::FailedPreconditionError(p_p, size, a1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
LABEL_25:
      if ((SHIBYTE(v25) & 0x80000000) == 0)
      {
        return;
      }

LABEL_29:
      operator delete(v23);
      return;
    }
  }

  else if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v20);
  if (SHIBYTE(v25) < 0)
  {
    goto LABEL_29;
  }
}

void sub_23CDC7928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::Status::~Status(absl::lts_20240722::Status *this, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v2 = *this;
  if ((v2 & 1) == 0)
  {
    absl::lts_20240722::status_internal::StatusRep::Unref(v2, a2);
  }
}

void google::protobuf::anonymous namespace::Error<char const*>(uint64_t *a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    v9 = v4;
    if (v4)
    {
      memcpy(__dst, __s, v4);
    }
  }

  else
  {
    v5 = 0;
    v9 = 0;
  }

  *(__dst + v5) = 0;
  if ((v9 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __dst[1];
  }

  absl::lts_20240722::FailedPreconditionError(v6, v7, a1);
  if (v9 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_23CDC7AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::FeatureResolver::Create(google::protobuf *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 48);
  if (v5 <= a1)
  {
    v10 = *(a2 + 52);
    if (v10 < a1)
    {
      v11 = p_p;
      *a3 = p_p;
      p_p = 55;
      if (v11 == 1)
      {
        absl::lts_20240722::internal_statusor::Helper::HandleInvalidStatusCtorArg(a3);
        v8 = p_p;
        if ((p_p & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      return;
    }

    v12 = *(a2 + 24);
    if (v12)
    {
      v13 = (v12 + 7);
    }

    else
    {
      v13 = (a2 + 24);
    }

    v14 = *(a2 + 32);
    if (v14)
    {
      v15 = 0;
      v16 = 8 * v14;
      while (1)
      {
        v17 = *v13;
        v18 = *(*v13 + 32);
        if (!v18)
        {
          break;
        }

        if (v15 && v18 <= v15)
        {
          v71 = 0;
          v72 = 0;
          v73 = 0;
          __p.__r_.__value_.__r.__words[0] = google::protobuf::internal::ShortEditionName(v15);
          __p.__r_.__value_.__l.__size_ = v44;
          p_p = &__p;
          v76 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
          v45 = &v71;
          absl::lts_20240722::str_format_internal::FormatUntyped(&v71, absl::lts_20240722::str_format_internal::FormatRawSinkImpl::Flush<absl::lts_20240722::strings_internal::StringifySink>, "%v", 2, &p_p, 1uLL);
          if (v73 >= 0)
          {
            v46 = HIBYTE(v73);
          }

          else
          {
            v45 = v71;
            v46 = v72;
          }

          memset(&__p, 0, sizeof(__p));
          v66 = google::protobuf::internal::ShortEditionName(v18);
          v67 = v47;
          p_p = &v66;
          v76 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
          absl::lts_20240722::str_format_internal::FormatUntyped(&__p, absl::lts_20240722::str_format_internal::FormatRawSinkImpl::Flush<absl::lts_20240722::strings_internal::StringifySink>, "%v", 2, &p_p, 1uLL);
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v49 = &__p;
          }

          else
          {
            v49 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          p_p = "Feature set defaults are not strictly increasing.  Edition ";
          v76 = 59;
          v77 = v45;
          v78 = v46;
          v79 = " is greater than or equal to edition ";
          v80 = 37;
          v81 = v49;
          v82 = size;
          v83 = ".";
          v84 = 1;
          absl::lts_20240722::strings_internal::CatPieces(&p_p, 5, v85);
          if ((v85[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v50 = v85;
          }

          else
          {
            v50 = v85[0].__r_.__value_.__r.__words[0];
          }

          if ((v85[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v51 = HIBYTE(v85[0].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v51 = v85[0].__r_.__value_.__l.__size_;
          }

          absl::lts_20240722::FailedPreconditionError(v50, v51, &v86);
          if (SHIBYTE(v85[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v85[0].__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_98;
            }

LABEL_86:
            if ((SHIBYTE(v73) & 0x80000000) == 0)
            {
              goto LABEL_87;
            }

LABEL_99:
            operator delete(v71);
            v58 = v86;
            *a3 = v86;
            v86 = 55;
            if (v58 != 1)
            {
              return;
            }
          }

          else
          {
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_86;
            }

LABEL_98:
            operator delete(__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(v73) < 0)
            {
              goto LABEL_99;
            }

LABEL_87:
            v52 = v86;
            *a3 = v86;
            v86 = 55;
            if (v52 != 1)
            {
              return;
            }
          }

          absl::lts_20240722::internal_statusor::Helper::HandleInvalidStatusCtorArg(a3);
          v57 = v86;
          if (v86)
          {
            return;
          }

LABEL_96:
          absl::lts_20240722::status_internal::StatusRep::Unref(v57, v56);
          return;
        }

        if (*(v17 + 24))
        {
          v19 = *(v17 + 24);
        }

        else
        {
          v19 = &google::protobuf::_FeatureSet_default_instance_;
        }

        if (p_p != 1)
        {
          absl::lts_20240722::StatusOr<google::protobuf::FeatureResolver>::StatusOr<absl::lts_20240722::Status const,0>(a3, &p_p);
          absl::lts_20240722::Status::~Status(&p_p, v59);
          return;
        }

        v15 = *(v17 + 32);
        ++v13;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_22;
        }
      }

      p_p = "Invalid edition ";
      v76 = 16;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v86 = google::protobuf::internal::ShortEditionName(0);
      v87 = v38;
      v71 = &v86;
      v72 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
      absl::lts_20240722::str_format_internal::FormatUntyped(&v66, absl::lts_20240722::str_format_internal::FormatRawSinkImpl::Flush<absl::lts_20240722::strings_internal::StringifySink>, "%v", 2, &v71, 1uLL);
      v39 = HIBYTE(v68);
      if (v68 >= 0)
      {
        v40 = &v66;
      }

      else
      {
        v40 = v66;
      }

      if (v68 < 0)
      {
        v39 = v67;
      }

      v85[0].__r_.__value_.__r.__words[0] = v40;
      v85[0].__r_.__value_.__l.__size_ = v39;
      v71 = " specified.";
      v72 = 11;
      absl::lts_20240722::StrCat(&p_p, v85, &v71, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &__p;
      }

      else
      {
        v41 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v42 = __p.__r_.__value_.__l.__size_;
      }

      absl::lts_20240722::FailedPreconditionError(v41, v42, v70);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v68) & 0x80000000) == 0)
        {
LABEL_68:
          v43 = v70[0];
          *a3 = v70[0];
          v70[0] = 55;
          if (v43 != 1)
          {
            return;
          }

          goto LABEL_95;
        }
      }

      else if ((SHIBYTE(v68) & 0x80000000) == 0)
      {
        goto LABEL_68;
      }

      operator delete(v66);
      v55 = v70[0];
      *a3 = v70[0];
      v70[0] = 55;
      if (v55 != 1)
      {
        return;
      }

LABEL_95:
      absl::lts_20240722::internal_statusor::Helper::HandleInvalidStatusCtorArg(a3);
      v57 = v70[0];
      if (v70[0])
      {
        return;
      }

      goto LABEL_96;
    }

LABEL_22:
    google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault::FeatureSetDefaults_FeatureSetEditionDefault(&v71, 0);
    v74 = a1;
    LODWORD(v73) = v73 | 2;
    v21 = *(a2 + 24);
    if (v21)
    {
      v22 = (v21 + 7);
    }

    else
    {
      v22 = (a2 + 24);
    }

    v23 = *(a2 + 32);
    if (v23)
    {
      v24 = v22;
      do
      {
        v25 = v23 >> 1;
        v26 = &v24[v23 >> 1];
        v28 = *v26;
        v27 = v26 + 1;
        v23 += ~(v23 >> 1);
        if (*(v28 + 32) > a1)
        {
          v23 = v25;
        }

        else
        {
          v24 = v27;
        }
      }

      while (v23);
      if (v24 != v22)
      {
LABEL_32:
        if (*(*(v24 - 1) + 24))
        {
          v29 = *(*(v24 - 1) + 24);
        }

        else
        {
          v29 = &google::protobuf::_FeatureSet_default_instance_;
        }

        google::protobuf::FeatureSet::FeatureSet(v63, 0, v29, v20);
        google::protobuf::FeatureSet::FeatureSet(&p_p, 0);
        v30 = v76;
        if (v76)
        {
          v30 = *(v76 & 0xFFFFFFFFFFFFFFFELL);
          v31 = v64;
          if ((v64 & 1) == 0)
          {
LABEL_37:
            if (v30 != v31)
            {
LABEL_38:
              google::protobuf::FeatureSet::CopyFrom(&p_p, v63);
              goto LABEL_106;
            }

LABEL_105:
            google::protobuf::FeatureSet::InternalSwap(&p_p, v63);
LABEL_106:
            google::protobuf::FeatureSet::FeatureSet(a3 + 8, 0);
            if (v60 == &p_p)
            {
LABEL_114:
              *a3 = 1;
              google::protobuf::FeatureSet::~FeatureSet(&p_p);
              google::protobuf::FeatureSet::~FeatureSet(v63);
              goto LABEL_115;
            }

            v61 = *(a3 + 16);
            if (v61)
            {
              v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
              v62 = v76;
              if ((v76 & 1) == 0)
              {
LABEL_109:
                if (v61 != v62)
                {
LABEL_110:
                  google::protobuf::FeatureSet::CopyFrom(v60, &p_p);
                  goto LABEL_114;
                }

LABEL_113:
                google::protobuf::FeatureSet::InternalSwap(v60, &p_p);
                goto LABEL_114;
              }
            }

            else
            {
              v62 = v76;
              if ((v76 & 1) == 0)
              {
                goto LABEL_109;
              }
            }

            if (v61 != *(v62 & 0xFFFFFFFFFFFFFFFELL))
            {
              goto LABEL_110;
            }

            goto LABEL_113;
          }
        }

        else
        {
          v31 = v64;
          if ((v64 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        if (v30 != *(v31 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_38;
        }

        goto LABEL_105;
      }
    }

    else
    {
      v24 = &v22[v23];
      if (v24 != v22)
      {
        goto LABEL_32;
      }
    }

    p_p = "No valid default found for edition ";
    v76 = 35;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v70[0] = google::protobuf::internal::ShortEditionName(a1);
    v70[1] = v32;
    v86 = v70;
    v87 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
    absl::lts_20240722::str_format_internal::FormatUntyped(&v66, absl::lts_20240722::str_format_internal::FormatRawSinkImpl::Flush<absl::lts_20240722::strings_internal::StringifySink>, "%v", 2, &v86, 1uLL);
    v33 = HIBYTE(v68);
    if (v68 >= 0)
    {
      v34 = &v66;
    }

    else
    {
      v34 = v66;
    }

    if (v68 < 0)
    {
      v33 = v67;
    }

    v85[0].__r_.__value_.__r.__words[0] = v34;
    v85[0].__r_.__value_.__l.__size_ = v33;
    absl::lts_20240722::StrCat(&p_p, v85, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &__p;
    }

    else
    {
      v35 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v36 = __p.__r_.__value_.__l.__size_;
    }

    absl::lts_20240722::FailedPreconditionError(v35, v36, &v65);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v68) & 0x80000000) == 0)
      {
LABEL_53:
        v37 = v65;
        *a3 = v65;
        v65 = 55;
        if (v37 == 1)
        {
LABEL_91:
          absl::lts_20240722::internal_statusor::Helper::HandleInvalidStatusCtorArg(a3);
          if ((v65 & 1) == 0)
          {
            absl::lts_20240722::status_internal::StatusRep::Unref(v65, v54);
          }
        }

LABEL_115:
        google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault::~FeatureSetDefaults_FeatureSetEditionDefault(&v71);
        return;
      }
    }

    else if ((SHIBYTE(v68) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    operator delete(v66);
    v53 = v65;
    *a3 = v65;
    v65 = 55;
    if (v53 == 1)
    {
      goto LABEL_91;
    }

    goto LABEL_115;
  }

  v6 = p_p;
  *a3 = p_p;
  p_p = 55;
  if (v6 == 1)
  {
    absl::lts_20240722::internal_statusor::Helper::HandleInvalidStatusCtorArg(a3);
    v8 = p_p;
    if ((p_p & 1) == 0)
    {
LABEL_4:
      absl::lts_20240722::status_internal::StatusRep::Unref(v8, v7);
    }
  }
}